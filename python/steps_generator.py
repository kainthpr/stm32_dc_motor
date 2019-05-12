import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import odeint

f = open("points.csv", 'w')


def save_point(time, x):
    f.write("{},{}\n".format(time, x))


def print_point(number, id, at, to):
    # print 'mt1[{}].t_id = {};'.format(number, 0)
    print 'mt1[{}].at = {};'.format(number, at)
    print 'mt1[{}].to = {};'.format(number, to)


def get_move_profile(t_res, max_x, v, u, a):  # sec, mm, mm/s, mm/s, mm/s^2

    # climb phase
    time_to_hit_max_speed = (v-u)/a
    t_a = np.arange(0, time_to_hit_max_speed, t_res)
    x_a = []
    out_t = np.array([])
    out_x = np.array([])
    for i in t_a:
        s = u*i + 0.5*a*i**2
        x_a.append(s)

    out_t = np.append(out_t, [t_a])
    out_x = np.append(out_x, [x_a])

    # cruze phase
    distance_to_go = max_x - 2 * (x_a[-1])
    time_to_stop_cruze = t_a[-1]+(distance_to_go/v)
    t_b = np.arange(t_a[-1], time_to_stop_cruze, t_res)
    x0 = x_a[-1]
    x_b = []
    for i in t_b:
        s = x0+(v*(i-t_b[0]))
        x_b.append(s)
    out_t = np.append(out_t, [t_b[1:]])
    out_x = np.append(out_x, [x_b[1:]])

    # descend phase. Just repeat climb phase
    x_c = np.flip(x_a, 0)
    x_c = max_x - x_c
    t_c = t_a+t_b[-1]

    # print x_b[-1], x_c[0]
    # print t_b[-1], t_c[0]

    out_t = np.append(out_t, [t_c[1:]])
    out_x = np.append(out_x, [x_c[1:]])

    return out_t, out_x


max_speed = 100.0  # mm/s
accel = 100  # mm/s^2
res = 0.8  # mm  > encoder_res
max_x = 4000.0  # mm
return_to_start = True
start_t = 0

tick_dur = 2e-6  # tick duration
encoder_res = 0.040  # mm. Encoder resolution

time_step = res/max_speed
tick_step = int(time_step/tick_dur)  # minimum time resolution will be this many ticks.

enc_step = int(res/encoder_res)  # axis will always step with exactly this many real steps.

t, x = get_move_profile(tick_step*tick_dur, max_x/2, max_speed, 0, accel)

if return_to_start:
    t = np.append(t, [t[1:]+t[-1]])
    x = np.append(x, np.flip(x, 0)[1:])


t_tick = t/tick_dur + start_t
t_tick = t_tick.astype(int)

x_enc = x/res
x_enc = x_enc.astype(int)

vel = [0]
vel_mmps = [0]
for idx, i in enumerate(t_tick[1:]):
    v = (x_enc[idx]-x_enc[idx-1])/((t_tick[idx]-t_tick[idx-1])*1.0)
    v_mmps = (x[idx]-x[idx-1])/((t[idx]-t[idx-1])*1.0)
    vel.append(v)
    vel_mmps.append(v_mmps)

last_x = ''

count = 0
for b, x in zip(t_tick, x_enc):
    if x != last_x:
        save_point(b, x)
        print_point(count, 0, b, x)
        count += 1
    last_x = x

f.flush()
f.close()


fig, (ax0, ax1, ax2) = plt.subplots(3, 1)
ax0.plot(t_tick, x_enc)
ax1.plot(t, vel_mmps)
ax2.plot(t_tick, vel)
plt.show()
