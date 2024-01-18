# AV1-SLICE

This project includes the development and evaluation of the AV1-SLICE video codec, which uses slicing techniques to enhance the performance of AV1 video codecs on a SDN networked environments.

In this repository, you will find all the necessary information, code, and data to reproduce and build upon our work. 
It includes the implementation of the Mininet network emulator, Nginx web server, Iperf network performance measurement tool, and Wireshark network packet analyzer to perform experiments and evaluate the performance of AV1-SLICE. The experiments simulate different video quality levels and measure key network QoS metrics such as throughput, jitter, and loss rate for the different layers of the transmitted streams.

You will find information on the system requirements and dependencies needed to run our experiments and the necessary steps to reproduce our results.

## Installation 

```
pip3 install .
```

## Run

```
dash-emulator.py <MPD_URL>
```

## Help
```
dash-emulator.py -h
```

## Updates

As of March 12, 2023, we have added PSNR scripts to the repository.
