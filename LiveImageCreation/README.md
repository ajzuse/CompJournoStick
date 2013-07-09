## How to make a live ISO image

If you're not still in a terminal, open one. Then type
```
cd ~/CompJ<TAB>/Live<TAB><ENT>
```
to get into the right directory. Now type

```
./make-kick<TAB><ENT>
./make-iso<TAB><ENT>
```
to start creating an ISO image. This will take a long time - it can run two hours the first time, when it's downloading packages for the image. You can run applications while it's doing all this. 

When it's done, it will print a burst of messages like this:
```
5554.08user 668.75system 1:30:06elapsed 115%CPU (0avgtext+0avgdata 520996maxresident)k
42768350inputs+34981536outputs (3062major+47407898minor)pagefaults 0swaps
CompJournoStick.iso:   952b9a7448ddb4b0b3413d1875f4b313
Fragment sums: 44c9a629735b6a46432a2933f8de29d2198f24a659fe1dd5a24c1fb81c2d
Fragment count: 20
Press [Esc] to abort check.
Checking: 100.0%
The media check is complete, the result is: PASS.

It is OK to use this media.
```
In this case it took about an hour and a half ('1:30:06elapsed'). If you don't see the 'PASS' lines, it didn't work and you'll need to re-run it. If it worked, the ISO image will be in
```
/opt/CompJournoStick/CompJournoStick.iso
```
What's an ISO image? It's a file that contains the exact same bit patterns as a CD or DVD. It's very similar to the Fedora 19 Live installer. It's different in that it will have different packages and it will have the most recent versions of the packages. In other words, it will be a Fedora Remix!

If you want to run it in a virtual machine, you don't need to burn it to an optical disk. Just connect the ISO file to the virtual machine's virtual "CD/DVD" drive, boot it and enjoy.

If you want to run it on a real machine, you'll need to burn it to a DVD. At 2.5 megabytes, it's too big for a CD.
