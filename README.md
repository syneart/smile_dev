# smile_dev
[unofficial] Statistical Machine Intelligence &amp; Learning Engine (smile) develop environment

## Requirement
#### Install Docker
ref. https://docs.docker.com/engine/install/

#### Install latest docker-compose
ref. https://docs.docker.com/compose/install/

## How to use (for example)
```
$ git clone https://github.com/syneart/smile_dev/
$ cd smile_dev
$ sudo docker-compose up -d
$ sudo docker-compose exec smile_dev /bin/bash

## In Container
# ./shell/src/universal/bin/jshell.sh ../example/segment-challenge.jsh
```
## Result
Then you will see
```
...
[ForkJoinPool.commonPool-worker-19] INFO smile.classification.RandomForest - Decision tree OOB accuracy: 92.67%
[ForkJoinPool.commonPool-worker-9] INFO smile.classification.RandomForest - Decision tree OOB accuracy: 88.89%
[ForkJoinPool.commonPool-worker-19] INFO smile.classification.RandomForest - Decision tree OOB accuracy: 93.99%
[ForkJoinPool.commonPool-worker-9] INFO smile.classification.RandomForest - Decision tree OOB accuracy: 91.89%
[ForkJoinPool.commonPool-worker-21] INFO smile.classification.RandomForest - Decision tree OOB accuracy: 90.80%
0.9604938271604938
ROW=truth and COL=predicted
class  0 |     124 |       0 |       0 |       0 |       1 |       0 |       0 |
class  1 |       0 |     110 |       0 |       0 |       0 |       0 |       0 |
class  2 |       3 |       0 |     115 |       1 |       3 |       0 |       0 |
class  3 |       2 |       0 |       0 |     106 |       2 |       0 |       0 |
class  4 |       2 |       0 |      10 |       5 |     109 |       0 |       0 |
class  5 |       0 |       0 |       0 |       0 |       0 |      94 |       0 |
class  6 |       1 |       0 |       1 |       1 |       0 |       0 |     120 |
{
  fit time: 10803.319 ms,
  score time: 193.036 ms,
  validation data size: 1500,
  error: 45,
  accuracy: 97.00%
}
root@smile_dev:~/syneart/smile#
```

## Do other thing you want
Like this
```
## In Container
# ./shell/src/universal/bin/jshell.sh

## then type "Hello, Jed!"
jshell> "Hello, Jed!"
```
You will get this result, like this
```
root@smile_dev:~/syneart/smile# ./shell/src/universal/bin/jshell.sh
|  Welcome to JShell -- Version 11.0.14.1
|  For an introduction type: /help intro

jshell> "Hello, Jed!"
$1 ==> "Hello, Jed!"

jshell> 
```
## Compiled library file from smile repo
You can find it at lib_export/ directory at host env

For more detailed instructions, please refer to the official - https://haifengl.github.io
