#PacketCommand

Send TCP packets via Ethernet from STM32F7 to remotely control the server system.

##Process

I2S audio data is sent via an established TCP connection from the client (STM32F7) to the server (Desktop). The server then uses voice recognition software to decode I2S data and access the CLI to perform various commands.

##Commands Include:
 1)


##TODO:

#Work on the lcd ascii decoding for the pixels, remember to skip first bit

#finish MEMS microphone driver

#establish how do 3-way, and have the address from the desktop

#Have it so we can intiate shutdown after we receive the SHUTDOWN SPECIAL PACKET

#Consider firewall stuff to expand service
 
