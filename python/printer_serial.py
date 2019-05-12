import serial
import array
import time

import serial.tools.list_ports
ports = serial.tools.list_ports.comports()

for port, desc, hwid in sorted(ports):
        print("{}: {} [{}]".format(port, desc, hwid))

ser = serial.Serial('COM5', 115200, timeout=10)
print ser
count = 0
msg = 'hello worlds'
# 32 bit signed long


def motor_speed(speed):
    send_payload('m'+"{0:07d}".format(speed))

def p(gain):
    send_payload('p'+"{0:07d}x".format(int(gain*10000000)))

def i(gain):
    send_payload('i'+"{0:07d}x".format(int(gain*10000000)))

def d(gain):
    send_payload('d'+"{0:07d}x".format(int(gain*10000000)))


def x(x):
    send_payload('x'+"{0:04d}".format(x))


def send_payload(payload):
    # ser.write({"0:04d"}.format(len(payload))+payload+'\n')
    ser.write(payload+'\n')



start = time.time()
# motor_speed(52)
# set_loc(2000)
# print 'p'+"{0:04d}".format(int(0.004*10000))
#0.0007, 0.0000001, 0.006
p(0.0007)
print ser.readline()
i(0.000009)
print ser.readline()

d(0.006)
print ser.readline()

# x(2500)
f2 = open("../points.csv", 'r')
l_t = 0
for l in f2:
    x(int(l.split(',')[1]))
    t = float(l.split(',')[0])/10000000
    time.sleep(abs(t-l_t))
    # print l
    l_t = t
# v = range(100, 4000, 1)
# for t in v:
#     x(t)
#     time.sleep(0.001)
#     # print t
# for t in reversed(v):
#     x(t)
#     time.sleep(0.001)
#     # print t
#

# while 1:

    # print ser.readline(),


ser.close()
