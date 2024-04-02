i2c
The several codes i have seen so far uses sequential execution of the scl and sda and therefore sda changes when scl is at the edge.But in my code the sda changes only when scl is exactly at zero(Like the actual waveform of the I2C protocol)

SDA (Serial Data) – The line for the master and slave to send and receive data.

SCL (Serial Clock) – The line that carries the clock signal.

Start Condition: The SDA line switches from a high level to a low level before the SCL line switches from high to low(i.e SCL remains high)

Stop Condition: The SDA line switches from a low level to a high level after the SCL line switches from low to high.(i.e SCL remains high)
