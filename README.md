Task: Thread Synchronization

You will find a multi-threaded program in the upstream repository without any synchronization. Your task is to add correct and proper synchronization and run the program flawlessly.
If you don’t know where and how to start, look at the help section below. While implementing, make sure to read the comments found in the assignment code, and if anything is unclear, come back to this Wiki.
Main Idea

This time, we provide a framework for an SLP Assignment Interview (AG).

The central roles of this scenario are:

    tutors – responsible for interviewing students and
    students  – aiming to get interviewed and gain a positive grade.

Keep in mind the following workflow:

    Tutors arrive, randomly choose a desk and shortly prepare for the interviews.
    Students are supposed to look for a free desk only and only if all tutors are ready.
    Once “AGs” can start, every student looks for a free desk, gets assigned to it, shows the student ID, and gets interviewed by the corresponding tutor. After the interview, every student is supposed to wait for the results. Once the points are visible, the student can leave.
    If a student doesn’t have enough points, the student gets an immediate second chance interview. However, only a few students can take a second chance interview at once.

Task

    Identify all actors and resources in the programs.
    Implement the missing parts of the programs, fulfilling the above requirements.
    You need to ensure that the resources are acquired safely.
    Think about potential data races and deadlock scenarios.
    Use synchronization primitives correctly to make access to all shared resources thread-safe.
    All shared resources must be accessed by only one thread at a time!
    As with all other assignments, you can still lose points during the interviews if you cannot explain your solution satisfactorily or any cheating is detected.
    The individual tasks are built to encourage the usage of at least one mutex, one semaphore, and one condition variable. Strongly think about which locking principles make the most sense in which situations.
    Notice the marked TODO fields and which files are not to be modified.
    Make sure to read the code as well as the function headers carefully.

Test your programs multiple times and with numerous parameters to find possible threading errors. Threading errors tend to crash programs/produce incorrect output very irregularly and are sometimes hard to reproduce. Think about your locking structure and check that ALL shared resources are locked. Also, check if all the locks are acquired and released correctly.
Building

This assignment uses CMake
as a build system. The essential build steps are as follows:

in-source building:
cd A2/
cmake .
make

out-of-source building:
cd A2/
mkdir build && cd build
cmake ..
make

Notice that an executable titled slp_ag has been created in the folder you called make
in. You can now start the program by executing the command ./slp_ag num_tutors num_students
, e.g. ./slp_ag 1 1
.
Common problems

    This task is about locking. Do not wrap your head around different edge cases. Only make sure every shared resource is correctly locked.
    Avoid potential deadlocks! Locks have to be locked in the same order.
    Do not unlock a mutex multiple times, do not destroy a locked mutex, and especially do not unlock a mutex from a thread not owning it. Consider scenarios that lead to undefined behavior! (check out the man page)
    You don’t have to change the cancellation state and/or type of any thread!
    Use assert statements to check the return values of the pthread_* and sem_* functions to catch erroneous usage!

General notes

    You are responsible only for locking. Do not change the program logic (except an if/while loop directly related to a synchronization primitive)!
    Timeout is a good sign for deadlock, lost signals, or overlocking. Make sure you don’t introduce any of these problems in your program.
    You have a free choice of synchronization primitives. We don’t restrict you anywise, but only encourage you to use all those mentioned in the lecture as the goal of this task is to get familiar with them.
    Ideally do not push any custom debug messages!
    Make sure printf messages indicating an unlogical program flow do not get printed! (e.g. “Student xy tries to get interviewed although AGs haven’t started yet“.

Help

The spirit of this course is that you should learn to look up technical concepts and implement practical tasks by yourself. However, here is some help in case you get lost:

Most important resource: Manual pages
for the pthreads
(POSIX
threads) functions
man pthreads
man pthread_mutex_lock
man pthread_cond_wait
man < ... >

If you need a rough overview of the pthread library and how to lock correctly, make sure to check out the pthread tutorial by Peter C. Chapin. It contains a lot of information you might need for the first and second assignments.

Note: If you get an error while trying to open the manual pages for pthread_mutex_lock, you can install the glibc-doc (sudo apt-get install glibc-doc
) package to fix the issue.
Some important concepts

Always look up the function you use in their man pages. They will tell you how each function behaves in much more detail.

    Semaphore Holds an integer value that can be increased and decreased by threads.
        A fixed amount of threads can enter.
        It puts the calling thread to sleep when it wants to decrease the value and has reached 0 or less.
        Sleeping threads are woken up when another thread increases the value.
        Datatype: sem_t
        Popular functions: sem_init, sem_destroy, sem_wait, sem_post
        See also https://linux.die.net/man/7/sem_overview

    Mutex Primitive that can be used to make sure only one thread accesses critical sections of code simultaneously.
        Only one thread can enter.
        It can be locked and unlocked.
        If a thread tries to lock an already locked mutex, it is put to sleep until the mutex is unlocked by the thread that currently has it locked.
        A mutex applies the same concept as a semaphore with the values 0 or 1.
        Datatype: pthread_mutex_t
        Popular functions: pthread_mutex_init, pthread_mutex_destroy, pthread_mutex_lock, pthread_mutex_unlock
        See also https://hpc-tutorials.llnl.gov/posix/

    Condition Variable Primitive that can be used to put threads to sleep and wake them up from other threads.
        A CV is ideal for many cases where one thread needs to wait for the result of some processing in another thread.
        They are always protected by an accompanying mutex.
        Datatype: pthread_cond_t
        Popular functions: pthread_cond_init, pthread_cond_destroy, pthread_cond_wait, pthread_cond_signal, pthread_cond_broadcast
        See also https://hpc-tutorials.llnl.gov/posix/

Assignment Tutor

If you have any questions regarding this assignment, go to Discord and read through the SLP channels. The probability that your question was already answered or some discussions will lead you in the right direction is quite high. If not so, just ask in the corresponding channel.

If you have a more direct question regarding your specific solution, you can also ask the tutor who organizes this assignment:

Nedžma Mušović, nedzma.musovic@student.tugraz.at
