
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 e6 5a 00 00       	push   $0x5ae6
      16:	6a 01                	push   $0x1
      18:	e8 83 47 00 00       	call   47a0 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	5a                   	pop    %edx
      1e:	59                   	pop    %ecx
      1f:	6a 00                	push   $0x0
      21:	68 fa 5a 00 00       	push   $0x5afa
      26:	e8 5f 46 00 00       	call   468a <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 1d                	js     4f <main+0x4f>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	50                   	push   %eax
      33:	50                   	push   %eax
      34:	68 64 62 00 00       	push   $0x6264
      39:	6a 01                	push   $0x1
      3b:	e8 60 47 00 00       	call   47a0 <printf>
    exit(0);
      40:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      47:	e8 f6 45 00 00       	call   4642 <exit>
      4c:	83 c4 10             	add    $0x10,%esp
  }
  close(open("usertests.ran", O_CREATE));
      4f:	83 ec 08             	sub    $0x8,%esp
      52:	68 00 02 00 00       	push   $0x200
      57:	68 fa 5a 00 00       	push   $0x5afa
      5c:	e8 29 46 00 00       	call   468a <open>
      61:	89 04 24             	mov    %eax,(%esp)
      64:	e8 09 46 00 00       	call   4672 <close>

  argptest();
      69:	e8 e2 42 00 00       	call   4350 <argptest>
  createdelete();
      6e:	e8 6d 15 00 00       	call   15e0 <createdelete>
  linkunlink();
      73:	e8 88 20 00 00       	call   2100 <linkunlink>
  concreate();
      78:	e8 93 1c 00 00       	call   1d10 <concreate>
  fourfiles();
      7d:	e8 ce 12 00 00       	call   1350 <fourfiles>
  sharedfd();
      82:	e8 c9 10 00 00       	call   1150 <sharedfd>

  bigargtest();
      87:	e8 14 3f 00 00       	call   3fa0 <bigargtest>
  bigwrite();
      8c:	e8 bf 2c 00 00       	call   2d50 <bigwrite>
  bigargtest();
      91:	e8 0a 3f 00 00       	call   3fa0 <bigargtest>
  bsstest();
      96:	e8 85 3e 00 00       	call   3f20 <bsstest>
  sbrktest();
      9b:	e8 c0 38 00 00       	call   3960 <sbrktest>
  validatetest();
      a0:	e8 ab 3d 00 00       	call   3e50 <validatetest>

  opentest();
      a5:	e8 86 04 00 00       	call   530 <opentest>
  writetest();
      aa:	e8 41 05 00 00       	call   5f0 <writetest>
  writetest1();
      af:	e8 6c 07 00 00       	call   820 <writetest1>
  createtest();
      b4:	e8 87 09 00 00       	call   a40 <createtest>

  openiputtest();
      b9:	e8 02 03 00 00       	call   3c0 <openiputtest>
  exitiputtest();
      be:	e8 9d 01 00 00       	call   260 <exitiputtest>
  iputtest();
      c3:	e8 68 00 00 00       	call   130 <iputtest>

  mem();
      c8:	e8 93 0f 00 00       	call   1060 <mem>
  pipe1();
      cd:	e8 ae 0b 00 00       	call   c80 <pipe1>
  preempt();
      d2:	e8 99 0d 00 00       	call   e70 <preempt>
  exitwait();
      d7:	e8 e4 0e 00 00       	call   fc0 <exitwait>

  rmdot();
      dc:	e8 6f 31 00 00       	call   3250 <rmdot>
  fourteen();
      e1:	e8 ba 2f 00 00       	call   30a0 <fourteen>
  bigfile();
      e6:	e8 85 2d 00 00       	call   2e70 <bigfile>
  subdir();
      eb:	e8 d0 22 00 00       	call   23c0 <subdir>
  linktest();
      f0:	e8 8b 19 00 00       	call   1a80 <linktest>
  unlinkread();
      f5:	e8 96 17 00 00       	call   1890 <unlinkread>
  dirfile();
      fa:	e8 61 33 00 00       	call   3460 <dirfile>
  iref();
      ff:	e8 0c 36 00 00       	call   3710 <iref>
  forktest();
     104:	e8 47 37 00 00       	call   3850 <forktest>
  bigdir(); // slow
     109:	e8 32 21 00 00       	call   2240 <bigdir>

  uio();
     10e:	e8 ad 41 00 00       	call   42c0 <uio>

  exectest();
     113:	e8 08 0b 00 00       	call   c20 <exectest>

  exit(0);
     118:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     11f:	e8 1e 45 00 00       	call   4642 <exit>
}
     124:	8b 4d fc             	mov    -0x4(%ebp),%ecx
     127:	31 c0                	xor    %eax,%eax
     129:	c9                   	leave  
     12a:	8d 61 fc             	lea    -0x4(%ecx),%esp
     12d:	c3                   	ret    
     12e:	66 90                	xchg   %ax,%ax

00000130 <iputtest>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     136:	68 8c 4b 00 00       	push   $0x4b8c
     13b:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     141:	e8 5a 46 00 00       	call   47a0 <printf>
  if(mkdir("iputdir") < 0){
     146:	c7 04 24 1f 4b 00 00 	movl   $0x4b1f,(%esp)
     14d:	e8 60 45 00 00       	call   46b2 <mkdir>
     152:	83 c4 10             	add    $0x10,%esp
     155:	85 c0                	test   %eax,%eax
     157:	0f 88 d3 00 00 00    	js     230 <iputtest+0x100>
  if(chdir("iputdir") < 0){
     15d:	83 ec 0c             	sub    $0xc,%esp
     160:	68 1f 4b 00 00       	push   $0x4b1f
     165:	e8 50 45 00 00       	call   46ba <chdir>
     16a:	83 c4 10             	add    $0x10,%esp
     16d:	85 c0                	test   %eax,%eax
     16f:	0f 88 93 00 00 00    	js     208 <iputtest+0xd8>
  if(unlink("../iputdir") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 1c 4b 00 00       	push   $0x4b1c
     17d:	e8 18 45 00 00       	call   469a <unlink>
     182:	83 c4 10             	add    $0x10,%esp
     185:	85 c0                	test   %eax,%eax
     187:	78 57                	js     1e0 <iputtest+0xb0>
  if(chdir("/") < 0){
     189:	83 ec 0c             	sub    $0xc,%esp
     18c:	68 41 4b 00 00       	push   $0x4b41
     191:	e8 24 45 00 00       	call   46ba <chdir>
     196:	83 c4 10             	add    $0x10,%esp
     199:	85 c0                	test   %eax,%eax
     19b:	78 1b                	js     1b8 <iputtest+0x88>
  printf(stdout, "iput test ok\n");
     19d:	83 ec 08             	sub    $0x8,%esp
     1a0:	68 c4 4b 00 00       	push   $0x4bc4
     1a5:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     1ab:	e8 f0 45 00 00       	call   47a0 <printf>
}
     1b0:	83 c4 10             	add    $0x10,%esp
     1b3:	c9                   	leave  
     1b4:	c3                   	ret    
     1b5:	8d 76 00             	lea    0x0(%esi),%esi
    printf(stdout, "chdir / failed\n");
     1b8:	83 ec 08             	sub    $0x8,%esp
     1bb:	68 43 4b 00 00       	push   $0x4b43
     1c0:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     1c6:	e8 d5 45 00 00       	call   47a0 <printf>
    exit(0);
     1cb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1d2:	e8 6b 44 00 00       	call   4642 <exit>
     1d7:	83 c4 10             	add    $0x10,%esp
     1da:	eb c1                	jmp    19d <iputtest+0x6d>
     1dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "unlink ../iputdir failed\n");
     1e0:	83 ec 08             	sub    $0x8,%esp
     1e3:	68 27 4b 00 00       	push   $0x4b27
     1e8:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     1ee:	e8 ad 45 00 00       	call   47a0 <printf>
    exit(0);
     1f3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1fa:	e8 43 44 00 00       	call   4642 <exit>
     1ff:	83 c4 10             	add    $0x10,%esp
     202:	eb 85                	jmp    189 <iputtest+0x59>
     204:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "chdir iputdir failed\n");
     208:	83 ec 08             	sub    $0x8,%esp
     20b:	68 06 4b 00 00       	push   $0x4b06
     210:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     216:	e8 85 45 00 00       	call   47a0 <printf>
    exit(0);
     21b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     222:	e8 1b 44 00 00       	call   4642 <exit>
     227:	83 c4 10             	add    $0x10,%esp
     22a:	e9 46 ff ff ff       	jmp    175 <iputtest+0x45>
     22f:	90                   	nop
    printf(stdout, "mkdir failed\n");
     230:	83 ec 08             	sub    $0x8,%esp
     233:	68 f8 4a 00 00       	push   $0x4af8
     238:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     23e:	e8 5d 45 00 00       	call   47a0 <printf>
    exit(0);
     243:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     24a:	e8 f3 43 00 00       	call   4642 <exit>
     24f:	83 c4 10             	add    $0x10,%esp
     252:	e9 06 ff ff ff       	jmp    15d <iputtest+0x2d>
     257:	89 f6                	mov    %esi,%esi
     259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000260 <exitiputtest>:
{
     260:	55                   	push   %ebp
     261:	89 e5                	mov    %esp,%ebp
     263:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
     266:	68 53 4b 00 00       	push   $0x4b53
     26b:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     271:	e8 2a 45 00 00       	call   47a0 <printf>
  pid = fork();
     276:	e8 bf 43 00 00       	call   463a <fork>
  if(pid < 0){
     27b:	83 c4 10             	add    $0x10,%esp
     27e:	85 c0                	test   %eax,%eax
     280:	78 7e                	js     300 <exitiputtest+0xa0>
  if(pid == 0){
     282:	74 24                	je     2a8 <exitiputtest+0x48>
  wait(0x0);
     284:	83 ec 0c             	sub    $0xc,%esp
     287:	6a 00                	push   $0x0
     289:	e8 bc 43 00 00       	call   464a <wait>
  printf(stdout, "exitiput test ok\n");
     28e:	58                   	pop    %eax
     28f:	5a                   	pop    %edx
     290:	68 76 4b 00 00       	push   $0x4b76
     295:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     29b:	e8 00 45 00 00       	call   47a0 <printf>
}
     2a0:	83 c4 10             	add    $0x10,%esp
     2a3:	c9                   	leave  
     2a4:	c3                   	ret    
     2a5:	8d 76 00             	lea    0x0(%esi),%esi
    if(mkdir("iputdir") < 0){
     2a8:	83 ec 0c             	sub    $0xc,%esp
     2ab:	68 1f 4b 00 00       	push   $0x4b1f
     2b0:	e8 fd 43 00 00       	call   46b2 <mkdir>
     2b5:	83 c4 10             	add    $0x10,%esp
     2b8:	85 c0                	test   %eax,%eax
     2ba:	78 74                	js     330 <exitiputtest+0xd0>
    if(chdir("iputdir") < 0){
     2bc:	83 ec 0c             	sub    $0xc,%esp
     2bf:	68 1f 4b 00 00       	push   $0x4b1f
     2c4:	e8 f1 43 00 00       	call   46ba <chdir>
     2c9:	83 c4 10             	add    $0x10,%esp
     2cc:	85 c0                	test   %eax,%eax
     2ce:	0f 88 bc 00 00 00    	js     390 <exitiputtest+0x130>
    if(unlink("../iputdir") < 0){
     2d4:	83 ec 0c             	sub    $0xc,%esp
     2d7:	68 1c 4b 00 00       	push   $0x4b1c
     2dc:	e8 b9 43 00 00       	call   469a <unlink>
     2e1:	83 c4 10             	add    $0x10,%esp
     2e4:	85 c0                	test   %eax,%eax
     2e6:	78 78                	js     360 <exitiputtest+0x100>
    exit(0);
     2e8:	83 ec 0c             	sub    $0xc,%esp
     2eb:	6a 00                	push   $0x0
     2ed:	e8 50 43 00 00       	call   4642 <exit>
     2f2:	83 c4 10             	add    $0x10,%esp
     2f5:	eb 8d                	jmp    284 <exitiputtest+0x24>
     2f7:	89 f6                	mov    %esi,%esi
     2f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(stdout, "fork failed\n");
     300:	83 ec 08             	sub    $0x8,%esp
     303:	68 39 5a 00 00       	push   $0x5a39
     308:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     30e:	e8 8d 44 00 00       	call   47a0 <printf>
    exit(0);
     313:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     31a:	e8 23 43 00 00       	call   4642 <exit>
     31f:	83 c4 10             	add    $0x10,%esp
     322:	e9 5d ff ff ff       	jmp    284 <exitiputtest+0x24>
     327:	89 f6                	mov    %esi,%esi
     329:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(stdout, "mkdir failed\n");
     330:	83 ec 08             	sub    $0x8,%esp
     333:	68 f8 4a 00 00       	push   $0x4af8
     338:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     33e:	e8 5d 44 00 00       	call   47a0 <printf>
      exit(0);
     343:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     34a:	e8 f3 42 00 00       	call   4642 <exit>
     34f:	83 c4 10             	add    $0x10,%esp
     352:	e9 65 ff ff ff       	jmp    2bc <exitiputtest+0x5c>
     357:	89 f6                	mov    %esi,%esi
     359:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(stdout, "unlink ../iputdir failed\n");
     360:	83 ec 08             	sub    $0x8,%esp
     363:	68 27 4b 00 00       	push   $0x4b27
     368:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     36e:	e8 2d 44 00 00       	call   47a0 <printf>
      exit(0);
     373:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     37a:	e8 c3 42 00 00       	call   4642 <exit>
     37f:	83 c4 10             	add    $0x10,%esp
     382:	e9 61 ff ff ff       	jmp    2e8 <exitiputtest+0x88>
     387:	89 f6                	mov    %esi,%esi
     389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(stdout, "child chdir failed\n");
     390:	83 ec 08             	sub    $0x8,%esp
     393:	68 62 4b 00 00       	push   $0x4b62
     398:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     39e:	e8 fd 43 00 00       	call   47a0 <printf>
      exit(0);
     3a3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3aa:	e8 93 42 00 00       	call   4642 <exit>
     3af:	83 c4 10             	add    $0x10,%esp
     3b2:	e9 1d ff ff ff       	jmp    2d4 <exitiputtest+0x74>
     3b7:	89 f6                	mov    %esi,%esi
     3b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003c0 <openiputtest>:
{
     3c0:	55                   	push   %ebp
     3c1:	89 e5                	mov    %esp,%ebp
     3c3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
     3c6:	68 88 4b 00 00       	push   $0x4b88
     3cb:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     3d1:	e8 ca 43 00 00       	call   47a0 <printf>
  if(mkdir("oidir") < 0){
     3d6:	c7 04 24 97 4b 00 00 	movl   $0x4b97,(%esp)
     3dd:	e8 d0 42 00 00       	call   46b2 <mkdir>
     3e2:	83 c4 10             	add    $0x10,%esp
     3e5:	85 c0                	test   %eax,%eax
     3e7:	0f 88 d3 00 00 00    	js     4c0 <openiputtest+0x100>
  pid = fork();
     3ed:	e8 48 42 00 00       	call   463a <fork>
  if(pid < 0){
     3f2:	85 c0                	test   %eax,%eax
     3f4:	0f 88 96 00 00 00    	js     490 <openiputtest+0xd0>
  if(pid == 0){
     3fa:	74 64                	je     460 <openiputtest+0xa0>
  sleep(1);
     3fc:	83 ec 0c             	sub    $0xc,%esp
     3ff:	6a 01                	push   $0x1
     401:	e8 d4 42 00 00       	call   46da <sleep>
  if(unlink("oidir") != 0){
     406:	c7 04 24 97 4b 00 00 	movl   $0x4b97,(%esp)
     40d:	e8 88 42 00 00       	call   469a <unlink>
     412:	83 c4 10             	add    $0x10,%esp
     415:	85 c0                	test   %eax,%eax
     417:	74 22                	je     43b <openiputtest+0x7b>
    printf(stdout, "unlink failed\n");
     419:	83 ec 08             	sub    $0x8,%esp
     41c:	68 b1 4b 00 00       	push   $0x4bb1
     421:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     427:	e8 74 43 00 00       	call   47a0 <printf>
    exit(0);
     42c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     433:	e8 0a 42 00 00       	call   4642 <exit>
     438:	83 c4 10             	add    $0x10,%esp
  wait(0x0);
     43b:	83 ec 0c             	sub    $0xc,%esp
     43e:	6a 00                	push   $0x0
     440:	e8 05 42 00 00       	call   464a <wait>
  printf(stdout, "openiput test ok\n");
     445:	58                   	pop    %eax
     446:	5a                   	pop    %edx
     447:	68 c0 4b 00 00       	push   $0x4bc0
     44c:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     452:	e8 49 43 00 00       	call   47a0 <printf>
}
     457:	83 c4 10             	add    $0x10,%esp
     45a:	c9                   	leave  
     45b:	c3                   	ret    
     45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    int fd = open("oidir", O_RDWR);
     460:	83 ec 08             	sub    $0x8,%esp
     463:	6a 02                	push   $0x2
     465:	68 97 4b 00 00       	push   $0x4b97
     46a:	e8 1b 42 00 00       	call   468a <open>
    if(fd >= 0){
     46f:	83 c4 10             	add    $0x10,%esp
     472:	85 c0                	test   %eax,%eax
     474:	79 7a                	jns    4f0 <openiputtest+0x130>
    exit(0);
     476:	83 ec 0c             	sub    $0xc,%esp
     479:	6a 00                	push   $0x0
     47b:	e8 c2 41 00 00       	call   4642 <exit>
     480:	83 c4 10             	add    $0x10,%esp
     483:	e9 74 ff ff ff       	jmp    3fc <openiputtest+0x3c>
     488:	90                   	nop
     489:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "fork failed\n");
     490:	83 ec 08             	sub    $0x8,%esp
     493:	68 39 5a 00 00       	push   $0x5a39
     498:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     49e:	e8 fd 42 00 00       	call   47a0 <printf>
    exit(0);
     4a3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4aa:	e8 93 41 00 00       	call   4642 <exit>
     4af:	83 c4 10             	add    $0x10,%esp
     4b2:	e9 45 ff ff ff       	jmp    3fc <openiputtest+0x3c>
     4b7:	89 f6                	mov    %esi,%esi
     4b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(stdout, "mkdir oidir failed\n");
     4c0:	83 ec 08             	sub    $0x8,%esp
     4c3:	68 9d 4b 00 00       	push   $0x4b9d
     4c8:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     4ce:	e8 cd 42 00 00       	call   47a0 <printf>
    exit(0);
     4d3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4da:	e8 63 41 00 00       	call   4642 <exit>
     4df:	83 c4 10             	add    $0x10,%esp
     4e2:	e9 06 ff ff ff       	jmp    3ed <openiputtest+0x2d>
     4e7:	89 f6                	mov    %esi,%esi
     4e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(stdout, "open directory for write succeeded\n");
     4f0:	83 ec 08             	sub    $0x8,%esp
     4f3:	68 1c 5b 00 00       	push   $0x5b1c
     4f8:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     4fe:	e8 9d 42 00 00       	call   47a0 <printf>
      exit(0);
     503:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     50a:	e8 33 41 00 00       	call   4642 <exit>
     50f:	83 c4 10             	add    $0x10,%esp
    exit(0);
     512:	83 ec 0c             	sub    $0xc,%esp
     515:	6a 00                	push   $0x0
     517:	e8 26 41 00 00       	call   4642 <exit>
     51c:	83 c4 10             	add    $0x10,%esp
     51f:	e9 d8 fe ff ff       	jmp    3fc <openiputtest+0x3c>
     524:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     52a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000530 <opentest>:
{
     530:	55                   	push   %ebp
     531:	89 e5                	mov    %esp,%ebp
     533:	53                   	push   %ebx
     534:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "open test\n");
     537:	68 d2 4b 00 00       	push   $0x4bd2
     53c:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     542:	e8 59 42 00 00       	call   47a0 <printf>
  fd = open("echo", 0);
     547:	59                   	pop    %ecx
     548:	5b                   	pop    %ebx
     549:	6a 00                	push   $0x0
     54b:	68 dd 4b 00 00       	push   $0x4bdd
     550:	e8 35 41 00 00       	call   468a <open>
  if(fd < 0){
     555:	83 c4 10             	add    $0x10,%esp
     558:	85 c0                	test   %eax,%eax
  fd = open("echo", 0);
     55a:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
     55c:	78 62                	js     5c0 <opentest+0x90>
  close(fd);
     55e:	83 ec 0c             	sub    $0xc,%esp
     561:	53                   	push   %ebx
     562:	e8 0b 41 00 00       	call   4672 <close>
  fd = open("doesnotexist", 0);
     567:	58                   	pop    %eax
     568:	5a                   	pop    %edx
     569:	6a 00                	push   $0x0
     56b:	68 f5 4b 00 00       	push   $0x4bf5
     570:	e8 15 41 00 00       	call   468a <open>
  if(fd >= 0){
     575:	83 c4 10             	add    $0x10,%esp
     578:	85 c0                	test   %eax,%eax
     57a:	78 22                	js     59e <opentest+0x6e>
    printf(stdout, "open doesnotexist succeeded!\n");
     57c:	83 ec 08             	sub    $0x8,%esp
     57f:	68 02 4c 00 00       	push   $0x4c02
     584:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     58a:	e8 11 42 00 00       	call   47a0 <printf>
    exit(0);
     58f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     596:	e8 a7 40 00 00       	call   4642 <exit>
     59b:	83 c4 10             	add    $0x10,%esp
  printf(stdout, "open test ok\n");
     59e:	83 ec 08             	sub    $0x8,%esp
     5a1:	68 20 4c 00 00       	push   $0x4c20
     5a6:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     5ac:	e8 ef 41 00 00       	call   47a0 <printf>
}
     5b1:	83 c4 10             	add    $0x10,%esp
     5b4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     5b7:	c9                   	leave  
     5b8:	c3                   	ret    
     5b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "open echo failed!\n");
     5c0:	83 ec 08             	sub    $0x8,%esp
     5c3:	68 e2 4b 00 00       	push   $0x4be2
     5c8:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     5ce:	e8 cd 41 00 00       	call   47a0 <printf>
    exit(0);
     5d3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     5da:	e8 63 40 00 00       	call   4642 <exit>
     5df:	83 c4 10             	add    $0x10,%esp
     5e2:	e9 77 ff ff ff       	jmp    55e <opentest+0x2e>
     5e7:	89 f6                	mov    %esi,%esi
     5e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005f0 <writetest>:
{
     5f0:	55                   	push   %ebp
     5f1:	89 e5                	mov    %esp,%ebp
     5f3:	56                   	push   %esi
     5f4:	53                   	push   %ebx
  printf(stdout, "small file test\n");
     5f5:	83 ec 08             	sub    $0x8,%esp
     5f8:	68 2e 4c 00 00       	push   $0x4c2e
     5fd:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     603:	e8 98 41 00 00       	call   47a0 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     608:	59                   	pop    %ecx
     609:	5b                   	pop    %ebx
     60a:	68 02 02 00 00       	push   $0x202
     60f:	68 3f 4c 00 00       	push   $0x4c3f
     614:	e8 71 40 00 00       	call   468a <open>
  if(fd >= 0){
     619:	83 c4 10             	add    $0x10,%esp
     61c:	85 c0                	test   %eax,%eax
  fd = open("small", O_CREATE|O_RDWR);
     61e:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     620:	0f 88 64 01 00 00    	js     78a <writetest+0x19a>
    printf(stdout, "creat small succeeded; ok\n");
     626:	83 ec 08             	sub    $0x8,%esp
     629:	68 45 4c 00 00       	push   $0x4c45
     62e:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     634:	e8 67 41 00 00       	call   47a0 <printf>
     639:	83 c4 10             	add    $0x10,%esp
{
     63c:	31 db                	xor    %ebx,%ebx
     63e:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     640:	83 ec 04             	sub    $0x4,%esp
     643:	6a 0a                	push   $0xa
     645:	68 7c 4c 00 00       	push   $0x4c7c
     64a:	56                   	push   %esi
     64b:	e8 1a 40 00 00       	call   466a <write>
     650:	83 c4 10             	add    $0x10,%esp
     653:	83 f8 0a             	cmp    $0xa,%eax
     656:	74 23                	je     67b <writetest+0x8b>
      printf(stdout, "error: write aa %d new file failed\n", i);
     658:	83 ec 04             	sub    $0x4,%esp
     65b:	53                   	push   %ebx
     65c:	68 40 5b 00 00       	push   $0x5b40
     661:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     667:	e8 34 41 00 00       	call   47a0 <printf>
      exit(0);
     66c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     673:	e8 ca 3f 00 00       	call   4642 <exit>
     678:	83 c4 10             	add    $0x10,%esp
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     67b:	83 ec 04             	sub    $0x4,%esp
     67e:	6a 0a                	push   $0xa
     680:	68 87 4c 00 00       	push   $0x4c87
     685:	56                   	push   %esi
     686:	e8 df 3f 00 00       	call   466a <write>
     68b:	83 c4 10             	add    $0x10,%esp
     68e:	83 f8 0a             	cmp    $0xa,%eax
     691:	74 23                	je     6b6 <writetest+0xc6>
      printf(stdout, "error: write bb %d new file failed\n", i);
     693:	83 ec 04             	sub    $0x4,%esp
     696:	53                   	push   %ebx
     697:	68 64 5b 00 00       	push   $0x5b64
     69c:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     6a2:	e8 f9 40 00 00       	call   47a0 <printf>
      exit(0);
     6a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     6ae:	e8 8f 3f 00 00       	call   4642 <exit>
     6b3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
     6b6:	83 c3 01             	add    $0x1,%ebx
     6b9:	83 fb 64             	cmp    $0x64,%ebx
     6bc:	75 82                	jne    640 <writetest+0x50>
  printf(stdout, "writes ok\n");
     6be:	83 ec 08             	sub    $0x8,%esp
     6c1:	68 92 4c 00 00       	push   $0x4c92
     6c6:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     6cc:	e8 cf 40 00 00       	call   47a0 <printf>
  close(fd);
     6d1:	89 34 24             	mov    %esi,(%esp)
     6d4:	e8 99 3f 00 00       	call   4672 <close>
  fd = open("small", O_RDONLY);
     6d9:	58                   	pop    %eax
     6da:	5a                   	pop    %edx
     6db:	6a 00                	push   $0x0
     6dd:	68 3f 4c 00 00       	push   $0x4c3f
     6e2:	e8 a3 3f 00 00       	call   468a <open>
  if(fd >= 0){
     6e7:	83 c4 10             	add    $0x10,%esp
     6ea:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
     6ec:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     6ee:	0f 88 bd 00 00 00    	js     7b1 <writetest+0x1c1>
    printf(stdout, "open small succeeded ok\n");
     6f4:	83 ec 08             	sub    $0x8,%esp
     6f7:	68 9d 4c 00 00       	push   $0x4c9d
     6fc:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     702:	e8 99 40 00 00       	call   47a0 <printf>
     707:	83 c4 10             	add    $0x10,%esp
  i = read(fd, buf, 2000);
     70a:	83 ec 04             	sub    $0x4,%esp
     70d:	68 d0 07 00 00       	push   $0x7d0
     712:	68 c0 93 00 00       	push   $0x93c0
     717:	53                   	push   %ebx
     718:	e8 45 3f 00 00       	call   4662 <read>
  if(i == 2000){
     71d:	83 c4 10             	add    $0x10,%esp
     720:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     725:	0f 84 ad 00 00 00    	je     7d8 <writetest+0x1e8>
    printf(stdout, "read failed\n");
     72b:	83 ec 08             	sub    $0x8,%esp
     72e:	68 fd 4f 00 00       	push   $0x4ffd
     733:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     739:	e8 62 40 00 00       	call   47a0 <printf>
    exit(0);
     73e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     745:	e8 f8 3e 00 00       	call   4642 <exit>
     74a:	83 c4 10             	add    $0x10,%esp
  close(fd);
     74d:	83 ec 0c             	sub    $0xc,%esp
     750:	53                   	push   %ebx
     751:	e8 1c 3f 00 00       	call   4672 <close>
  if(unlink("small") < 0){
     756:	c7 04 24 3f 4c 00 00 	movl   $0x4c3f,(%esp)
     75d:	e8 38 3f 00 00       	call   469a <unlink>
     762:	83 c4 10             	add    $0x10,%esp
     765:	85 c0                	test   %eax,%eax
     767:	0f 88 86 00 00 00    	js     7f3 <writetest+0x203>
  printf(stdout, "small file test ok\n");
     76d:	83 ec 08             	sub    $0x8,%esp
     770:	68 f9 4c 00 00       	push   $0x4cf9
     775:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     77b:	e8 20 40 00 00       	call   47a0 <printf>
}
     780:	83 c4 10             	add    $0x10,%esp
     783:	8d 65 f8             	lea    -0x8(%ebp),%esp
     786:	5b                   	pop    %ebx
     787:	5e                   	pop    %esi
     788:	5d                   	pop    %ebp
     789:	c3                   	ret    
    printf(stdout, "error: creat small failed!\n");
     78a:	83 ec 08             	sub    $0x8,%esp
     78d:	68 60 4c 00 00       	push   $0x4c60
     792:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     798:	e8 03 40 00 00       	call   47a0 <printf>
    exit(0);
     79d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7a4:	e8 99 3e 00 00       	call   4642 <exit>
     7a9:	83 c4 10             	add    $0x10,%esp
     7ac:	e9 8b fe ff ff       	jmp    63c <writetest+0x4c>
    printf(stdout, "error: open small failed!\n");
     7b1:	83 ec 08             	sub    $0x8,%esp
     7b4:	68 b6 4c 00 00       	push   $0x4cb6
     7b9:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     7bf:	e8 dc 3f 00 00       	call   47a0 <printf>
    exit(0);
     7c4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7cb:	e8 72 3e 00 00       	call   4642 <exit>
     7d0:	83 c4 10             	add    $0x10,%esp
     7d3:	e9 32 ff ff ff       	jmp    70a <writetest+0x11a>
    printf(stdout, "read succeeded ok\n");
     7d8:	83 ec 08             	sub    $0x8,%esp
     7db:	68 d1 4c 00 00       	push   $0x4cd1
     7e0:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     7e6:	e8 b5 3f 00 00       	call   47a0 <printf>
     7eb:	83 c4 10             	add    $0x10,%esp
     7ee:	e9 5a ff ff ff       	jmp    74d <writetest+0x15d>
    printf(stdout, "unlink small failed\n");
     7f3:	83 ec 08             	sub    $0x8,%esp
     7f6:	68 e4 4c 00 00       	push   $0x4ce4
     7fb:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     801:	e8 9a 3f 00 00       	call   47a0 <printf>
    exit(0);
     806:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     80d:	e8 30 3e 00 00       	call   4642 <exit>
     812:	83 c4 10             	add    $0x10,%esp
     815:	e9 53 ff ff ff       	jmp    76d <writetest+0x17d>
     81a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000820 <writetest1>:
{
     820:	55                   	push   %ebp
     821:	89 e5                	mov    %esp,%ebp
     823:	56                   	push   %esi
     824:	53                   	push   %ebx
  printf(stdout, "big files test\n");
     825:	83 ec 08             	sub    $0x8,%esp
     828:	68 0d 4d 00 00       	push   $0x4d0d
     82d:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     833:	e8 68 3f 00 00       	call   47a0 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     838:	59                   	pop    %ecx
     839:	5b                   	pop    %ebx
     83a:	68 02 02 00 00       	push   $0x202
     83f:	68 87 4d 00 00       	push   $0x4d87
     844:	e8 41 3e 00 00       	call   468a <open>
  if(fd < 0){
     849:	83 c4 10             	add    $0x10,%esp
     84c:	85 c0                	test   %eax,%eax
  fd = open("big", O_CREATE|O_RDWR);
     84e:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     850:	0f 88 67 01 00 00    	js     9bd <writetest1+0x19d>
{
     856:	31 db                	xor    %ebx,%ebx
     858:	90                   	nop
     859:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(write(fd, buf, 512) != 512){
     860:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
     863:	89 1d c0 93 00 00    	mov    %ebx,0x93c0
    if(write(fd, buf, 512) != 512){
     869:	68 00 02 00 00       	push   $0x200
     86e:	68 c0 93 00 00       	push   $0x93c0
     873:	56                   	push   %esi
     874:	e8 f1 3d 00 00       	call   466a <write>
     879:	83 c4 10             	add    $0x10,%esp
     87c:	3d 00 02 00 00       	cmp    $0x200,%eax
     881:	74 23                	je     8a6 <writetest1+0x86>
      printf(stdout, "error: write big file failed\n", i);
     883:	83 ec 04             	sub    $0x4,%esp
     886:	53                   	push   %ebx
     887:	68 37 4d 00 00       	push   $0x4d37
     88c:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     892:	e8 09 3f 00 00       	call   47a0 <printf>
      exit(0);
     897:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     89e:	e8 9f 3d 00 00       	call   4642 <exit>
     8a3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < MAXFILE; i++){
     8a6:	83 c3 01             	add    $0x1,%ebx
     8a9:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     8af:	75 af                	jne    860 <writetest1+0x40>
  close(fd);
     8b1:	83 ec 0c             	sub    $0xc,%esp
     8b4:	56                   	push   %esi
     8b5:	e8 b8 3d 00 00       	call   4672 <close>
  fd = open("big", O_RDONLY);
     8ba:	58                   	pop    %eax
     8bb:	5a                   	pop    %edx
     8bc:	6a 00                	push   $0x0
     8be:	68 87 4d 00 00       	push   $0x4d87
     8c3:	e8 c2 3d 00 00       	call   468a <open>
  if(fd < 0){
     8c8:	83 c4 10             	add    $0x10,%esp
     8cb:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
     8cd:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     8cf:	0f 88 c1 00 00 00    	js     996 <writetest1+0x176>
{
     8d5:	31 db                	xor    %ebx,%ebx
     8d7:	eb 5e                	jmp    937 <writetest1+0x117>
     8d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    } else if(i != 512){
     8e0:	3d 00 02 00 00       	cmp    $0x200,%eax
     8e5:	74 23                	je     90a <writetest1+0xea>
      printf(stdout, "read failed %d\n", i);
     8e7:	83 ec 04             	sub    $0x4,%esp
     8ea:	50                   	push   %eax
     8eb:	68 8b 4d 00 00       	push   $0x4d8b
     8f0:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     8f6:	e8 a5 3e 00 00       	call   47a0 <printf>
      exit(0);
     8fb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     902:	e8 3b 3d 00 00       	call   4642 <exit>
     907:	83 c4 10             	add    $0x10,%esp
    if(((int*)buf)[0] != n){
     90a:	a1 c0 93 00 00       	mov    0x93c0,%eax
     90f:	39 d8                	cmp    %ebx,%eax
     911:	74 21                	je     934 <writetest1+0x114>
      printf(stdout, "read content of block %d is %d\n",
     913:	50                   	push   %eax
     914:	53                   	push   %ebx
     915:	68 88 5b 00 00       	push   $0x5b88
     91a:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     920:	e8 7b 3e 00 00       	call   47a0 <printf>
      exit(0);
     925:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     92c:	e8 11 3d 00 00       	call   4642 <exit>
     931:	83 c4 10             	add    $0x10,%esp
    n++;
     934:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     937:	83 ec 04             	sub    $0x4,%esp
     93a:	68 00 02 00 00       	push   $0x200
     93f:	68 c0 93 00 00       	push   $0x93c0
     944:	56                   	push   %esi
     945:	e8 18 3d 00 00       	call   4662 <read>
    if(i == 0){
     94a:	83 c4 10             	add    $0x10,%esp
     94d:	85 c0                	test   %eax,%eax
     94f:	75 8f                	jne    8e0 <writetest1+0xc0>
      if(n == MAXFILE - 1){
     951:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     957:	0f 84 ae 00 00 00    	je     a0b <writetest1+0x1eb>
  close(fd);
     95d:	83 ec 0c             	sub    $0xc,%esp
     960:	56                   	push   %esi
     961:	e8 0c 3d 00 00       	call   4672 <close>
  if(unlink("big") < 0){
     966:	c7 04 24 87 4d 00 00 	movl   $0x4d87,(%esp)
     96d:	e8 28 3d 00 00       	call   469a <unlink>
     972:	83 c4 10             	add    $0x10,%esp
     975:	85 c0                	test   %eax,%eax
     977:	78 6b                	js     9e4 <writetest1+0x1c4>
  printf(stdout, "big files ok\n");
     979:	83 ec 08             	sub    $0x8,%esp
     97c:	68 ae 4d 00 00       	push   $0x4dae
     981:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     987:	e8 14 3e 00 00       	call   47a0 <printf>
}
     98c:	83 c4 10             	add    $0x10,%esp
     98f:	8d 65 f8             	lea    -0x8(%ebp),%esp
     992:	5b                   	pop    %ebx
     993:	5e                   	pop    %esi
     994:	5d                   	pop    %ebp
     995:	c3                   	ret    
    printf(stdout, "error: open big failed!\n");
     996:	83 ec 08             	sub    $0x8,%esp
     999:	68 55 4d 00 00       	push   $0x4d55
     99e:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     9a4:	e8 f7 3d 00 00       	call   47a0 <printf>
    exit(0);
     9a9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9b0:	e8 8d 3c 00 00       	call   4642 <exit>
     9b5:	83 c4 10             	add    $0x10,%esp
     9b8:	e9 18 ff ff ff       	jmp    8d5 <writetest1+0xb5>
    printf(stdout, "error: creat big failed!\n");
     9bd:	83 ec 08             	sub    $0x8,%esp
     9c0:	68 1d 4d 00 00       	push   $0x4d1d
     9c5:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     9cb:	e8 d0 3d 00 00       	call   47a0 <printf>
    exit(0);
     9d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9d7:	e8 66 3c 00 00       	call   4642 <exit>
     9dc:	83 c4 10             	add    $0x10,%esp
     9df:	e9 72 fe ff ff       	jmp    856 <writetest1+0x36>
    printf(stdout, "unlink big failed\n");
     9e4:	83 ec 08             	sub    $0x8,%esp
     9e7:	68 9b 4d 00 00       	push   $0x4d9b
     9ec:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     9f2:	e8 a9 3d 00 00       	call   47a0 <printf>
    exit(0);
     9f7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9fe:	e8 3f 3c 00 00       	call   4642 <exit>
     a03:	83 c4 10             	add    $0x10,%esp
     a06:	e9 6e ff ff ff       	jmp    979 <writetest1+0x159>
        printf(stdout, "read only %d blocks from big", n);
     a0b:	83 ec 04             	sub    $0x4,%esp
     a0e:	68 8b 00 00 00       	push   $0x8b
     a13:	68 6e 4d 00 00       	push   $0x4d6e
     a18:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     a1e:	e8 7d 3d 00 00       	call   47a0 <printf>
        exit(0);
     a23:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     a2a:	e8 13 3c 00 00       	call   4642 <exit>
     a2f:	83 c4 10             	add    $0x10,%esp
     a32:	e9 26 ff ff ff       	jmp    95d <writetest1+0x13d>
     a37:	89 f6                	mov    %esi,%esi
     a39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a40 <createtest>:
{
     a40:	55                   	push   %ebp
     a41:	89 e5                	mov    %esp,%ebp
     a43:	53                   	push   %ebx
  name[2] = '\0';
     a44:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     a49:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     a4c:	68 a8 5b 00 00       	push   $0x5ba8
     a51:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     a57:	e8 44 3d 00 00       	call   47a0 <printf>
  name[0] = 'a';
     a5c:	c6 05 c0 b3 00 00 61 	movb   $0x61,0xb3c0
  name[2] = '\0';
     a63:	c6 05 c2 b3 00 00 00 	movb   $0x0,0xb3c2
     a6a:	83 c4 10             	add    $0x10,%esp
     a6d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
     a70:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
     a73:	88 1d c1 b3 00 00    	mov    %bl,0xb3c1
     a79:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     a7c:	68 02 02 00 00       	push   $0x202
     a81:	68 c0 b3 00 00       	push   $0xb3c0
     a86:	e8 ff 3b 00 00       	call   468a <open>
    close(fd);
     a8b:	89 04 24             	mov    %eax,(%esp)
     a8e:	e8 df 3b 00 00       	call   4672 <close>
  for(i = 0; i < 52; i++){
     a93:	83 c4 10             	add    $0x10,%esp
     a96:	80 fb 64             	cmp    $0x64,%bl
     a99:	75 d5                	jne    a70 <createtest+0x30>
  name[0] = 'a';
     a9b:	c6 05 c0 b3 00 00 61 	movb   $0x61,0xb3c0
  name[2] = '\0';
     aa2:	c6 05 c2 b3 00 00 00 	movb   $0x0,0xb3c2
     aa9:	bb 30 00 00 00       	mov    $0x30,%ebx
     aae:	66 90                	xchg   %ax,%ax
    unlink(name);
     ab0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
     ab3:	88 1d c1 b3 00 00    	mov    %bl,0xb3c1
     ab9:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     abc:	68 c0 b3 00 00       	push   $0xb3c0
     ac1:	e8 d4 3b 00 00       	call   469a <unlink>
  for(i = 0; i < 52; i++){
     ac6:	83 c4 10             	add    $0x10,%esp
     ac9:	80 fb 64             	cmp    $0x64,%bl
     acc:	75 e2                	jne    ab0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     ace:	83 ec 08             	sub    $0x8,%esp
     ad1:	68 d0 5b 00 00       	push   $0x5bd0
     ad6:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     adc:	e8 bf 3c 00 00       	call   47a0 <printf>
}
     ae1:	83 c4 10             	add    $0x10,%esp
     ae4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     ae7:	c9                   	leave  
     ae8:	c3                   	ret    
     ae9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000af0 <dirtest>:
{
     af0:	55                   	push   %ebp
     af1:	89 e5                	mov    %esp,%ebp
     af3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     af6:	68 bc 4d 00 00       	push   $0x4dbc
     afb:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     b01:	e8 9a 3c 00 00       	call   47a0 <printf>
  if(mkdir("dir0") < 0){
     b06:	c7 04 24 c8 4d 00 00 	movl   $0x4dc8,(%esp)
     b0d:	e8 a0 3b 00 00       	call   46b2 <mkdir>
     b12:	83 c4 10             	add    $0x10,%esp
     b15:	85 c0                	test   %eax,%eax
     b17:	0f 88 d3 00 00 00    	js     bf0 <dirtest+0x100>
  if(chdir("dir0") < 0){
     b1d:	83 ec 0c             	sub    $0xc,%esp
     b20:	68 c8 4d 00 00       	push   $0x4dc8
     b25:	e8 90 3b 00 00       	call   46ba <chdir>
     b2a:	83 c4 10             	add    $0x10,%esp
     b2d:	85 c0                	test   %eax,%eax
     b2f:	0f 88 93 00 00 00    	js     bc8 <dirtest+0xd8>
  if(chdir("..") < 0){
     b35:	83 ec 0c             	sub    $0xc,%esp
     b38:	68 6d 53 00 00       	push   $0x536d
     b3d:	e8 78 3b 00 00       	call   46ba <chdir>
     b42:	83 c4 10             	add    $0x10,%esp
     b45:	85 c0                	test   %eax,%eax
     b47:	78 57                	js     ba0 <dirtest+0xb0>
  if(unlink("dir0") < 0){
     b49:	83 ec 0c             	sub    $0xc,%esp
     b4c:	68 c8 4d 00 00       	push   $0x4dc8
     b51:	e8 44 3b 00 00       	call   469a <unlink>
     b56:	83 c4 10             	add    $0x10,%esp
     b59:	85 c0                	test   %eax,%eax
     b5b:	78 1b                	js     b78 <dirtest+0x88>
  printf(stdout, "mkdir test ok\n");
     b5d:	83 ec 08             	sub    $0x8,%esp
     b60:	68 05 4e 00 00       	push   $0x4e05
     b65:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     b6b:	e8 30 3c 00 00       	call   47a0 <printf>
}
     b70:	83 c4 10             	add    $0x10,%esp
     b73:	c9                   	leave  
     b74:	c3                   	ret    
     b75:	8d 76 00             	lea    0x0(%esi),%esi
    printf(stdout, "unlink dir0 failed\n");
     b78:	83 ec 08             	sub    $0x8,%esp
     b7b:	68 f1 4d 00 00       	push   $0x4df1
     b80:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     b86:	e8 15 3c 00 00       	call   47a0 <printf>
    exit(0);
     b8b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b92:	e8 ab 3a 00 00       	call   4642 <exit>
     b97:	83 c4 10             	add    $0x10,%esp
     b9a:	eb c1                	jmp    b5d <dirtest+0x6d>
     b9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "chdir .. failed\n");
     ba0:	83 ec 08             	sub    $0x8,%esp
     ba3:	68 e0 4d 00 00       	push   $0x4de0
     ba8:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     bae:	e8 ed 3b 00 00       	call   47a0 <printf>
    exit(0);
     bb3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bba:	e8 83 3a 00 00       	call   4642 <exit>
     bbf:	83 c4 10             	add    $0x10,%esp
     bc2:	eb 85                	jmp    b49 <dirtest+0x59>
     bc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "chdir dir0 failed\n");
     bc8:	83 ec 08             	sub    $0x8,%esp
     bcb:	68 cd 4d 00 00       	push   $0x4dcd
     bd0:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     bd6:	e8 c5 3b 00 00       	call   47a0 <printf>
    exit(0);
     bdb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     be2:	e8 5b 3a 00 00       	call   4642 <exit>
     be7:	83 c4 10             	add    $0x10,%esp
     bea:	e9 46 ff ff ff       	jmp    b35 <dirtest+0x45>
     bef:	90                   	nop
    printf(stdout, "mkdir failed\n");
     bf0:	83 ec 08             	sub    $0x8,%esp
     bf3:	68 f8 4a 00 00       	push   $0x4af8
     bf8:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     bfe:	e8 9d 3b 00 00       	call   47a0 <printf>
    exit(0);
     c03:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c0a:	e8 33 3a 00 00       	call   4642 <exit>
     c0f:	83 c4 10             	add    $0x10,%esp
     c12:	e9 06 ff ff ff       	jmp    b1d <dirtest+0x2d>
     c17:	89 f6                	mov    %esi,%esi
     c19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c20 <exectest>:
{
     c20:	55                   	push   %ebp
     c21:	89 e5                	mov    %esp,%ebp
     c23:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     c26:	68 14 4e 00 00       	push   $0x4e14
     c2b:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     c31:	e8 6a 3b 00 00       	call   47a0 <printf>
  if(exec("echo", echoargv) < 0){
     c36:	58                   	pop    %eax
     c37:	5a                   	pop    %edx
     c38:	68 d4 6b 00 00       	push   $0x6bd4
     c3d:	68 dd 4b 00 00       	push   $0x4bdd
     c42:	e8 3b 3a 00 00       	call   4682 <exec>
     c47:	83 c4 10             	add    $0x10,%esp
     c4a:	85 c0                	test   %eax,%eax
     c4c:	78 02                	js     c50 <exectest+0x30>
}
     c4e:	c9                   	leave  
     c4f:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     c50:	83 ec 08             	sub    $0x8,%esp
     c53:	68 1f 4e 00 00       	push   $0x4e1f
     c58:	ff 35 d0 6b 00 00    	pushl  0x6bd0
     c5e:	e8 3d 3b 00 00       	call   47a0 <printf>
    exit(0);
     c63:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c6a:	e8 d3 39 00 00       	call   4642 <exit>
     c6f:	83 c4 10             	add    $0x10,%esp
}
     c72:	c9                   	leave  
     c73:	c3                   	ret    
     c74:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c7a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000c80 <pipe1>:
{
     c80:	55                   	push   %ebp
     c81:	89 e5                	mov    %esp,%ebp
     c83:	57                   	push   %edi
     c84:	56                   	push   %esi
     c85:	53                   	push   %ebx
  if(pipe(fds) != 0){
     c86:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     c89:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
     c8c:	50                   	push   %eax
     c8d:	e8 c8 39 00 00       	call   465a <pipe>
     c92:	83 c4 10             	add    $0x10,%esp
     c95:	85 c0                	test   %eax,%eax
     c97:	0f 85 cc 00 00 00    	jne    d69 <pipe1+0xe9>
  pid = fork();
     c9d:	e8 98 39 00 00       	call   463a <fork>
  if(pid == 0){
     ca2:	83 f8 00             	cmp    $0x0,%eax
     ca5:	0f 84 ea 00 00 00    	je     d95 <pipe1+0x115>
  } else if(pid > 0){
     cab:	7e 6a                	jle    d17 <pipe1+0x97>
    close(fds[1]);
     cad:	83 ec 0c             	sub    $0xc,%esp
     cb0:	ff 75 e4             	pushl  -0x1c(%ebp)
    cc = 1;
     cb3:	bf 01 00 00 00       	mov    $0x1,%edi
  seq = 0;
     cb8:	31 db                	xor    %ebx,%ebx
    close(fds[1]);
     cba:	e8 b3 39 00 00       	call   4672 <close>
    while((n = read(fds[0], buf, cc)) > 0){
     cbf:	83 c4 10             	add    $0x10,%esp
    total = 0;
     cc2:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     cc9:	83 ec 04             	sub    $0x4,%esp
     ccc:	57                   	push   %edi
     ccd:	68 c0 93 00 00       	push   $0x93c0
     cd2:	ff 75 e0             	pushl  -0x20(%ebp)
     cd5:	e8 88 39 00 00       	call   4662 <read>
     cda:	83 c4 10             	add    $0x10,%esp
     cdd:	85 c0                	test   %eax,%eax
     cdf:	0f 8e 3e 01 00 00    	jle    e23 <pipe1+0x1a3>
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     ce5:	89 d9                	mov    %ebx,%ecx
     ce7:	8d 34 18             	lea    (%eax,%ebx,1),%esi
     cea:	f7 d9                	neg    %ecx
     cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     cf0:	38 9c 0b c0 93 00 00 	cmp    %bl,0x93c0(%ebx,%ecx,1)
     cf7:	8d 53 01             	lea    0x1(%ebx),%edx
     cfa:	75 53                	jne    d4f <pipe1+0xcf>
      for(i = 0; i < n; i++){
     cfc:	39 f2                	cmp    %esi,%edx
     cfe:	89 d3                	mov    %edx,%ebx
     d00:	75 ee                	jne    cf0 <pipe1+0x70>
      cc = cc * 2;
     d02:	01 ff                	add    %edi,%edi
      total += n;
     d04:	01 45 d4             	add    %eax,-0x2c(%ebp)
     d07:	b8 00 20 00 00       	mov    $0x2000,%eax
     d0c:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
     d12:	0f 4f f8             	cmovg  %eax,%edi
     d15:	eb b2                	jmp    cc9 <pipe1+0x49>
    printf(1, "fork() failed\n");
     d17:	83 ec 08             	sub    $0x8,%esp
     d1a:	68 73 4e 00 00       	push   $0x4e73
     d1f:	6a 01                	push   $0x1
     d21:	e8 7a 3a 00 00       	call   47a0 <printf>
    exit(0);
     d26:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d2d:	e8 10 39 00 00       	call   4642 <exit>
     d32:	83 c4 10             	add    $0x10,%esp
  printf(1, "pipe1 ok\n");
     d35:	83 ec 08             	sub    $0x8,%esp
     d38:	68 82 4e 00 00       	push   $0x4e82
     d3d:	6a 01                	push   $0x1
     d3f:	e8 5c 3a 00 00       	call   47a0 <printf>
     d44:	83 c4 10             	add    $0x10,%esp
}
     d47:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d4a:	5b                   	pop    %ebx
     d4b:	5e                   	pop    %esi
     d4c:	5f                   	pop    %edi
     d4d:	5d                   	pop    %ebp
     d4e:	c3                   	ret    
          printf(1, "pipe1 oops 2\n");
     d4f:	83 ec 08             	sub    $0x8,%esp
     d52:	68 4e 4e 00 00       	push   $0x4e4e
     d57:	6a 01                	push   $0x1
     d59:	e8 42 3a 00 00       	call   47a0 <printf>
          return;
     d5e:	83 c4 10             	add    $0x10,%esp
}
     d61:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d64:	5b                   	pop    %ebx
     d65:	5e                   	pop    %esi
     d66:	5f                   	pop    %edi
     d67:	5d                   	pop    %ebp
     d68:	c3                   	ret    
    printf(1, "pipe() failed\n");
     d69:	83 ec 08             	sub    $0x8,%esp
     d6c:	68 31 4e 00 00       	push   $0x4e31
     d71:	6a 01                	push   $0x1
     d73:	e8 28 3a 00 00       	call   47a0 <printf>
    exit(0);
     d78:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d7f:	e8 be 38 00 00       	call   4642 <exit>
     d84:	83 c4 10             	add    $0x10,%esp
  pid = fork();
     d87:	e8 ae 38 00 00       	call   463a <fork>
  if(pid == 0){
     d8c:	83 f8 00             	cmp    $0x0,%eax
     d8f:	0f 85 16 ff ff ff    	jne    cab <pipe1+0x2b>
    close(fds[0]);
     d95:	83 ec 0c             	sub    $0xc,%esp
     d98:	ff 75 e0             	pushl  -0x20(%ebp)
     d9b:	31 db                	xor    %ebx,%ebx
     d9d:	be 09 04 00 00       	mov    $0x409,%esi
     da2:	e8 cb 38 00 00       	call   4672 <close>
     da7:	83 c4 10             	add    $0x10,%esp
     daa:	89 d8                	mov    %ebx,%eax
     dac:	89 f2                	mov    %esi,%edx
     dae:	f7 d8                	neg    %eax
     db0:	29 da                	sub    %ebx,%edx
     db2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        buf[i] = seq++;
     db8:	88 84 03 c0 93 00 00 	mov    %al,0x93c0(%ebx,%eax,1)
     dbf:	83 c0 01             	add    $0x1,%eax
      for(i = 0; i < 1033; i++)
     dc2:	39 d0                	cmp    %edx,%eax
     dc4:	75 f2                	jne    db8 <pipe1+0x138>
      if(write(fds[1], buf, 1033) != 1033){
     dc6:	83 ec 04             	sub    $0x4,%esp
     dc9:	68 09 04 00 00       	push   $0x409
     dce:	68 c0 93 00 00       	push   $0x93c0
     dd3:	ff 75 e4             	pushl  -0x1c(%ebp)
     dd6:	e8 8f 38 00 00       	call   466a <write>
     ddb:	83 c4 10             	add    $0x10,%esp
     dde:	3d 09 04 00 00       	cmp    $0x409,%eax
     de3:	74 1e                	je     e03 <pipe1+0x183>
        printf(1, "pipe1 oops 1\n");
     de5:	83 ec 08             	sub    $0x8,%esp
     de8:	68 40 4e 00 00       	push   $0x4e40
     ded:	6a 01                	push   $0x1
     def:	e8 ac 39 00 00       	call   47a0 <printf>
        exit(0);
     df4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     dfb:	e8 42 38 00 00       	call   4642 <exit>
     e00:	83 c4 10             	add    $0x10,%esp
     e03:	81 eb 09 04 00 00    	sub    $0x409,%ebx
    for(n = 0; n < 5; n++){
     e09:	81 fb d3 eb ff ff    	cmp    $0xffffebd3,%ebx
     e0f:	75 99                	jne    daa <pipe1+0x12a>
    exit(0);
     e11:	83 ec 0c             	sub    $0xc,%esp
     e14:	6a 00                	push   $0x0
     e16:	e8 27 38 00 00       	call   4642 <exit>
     e1b:	83 c4 10             	add    $0x10,%esp
     e1e:	e9 12 ff ff ff       	jmp    d35 <pipe1+0xb5>
    if(total != 5 * 1033){
     e23:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     e26:	3d 2d 14 00 00       	cmp    $0x142d,%eax
     e2b:	75 1f                	jne    e4c <pipe1+0x1cc>
    close(fds[0]);
     e2d:	83 ec 0c             	sub    $0xc,%esp
     e30:	ff 75 e0             	pushl  -0x20(%ebp)
     e33:	e8 3a 38 00 00       	call   4672 <close>
    wait(0x0);
     e38:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e3f:	e8 06 38 00 00       	call   464a <wait>
     e44:	83 c4 10             	add    $0x10,%esp
     e47:	e9 e9 fe ff ff       	jmp    d35 <pipe1+0xb5>
      printf(1, "pipe1 oops 3 total %d\n", total);
     e4c:	83 ec 04             	sub    $0x4,%esp
     e4f:	50                   	push   %eax
     e50:	68 5c 4e 00 00       	push   $0x4e5c
     e55:	6a 01                	push   $0x1
     e57:	e8 44 39 00 00       	call   47a0 <printf>
      exit(0);
     e5c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e63:	e8 da 37 00 00       	call   4642 <exit>
     e68:	83 c4 10             	add    $0x10,%esp
     e6b:	eb c0                	jmp    e2d <pipe1+0x1ad>
     e6d:	8d 76 00             	lea    0x0(%esi),%esi

00000e70 <preempt>:
{
     e70:	55                   	push   %ebp
     e71:	89 e5                	mov    %esp,%ebp
     e73:	57                   	push   %edi
     e74:	56                   	push   %esi
     e75:	53                   	push   %ebx
     e76:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
     e79:	68 8c 4e 00 00       	push   $0x4e8c
     e7e:	6a 01                	push   $0x1
     e80:	e8 1b 39 00 00       	call   47a0 <printf>
  pid1 = fork();
     e85:	e8 b0 37 00 00       	call   463a <fork>
  if(pid1 == 0)
     e8a:	83 c4 10             	add    $0x10,%esp
     e8d:	85 c0                	test   %eax,%eax
     e8f:	75 02                	jne    e93 <preempt+0x23>
     e91:	eb fe                	jmp    e91 <preempt+0x21>
     e93:	89 c7                	mov    %eax,%edi
  pid2 = fork();
     e95:	e8 a0 37 00 00       	call   463a <fork>
  if(pid2 == 0)
     e9a:	85 c0                	test   %eax,%eax
  pid2 = fork();
     e9c:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     e9e:	75 02                	jne    ea2 <preempt+0x32>
     ea0:	eb fe                	jmp    ea0 <preempt+0x30>
  pipe(pfds);
     ea2:	8d 45 e0             	lea    -0x20(%ebp),%eax
     ea5:	83 ec 0c             	sub    $0xc,%esp
     ea8:	50                   	push   %eax
     ea9:	e8 ac 37 00 00       	call   465a <pipe>
  pid3 = fork();
     eae:	e8 87 37 00 00       	call   463a <fork>
  if(pid3 == 0){
     eb3:	83 c4 10             	add    $0x10,%esp
     eb6:	85 c0                	test   %eax,%eax
  pid3 = fork();
     eb8:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     eba:	75 46                	jne    f02 <preempt+0x92>
    close(pfds[0]);
     ebc:	83 ec 0c             	sub    $0xc,%esp
     ebf:	ff 75 e0             	pushl  -0x20(%ebp)
     ec2:	e8 ab 37 00 00       	call   4672 <close>
    if(write(pfds[1], "x", 1) != 1)
     ec7:	83 c4 0c             	add    $0xc,%esp
     eca:	6a 01                	push   $0x1
     ecc:	68 51 54 00 00       	push   $0x5451
     ed1:	ff 75 e4             	pushl  -0x1c(%ebp)
     ed4:	e8 91 37 00 00       	call   466a <write>
     ed9:	83 c4 10             	add    $0x10,%esp
     edc:	83 e8 01             	sub    $0x1,%eax
     edf:	74 11                	je     ef2 <preempt+0x82>
      printf(1, "preempt write error");
     ee1:	50                   	push   %eax
     ee2:	50                   	push   %eax
     ee3:	68 96 4e 00 00       	push   $0x4e96
     ee8:	6a 01                	push   $0x1
     eea:	e8 b1 38 00 00       	call   47a0 <printf>
     eef:	83 c4 10             	add    $0x10,%esp
    close(pfds[1]);
     ef2:	83 ec 0c             	sub    $0xc,%esp
     ef5:	ff 75 e4             	pushl  -0x1c(%ebp)
     ef8:	e8 75 37 00 00       	call   4672 <close>
     efd:	83 c4 10             	add    $0x10,%esp
     f00:	eb fe                	jmp    f00 <preempt+0x90>
  close(pfds[1]);
     f02:	83 ec 0c             	sub    $0xc,%esp
     f05:	ff 75 e4             	pushl  -0x1c(%ebp)
     f08:	e8 65 37 00 00       	call   4672 <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     f0d:	83 c4 0c             	add    $0xc,%esp
     f10:	68 00 20 00 00       	push   $0x2000
     f15:	68 c0 93 00 00       	push   $0x93c0
     f1a:	ff 75 e0             	pushl  -0x20(%ebp)
     f1d:	e8 40 37 00 00       	call   4662 <read>
     f22:	83 c4 10             	add    $0x10,%esp
     f25:	83 e8 01             	sub    $0x1,%eax
     f28:	74 19                	je     f43 <preempt+0xd3>
    printf(1, "preempt read error");
     f2a:	50                   	push   %eax
     f2b:	50                   	push   %eax
     f2c:	68 aa 4e 00 00       	push   $0x4eaa
     f31:	6a 01                	push   $0x1
     f33:	e8 68 38 00 00       	call   47a0 <printf>
    return;
     f38:	83 c4 10             	add    $0x10,%esp
}
     f3b:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f3e:	5b                   	pop    %ebx
     f3f:	5e                   	pop    %esi
     f40:	5f                   	pop    %edi
     f41:	5d                   	pop    %ebp
     f42:	c3                   	ret    
  close(pfds[0]);
     f43:	83 ec 0c             	sub    $0xc,%esp
     f46:	ff 75 e0             	pushl  -0x20(%ebp)
     f49:	e8 24 37 00 00       	call   4672 <close>
  printf(1, "kill... ");
     f4e:	58                   	pop    %eax
     f4f:	5a                   	pop    %edx
     f50:	68 bd 4e 00 00       	push   $0x4ebd
     f55:	6a 01                	push   $0x1
     f57:	e8 44 38 00 00       	call   47a0 <printf>
  kill(pid1);
     f5c:	89 3c 24             	mov    %edi,(%esp)
     f5f:	e8 16 37 00 00       	call   467a <kill>
  kill(pid2);
     f64:	89 34 24             	mov    %esi,(%esp)
     f67:	e8 0e 37 00 00       	call   467a <kill>
  kill(pid3);
     f6c:	89 1c 24             	mov    %ebx,(%esp)
     f6f:	e8 06 37 00 00       	call   467a <kill>
  printf(1, "wait... ");
     f74:	59                   	pop    %ecx
     f75:	5b                   	pop    %ebx
     f76:	68 c6 4e 00 00       	push   $0x4ec6
     f7b:	6a 01                	push   $0x1
     f7d:	e8 1e 38 00 00       	call   47a0 <printf>
  wait(0x0);
     f82:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     f89:	e8 bc 36 00 00       	call   464a <wait>
  wait(0x0);
     f8e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     f95:	e8 b0 36 00 00       	call   464a <wait>
  wait(0x0);
     f9a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     fa1:	e8 a4 36 00 00       	call   464a <wait>
  printf(1, "preempt ok\n");
     fa6:	5e                   	pop    %esi
     fa7:	5f                   	pop    %edi
     fa8:	68 cf 4e 00 00       	push   $0x4ecf
     fad:	6a 01                	push   $0x1
     faf:	e8 ec 37 00 00       	call   47a0 <printf>
     fb4:	83 c4 10             	add    $0x10,%esp
     fb7:	eb 82                	jmp    f3b <preempt+0xcb>
     fb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000fc0 <exitwait>:
{
     fc0:	55                   	push   %ebp
     fc1:	89 e5                	mov    %esp,%ebp
     fc3:	56                   	push   %esi
     fc4:	53                   	push   %ebx
     fc5:	bb 64 00 00 00       	mov    $0x64,%ebx
     fca:	eb 1a                	jmp    fe6 <exitwait+0x26>
     fcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(wait(0x0) != pid){
     fd0:	83 ec 0c             	sub    $0xc,%esp
     fd3:	6a 00                	push   $0x0
     fd5:	e8 70 36 00 00       	call   464a <wait>
     fda:	83 c4 10             	add    $0x10,%esp
     fdd:	39 f0                	cmp    %esi,%eax
     fdf:	75 5f                	jne    1040 <exitwait+0x80>
  for(i = 0; i < 100; i++){
     fe1:	83 eb 01             	sub    $0x1,%ebx
     fe4:	74 1f                	je     1005 <exitwait+0x45>
    pid = fork();
     fe6:	e8 4f 36 00 00       	call   463a <fork>
    if(pid < 0){
     feb:	85 c0                	test   %eax,%eax
    pid = fork();
     fed:	89 c6                	mov    %eax,%esi
    if(pid < 0){
     fef:	78 2f                	js     1020 <exitwait+0x60>
    if(pid){
     ff1:	75 dd                	jne    fd0 <exitwait+0x10>
      exit(0);
     ff3:	83 ec 0c             	sub    $0xc,%esp
     ff6:	6a 00                	push   $0x0
     ff8:	e8 45 36 00 00       	call   4642 <exit>
     ffd:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1000:	83 eb 01             	sub    $0x1,%ebx
    1003:	75 e1                	jne    fe6 <exitwait+0x26>
  printf(1, "exitwait ok\n");
    1005:	83 ec 08             	sub    $0x8,%esp
    1008:	68 eb 4e 00 00       	push   $0x4eeb
    100d:	6a 01                	push   $0x1
    100f:	e8 8c 37 00 00       	call   47a0 <printf>
    1014:	83 c4 10             	add    $0x10,%esp
}
    1017:	8d 65 f8             	lea    -0x8(%ebp),%esp
    101a:	5b                   	pop    %ebx
    101b:	5e                   	pop    %esi
    101c:	5d                   	pop    %ebp
    101d:	c3                   	ret    
    101e:	66 90                	xchg   %ax,%ax
      printf(1, "fork failed\n");
    1020:	83 ec 08             	sub    $0x8,%esp
    1023:	68 39 5a 00 00       	push   $0x5a39
    1028:	6a 01                	push   $0x1
    102a:	e8 71 37 00 00       	call   47a0 <printf>
      return;
    102f:	83 c4 10             	add    $0x10,%esp
}
    1032:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1035:	5b                   	pop    %ebx
    1036:	5e                   	pop    %esi
    1037:	5d                   	pop    %ebp
    1038:	c3                   	ret    
    1039:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
    1040:	83 ec 08             	sub    $0x8,%esp
    1043:	68 db 4e 00 00       	push   $0x4edb
    1048:	6a 01                	push   $0x1
    104a:	e8 51 37 00 00       	call   47a0 <printf>
        return;
    104f:	83 c4 10             	add    $0x10,%esp
}
    1052:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1055:	5b                   	pop    %ebx
    1056:	5e                   	pop    %esi
    1057:	5d                   	pop    %ebp
    1058:	c3                   	ret    
    1059:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001060 <mem>:
{
    1060:	55                   	push   %ebp
    1061:	89 e5                	mov    %esp,%ebp
    1063:	57                   	push   %edi
    1064:	56                   	push   %esi
    1065:	53                   	push   %ebx
    1066:	31 db                	xor    %ebx,%ebx
    1068:	83 ec 14             	sub    $0x14,%esp
  printf(1, "mem test\n");
    106b:	68 f8 4e 00 00       	push   $0x4ef8
    1070:	6a 01                	push   $0x1
    1072:	e8 29 37 00 00       	call   47a0 <printf>
  ppid = getpid();
    1077:	e8 4e 36 00 00       	call   46ca <getpid>
    107c:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
    107e:	e8 b7 35 00 00       	call   463a <fork>
    1083:	83 c4 10             	add    $0x10,%esp
    1086:	85 c0                	test   %eax,%eax
    1088:	74 0a                	je     1094 <mem+0x34>
    108a:	e9 81 00 00 00       	jmp    1110 <mem+0xb0>
    108f:	90                   	nop
      *(char**)m2 = m1;
    1090:	89 18                	mov    %ebx,(%eax)
    1092:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
    1094:	83 ec 0c             	sub    $0xc,%esp
    1097:	68 11 27 00 00       	push   $0x2711
    109c:	e8 5f 39 00 00       	call   4a00 <malloc>
    10a1:	83 c4 10             	add    $0x10,%esp
    10a4:	85 c0                	test   %eax,%eax
    10a6:	75 e8                	jne    1090 <mem+0x30>
    while(m1){
    10a8:	85 db                	test   %ebx,%ebx
    10aa:	74 18                	je     10c4 <mem+0x64>
    10ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
    10b0:	8b 3b                	mov    (%ebx),%edi
      free(m1);
    10b2:	83 ec 0c             	sub    $0xc,%esp
    10b5:	53                   	push   %ebx
    10b6:	89 fb                	mov    %edi,%ebx
    10b8:	e8 b3 38 00 00       	call   4970 <free>
    while(m1){
    10bd:	83 c4 10             	add    $0x10,%esp
    10c0:	85 db                	test   %ebx,%ebx
    10c2:	75 ec                	jne    10b0 <mem+0x50>
    m1 = malloc(1024*20);
    10c4:	83 ec 0c             	sub    $0xc,%esp
    10c7:	68 00 50 00 00       	push   $0x5000
    10cc:	e8 2f 39 00 00       	call   4a00 <malloc>
    if(m1 == 0){
    10d1:	83 c4 10             	add    $0x10,%esp
    10d4:	85 c0                	test   %eax,%eax
    m1 = malloc(1024*20);
    10d6:	89 c3                	mov    %eax,%ebx
    if(m1 == 0){
    10d8:	74 4e                	je     1128 <mem+0xc8>
    free(m1);
    10da:	83 ec 0c             	sub    $0xc,%esp
    10dd:	53                   	push   %ebx
    10de:	e8 8d 38 00 00       	call   4970 <free>
    printf(1, "mem ok\n");
    10e3:	58                   	pop    %eax
    10e4:	5a                   	pop    %edx
    10e5:	68 1c 4f 00 00       	push   $0x4f1c
    10ea:	6a 01                	push   $0x1
    10ec:	e8 af 36 00 00       	call   47a0 <printf>
    exit(0);
    10f1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    10f8:	e8 45 35 00 00       	call   4642 <exit>
    10fd:	83 c4 10             	add    $0x10,%esp
}
    1100:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1103:	5b                   	pop    %ebx
    1104:	5e                   	pop    %esi
    1105:	5f                   	pop    %edi
    1106:	5d                   	pop    %ebp
    1107:	c3                   	ret    
    1108:	90                   	nop
    1109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    wait(0x0);
    1110:	83 ec 0c             	sub    $0xc,%esp
    1113:	6a 00                	push   $0x0
    1115:	e8 30 35 00 00       	call   464a <wait>
    111a:	83 c4 10             	add    $0x10,%esp
}
    111d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1120:	5b                   	pop    %ebx
    1121:	5e                   	pop    %esi
    1122:	5f                   	pop    %edi
    1123:	5d                   	pop    %ebp
    1124:	c3                   	ret    
    1125:	8d 76 00             	lea    0x0(%esi),%esi
      printf(1, "couldn't allocate mem?!!\n");
    1128:	83 ec 08             	sub    $0x8,%esp
    112b:	68 02 4f 00 00       	push   $0x4f02
    1130:	6a 01                	push   $0x1
    1132:	e8 69 36 00 00       	call   47a0 <printf>
      kill(ppid);
    1137:	89 34 24             	mov    %esi,(%esp)
    113a:	e8 3b 35 00 00       	call   467a <kill>
      exit(0);
    113f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1146:	e8 f7 34 00 00       	call   4642 <exit>
    114b:	83 c4 10             	add    $0x10,%esp
    114e:	eb 8a                	jmp    10da <mem+0x7a>

00001150 <sharedfd>:
{
    1150:	55                   	push   %ebp
    1151:	89 e5                	mov    %esp,%ebp
    1153:	57                   	push   %edi
    1154:	56                   	push   %esi
    1155:	53                   	push   %ebx
    1156:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
    1159:	68 24 4f 00 00       	push   $0x4f24
    115e:	6a 01                	push   $0x1
    1160:	e8 3b 36 00 00       	call   47a0 <printf>
  unlink("sharedfd");
    1165:	c7 04 24 33 4f 00 00 	movl   $0x4f33,(%esp)
    116c:	e8 29 35 00 00       	call   469a <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
    1171:	59                   	pop    %ecx
    1172:	5b                   	pop    %ebx
    1173:	68 02 02 00 00       	push   $0x202
    1178:	68 33 4f 00 00       	push   $0x4f33
    117d:	e8 08 35 00 00       	call   468a <open>
  if(fd < 0){
    1182:	83 c4 10             	add    $0x10,%esp
    1185:	85 c0                	test   %eax,%eax
    1187:	0f 88 5b 01 00 00    	js     12e8 <sharedfd+0x198>
    118d:	89 c6                	mov    %eax,%esi
  memset(buf, pid==0?'c':'p', sizeof(buf));
    118f:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
    1194:	e8 a1 34 00 00       	call   463a <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1199:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
    119c:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
    119e:	19 c0                	sbb    %eax,%eax
    11a0:	83 ec 04             	sub    $0x4,%esp
    11a3:	83 e0 f3             	and    $0xfffffff3,%eax
    11a6:	6a 0a                	push   $0xa
    11a8:	83 c0 70             	add    $0x70,%eax
    11ab:	50                   	push   %eax
    11ac:	8d 45 de             	lea    -0x22(%ebp),%eax
    11af:	50                   	push   %eax
    11b0:	e8 eb 32 00 00       	call   44a0 <memset>
    11b5:	83 c4 10             	add    $0x10,%esp
    11b8:	eb 0b                	jmp    11c5 <sharedfd+0x75>
    11ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(i = 0; i < 1000; i++){
    11c0:	83 eb 01             	sub    $0x1,%ebx
    11c3:	74 29                	je     11ee <sharedfd+0x9e>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
    11c5:	8d 45 de             	lea    -0x22(%ebp),%eax
    11c8:	83 ec 04             	sub    $0x4,%esp
    11cb:	6a 0a                	push   $0xa
    11cd:	50                   	push   %eax
    11ce:	56                   	push   %esi
    11cf:	e8 96 34 00 00       	call   466a <write>
    11d4:	83 c4 10             	add    $0x10,%esp
    11d7:	83 f8 0a             	cmp    $0xa,%eax
    11da:	74 e4                	je     11c0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
    11dc:	83 ec 08             	sub    $0x8,%esp
    11df:	68 24 5c 00 00       	push   $0x5c24
    11e4:	6a 01                	push   $0x1
    11e6:	e8 b5 35 00 00       	call   47a0 <printf>
      break;
    11eb:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
    11ee:	85 ff                	test   %edi,%edi
    11f0:	0f 84 8a 00 00 00    	je     1280 <sharedfd+0x130>
    wait(0x0);
    11f6:	83 ec 0c             	sub    $0xc,%esp
    11f9:	6a 00                	push   $0x0
    11fb:	e8 4a 34 00 00       	call   464a <wait>
    1200:	83 c4 10             	add    $0x10,%esp
  close(fd);
    1203:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
    1206:	31 db                	xor    %ebx,%ebx
    1208:	31 ff                	xor    %edi,%edi
  close(fd);
    120a:	56                   	push   %esi
    120b:	8d 75 e8             	lea    -0x18(%ebp),%esi
    120e:	e8 5f 34 00 00       	call   4672 <close>
  fd = open("sharedfd", 0);
    1213:	58                   	pop    %eax
    1214:	5a                   	pop    %edx
    1215:	6a 00                	push   $0x0
    1217:	68 33 4f 00 00       	push   $0x4f33
    121c:	e8 69 34 00 00       	call   468a <open>
  if(fd < 0){
    1221:	83 c4 10             	add    $0x10,%esp
    1224:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
    1226:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  if(fd < 0){
    1229:	0f 88 f8 00 00 00    	js     1327 <sharedfd+0x1d7>
    122f:	89 f8                	mov    %edi,%eax
    1231:	89 df                	mov    %ebx,%edi
    1233:	89 c3                	mov    %eax,%ebx
    1235:	8d 76 00             	lea    0x0(%esi),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
    1238:	8d 45 de             	lea    -0x22(%ebp),%eax
    123b:	83 ec 04             	sub    $0x4,%esp
    123e:	6a 0a                	push   $0xa
    1240:	50                   	push   %eax
    1241:	ff 75 d4             	pushl  -0x2c(%ebp)
    1244:	e8 19 34 00 00       	call   4662 <read>
    1249:	83 c4 10             	add    $0x10,%esp
    124c:	85 c0                	test   %eax,%eax
    124e:	7e 48                	jle    1298 <sharedfd+0x148>
    1250:	8d 45 de             	lea    -0x22(%ebp),%eax
    1253:	eb 15                	jmp    126a <sharedfd+0x11a>
    1255:	8d 76 00             	lea    0x0(%esi),%esi
        np++;
    1258:	80 fa 70             	cmp    $0x70,%dl
    125b:	0f 94 c2             	sete   %dl
    125e:	0f b6 d2             	movzbl %dl,%edx
    1261:	01 d7                	add    %edx,%edi
    1263:	83 c0 01             	add    $0x1,%eax
    for(i = 0; i < sizeof(buf); i++){
    1266:	39 c6                	cmp    %eax,%esi
    1268:	74 ce                	je     1238 <sharedfd+0xe8>
      if(buf[i] == 'c')
    126a:	0f b6 10             	movzbl (%eax),%edx
    126d:	80 fa 63             	cmp    $0x63,%dl
    1270:	75 e6                	jne    1258 <sharedfd+0x108>
        nc++;
    1272:	83 c3 01             	add    $0x1,%ebx
    1275:	eb ec                	jmp    1263 <sharedfd+0x113>
    1277:	89 f6                	mov    %esi,%esi
    1279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    exit(0);
    1280:	83 ec 0c             	sub    $0xc,%esp
    1283:	6a 00                	push   $0x0
    1285:	e8 b8 33 00 00       	call   4642 <exit>
    128a:	83 c4 10             	add    $0x10,%esp
    128d:	e9 71 ff ff ff       	jmp    1203 <sharedfd+0xb3>
    1292:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  close(fd);
    1298:	83 ec 0c             	sub    $0xc,%esp
    129b:	89 d8                	mov    %ebx,%eax
    129d:	ff 75 d4             	pushl  -0x2c(%ebp)
    12a0:	89 fb                	mov    %edi,%ebx
    12a2:	89 c7                	mov    %eax,%edi
    12a4:	e8 c9 33 00 00       	call   4672 <close>
  unlink("sharedfd");
    12a9:	c7 04 24 33 4f 00 00 	movl   $0x4f33,(%esp)
    12b0:	e8 e5 33 00 00       	call   469a <unlink>
  if(nc == 10000 && np == 10000){
    12b5:	83 c4 10             	add    $0x10,%esp
    12b8:	81 ff 10 27 00 00    	cmp    $0x2710,%edi
    12be:	75 42                	jne    1302 <sharedfd+0x1b2>
    12c0:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    12c6:	75 3a                	jne    1302 <sharedfd+0x1b2>
    printf(1, "sharedfd ok\n");
    12c8:	83 ec 08             	sub    $0x8,%esp
    12cb:	68 3c 4f 00 00       	push   $0x4f3c
    12d0:	6a 01                	push   $0x1
    12d2:	e8 c9 34 00 00       	call   47a0 <printf>
    12d7:	83 c4 10             	add    $0x10,%esp
}
    12da:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12dd:	5b                   	pop    %ebx
    12de:	5e                   	pop    %esi
    12df:	5f                   	pop    %edi
    12e0:	5d                   	pop    %ebp
    12e1:	c3                   	ret    
    12e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "fstests: cannot open sharedfd for writing");
    12e8:	83 ec 08             	sub    $0x8,%esp
    12eb:	68 f8 5b 00 00       	push   $0x5bf8
    12f0:	6a 01                	push   $0x1
    12f2:	e8 a9 34 00 00       	call   47a0 <printf>
    return;
    12f7:	83 c4 10             	add    $0x10,%esp
}
    12fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12fd:	5b                   	pop    %ebx
    12fe:	5e                   	pop    %esi
    12ff:	5f                   	pop    %edi
    1300:	5d                   	pop    %ebp
    1301:	c3                   	ret    
    printf(1, "sharedfd oops %d %d\n", nc, np);
    1302:	53                   	push   %ebx
    1303:	57                   	push   %edi
    1304:	68 49 4f 00 00       	push   $0x4f49
    1309:	6a 01                	push   $0x1
    130b:	e8 90 34 00 00       	call   47a0 <printf>
    exit(0);
    1310:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1317:	e8 26 33 00 00       	call   4642 <exit>
    131c:	83 c4 10             	add    $0x10,%esp
}
    131f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1322:	5b                   	pop    %ebx
    1323:	5e                   	pop    %esi
    1324:	5f                   	pop    %edi
    1325:	5d                   	pop    %ebp
    1326:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    1327:	83 ec 08             	sub    $0x8,%esp
    132a:	68 44 5c 00 00       	push   $0x5c44
    132f:	6a 01                	push   $0x1
    1331:	e8 6a 34 00 00       	call   47a0 <printf>
    return;
    1336:	83 c4 10             	add    $0x10,%esp
}
    1339:	8d 65 f4             	lea    -0xc(%ebp),%esp
    133c:	5b                   	pop    %ebx
    133d:	5e                   	pop    %esi
    133e:	5f                   	pop    %edi
    133f:	5d                   	pop    %ebp
    1340:	c3                   	ret    
    1341:	eb 0d                	jmp    1350 <fourfiles>
    1343:	90                   	nop
    1344:	90                   	nop
    1345:	90                   	nop
    1346:	90                   	nop
    1347:	90                   	nop
    1348:	90                   	nop
    1349:	90                   	nop
    134a:	90                   	nop
    134b:	90                   	nop
    134c:	90                   	nop
    134d:	90                   	nop
    134e:	90                   	nop
    134f:	90                   	nop

00001350 <fourfiles>:
{
    1350:	55                   	push   %ebp
    1351:	89 e5                	mov    %esp,%ebp
    1353:	57                   	push   %edi
    1354:	56                   	push   %esi
    1355:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1356:	31 f6                	xor    %esi,%esi
  printf(1, "fourfiles test\n");
    1358:	bb 5e 4f 00 00       	mov    $0x4f5e,%ebx
{
    135d:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    1360:	c7 45 d8 5e 4f 00 00 	movl   $0x4f5e,-0x28(%ebp)
    1367:	c7 45 dc a7 50 00 00 	movl   $0x50a7,-0x24(%ebp)
  printf(1, "fourfiles test\n");
    136e:	68 64 4f 00 00       	push   $0x4f64
    1373:	6a 01                	push   $0x1
  char *names[] = { "f0", "f1", "f2", "f3" };
    1375:	c7 45 e0 ab 50 00 00 	movl   $0x50ab,-0x20(%ebp)
    137c:	c7 45 e4 61 4f 00 00 	movl   $0x4f61,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    1383:	e8 18 34 00 00       	call   47a0 <printf>
    1388:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    138b:	83 ec 0c             	sub    $0xc,%esp
    138e:	53                   	push   %ebx
    138f:	e8 06 33 00 00       	call   469a <unlink>
    pid = fork();
    1394:	e8 a1 32 00 00       	call   463a <fork>
    if(pid < 0){
    1399:	83 c4 10             	add    $0x10,%esp
    139c:	85 c0                	test   %eax,%eax
    139e:	0f 88 5c 01 00 00    	js     1500 <fourfiles+0x1b0>
    if(pid == 0){
    13a4:	0f 84 7e 01 00 00    	je     1528 <fourfiles+0x1d8>
  for(pi = 0; pi < 4; pi++){
    13aa:	83 c6 01             	add    $0x1,%esi
    13ad:	83 fe 04             	cmp    $0x4,%esi
    13b0:	74 0e                	je     13c0 <fourfiles+0x70>
    13b2:	8b 5c b5 d8          	mov    -0x28(%ebp,%esi,4),%ebx
    13b6:	eb d3                	jmp    138b <fourfiles+0x3b>
    13b8:	90                   	nop
    13b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    wait(0x0);
    13c0:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 2; i++){
    13c3:	31 ff                	xor    %edi,%edi
    wait(0x0);
    13c5:	6a 00                	push   $0x0
    13c7:	e8 7e 32 00 00       	call   464a <wait>
    13cc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13d3:	e8 72 32 00 00       	call   464a <wait>
    13d8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13df:	e8 66 32 00 00       	call   464a <wait>
    13e4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13eb:	e8 5a 32 00 00       	call   464a <wait>
    13f0:	83 c4 10             	add    $0x10,%esp
    13f3:	c7 45 cc 5e 4f 00 00 	movl   $0x4f5e,-0x34(%ebp)
    fd = open(fname, 0);
    13fa:	83 ec 08             	sub    $0x8,%esp
    13fd:	6a 00                	push   $0x0
    13ff:	ff 75 cc             	pushl  -0x34(%ebp)
    1402:	e8 83 32 00 00       	call   468a <open>
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1407:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    140a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    total = 0;
    140d:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
    1414:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1418:	83 ec 04             	sub    $0x4,%esp
    141b:	68 00 20 00 00       	push   $0x2000
    1420:	68 c0 93 00 00       	push   $0x93c0
    1425:	ff 75 d4             	pushl  -0x2c(%ebp)
    1428:	e8 35 32 00 00       	call   4662 <read>
    142d:	83 c4 10             	add    $0x10,%esp
    1430:	85 c0                	test   %eax,%eax
    1432:	89 c6                	mov    %eax,%esi
    1434:	7e 4a                	jle    1480 <fourfiles+0x130>
      for(j = 0; j < n; j++){
    1436:	31 db                	xor    %ebx,%ebx
    1438:	90                   	nop
    1439:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if(buf[j] != '0'+i){
    1440:	0f be 93 c0 93 00 00 	movsbl 0x93c0(%ebx),%edx
    1447:	83 ff 01             	cmp    $0x1,%edi
    144a:	19 c0                	sbb    %eax,%eax
    144c:	83 c0 31             	add    $0x31,%eax
    144f:	39 c2                	cmp    %eax,%edx
    1451:	74 1e                	je     1471 <fourfiles+0x121>
          printf(1, "wrong char\n");
    1453:	83 ec 08             	sub    $0x8,%esp
    1456:	68 85 4f 00 00       	push   $0x4f85
    145b:	6a 01                	push   $0x1
    145d:	e8 3e 33 00 00       	call   47a0 <printf>
          exit(0);
    1462:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1469:	e8 d4 31 00 00       	call   4642 <exit>
    146e:	83 c4 10             	add    $0x10,%esp
      for(j = 0; j < n; j++){
    1471:	83 c3 01             	add    $0x1,%ebx
    1474:	39 de                	cmp    %ebx,%esi
    1476:	75 c8                	jne    1440 <fourfiles+0xf0>
      total += n;
    1478:	01 75 d0             	add    %esi,-0x30(%ebp)
    147b:	eb 9b                	jmp    1418 <fourfiles+0xc8>
    147d:	8d 76 00             	lea    0x0(%esi),%esi
    close(fd);
    1480:	83 ec 0c             	sub    $0xc,%esp
    1483:	ff 75 d4             	pushl  -0x2c(%ebp)
    1486:	e8 e7 31 00 00       	call   4672 <close>
    if(total != 12*500){
    148b:	8b 45 d0             	mov    -0x30(%ebp),%eax
    148e:	83 c4 10             	add    $0x10,%esp
    1491:	3d 70 17 00 00       	cmp    $0x1770,%eax
    1496:	74 1f                	je     14b7 <fourfiles+0x167>
      printf(1, "wrong length %d\n", total);
    1498:	83 ec 04             	sub    $0x4,%esp
    149b:	50                   	push   %eax
    149c:	68 91 4f 00 00       	push   $0x4f91
    14a1:	6a 01                	push   $0x1
    14a3:	e8 f8 32 00 00       	call   47a0 <printf>
      exit(0);
    14a8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14af:	e8 8e 31 00 00       	call   4642 <exit>
    14b4:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    14b7:	83 ec 0c             	sub    $0xc,%esp
    14ba:	ff 75 cc             	pushl  -0x34(%ebp)
    14bd:	e8 d8 31 00 00       	call   469a <unlink>
  for(i = 0; i < 2; i++){
    14c2:	83 c4 10             	add    $0x10,%esp
    14c5:	83 ff 01             	cmp    $0x1,%edi
    14c8:	74 16                	je     14e0 <fourfiles+0x190>
    14ca:	8b 45 dc             	mov    -0x24(%ebp),%eax
    14cd:	bf 01 00 00 00       	mov    $0x1,%edi
    14d2:	89 45 cc             	mov    %eax,-0x34(%ebp)
    14d5:	e9 20 ff ff ff       	jmp    13fa <fourfiles+0xaa>
    14da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  printf(1, "fourfiles ok\n");
    14e0:	83 ec 08             	sub    $0x8,%esp
    14e3:	68 a2 4f 00 00       	push   $0x4fa2
    14e8:	6a 01                	push   $0x1
    14ea:	e8 b1 32 00 00       	call   47a0 <printf>
}
    14ef:	83 c4 10             	add    $0x10,%esp
    14f2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    14f5:	5b                   	pop    %ebx
    14f6:	5e                   	pop    %esi
    14f7:	5f                   	pop    %edi
    14f8:	5d                   	pop    %ebp
    14f9:	c3                   	ret    
    14fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      printf(1, "fork failed\n");
    1500:	83 ec 08             	sub    $0x8,%esp
    1503:	68 39 5a 00 00       	push   $0x5a39
    1508:	6a 01                	push   $0x1
    150a:	e8 91 32 00 00       	call   47a0 <printf>
      exit(0);
    150f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1516:	e8 27 31 00 00       	call   4642 <exit>
    151b:	83 c4 10             	add    $0x10,%esp
    151e:	e9 87 fe ff ff       	jmp    13aa <fourfiles+0x5a>
    1523:	90                   	nop
    1524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      fd = open(fname, O_CREATE | O_RDWR);
    1528:	83 ec 08             	sub    $0x8,%esp
    152b:	68 02 02 00 00       	push   $0x202
    1530:	53                   	push   %ebx
    1531:	e8 54 31 00 00       	call   468a <open>
      if(fd < 0){
    1536:	83 c4 10             	add    $0x10,%esp
    1539:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    153b:	89 c7                	mov    %eax,%edi
      if(fd < 0){
    153d:	78 74                	js     15b3 <fourfiles+0x263>
      memset(buf, '0'+pi, 512);
    153f:	8d 46 30             	lea    0x30(%esi),%eax
    1542:	83 ec 04             	sub    $0x4,%esp
    1545:	bb 0c 00 00 00       	mov    $0xc,%ebx
    154a:	68 00 02 00 00       	push   $0x200
    154f:	50                   	push   %eax
    1550:	68 c0 93 00 00       	push   $0x93c0
    1555:	e8 46 2f 00 00       	call   44a0 <memset>
    155a:	83 c4 10             	add    $0x10,%esp
    155d:	8d 76 00             	lea    0x0(%esi),%esi
        if((n = write(fd, buf, 500)) != 500){
    1560:	83 ec 04             	sub    $0x4,%esp
    1563:	68 f4 01 00 00       	push   $0x1f4
    1568:	68 c0 93 00 00       	push   $0x93c0
    156d:	57                   	push   %edi
    156e:	e8 f7 30 00 00       	call   466a <write>
    1573:	83 c4 10             	add    $0x10,%esp
    1576:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    157b:	74 1f                	je     159c <fourfiles+0x24c>
          printf(1, "write failed %d\n", n);
    157d:	83 ec 04             	sub    $0x4,%esp
    1580:	50                   	push   %eax
    1581:	68 74 4f 00 00       	push   $0x4f74
    1586:	6a 01                	push   $0x1
    1588:	e8 13 32 00 00       	call   47a0 <printf>
          exit(0);
    158d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1594:	e8 a9 30 00 00       	call   4642 <exit>
    1599:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 12; i++){
    159c:	83 eb 01             	sub    $0x1,%ebx
    159f:	75 bf                	jne    1560 <fourfiles+0x210>
      exit(0);
    15a1:	83 ec 0c             	sub    $0xc,%esp
    15a4:	6a 00                	push   $0x0
    15a6:	e8 97 30 00 00       	call   4642 <exit>
    15ab:	83 c4 10             	add    $0x10,%esp
    15ae:	e9 f7 fd ff ff       	jmp    13aa <fourfiles+0x5a>
        printf(1, "create failed\n");
    15b3:	83 ec 08             	sub    $0x8,%esp
    15b6:	68 ff 51 00 00       	push   $0x51ff
    15bb:	6a 01                	push   $0x1
    15bd:	e8 de 31 00 00       	call   47a0 <printf>
        exit(0);
    15c2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    15c9:	e8 74 30 00 00       	call   4642 <exit>
    15ce:	83 c4 10             	add    $0x10,%esp
    15d1:	e9 69 ff ff ff       	jmp    153f <fourfiles+0x1ef>
    15d6:	8d 76 00             	lea    0x0(%esi),%esi
    15d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000015e0 <createdelete>:
{
    15e0:	55                   	push   %ebp
    15e1:	89 e5                	mov    %esp,%ebp
    15e3:	57                   	push   %edi
    15e4:	56                   	push   %esi
    15e5:	53                   	push   %ebx
    15e6:	8d 75 c8             	lea    -0x38(%ebp),%esi
    15e9:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    15ec:	68 b0 4f 00 00       	push   $0x4fb0
    15f1:	6a 01                	push   $0x1
    15f3:	e8 a8 31 00 00       	call   47a0 <printf>
    15f8:	83 c4 10             	add    $0x10,%esp
  for(pi = 0; pi < 4; pi++){
    15fb:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    pid = fork();
    1602:	e8 33 30 00 00       	call   463a <fork>
    if(pid < 0){
    1607:	85 c0                	test   %eax,%eax
    1609:	0f 88 21 02 00 00    	js     1830 <createdelete+0x250>
    if(pid == 0){
    160f:	0f 84 4b 01 00 00    	je     1760 <createdelete+0x180>
  for(pi = 0; pi < 4; pi++){
    1615:	83 45 c4 01          	addl   $0x1,-0x3c(%ebp)
    1619:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    161c:	83 f8 04             	cmp    $0x4,%eax
    161f:	75 e1                	jne    1602 <createdelete+0x22>
    wait(0x0);
    1621:	83 ec 0c             	sub    $0xc,%esp
  name[0] = name[1] = name[2] = 0;
    1624:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    wait(0x0);
    1629:	6a 00                	push   $0x0
    162b:	e8 1a 30 00 00       	call   464a <wait>
    1630:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1637:	e8 0e 30 00 00       	call   464a <wait>
    163c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1643:	e8 02 30 00 00       	call   464a <wait>
    1648:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    164f:	e8 f6 2f 00 00       	call   464a <wait>
  name[0] = name[1] = name[2] = 0;
    1654:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1658:	83 c4 10             	add    $0x10,%esp
    165b:	90                   	nop
    165c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1660:	8d 47 31             	lea    0x31(%edi),%eax
      name[2] = '\0';
    1663:	bb 70 00 00 00       	mov    $0x70,%ebx
    1668:	88 45 c3             	mov    %al,-0x3d(%ebp)
    166b:	8d 47 01             	lea    0x1(%edi),%eax
    166e:	83 f8 09             	cmp    $0x9,%eax
    1671:	89 45 bc             	mov    %eax,-0x44(%ebp)
    1674:	0f 9f c2             	setg   %dl
    1677:	85 c0                	test   %eax,%eax
    1679:	0f 94 c0             	sete   %al
    167c:	09 c2                	or     %eax,%edx
    167e:	88 55 c4             	mov    %dl,-0x3c(%ebp)
      name[1] = '0' + i;
    1681:	0f b6 45 c3          	movzbl -0x3d(%ebp),%eax
      fd = open(name, 0);
    1685:	83 ec 08             	sub    $0x8,%esp
      name[0] = 'p' + pi;
    1688:	88 5d c8             	mov    %bl,-0x38(%ebp)
      fd = open(name, 0);
    168b:	6a 00                	push   $0x0
    168d:	56                   	push   %esi
      name[1] = '0' + i;
    168e:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    1691:	e8 f4 2f 00 00       	call   468a <open>
      if((i == 0 || i >= N/2) && fd < 0){
    1696:	83 c4 10             	add    $0x10,%esp
    1699:	80 7d c4 00          	cmpb   $0x0,-0x3c(%ebp)
      fd = open(name, 0);
    169d:	89 c1                	mov    %eax,%ecx
      if((i == 0 || i >= N/2) && fd < 0){
    169f:	74 7f                	je     1720 <createdelete+0x140>
    16a1:	85 c0                	test   %eax,%eax
    16a3:	0f 88 8f 00 00 00    	js     1738 <createdelete+0x158>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    16a9:	83 ff 08             	cmp    $0x8,%edi
    16ac:	0f 86 a9 01 00 00    	jbe    185b <createdelete+0x27b>
        close(fd);
    16b2:	83 ec 0c             	sub    $0xc,%esp
    16b5:	51                   	push   %ecx
    16b6:	e8 b7 2f 00 00       	call   4672 <close>
    16bb:	83 c4 10             	add    $0x10,%esp
    16be:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    16c1:	80 fb 74             	cmp    $0x74,%bl
    16c4:	75 bb                	jne    1681 <createdelete+0xa1>
    16c6:	8b 7d bc             	mov    -0x44(%ebp),%edi
  for(i = 0; i < N; i++){
    16c9:	83 ff 13             	cmp    $0x13,%edi
    16cc:	75 92                	jne    1660 <createdelete+0x80>
    16ce:	bf 70 00 00 00       	mov    $0x70,%edi
    16d3:	90                   	nop
    16d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    16d8:	8d 47 c0             	lea    -0x40(%edi),%eax
  name[0] = name[1] = name[2] = 0;
    16db:	bb 04 00 00 00       	mov    $0x4,%ebx
    16e0:	88 45 c4             	mov    %al,-0x3c(%ebp)
      name[0] = 'p' + i;
    16e3:	89 f8                	mov    %edi,%eax
      unlink(name);
    16e5:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    16e8:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    16eb:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
      unlink(name);
    16ef:	56                   	push   %esi
      name[1] = '0' + i;
    16f0:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    16f3:	e8 a2 2f 00 00       	call   469a <unlink>
    for(pi = 0; pi < 4; pi++){
    16f8:	83 c4 10             	add    $0x10,%esp
    16fb:	83 eb 01             	sub    $0x1,%ebx
    16fe:	75 e3                	jne    16e3 <createdelete+0x103>
    1700:	83 c7 01             	add    $0x1,%edi
  for(i = 0; i < N; i++){
    1703:	89 f8                	mov    %edi,%eax
    1705:	3c 84                	cmp    $0x84,%al
    1707:	75 cf                	jne    16d8 <createdelete+0xf8>
  printf(1, "createdelete ok\n");
    1709:	83 ec 08             	sub    $0x8,%esp
    170c:	68 c3 4f 00 00       	push   $0x4fc3
    1711:	6a 01                	push   $0x1
    1713:	e8 88 30 00 00       	call   47a0 <printf>
}
    1718:	8d 65 f4             	lea    -0xc(%ebp),%esp
    171b:	5b                   	pop    %ebx
    171c:	5e                   	pop    %esi
    171d:	5f                   	pop    %edi
    171e:	5d                   	pop    %ebp
    171f:	c3                   	ret    
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1720:	83 ff 08             	cmp    $0x8,%edi
    1723:	0f 86 2a 01 00 00    	jbe    1853 <createdelete+0x273>
      if(fd >= 0)
    1729:	85 c0                	test   %eax,%eax
    172b:	78 91                	js     16be <createdelete+0xde>
    172d:	e9 80 ff ff ff       	jmp    16b2 <createdelete+0xd2>
    1732:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printf(1, "oops createdelete %s didn't exist\n", name);
    1738:	83 ec 04             	sub    $0x4,%esp
    173b:	56                   	push   %esi
    173c:	68 70 5c 00 00       	push   $0x5c70
    1741:	6a 01                	push   $0x1
    1743:	e8 58 30 00 00       	call   47a0 <printf>
        exit(0);
    1748:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    174f:	e8 ee 2e 00 00       	call   4642 <exit>
    1754:	83 c4 10             	add    $0x10,%esp
    1757:	e9 62 ff ff ff       	jmp    16be <createdelete+0xde>
    175c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      name[0] = 'p' + pi;
    1760:	0f b6 45 c4          	movzbl -0x3c(%ebp),%eax
      name[2] = '\0';
    1764:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1768:	31 db                	xor    %ebx,%ebx
      name[0] = 'p' + pi;
    176a:	83 c0 70             	add    $0x70,%eax
    176d:	88 45 c8             	mov    %al,-0x38(%ebp)
    1770:	eb 0e                	jmp    1780 <createdelete+0x1a0>
    1772:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      for(i = 0; i < N; i++){
    1778:	83 fb 13             	cmp    $0x13,%ebx
    177b:	74 73                	je     17f0 <createdelete+0x210>
    177d:	83 c3 01             	add    $0x1,%ebx
        fd = open(name, O_CREATE | O_RDWR);
    1780:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    1783:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    1786:	68 02 02 00 00       	push   $0x202
    178b:	56                   	push   %esi
        name[1] = '0' + i;
    178c:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    178f:	e8 f6 2e 00 00       	call   468a <open>
        if(fd < 0){
    1794:	83 c4 10             	add    $0x10,%esp
    1797:	85 c0                	test   %eax,%eax
        fd = open(name, O_CREATE | O_RDWR);
    1799:	89 c7                	mov    %eax,%edi
        if(fd < 0){
    179b:	78 6b                	js     1808 <createdelete+0x228>
        close(fd);
    179d:	83 ec 0c             	sub    $0xc,%esp
    17a0:	57                   	push   %edi
    17a1:	e8 cc 2e 00 00       	call   4672 <close>
        if(i > 0 && (i % 2 ) == 0){
    17a6:	83 c4 10             	add    $0x10,%esp
    17a9:	85 db                	test   %ebx,%ebx
    17ab:	74 d0                	je     177d <createdelete+0x19d>
    17ad:	f6 c3 01             	test   $0x1,%bl
    17b0:	75 c6                	jne    1778 <createdelete+0x198>
          if(unlink(name) < 0){
    17b2:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    17b5:	89 d8                	mov    %ebx,%eax
    17b7:	d1 f8                	sar    %eax
          if(unlink(name) < 0){
    17b9:	56                   	push   %esi
          name[1] = '0' + (i / 2);
    17ba:	83 c0 30             	add    $0x30,%eax
    17bd:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    17c0:	e8 d5 2e 00 00       	call   469a <unlink>
    17c5:	83 c4 10             	add    $0x10,%esp
    17c8:	85 c0                	test   %eax,%eax
    17ca:	79 ac                	jns    1778 <createdelete+0x198>
            printf(1, "unlink failed\n");
    17cc:	83 ec 08             	sub    $0x8,%esp
    17cf:	68 b1 4b 00 00       	push   $0x4bb1
    17d4:	6a 01                	push   $0x1
    17d6:	e8 c5 2f 00 00       	call   47a0 <printf>
            exit(0);
    17db:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17e2:	e8 5b 2e 00 00       	call   4642 <exit>
    17e7:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < N; i++){
    17ea:	83 fb 13             	cmp    $0x13,%ebx
    17ed:	75 8e                	jne    177d <createdelete+0x19d>
    17ef:	90                   	nop
      exit(0);
    17f0:	83 ec 0c             	sub    $0xc,%esp
    17f3:	6a 00                	push   $0x0
    17f5:	e8 48 2e 00 00       	call   4642 <exit>
    17fa:	83 c4 10             	add    $0x10,%esp
    17fd:	e9 13 fe ff ff       	jmp    1615 <createdelete+0x35>
    1802:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
          printf(1, "create failed\n");
    1808:	83 ec 08             	sub    $0x8,%esp
    180b:	68 ff 51 00 00       	push   $0x51ff
    1810:	6a 01                	push   $0x1
    1812:	e8 89 2f 00 00       	call   47a0 <printf>
          exit(0);
    1817:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    181e:	e8 1f 2e 00 00       	call   4642 <exit>
    1823:	83 c4 10             	add    $0x10,%esp
    1826:	e9 72 ff ff ff       	jmp    179d <createdelete+0x1bd>
    182b:	90                   	nop
    182c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "fork failed\n");
    1830:	83 ec 08             	sub    $0x8,%esp
    1833:	68 39 5a 00 00       	push   $0x5a39
    1838:	6a 01                	push   $0x1
    183a:	e8 61 2f 00 00       	call   47a0 <printf>
      exit(0);
    183f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1846:	e8 f7 2d 00 00       	call   4642 <exit>
    184b:	83 c4 10             	add    $0x10,%esp
    184e:	e9 c2 fd ff ff       	jmp    1615 <createdelete+0x35>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1853:	85 c0                	test   %eax,%eax
    1855:	0f 88 63 fe ff ff    	js     16be <createdelete+0xde>
        printf(1, "oops createdelete %s did exist\n", name);
    185b:	50                   	push   %eax
    185c:	56                   	push   %esi
    185d:	68 94 5c 00 00       	push   $0x5c94
    1862:	6a 01                	push   $0x1
    1864:	89 4d b8             	mov    %ecx,-0x48(%ebp)
    1867:	e8 34 2f 00 00       	call   47a0 <printf>
        exit(0);
    186c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1873:	e8 ca 2d 00 00       	call   4642 <exit>
    1878:	83 c4 10             	add    $0x10,%esp
    187b:	8b 4d b8             	mov    -0x48(%ebp),%ecx
    187e:	e9 2f fe ff ff       	jmp    16b2 <createdelete+0xd2>
    1883:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1889:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001890 <unlinkread>:
{
    1890:	55                   	push   %ebp
    1891:	89 e5                	mov    %esp,%ebp
    1893:	56                   	push   %esi
    1894:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    1895:	83 ec 08             	sub    $0x8,%esp
    1898:	68 d4 4f 00 00       	push   $0x4fd4
    189d:	6a 01                	push   $0x1
    189f:	e8 fc 2e 00 00       	call   47a0 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    18a4:	5e                   	pop    %esi
    18a5:	58                   	pop    %eax
    18a6:	68 02 02 00 00       	push   $0x202
    18ab:	68 e5 4f 00 00       	push   $0x4fe5
    18b0:	e8 d5 2d 00 00       	call   468a <open>
  if(fd < 0){
    18b5:	83 c4 10             	add    $0x10,%esp
    18b8:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_CREATE | O_RDWR);
    18ba:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    18bc:	0f 88 8e 01 00 00    	js     1a50 <unlinkread+0x1c0>
  write(fd, "hello", 5);
    18c2:	83 ec 04             	sub    $0x4,%esp
    18c5:	6a 05                	push   $0x5
    18c7:	68 0a 50 00 00       	push   $0x500a
    18cc:	53                   	push   %ebx
    18cd:	e8 98 2d 00 00       	call   466a <write>
  close(fd);
    18d2:	89 1c 24             	mov    %ebx,(%esp)
    18d5:	e8 98 2d 00 00       	call   4672 <close>
  fd = open("unlinkread", O_RDWR);
    18da:	59                   	pop    %ecx
    18db:	5b                   	pop    %ebx
    18dc:	6a 02                	push   $0x2
    18de:	68 e5 4f 00 00       	push   $0x4fe5
    18e3:	e8 a2 2d 00 00       	call   468a <open>
  if(fd < 0){
    18e8:	83 c4 10             	add    $0x10,%esp
    18eb:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    18ed:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    18ef:	0f 88 33 01 00 00    	js     1a28 <unlinkread+0x198>
  if(unlink("unlinkread") != 0){
    18f5:	83 ec 0c             	sub    $0xc,%esp
    18f8:	68 e5 4f 00 00       	push   $0x4fe5
    18fd:	e8 98 2d 00 00       	call   469a <unlink>
    1902:	83 c4 10             	add    $0x10,%esp
    1905:	85 c0                	test   %eax,%eax
    1907:	0f 85 f3 00 00 00    	jne    1a00 <unlinkread+0x170>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    190d:	83 ec 08             	sub    $0x8,%esp
    1910:	68 02 02 00 00       	push   $0x202
    1915:	68 e5 4f 00 00       	push   $0x4fe5
    191a:	e8 6b 2d 00 00       	call   468a <open>
  write(fd1, "yyy", 3);
    191f:	83 c4 0c             	add    $0xc,%esp
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1922:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    1924:	6a 03                	push   $0x3
    1926:	68 42 50 00 00       	push   $0x5042
    192b:	50                   	push   %eax
    192c:	e8 39 2d 00 00       	call   466a <write>
  close(fd1);
    1931:	89 34 24             	mov    %esi,(%esp)
    1934:	e8 39 2d 00 00       	call   4672 <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    1939:	83 c4 0c             	add    $0xc,%esp
    193c:	68 00 20 00 00       	push   $0x2000
    1941:	68 c0 93 00 00       	push   $0x93c0
    1946:	53                   	push   %ebx
    1947:	e8 16 2d 00 00       	call   4662 <read>
    194c:	83 c4 10             	add    $0x10,%esp
    194f:	83 f8 05             	cmp    $0x5,%eax
    1952:	74 1e                	je     1972 <unlinkread+0xe2>
    printf(1, "unlinkread read failed");
    1954:	83 ec 08             	sub    $0x8,%esp
    1957:	68 46 50 00 00       	push   $0x5046
    195c:	6a 01                	push   $0x1
    195e:	e8 3d 2e 00 00       	call   47a0 <printf>
    exit(0);
    1963:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    196a:	e8 d3 2c 00 00       	call   4642 <exit>
    196f:	83 c4 10             	add    $0x10,%esp
  if(buf[0] != 'h'){
    1972:	80 3d c0 93 00 00 68 	cmpb   $0x68,0x93c0
    1979:	74 1e                	je     1999 <unlinkread+0x109>
    printf(1, "unlinkread wrong data\n");
    197b:	83 ec 08             	sub    $0x8,%esp
    197e:	68 5d 50 00 00       	push   $0x505d
    1983:	6a 01                	push   $0x1
    1985:	e8 16 2e 00 00       	call   47a0 <printf>
    exit(0);
    198a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1991:	e8 ac 2c 00 00       	call   4642 <exit>
    1996:	83 c4 10             	add    $0x10,%esp
  if(write(fd, buf, 10) != 10){
    1999:	83 ec 04             	sub    $0x4,%esp
    199c:	6a 0a                	push   $0xa
    199e:	68 c0 93 00 00       	push   $0x93c0
    19a3:	53                   	push   %ebx
    19a4:	e8 c1 2c 00 00       	call   466a <write>
    19a9:	83 c4 10             	add    $0x10,%esp
    19ac:	83 f8 0a             	cmp    $0xa,%eax
    19af:	74 1e                	je     19cf <unlinkread+0x13f>
    printf(1, "unlinkread write failed\n");
    19b1:	83 ec 08             	sub    $0x8,%esp
    19b4:	68 74 50 00 00       	push   $0x5074
    19b9:	6a 01                	push   $0x1
    19bb:	e8 e0 2d 00 00       	call   47a0 <printf>
    exit(0);
    19c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19c7:	e8 76 2c 00 00       	call   4642 <exit>
    19cc:	83 c4 10             	add    $0x10,%esp
  close(fd);
    19cf:	83 ec 0c             	sub    $0xc,%esp
    19d2:	53                   	push   %ebx
    19d3:	e8 9a 2c 00 00       	call   4672 <close>
  unlink("unlinkread");
    19d8:	c7 04 24 e5 4f 00 00 	movl   $0x4fe5,(%esp)
    19df:	e8 b6 2c 00 00       	call   469a <unlink>
  printf(1, "unlinkread ok\n");
    19e4:	58                   	pop    %eax
    19e5:	5a                   	pop    %edx
    19e6:	68 8d 50 00 00       	push   $0x508d
    19eb:	6a 01                	push   $0x1
    19ed:	e8 ae 2d 00 00       	call   47a0 <printf>
}
    19f2:	83 c4 10             	add    $0x10,%esp
    19f5:	8d 65 f8             	lea    -0x8(%ebp),%esp
    19f8:	5b                   	pop    %ebx
    19f9:	5e                   	pop    %esi
    19fa:	5d                   	pop    %ebp
    19fb:	c3                   	ret    
    19fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink unlinkread failed\n");
    1a00:	83 ec 08             	sub    $0x8,%esp
    1a03:	68 28 50 00 00       	push   $0x5028
    1a08:	6a 01                	push   $0x1
    1a0a:	e8 91 2d 00 00       	call   47a0 <printf>
    exit(0);
    1a0f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a16:	e8 27 2c 00 00       	call   4642 <exit>
    1a1b:	83 c4 10             	add    $0x10,%esp
    1a1e:	e9 ea fe ff ff       	jmp    190d <unlinkread+0x7d>
    1a23:	90                   	nop
    1a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "open unlinkread failed\n");
    1a28:	83 ec 08             	sub    $0x8,%esp
    1a2b:	68 10 50 00 00       	push   $0x5010
    1a30:	6a 01                	push   $0x1
    1a32:	e8 69 2d 00 00       	call   47a0 <printf>
    exit(0);
    1a37:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a3e:	e8 ff 2b 00 00       	call   4642 <exit>
    1a43:	83 c4 10             	add    $0x10,%esp
    1a46:	e9 aa fe ff ff       	jmp    18f5 <unlinkread+0x65>
    1a4b:	90                   	nop
    1a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create unlinkread failed\n");
    1a50:	83 ec 08             	sub    $0x8,%esp
    1a53:	68 f0 4f 00 00       	push   $0x4ff0
    1a58:	6a 01                	push   $0x1
    1a5a:	e8 41 2d 00 00       	call   47a0 <printf>
    exit(0);
    1a5f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a66:	e8 d7 2b 00 00       	call   4642 <exit>
    1a6b:	83 c4 10             	add    $0x10,%esp
    1a6e:	e9 4f fe ff ff       	jmp    18c2 <unlinkread+0x32>
    1a73:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1a79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001a80 <linktest>:
{
    1a80:	55                   	push   %ebp
    1a81:	89 e5                	mov    %esp,%ebp
    1a83:	53                   	push   %ebx
    1a84:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    1a87:	68 9c 50 00 00       	push   $0x509c
    1a8c:	6a 01                	push   $0x1
    1a8e:	e8 0d 2d 00 00       	call   47a0 <printf>
  unlink("lf1");
    1a93:	c7 04 24 a6 50 00 00 	movl   $0x50a6,(%esp)
    1a9a:	e8 fb 2b 00 00       	call   469a <unlink>
  unlink("lf2");
    1a9f:	c7 04 24 aa 50 00 00 	movl   $0x50aa,(%esp)
    1aa6:	e8 ef 2b 00 00       	call   469a <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    1aab:	58                   	pop    %eax
    1aac:	5a                   	pop    %edx
    1aad:	68 02 02 00 00       	push   $0x202
    1ab2:	68 a6 50 00 00       	push   $0x50a6
    1ab7:	e8 ce 2b 00 00       	call   468a <open>
  if(fd < 0){
    1abc:	83 c4 10             	add    $0x10,%esp
    1abf:	85 c0                	test   %eax,%eax
  fd = open("lf1", O_CREATE|O_RDWR);
    1ac1:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1ac3:	0f 88 17 02 00 00    	js     1ce0 <linktest+0x260>
  if(write(fd, "hello", 5) != 5){
    1ac9:	83 ec 04             	sub    $0x4,%esp
    1acc:	6a 05                	push   $0x5
    1ace:	68 0a 50 00 00       	push   $0x500a
    1ad3:	53                   	push   %ebx
    1ad4:	e8 91 2b 00 00       	call   466a <write>
    1ad9:	83 c4 10             	add    $0x10,%esp
    1adc:	83 f8 05             	cmp    $0x5,%eax
    1adf:	74 1e                	je     1aff <linktest+0x7f>
    printf(1, "write lf1 failed\n");
    1ae1:	83 ec 08             	sub    $0x8,%esp
    1ae4:	68 c1 50 00 00       	push   $0x50c1
    1ae9:	6a 01                	push   $0x1
    1aeb:	e8 b0 2c 00 00       	call   47a0 <printf>
    exit(0);
    1af0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1af7:	e8 46 2b 00 00       	call   4642 <exit>
    1afc:	83 c4 10             	add    $0x10,%esp
  close(fd);
    1aff:	83 ec 0c             	sub    $0xc,%esp
    1b02:	53                   	push   %ebx
    1b03:	e8 6a 2b 00 00       	call   4672 <close>
  if(link("lf1", "lf2") < 0){
    1b08:	59                   	pop    %ecx
    1b09:	5b                   	pop    %ebx
    1b0a:	68 aa 50 00 00       	push   $0x50aa
    1b0f:	68 a6 50 00 00       	push   $0x50a6
    1b14:	e8 91 2b 00 00       	call   46aa <link>
    1b19:	83 c4 10             	add    $0x10,%esp
    1b1c:	85 c0                	test   %eax,%eax
    1b1e:	0f 88 94 01 00 00    	js     1cb8 <linktest+0x238>
  unlink("lf1");
    1b24:	83 ec 0c             	sub    $0xc,%esp
    1b27:	68 a6 50 00 00       	push   $0x50a6
    1b2c:	e8 69 2b 00 00       	call   469a <unlink>
  if(open("lf1", 0) >= 0){
    1b31:	58                   	pop    %eax
    1b32:	5a                   	pop    %edx
    1b33:	6a 00                	push   $0x0
    1b35:	68 a6 50 00 00       	push   $0x50a6
    1b3a:	e8 4b 2b 00 00       	call   468a <open>
    1b3f:	83 c4 10             	add    $0x10,%esp
    1b42:	85 c0                	test   %eax,%eax
    1b44:	78 1e                	js     1b64 <linktest+0xe4>
    printf(1, "unlinked lf1 but it is still there!\n");
    1b46:	83 ec 08             	sub    $0x8,%esp
    1b49:	68 b4 5c 00 00       	push   $0x5cb4
    1b4e:	6a 01                	push   $0x1
    1b50:	e8 4b 2c 00 00       	call   47a0 <printf>
    exit(0);
    1b55:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b5c:	e8 e1 2a 00 00       	call   4642 <exit>
    1b61:	83 c4 10             	add    $0x10,%esp
  fd = open("lf2", 0);
    1b64:	83 ec 08             	sub    $0x8,%esp
    1b67:	6a 00                	push   $0x0
    1b69:	68 aa 50 00 00       	push   $0x50aa
    1b6e:	e8 17 2b 00 00       	call   468a <open>
  if(fd < 0){
    1b73:	83 c4 10             	add    $0x10,%esp
    1b76:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    1b78:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1b7a:	0f 88 10 01 00 00    	js     1c90 <linktest+0x210>
  if(read(fd, buf, sizeof(buf)) != 5){
    1b80:	83 ec 04             	sub    $0x4,%esp
    1b83:	68 00 20 00 00       	push   $0x2000
    1b88:	68 c0 93 00 00       	push   $0x93c0
    1b8d:	53                   	push   %ebx
    1b8e:	e8 cf 2a 00 00       	call   4662 <read>
    1b93:	83 c4 10             	add    $0x10,%esp
    1b96:	83 f8 05             	cmp    $0x5,%eax
    1b99:	74 1e                	je     1bb9 <linktest+0x139>
    printf(1, "read lf2 failed\n");
    1b9b:	83 ec 08             	sub    $0x8,%esp
    1b9e:	68 f9 50 00 00       	push   $0x50f9
    1ba3:	6a 01                	push   $0x1
    1ba5:	e8 f6 2b 00 00       	call   47a0 <printf>
    exit(0);
    1baa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1bb1:	e8 8c 2a 00 00       	call   4642 <exit>
    1bb6:	83 c4 10             	add    $0x10,%esp
  close(fd);
    1bb9:	83 ec 0c             	sub    $0xc,%esp
    1bbc:	53                   	push   %ebx
    1bbd:	e8 b0 2a 00 00       	call   4672 <close>
  if(link("lf2", "lf2") >= 0){
    1bc2:	59                   	pop    %ecx
    1bc3:	5b                   	pop    %ebx
    1bc4:	68 aa 50 00 00       	push   $0x50aa
    1bc9:	68 aa 50 00 00       	push   $0x50aa
    1bce:	e8 d7 2a 00 00       	call   46aa <link>
    1bd3:	83 c4 10             	add    $0x10,%esp
    1bd6:	85 c0                	test   %eax,%eax
    1bd8:	78 1e                	js     1bf8 <linktest+0x178>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1bda:	83 ec 08             	sub    $0x8,%esp
    1bdd:	68 0a 51 00 00       	push   $0x510a
    1be2:	6a 01                	push   $0x1
    1be4:	e8 b7 2b 00 00       	call   47a0 <printf>
    exit(0);
    1be9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1bf0:	e8 4d 2a 00 00       	call   4642 <exit>
    1bf5:	83 c4 10             	add    $0x10,%esp
  unlink("lf2");
    1bf8:	83 ec 0c             	sub    $0xc,%esp
    1bfb:	68 aa 50 00 00       	push   $0x50aa
    1c00:	e8 95 2a 00 00       	call   469a <unlink>
  if(link("lf2", "lf1") >= 0){
    1c05:	58                   	pop    %eax
    1c06:	5a                   	pop    %edx
    1c07:	68 a6 50 00 00       	push   $0x50a6
    1c0c:	68 aa 50 00 00       	push   $0x50aa
    1c11:	e8 94 2a 00 00       	call   46aa <link>
    1c16:	83 c4 10             	add    $0x10,%esp
    1c19:	85 c0                	test   %eax,%eax
    1c1b:	78 1e                	js     1c3b <linktest+0x1bb>
    printf(1, "link non-existant succeeded! oops\n");
    1c1d:	83 ec 08             	sub    $0x8,%esp
    1c20:	68 dc 5c 00 00       	push   $0x5cdc
    1c25:	6a 01                	push   $0x1
    1c27:	e8 74 2b 00 00       	call   47a0 <printf>
    exit(0);
    1c2c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c33:	e8 0a 2a 00 00       	call   4642 <exit>
    1c38:	83 c4 10             	add    $0x10,%esp
  if(link(".", "lf1") >= 0){
    1c3b:	83 ec 08             	sub    $0x8,%esp
    1c3e:	68 a6 50 00 00       	push   $0x50a6
    1c43:	68 6e 53 00 00       	push   $0x536e
    1c48:	e8 5d 2a 00 00       	call   46aa <link>
    1c4d:	83 c4 10             	add    $0x10,%esp
    1c50:	85 c0                	test   %eax,%eax
    1c52:	78 1e                	js     1c72 <linktest+0x1f2>
    printf(1, "link . lf1 succeeded! oops\n");
    1c54:	83 ec 08             	sub    $0x8,%esp
    1c57:	68 28 51 00 00       	push   $0x5128
    1c5c:	6a 01                	push   $0x1
    1c5e:	e8 3d 2b 00 00       	call   47a0 <printf>
    exit(0);
    1c63:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c6a:	e8 d3 29 00 00       	call   4642 <exit>
    1c6f:	83 c4 10             	add    $0x10,%esp
  printf(1, "linktest ok\n");
    1c72:	83 ec 08             	sub    $0x8,%esp
    1c75:	68 44 51 00 00       	push   $0x5144
    1c7a:	6a 01                	push   $0x1
    1c7c:	e8 1f 2b 00 00       	call   47a0 <printf>
}
    1c81:	83 c4 10             	add    $0x10,%esp
    1c84:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1c87:	c9                   	leave  
    1c88:	c3                   	ret    
    1c89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "open lf2 failed\n");
    1c90:	83 ec 08             	sub    $0x8,%esp
    1c93:	68 e8 50 00 00       	push   $0x50e8
    1c98:	6a 01                	push   $0x1
    1c9a:	e8 01 2b 00 00       	call   47a0 <printf>
    exit(0);
    1c9f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1ca6:	e8 97 29 00 00       	call   4642 <exit>
    1cab:	83 c4 10             	add    $0x10,%esp
    1cae:	e9 cd fe ff ff       	jmp    1b80 <linktest+0x100>
    1cb3:	90                   	nop
    1cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link lf1 lf2 failed\n");
    1cb8:	83 ec 08             	sub    $0x8,%esp
    1cbb:	68 d3 50 00 00       	push   $0x50d3
    1cc0:	6a 01                	push   $0x1
    1cc2:	e8 d9 2a 00 00       	call   47a0 <printf>
    exit(0);
    1cc7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1cce:	e8 6f 29 00 00       	call   4642 <exit>
    1cd3:	83 c4 10             	add    $0x10,%esp
    1cd6:	e9 49 fe ff ff       	jmp    1b24 <linktest+0xa4>
    1cdb:	90                   	nop
    1cdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create lf1 failed\n");
    1ce0:	83 ec 08             	sub    $0x8,%esp
    1ce3:	68 ae 50 00 00       	push   $0x50ae
    1ce8:	6a 01                	push   $0x1
    1cea:	e8 b1 2a 00 00       	call   47a0 <printf>
    exit(0);
    1cef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1cf6:	e8 47 29 00 00       	call   4642 <exit>
    1cfb:	83 c4 10             	add    $0x10,%esp
    1cfe:	e9 c6 fd ff ff       	jmp    1ac9 <linktest+0x49>
    1d03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1d09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001d10 <concreate>:
{
    1d10:	55                   	push   %ebp
    1d11:	89 e5                	mov    %esp,%ebp
    1d13:	57                   	push   %edi
    1d14:	56                   	push   %esi
    1d15:	53                   	push   %ebx
  for(i = 0; i < 40; i++){
    1d16:	31 f6                	xor    %esi,%esi
    1d18:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    } else if(pid == 0 && (i % 5) == 1){
    1d1b:	bf cd cc cc cc       	mov    $0xcccccccd,%edi
{
    1d20:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    1d23:	68 51 51 00 00       	push   $0x5151
    1d28:	6a 01                	push   $0x1
    1d2a:	e8 71 2a 00 00       	call   47a0 <printf>
  file[0] = 'C';
    1d2f:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1d33:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    1d37:	83 c4 10             	add    $0x10,%esp
    1d3a:	eb 59                	jmp    1d95 <concreate+0x85>
    1d3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid && (i % 3) == 1){
    1d40:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    1d45:	89 f1                	mov    %esi,%ecx
    1d47:	f7 e6                	mul    %esi
    1d49:	d1 ea                	shr    %edx
    1d4b:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1d4e:	29 c1                	sub    %eax,%ecx
    1d50:	83 f9 01             	cmp    $0x1,%ecx
    1d53:	0f 84 77 01 00 00    	je     1ed0 <concreate+0x1c0>
      fd = open(file, O_CREATE | O_RDWR);
    1d59:	83 ec 08             	sub    $0x8,%esp
    1d5c:	68 02 02 00 00       	push   $0x202
    1d61:	53                   	push   %ebx
    1d62:	e8 23 29 00 00       	call   468a <open>
      if(fd < 0){
    1d67:	83 c4 10             	add    $0x10,%esp
    1d6a:	85 c0                	test   %eax,%eax
      fd = open(file, O_CREATE | O_RDWR);
    1d6c:	89 c2                	mov    %eax,%edx
      if(fd < 0){
    1d6e:	0f 88 52 03 00 00    	js     20c6 <concreate+0x3b6>
      close(fd);
    1d74:	83 ec 0c             	sub    $0xc,%esp
    1d77:	52                   	push   %edx
    1d78:	e8 f5 28 00 00       	call   4672 <close>
    1d7d:	83 c4 10             	add    $0x10,%esp
      wait(0x0);
    1d80:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1d83:	83 c6 01             	add    $0x1,%esi
      wait(0x0);
    1d86:	6a 00                	push   $0x0
    1d88:	e8 bd 28 00 00       	call   464a <wait>
    1d8d:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 40; i++){
    1d90:	83 fe 28             	cmp    $0x28,%esi
    1d93:	74 6e                	je     1e03 <concreate+0xf3>
    unlink(file);
    1d95:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    1d98:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    1d9b:	53                   	push   %ebx
    file[1] = '0' + i;
    1d9c:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    1d9f:	e8 f6 28 00 00       	call   469a <unlink>
    pid = fork();
    1da4:	e8 91 28 00 00       	call   463a <fork>
    if(pid && (i % 3) == 1){
    1da9:	83 c4 10             	add    $0x10,%esp
    1dac:	85 c0                	test   %eax,%eax
    1dae:	75 90                	jne    1d40 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    1db0:	89 f0                	mov    %esi,%eax
    1db2:	89 f1                	mov    %esi,%ecx
    1db4:	f7 e7                	mul    %edi
    1db6:	c1 ea 02             	shr    $0x2,%edx
    1db9:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1dbc:	29 c1                	sub    %eax,%ecx
    1dbe:	83 f9 01             	cmp    $0x1,%ecx
    1dc1:	0f 84 f1 00 00 00    	je     1eb8 <concreate+0x1a8>
      fd = open(file, O_CREATE | O_RDWR);
    1dc7:	83 ec 08             	sub    $0x8,%esp
    1dca:	68 02 02 00 00       	push   $0x202
    1dcf:	53                   	push   %ebx
    1dd0:	e8 b5 28 00 00       	call   468a <open>
      if(fd < 0){
    1dd5:	83 c4 10             	add    $0x10,%esp
    1dd8:	85 c0                	test   %eax,%eax
      fd = open(file, O_CREATE | O_RDWR);
    1dda:	89 c2                	mov    %eax,%edx
      if(fd < 0){
    1ddc:	0f 88 9e 00 00 00    	js     1e80 <concreate+0x170>
      close(fd);
    1de2:	83 ec 0c             	sub    $0xc,%esp
    1de5:	52                   	push   %edx
    1de6:	e8 87 28 00 00       	call   4672 <close>
    1deb:	83 c4 10             	add    $0x10,%esp
      exit(0);
    1dee:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1df1:	83 c6 01             	add    $0x1,%esi
      exit(0);
    1df4:	6a 00                	push   $0x0
    1df6:	e8 47 28 00 00       	call   4642 <exit>
    1dfb:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 40; i++){
    1dfe:	83 fe 28             	cmp    $0x28,%esi
    1e01:	75 92                	jne    1d95 <concreate+0x85>
  memset(fa, 0, sizeof(fa));
    1e03:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1e06:	83 ec 04             	sub    $0x4,%esp
    1e09:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1e0c:	6a 28                	push   $0x28
    1e0e:	6a 00                	push   $0x0
    1e10:	50                   	push   %eax
    1e11:	e8 8a 26 00 00       	call   44a0 <memset>
  fd = open(".", 0);
    1e16:	58                   	pop    %eax
    1e17:	5a                   	pop    %edx
    1e18:	6a 00                	push   $0x0
    1e1a:	68 6e 53 00 00       	push   $0x536e
    1e1f:	e8 66 28 00 00       	call   468a <open>
  while(read(fd, &de, sizeof(de)) > 0){
    1e24:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    1e27:	89 c6                	mov    %eax,%esi
  n = 0;
    1e29:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  while(read(fd, &de, sizeof(de)) > 0){
    1e30:	83 ec 04             	sub    $0x4,%esp
    1e33:	6a 10                	push   $0x10
    1e35:	57                   	push   %edi
    1e36:	56                   	push   %esi
    1e37:	e8 26 28 00 00       	call   4662 <read>
    1e3c:	83 c4 10             	add    $0x10,%esp
    1e3f:	85 c0                	test   %eax,%eax
    1e41:	0f 8e a9 00 00 00    	jle    1ef0 <concreate+0x1e0>
    if(de.inum == 0)
    1e47:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1e4c:	74 e2                	je     1e30 <concreate+0x120>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1e4e:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1e52:	75 dc                	jne    1e30 <concreate+0x120>
    1e54:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1e58:	75 d6                	jne    1e30 <concreate+0x120>
      i = de.name[1] - '0';
    1e5a:	0f be 55 b3          	movsbl -0x4d(%ebp),%edx
    1e5e:	83 ea 30             	sub    $0x30,%edx
      if(i < 0 || i >= sizeof(fa)){
    1e61:	83 fa 27             	cmp    $0x27,%edx
    1e64:	0f 87 27 02 00 00    	ja     2091 <concreate+0x381>
      if(fa[i]){
    1e6a:	80 7c 15 c0 00       	cmpb   $0x0,-0x40(%ebp,%edx,1)
    1e6f:	0f 85 e6 01 00 00    	jne    205b <concreate+0x34b>
      fa[i] = 1;
    1e75:	c6 44 15 c0 01       	movb   $0x1,-0x40(%ebp,%edx,1)
      n++;
    1e7a:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1e7e:	eb b0                	jmp    1e30 <concreate+0x120>
        printf(1, "concreate create %s failed\n", file);
    1e80:	83 ec 04             	sub    $0x4,%esp
    1e83:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    1e86:	53                   	push   %ebx
    1e87:	68 a8 51 00 00       	push   $0x51a8
    1e8c:	6a 01                	push   $0x1
    1e8e:	e8 0d 29 00 00       	call   47a0 <printf>
        exit(0);
    1e93:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1e9a:	e8 a3 27 00 00       	call   4642 <exit>
      close(fd);
    1e9f:	8b 55 a4             	mov    -0x5c(%ebp),%edx
    1ea2:	89 14 24             	mov    %edx,(%esp)
    1ea5:	e8 c8 27 00 00       	call   4672 <close>
    1eaa:	83 c4 10             	add    $0x10,%esp
    1ead:	e9 3c ff ff ff       	jmp    1dee <concreate+0xde>
    1eb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      link("C0", file);
    1eb8:	83 ec 08             	sub    $0x8,%esp
    1ebb:	53                   	push   %ebx
    1ebc:	68 61 51 00 00       	push   $0x5161
    1ec1:	e8 e4 27 00 00       	call   46aa <link>
    1ec6:	83 c4 10             	add    $0x10,%esp
    1ec9:	e9 20 ff ff ff       	jmp    1dee <concreate+0xde>
    1ece:	66 90                	xchg   %ax,%ax
      link("C0", file);
    1ed0:	83 ec 08             	sub    $0x8,%esp
    1ed3:	53                   	push   %ebx
    1ed4:	68 61 51 00 00       	push   $0x5161
    1ed9:	e8 cc 27 00 00       	call   46aa <link>
    1ede:	83 c4 10             	add    $0x10,%esp
    1ee1:	e9 9a fe ff ff       	jmp    1d80 <concreate+0x70>
    1ee6:	8d 76 00             	lea    0x0(%esi),%esi
    1ee9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  close(fd);
    1ef0:	83 ec 0c             	sub    $0xc,%esp
    1ef3:	56                   	push   %esi
    1ef4:	e8 79 27 00 00       	call   4672 <close>
  if(n != 40){
    1ef9:	83 c4 10             	add    $0x10,%esp
    1efc:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1f00:	0f 85 32 01 00 00    	jne    2038 <concreate+0x328>
  n = 0;
    1f06:	31 f6                	xor    %esi,%esi
    1f08:	eb 1b                	jmp    1f25 <concreate+0x215>
    1f0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      exit(0);
    1f10:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1f13:	83 c6 01             	add    $0x1,%esi
      exit(0);
    1f16:	6a 00                	push   $0x0
    1f18:	e8 25 27 00 00       	call   4642 <exit>
    1f1d:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 40; i++){
    1f20:	83 fe 28             	cmp    $0x28,%esi
    1f23:	74 71                	je     1f96 <concreate+0x286>
    file[1] = '0' + i;
    1f25:	8d 46 30             	lea    0x30(%esi),%eax
    1f28:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1f2b:	e8 0a 27 00 00       	call   463a <fork>
    1f30:	89 c7                	mov    %eax,%edi
    1f32:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    1f37:	f7 e6                	mul    %esi
    1f39:	d1 ea                	shr    %edx
    1f3b:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1f3e:	89 f2                	mov    %esi,%edx
    1f40:	29 c2                	sub    %eax,%edx
    if(pid < 0){
    1f42:	85 ff                	test   %edi,%edi
    1f44:	0f 88 be 00 00 00    	js     2008 <concreate+0x2f8>
    if(((i % 3) == 0 && pid == 0) ||
    1f4a:	89 f8                	mov    %edi,%eax
    1f4c:	09 d0                	or     %edx,%eax
    1f4e:	74 60                	je     1fb0 <concreate+0x2a0>
       ((i % 3) == 1 && pid != 0)){
    1f50:	83 fa 01             	cmp    $0x1,%edx
    1f53:	75 04                	jne    1f59 <concreate+0x249>
    1f55:	85 ff                	test   %edi,%edi
    1f57:	75 57                	jne    1fb0 <concreate+0x2a0>
      unlink(file);
    1f59:	83 ec 0c             	sub    $0xc,%esp
    1f5c:	53                   	push   %ebx
    1f5d:	e8 38 27 00 00       	call   469a <unlink>
      unlink(file);
    1f62:	89 1c 24             	mov    %ebx,(%esp)
    1f65:	e8 30 27 00 00       	call   469a <unlink>
      unlink(file);
    1f6a:	89 1c 24             	mov    %ebx,(%esp)
    1f6d:	e8 28 27 00 00       	call   469a <unlink>
      unlink(file);
    1f72:	89 1c 24             	mov    %ebx,(%esp)
    1f75:	e8 20 27 00 00       	call   469a <unlink>
    1f7a:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    1f7d:	85 ff                	test   %edi,%edi
    1f7f:	74 8f                	je     1f10 <concreate+0x200>
      wait(0x0);
    1f81:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1f84:	83 c6 01             	add    $0x1,%esi
      wait(0x0);
    1f87:	6a 00                	push   $0x0
    1f89:	e8 bc 26 00 00       	call   464a <wait>
    1f8e:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 40; i++){
    1f91:	83 fe 28             	cmp    $0x28,%esi
    1f94:	75 8f                	jne    1f25 <concreate+0x215>
  printf(1, "concreate ok\n");
    1f96:	83 ec 08             	sub    $0x8,%esp
    1f99:	68 9a 51 00 00       	push   $0x519a
    1f9e:	6a 01                	push   $0x1
    1fa0:	e8 fb 27 00 00       	call   47a0 <printf>
}
    1fa5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1fa8:	5b                   	pop    %ebx
    1fa9:	5e                   	pop    %esi
    1faa:	5f                   	pop    %edi
    1fab:	5d                   	pop    %ebp
    1fac:	c3                   	ret    
    1fad:	8d 76 00             	lea    0x0(%esi),%esi
      close(open(file, 0));
    1fb0:	83 ec 08             	sub    $0x8,%esp
    1fb3:	6a 00                	push   $0x0
    1fb5:	53                   	push   %ebx
    1fb6:	e8 cf 26 00 00       	call   468a <open>
    1fbb:	89 04 24             	mov    %eax,(%esp)
    1fbe:	e8 af 26 00 00       	call   4672 <close>
      close(open(file, 0));
    1fc3:	5a                   	pop    %edx
    1fc4:	59                   	pop    %ecx
    1fc5:	6a 00                	push   $0x0
    1fc7:	53                   	push   %ebx
    1fc8:	e8 bd 26 00 00       	call   468a <open>
    1fcd:	89 04 24             	mov    %eax,(%esp)
    1fd0:	e8 9d 26 00 00       	call   4672 <close>
      close(open(file, 0));
    1fd5:	58                   	pop    %eax
    1fd6:	5a                   	pop    %edx
    1fd7:	6a 00                	push   $0x0
    1fd9:	53                   	push   %ebx
    1fda:	e8 ab 26 00 00       	call   468a <open>
    1fdf:	89 04 24             	mov    %eax,(%esp)
    1fe2:	e8 8b 26 00 00       	call   4672 <close>
      close(open(file, 0));
    1fe7:	59                   	pop    %ecx
    1fe8:	58                   	pop    %eax
    1fe9:	6a 00                	push   $0x0
    1feb:	53                   	push   %ebx
    1fec:	e8 99 26 00 00       	call   468a <open>
    1ff1:	89 04 24             	mov    %eax,(%esp)
    1ff4:	e8 79 26 00 00       	call   4672 <close>
    1ff9:	83 c4 10             	add    $0x10,%esp
    1ffc:	e9 7c ff ff ff       	jmp    1f7d <concreate+0x26d>
    2001:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "fork failed\n");
    2008:	83 ec 08             	sub    $0x8,%esp
    200b:	89 55 a4             	mov    %edx,-0x5c(%ebp)
    200e:	68 39 5a 00 00       	push   $0x5a39
    2013:	6a 01                	push   $0x1
    2015:	e8 86 27 00 00       	call   47a0 <printf>
      exit(0);
    201a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2021:	e8 1c 26 00 00       	call   4642 <exit>
    2026:	83 c4 10             	add    $0x10,%esp
    2029:	8b 55 a4             	mov    -0x5c(%ebp),%edx
    202c:	e9 1f ff ff ff       	jmp    1f50 <concreate+0x240>
    2031:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "concreate not enough files in directory listing\n");
    2038:	83 ec 08             	sub    $0x8,%esp
    203b:	68 00 5d 00 00       	push   $0x5d00
    2040:	6a 01                	push   $0x1
    2042:	e8 59 27 00 00       	call   47a0 <printf>
    exit(0);
    2047:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    204e:	e8 ef 25 00 00       	call   4642 <exit>
    2053:	83 c4 10             	add    $0x10,%esp
    2056:	e9 ab fe ff ff       	jmp    1f06 <concreate+0x1f6>
        printf(1, "concreate duplicate file %s\n", de.name);
    205b:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    205e:	83 ec 04             	sub    $0x4,%esp
    2061:	89 55 a0             	mov    %edx,-0x60(%ebp)
    2064:	50                   	push   %eax
    2065:	68 7d 51 00 00       	push   $0x517d
    206a:	6a 01                	push   $0x1
    206c:	e8 2f 27 00 00       	call   47a0 <printf>
        exit(0);
    2071:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2078:	e8 c5 25 00 00       	call   4642 <exit>
    207d:	8b 55 a0             	mov    -0x60(%ebp),%edx
    2080:	83 c4 10             	add    $0x10,%esp
      n++;
    2083:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
      fa[i] = 1;
    2087:	c6 44 15 c0 01       	movb   $0x1,-0x40(%ebp,%edx,1)
    208c:	e9 9f fd ff ff       	jmp    1e30 <concreate+0x120>
        printf(1, "concreate weird file %s\n", de.name);
    2091:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    2094:	83 ec 04             	sub    $0x4,%esp
    2097:	89 55 a0             	mov    %edx,-0x60(%ebp)
    209a:	50                   	push   %eax
    209b:	68 64 51 00 00       	push   $0x5164
    20a0:	6a 01                	push   $0x1
    20a2:	e8 f9 26 00 00       	call   47a0 <printf>
        exit(0);
    20a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    20ae:	e8 8f 25 00 00       	call   4642 <exit>
    20b3:	8b 55 a0             	mov    -0x60(%ebp),%edx
    20b6:	83 c4 10             	add    $0x10,%esp
      if(fa[i]){
    20b9:	80 7c 15 c0 00       	cmpb   $0x0,-0x40(%ebp,%edx,1)
    20be:	0f 84 b1 fd ff ff    	je     1e75 <concreate+0x165>
    20c4:	eb 95                	jmp    205b <concreate+0x34b>
    20c6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
        printf(1, "concreate create %s failed\n", file);
    20c9:	50                   	push   %eax
    20ca:	53                   	push   %ebx
    20cb:	68 a8 51 00 00       	push   $0x51a8
    20d0:	6a 01                	push   $0x1
    20d2:	e8 c9 26 00 00       	call   47a0 <printf>
        exit(0);
    20d7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    20de:	e8 5f 25 00 00       	call   4642 <exit>
      close(fd);
    20e3:	8b 55 a4             	mov    -0x5c(%ebp),%edx
    20e6:	89 14 24             	mov    %edx,(%esp)
    20e9:	e8 84 25 00 00       	call   4672 <close>
    20ee:	83 c4 10             	add    $0x10,%esp
    20f1:	e9 8a fc ff ff       	jmp    1d80 <concreate+0x70>
    20f6:	8d 76 00             	lea    0x0(%esi),%esi
    20f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002100 <linkunlink>:
{
    2100:	55                   	push   %ebp
    2101:	89 e5                	mov    %esp,%ebp
    2103:	57                   	push   %edi
    2104:	56                   	push   %esi
    2105:	53                   	push   %ebx
    2106:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    2109:	68 c4 51 00 00       	push   $0x51c4
    210e:	6a 01                	push   $0x1
    2110:	e8 8b 26 00 00       	call   47a0 <printf>
  unlink("x");
    2115:	c7 04 24 51 54 00 00 	movl   $0x5451,(%esp)
    211c:	e8 79 25 00 00       	call   469a <unlink>
  pid = fork();
    2121:	e8 14 25 00 00       	call   463a <fork>
  if(pid < 0){
    2126:	83 c4 10             	add    $0x10,%esp
    2129:	85 c0                	test   %eax,%eax
  pid = fork();
    212b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    212e:	0f 88 d5 00 00 00    	js     2209 <linkunlink+0x109>
  unsigned int x = (pid ? 1 : 97);
    2134:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    2138:	19 ff                	sbb    %edi,%edi
    213a:	83 e7 60             	and    $0x60,%edi
    213d:	83 c7 01             	add    $0x1,%edi
    2140:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    2145:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
    214a:	eb 22                	jmp    216e <linkunlink+0x6e>
    214c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    2150:	83 fa 01             	cmp    $0x1,%edx
    2153:	0f 84 87 00 00 00    	je     21e0 <linkunlink+0xe0>
      unlink("x");
    2159:	83 ec 0c             	sub    $0xc,%esp
    215c:	68 51 54 00 00       	push   $0x5451
    2161:	e8 34 25 00 00       	call   469a <unlink>
    2166:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    2169:	83 eb 01             	sub    $0x1,%ebx
    216c:	74 3d                	je     21ab <linkunlink+0xab>
    x = x * 1103515245 + 12345;
    216e:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    2174:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    217a:	89 f8                	mov    %edi,%eax
    217c:	f7 e6                	mul    %esi
    217e:	d1 ea                	shr    %edx
    2180:	8d 04 52             	lea    (%edx,%edx,2),%eax
    2183:	89 fa                	mov    %edi,%edx
    2185:	29 c2                	sub    %eax,%edx
    2187:	75 c7                	jne    2150 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    2189:	83 ec 08             	sub    $0x8,%esp
    218c:	68 02 02 00 00       	push   $0x202
    2191:	68 51 54 00 00       	push   $0x5451
    2196:	e8 ef 24 00 00       	call   468a <open>
    219b:	89 04 24             	mov    %eax,(%esp)
    219e:	e8 cf 24 00 00       	call   4672 <close>
    21a3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    21a6:	83 eb 01             	sub    $0x1,%ebx
    21a9:	75 c3                	jne    216e <linkunlink+0x6e>
  if(pid)
    21ab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    21ae:	85 c0                	test   %eax,%eax
    21b0:	75 48                	jne    21fa <linkunlink+0xfa>
    exit(0);
    21b2:	83 ec 0c             	sub    $0xc,%esp
    21b5:	6a 00                	push   $0x0
    21b7:	e8 86 24 00 00       	call   4642 <exit>
    21bc:	83 c4 10             	add    $0x10,%esp
  printf(1, "linkunlink ok\n");
    21bf:	83 ec 08             	sub    $0x8,%esp
    21c2:	68 d9 51 00 00       	push   $0x51d9
    21c7:	6a 01                	push   $0x1
    21c9:	e8 d2 25 00 00       	call   47a0 <printf>
}
    21ce:	83 c4 10             	add    $0x10,%esp
    21d1:	8d 65 f4             	lea    -0xc(%ebp),%esp
    21d4:	5b                   	pop    %ebx
    21d5:	5e                   	pop    %esi
    21d6:	5f                   	pop    %edi
    21d7:	5d                   	pop    %ebp
    21d8:	c3                   	ret    
    21d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      link("cat", "x");
    21e0:	83 ec 08             	sub    $0x8,%esp
    21e3:	68 51 54 00 00       	push   $0x5451
    21e8:	68 d5 51 00 00       	push   $0x51d5
    21ed:	e8 b8 24 00 00       	call   46aa <link>
    21f2:	83 c4 10             	add    $0x10,%esp
    21f5:	e9 6f ff ff ff       	jmp    2169 <linkunlink+0x69>
    wait(0x0);
    21fa:	83 ec 0c             	sub    $0xc,%esp
    21fd:	6a 00                	push   $0x0
    21ff:	e8 46 24 00 00       	call   464a <wait>
    2204:	83 c4 10             	add    $0x10,%esp
    2207:	eb b6                	jmp    21bf <linkunlink+0xbf>
    printf(1, "fork failed\n");
    2209:	83 ec 08             	sub    $0x8,%esp
  unsigned int x = (pid ? 1 : 97);
    220c:	bf 01 00 00 00       	mov    $0x1,%edi
    printf(1, "fork failed\n");
    2211:	68 39 5a 00 00       	push   $0x5a39
    2216:	6a 01                	push   $0x1
    2218:	e8 83 25 00 00       	call   47a0 <printf>
    exit(0);
    221d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2224:	e8 19 24 00 00       	call   4642 <exit>
    2229:	83 c4 10             	add    $0x10,%esp
    222c:	e9 0f ff ff ff       	jmp    2140 <linkunlink+0x40>
    2231:	eb 0d                	jmp    2240 <bigdir>
    2233:	90                   	nop
    2234:	90                   	nop
    2235:	90                   	nop
    2236:	90                   	nop
    2237:	90                   	nop
    2238:	90                   	nop
    2239:	90                   	nop
    223a:	90                   	nop
    223b:	90                   	nop
    223c:	90                   	nop
    223d:	90                   	nop
    223e:	90                   	nop
    223f:	90                   	nop

00002240 <bigdir>:
{
    2240:	55                   	push   %ebp
    2241:	89 e5                	mov    %esp,%ebp
    2243:	56                   	push   %esi
    2244:	53                   	push   %ebx
    2245:	83 ec 18             	sub    $0x18,%esp
  printf(1, "bigdir test\n");
    2248:	68 e8 51 00 00       	push   $0x51e8
    224d:	6a 01                	push   $0x1
    224f:	e8 4c 25 00 00       	call   47a0 <printf>
  unlink("bd");
    2254:	c7 04 24 f5 51 00 00 	movl   $0x51f5,(%esp)
    225b:	e8 3a 24 00 00       	call   469a <unlink>
  fd = open("bd", O_CREATE);
    2260:	58                   	pop    %eax
    2261:	5a                   	pop    %edx
    2262:	68 00 02 00 00       	push   $0x200
    2267:	68 f5 51 00 00       	push   $0x51f5
    226c:	e8 19 24 00 00       	call   468a <open>
  if(fd < 0){
    2271:	83 c4 10             	add    $0x10,%esp
    2274:	85 c0                	test   %eax,%eax
  fd = open("bd", O_CREATE);
    2276:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2278:	0f 88 15 01 00 00    	js     2393 <bigdir+0x153>
  close(fd);
    227e:	83 ec 0c             	sub    $0xc,%esp
    2281:	8d 75 ee             	lea    -0x12(%ebp),%esi
    2284:	53                   	push   %ebx
  for(i = 0; i < 500; i++){
    2285:	31 db                	xor    %ebx,%ebx
  close(fd);
    2287:	e8 e6 23 00 00       	call   4672 <close>
    228c:	83 c4 10             	add    $0x10,%esp
    228f:	eb 12                	jmp    22a3 <bigdir+0x63>
    2291:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 500; i++){
    2298:	83 c3 01             	add    $0x1,%ebx
    229b:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    22a1:	74 5c                	je     22ff <bigdir+0xbf>
    name[1] = '0' + (i / 64);
    22a3:	89 d8                	mov    %ebx,%eax
    if(link("bd", name) != 0){
    22a5:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    22a8:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    22ac:	c1 f8 06             	sar    $0x6,%eax
    if(link("bd", name) != 0){
    22af:	56                   	push   %esi
    22b0:	68 f5 51 00 00       	push   $0x51f5
    name[1] = '0' + (i / 64);
    22b5:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    22b8:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    name[1] = '0' + (i / 64);
    22bc:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    22bf:	89 d8                	mov    %ebx,%eax
    22c1:	83 e0 3f             	and    $0x3f,%eax
    22c4:	83 c0 30             	add    $0x30,%eax
    22c7:	88 45 f0             	mov    %al,-0x10(%ebp)
    if(link("bd", name) != 0){
    22ca:	e8 db 23 00 00       	call   46aa <link>
    22cf:	83 c4 10             	add    $0x10,%esp
    22d2:	85 c0                	test   %eax,%eax
    22d4:	74 c2                	je     2298 <bigdir+0x58>
      printf(1, "bigdir link failed\n");
    22d6:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 500; i++){
    22d9:	83 c3 01             	add    $0x1,%ebx
      printf(1, "bigdir link failed\n");
    22dc:	68 0e 52 00 00       	push   $0x520e
    22e1:	6a 01                	push   $0x1
    22e3:	e8 b8 24 00 00       	call   47a0 <printf>
      exit(0);
    22e8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    22ef:	e8 4e 23 00 00       	call   4642 <exit>
    22f4:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 500; i++){
    22f7:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    22fd:	75 a4                	jne    22a3 <bigdir+0x63>
  unlink("bd");
    22ff:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    2302:	31 db                	xor    %ebx,%ebx
  unlink("bd");
    2304:	68 f5 51 00 00       	push   $0x51f5
    2309:	e8 8c 23 00 00       	call   469a <unlink>
    230e:	83 c4 10             	add    $0x10,%esp
    2311:	eb 10                	jmp    2323 <bigdir+0xe3>
    2313:	90                   	nop
    2314:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 500; i++){
    2318:	83 c3 01             	add    $0x1,%ebx
    231b:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2321:	74 57                	je     237a <bigdir+0x13a>
    name[1] = '0' + (i / 64);
    2323:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    2325:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    2328:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    232c:	c1 f8 06             	sar    $0x6,%eax
    if(unlink(name) != 0){
    232f:	56                   	push   %esi
    name[3] = '\0';
    2330:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    name[1] = '0' + (i / 64);
    2334:	83 c0 30             	add    $0x30,%eax
    2337:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    233a:	89 d8                	mov    %ebx,%eax
    233c:	83 e0 3f             	and    $0x3f,%eax
    233f:	83 c0 30             	add    $0x30,%eax
    2342:	88 45 f0             	mov    %al,-0x10(%ebp)
    if(unlink(name) != 0){
    2345:	e8 50 23 00 00       	call   469a <unlink>
    234a:	83 c4 10             	add    $0x10,%esp
    234d:	85 c0                	test   %eax,%eax
    234f:	74 c7                	je     2318 <bigdir+0xd8>
      printf(1, "bigdir unlink failed");
    2351:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 500; i++){
    2354:	83 c3 01             	add    $0x1,%ebx
      printf(1, "bigdir unlink failed");
    2357:	68 22 52 00 00       	push   $0x5222
    235c:	6a 01                	push   $0x1
    235e:	e8 3d 24 00 00       	call   47a0 <printf>
      exit(0);
    2363:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    236a:	e8 d3 22 00 00       	call   4642 <exit>
    236f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 500; i++){
    2372:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2378:	75 a9                	jne    2323 <bigdir+0xe3>
  printf(1, "bigdir ok\n");
    237a:	83 ec 08             	sub    $0x8,%esp
    237d:	68 37 52 00 00       	push   $0x5237
    2382:	6a 01                	push   $0x1
    2384:	e8 17 24 00 00       	call   47a0 <printf>
}
    2389:	83 c4 10             	add    $0x10,%esp
    238c:	8d 65 f8             	lea    -0x8(%ebp),%esp
    238f:	5b                   	pop    %ebx
    2390:	5e                   	pop    %esi
    2391:	5d                   	pop    %ebp
    2392:	c3                   	ret    
    printf(1, "bigdir create failed\n");
    2393:	83 ec 08             	sub    $0x8,%esp
    2396:	68 f8 51 00 00       	push   $0x51f8
    239b:	6a 01                	push   $0x1
    239d:	e8 fe 23 00 00       	call   47a0 <printf>
    exit(0);
    23a2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    23a9:	e8 94 22 00 00       	call   4642 <exit>
    23ae:	83 c4 10             	add    $0x10,%esp
    23b1:	e9 c8 fe ff ff       	jmp    227e <bigdir+0x3e>
    23b6:	8d 76 00             	lea    0x0(%esi),%esi
    23b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000023c0 <subdir>:
{
    23c0:	55                   	push   %ebp
    23c1:	89 e5                	mov    %esp,%ebp
    23c3:	53                   	push   %ebx
    23c4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    23c7:	68 42 52 00 00       	push   $0x5242
    23cc:	6a 01                	push   $0x1
    23ce:	e8 cd 23 00 00       	call   47a0 <printf>
  unlink("ff");
    23d3:	c7 04 24 cb 52 00 00 	movl   $0x52cb,(%esp)
    23da:	e8 bb 22 00 00       	call   469a <unlink>
  if(mkdir("dd") != 0){
    23df:	c7 04 24 68 53 00 00 	movl   $0x5368,(%esp)
    23e6:	e8 c7 22 00 00       	call   46b2 <mkdir>
    23eb:	83 c4 10             	add    $0x10,%esp
    23ee:	85 c0                	test   %eax,%eax
    23f0:	0f 85 3a 08 00 00    	jne    2c30 <subdir+0x870>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    23f6:	83 ec 08             	sub    $0x8,%esp
    23f9:	68 02 02 00 00       	push   $0x202
    23fe:	68 a1 52 00 00       	push   $0x52a1
    2403:	e8 82 22 00 00       	call   468a <open>
  if(fd < 0){
    2408:	83 c4 10             	add    $0x10,%esp
    240b:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    240d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    240f:	0f 88 bb 08 00 00    	js     2cd0 <subdir+0x910>
  write(fd, "ff", 2);
    2415:	83 ec 04             	sub    $0x4,%esp
    2418:	6a 02                	push   $0x2
    241a:	68 cb 52 00 00       	push   $0x52cb
    241f:	53                   	push   %ebx
    2420:	e8 45 22 00 00       	call   466a <write>
  close(fd);
    2425:	89 1c 24             	mov    %ebx,(%esp)
    2428:	e8 45 22 00 00       	call   4672 <close>
  if(unlink("dd") >= 0){
    242d:	c7 04 24 68 53 00 00 	movl   $0x5368,(%esp)
    2434:	e8 61 22 00 00       	call   469a <unlink>
    2439:	83 c4 10             	add    $0x10,%esp
    243c:	85 c0                	test   %eax,%eax
    243e:	78 1e                	js     245e <subdir+0x9e>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    2440:	83 ec 08             	sub    $0x8,%esp
    2443:	68 34 5d 00 00       	push   $0x5d34
    2448:	6a 01                	push   $0x1
    244a:	e8 51 23 00 00       	call   47a0 <printf>
    exit(0);
    244f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2456:	e8 e7 21 00 00       	call   4642 <exit>
    245b:	83 c4 10             	add    $0x10,%esp
  if(mkdir("/dd/dd") != 0){
    245e:	83 ec 0c             	sub    $0xc,%esp
    2461:	68 7c 52 00 00       	push   $0x527c
    2466:	e8 47 22 00 00       	call   46b2 <mkdir>
    246b:	83 c4 10             	add    $0x10,%esp
    246e:	85 c0                	test   %eax,%eax
    2470:	0f 85 92 07 00 00    	jne    2c08 <subdir+0x848>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2476:	83 ec 08             	sub    $0x8,%esp
    2479:	68 02 02 00 00       	push   $0x202
    247e:	68 9e 52 00 00       	push   $0x529e
    2483:	e8 02 22 00 00       	call   468a <open>
  if(fd < 0){
    2488:	83 c4 10             	add    $0x10,%esp
    248b:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    248d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    248f:	0f 88 13 08 00 00    	js     2ca8 <subdir+0x8e8>
  write(fd, "FF", 2);
    2495:	83 ec 04             	sub    $0x4,%esp
    2498:	6a 02                	push   $0x2
    249a:	68 bf 52 00 00       	push   $0x52bf
    249f:	53                   	push   %ebx
    24a0:	e8 c5 21 00 00       	call   466a <write>
  close(fd);
    24a5:	89 1c 24             	mov    %ebx,(%esp)
    24a8:	e8 c5 21 00 00       	call   4672 <close>
  fd = open("dd/dd/../ff", 0);
    24ad:	58                   	pop    %eax
    24ae:	5a                   	pop    %edx
    24af:	6a 00                	push   $0x0
    24b1:	68 c2 52 00 00       	push   $0x52c2
    24b6:	e8 cf 21 00 00       	call   468a <open>
  if(fd < 0){
    24bb:	83 c4 10             	add    $0x10,%esp
    24be:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    24c0:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    24c2:	0f 88 58 08 00 00    	js     2d20 <subdir+0x960>
  cc = read(fd, buf, sizeof(buf));
    24c8:	83 ec 04             	sub    $0x4,%esp
    24cb:	68 00 20 00 00       	push   $0x2000
    24d0:	68 c0 93 00 00       	push   $0x93c0
    24d5:	53                   	push   %ebx
    24d6:	e8 87 21 00 00       	call   4662 <read>
  if(cc != 2 || buf[0] != 'f'){
    24db:	83 c4 10             	add    $0x10,%esp
    24de:	83 f8 02             	cmp    $0x2,%eax
    24e1:	75 09                	jne    24ec <subdir+0x12c>
    24e3:	80 3d c0 93 00 00 66 	cmpb   $0x66,0x93c0
    24ea:	74 1e                	je     250a <subdir+0x14a>
    printf(1, "dd/dd/../ff wrong content\n");
    24ec:	83 ec 08             	sub    $0x8,%esp
    24ef:	68 e7 52 00 00       	push   $0x52e7
    24f4:	6a 01                	push   $0x1
    24f6:	e8 a5 22 00 00       	call   47a0 <printf>
    exit(0);
    24fb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2502:	e8 3b 21 00 00       	call   4642 <exit>
    2507:	83 c4 10             	add    $0x10,%esp
  close(fd);
    250a:	83 ec 0c             	sub    $0xc,%esp
    250d:	53                   	push   %ebx
    250e:	e8 5f 21 00 00       	call   4672 <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    2513:	59                   	pop    %ecx
    2514:	5b                   	pop    %ebx
    2515:	68 02 53 00 00       	push   $0x5302
    251a:	68 9e 52 00 00       	push   $0x529e
    251f:	e8 86 21 00 00       	call   46aa <link>
    2524:	83 c4 10             	add    $0x10,%esp
    2527:	85 c0                	test   %eax,%eax
    2529:	0f 85 b1 06 00 00    	jne    2be0 <subdir+0x820>
  if(unlink("dd/dd/ff") != 0){
    252f:	83 ec 0c             	sub    $0xc,%esp
    2532:	68 9e 52 00 00       	push   $0x529e
    2537:	e8 5e 21 00 00       	call   469a <unlink>
    253c:	83 c4 10             	add    $0x10,%esp
    253f:	85 c0                	test   %eax,%eax
    2541:	0f 85 71 06 00 00    	jne    2bb8 <subdir+0x7f8>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2547:	83 ec 08             	sub    $0x8,%esp
    254a:	6a 00                	push   $0x0
    254c:	68 9e 52 00 00       	push   $0x529e
    2551:	e8 34 21 00 00       	call   468a <open>
    2556:	83 c4 10             	add    $0x10,%esp
    2559:	85 c0                	test   %eax,%eax
    255b:	78 1e                	js     257b <subdir+0x1bb>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    255d:	83 ec 08             	sub    $0x8,%esp
    2560:	68 80 5d 00 00       	push   $0x5d80
    2565:	6a 01                	push   $0x1
    2567:	e8 34 22 00 00       	call   47a0 <printf>
    exit(0);
    256c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2573:	e8 ca 20 00 00       	call   4642 <exit>
    2578:	83 c4 10             	add    $0x10,%esp
  if(chdir("dd") != 0){
    257b:	83 ec 0c             	sub    $0xc,%esp
    257e:	68 68 53 00 00       	push   $0x5368
    2583:	e8 32 21 00 00       	call   46ba <chdir>
    2588:	83 c4 10             	add    $0x10,%esp
    258b:	85 c0                	test   %eax,%eax
    258d:	0f 85 fd 05 00 00    	jne    2b90 <subdir+0x7d0>
  if(chdir("dd/../../dd") != 0){
    2593:	83 ec 0c             	sub    $0xc,%esp
    2596:	68 36 53 00 00       	push   $0x5336
    259b:	e8 1a 21 00 00       	call   46ba <chdir>
    25a0:	83 c4 10             	add    $0x10,%esp
    25a3:	85 c0                	test   %eax,%eax
    25a5:	0f 85 b5 03 00 00    	jne    2960 <subdir+0x5a0>
  if(chdir("dd/../../../dd") != 0){
    25ab:	83 ec 0c             	sub    $0xc,%esp
    25ae:	68 5c 53 00 00       	push   $0x535c
    25b3:	e8 02 21 00 00       	call   46ba <chdir>
    25b8:	83 c4 10             	add    $0x10,%esp
    25bb:	85 c0                	test   %eax,%eax
    25bd:	0f 85 75 03 00 00    	jne    2938 <subdir+0x578>
  if(chdir("./..") != 0){
    25c3:	83 ec 0c             	sub    $0xc,%esp
    25c6:	68 6b 53 00 00       	push   $0x536b
    25cb:	e8 ea 20 00 00       	call   46ba <chdir>
    25d0:	83 c4 10             	add    $0x10,%esp
    25d3:	85 c0                	test   %eax,%eax
    25d5:	0f 85 35 03 00 00    	jne    2910 <subdir+0x550>
  fd = open("dd/dd/ffff", 0);
    25db:	83 ec 08             	sub    $0x8,%esp
    25de:	6a 00                	push   $0x0
    25e0:	68 02 53 00 00       	push   $0x5302
    25e5:	e8 a0 20 00 00       	call   468a <open>
  if(fd < 0){
    25ea:	83 c4 10             	add    $0x10,%esp
    25ed:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    25ef:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    25f1:	0f 88 89 06 00 00    	js     2c80 <subdir+0x8c0>
  if(read(fd, buf, sizeof(buf)) != 2){
    25f7:	83 ec 04             	sub    $0x4,%esp
    25fa:	68 00 20 00 00       	push   $0x2000
    25ff:	68 c0 93 00 00       	push   $0x93c0
    2604:	53                   	push   %ebx
    2605:	e8 58 20 00 00       	call   4662 <read>
    260a:	83 c4 10             	add    $0x10,%esp
    260d:	83 f8 02             	cmp    $0x2,%eax
    2610:	74 1e                	je     2630 <subdir+0x270>
    printf(1, "read dd/dd/ffff wrong len\n");
    2612:	83 ec 08             	sub    $0x8,%esp
    2615:	68 9b 53 00 00       	push   $0x539b
    261a:	6a 01                	push   $0x1
    261c:	e8 7f 21 00 00       	call   47a0 <printf>
    exit(0);
    2621:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2628:	e8 15 20 00 00       	call   4642 <exit>
    262d:	83 c4 10             	add    $0x10,%esp
  close(fd);
    2630:	83 ec 0c             	sub    $0xc,%esp
    2633:	53                   	push   %ebx
    2634:	e8 39 20 00 00       	call   4672 <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2639:	58                   	pop    %eax
    263a:	5a                   	pop    %edx
    263b:	6a 00                	push   $0x0
    263d:	68 9e 52 00 00       	push   $0x529e
    2642:	e8 43 20 00 00       	call   468a <open>
    2647:	83 c4 10             	add    $0x10,%esp
    264a:	85 c0                	test   %eax,%eax
    264c:	78 1e                	js     266c <subdir+0x2ac>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    264e:	83 ec 08             	sub    $0x8,%esp
    2651:	68 a4 5d 00 00       	push   $0x5da4
    2656:	6a 01                	push   $0x1
    2658:	e8 43 21 00 00       	call   47a0 <printf>
    exit(0);
    265d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2664:	e8 d9 1f 00 00       	call   4642 <exit>
    2669:	83 c4 10             	add    $0x10,%esp
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    266c:	83 ec 08             	sub    $0x8,%esp
    266f:	68 02 02 00 00       	push   $0x202
    2674:	68 b6 53 00 00       	push   $0x53b6
    2679:	e8 0c 20 00 00       	call   468a <open>
    267e:	83 c4 10             	add    $0x10,%esp
    2681:	85 c0                	test   %eax,%eax
    2683:	78 1e                	js     26a3 <subdir+0x2e3>
    printf(1, "create dd/ff/ff succeeded!\n");
    2685:	83 ec 08             	sub    $0x8,%esp
    2688:	68 bf 53 00 00       	push   $0x53bf
    268d:	6a 01                	push   $0x1
    268f:	e8 0c 21 00 00       	call   47a0 <printf>
    exit(0);
    2694:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    269b:	e8 a2 1f 00 00       	call   4642 <exit>
    26a0:	83 c4 10             	add    $0x10,%esp
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    26a3:	83 ec 08             	sub    $0x8,%esp
    26a6:	68 02 02 00 00       	push   $0x202
    26ab:	68 db 53 00 00       	push   $0x53db
    26b0:	e8 d5 1f 00 00       	call   468a <open>
    26b5:	83 c4 10             	add    $0x10,%esp
    26b8:	85 c0                	test   %eax,%eax
    26ba:	78 1e                	js     26da <subdir+0x31a>
    printf(1, "create dd/xx/ff succeeded!\n");
    26bc:	83 ec 08             	sub    $0x8,%esp
    26bf:	68 e4 53 00 00       	push   $0x53e4
    26c4:	6a 01                	push   $0x1
    26c6:	e8 d5 20 00 00       	call   47a0 <printf>
    exit(0);
    26cb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26d2:	e8 6b 1f 00 00       	call   4642 <exit>
    26d7:	83 c4 10             	add    $0x10,%esp
  if(open("dd", O_CREATE) >= 0){
    26da:	83 ec 08             	sub    $0x8,%esp
    26dd:	68 00 02 00 00       	push   $0x200
    26e2:	68 68 53 00 00       	push   $0x5368
    26e7:	e8 9e 1f 00 00       	call   468a <open>
    26ec:	83 c4 10             	add    $0x10,%esp
    26ef:	85 c0                	test   %eax,%eax
    26f1:	78 1e                	js     2711 <subdir+0x351>
    printf(1, "create dd succeeded!\n");
    26f3:	83 ec 08             	sub    $0x8,%esp
    26f6:	68 00 54 00 00       	push   $0x5400
    26fb:	6a 01                	push   $0x1
    26fd:	e8 9e 20 00 00       	call   47a0 <printf>
    exit(0);
    2702:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2709:	e8 34 1f 00 00       	call   4642 <exit>
    270e:	83 c4 10             	add    $0x10,%esp
  if(open("dd", O_RDWR) >= 0){
    2711:	83 ec 08             	sub    $0x8,%esp
    2714:	6a 02                	push   $0x2
    2716:	68 68 53 00 00       	push   $0x5368
    271b:	e8 6a 1f 00 00       	call   468a <open>
    2720:	83 c4 10             	add    $0x10,%esp
    2723:	85 c0                	test   %eax,%eax
    2725:	78 1e                	js     2745 <subdir+0x385>
    printf(1, "open dd rdwr succeeded!\n");
    2727:	83 ec 08             	sub    $0x8,%esp
    272a:	68 16 54 00 00       	push   $0x5416
    272f:	6a 01                	push   $0x1
    2731:	e8 6a 20 00 00       	call   47a0 <printf>
    exit(0);
    2736:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    273d:	e8 00 1f 00 00       	call   4642 <exit>
    2742:	83 c4 10             	add    $0x10,%esp
  if(open("dd", O_WRONLY) >= 0){
    2745:	83 ec 08             	sub    $0x8,%esp
    2748:	6a 01                	push   $0x1
    274a:	68 68 53 00 00       	push   $0x5368
    274f:	e8 36 1f 00 00       	call   468a <open>
    2754:	83 c4 10             	add    $0x10,%esp
    2757:	85 c0                	test   %eax,%eax
    2759:	78 1e                	js     2779 <subdir+0x3b9>
    printf(1, "open dd wronly succeeded!\n");
    275b:	83 ec 08             	sub    $0x8,%esp
    275e:	68 2f 54 00 00       	push   $0x542f
    2763:	6a 01                	push   $0x1
    2765:	e8 36 20 00 00       	call   47a0 <printf>
    exit(0);
    276a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2771:	e8 cc 1e 00 00       	call   4642 <exit>
    2776:	83 c4 10             	add    $0x10,%esp
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    2779:	83 ec 08             	sub    $0x8,%esp
    277c:	68 4a 54 00 00       	push   $0x544a
    2781:	68 b6 53 00 00       	push   $0x53b6
    2786:	e8 1f 1f 00 00       	call   46aa <link>
    278b:	83 c4 10             	add    $0x10,%esp
    278e:	85 c0                	test   %eax,%eax
    2790:	0f 84 d2 03 00 00    	je     2b68 <subdir+0x7a8>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    2796:	83 ec 08             	sub    $0x8,%esp
    2799:	68 4a 54 00 00       	push   $0x544a
    279e:	68 db 53 00 00       	push   $0x53db
    27a3:	e8 02 1f 00 00       	call   46aa <link>
    27a8:	83 c4 10             	add    $0x10,%esp
    27ab:	85 c0                	test   %eax,%eax
    27ad:	0f 84 8d 03 00 00    	je     2b40 <subdir+0x780>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    27b3:	83 ec 08             	sub    $0x8,%esp
    27b6:	68 02 53 00 00       	push   $0x5302
    27bb:	68 a1 52 00 00       	push   $0x52a1
    27c0:	e8 e5 1e 00 00       	call   46aa <link>
    27c5:	83 c4 10             	add    $0x10,%esp
    27c8:	85 c0                	test   %eax,%eax
    27ca:	0f 84 48 03 00 00    	je     2b18 <subdir+0x758>
  if(mkdir("dd/ff/ff") == 0){
    27d0:	83 ec 0c             	sub    $0xc,%esp
    27d3:	68 b6 53 00 00       	push   $0x53b6
    27d8:	e8 d5 1e 00 00       	call   46b2 <mkdir>
    27dd:	83 c4 10             	add    $0x10,%esp
    27e0:	85 c0                	test   %eax,%eax
    27e2:	0f 84 08 03 00 00    	je     2af0 <subdir+0x730>
  if(mkdir("dd/xx/ff") == 0){
    27e8:	83 ec 0c             	sub    $0xc,%esp
    27eb:	68 db 53 00 00       	push   $0x53db
    27f0:	e8 bd 1e 00 00       	call   46b2 <mkdir>
    27f5:	83 c4 10             	add    $0x10,%esp
    27f8:	85 c0                	test   %eax,%eax
    27fa:	0f 84 c8 02 00 00    	je     2ac8 <subdir+0x708>
  if(mkdir("dd/dd/ffff") == 0){
    2800:	83 ec 0c             	sub    $0xc,%esp
    2803:	68 02 53 00 00       	push   $0x5302
    2808:	e8 a5 1e 00 00       	call   46b2 <mkdir>
    280d:	83 c4 10             	add    $0x10,%esp
    2810:	85 c0                	test   %eax,%eax
    2812:	0f 84 88 02 00 00    	je     2aa0 <subdir+0x6e0>
  if(unlink("dd/xx/ff") == 0){
    2818:	83 ec 0c             	sub    $0xc,%esp
    281b:	68 db 53 00 00       	push   $0x53db
    2820:	e8 75 1e 00 00       	call   469a <unlink>
    2825:	83 c4 10             	add    $0x10,%esp
    2828:	85 c0                	test   %eax,%eax
    282a:	0f 84 48 02 00 00    	je     2a78 <subdir+0x6b8>
  if(unlink("dd/ff/ff") == 0){
    2830:	83 ec 0c             	sub    $0xc,%esp
    2833:	68 b6 53 00 00       	push   $0x53b6
    2838:	e8 5d 1e 00 00       	call   469a <unlink>
    283d:	83 c4 10             	add    $0x10,%esp
    2840:	85 c0                	test   %eax,%eax
    2842:	0f 84 08 02 00 00    	je     2a50 <subdir+0x690>
  if(chdir("dd/ff") == 0){
    2848:	83 ec 0c             	sub    $0xc,%esp
    284b:	68 a1 52 00 00       	push   $0x52a1
    2850:	e8 65 1e 00 00       	call   46ba <chdir>
    2855:	83 c4 10             	add    $0x10,%esp
    2858:	85 c0                	test   %eax,%eax
    285a:	0f 84 c8 01 00 00    	je     2a28 <subdir+0x668>
  if(chdir("dd/xx") == 0){
    2860:	83 ec 0c             	sub    $0xc,%esp
    2863:	68 4d 54 00 00       	push   $0x544d
    2868:	e8 4d 1e 00 00       	call   46ba <chdir>
    286d:	83 c4 10             	add    $0x10,%esp
    2870:	85 c0                	test   %eax,%eax
    2872:	0f 84 88 01 00 00    	je     2a00 <subdir+0x640>
  if(unlink("dd/dd/ffff") != 0){
    2878:	83 ec 0c             	sub    $0xc,%esp
    287b:	68 02 53 00 00       	push   $0x5302
    2880:	e8 15 1e 00 00       	call   469a <unlink>
    2885:	83 c4 10             	add    $0x10,%esp
    2888:	85 c0                	test   %eax,%eax
    288a:	0f 85 48 01 00 00    	jne    29d8 <subdir+0x618>
  if(unlink("dd/ff") != 0){
    2890:	83 ec 0c             	sub    $0xc,%esp
    2893:	68 a1 52 00 00       	push   $0x52a1
    2898:	e8 fd 1d 00 00       	call   469a <unlink>
    289d:	83 c4 10             	add    $0x10,%esp
    28a0:	85 c0                	test   %eax,%eax
    28a2:	0f 85 08 01 00 00    	jne    29b0 <subdir+0x5f0>
  if(unlink("dd") == 0){
    28a8:	83 ec 0c             	sub    $0xc,%esp
    28ab:	68 68 53 00 00       	push   $0x5368
    28b0:	e8 e5 1d 00 00       	call   469a <unlink>
    28b5:	83 c4 10             	add    $0x10,%esp
    28b8:	85 c0                	test   %eax,%eax
    28ba:	0f 84 c8 00 00 00    	je     2988 <subdir+0x5c8>
  if(unlink("dd/dd") < 0){
    28c0:	83 ec 0c             	sub    $0xc,%esp
    28c3:	68 7d 52 00 00       	push   $0x527d
    28c8:	e8 cd 1d 00 00       	call   469a <unlink>
    28cd:	83 c4 10             	add    $0x10,%esp
    28d0:	85 c0                	test   %eax,%eax
    28d2:	0f 88 20 04 00 00    	js     2cf8 <subdir+0x938>
  if(unlink("dd") < 0){
    28d8:	83 ec 0c             	sub    $0xc,%esp
    28db:	68 68 53 00 00       	push   $0x5368
    28e0:	e8 b5 1d 00 00       	call   469a <unlink>
    28e5:	83 c4 10             	add    $0x10,%esp
    28e8:	85 c0                	test   %eax,%eax
    28ea:	0f 88 68 03 00 00    	js     2c58 <subdir+0x898>
  printf(1, "subdir ok\n");
    28f0:	83 ec 08             	sub    $0x8,%esp
    28f3:	68 4a 55 00 00       	push   $0x554a
    28f8:	6a 01                	push   $0x1
    28fa:	e8 a1 1e 00 00       	call   47a0 <printf>
}
    28ff:	83 c4 10             	add    $0x10,%esp
    2902:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2905:	c9                   	leave  
    2906:	c3                   	ret    
    2907:	89 f6                	mov    %esi,%esi
    2909:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(1, "chdir ./.. failed\n");
    2910:	83 ec 08             	sub    $0x8,%esp
    2913:	68 70 53 00 00       	push   $0x5370
    2918:	6a 01                	push   $0x1
    291a:	e8 81 1e 00 00       	call   47a0 <printf>
    exit(0);
    291f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2926:	e8 17 1d 00 00       	call   4642 <exit>
    292b:	83 c4 10             	add    $0x10,%esp
    292e:	e9 a8 fc ff ff       	jmp    25db <subdir+0x21b>
    2933:	90                   	nop
    2934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dd/../../dd failed\n");
    2938:	83 ec 08             	sub    $0x8,%esp
    293b:	68 42 53 00 00       	push   $0x5342
    2940:	6a 01                	push   $0x1
    2942:	e8 59 1e 00 00       	call   47a0 <printf>
    exit(0);
    2947:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    294e:	e8 ef 1c 00 00       	call   4642 <exit>
    2953:	83 c4 10             	add    $0x10,%esp
    2956:	e9 68 fc ff ff       	jmp    25c3 <subdir+0x203>
    295b:	90                   	nop
    295c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dd/../../dd failed\n");
    2960:	83 ec 08             	sub    $0x8,%esp
    2963:	68 42 53 00 00       	push   $0x5342
    2968:	6a 01                	push   $0x1
    296a:	e8 31 1e 00 00       	call   47a0 <printf>
    exit(0);
    296f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2976:	e8 c7 1c 00 00       	call   4642 <exit>
    297b:	83 c4 10             	add    $0x10,%esp
    297e:	e9 28 fc ff ff       	jmp    25ab <subdir+0x1eb>
    2983:	90                   	nop
    2984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink non-empty dd succeeded!\n");
    2988:	83 ec 08             	sub    $0x8,%esp
    298b:	68 38 5e 00 00       	push   $0x5e38
    2990:	6a 01                	push   $0x1
    2992:	e8 09 1e 00 00       	call   47a0 <printf>
    exit(0);
    2997:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    299e:	e8 9f 1c 00 00       	call   4642 <exit>
    29a3:	83 c4 10             	add    $0x10,%esp
    29a6:	e9 15 ff ff ff       	jmp    28c0 <subdir+0x500>
    29ab:	90                   	nop
    29ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd/ff failed\n");
    29b0:	83 ec 08             	sub    $0x8,%esp
    29b3:	68 0e 55 00 00       	push   $0x550e
    29b8:	6a 01                	push   $0x1
    29ba:	e8 e1 1d 00 00       	call   47a0 <printf>
    exit(0);
    29bf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29c6:	e8 77 1c 00 00       	call   4642 <exit>
    29cb:	83 c4 10             	add    $0x10,%esp
    29ce:	e9 d5 fe ff ff       	jmp    28a8 <subdir+0x4e8>
    29d3:	90                   	nop
    29d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd/dd/ff failed\n");
    29d8:	83 ec 08             	sub    $0x8,%esp
    29db:	68 0d 53 00 00       	push   $0x530d
    29e0:	6a 01                	push   $0x1
    29e2:	e8 b9 1d 00 00       	call   47a0 <printf>
    exit(0);
    29e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29ee:	e8 4f 1c 00 00       	call   4642 <exit>
    29f3:	83 c4 10             	add    $0x10,%esp
    29f6:	e9 95 fe ff ff       	jmp    2890 <subdir+0x4d0>
    29fb:	90                   	nop
    29fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dd/xx succeeded!\n");
    2a00:	83 ec 08             	sub    $0x8,%esp
    2a03:	68 f6 54 00 00       	push   $0x54f6
    2a08:	6a 01                	push   $0x1
    2a0a:	e8 91 1d 00 00       	call   47a0 <printf>
    exit(0);
    2a0f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a16:	e8 27 1c 00 00       	call   4642 <exit>
    2a1b:	83 c4 10             	add    $0x10,%esp
    2a1e:	e9 55 fe ff ff       	jmp    2878 <subdir+0x4b8>
    2a23:	90                   	nop
    2a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dd/ff succeeded!\n");
    2a28:	83 ec 08             	sub    $0x8,%esp
    2a2b:	68 de 54 00 00       	push   $0x54de
    2a30:	6a 01                	push   $0x1
    2a32:	e8 69 1d 00 00       	call   47a0 <printf>
    exit(0);
    2a37:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a3e:	e8 ff 1b 00 00       	call   4642 <exit>
    2a43:	83 c4 10             	add    $0x10,%esp
    2a46:	e9 15 fe ff ff       	jmp    2860 <subdir+0x4a0>
    2a4b:	90                   	nop
    2a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd/ff/ff succeeded!\n");
    2a50:	83 ec 08             	sub    $0x8,%esp
    2a53:	68 c2 54 00 00       	push   $0x54c2
    2a58:	6a 01                	push   $0x1
    2a5a:	e8 41 1d 00 00       	call   47a0 <printf>
    exit(0);
    2a5f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a66:	e8 d7 1b 00 00       	call   4642 <exit>
    2a6b:	83 c4 10             	add    $0x10,%esp
    2a6e:	e9 d5 fd ff ff       	jmp    2848 <subdir+0x488>
    2a73:	90                   	nop
    2a74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd/xx/ff succeeded!\n");
    2a78:	83 ec 08             	sub    $0x8,%esp
    2a7b:	68 a6 54 00 00       	push   $0x54a6
    2a80:	6a 01                	push   $0x1
    2a82:	e8 19 1d 00 00       	call   47a0 <printf>
    exit(0);
    2a87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a8e:	e8 af 1b 00 00       	call   4642 <exit>
    2a93:	83 c4 10             	add    $0x10,%esp
    2a96:	e9 95 fd ff ff       	jmp    2830 <subdir+0x470>
    2a9b:	90                   	nop
    2a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    2aa0:	83 ec 08             	sub    $0x8,%esp
    2aa3:	68 89 54 00 00       	push   $0x5489
    2aa8:	6a 01                	push   $0x1
    2aaa:	e8 f1 1c 00 00       	call   47a0 <printf>
    exit(0);
    2aaf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ab6:	e8 87 1b 00 00       	call   4642 <exit>
    2abb:	83 c4 10             	add    $0x10,%esp
    2abe:	e9 55 fd ff ff       	jmp    2818 <subdir+0x458>
    2ac3:	90                   	nop
    2ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    2ac8:	83 ec 08             	sub    $0x8,%esp
    2acb:	68 6e 54 00 00       	push   $0x546e
    2ad0:	6a 01                	push   $0x1
    2ad2:	e8 c9 1c 00 00       	call   47a0 <printf>
    exit(0);
    2ad7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ade:	e8 5f 1b 00 00       	call   4642 <exit>
    2ae3:	83 c4 10             	add    $0x10,%esp
    2ae6:	e9 15 fd ff ff       	jmp    2800 <subdir+0x440>
    2aeb:	90                   	nop
    2aec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    2af0:	83 ec 08             	sub    $0x8,%esp
    2af3:	68 53 54 00 00       	push   $0x5453
    2af8:	6a 01                	push   $0x1
    2afa:	e8 a1 1c 00 00       	call   47a0 <printf>
    exit(0);
    2aff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b06:	e8 37 1b 00 00       	call   4642 <exit>
    2b0b:	83 c4 10             	add    $0x10,%esp
    2b0e:	e9 d5 fc ff ff       	jmp    27e8 <subdir+0x428>
    2b13:	90                   	nop
    2b14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    2b18:	83 ec 08             	sub    $0x8,%esp
    2b1b:	68 14 5e 00 00       	push   $0x5e14
    2b20:	6a 01                	push   $0x1
    2b22:	e8 79 1c 00 00       	call   47a0 <printf>
    exit(0);
    2b27:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b2e:	e8 0f 1b 00 00       	call   4642 <exit>
    2b33:	83 c4 10             	add    $0x10,%esp
    2b36:	e9 95 fc ff ff       	jmp    27d0 <subdir+0x410>
    2b3b:	90                   	nop
    2b3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2b40:	83 ec 08             	sub    $0x8,%esp
    2b43:	68 f0 5d 00 00       	push   $0x5df0
    2b48:	6a 01                	push   $0x1
    2b4a:	e8 51 1c 00 00       	call   47a0 <printf>
    exit(0);
    2b4f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b56:	e8 e7 1a 00 00       	call   4642 <exit>
    2b5b:	83 c4 10             	add    $0x10,%esp
    2b5e:	e9 50 fc ff ff       	jmp    27b3 <subdir+0x3f3>
    2b63:	90                   	nop
    2b64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    2b68:	83 ec 08             	sub    $0x8,%esp
    2b6b:	68 cc 5d 00 00       	push   $0x5dcc
    2b70:	6a 01                	push   $0x1
    2b72:	e8 29 1c 00 00       	call   47a0 <printf>
    exit(0);
    2b77:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b7e:	e8 bf 1a 00 00       	call   4642 <exit>
    2b83:	83 c4 10             	add    $0x10,%esp
    2b86:	e9 0b fc ff ff       	jmp    2796 <subdir+0x3d6>
    2b8b:	90                   	nop
    2b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dd failed\n");
    2b90:	83 ec 08             	sub    $0x8,%esp
    2b93:	68 25 53 00 00       	push   $0x5325
    2b98:	6a 01                	push   $0x1
    2b9a:	e8 01 1c 00 00       	call   47a0 <printf>
    exit(0);
    2b9f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ba6:	e8 97 1a 00 00       	call   4642 <exit>
    2bab:	83 c4 10             	add    $0x10,%esp
    2bae:	e9 e0 f9 ff ff       	jmp    2593 <subdir+0x1d3>
    2bb3:	90                   	nop
    2bb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd/dd/ff failed\n");
    2bb8:	83 ec 08             	sub    $0x8,%esp
    2bbb:	68 0d 53 00 00       	push   $0x530d
    2bc0:	6a 01                	push   $0x1
    2bc2:	e8 d9 1b 00 00       	call   47a0 <printf>
    exit(0);
    2bc7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bce:	e8 6f 1a 00 00       	call   4642 <exit>
    2bd3:	83 c4 10             	add    $0x10,%esp
    2bd6:	e9 6c f9 ff ff       	jmp    2547 <subdir+0x187>
    2bdb:	90                   	nop
    2bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2be0:	83 ec 08             	sub    $0x8,%esp
    2be3:	68 5c 5d 00 00       	push   $0x5d5c
    2be8:	6a 01                	push   $0x1
    2bea:	e8 b1 1b 00 00       	call   47a0 <printf>
    exit(0);
    2bef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bf6:	e8 47 1a 00 00       	call   4642 <exit>
    2bfb:	83 c4 10             	add    $0x10,%esp
    2bfe:	e9 2c f9 ff ff       	jmp    252f <subdir+0x16f>
    2c03:	90                   	nop
    2c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "subdir mkdir dd/dd failed\n");
    2c08:	83 ec 08             	sub    $0x8,%esp
    2c0b:	68 83 52 00 00       	push   $0x5283
    2c10:	6a 01                	push   $0x1
    2c12:	e8 89 1b 00 00       	call   47a0 <printf>
    exit(0);
    2c17:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c1e:	e8 1f 1a 00 00       	call   4642 <exit>
    2c23:	83 c4 10             	add    $0x10,%esp
    2c26:	e9 4b f8 ff ff       	jmp    2476 <subdir+0xb6>
    2c2b:	90                   	nop
    2c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "subdir mkdir dd failed\n");
    2c30:	83 ec 08             	sub    $0x8,%esp
    2c33:	68 4f 52 00 00       	push   $0x524f
    2c38:	6a 01                	push   $0x1
    2c3a:	e8 61 1b 00 00       	call   47a0 <printf>
    exit(0);
    2c3f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c46:	e8 f7 19 00 00       	call   4642 <exit>
    2c4b:	83 c4 10             	add    $0x10,%esp
    2c4e:	e9 a3 f7 ff ff       	jmp    23f6 <subdir+0x36>
    2c53:	90                   	nop
    2c54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd failed\n");
    2c58:	83 ec 08             	sub    $0x8,%esp
    2c5b:	68 38 55 00 00       	push   $0x5538
    2c60:	6a 01                	push   $0x1
    2c62:	e8 39 1b 00 00       	call   47a0 <printf>
    exit(0);
    2c67:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c6e:	e8 cf 19 00 00       	call   4642 <exit>
    2c73:	83 c4 10             	add    $0x10,%esp
    2c76:	e9 75 fc ff ff       	jmp    28f0 <subdir+0x530>
    2c7b:	90                   	nop
    2c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "open dd/dd/ffff failed\n");
    2c80:	83 ec 08             	sub    $0x8,%esp
    2c83:	68 83 53 00 00       	push   $0x5383
    2c88:	6a 01                	push   $0x1
    2c8a:	e8 11 1b 00 00       	call   47a0 <printf>
    exit(0);
    2c8f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c96:	e8 a7 19 00 00       	call   4642 <exit>
    2c9b:	83 c4 10             	add    $0x10,%esp
    2c9e:	e9 54 f9 ff ff       	jmp    25f7 <subdir+0x237>
    2ca3:	90                   	nop
    2ca4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create dd/dd/ff failed\n");
    2ca8:	83 ec 08             	sub    $0x8,%esp
    2cab:	68 a7 52 00 00       	push   $0x52a7
    2cb0:	6a 01                	push   $0x1
    2cb2:	e8 e9 1a 00 00       	call   47a0 <printf>
    exit(0);
    2cb7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2cbe:	e8 7f 19 00 00       	call   4642 <exit>
    2cc3:	83 c4 10             	add    $0x10,%esp
    2cc6:	e9 ca f7 ff ff       	jmp    2495 <subdir+0xd5>
    2ccb:	90                   	nop
    2ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create dd/ff failed\n");
    2cd0:	83 ec 08             	sub    $0x8,%esp
    2cd3:	68 67 52 00 00       	push   $0x5267
    2cd8:	6a 01                	push   $0x1
    2cda:	e8 c1 1a 00 00       	call   47a0 <printf>
    exit(0);
    2cdf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ce6:	e8 57 19 00 00       	call   4642 <exit>
    2ceb:	83 c4 10             	add    $0x10,%esp
    2cee:	e9 22 f7 ff ff       	jmp    2415 <subdir+0x55>
    2cf3:	90                   	nop
    2cf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd/dd failed\n");
    2cf8:	83 ec 08             	sub    $0x8,%esp
    2cfb:	68 23 55 00 00       	push   $0x5523
    2d00:	6a 01                	push   $0x1
    2d02:	e8 99 1a 00 00       	call   47a0 <printf>
    exit(0);
    2d07:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d0e:	e8 2f 19 00 00       	call   4642 <exit>
    2d13:	83 c4 10             	add    $0x10,%esp
    2d16:	e9 bd fb ff ff       	jmp    28d8 <subdir+0x518>
    2d1b:	90                   	nop
    2d1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "open dd/dd/../ff failed\n");
    2d20:	83 ec 08             	sub    $0x8,%esp
    2d23:	68 ce 52 00 00       	push   $0x52ce
    2d28:	6a 01                	push   $0x1
    2d2a:	e8 71 1a 00 00       	call   47a0 <printf>
    exit(0);
    2d2f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d36:	e8 07 19 00 00       	call   4642 <exit>
    2d3b:	83 c4 10             	add    $0x10,%esp
    2d3e:	e9 85 f7 ff ff       	jmp    24c8 <subdir+0x108>
    2d43:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2d49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002d50 <bigwrite>:
{
    2d50:	55                   	push   %ebp
    2d51:	89 e5                	mov    %esp,%ebp
    2d53:	56                   	push   %esi
    2d54:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    2d55:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    2d5a:	83 ec 08             	sub    $0x8,%esp
    2d5d:	68 55 55 00 00       	push   $0x5555
    2d62:	6a 01                	push   $0x1
    2d64:	e8 37 1a 00 00       	call   47a0 <printf>
  unlink("bigwrite");
    2d69:	c7 04 24 64 55 00 00 	movl   $0x5564,(%esp)
    2d70:	e8 25 19 00 00       	call   469a <unlink>
    2d75:	83 c4 10             	add    $0x10,%esp
    2d78:	e9 8f 00 00 00       	jmp    2e0c <bigwrite+0xbc>
    2d7d:	8d 76 00             	lea    0x0(%esi),%esi
      int cc = write(fd, buf, sz);
    2d80:	83 ec 04             	sub    $0x4,%esp
    2d83:	53                   	push   %ebx
    2d84:	68 c0 93 00 00       	push   $0x93c0
    2d89:	56                   	push   %esi
    2d8a:	e8 db 18 00 00       	call   466a <write>
      if(cc != sz){
    2d8f:	83 c4 10             	add    $0x10,%esp
    2d92:	39 d8                	cmp    %ebx,%eax
    2d94:	74 1d                	je     2db3 <bigwrite+0x63>
        printf(1, "write(%d) ret %d\n", sz, cc);
    2d96:	50                   	push   %eax
    2d97:	53                   	push   %ebx
    2d98:	68 85 55 00 00       	push   $0x5585
    2d9d:	6a 01                	push   $0x1
    2d9f:	e8 fc 19 00 00       	call   47a0 <printf>
        exit(0);
    2da4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2dab:	e8 92 18 00 00       	call   4642 <exit>
    2db0:	83 c4 10             	add    $0x10,%esp
      int cc = write(fd, buf, sz);
    2db3:	83 ec 04             	sub    $0x4,%esp
    2db6:	53                   	push   %ebx
    2db7:	68 c0 93 00 00       	push   $0x93c0
    2dbc:	56                   	push   %esi
    2dbd:	e8 a8 18 00 00       	call   466a <write>
      if(cc != sz){
    2dc2:	83 c4 10             	add    $0x10,%esp
    2dc5:	39 d8                	cmp    %ebx,%eax
    2dc7:	74 1d                	je     2de6 <bigwrite+0x96>
        printf(1, "write(%d) ret %d\n", sz, cc);
    2dc9:	50                   	push   %eax
    2dca:	53                   	push   %ebx
    2dcb:	68 85 55 00 00       	push   $0x5585
    2dd0:	6a 01                	push   $0x1
    2dd2:	e8 c9 19 00 00       	call   47a0 <printf>
        exit(0);
    2dd7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2dde:	e8 5f 18 00 00       	call   4642 <exit>
    2de3:	83 c4 10             	add    $0x10,%esp
    close(fd);
    2de6:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    2de9:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2def:	56                   	push   %esi
    2df0:	e8 7d 18 00 00       	call   4672 <close>
    unlink("bigwrite");
    2df5:	c7 04 24 64 55 00 00 	movl   $0x5564,(%esp)
    2dfc:	e8 99 18 00 00       	call   469a <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2e01:	83 c4 10             	add    $0x10,%esp
    2e04:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    2e0a:	74 44                	je     2e50 <bigwrite+0x100>
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2e0c:	83 ec 08             	sub    $0x8,%esp
    2e0f:	68 02 02 00 00       	push   $0x202
    2e14:	68 64 55 00 00       	push   $0x5564
    2e19:	e8 6c 18 00 00       	call   468a <open>
    if(fd < 0){
    2e1e:	83 c4 10             	add    $0x10,%esp
    2e21:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2e23:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2e25:	0f 89 55 ff ff ff    	jns    2d80 <bigwrite+0x30>
      printf(1, "cannot create bigwrite\n");
    2e2b:	83 ec 08             	sub    $0x8,%esp
    2e2e:	68 6d 55 00 00       	push   $0x556d
    2e33:	6a 01                	push   $0x1
    2e35:	e8 66 19 00 00       	call   47a0 <printf>
      exit(0);
    2e3a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e41:	e8 fc 17 00 00       	call   4642 <exit>
    2e46:	83 c4 10             	add    $0x10,%esp
    2e49:	e9 32 ff ff ff       	jmp    2d80 <bigwrite+0x30>
    2e4e:	66 90                	xchg   %ax,%ax
  printf(1, "bigwrite ok\n");
    2e50:	83 ec 08             	sub    $0x8,%esp
    2e53:	68 97 55 00 00       	push   $0x5597
    2e58:	6a 01                	push   $0x1
    2e5a:	e8 41 19 00 00       	call   47a0 <printf>
}
    2e5f:	83 c4 10             	add    $0x10,%esp
    2e62:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2e65:	5b                   	pop    %ebx
    2e66:	5e                   	pop    %esi
    2e67:	5d                   	pop    %ebp
    2e68:	c3                   	ret    
    2e69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002e70 <bigfile>:
{
    2e70:	55                   	push   %ebp
    2e71:	89 e5                	mov    %esp,%ebp
    2e73:	57                   	push   %edi
    2e74:	56                   	push   %esi
    2e75:	53                   	push   %ebx
    2e76:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigfile test\n");
    2e79:	68 a4 55 00 00       	push   $0x55a4
    2e7e:	6a 01                	push   $0x1
    2e80:	e8 1b 19 00 00       	call   47a0 <printf>
  unlink("bigfile");
    2e85:	c7 04 24 c0 55 00 00 	movl   $0x55c0,(%esp)
    2e8c:	e8 09 18 00 00       	call   469a <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2e91:	5e                   	pop    %esi
    2e92:	5f                   	pop    %edi
    2e93:	68 02 02 00 00       	push   $0x202
    2e98:	68 c0 55 00 00       	push   $0x55c0
    2e9d:	e8 e8 17 00 00       	call   468a <open>
  if(fd < 0){
    2ea2:	83 c4 10             	add    $0x10,%esp
    2ea5:	85 c0                	test   %eax,%eax
  fd = open("bigfile", O_CREATE | O_RDWR);
    2ea7:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2ea9:	0f 88 a1 01 00 00    	js     3050 <bigfile+0x1e0>
{
    2eaf:	31 db                	xor    %ebx,%ebx
    2eb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2eb8:	83 ec 04             	sub    $0x4,%esp
    2ebb:	68 58 02 00 00       	push   $0x258
    2ec0:	53                   	push   %ebx
    2ec1:	68 c0 93 00 00       	push   $0x93c0
    2ec6:	e8 d5 15 00 00       	call   44a0 <memset>
    if(write(fd, buf, 600) != 600){
    2ecb:	83 c4 0c             	add    $0xc,%esp
    2ece:	68 58 02 00 00       	push   $0x258
    2ed3:	68 c0 93 00 00       	push   $0x93c0
    2ed8:	56                   	push   %esi
    2ed9:	e8 8c 17 00 00       	call   466a <write>
    2ede:	83 c4 10             	add    $0x10,%esp
    2ee1:	3d 58 02 00 00       	cmp    $0x258,%eax
    2ee6:	74 1e                	je     2f06 <bigfile+0x96>
      printf(1, "write bigfile failed\n");
    2ee8:	83 ec 08             	sub    $0x8,%esp
    2eeb:	68 c8 55 00 00       	push   $0x55c8
    2ef0:	6a 01                	push   $0x1
    2ef2:	e8 a9 18 00 00       	call   47a0 <printf>
      exit(0);
    2ef7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2efe:	e8 3f 17 00 00       	call   4642 <exit>
    2f03:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 20; i++){
    2f06:	83 c3 01             	add    $0x1,%ebx
    2f09:	83 fb 14             	cmp    $0x14,%ebx
    2f0c:	75 aa                	jne    2eb8 <bigfile+0x48>
  close(fd);
    2f0e:	83 ec 0c             	sub    $0xc,%esp
    2f11:	56                   	push   %esi
    2f12:	e8 5b 17 00 00       	call   4672 <close>
  fd = open("bigfile", 0);
    2f17:	59                   	pop    %ecx
    2f18:	5b                   	pop    %ebx
    2f19:	6a 00                	push   $0x0
    2f1b:	68 c0 55 00 00       	push   $0x55c0
    2f20:	e8 65 17 00 00       	call   468a <open>
  if(fd < 0){
    2f25:	83 c4 10             	add    $0x10,%esp
    2f28:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    2f2a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(fd < 0){
    2f2d:	0f 88 45 01 00 00    	js     3078 <bigfile+0x208>
{
    2f33:	31 f6                	xor    %esi,%esi
    2f35:	31 db                	xor    %ebx,%ebx
    2f37:	eb 51                	jmp    2f8a <bigfile+0x11a>
    2f39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(cc == 0)
    2f40:	0f 84 aa 00 00 00    	je     2ff0 <bigfile+0x180>
    if(cc != 300){
    2f46:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2f4b:	75 79                	jne    2fc6 <bigfile+0x156>
    if(buf[0] != i/2 || buf[299] != i/2){
    2f4d:	0f be 05 c0 93 00 00 	movsbl 0x93c0,%eax
    2f54:	89 d9                	mov    %ebx,%ecx
    2f56:	d1 f9                	sar    %ecx
    2f58:	39 c8                	cmp    %ecx,%eax
    2f5a:	75 0b                	jne    2f67 <bigfile+0xf7>
    2f5c:	0f be 0d eb 94 00 00 	movsbl 0x94eb,%ecx
    2f63:	39 c8                	cmp    %ecx,%eax
    2f65:	74 1e                	je     2f85 <bigfile+0x115>
      printf(1, "read bigfile wrong data\n");
    2f67:	83 ec 08             	sub    $0x8,%esp
    2f6a:	68 1c 56 00 00       	push   $0x561c
    2f6f:	6a 01                	push   $0x1
    2f71:	e8 2a 18 00 00       	call   47a0 <printf>
      exit(0);
    2f76:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f7d:	e8 c0 16 00 00       	call   4642 <exit>
    2f82:	83 c4 10             	add    $0x10,%esp
    total += cc;
    2f85:	01 fe                	add    %edi,%esi
  for(i = 0; ; i++){
    2f87:	83 c3 01             	add    $0x1,%ebx
    cc = read(fd, buf, 300);
    2f8a:	83 ec 04             	sub    $0x4,%esp
    2f8d:	68 2c 01 00 00       	push   $0x12c
    2f92:	68 c0 93 00 00       	push   $0x93c0
    2f97:	ff 75 e4             	pushl  -0x1c(%ebp)
    2f9a:	e8 c3 16 00 00       	call   4662 <read>
    if(cc < 0){
    2f9f:	83 c4 10             	add    $0x10,%esp
    2fa2:	85 c0                	test   %eax,%eax
    cc = read(fd, buf, 300);
    2fa4:	89 c7                	mov    %eax,%edi
    if(cc < 0){
    2fa6:	79 98                	jns    2f40 <bigfile+0xd0>
      printf(1, "read bigfile failed\n");
    2fa8:	83 ec 08             	sub    $0x8,%esp
    2fab:	68 f3 55 00 00       	push   $0x55f3
    2fb0:	6a 01                	push   $0x1
    2fb2:	e8 e9 17 00 00       	call   47a0 <printf>
      exit(0);
    2fb7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fbe:	e8 7f 16 00 00       	call   4642 <exit>
    2fc3:	83 c4 10             	add    $0x10,%esp
      printf(1, "short read bigfile\n");
    2fc6:	83 ec 08             	sub    $0x8,%esp
    2fc9:	68 08 56 00 00       	push   $0x5608
    2fce:	6a 01                	push   $0x1
    2fd0:	e8 cb 17 00 00       	call   47a0 <printf>
      exit(0);
    2fd5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fdc:	e8 61 16 00 00       	call   4642 <exit>
    2fe1:	83 c4 10             	add    $0x10,%esp
    2fe4:	e9 64 ff ff ff       	jmp    2f4d <bigfile+0xdd>
    2fe9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    2ff0:	83 ec 0c             	sub    $0xc,%esp
    2ff3:	ff 75 e4             	pushl  -0x1c(%ebp)
    2ff6:	e8 77 16 00 00       	call   4672 <close>
  if(total != 20*600){
    2ffb:	83 c4 10             	add    $0x10,%esp
    2ffe:	81 fe e0 2e 00 00    	cmp    $0x2ee0,%esi
    3004:	74 1e                	je     3024 <bigfile+0x1b4>
    printf(1, "read bigfile wrong total\n");
    3006:	83 ec 08             	sub    $0x8,%esp
    3009:	68 35 56 00 00       	push   $0x5635
    300e:	6a 01                	push   $0x1
    3010:	e8 8b 17 00 00       	call   47a0 <printf>
    exit(0);
    3015:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    301c:	e8 21 16 00 00       	call   4642 <exit>
    3021:	83 c4 10             	add    $0x10,%esp
  unlink("bigfile");
    3024:	83 ec 0c             	sub    $0xc,%esp
    3027:	68 c0 55 00 00       	push   $0x55c0
    302c:	e8 69 16 00 00       	call   469a <unlink>
  printf(1, "bigfile test ok\n");
    3031:	58                   	pop    %eax
    3032:	5a                   	pop    %edx
    3033:	68 4f 56 00 00       	push   $0x564f
    3038:	6a 01                	push   $0x1
    303a:	e8 61 17 00 00       	call   47a0 <printf>
}
    303f:	83 c4 10             	add    $0x10,%esp
    3042:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3045:	5b                   	pop    %ebx
    3046:	5e                   	pop    %esi
    3047:	5f                   	pop    %edi
    3048:	5d                   	pop    %ebp
    3049:	c3                   	ret    
    304a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "cannot create bigfile");
    3050:	83 ec 08             	sub    $0x8,%esp
    3053:	68 b2 55 00 00       	push   $0x55b2
    3058:	6a 01                	push   $0x1
    305a:	e8 41 17 00 00       	call   47a0 <printf>
    exit(0);
    305f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3066:	e8 d7 15 00 00       	call   4642 <exit>
    306b:	83 c4 10             	add    $0x10,%esp
    306e:	e9 3c fe ff ff       	jmp    2eaf <bigfile+0x3f>
    3073:	90                   	nop
    3074:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "cannot open bigfile\n");
    3078:	83 ec 08             	sub    $0x8,%esp
    307b:	68 de 55 00 00       	push   $0x55de
    3080:	6a 01                	push   $0x1
    3082:	e8 19 17 00 00       	call   47a0 <printf>
    exit(0);
    3087:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    308e:	e8 af 15 00 00       	call   4642 <exit>
    3093:	83 c4 10             	add    $0x10,%esp
    3096:	e9 98 fe ff ff       	jmp    2f33 <bigfile+0xc3>
    309b:	90                   	nop
    309c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000030a0 <fourteen>:
{
    30a0:	55                   	push   %ebp
    30a1:	89 e5                	mov    %esp,%ebp
    30a3:	53                   	push   %ebx
    30a4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fourteen test\n");
    30a7:	68 60 56 00 00       	push   $0x5660
    30ac:	6a 01                	push   $0x1
    30ae:	e8 ed 16 00 00       	call   47a0 <printf>
  if(mkdir("12345678901234") != 0){
    30b3:	c7 04 24 9b 56 00 00 	movl   $0x569b,(%esp)
    30ba:	e8 f3 15 00 00       	call   46b2 <mkdir>
    30bf:	83 c4 10             	add    $0x10,%esp
    30c2:	85 c0                	test   %eax,%eax
    30c4:	0f 85 0e 01 00 00    	jne    31d8 <fourteen+0x138>
  if(mkdir("12345678901234/123456789012345") != 0){
    30ca:	83 ec 0c             	sub    $0xc,%esp
    30cd:	68 58 5e 00 00       	push   $0x5e58
    30d2:	e8 db 15 00 00       	call   46b2 <mkdir>
    30d7:	83 c4 10             	add    $0x10,%esp
    30da:	85 c0                	test   %eax,%eax
    30dc:	0f 85 ce 00 00 00    	jne    31b0 <fourteen+0x110>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    30e2:	83 ec 08             	sub    $0x8,%esp
    30e5:	68 00 02 00 00       	push   $0x200
    30ea:	68 a8 5e 00 00       	push   $0x5ea8
    30ef:	e8 96 15 00 00       	call   468a <open>
  if(fd < 0){
    30f4:	83 c4 10             	add    $0x10,%esp
    30f7:	85 c0                	test   %eax,%eax
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    30f9:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    30fb:	0f 88 27 01 00 00    	js     3228 <fourteen+0x188>
  close(fd);
    3101:	83 ec 0c             	sub    $0xc,%esp
    3104:	53                   	push   %ebx
    3105:	e8 68 15 00 00       	call   4672 <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    310a:	58                   	pop    %eax
    310b:	5a                   	pop    %edx
    310c:	6a 00                	push   $0x0
    310e:	68 18 5f 00 00       	push   $0x5f18
    3113:	e8 72 15 00 00       	call   468a <open>
  if(fd < 0){
    3118:	83 c4 10             	add    $0x10,%esp
    311b:	85 c0                	test   %eax,%eax
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    311d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    311f:	0f 88 db 00 00 00    	js     3200 <fourteen+0x160>
  close(fd);
    3125:	83 ec 0c             	sub    $0xc,%esp
    3128:	53                   	push   %ebx
    3129:	e8 44 15 00 00       	call   4672 <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    312e:	c7 04 24 8c 56 00 00 	movl   $0x568c,(%esp)
    3135:	e8 78 15 00 00       	call   46b2 <mkdir>
    313a:	83 c4 10             	add    $0x10,%esp
    313d:	85 c0                	test   %eax,%eax
    313f:	74 4f                	je     3190 <fourteen+0xf0>
  if(mkdir("123456789012345/12345678901234") == 0){
    3141:	83 ec 0c             	sub    $0xc,%esp
    3144:	68 b4 5f 00 00       	push   $0x5fb4
    3149:	e8 64 15 00 00       	call   46b2 <mkdir>
    314e:	83 c4 10             	add    $0x10,%esp
    3151:	85 c0                	test   %eax,%eax
    3153:	75 1e                	jne    3173 <fourteen+0xd3>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    3155:	83 ec 08             	sub    $0x8,%esp
    3158:	68 d4 5f 00 00       	push   $0x5fd4
    315d:	6a 01                	push   $0x1
    315f:	e8 3c 16 00 00       	call   47a0 <printf>
    exit(0);
    3164:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    316b:	e8 d2 14 00 00       	call   4642 <exit>
    3170:	83 c4 10             	add    $0x10,%esp
  printf(1, "fourteen ok\n");
    3173:	83 ec 08             	sub    $0x8,%esp
    3176:	68 aa 56 00 00       	push   $0x56aa
    317b:	6a 01                	push   $0x1
    317d:	e8 1e 16 00 00       	call   47a0 <printf>
}
    3182:	83 c4 10             	add    $0x10,%esp
    3185:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3188:	c9                   	leave  
    3189:	c3                   	ret    
    318a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    3190:	83 ec 08             	sub    $0x8,%esp
    3193:	68 84 5f 00 00       	push   $0x5f84
    3198:	6a 01                	push   $0x1
    319a:	e8 01 16 00 00       	call   47a0 <printf>
    exit(0);
    319f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31a6:	e8 97 14 00 00       	call   4642 <exit>
    31ab:	83 c4 10             	add    $0x10,%esp
    31ae:	eb 91                	jmp    3141 <fourteen+0xa1>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    31b0:	83 ec 08             	sub    $0x8,%esp
    31b3:	68 78 5e 00 00       	push   $0x5e78
    31b8:	6a 01                	push   $0x1
    31ba:	e8 e1 15 00 00       	call   47a0 <printf>
    exit(0);
    31bf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31c6:	e8 77 14 00 00       	call   4642 <exit>
    31cb:	83 c4 10             	add    $0x10,%esp
    31ce:	e9 0f ff ff ff       	jmp    30e2 <fourteen+0x42>
    31d3:	90                   	nop
    31d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir 12345678901234 failed\n");
    31d8:	83 ec 08             	sub    $0x8,%esp
    31db:	68 6f 56 00 00       	push   $0x566f
    31e0:	6a 01                	push   $0x1
    31e2:	e8 b9 15 00 00       	call   47a0 <printf>
    exit(0);
    31e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31ee:	e8 4f 14 00 00       	call   4642 <exit>
    31f3:	83 c4 10             	add    $0x10,%esp
    31f6:	e9 cf fe ff ff       	jmp    30ca <fourteen+0x2a>
    31fb:	90                   	nop
    31fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    3200:	83 ec 08             	sub    $0x8,%esp
    3203:	68 48 5f 00 00       	push   $0x5f48
    3208:	6a 01                	push   $0x1
    320a:	e8 91 15 00 00       	call   47a0 <printf>
    exit(0);
    320f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3216:	e8 27 14 00 00       	call   4642 <exit>
    321b:	83 c4 10             	add    $0x10,%esp
    321e:	e9 02 ff ff ff       	jmp    3125 <fourteen+0x85>
    3223:	90                   	nop
    3224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    3228:	83 ec 08             	sub    $0x8,%esp
    322b:	68 d8 5e 00 00       	push   $0x5ed8
    3230:	6a 01                	push   $0x1
    3232:	e8 69 15 00 00       	call   47a0 <printf>
    exit(0);
    3237:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    323e:	e8 ff 13 00 00       	call   4642 <exit>
    3243:	83 c4 10             	add    $0x10,%esp
    3246:	e9 b6 fe ff ff       	jmp    3101 <fourteen+0x61>
    324b:	90                   	nop
    324c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003250 <rmdot>:
{
    3250:	55                   	push   %ebp
    3251:	89 e5                	mov    %esp,%ebp
    3253:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    3256:	68 b7 56 00 00       	push   $0x56b7
    325b:	6a 01                	push   $0x1
    325d:	e8 3e 15 00 00       	call   47a0 <printf>
  if(mkdir("dots") != 0){
    3262:	c7 04 24 c3 56 00 00 	movl   $0x56c3,(%esp)
    3269:	e8 44 14 00 00       	call   46b2 <mkdir>
    326e:	83 c4 10             	add    $0x10,%esp
    3271:	85 c0                	test   %eax,%eax
    3273:	0f 85 bf 01 00 00    	jne    3438 <rmdot+0x1e8>
  if(chdir("dots") != 0){
    3279:	83 ec 0c             	sub    $0xc,%esp
    327c:	68 c3 56 00 00       	push   $0x56c3
    3281:	e8 34 14 00 00       	call   46ba <chdir>
    3286:	83 c4 10             	add    $0x10,%esp
    3289:	85 c0                	test   %eax,%eax
    328b:	0f 85 7f 01 00 00    	jne    3410 <rmdot+0x1c0>
  if(unlink(".") == 0){
    3291:	83 ec 0c             	sub    $0xc,%esp
    3294:	68 6e 53 00 00       	push   $0x536e
    3299:	e8 fc 13 00 00       	call   469a <unlink>
    329e:	83 c4 10             	add    $0x10,%esp
    32a1:	85 c0                	test   %eax,%eax
    32a3:	0f 84 3f 01 00 00    	je     33e8 <rmdot+0x198>
  if(unlink("..") == 0){
    32a9:	83 ec 0c             	sub    $0xc,%esp
    32ac:	68 6d 53 00 00       	push   $0x536d
    32b1:	e8 e4 13 00 00       	call   469a <unlink>
    32b6:	83 c4 10             	add    $0x10,%esp
    32b9:	85 c0                	test   %eax,%eax
    32bb:	0f 84 ff 00 00 00    	je     33c0 <rmdot+0x170>
  if(chdir("/") != 0){
    32c1:	83 ec 0c             	sub    $0xc,%esp
    32c4:	68 41 4b 00 00       	push   $0x4b41
    32c9:	e8 ec 13 00 00       	call   46ba <chdir>
    32ce:	83 c4 10             	add    $0x10,%esp
    32d1:	85 c0                	test   %eax,%eax
    32d3:	0f 85 bf 00 00 00    	jne    3398 <rmdot+0x148>
  if(unlink("dots/.") == 0){
    32d9:	83 ec 0c             	sub    $0xc,%esp
    32dc:	68 0b 57 00 00       	push   $0x570b
    32e1:	e8 b4 13 00 00       	call   469a <unlink>
    32e6:	83 c4 10             	add    $0x10,%esp
    32e9:	85 c0                	test   %eax,%eax
    32eb:	0f 84 7f 00 00 00    	je     3370 <rmdot+0x120>
  if(unlink("dots/..") == 0){
    32f1:	83 ec 0c             	sub    $0xc,%esp
    32f4:	68 29 57 00 00       	push   $0x5729
    32f9:	e8 9c 13 00 00       	call   469a <unlink>
    32fe:	83 c4 10             	add    $0x10,%esp
    3301:	85 c0                	test   %eax,%eax
    3303:	74 4b                	je     3350 <rmdot+0x100>
  if(unlink("dots") != 0){
    3305:	83 ec 0c             	sub    $0xc,%esp
    3308:	68 c3 56 00 00       	push   $0x56c3
    330d:	e8 88 13 00 00       	call   469a <unlink>
    3312:	83 c4 10             	add    $0x10,%esp
    3315:	85 c0                	test   %eax,%eax
    3317:	74 1e                	je     3337 <rmdot+0xe7>
    printf(1, "unlink dots failed!\n");
    3319:	83 ec 08             	sub    $0x8,%esp
    331c:	68 49 57 00 00       	push   $0x5749
    3321:	6a 01                	push   $0x1
    3323:	e8 78 14 00 00       	call   47a0 <printf>
    exit(0);
    3328:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    332f:	e8 0e 13 00 00       	call   4642 <exit>
    3334:	83 c4 10             	add    $0x10,%esp
  printf(1, "rmdot ok\n");
    3337:	83 ec 08             	sub    $0x8,%esp
    333a:	68 5e 57 00 00       	push   $0x575e
    333f:	6a 01                	push   $0x1
    3341:	e8 5a 14 00 00       	call   47a0 <printf>
}
    3346:	83 c4 10             	add    $0x10,%esp
    3349:	c9                   	leave  
    334a:	c3                   	ret    
    334b:	90                   	nop
    334c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dots/.. worked!\n");
    3350:	83 ec 08             	sub    $0x8,%esp
    3353:	68 31 57 00 00       	push   $0x5731
    3358:	6a 01                	push   $0x1
    335a:	e8 41 14 00 00       	call   47a0 <printf>
    exit(0);
    335f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3366:	e8 d7 12 00 00       	call   4642 <exit>
    336b:	83 c4 10             	add    $0x10,%esp
    336e:	eb 95                	jmp    3305 <rmdot+0xb5>
    printf(1, "unlink dots/. worked!\n");
    3370:	83 ec 08             	sub    $0x8,%esp
    3373:	68 12 57 00 00       	push   $0x5712
    3378:	6a 01                	push   $0x1
    337a:	e8 21 14 00 00       	call   47a0 <printf>
    exit(0);
    337f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3386:	e8 b7 12 00 00       	call   4642 <exit>
    338b:	83 c4 10             	add    $0x10,%esp
    338e:	e9 5e ff ff ff       	jmp    32f1 <rmdot+0xa1>
    3393:	90                   	nop
    3394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir / failed\n");
    3398:	83 ec 08             	sub    $0x8,%esp
    339b:	68 43 4b 00 00       	push   $0x4b43
    33a0:	6a 01                	push   $0x1
    33a2:	e8 f9 13 00 00       	call   47a0 <printf>
    exit(0);
    33a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33ae:	e8 8f 12 00 00       	call   4642 <exit>
    33b3:	83 c4 10             	add    $0x10,%esp
    33b6:	e9 1e ff ff ff       	jmp    32d9 <rmdot+0x89>
    33bb:	90                   	nop
    33bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "rm .. worked!\n");
    33c0:	83 ec 08             	sub    $0x8,%esp
    33c3:	68 fc 56 00 00       	push   $0x56fc
    33c8:	6a 01                	push   $0x1
    33ca:	e8 d1 13 00 00       	call   47a0 <printf>
    exit(0);
    33cf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33d6:	e8 67 12 00 00       	call   4642 <exit>
    33db:	83 c4 10             	add    $0x10,%esp
    33de:	e9 de fe ff ff       	jmp    32c1 <rmdot+0x71>
    33e3:	90                   	nop
    33e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "rm . worked!\n");
    33e8:	83 ec 08             	sub    $0x8,%esp
    33eb:	68 ee 56 00 00       	push   $0x56ee
    33f0:	6a 01                	push   $0x1
    33f2:	e8 a9 13 00 00       	call   47a0 <printf>
    exit(0);
    33f7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33fe:	e8 3f 12 00 00       	call   4642 <exit>
    3403:	83 c4 10             	add    $0x10,%esp
    3406:	e9 9e fe ff ff       	jmp    32a9 <rmdot+0x59>
    340b:	90                   	nop
    340c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dots failed\n");
    3410:	83 ec 08             	sub    $0x8,%esp
    3413:	68 db 56 00 00       	push   $0x56db
    3418:	6a 01                	push   $0x1
    341a:	e8 81 13 00 00       	call   47a0 <printf>
    exit(0);
    341f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3426:	e8 17 12 00 00       	call   4642 <exit>
    342b:	83 c4 10             	add    $0x10,%esp
    342e:	e9 5e fe ff ff       	jmp    3291 <rmdot+0x41>
    3433:	90                   	nop
    3434:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir dots failed\n");
    3438:	83 ec 08             	sub    $0x8,%esp
    343b:	68 c8 56 00 00       	push   $0x56c8
    3440:	6a 01                	push   $0x1
    3442:	e8 59 13 00 00       	call   47a0 <printf>
    exit(0);
    3447:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    344e:	e8 ef 11 00 00       	call   4642 <exit>
    3453:	83 c4 10             	add    $0x10,%esp
    3456:	e9 1e fe ff ff       	jmp    3279 <rmdot+0x29>
    345b:	90                   	nop
    345c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003460 <dirfile>:
{
    3460:	55                   	push   %ebp
    3461:	89 e5                	mov    %esp,%ebp
    3463:	53                   	push   %ebx
    3464:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    3467:	68 68 57 00 00       	push   $0x5768
    346c:	6a 01                	push   $0x1
    346e:	e8 2d 13 00 00       	call   47a0 <printf>
  fd = open("dirfile", O_CREATE);
    3473:	59                   	pop    %ecx
    3474:	5b                   	pop    %ebx
    3475:	68 00 02 00 00       	push   $0x200
    347a:	68 75 57 00 00       	push   $0x5775
    347f:	e8 06 12 00 00       	call   468a <open>
  if(fd < 0){
    3484:	83 c4 10             	add    $0x10,%esp
    3487:	85 c0                	test   %eax,%eax
  fd = open("dirfile", O_CREATE);
    3489:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    348b:	0f 88 57 02 00 00    	js     36e8 <dirfile+0x288>
  close(fd);
    3491:	83 ec 0c             	sub    $0xc,%esp
    3494:	53                   	push   %ebx
    3495:	e8 d8 11 00 00       	call   4672 <close>
  if(chdir("dirfile") == 0){
    349a:	c7 04 24 75 57 00 00 	movl   $0x5775,(%esp)
    34a1:	e8 14 12 00 00       	call   46ba <chdir>
    34a6:	83 c4 10             	add    $0x10,%esp
    34a9:	85 c0                	test   %eax,%eax
    34ab:	0f 84 0f 02 00 00    	je     36c0 <dirfile+0x260>
  fd = open("dirfile/xx", 0);
    34b1:	83 ec 08             	sub    $0x8,%esp
    34b4:	6a 00                	push   $0x0
    34b6:	68 ae 57 00 00       	push   $0x57ae
    34bb:	e8 ca 11 00 00       	call   468a <open>
  if(fd >= 0){
    34c0:	83 c4 10             	add    $0x10,%esp
    34c3:	85 c0                	test   %eax,%eax
    34c5:	78 1e                	js     34e5 <dirfile+0x85>
    printf(1, "create dirfile/xx succeeded!\n");
    34c7:	83 ec 08             	sub    $0x8,%esp
    34ca:	68 b9 57 00 00       	push   $0x57b9
    34cf:	6a 01                	push   $0x1
    34d1:	e8 ca 12 00 00       	call   47a0 <printf>
    exit(0);
    34d6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34dd:	e8 60 11 00 00       	call   4642 <exit>
    34e2:	83 c4 10             	add    $0x10,%esp
  fd = open("dirfile/xx", O_CREATE);
    34e5:	83 ec 08             	sub    $0x8,%esp
    34e8:	68 00 02 00 00       	push   $0x200
    34ed:	68 ae 57 00 00       	push   $0x57ae
    34f2:	e8 93 11 00 00       	call   468a <open>
  if(fd >= 0){
    34f7:	83 c4 10             	add    $0x10,%esp
    34fa:	85 c0                	test   %eax,%eax
    34fc:	78 1e                	js     351c <dirfile+0xbc>
    printf(1, "create dirfile/xx succeeded!\n");
    34fe:	83 ec 08             	sub    $0x8,%esp
    3501:	68 b9 57 00 00       	push   $0x57b9
    3506:	6a 01                	push   $0x1
    3508:	e8 93 12 00 00       	call   47a0 <printf>
    exit(0);
    350d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3514:	e8 29 11 00 00       	call   4642 <exit>
    3519:	83 c4 10             	add    $0x10,%esp
  if(mkdir("dirfile/xx") == 0){
    351c:	83 ec 0c             	sub    $0xc,%esp
    351f:	68 ae 57 00 00       	push   $0x57ae
    3524:	e8 89 11 00 00       	call   46b2 <mkdir>
    3529:	83 c4 10             	add    $0x10,%esp
    352c:	85 c0                	test   %eax,%eax
    352e:	0f 84 64 01 00 00    	je     3698 <dirfile+0x238>
  if(unlink("dirfile/xx") == 0){
    3534:	83 ec 0c             	sub    $0xc,%esp
    3537:	68 ae 57 00 00       	push   $0x57ae
    353c:	e8 59 11 00 00       	call   469a <unlink>
    3541:	83 c4 10             	add    $0x10,%esp
    3544:	85 c0                	test   %eax,%eax
    3546:	0f 84 24 01 00 00    	je     3670 <dirfile+0x210>
  if(link("README", "dirfile/xx") == 0){
    354c:	83 ec 08             	sub    $0x8,%esp
    354f:	68 ae 57 00 00       	push   $0x57ae
    3554:	68 12 58 00 00       	push   $0x5812
    3559:	e8 4c 11 00 00       	call   46aa <link>
    355e:	83 c4 10             	add    $0x10,%esp
    3561:	85 c0                	test   %eax,%eax
    3563:	0f 84 df 00 00 00    	je     3648 <dirfile+0x1e8>
  if(unlink("dirfile") != 0){
    3569:	83 ec 0c             	sub    $0xc,%esp
    356c:	68 75 57 00 00       	push   $0x5775
    3571:	e8 24 11 00 00       	call   469a <unlink>
    3576:	83 c4 10             	add    $0x10,%esp
    3579:	85 c0                	test   %eax,%eax
    357b:	0f 85 9f 00 00 00    	jne    3620 <dirfile+0x1c0>
  fd = open(".", O_RDWR);
    3581:	83 ec 08             	sub    $0x8,%esp
    3584:	6a 02                	push   $0x2
    3586:	68 6e 53 00 00       	push   $0x536e
    358b:	e8 fa 10 00 00       	call   468a <open>
  if(fd >= 0){
    3590:	83 c4 10             	add    $0x10,%esp
    3593:	85 c0                	test   %eax,%eax
    3595:	78 1e                	js     35b5 <dirfile+0x155>
    printf(1, "open . for writing succeeded!\n");
    3597:	83 ec 08             	sub    $0x8,%esp
    359a:	68 28 60 00 00       	push   $0x6028
    359f:	6a 01                	push   $0x1
    35a1:	e8 fa 11 00 00       	call   47a0 <printf>
    exit(0);
    35a6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35ad:	e8 90 10 00 00       	call   4642 <exit>
    35b2:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    35b5:	83 ec 08             	sub    $0x8,%esp
    35b8:	6a 00                	push   $0x0
    35ba:	68 6e 53 00 00       	push   $0x536e
    35bf:	e8 c6 10 00 00       	call   468a <open>
  if(write(fd, "x", 1) > 0){
    35c4:	83 c4 0c             	add    $0xc,%esp
  fd = open(".", 0);
    35c7:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    35c9:	6a 01                	push   $0x1
    35cb:	68 51 54 00 00       	push   $0x5451
    35d0:	50                   	push   %eax
    35d1:	e8 94 10 00 00       	call   466a <write>
    35d6:	83 c4 10             	add    $0x10,%esp
    35d9:	85 c0                	test   %eax,%eax
    35db:	7e 1e                	jle    35fb <dirfile+0x19b>
    printf(1, "write . succeeded!\n");
    35dd:	83 ec 08             	sub    $0x8,%esp
    35e0:	68 31 58 00 00       	push   $0x5831
    35e5:	6a 01                	push   $0x1
    35e7:	e8 b4 11 00 00       	call   47a0 <printf>
    exit(0);
    35ec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35f3:	e8 4a 10 00 00       	call   4642 <exit>
    35f8:	83 c4 10             	add    $0x10,%esp
  close(fd);
    35fb:	83 ec 0c             	sub    $0xc,%esp
    35fe:	53                   	push   %ebx
    35ff:	e8 6e 10 00 00       	call   4672 <close>
  printf(1, "dir vs file OK\n");
    3604:	58                   	pop    %eax
    3605:	5a                   	pop    %edx
    3606:	68 45 58 00 00       	push   $0x5845
    360b:	6a 01                	push   $0x1
    360d:	e8 8e 11 00 00       	call   47a0 <printf>
}
    3612:	83 c4 10             	add    $0x10,%esp
    3615:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3618:	c9                   	leave  
    3619:	c3                   	ret    
    361a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "unlink dirfile failed!\n");
    3620:	83 ec 08             	sub    $0x8,%esp
    3623:	68 19 58 00 00       	push   $0x5819
    3628:	6a 01                	push   $0x1
    362a:	e8 71 11 00 00       	call   47a0 <printf>
    exit(0);
    362f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3636:	e8 07 10 00 00       	call   4642 <exit>
    363b:	83 c4 10             	add    $0x10,%esp
    363e:	e9 3e ff ff ff       	jmp    3581 <dirfile+0x121>
    3643:	90                   	nop
    3644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link to dirfile/xx succeeded!\n");
    3648:	83 ec 08             	sub    $0x8,%esp
    364b:	68 08 60 00 00       	push   $0x6008
    3650:	6a 01                	push   $0x1
    3652:	e8 49 11 00 00       	call   47a0 <printf>
    exit(0);
    3657:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    365e:	e8 df 0f 00 00       	call   4642 <exit>
    3663:	83 c4 10             	add    $0x10,%esp
    3666:	e9 fe fe ff ff       	jmp    3569 <dirfile+0x109>
    366b:	90                   	nop
    366c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dirfile/xx succeeded!\n");
    3670:	83 ec 08             	sub    $0x8,%esp
    3673:	68 f4 57 00 00       	push   $0x57f4
    3678:	6a 01                	push   $0x1
    367a:	e8 21 11 00 00       	call   47a0 <printf>
    exit(0);
    367f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3686:	e8 b7 0f 00 00       	call   4642 <exit>
    368b:	83 c4 10             	add    $0x10,%esp
    368e:	e9 b9 fe ff ff       	jmp    354c <dirfile+0xec>
    3693:	90                   	nop
    3694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir dirfile/xx succeeded!\n");
    3698:	83 ec 08             	sub    $0x8,%esp
    369b:	68 d7 57 00 00       	push   $0x57d7
    36a0:	6a 01                	push   $0x1
    36a2:	e8 f9 10 00 00       	call   47a0 <printf>
    exit(0);
    36a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    36ae:	e8 8f 0f 00 00       	call   4642 <exit>
    36b3:	83 c4 10             	add    $0x10,%esp
    36b6:	e9 79 fe ff ff       	jmp    3534 <dirfile+0xd4>
    36bb:	90                   	nop
    36bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dirfile succeeded!\n");
    36c0:	83 ec 08             	sub    $0x8,%esp
    36c3:	68 94 57 00 00       	push   $0x5794
    36c8:	6a 01                	push   $0x1
    36ca:	e8 d1 10 00 00       	call   47a0 <printf>
    exit(0);
    36cf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    36d6:	e8 67 0f 00 00       	call   4642 <exit>
    36db:	83 c4 10             	add    $0x10,%esp
    36de:	e9 ce fd ff ff       	jmp    34b1 <dirfile+0x51>
    36e3:	90                   	nop
    36e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create dirfile failed\n");
    36e8:	83 ec 08             	sub    $0x8,%esp
    36eb:	68 7d 57 00 00       	push   $0x577d
    36f0:	6a 01                	push   $0x1
    36f2:	e8 a9 10 00 00       	call   47a0 <printf>
    exit(0);
    36f7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    36fe:	e8 3f 0f 00 00       	call   4642 <exit>
    3703:	83 c4 10             	add    $0x10,%esp
    3706:	e9 86 fd ff ff       	jmp    3491 <dirfile+0x31>
    370b:	90                   	nop
    370c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003710 <iref>:
{
    3710:	55                   	push   %ebp
    3711:	89 e5                	mov    %esp,%ebp
    3713:	53                   	push   %ebx
  printf(1, "empty file name\n");
    3714:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    3719:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    371c:	68 55 58 00 00       	push   $0x5855
    3721:	6a 01                	push   $0x1
    3723:	e8 78 10 00 00       	call   47a0 <printf>
    3728:	83 c4 10             	add    $0x10,%esp
    372b:	e9 94 00 00 00       	jmp    37c4 <iref+0xb4>
    if(chdir("irefd") != 0){
    3730:	83 ec 0c             	sub    $0xc,%esp
    3733:	68 66 58 00 00       	push   $0x5866
    3738:	e8 7d 0f 00 00       	call   46ba <chdir>
    373d:	83 c4 10             	add    $0x10,%esp
    3740:	85 c0                	test   %eax,%eax
    3742:	0f 85 b8 00 00 00    	jne    3800 <iref+0xf0>
    mkdir("");
    3748:	83 ec 0c             	sub    $0xc,%esp
    374b:	68 1b 4f 00 00       	push   $0x4f1b
    3750:	e8 5d 0f 00 00       	call   46b2 <mkdir>
    link("README", "");
    3755:	59                   	pop    %ecx
    3756:	58                   	pop    %eax
    3757:	68 1b 4f 00 00       	push   $0x4f1b
    375c:	68 12 58 00 00       	push   $0x5812
    3761:	e8 44 0f 00 00       	call   46aa <link>
    fd = open("", O_CREATE);
    3766:	58                   	pop    %eax
    3767:	5a                   	pop    %edx
    3768:	68 00 02 00 00       	push   $0x200
    376d:	68 1b 4f 00 00       	push   $0x4f1b
    3772:	e8 13 0f 00 00       	call   468a <open>
    if(fd >= 0)
    3777:	83 c4 10             	add    $0x10,%esp
    377a:	85 c0                	test   %eax,%eax
    377c:	78 0c                	js     378a <iref+0x7a>
      close(fd);
    377e:	83 ec 0c             	sub    $0xc,%esp
    3781:	50                   	push   %eax
    3782:	e8 eb 0e 00 00       	call   4672 <close>
    3787:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    378a:	83 ec 08             	sub    $0x8,%esp
    378d:	68 00 02 00 00       	push   $0x200
    3792:	68 50 54 00 00       	push   $0x5450
    3797:	e8 ee 0e 00 00       	call   468a <open>
    if(fd >= 0)
    379c:	83 c4 10             	add    $0x10,%esp
    379f:	85 c0                	test   %eax,%eax
    37a1:	78 0c                	js     37af <iref+0x9f>
      close(fd);
    37a3:	83 ec 0c             	sub    $0xc,%esp
    37a6:	50                   	push   %eax
    37a7:	e8 c6 0e 00 00       	call   4672 <close>
    37ac:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    37af:	83 ec 0c             	sub    $0xc,%esp
    37b2:	68 50 54 00 00       	push   $0x5450
    37b7:	e8 de 0e 00 00       	call   469a <unlink>
  for(i = 0; i < 50 + 1; i++){
    37bc:	83 c4 10             	add    $0x10,%esp
    37bf:	83 eb 01             	sub    $0x1,%ebx
    37c2:	74 64                	je     3828 <iref+0x118>
    if(mkdir("irefd") != 0){
    37c4:	83 ec 0c             	sub    $0xc,%esp
    37c7:	68 66 58 00 00       	push   $0x5866
    37cc:	e8 e1 0e 00 00       	call   46b2 <mkdir>
    37d1:	83 c4 10             	add    $0x10,%esp
    37d4:	85 c0                	test   %eax,%eax
    37d6:	0f 84 54 ff ff ff    	je     3730 <iref+0x20>
      printf(1, "mkdir irefd failed\n");
    37dc:	83 ec 08             	sub    $0x8,%esp
    37df:	68 6c 58 00 00       	push   $0x586c
    37e4:	6a 01                	push   $0x1
    37e6:	e8 b5 0f 00 00       	call   47a0 <printf>
      exit(0);
    37eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    37f2:	e8 4b 0e 00 00       	call   4642 <exit>
    37f7:	83 c4 10             	add    $0x10,%esp
    37fa:	e9 31 ff ff ff       	jmp    3730 <iref+0x20>
    37ff:	90                   	nop
      printf(1, "chdir irefd failed\n");
    3800:	83 ec 08             	sub    $0x8,%esp
    3803:	68 80 58 00 00       	push   $0x5880
    3808:	6a 01                	push   $0x1
    380a:	e8 91 0f 00 00       	call   47a0 <printf>
      exit(0);
    380f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3816:	e8 27 0e 00 00       	call   4642 <exit>
    381b:	83 c4 10             	add    $0x10,%esp
    381e:	e9 25 ff ff ff       	jmp    3748 <iref+0x38>
    3823:	90                   	nop
    3824:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  chdir("/");
    3828:	83 ec 0c             	sub    $0xc,%esp
    382b:	68 41 4b 00 00       	push   $0x4b41
    3830:	e8 85 0e 00 00       	call   46ba <chdir>
  printf(1, "empty file name OK\n");
    3835:	58                   	pop    %eax
    3836:	5a                   	pop    %edx
    3837:	68 94 58 00 00       	push   $0x5894
    383c:	6a 01                	push   $0x1
    383e:	e8 5d 0f 00 00       	call   47a0 <printf>
}
    3843:	83 c4 10             	add    $0x10,%esp
    3846:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3849:	c9                   	leave  
    384a:	c3                   	ret    
    384b:	90                   	nop
    384c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003850 <forktest>:
{
    3850:	55                   	push   %ebp
    3851:	89 e5                	mov    %esp,%ebp
    3853:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    3854:	31 db                	xor    %ebx,%ebx
{
    3856:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    3859:	68 a8 58 00 00       	push   $0x58a8
    385e:	6a 01                	push   $0x1
    3860:	e8 3b 0f 00 00       	call   47a0 <printf>
    3865:	83 c4 10             	add    $0x10,%esp
    3868:	eb 11                	jmp    387b <forktest+0x2b>
    386a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(n=0; n<1000; n++){
    3870:	83 c3 01             	add    $0x1,%ebx
    3873:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    3879:	74 23                	je     389e <forktest+0x4e>
    pid = fork();
    387b:	e8 ba 0d 00 00       	call   463a <fork>
    if(pid < 0)
    3880:	85 c0                	test   %eax,%eax
    3882:	78 3c                	js     38c0 <forktest+0x70>
    if(pid == 0)
    3884:	75 ea                	jne    3870 <forktest+0x20>
      exit(0);
    3886:	83 ec 0c             	sub    $0xc,%esp
  for(n=0; n<1000; n++){
    3889:	83 c3 01             	add    $0x1,%ebx
      exit(0);
    388c:	6a 00                	push   $0x0
    388e:	e8 af 0d 00 00       	call   4642 <exit>
    3893:	83 c4 10             	add    $0x10,%esp
  for(n=0; n<1000; n++){
    3896:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    389c:	75 dd                	jne    387b <forktest+0x2b>
    printf(1, "fork claimed to work 1000 times!\n");
    389e:	83 ec 08             	sub    $0x8,%esp
    38a1:	68 48 60 00 00       	push   $0x6048
    38a6:	6a 01                	push   $0x1
    38a8:	e8 f3 0e 00 00       	call   47a0 <printf>
    exit(0);
    38ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    38b4:	e8 89 0d 00 00       	call   4642 <exit>
    38b9:	83 c4 10             	add    $0x10,%esp
    38bc:	eb 17                	jmp    38d5 <forktest+0x85>
    38be:	66 90                	xchg   %ax,%ax
  for(; n > 0; n--){
    38c0:	85 db                	test   %ebx,%ebx
    38c2:	75 11                	jne    38d5 <forktest+0x85>
    38c4:	eb 4a                	jmp    3910 <forktest+0xc0>
    38c6:	8d 76 00             	lea    0x0(%esi),%esi
    38c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    38d0:	83 eb 01             	sub    $0x1,%ebx
    38d3:	74 3b                	je     3910 <forktest+0xc0>
    if(wait(0x0) < 0){
    38d5:	83 ec 0c             	sub    $0xc,%esp
    38d8:	6a 00                	push   $0x0
    38da:	e8 6b 0d 00 00       	call   464a <wait>
    38df:	83 c4 10             	add    $0x10,%esp
    38e2:	85 c0                	test   %eax,%eax
    38e4:	79 ea                	jns    38d0 <forktest+0x80>
      printf(1, "wait stopped early\n");
    38e6:	83 ec 08             	sub    $0x8,%esp
    38e9:	68 b3 58 00 00       	push   $0x58b3
    38ee:	6a 01                	push   $0x1
    38f0:	e8 ab 0e 00 00       	call   47a0 <printf>
      exit(0);
    38f5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    38fc:	e8 41 0d 00 00       	call   4642 <exit>
    3901:	83 c4 10             	add    $0x10,%esp
  for(; n > 0; n--){
    3904:	83 eb 01             	sub    $0x1,%ebx
    3907:	75 cc                	jne    38d5 <forktest+0x85>
    3909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  if(wait(0x0) != -1){
    3910:	83 ec 0c             	sub    $0xc,%esp
    3913:	6a 00                	push   $0x0
    3915:	e8 30 0d 00 00       	call   464a <wait>
    391a:	83 c4 10             	add    $0x10,%esp
    391d:	83 f8 ff             	cmp    $0xffffffff,%eax
    3920:	74 1e                	je     3940 <forktest+0xf0>
    printf(1, "wait got too many\n");
    3922:	83 ec 08             	sub    $0x8,%esp
    3925:	68 c7 58 00 00       	push   $0x58c7
    392a:	6a 01                	push   $0x1
    392c:	e8 6f 0e 00 00       	call   47a0 <printf>
    exit(0);
    3931:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3938:	e8 05 0d 00 00       	call   4642 <exit>
    393d:	83 c4 10             	add    $0x10,%esp
  printf(1, "fork test OK\n");
    3940:	83 ec 08             	sub    $0x8,%esp
    3943:	68 da 58 00 00       	push   $0x58da
    3948:	6a 01                	push   $0x1
    394a:	e8 51 0e 00 00       	call   47a0 <printf>
}
    394f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3952:	c9                   	leave  
    3953:	c3                   	ret    
    3954:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    395a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003960 <sbrktest>:
{
    3960:	55                   	push   %ebp
    3961:	89 e5                	mov    %esp,%ebp
    3963:	57                   	push   %edi
    3964:	56                   	push   %esi
    3965:	53                   	push   %ebx
  for(i = 0; i < 5000; i++){
    3966:	31 ff                	xor    %edi,%edi
{
    3968:	83 ec 64             	sub    $0x64,%esp
  printf(stdout, "sbrk test\n");
    396b:	68 e8 58 00 00       	push   $0x58e8
    3970:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3976:	e8 25 0e 00 00       	call   47a0 <printf>
  oldbrk = sbrk(0);
    397b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3982:	e8 4b 0d 00 00       	call   46d2 <sbrk>
  a = sbrk(0);
    3987:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    398e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    3991:	e8 3c 0d 00 00       	call   46d2 <sbrk>
    3996:	83 c4 10             	add    $0x10,%esp
    3999:	89 c3                	mov    %eax,%ebx
    399b:	90                   	nop
    399c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    b = sbrk(1);
    39a0:	83 ec 0c             	sub    $0xc,%esp
    39a3:	6a 01                	push   $0x1
    39a5:	e8 28 0d 00 00       	call   46d2 <sbrk>
    if(b != a){
    39aa:	83 c4 10             	add    $0x10,%esp
    39ad:	39 d8                	cmp    %ebx,%eax
    b = sbrk(1);
    39af:	89 c6                	mov    %eax,%esi
    if(b != a){
    39b1:	74 23                	je     39d6 <sbrktest+0x76>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    39b3:	83 ec 0c             	sub    $0xc,%esp
    39b6:	50                   	push   %eax
    39b7:	53                   	push   %ebx
    39b8:	57                   	push   %edi
    39b9:	68 f3 58 00 00       	push   $0x58f3
    39be:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    39c4:	e8 d7 0d 00 00       	call   47a0 <printf>
      exit(0);
    39c9:	83 c4 14             	add    $0x14,%esp
    39cc:	6a 00                	push   $0x0
    39ce:	e8 6f 0c 00 00       	call   4642 <exit>
    39d3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 5000; i++){
    39d6:	83 c7 01             	add    $0x1,%edi
    *b = 1;
    39d9:	c6 06 01             	movb   $0x1,(%esi)
    a = b + 1;
    39dc:	8d 5e 01             	lea    0x1(%esi),%ebx
  for(i = 0; i < 5000; i++){
    39df:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    39e5:	75 b9                	jne    39a0 <sbrktest+0x40>
  pid = fork();
    39e7:	e8 4e 0c 00 00       	call   463a <fork>
    39ec:	83 c6 02             	add    $0x2,%esi
  if(pid < 0){
    39ef:	85 c0                	test   %eax,%eax
  pid = fork();
    39f1:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    39f3:	0f 88 67 03 00 00    	js     3d60 <sbrktest+0x400>
  c = sbrk(1);
    39f9:	83 ec 0c             	sub    $0xc,%esp
    39fc:	6a 01                	push   $0x1
    39fe:	e8 cf 0c 00 00       	call   46d2 <sbrk>
  c = sbrk(1);
    3a03:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a0a:	e8 c3 0c 00 00       	call   46d2 <sbrk>
  if(c != a + 1){
    3a0f:	83 c4 10             	add    $0x10,%esp
    3a12:	39 c6                	cmp    %eax,%esi
    3a14:	74 22                	je     3a38 <sbrktest+0xd8>
    printf(stdout, "sbrk test failed post-fork\n");
    3a16:	83 ec 08             	sub    $0x8,%esp
    3a19:	68 25 59 00 00       	push   $0x5925
    3a1e:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3a24:	e8 77 0d 00 00       	call   47a0 <printf>
    exit(0);
    3a29:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a30:	e8 0d 0c 00 00       	call   4642 <exit>
    3a35:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
    3a38:	85 ff                	test   %edi,%edi
    3a3a:	75 0d                	jne    3a49 <sbrktest+0xe9>
    exit(0);
    3a3c:	83 ec 0c             	sub    $0xc,%esp
    3a3f:	6a 00                	push   $0x0
    3a41:	e8 fc 0b 00 00       	call   4642 <exit>
    3a46:	83 c4 10             	add    $0x10,%esp
  wait(0x0);
    3a49:	83 ec 0c             	sub    $0xc,%esp
    3a4c:	6a 00                	push   $0x0
    3a4e:	e8 f7 0b 00 00       	call   464a <wait>
  a = sbrk(0);
    3a53:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a5a:	e8 73 0c 00 00       	call   46d2 <sbrk>
    3a5f:	89 c6                	mov    %eax,%esi
  amt = (BIG) - (uint)a;
    3a61:	b8 00 00 40 06       	mov    $0x6400000,%eax
    3a66:	29 f0                	sub    %esi,%eax
  p = sbrk(amt);
    3a68:	89 04 24             	mov    %eax,(%esp)
    3a6b:	e8 62 0c 00 00       	call   46d2 <sbrk>
  if (p != a) {
    3a70:	83 c4 10             	add    $0x10,%esp
    3a73:	39 c6                	cmp    %eax,%esi
    3a75:	74 22                	je     3a99 <sbrktest+0x139>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    3a77:	83 ec 08             	sub    $0x8,%esp
    3a7a:	68 6c 60 00 00       	push   $0x606c
    3a7f:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3a85:	e8 16 0d 00 00       	call   47a0 <printf>
    exit(0);
    3a8a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a91:	e8 ac 0b 00 00       	call   4642 <exit>
    3a96:	83 c4 10             	add    $0x10,%esp
  a = sbrk(0);
    3a99:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    3a9c:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    3aa3:	6a 00                	push   $0x0
    3aa5:	e8 28 0c 00 00       	call   46d2 <sbrk>
  c = sbrk(-4096);
    3aaa:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    3ab1:	89 c6                	mov    %eax,%esi
  c = sbrk(-4096);
    3ab3:	e8 1a 0c 00 00       	call   46d2 <sbrk>
  if(c == (char*)0xffffffff){
    3ab8:	83 c4 10             	add    $0x10,%esp
    3abb:	83 f8 ff             	cmp    $0xffffffff,%eax
    3abe:	0f 84 e3 02 00 00    	je     3da7 <sbrktest+0x447>
  c = sbrk(0);
    3ac4:	83 ec 0c             	sub    $0xc,%esp
    3ac7:	6a 00                	push   $0x0
    3ac9:	e8 04 0c 00 00       	call   46d2 <sbrk>
  if(c != a - 4096){
    3ace:	8d 96 00 f0 ff ff    	lea    -0x1000(%esi),%edx
    3ad4:	83 c4 10             	add    $0x10,%esp
    3ad7:	39 d0                	cmp    %edx,%eax
    3ad9:	74 21                	je     3afc <sbrktest+0x19c>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3adb:	50                   	push   %eax
    3adc:	56                   	push   %esi
    3add:	68 ac 60 00 00       	push   $0x60ac
    3ae2:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3ae8:	e8 b3 0c 00 00       	call   47a0 <printf>
    exit(0);
    3aed:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3af4:	e8 49 0b 00 00       	call   4642 <exit>
    3af9:	83 c4 10             	add    $0x10,%esp
  a = sbrk(0);
    3afc:	83 ec 0c             	sub    $0xc,%esp
    3aff:	6a 00                	push   $0x0
    3b01:	e8 cc 0b 00 00       	call   46d2 <sbrk>
    3b06:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    3b08:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    3b0f:	e8 be 0b 00 00       	call   46d2 <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3b14:	83 c4 10             	add    $0x10,%esp
    3b17:	39 c6                	cmp    %eax,%esi
  c = sbrk(4096);
    3b19:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    3b1b:	0f 84 1e 02 00 00    	je     3d3f <sbrktest+0x3df>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    3b21:	57                   	push   %edi
    3b22:	56                   	push   %esi
    3b23:	68 e4 60 00 00       	push   $0x60e4
    3b28:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3b2e:	e8 6d 0c 00 00       	call   47a0 <printf>
    exit(0);
    3b33:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b3a:	e8 03 0b 00 00       	call   4642 <exit>
    3b3f:	83 c4 10             	add    $0x10,%esp
  if(*lastaddr == 99){
    3b42:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    3b49:	0f 84 c3 02 00 00    	je     3e12 <sbrktest+0x4b2>
  a = sbrk(0);
    3b4f:	83 ec 0c             	sub    $0xc,%esp
    3b52:	6a 00                	push   $0x0
    3b54:	e8 79 0b 00 00       	call   46d2 <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    3b59:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    3b60:	89 c6                	mov    %eax,%esi
  c = sbrk(-(sbrk(0) - oldbrk));
    3b62:	e8 6b 0b 00 00       	call   46d2 <sbrk>
    3b67:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    3b6a:	29 c1                	sub    %eax,%ecx
    3b6c:	89 0c 24             	mov    %ecx,(%esp)
    3b6f:	e8 5e 0b 00 00       	call   46d2 <sbrk>
  if(c != a){
    3b74:	83 c4 10             	add    $0x10,%esp
    3b77:	39 c6                	cmp    %eax,%esi
    3b79:	74 21                	je     3b9c <sbrktest+0x23c>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3b7b:	50                   	push   %eax
    3b7c:	56                   	push   %esi
    3b7d:	68 3c 61 00 00       	push   $0x613c
    3b82:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3b88:	e8 13 0c 00 00       	call   47a0 <printf>
    exit(0);
    3b8d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b94:	e8 a9 0a 00 00       	call   4642 <exit>
    3b99:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 5000; i++){
    3b9c:	be 00 00 00 80       	mov    $0x80000000,%esi
    3ba1:	eb 49                	jmp    3bec <sbrktest+0x28c>
    if(pid == 0){
    3ba3:	75 2c                	jne    3bd1 <sbrktest+0x271>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3ba5:	0f be 06             	movsbl (%esi),%eax
    3ba8:	50                   	push   %eax
    3ba9:	56                   	push   %esi
    3baa:	68 5c 59 00 00       	push   $0x595c
    3baf:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3bb5:	e8 e6 0b 00 00       	call   47a0 <printf>
      kill(ppid);
    3bba:	89 3c 24             	mov    %edi,(%esp)
    3bbd:	e8 b8 0a 00 00       	call   467a <kill>
      exit(0);
    3bc2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3bc9:	e8 74 0a 00 00       	call   4642 <exit>
    3bce:	83 c4 10             	add    $0x10,%esp
    wait(0x0);
    3bd1:	83 ec 0c             	sub    $0xc,%esp
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3bd4:	81 c6 50 c3 00 00    	add    $0xc350,%esi
    wait(0x0);
    3bda:	6a 00                	push   $0x0
    3bdc:	e8 69 0a 00 00       	call   464a <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3be1:	83 c4 10             	add    $0x10,%esp
    3be4:	81 fe 80 84 1e 80    	cmp    $0x801e8480,%esi
    3bea:	74 34                	je     3c20 <sbrktest+0x2c0>
    ppid = getpid();
    3bec:	e8 d9 0a 00 00       	call   46ca <getpid>
    3bf1:	89 c7                	mov    %eax,%edi
    pid = fork();
    3bf3:	e8 42 0a 00 00       	call   463a <fork>
    if(pid < 0){
    3bf8:	85 c0                	test   %eax,%eax
    3bfa:	79 a7                	jns    3ba3 <sbrktest+0x243>
      printf(stdout, "fork failed\n");
    3bfc:	83 ec 08             	sub    $0x8,%esp
    3bff:	68 39 5a 00 00       	push   $0x5a39
    3c04:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3c0a:	e8 91 0b 00 00       	call   47a0 <printf>
      exit(0);
    3c0f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c16:	e8 27 0a 00 00       	call   4642 <exit>
    3c1b:	83 c4 10             	add    $0x10,%esp
    3c1e:	eb b1                	jmp    3bd1 <sbrktest+0x271>
  if(pipe(fds) != 0){
    3c20:	8d 45 b8             	lea    -0x48(%ebp),%eax
    3c23:	83 ec 0c             	sub    $0xc,%esp
    3c26:	50                   	push   %eax
    3c27:	e8 2e 0a 00 00       	call   465a <pipe>
    3c2c:	83 c4 10             	add    $0x10,%esp
    3c2f:	85 c0                	test   %eax,%eax
    3c31:	74 1e                	je     3c51 <sbrktest+0x2f1>
    printf(1, "pipe() failed\n");
    3c33:	83 ec 08             	sub    $0x8,%esp
    3c36:	68 31 4e 00 00       	push   $0x4e31
    3c3b:	6a 01                	push   $0x1
    3c3d:	e8 5e 0b 00 00       	call   47a0 <printf>
    exit(0);
    3c42:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c49:	e8 f4 09 00 00       	call   4642 <exit>
    3c4e:	83 c4 10             	add    $0x10,%esp
    3c51:	8d 75 c0             	lea    -0x40(%ebp),%esi
  for(i = 0; i < 5000; i++){
    3c54:	89 f7                	mov    %esi,%edi
    3c56:	eb 23                	jmp    3c7b <sbrktest+0x31b>
    if(pids[i] != -1)
    3c58:	83 f8 ff             	cmp    $0xffffffff,%eax
    3c5b:	74 14                	je     3c71 <sbrktest+0x311>
      read(fds[0], &scratch, 1);
    3c5d:	8d 45 b7             	lea    -0x49(%ebp),%eax
    3c60:	83 ec 04             	sub    $0x4,%esp
    3c63:	6a 01                	push   $0x1
    3c65:	50                   	push   %eax
    3c66:	ff 75 b8             	pushl  -0x48(%ebp)
    3c69:	e8 f4 09 00 00       	call   4662 <read>
    3c6e:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3c71:	8d 45 e8             	lea    -0x18(%ebp),%eax
    3c74:	83 c7 04             	add    $0x4,%edi
    3c77:	39 c7                	cmp    %eax,%edi
    3c79:	74 4f                	je     3cca <sbrktest+0x36a>
    if((pids[i] = fork()) == 0){
    3c7b:	e8 ba 09 00 00       	call   463a <fork>
    3c80:	85 c0                	test   %eax,%eax
    3c82:	89 07                	mov    %eax,(%edi)
    3c84:	75 d2                	jne    3c58 <sbrktest+0x2f8>
      sbrk(BIG - (uint)sbrk(0));
    3c86:	83 ec 0c             	sub    $0xc,%esp
    3c89:	6a 00                	push   $0x0
    3c8b:	e8 42 0a 00 00       	call   46d2 <sbrk>
    3c90:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3c95:	29 c2                	sub    %eax,%edx
    3c97:	89 14 24             	mov    %edx,(%esp)
    3c9a:	e8 33 0a 00 00       	call   46d2 <sbrk>
      write(fds[1], "x", 1);
    3c9f:	83 c4 0c             	add    $0xc,%esp
    3ca2:	6a 01                	push   $0x1
    3ca4:	68 51 54 00 00       	push   $0x5451
    3ca9:	ff 75 bc             	pushl  -0x44(%ebp)
    3cac:	e8 b9 09 00 00       	call   466a <write>
    3cb1:	83 c4 10             	add    $0x10,%esp
    3cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      for(;;) sleep(1000);
    3cb8:	83 ec 0c             	sub    $0xc,%esp
    3cbb:	68 e8 03 00 00       	push   $0x3e8
    3cc0:	e8 15 0a 00 00       	call   46da <sleep>
    3cc5:	83 c4 10             	add    $0x10,%esp
    3cc8:	eb ee                	jmp    3cb8 <sbrktest+0x358>
  c = sbrk(4096);
    3cca:	83 ec 0c             	sub    $0xc,%esp
    3ccd:	68 00 10 00 00       	push   $0x1000
    3cd2:	e8 fb 09 00 00       	call   46d2 <sbrk>
    3cd7:	83 c4 10             	add    $0x10,%esp
    3cda:	89 c3                	mov    %eax,%ebx
    if(pids[i] == -1)
    3cdc:	8b 06                	mov    (%esi),%eax
    3cde:	83 f8 ff             	cmp    $0xffffffff,%eax
    3ce1:	74 18                	je     3cfb <sbrktest+0x39b>
    kill(pids[i]);
    3ce3:	83 ec 0c             	sub    $0xc,%esp
    3ce6:	50                   	push   %eax
    3ce7:	e8 8e 09 00 00       	call   467a <kill>
    wait(0x0);
    3cec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3cf3:	e8 52 09 00 00       	call   464a <wait>
    3cf8:	83 c4 10             	add    $0x10,%esp
    3cfb:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3cfe:	39 f7                	cmp    %esi,%edi
    3d00:	75 da                	jne    3cdc <sbrktest+0x37c>
  if(c == (char*)0xffffffff){
    3d02:	83 fb ff             	cmp    $0xffffffff,%ebx
    3d05:	0f 84 e1 00 00 00    	je     3dec <sbrktest+0x48c>
  if(sbrk(0) > oldbrk)
    3d0b:	83 ec 0c             	sub    $0xc,%esp
    3d0e:	6a 00                	push   $0x0
    3d10:	e8 bd 09 00 00       	call   46d2 <sbrk>
    3d15:	83 c4 10             	add    $0x10,%esp
    3d18:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    3d1b:	0f 87 ac 00 00 00    	ja     3dcd <sbrktest+0x46d>
  printf(stdout, "sbrk test OK\n");
    3d21:	83 ec 08             	sub    $0x8,%esp
    3d24:	68 90 59 00 00       	push   $0x5990
    3d29:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3d2f:	e8 6c 0a 00 00       	call   47a0 <printf>
}
    3d34:	83 c4 10             	add    $0x10,%esp
    3d37:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3d3a:	5b                   	pop    %ebx
    3d3b:	5e                   	pop    %esi
    3d3c:	5f                   	pop    %edi
    3d3d:	5d                   	pop    %ebp
    3d3e:	c3                   	ret    
  if(c != a || sbrk(0) != a + 4096){
    3d3f:	83 ec 0c             	sub    $0xc,%esp
    3d42:	6a 00                	push   $0x0
    3d44:	e8 89 09 00 00       	call   46d2 <sbrk>
    3d49:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    3d4f:	83 c4 10             	add    $0x10,%esp
    3d52:	39 d0                	cmp    %edx,%eax
    3d54:	0f 85 c7 fd ff ff    	jne    3b21 <sbrktest+0x1c1>
    3d5a:	e9 e3 fd ff ff       	jmp    3b42 <sbrktest+0x1e2>
    3d5f:	90                   	nop
    printf(stdout, "sbrk test fork failed\n");
    3d60:	83 ec 08             	sub    $0x8,%esp
    3d63:	68 0e 59 00 00       	push   $0x590e
    3d68:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3d6e:	e8 2d 0a 00 00       	call   47a0 <printf>
    exit(0);
    3d73:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d7a:	e8 c3 08 00 00       	call   4642 <exit>
  c = sbrk(1);
    3d7f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3d86:	e8 47 09 00 00       	call   46d2 <sbrk>
  c = sbrk(1);
    3d8b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3d92:	e8 3b 09 00 00       	call   46d2 <sbrk>
  if(c != a + 1){
    3d97:	83 c4 10             	add    $0x10,%esp
    3d9a:	39 c6                	cmp    %eax,%esi
    3d9c:	0f 85 74 fc ff ff    	jne    3a16 <sbrktest+0xb6>
    3da2:	e9 a2 fc ff ff       	jmp    3a49 <sbrktest+0xe9>
    printf(stdout, "sbrk could not deallocate\n");
    3da7:	51                   	push   %ecx
    3da8:	51                   	push   %ecx
    3da9:	68 41 59 00 00       	push   $0x5941
    3dae:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3db4:	e8 e7 09 00 00       	call   47a0 <printf>
    exit(0);
    3db9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3dc0:	e8 7d 08 00 00       	call   4642 <exit>
    3dc5:	83 c4 10             	add    $0x10,%esp
    3dc8:	e9 f7 fc ff ff       	jmp    3ac4 <sbrktest+0x164>
    sbrk(-(sbrk(0) - oldbrk));
    3dcd:	83 ec 0c             	sub    $0xc,%esp
    3dd0:	6a 00                	push   $0x0
    3dd2:	e8 fb 08 00 00       	call   46d2 <sbrk>
    3dd7:	8b 5d a4             	mov    -0x5c(%ebp),%ebx
    3dda:	29 c3                	sub    %eax,%ebx
    3ddc:	89 1c 24             	mov    %ebx,(%esp)
    3ddf:	e8 ee 08 00 00       	call   46d2 <sbrk>
    3de4:	83 c4 10             	add    $0x10,%esp
    3de7:	e9 35 ff ff ff       	jmp    3d21 <sbrktest+0x3c1>
    printf(stdout, "failed sbrk leaked memory\n");
    3dec:	50                   	push   %eax
    3ded:	50                   	push   %eax
    3dee:	68 75 59 00 00       	push   $0x5975
    3df3:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3df9:	e8 a2 09 00 00       	call   47a0 <printf>
    exit(0);
    3dfe:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e05:	e8 38 08 00 00       	call   4642 <exit>
    3e0a:	83 c4 10             	add    $0x10,%esp
    3e0d:	e9 f9 fe ff ff       	jmp    3d0b <sbrktest+0x3ab>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    3e12:	52                   	push   %edx
    3e13:	52                   	push   %edx
    3e14:	68 0c 61 00 00       	push   $0x610c
    3e19:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3e1f:	e8 7c 09 00 00       	call   47a0 <printf>
    exit(0);
    3e24:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e2b:	e8 12 08 00 00       	call   4642 <exit>
    3e30:	83 c4 10             	add    $0x10,%esp
    3e33:	e9 17 fd ff ff       	jmp    3b4f <sbrktest+0x1ef>
    3e38:	90                   	nop
    3e39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003e40 <validateint>:
{
    3e40:	55                   	push   %ebp
    3e41:	89 e5                	mov    %esp,%ebp
}
    3e43:	5d                   	pop    %ebp
    3e44:	c3                   	ret    
    3e45:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3e49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003e50 <validatetest>:
{
    3e50:	55                   	push   %ebp
    3e51:	89 e5                	mov    %esp,%ebp
    3e53:	56                   	push   %esi
    3e54:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    3e55:	31 db                	xor    %ebx,%ebx
  printf(stdout, "validate test\n");
    3e57:	83 ec 08             	sub    $0x8,%esp
    3e5a:	68 9e 59 00 00       	push   $0x599e
    3e5f:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3e65:	e8 36 09 00 00       	call   47a0 <printf>
    3e6a:	83 c4 10             	add    $0x10,%esp
    3e6d:	eb 70                	jmp    3edf <validatetest+0x8f>
    3e6f:	90                   	nop
    sleep(0);
    3e70:	83 ec 0c             	sub    $0xc,%esp
    3e73:	6a 00                	push   $0x0
    3e75:	e8 60 08 00 00       	call   46da <sleep>
    sleep(0);
    3e7a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e81:	e8 54 08 00 00       	call   46da <sleep>
    kill(pid);
    3e86:	89 34 24             	mov    %esi,(%esp)
    3e89:	e8 ec 07 00 00       	call   467a <kill>
    wait(0x0);
    3e8e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e95:	e8 b0 07 00 00       	call   464a <wait>
    if(link("nosuchfile", (char*)p) != -1){
    3e9a:	58                   	pop    %eax
    3e9b:	5a                   	pop    %edx
    3e9c:	53                   	push   %ebx
    3e9d:	68 ad 59 00 00       	push   $0x59ad
    3ea2:	e8 03 08 00 00       	call   46aa <link>
    3ea7:	83 c4 10             	add    $0x10,%esp
    3eaa:	83 f8 ff             	cmp    $0xffffffff,%eax
    3ead:	74 22                	je     3ed1 <validatetest+0x81>
      printf(stdout, "link should not succeed\n");
    3eaf:	83 ec 08             	sub    $0x8,%esp
    3eb2:	68 b8 59 00 00       	push   $0x59b8
    3eb7:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3ebd:	e8 de 08 00 00       	call   47a0 <printf>
      exit(0);
    3ec2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ec9:	e8 74 07 00 00       	call   4642 <exit>
    3ece:	83 c4 10             	add    $0x10,%esp
  for(p = 0; p <= (uint)hi; p += 4096){
    3ed1:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3ed7:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    3edd:	74 21                	je     3f00 <validatetest+0xb0>
    if((pid = fork()) == 0){
    3edf:	e8 56 07 00 00       	call   463a <fork>
    3ee4:	85 c0                	test   %eax,%eax
    3ee6:	89 c6                	mov    %eax,%esi
    3ee8:	75 86                	jne    3e70 <validatetest+0x20>
      exit(0);
    3eea:	83 ec 0c             	sub    $0xc,%esp
    3eed:	6a 00                	push   $0x0
    3eef:	e8 4e 07 00 00       	call   4642 <exit>
    3ef4:	83 c4 10             	add    $0x10,%esp
    3ef7:	e9 74 ff ff ff       	jmp    3e70 <validatetest+0x20>
    3efc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  printf(stdout, "validate ok\n");
    3f00:	83 ec 08             	sub    $0x8,%esp
    3f03:	68 d1 59 00 00       	push   $0x59d1
    3f08:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3f0e:	e8 8d 08 00 00       	call   47a0 <printf>
}
    3f13:	83 c4 10             	add    $0x10,%esp
    3f16:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3f19:	5b                   	pop    %ebx
    3f1a:	5e                   	pop    %esi
    3f1b:	5d                   	pop    %ebp
    3f1c:	c3                   	ret    
    3f1d:	8d 76 00             	lea    0x0(%esi),%esi

00003f20 <bsstest>:
{
    3f20:	55                   	push   %ebp
    3f21:	89 e5                	mov    %esp,%ebp
    3f23:	53                   	push   %ebx
  for(i = 0; i < sizeof(uninit); i++){
    3f24:	31 db                	xor    %ebx,%ebx
{
    3f26:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "bss test\n");
    3f29:	68 de 59 00 00       	push   $0x59de
    3f2e:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3f34:	e8 67 08 00 00       	call   47a0 <printf>
    3f39:	a1 d0 6b 00 00       	mov    0x6bd0,%eax
    3f3e:	83 c4 10             	add    $0x10,%esp
    3f41:	eb 10                	jmp    3f53 <bsstest+0x33>
    3f43:	90                   	nop
    3f44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < sizeof(uninit); i++){
    3f48:	83 c3 01             	add    $0x1,%ebx
    3f4b:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    3f51:	74 36                	je     3f89 <bsstest+0x69>
    if(uninit[i] != '\0'){
    3f53:	80 bb a0 6c 00 00 00 	cmpb   $0x0,0x6ca0(%ebx)
    3f5a:	74 ec                	je     3f48 <bsstest+0x28>
      printf(stdout, "bss test failed\n");
    3f5c:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < sizeof(uninit); i++){
    3f5f:	83 c3 01             	add    $0x1,%ebx
      printf(stdout, "bss test failed\n");
    3f62:	68 e8 59 00 00       	push   $0x59e8
    3f67:	50                   	push   %eax
    3f68:	e8 33 08 00 00       	call   47a0 <printf>
      exit(0);
    3f6d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3f74:	e8 c9 06 00 00       	call   4642 <exit>
    3f79:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(uninit); i++){
    3f7c:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    3f82:	a1 d0 6b 00 00       	mov    0x6bd0,%eax
    3f87:	75 ca                	jne    3f53 <bsstest+0x33>
  printf(stdout, "bss test ok\n");
    3f89:	83 ec 08             	sub    $0x8,%esp
    3f8c:	68 f9 59 00 00       	push   $0x59f9
    3f91:	50                   	push   %eax
    3f92:	e8 09 08 00 00       	call   47a0 <printf>
}
    3f97:	83 c4 10             	add    $0x10,%esp
    3f9a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3f9d:	c9                   	leave  
    3f9e:	c3                   	ret    
    3f9f:	90                   	nop

00003fa0 <bigargtest>:
{
    3fa0:	55                   	push   %ebp
    3fa1:	89 e5                	mov    %esp,%ebp
    3fa3:	53                   	push   %ebx
    3fa4:	83 ec 10             	sub    $0x10,%esp
  unlink("bigarg-ok");
    3fa7:	68 06 5a 00 00       	push   $0x5a06
    3fac:	e8 e9 06 00 00       	call   469a <unlink>
  pid = fork();
    3fb1:	e8 84 06 00 00       	call   463a <fork>
  if(pid == 0){
    3fb6:	83 c4 10             	add    $0x10,%esp
    3fb9:	85 c0                	test   %eax,%eax
    3fbb:	0f 85 cf 00 00 00    	jne    4090 <bigargtest+0xf0>
    3fc1:	b8 00 6c 00 00       	mov    $0x6c00,%eax
    3fc6:	8d 76 00             	lea    0x0(%esi),%esi
    3fc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3fd0:	c7 00 60 61 00 00    	movl   $0x6160,(%eax)
    3fd6:	83 c0 04             	add    $0x4,%eax
    for(i = 0; i < MAXARG-1; i++)
    3fd9:	3d 7c 6c 00 00       	cmp    $0x6c7c,%eax
    3fde:	75 f0                	jne    3fd0 <bigargtest+0x30>
    printf(stdout, "bigarg test\n");
    3fe0:	83 ec 08             	sub    $0x8,%esp
    args[MAXARG-1] = 0;
    3fe3:	c7 05 7c 6c 00 00 00 	movl   $0x0,0x6c7c
    3fea:	00 00 00 
    printf(stdout, "bigarg test\n");
    3fed:	68 10 5a 00 00       	push   $0x5a10
    3ff2:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    3ff8:	e8 a3 07 00 00       	call   47a0 <printf>
    exec("echo", args);
    3ffd:	59                   	pop    %ecx
    3ffe:	5b                   	pop    %ebx
    3fff:	68 00 6c 00 00       	push   $0x6c00
    4004:	68 dd 4b 00 00       	push   $0x4bdd
    4009:	e8 74 06 00 00       	call   4682 <exec>
    printf(stdout, "bigarg test ok\n");
    400e:	58                   	pop    %eax
    400f:	5a                   	pop    %edx
    4010:	68 1d 5a 00 00       	push   $0x5a1d
    4015:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    401b:	e8 80 07 00 00       	call   47a0 <printf>
    fd = open("bigarg-ok", O_CREATE);
    4020:	59                   	pop    %ecx
    4021:	5b                   	pop    %ebx
    4022:	68 00 02 00 00       	push   $0x200
    4027:	68 06 5a 00 00       	push   $0x5a06
    402c:	e8 59 06 00 00       	call   468a <open>
    close(fd);
    4031:	89 04 24             	mov    %eax,(%esp)
    4034:	e8 39 06 00 00       	call   4672 <close>
    exit(0);
    4039:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    4040:	e8 fd 05 00 00       	call   4642 <exit>
    4045:	83 c4 10             	add    $0x10,%esp
  wait(0x0);
    4048:	83 ec 0c             	sub    $0xc,%esp
    404b:	6a 00                	push   $0x0
    404d:	e8 f8 05 00 00       	call   464a <wait>
  fd = open("bigarg-ok", 0);
    4052:	58                   	pop    %eax
    4053:	5a                   	pop    %edx
    4054:	6a 00                	push   $0x0
    4056:	68 06 5a 00 00       	push   $0x5a06
    405b:	e8 2a 06 00 00       	call   468a <open>
  if(fd < 0){
    4060:	83 c4 10             	add    $0x10,%esp
    4063:	85 c0                	test   %eax,%eax
  fd = open("bigarg-ok", 0);
    4065:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    4067:	78 57                	js     40c0 <bigargtest+0x120>
  close(fd);
    4069:	83 ec 0c             	sub    $0xc,%esp
    406c:	53                   	push   %ebx
    406d:	e8 00 06 00 00       	call   4672 <close>
  unlink("bigarg-ok");
    4072:	c7 04 24 06 5a 00 00 	movl   $0x5a06,(%esp)
    4079:	e8 1c 06 00 00       	call   469a <unlink>
}
    407e:	83 c4 10             	add    $0x10,%esp
    4081:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    4084:	c9                   	leave  
    4085:	c3                   	ret    
    4086:	8d 76 00             	lea    0x0(%esi),%esi
    4089:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  } else if(pid < 0){
    4090:	79 b6                	jns    4048 <bigargtest+0xa8>
    printf(stdout, "bigargtest: fork failed\n");
    4092:	83 ec 08             	sub    $0x8,%esp
    4095:	68 2d 5a 00 00       	push   $0x5a2d
    409a:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    40a0:	e8 fb 06 00 00       	call   47a0 <printf>
    exit(0);
    40a5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    40ac:	e8 91 05 00 00       	call   4642 <exit>
    40b1:	83 c4 10             	add    $0x10,%esp
    40b4:	eb 92                	jmp    4048 <bigargtest+0xa8>
    40b6:	8d 76 00             	lea    0x0(%esi),%esi
    40b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(stdout, "bigarg test failed!\n");
    40c0:	83 ec 08             	sub    $0x8,%esp
    40c3:	68 46 5a 00 00       	push   $0x5a46
    40c8:	ff 35 d0 6b 00 00    	pushl  0x6bd0
    40ce:	e8 cd 06 00 00       	call   47a0 <printf>
    exit(0);
    40d3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    40da:	e8 63 05 00 00       	call   4642 <exit>
    40df:	83 c4 10             	add    $0x10,%esp
    40e2:	eb 85                	jmp    4069 <bigargtest+0xc9>
    40e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    40ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000040f0 <fsfull>:
{
    40f0:	55                   	push   %ebp
    40f1:	89 e5                	mov    %esp,%ebp
    40f3:	57                   	push   %edi
    40f4:	56                   	push   %esi
    40f5:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    40f6:	31 db                	xor    %ebx,%ebx
{
    40f8:	83 ec 54             	sub    $0x54,%esp
  printf(1, "fsfull test\n");
    40fb:	68 5b 5a 00 00       	push   $0x5a5b
    4100:	6a 01                	push   $0x1
    4102:	e8 99 06 00 00       	call   47a0 <printf>
    4107:	83 c4 10             	add    $0x10,%esp
    410a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    4110:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    4115:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    411a:	83 ec 04             	sub    $0x4,%esp
    name[1] = '0' + nfiles / 1000;
    411d:	f7 e3                	mul    %ebx
    name[0] = 'f';
    411f:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    4123:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    4127:	c1 ea 06             	shr    $0x6,%edx
    412a:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    412d:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    4133:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    4136:	89 d8                	mov    %ebx,%eax
    4138:	29 d0                	sub    %edx,%eax
    413a:	89 c2                	mov    %eax,%edx
    413c:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    4141:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    4143:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    4148:	c1 ea 05             	shr    $0x5,%edx
    414b:	83 c2 30             	add    $0x30,%edx
    414e:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    4151:	f7 e3                	mul    %ebx
    4153:	89 d8                	mov    %ebx,%eax
    4155:	c1 ea 05             	shr    $0x5,%edx
    4158:	6b d2 64             	imul   $0x64,%edx,%edx
    415b:	29 d0                	sub    %edx,%eax
    415d:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    415f:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    4161:	c1 ea 03             	shr    $0x3,%edx
    4164:	83 c2 30             	add    $0x30,%edx
    4167:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    416a:	f7 e1                	mul    %ecx
    416c:	89 d9                	mov    %ebx,%ecx
    416e:	c1 ea 03             	shr    $0x3,%edx
    4171:	8d 04 92             	lea    (%edx,%edx,4),%eax
    4174:	01 c0                	add    %eax,%eax
    4176:	29 c1                	sub    %eax,%ecx
    4178:	89 c8                	mov    %ecx,%eax
    417a:	83 c0 30             	add    $0x30,%eax
    417d:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    4180:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4183:	50                   	push   %eax
    4184:	68 68 5a 00 00       	push   $0x5a68
    4189:	6a 01                	push   $0x1
    418b:	e8 10 06 00 00       	call   47a0 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    4190:	58                   	pop    %eax
    4191:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4194:	5a                   	pop    %edx
    4195:	68 02 02 00 00       	push   $0x202
    419a:	50                   	push   %eax
    419b:	e8 ea 04 00 00       	call   468a <open>
    if(fd < 0){
    41a0:	83 c4 10             	add    $0x10,%esp
    41a3:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    41a5:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    41a7:	78 57                	js     4200 <fsfull+0x110>
    int total = 0;
    41a9:	31 f6                	xor    %esi,%esi
    41ab:	eb 05                	jmp    41b2 <fsfull+0xc2>
    41ad:	8d 76 00             	lea    0x0(%esi),%esi
      total += cc;
    41b0:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    41b2:	83 ec 04             	sub    $0x4,%esp
    41b5:	68 00 02 00 00       	push   $0x200
    41ba:	68 c0 93 00 00       	push   $0x93c0
    41bf:	57                   	push   %edi
    41c0:	e8 a5 04 00 00       	call   466a <write>
      if(cc < 512)
    41c5:	83 c4 10             	add    $0x10,%esp
    41c8:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    41cd:	7f e1                	jg     41b0 <fsfull+0xc0>
    printf(1, "wrote %d bytes\n", total);
    41cf:	83 ec 04             	sub    $0x4,%esp
    41d2:	56                   	push   %esi
    41d3:	68 84 5a 00 00       	push   $0x5a84
    41d8:	6a 01                	push   $0x1
    41da:	e8 c1 05 00 00       	call   47a0 <printf>
    close(fd);
    41df:	89 3c 24             	mov    %edi,(%esp)
    41e2:	e8 8b 04 00 00       	call   4672 <close>
    if(total == 0)
    41e7:	83 c4 10             	add    $0x10,%esp
    41ea:	85 f6                	test   %esi,%esi
    41ec:	74 28                	je     4216 <fsfull+0x126>
  for(nfiles = 0; ; nfiles++){
    41ee:	83 c3 01             	add    $0x1,%ebx
    41f1:	e9 1a ff ff ff       	jmp    4110 <fsfull+0x20>
    41f6:	8d 76 00             	lea    0x0(%esi),%esi
    41f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(1, "open %s failed\n", name);
    4200:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4203:	83 ec 04             	sub    $0x4,%esp
    4206:	50                   	push   %eax
    4207:	68 74 5a 00 00       	push   $0x5a74
    420c:	6a 01                	push   $0x1
    420e:	e8 8d 05 00 00       	call   47a0 <printf>
      break;
    4213:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    4216:	bf d3 4d 62 10       	mov    $0x10624dd3,%edi
    name[2] = '0' + (nfiles % 1000) / 100;
    421b:	be 1f 85 eb 51       	mov    $0x51eb851f,%esi
    name[1] = '0' + nfiles / 1000;
    4220:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    4222:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    unlink(name);
    4227:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + nfiles / 1000;
    422a:	f7 e7                	mul    %edi
    name[0] = 'f';
    422c:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    4230:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    4234:	c1 ea 06             	shr    $0x6,%edx
    4237:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    423a:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    4240:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    4243:	89 d8                	mov    %ebx,%eax
    4245:	29 d0                	sub    %edx,%eax
    4247:	f7 e6                	mul    %esi
    name[3] = '0' + (nfiles % 100) / 10;
    4249:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    424b:	c1 ea 05             	shr    $0x5,%edx
    424e:	83 c2 30             	add    $0x30,%edx
    4251:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    4254:	f7 e6                	mul    %esi
    4256:	89 d8                	mov    %ebx,%eax
    4258:	c1 ea 05             	shr    $0x5,%edx
    425b:	6b d2 64             	imul   $0x64,%edx,%edx
    425e:	29 d0                	sub    %edx,%eax
    4260:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    4262:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    4264:	c1 ea 03             	shr    $0x3,%edx
    4267:	83 c2 30             	add    $0x30,%edx
    426a:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    426d:	f7 e1                	mul    %ecx
    426f:	89 d9                	mov    %ebx,%ecx
    nfiles--;
    4271:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    4274:	c1 ea 03             	shr    $0x3,%edx
    4277:	8d 04 92             	lea    (%edx,%edx,4),%eax
    427a:	01 c0                	add    %eax,%eax
    427c:	29 c1                	sub    %eax,%ecx
    427e:	89 c8                	mov    %ecx,%eax
    4280:	83 c0 30             	add    $0x30,%eax
    4283:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    4286:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4289:	50                   	push   %eax
    428a:	e8 0b 04 00 00       	call   469a <unlink>
  while(nfiles >= 0){
    428f:	83 c4 10             	add    $0x10,%esp
    4292:	83 fb ff             	cmp    $0xffffffff,%ebx
    4295:	75 89                	jne    4220 <fsfull+0x130>
  printf(1, "fsfull test finished\n");
    4297:	83 ec 08             	sub    $0x8,%esp
    429a:	68 94 5a 00 00       	push   $0x5a94
    429f:	6a 01                	push   $0x1
    42a1:	e8 fa 04 00 00       	call   47a0 <printf>
}
    42a6:	83 c4 10             	add    $0x10,%esp
    42a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    42ac:	5b                   	pop    %ebx
    42ad:	5e                   	pop    %esi
    42ae:	5f                   	pop    %edi
    42af:	5d                   	pop    %ebp
    42b0:	c3                   	ret    
    42b1:	eb 0d                	jmp    42c0 <uio>
    42b3:	90                   	nop
    42b4:	90                   	nop
    42b5:	90                   	nop
    42b6:	90                   	nop
    42b7:	90                   	nop
    42b8:	90                   	nop
    42b9:	90                   	nop
    42ba:	90                   	nop
    42bb:	90                   	nop
    42bc:	90                   	nop
    42bd:	90                   	nop
    42be:	90                   	nop
    42bf:	90                   	nop

000042c0 <uio>:
{
    42c0:	55                   	push   %ebp
    42c1:	89 e5                	mov    %esp,%ebp
    42c3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    42c6:	68 aa 5a 00 00       	push   $0x5aaa
    42cb:	6a 01                	push   $0x1
    42cd:	e8 ce 04 00 00       	call   47a0 <printf>
  pid = fork();
    42d2:	e8 63 03 00 00       	call   463a <fork>
  if(pid == 0){
    42d7:	83 c4 10             	add    $0x10,%esp
    42da:	85 c0                	test   %eax,%eax
    42dc:	74 22                	je     4300 <uio+0x40>
  } else if(pid < 0){
    42de:	78 58                	js     4338 <uio+0x78>
  wait(0x0);
    42e0:	83 ec 0c             	sub    $0xc,%esp
    42e3:	6a 00                	push   $0x0
    42e5:	e8 60 03 00 00       	call   464a <wait>
  printf(1, "uio test done\n");
    42ea:	58                   	pop    %eax
    42eb:	5a                   	pop    %edx
    42ec:	68 b4 5a 00 00       	push   $0x5ab4
    42f1:	6a 01                	push   $0x1
    42f3:	e8 a8 04 00 00       	call   47a0 <printf>
}
    42f8:	83 c4 10             	add    $0x10,%esp
    42fb:	c9                   	leave  
    42fc:	c3                   	ret    
    42fd:	8d 76 00             	lea    0x0(%esi),%esi
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    4300:	b8 09 00 00 00       	mov    $0x9,%eax
    4305:	ba 70 00 00 00       	mov    $0x70,%edx
    430a:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    430b:	ba 71 00 00 00       	mov    $0x71,%edx
    4310:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    4311:	83 ec 08             	sub    $0x8,%esp
    4314:	68 40 62 00 00       	push   $0x6240
    printf (1, "fork failed\n");
    4319:	6a 01                	push   $0x1
    431b:	e8 80 04 00 00       	call   47a0 <printf>
    exit(0);
    4320:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    4327:	e8 16 03 00 00       	call   4642 <exit>
    432c:	83 c4 10             	add    $0x10,%esp
    432f:	eb af                	jmp    42e0 <uio+0x20>
    4331:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf (1, "fork failed\n");
    4338:	83 ec 08             	sub    $0x8,%esp
    433b:	68 39 5a 00 00       	push   $0x5a39
    4340:	eb d7                	jmp    4319 <uio+0x59>
    4342:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4349:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004350 <argptest>:
{
    4350:	55                   	push   %ebp
    4351:	89 e5                	mov    %esp,%ebp
    4353:	53                   	push   %ebx
    4354:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    4357:	6a 00                	push   $0x0
    4359:	68 c3 5a 00 00       	push   $0x5ac3
    435e:	e8 27 03 00 00       	call   468a <open>
  if (fd < 0) {
    4363:	83 c4 10             	add    $0x10,%esp
    4366:	85 c0                	test   %eax,%eax
  fd = open("init", O_RDONLY);
    4368:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    436a:	78 3c                	js     43a8 <argptest+0x58>
  read(fd, sbrk(0) - 1, -1);
    436c:	83 ec 0c             	sub    $0xc,%esp
    436f:	6a 00                	push   $0x0
    4371:	e8 5c 03 00 00       	call   46d2 <sbrk>
    4376:	83 c4 0c             	add    $0xc,%esp
    4379:	83 e8 01             	sub    $0x1,%eax
    437c:	6a ff                	push   $0xffffffff
    437e:	50                   	push   %eax
    437f:	53                   	push   %ebx
    4380:	e8 dd 02 00 00       	call   4662 <read>
  close(fd);
    4385:	89 1c 24             	mov    %ebx,(%esp)
    4388:	e8 e5 02 00 00       	call   4672 <close>
  printf(1, "arg test passed\n");
    438d:	58                   	pop    %eax
    438e:	5a                   	pop    %edx
    438f:	68 d5 5a 00 00       	push   $0x5ad5
    4394:	6a 01                	push   $0x1
    4396:	e8 05 04 00 00       	call   47a0 <printf>
}
    439b:	83 c4 10             	add    $0x10,%esp
    439e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    43a1:	c9                   	leave  
    43a2:	c3                   	ret    
    43a3:	90                   	nop
    43a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(2, "open failed\n");
    43a8:	83 ec 08             	sub    $0x8,%esp
    43ab:	68 c8 5a 00 00       	push   $0x5ac8
    43b0:	6a 02                	push   $0x2
    43b2:	e8 e9 03 00 00       	call   47a0 <printf>
    exit(0);
    43b7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    43be:	e8 7f 02 00 00       	call   4642 <exit>
    43c3:	83 c4 10             	add    $0x10,%esp
    43c6:	eb a4                	jmp    436c <argptest+0x1c>
    43c8:	90                   	nop
    43c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000043d0 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    43d0:	69 05 cc 6b 00 00 0d 	imul   $0x19660d,0x6bcc,%eax
    43d7:	66 19 00 
{
    43da:	55                   	push   %ebp
    43db:	89 e5                	mov    %esp,%ebp
}
    43dd:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    43de:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    43e3:	a3 cc 6b 00 00       	mov    %eax,0x6bcc
}
    43e8:	c3                   	ret    
    43e9:	66 90                	xchg   %ax,%ax
    43eb:	66 90                	xchg   %ax,%ax
    43ed:	66 90                	xchg   %ax,%ax
    43ef:	90                   	nop

000043f0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    43f0:	55                   	push   %ebp
    43f1:	89 e5                	mov    %esp,%ebp
    43f3:	53                   	push   %ebx
    43f4:	8b 45 08             	mov    0x8(%ebp),%eax
    43f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    43fa:	89 c2                	mov    %eax,%edx
    43fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4400:	83 c1 01             	add    $0x1,%ecx
    4403:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    4407:	83 c2 01             	add    $0x1,%edx
    440a:	84 db                	test   %bl,%bl
    440c:	88 5a ff             	mov    %bl,-0x1(%edx)
    440f:	75 ef                	jne    4400 <strcpy+0x10>
    ;
  return os;
}
    4411:	5b                   	pop    %ebx
    4412:	5d                   	pop    %ebp
    4413:	c3                   	ret    
    4414:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    441a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00004420 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    4420:	55                   	push   %ebp
    4421:	89 e5                	mov    %esp,%ebp
    4423:	53                   	push   %ebx
    4424:	8b 55 08             	mov    0x8(%ebp),%edx
    4427:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    442a:	0f b6 02             	movzbl (%edx),%eax
    442d:	0f b6 19             	movzbl (%ecx),%ebx
    4430:	84 c0                	test   %al,%al
    4432:	75 1c                	jne    4450 <strcmp+0x30>
    4434:	eb 2a                	jmp    4460 <strcmp+0x40>
    4436:	8d 76 00             	lea    0x0(%esi),%esi
    4439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    4440:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    4443:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    4446:	83 c1 01             	add    $0x1,%ecx
    4449:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    444c:	84 c0                	test   %al,%al
    444e:	74 10                	je     4460 <strcmp+0x40>
    4450:	38 d8                	cmp    %bl,%al
    4452:	74 ec                	je     4440 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    4454:	29 d8                	sub    %ebx,%eax
}
    4456:	5b                   	pop    %ebx
    4457:	5d                   	pop    %ebp
    4458:	c3                   	ret    
    4459:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4460:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    4462:	29 d8                	sub    %ebx,%eax
}
    4464:	5b                   	pop    %ebx
    4465:	5d                   	pop    %ebp
    4466:	c3                   	ret    
    4467:	89 f6                	mov    %esi,%esi
    4469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004470 <strlen>:

uint
strlen(const char *s)
{
    4470:	55                   	push   %ebp
    4471:	89 e5                	mov    %esp,%ebp
    4473:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    4476:	80 39 00             	cmpb   $0x0,(%ecx)
    4479:	74 15                	je     4490 <strlen+0x20>
    447b:	31 d2                	xor    %edx,%edx
    447d:	8d 76 00             	lea    0x0(%esi),%esi
    4480:	83 c2 01             	add    $0x1,%edx
    4483:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    4487:	89 d0                	mov    %edx,%eax
    4489:	75 f5                	jne    4480 <strlen+0x10>
    ;
  return n;
}
    448b:	5d                   	pop    %ebp
    448c:	c3                   	ret    
    448d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    4490:	31 c0                	xor    %eax,%eax
}
    4492:	5d                   	pop    %ebp
    4493:	c3                   	ret    
    4494:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    449a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000044a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    44a0:	55                   	push   %ebp
    44a1:	89 e5                	mov    %esp,%ebp
    44a3:	57                   	push   %edi
    44a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    44a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    44aa:	8b 45 0c             	mov    0xc(%ebp),%eax
    44ad:	89 d7                	mov    %edx,%edi
    44af:	fc                   	cld    
    44b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    44b2:	89 d0                	mov    %edx,%eax
    44b4:	5f                   	pop    %edi
    44b5:	5d                   	pop    %ebp
    44b6:	c3                   	ret    
    44b7:	89 f6                	mov    %esi,%esi
    44b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000044c0 <strchr>:

char*
strchr(const char *s, char c)
{
    44c0:	55                   	push   %ebp
    44c1:	89 e5                	mov    %esp,%ebp
    44c3:	53                   	push   %ebx
    44c4:	8b 45 08             	mov    0x8(%ebp),%eax
    44c7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    44ca:	0f b6 10             	movzbl (%eax),%edx
    44cd:	84 d2                	test   %dl,%dl
    44cf:	74 1d                	je     44ee <strchr+0x2e>
    if(*s == c)
    44d1:	38 d3                	cmp    %dl,%bl
    44d3:	89 d9                	mov    %ebx,%ecx
    44d5:	75 0d                	jne    44e4 <strchr+0x24>
    44d7:	eb 17                	jmp    44f0 <strchr+0x30>
    44d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    44e0:	38 ca                	cmp    %cl,%dl
    44e2:	74 0c                	je     44f0 <strchr+0x30>
  for(; *s; s++)
    44e4:	83 c0 01             	add    $0x1,%eax
    44e7:	0f b6 10             	movzbl (%eax),%edx
    44ea:	84 d2                	test   %dl,%dl
    44ec:	75 f2                	jne    44e0 <strchr+0x20>
      return (char*)s;
  return 0;
    44ee:	31 c0                	xor    %eax,%eax
}
    44f0:	5b                   	pop    %ebx
    44f1:	5d                   	pop    %ebp
    44f2:	c3                   	ret    
    44f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    44f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004500 <gets>:

char*
gets(char *buf, int max)
{
    4500:	55                   	push   %ebp
    4501:	89 e5                	mov    %esp,%ebp
    4503:	57                   	push   %edi
    4504:	56                   	push   %esi
    4505:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    4506:	31 f6                	xor    %esi,%esi
    4508:	89 f3                	mov    %esi,%ebx
{
    450a:	83 ec 1c             	sub    $0x1c,%esp
    450d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    4510:	eb 2f                	jmp    4541 <gets+0x41>
    4512:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    4518:	8d 45 e7             	lea    -0x19(%ebp),%eax
    451b:	83 ec 04             	sub    $0x4,%esp
    451e:	6a 01                	push   $0x1
    4520:	50                   	push   %eax
    4521:	6a 00                	push   $0x0
    4523:	e8 3a 01 00 00       	call   4662 <read>
    if(cc < 1)
    4528:	83 c4 10             	add    $0x10,%esp
    452b:	85 c0                	test   %eax,%eax
    452d:	7e 1c                	jle    454b <gets+0x4b>
      break;
    buf[i++] = c;
    452f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    4533:	83 c7 01             	add    $0x1,%edi
    4536:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    4539:	3c 0a                	cmp    $0xa,%al
    453b:	74 23                	je     4560 <gets+0x60>
    453d:	3c 0d                	cmp    $0xd,%al
    453f:	74 1f                	je     4560 <gets+0x60>
  for(i=0; i+1 < max; ){
    4541:	83 c3 01             	add    $0x1,%ebx
    4544:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    4547:	89 fe                	mov    %edi,%esi
    4549:	7c cd                	jl     4518 <gets+0x18>
    454b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    454d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    4550:	c6 03 00             	movb   $0x0,(%ebx)
}
    4553:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4556:	5b                   	pop    %ebx
    4557:	5e                   	pop    %esi
    4558:	5f                   	pop    %edi
    4559:	5d                   	pop    %ebp
    455a:	c3                   	ret    
    455b:	90                   	nop
    455c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4560:	8b 75 08             	mov    0x8(%ebp),%esi
    4563:	8b 45 08             	mov    0x8(%ebp),%eax
    4566:	01 de                	add    %ebx,%esi
    4568:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    456a:	c6 03 00             	movb   $0x0,(%ebx)
}
    456d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4570:	5b                   	pop    %ebx
    4571:	5e                   	pop    %esi
    4572:	5f                   	pop    %edi
    4573:	5d                   	pop    %ebp
    4574:	c3                   	ret    
    4575:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004580 <stat>:

int
stat(const char *n, struct stat *st)
{
    4580:	55                   	push   %ebp
    4581:	89 e5                	mov    %esp,%ebp
    4583:	56                   	push   %esi
    4584:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    4585:	83 ec 08             	sub    $0x8,%esp
    4588:	6a 00                	push   $0x0
    458a:	ff 75 08             	pushl  0x8(%ebp)
    458d:	e8 f8 00 00 00       	call   468a <open>
  if(fd < 0)
    4592:	83 c4 10             	add    $0x10,%esp
    4595:	85 c0                	test   %eax,%eax
    4597:	78 27                	js     45c0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    4599:	83 ec 08             	sub    $0x8,%esp
    459c:	ff 75 0c             	pushl  0xc(%ebp)
    459f:	89 c3                	mov    %eax,%ebx
    45a1:	50                   	push   %eax
    45a2:	e8 fb 00 00 00       	call   46a2 <fstat>
  close(fd);
    45a7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    45aa:	89 c6                	mov    %eax,%esi
  close(fd);
    45ac:	e8 c1 00 00 00       	call   4672 <close>
  return r;
    45b1:	83 c4 10             	add    $0x10,%esp
}
    45b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    45b7:	89 f0                	mov    %esi,%eax
    45b9:	5b                   	pop    %ebx
    45ba:	5e                   	pop    %esi
    45bb:	5d                   	pop    %ebp
    45bc:	c3                   	ret    
    45bd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    45c0:	be ff ff ff ff       	mov    $0xffffffff,%esi
    45c5:	eb ed                	jmp    45b4 <stat+0x34>
    45c7:	89 f6                	mov    %esi,%esi
    45c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000045d0 <atoi>:

int
atoi(const char *s)
{
    45d0:	55                   	push   %ebp
    45d1:	89 e5                	mov    %esp,%ebp
    45d3:	53                   	push   %ebx
    45d4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    45d7:	0f be 11             	movsbl (%ecx),%edx
    45da:	8d 42 d0             	lea    -0x30(%edx),%eax
    45dd:	3c 09                	cmp    $0x9,%al
  n = 0;
    45df:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    45e4:	77 1f                	ja     4605 <atoi+0x35>
    45e6:	8d 76 00             	lea    0x0(%esi),%esi
    45e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    45f0:	8d 04 80             	lea    (%eax,%eax,4),%eax
    45f3:	83 c1 01             	add    $0x1,%ecx
    45f6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    45fa:	0f be 11             	movsbl (%ecx),%edx
    45fd:	8d 5a d0             	lea    -0x30(%edx),%ebx
    4600:	80 fb 09             	cmp    $0x9,%bl
    4603:	76 eb                	jbe    45f0 <atoi+0x20>
  return n;
}
    4605:	5b                   	pop    %ebx
    4606:	5d                   	pop    %ebp
    4607:	c3                   	ret    
    4608:	90                   	nop
    4609:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00004610 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    4610:	55                   	push   %ebp
    4611:	89 e5                	mov    %esp,%ebp
    4613:	56                   	push   %esi
    4614:	53                   	push   %ebx
    4615:	8b 5d 10             	mov    0x10(%ebp),%ebx
    4618:	8b 45 08             	mov    0x8(%ebp),%eax
    461b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    461e:	85 db                	test   %ebx,%ebx
    4620:	7e 14                	jle    4636 <memmove+0x26>
    4622:	31 d2                	xor    %edx,%edx
    4624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    4628:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    462c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    462f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    4632:	39 d3                	cmp    %edx,%ebx
    4634:	75 f2                	jne    4628 <memmove+0x18>
  return vdst;
}
    4636:	5b                   	pop    %ebx
    4637:	5e                   	pop    %esi
    4638:	5d                   	pop    %ebp
    4639:	c3                   	ret    

0000463a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    463a:	b8 01 00 00 00       	mov    $0x1,%eax
    463f:	cd 40                	int    $0x40
    4641:	c3                   	ret    

00004642 <exit>:
SYSCALL(exit)
    4642:	b8 02 00 00 00       	mov    $0x2,%eax
    4647:	cd 40                	int    $0x40
    4649:	c3                   	ret    

0000464a <wait>:
SYSCALL(wait)
    464a:	b8 03 00 00 00       	mov    $0x3,%eax
    464f:	cd 40                	int    $0x40
    4651:	c3                   	ret    

00004652 <waitpid>:
SYSCALL(waitpid)
    4652:	b8 04 00 00 00       	mov    $0x4,%eax
    4657:	cd 40                	int    $0x40
    4659:	c3                   	ret    

0000465a <pipe>:
SYSCALL(pipe)
    465a:	b8 05 00 00 00       	mov    $0x5,%eax
    465f:	cd 40                	int    $0x40
    4661:	c3                   	ret    

00004662 <read>:
SYSCALL(read)
    4662:	b8 06 00 00 00       	mov    $0x6,%eax
    4667:	cd 40                	int    $0x40
    4669:	c3                   	ret    

0000466a <write>:
SYSCALL(write)
    466a:	b8 11 00 00 00       	mov    $0x11,%eax
    466f:	cd 40                	int    $0x40
    4671:	c3                   	ret    

00004672 <close>:
SYSCALL(close)
    4672:	b8 16 00 00 00       	mov    $0x16,%eax
    4677:	cd 40                	int    $0x40
    4679:	c3                   	ret    

0000467a <kill>:
SYSCALL(kill)
    467a:	b8 07 00 00 00       	mov    $0x7,%eax
    467f:	cd 40                	int    $0x40
    4681:	c3                   	ret    

00004682 <exec>:
SYSCALL(exec)
    4682:	b8 08 00 00 00       	mov    $0x8,%eax
    4687:	cd 40                	int    $0x40
    4689:	c3                   	ret    

0000468a <open>:
SYSCALL(open)
    468a:	b8 10 00 00 00       	mov    $0x10,%eax
    468f:	cd 40                	int    $0x40
    4691:	c3                   	ret    

00004692 <mknod>:
SYSCALL(mknod)
    4692:	b8 12 00 00 00       	mov    $0x12,%eax
    4697:	cd 40                	int    $0x40
    4699:	c3                   	ret    

0000469a <unlink>:
SYSCALL(unlink)
    469a:	b8 13 00 00 00       	mov    $0x13,%eax
    469f:	cd 40                	int    $0x40
    46a1:	c3                   	ret    

000046a2 <fstat>:
SYSCALL(fstat)
    46a2:	b8 09 00 00 00       	mov    $0x9,%eax
    46a7:	cd 40                	int    $0x40
    46a9:	c3                   	ret    

000046aa <link>:
SYSCALL(link)
    46aa:	b8 14 00 00 00       	mov    $0x14,%eax
    46af:	cd 40                	int    $0x40
    46b1:	c3                   	ret    

000046b2 <mkdir>:
SYSCALL(mkdir)
    46b2:	b8 15 00 00 00       	mov    $0x15,%eax
    46b7:	cd 40                	int    $0x40
    46b9:	c3                   	ret    

000046ba <chdir>:
SYSCALL(chdir)
    46ba:	b8 0a 00 00 00       	mov    $0xa,%eax
    46bf:	cd 40                	int    $0x40
    46c1:	c3                   	ret    

000046c2 <dup>:
SYSCALL(dup)
    46c2:	b8 0b 00 00 00       	mov    $0xb,%eax
    46c7:	cd 40                	int    $0x40
    46c9:	c3                   	ret    

000046ca <getpid>:
SYSCALL(getpid)
    46ca:	b8 0c 00 00 00       	mov    $0xc,%eax
    46cf:	cd 40                	int    $0x40
    46d1:	c3                   	ret    

000046d2 <sbrk>:
SYSCALL(sbrk)
    46d2:	b8 0d 00 00 00       	mov    $0xd,%eax
    46d7:	cd 40                	int    $0x40
    46d9:	c3                   	ret    

000046da <sleep>:
SYSCALL(sleep)
    46da:	b8 0e 00 00 00       	mov    $0xe,%eax
    46df:	cd 40                	int    $0x40
    46e1:	c3                   	ret    

000046e2 <uptime>:
SYSCALL(uptime)
    46e2:	b8 0f 00 00 00       	mov    $0xf,%eax
    46e7:	cd 40                	int    $0x40
    46e9:	c3                   	ret    

000046ea <setpriority>:
SYSCALL(setpriority)
    46ea:	b8 17 00 00 00       	mov    $0x17,%eax
    46ef:	cd 40                	int    $0x40
    46f1:	c3                   	ret    

000046f2 <getpriority>:
SYSCALL(getpriority)
    46f2:	b8 18 00 00 00       	mov    $0x18,%eax
    46f7:	cd 40                	int    $0x40
    46f9:	c3                   	ret    
    46fa:	66 90                	xchg   %ax,%ax
    46fc:	66 90                	xchg   %ax,%ax
    46fe:	66 90                	xchg   %ax,%ax

00004700 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    4700:	55                   	push   %ebp
    4701:	89 e5                	mov    %esp,%ebp
    4703:	57                   	push   %edi
    4704:	56                   	push   %esi
    4705:	53                   	push   %ebx
    4706:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    4709:	85 d2                	test   %edx,%edx
{
    470b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    470e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    4710:	79 76                	jns    4788 <printint+0x88>
    4712:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    4716:	74 70                	je     4788 <printint+0x88>
    x = -xx;
    4718:	f7 d8                	neg    %eax
    neg = 1;
    471a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    4721:	31 f6                	xor    %esi,%esi
    4723:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    4726:	eb 0a                	jmp    4732 <printint+0x32>
    4728:	90                   	nop
    4729:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    4730:	89 fe                	mov    %edi,%esi
    4732:	31 d2                	xor    %edx,%edx
    4734:	8d 7e 01             	lea    0x1(%esi),%edi
    4737:	f7 f1                	div    %ecx
    4739:	0f b6 92 98 62 00 00 	movzbl 0x6298(%edx),%edx
  }while((x /= base) != 0);
    4740:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    4742:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    4745:	75 e9                	jne    4730 <printint+0x30>
  if(neg)
    4747:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    474a:	85 c0                	test   %eax,%eax
    474c:	74 08                	je     4756 <printint+0x56>
    buf[i++] = '-';
    474e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    4753:	8d 7e 02             	lea    0x2(%esi),%edi
    4756:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    475a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    475d:	8d 76 00             	lea    0x0(%esi),%esi
    4760:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    4763:	83 ec 04             	sub    $0x4,%esp
    4766:	83 ee 01             	sub    $0x1,%esi
    4769:	6a 01                	push   $0x1
    476b:	53                   	push   %ebx
    476c:	57                   	push   %edi
    476d:	88 45 d7             	mov    %al,-0x29(%ebp)
    4770:	e8 f5 fe ff ff       	call   466a <write>

  while(--i >= 0)
    4775:	83 c4 10             	add    $0x10,%esp
    4778:	39 de                	cmp    %ebx,%esi
    477a:	75 e4                	jne    4760 <printint+0x60>
    putc(fd, buf[i]);
}
    477c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    477f:	5b                   	pop    %ebx
    4780:	5e                   	pop    %esi
    4781:	5f                   	pop    %edi
    4782:	5d                   	pop    %ebp
    4783:	c3                   	ret    
    4784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    4788:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    478f:	eb 90                	jmp    4721 <printint+0x21>
    4791:	eb 0d                	jmp    47a0 <printf>
    4793:	90                   	nop
    4794:	90                   	nop
    4795:	90                   	nop
    4796:	90                   	nop
    4797:	90                   	nop
    4798:	90                   	nop
    4799:	90                   	nop
    479a:	90                   	nop
    479b:	90                   	nop
    479c:	90                   	nop
    479d:	90                   	nop
    479e:	90                   	nop
    479f:	90                   	nop

000047a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    47a0:	55                   	push   %ebp
    47a1:	89 e5                	mov    %esp,%ebp
    47a3:	57                   	push   %edi
    47a4:	56                   	push   %esi
    47a5:	53                   	push   %ebx
    47a6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    47a9:	8b 75 0c             	mov    0xc(%ebp),%esi
    47ac:	0f b6 1e             	movzbl (%esi),%ebx
    47af:	84 db                	test   %bl,%bl
    47b1:	0f 84 b3 00 00 00    	je     486a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    47b7:	8d 45 10             	lea    0x10(%ebp),%eax
    47ba:	83 c6 01             	add    $0x1,%esi
  state = 0;
    47bd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    47bf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    47c2:	eb 2f                	jmp    47f3 <printf+0x53>
    47c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    47c8:	83 f8 25             	cmp    $0x25,%eax
    47cb:	0f 84 a7 00 00 00    	je     4878 <printf+0xd8>
  write(fd, &c, 1);
    47d1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    47d4:	83 ec 04             	sub    $0x4,%esp
    47d7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    47da:	6a 01                	push   $0x1
    47dc:	50                   	push   %eax
    47dd:	ff 75 08             	pushl  0x8(%ebp)
    47e0:	e8 85 fe ff ff       	call   466a <write>
    47e5:	83 c4 10             	add    $0x10,%esp
    47e8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    47eb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    47ef:	84 db                	test   %bl,%bl
    47f1:	74 77                	je     486a <printf+0xca>
    if(state == 0){
    47f3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    47f5:	0f be cb             	movsbl %bl,%ecx
    47f8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    47fb:	74 cb                	je     47c8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    47fd:	83 ff 25             	cmp    $0x25,%edi
    4800:	75 e6                	jne    47e8 <printf+0x48>
      if(c == 'd'){
    4802:	83 f8 64             	cmp    $0x64,%eax
    4805:	0f 84 05 01 00 00    	je     4910 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    480b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    4811:	83 f9 70             	cmp    $0x70,%ecx
    4814:	74 72                	je     4888 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    4816:	83 f8 73             	cmp    $0x73,%eax
    4819:	0f 84 99 00 00 00    	je     48b8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    481f:	83 f8 63             	cmp    $0x63,%eax
    4822:	0f 84 08 01 00 00    	je     4930 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    4828:	83 f8 25             	cmp    $0x25,%eax
    482b:	0f 84 ef 00 00 00    	je     4920 <printf+0x180>
  write(fd, &c, 1);
    4831:	8d 45 e7             	lea    -0x19(%ebp),%eax
    4834:	83 ec 04             	sub    $0x4,%esp
    4837:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    483b:	6a 01                	push   $0x1
    483d:	50                   	push   %eax
    483e:	ff 75 08             	pushl  0x8(%ebp)
    4841:	e8 24 fe ff ff       	call   466a <write>
    4846:	83 c4 0c             	add    $0xc,%esp
    4849:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    484c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    484f:	6a 01                	push   $0x1
    4851:	50                   	push   %eax
    4852:	ff 75 08             	pushl  0x8(%ebp)
    4855:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    4858:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    485a:	e8 0b fe ff ff       	call   466a <write>
  for(i = 0; fmt[i]; i++){
    485f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    4863:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    4866:	84 db                	test   %bl,%bl
    4868:	75 89                	jne    47f3 <printf+0x53>
    }
  }
}
    486a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    486d:	5b                   	pop    %ebx
    486e:	5e                   	pop    %esi
    486f:	5f                   	pop    %edi
    4870:	5d                   	pop    %ebp
    4871:	c3                   	ret    
    4872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    4878:	bf 25 00 00 00       	mov    $0x25,%edi
    487d:	e9 66 ff ff ff       	jmp    47e8 <printf+0x48>
    4882:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    4888:	83 ec 0c             	sub    $0xc,%esp
    488b:	b9 10 00 00 00       	mov    $0x10,%ecx
    4890:	6a 00                	push   $0x0
    4892:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    4895:	8b 45 08             	mov    0x8(%ebp),%eax
    4898:	8b 17                	mov    (%edi),%edx
    489a:	e8 61 fe ff ff       	call   4700 <printint>
        ap++;
    489f:	89 f8                	mov    %edi,%eax
    48a1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    48a4:	31 ff                	xor    %edi,%edi
        ap++;
    48a6:	83 c0 04             	add    $0x4,%eax
    48a9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    48ac:	e9 37 ff ff ff       	jmp    47e8 <printf+0x48>
    48b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    48b8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    48bb:	8b 08                	mov    (%eax),%ecx
        ap++;
    48bd:	83 c0 04             	add    $0x4,%eax
    48c0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    48c3:	85 c9                	test   %ecx,%ecx
    48c5:	0f 84 8e 00 00 00    	je     4959 <printf+0x1b9>
        while(*s != 0){
    48cb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    48ce:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    48d0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    48d2:	84 c0                	test   %al,%al
    48d4:	0f 84 0e ff ff ff    	je     47e8 <printf+0x48>
    48da:	89 75 d0             	mov    %esi,-0x30(%ebp)
    48dd:	89 de                	mov    %ebx,%esi
    48df:	8b 5d 08             	mov    0x8(%ebp),%ebx
    48e2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    48e5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    48e8:	83 ec 04             	sub    $0x4,%esp
          s++;
    48eb:	83 c6 01             	add    $0x1,%esi
    48ee:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    48f1:	6a 01                	push   $0x1
    48f3:	57                   	push   %edi
    48f4:	53                   	push   %ebx
    48f5:	e8 70 fd ff ff       	call   466a <write>
        while(*s != 0){
    48fa:	0f b6 06             	movzbl (%esi),%eax
    48fd:	83 c4 10             	add    $0x10,%esp
    4900:	84 c0                	test   %al,%al
    4902:	75 e4                	jne    48e8 <printf+0x148>
    4904:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    4907:	31 ff                	xor    %edi,%edi
    4909:	e9 da fe ff ff       	jmp    47e8 <printf+0x48>
    490e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    4910:	83 ec 0c             	sub    $0xc,%esp
    4913:	b9 0a 00 00 00       	mov    $0xa,%ecx
    4918:	6a 01                	push   $0x1
    491a:	e9 73 ff ff ff       	jmp    4892 <printf+0xf2>
    491f:	90                   	nop
  write(fd, &c, 1);
    4920:	83 ec 04             	sub    $0x4,%esp
    4923:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    4926:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    4929:	6a 01                	push   $0x1
    492b:	e9 21 ff ff ff       	jmp    4851 <printf+0xb1>
        putc(fd, *ap);
    4930:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    4933:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    4936:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    4938:	6a 01                	push   $0x1
        ap++;
    493a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    493d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    4940:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    4943:	50                   	push   %eax
    4944:	ff 75 08             	pushl  0x8(%ebp)
    4947:	e8 1e fd ff ff       	call   466a <write>
        ap++;
    494c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    494f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    4952:	31 ff                	xor    %edi,%edi
    4954:	e9 8f fe ff ff       	jmp    47e8 <printf+0x48>
          s = "(null)";
    4959:	bb 90 62 00 00       	mov    $0x6290,%ebx
        while(*s != 0){
    495e:	b8 28 00 00 00       	mov    $0x28,%eax
    4963:	e9 72 ff ff ff       	jmp    48da <printf+0x13a>
    4968:	66 90                	xchg   %ax,%ax
    496a:	66 90                	xchg   %ax,%ax
    496c:	66 90                	xchg   %ax,%ax
    496e:	66 90                	xchg   %ax,%ax

00004970 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    4970:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4971:	a1 80 6c 00 00       	mov    0x6c80,%eax
{
    4976:	89 e5                	mov    %esp,%ebp
    4978:	57                   	push   %edi
    4979:	56                   	push   %esi
    497a:	53                   	push   %ebx
    497b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    497e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    4981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4988:	39 c8                	cmp    %ecx,%eax
    498a:	8b 10                	mov    (%eax),%edx
    498c:	73 32                	jae    49c0 <free+0x50>
    498e:	39 d1                	cmp    %edx,%ecx
    4990:	72 04                	jb     4996 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4992:	39 d0                	cmp    %edx,%eax
    4994:	72 32                	jb     49c8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    4996:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4999:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    499c:	39 fa                	cmp    %edi,%edx
    499e:	74 30                	je     49d0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    49a0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    49a3:	8b 50 04             	mov    0x4(%eax),%edx
    49a6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    49a9:	39 f1                	cmp    %esi,%ecx
    49ab:	74 3a                	je     49e7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    49ad:	89 08                	mov    %ecx,(%eax)
  freep = p;
    49af:	a3 80 6c 00 00       	mov    %eax,0x6c80
}
    49b4:	5b                   	pop    %ebx
    49b5:	5e                   	pop    %esi
    49b6:	5f                   	pop    %edi
    49b7:	5d                   	pop    %ebp
    49b8:	c3                   	ret    
    49b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    49c0:	39 d0                	cmp    %edx,%eax
    49c2:	72 04                	jb     49c8 <free+0x58>
    49c4:	39 d1                	cmp    %edx,%ecx
    49c6:	72 ce                	jb     4996 <free+0x26>
{
    49c8:	89 d0                	mov    %edx,%eax
    49ca:	eb bc                	jmp    4988 <free+0x18>
    49cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    49d0:	03 72 04             	add    0x4(%edx),%esi
    49d3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    49d6:	8b 10                	mov    (%eax),%edx
    49d8:	8b 12                	mov    (%edx),%edx
    49da:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    49dd:	8b 50 04             	mov    0x4(%eax),%edx
    49e0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    49e3:	39 f1                	cmp    %esi,%ecx
    49e5:	75 c6                	jne    49ad <free+0x3d>
    p->s.size += bp->s.size;
    49e7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    49ea:	a3 80 6c 00 00       	mov    %eax,0x6c80
    p->s.size += bp->s.size;
    49ef:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    49f2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    49f5:	89 10                	mov    %edx,(%eax)
}
    49f7:	5b                   	pop    %ebx
    49f8:	5e                   	pop    %esi
    49f9:	5f                   	pop    %edi
    49fa:	5d                   	pop    %ebp
    49fb:	c3                   	ret    
    49fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004a00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4a00:	55                   	push   %ebp
    4a01:	89 e5                	mov    %esp,%ebp
    4a03:	57                   	push   %edi
    4a04:	56                   	push   %esi
    4a05:	53                   	push   %ebx
    4a06:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4a09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    4a0c:	8b 15 80 6c 00 00    	mov    0x6c80,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4a12:	8d 78 07             	lea    0x7(%eax),%edi
    4a15:	c1 ef 03             	shr    $0x3,%edi
    4a18:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    4a1b:	85 d2                	test   %edx,%edx
    4a1d:	0f 84 9d 00 00 00    	je     4ac0 <malloc+0xc0>
    4a23:	8b 02                	mov    (%edx),%eax
    4a25:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    4a28:	39 cf                	cmp    %ecx,%edi
    4a2a:	76 6c                	jbe    4a98 <malloc+0x98>
    4a2c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    4a32:	bb 00 10 00 00       	mov    $0x1000,%ebx
    4a37:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    4a3a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    4a41:	eb 0e                	jmp    4a51 <malloc+0x51>
    4a43:	90                   	nop
    4a44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4a48:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    4a4a:	8b 48 04             	mov    0x4(%eax),%ecx
    4a4d:	39 f9                	cmp    %edi,%ecx
    4a4f:	73 47                	jae    4a98 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    4a51:	39 05 80 6c 00 00    	cmp    %eax,0x6c80
    4a57:	89 c2                	mov    %eax,%edx
    4a59:	75 ed                	jne    4a48 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    4a5b:	83 ec 0c             	sub    $0xc,%esp
    4a5e:	56                   	push   %esi
    4a5f:	e8 6e fc ff ff       	call   46d2 <sbrk>
  if(p == (char*)-1)
    4a64:	83 c4 10             	add    $0x10,%esp
    4a67:	83 f8 ff             	cmp    $0xffffffff,%eax
    4a6a:	74 1c                	je     4a88 <malloc+0x88>
  hp->s.size = nu;
    4a6c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    4a6f:	83 ec 0c             	sub    $0xc,%esp
    4a72:	83 c0 08             	add    $0x8,%eax
    4a75:	50                   	push   %eax
    4a76:	e8 f5 fe ff ff       	call   4970 <free>
  return freep;
    4a7b:	8b 15 80 6c 00 00    	mov    0x6c80,%edx
      if((p = morecore(nunits)) == 0)
    4a81:	83 c4 10             	add    $0x10,%esp
    4a84:	85 d2                	test   %edx,%edx
    4a86:	75 c0                	jne    4a48 <malloc+0x48>
        return 0;
  }
}
    4a88:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    4a8b:	31 c0                	xor    %eax,%eax
}
    4a8d:	5b                   	pop    %ebx
    4a8e:	5e                   	pop    %esi
    4a8f:	5f                   	pop    %edi
    4a90:	5d                   	pop    %ebp
    4a91:	c3                   	ret    
    4a92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    4a98:	39 cf                	cmp    %ecx,%edi
    4a9a:	74 54                	je     4af0 <malloc+0xf0>
        p->s.size -= nunits;
    4a9c:	29 f9                	sub    %edi,%ecx
    4a9e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    4aa1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    4aa4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    4aa7:	89 15 80 6c 00 00    	mov    %edx,0x6c80
}
    4aad:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    4ab0:	83 c0 08             	add    $0x8,%eax
}
    4ab3:	5b                   	pop    %ebx
    4ab4:	5e                   	pop    %esi
    4ab5:	5f                   	pop    %edi
    4ab6:	5d                   	pop    %ebp
    4ab7:	c3                   	ret    
    4ab8:	90                   	nop
    4ab9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    4ac0:	c7 05 80 6c 00 00 84 	movl   $0x6c84,0x6c80
    4ac7:	6c 00 00 
    4aca:	c7 05 84 6c 00 00 84 	movl   $0x6c84,0x6c84
    4ad1:	6c 00 00 
    base.s.size = 0;
    4ad4:	b8 84 6c 00 00       	mov    $0x6c84,%eax
    4ad9:	c7 05 88 6c 00 00 00 	movl   $0x0,0x6c88
    4ae0:	00 00 00 
    4ae3:	e9 44 ff ff ff       	jmp    4a2c <malloc+0x2c>
    4ae8:	90                   	nop
    4ae9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    4af0:	8b 08                	mov    (%eax),%ecx
    4af2:	89 0a                	mov    %ecx,(%edx)
    4af4:	eb b1                	jmp    4aa7 <malloc+0xa7>
