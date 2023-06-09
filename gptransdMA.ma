[top]
components : Generator@Generator QPT
Out : throughput
Out : cpuusage
Link : out@generator arrived@QPT
Link : out@generator in@QPT
Link : throughput@QPT throughput
Link : cpuusage@QPT cpuusage

[QPT]
components : Queue@queue Processor@CPU Transducer@transducer 
Out : throughput
Out : cpuusage
In : in
In : arrived
Link : arrived arrived@transducer
Link : in in@queue
Link : out@queue in@processor
Link : out@processor done@queue
Link : out@processor solved@transducer 
Link : throughput@transducer throughput
Link : cpuusage@transducer cpuusage

[transducer]
frecuence : 0:0:2:0
timeUnit : 0:0:1:0

[generator]
distribution : poisson
mean : 10

[processor]
distribution : exponential
mean : 10

[queue]
preparation : 0:0:0:1
