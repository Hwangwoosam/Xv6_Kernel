
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      11:	eb 0e                	jmp    21 <main+0x21>
      13:	90                   	nop
      14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f ed 00 00 00    	jg     10e <main+0x10e>
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 a9 14 00 00       	push   $0x14a9
      2b:	e8 6a 0f 00 00       	call   f9a <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
      37:	eb 30                	jmp    69 <main+0x69>
      39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      buf[strlen(buf)-1] = 0;  // chop \n
      if(chdir(buf+3) < 0)
        printf(2, "cannot cd %s\n", buf+3);
      continue;
    }
    if(fork1() == 0)
      40:	85 c0                	test   %eax,%eax
      42:	75 18                	jne    5c <main+0x5c>
      runcmd(parsecmd(buf));
      44:	83 ec 0c             	sub    $0xc,%esp
      47:	68 00 1b 00 00       	push   $0x1b00
      4c:	e8 1f 0c 00 00       	call   c70 <parsecmd>
      51:	89 04 24             	mov    %eax,(%esp)
      54:	e8 f7 00 00 00       	call   150 <runcmd>
      59:	83 c4 10             	add    $0x10,%esp
    wait(0x0);
      5c:	83 ec 0c             	sub    $0xc,%esp
      5f:	6a 00                	push   $0x0
      61:	e8 f4 0e 00 00       	call   f5a <wait>
      66:	83 c4 10             	add    $0x10,%esp
  while(getcmd(buf, sizeof(buf)) >= 0){
      69:	83 ec 08             	sub    $0x8,%esp
      6c:	6a 64                	push   $0x64
      6e:	68 00 1b 00 00       	push   $0x1b00
      73:	e8 b8 03 00 00       	call   430 <getcmd>
      78:	83 c4 10             	add    $0x10,%esp
      7b:	85 c0                	test   %eax,%eax
      7d:	78 29                	js     a8 <main+0xa8>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      7f:	80 3d 00 1b 00 00 63 	cmpb   $0x63,0x1b00
      86:	75 09                	jne    91 <main+0x91>
      88:	80 3d 01 1b 00 00 64 	cmpb   $0x64,0x1b01
      8f:	74 2f                	je     c0 <main+0xc0>
int
fork1(void)
{
  int pid;

  pid = fork();
      91:	e8 b4 0e 00 00       	call   f4a <fork>
  if(pid == -1)
      96:	83 f8 ff             	cmp    $0xffffffff,%eax
      99:	75 a5                	jne    40 <main+0x40>
      9b:	e8 80 00 00 00       	call   120 <fork1.part.0>
      a0:	eb ba                	jmp    5c <main+0x5c>
      a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  exit(0);
      a8:	83 ec 0c             	sub    $0xc,%esp
      ab:	6a 00                	push   $0x0
      ad:	e8 a0 0e 00 00       	call   f52 <exit>
}
      b2:	8b 4d fc             	mov    -0x4(%ebp),%ecx
      b5:	31 c0                	xor    %eax,%eax
      b7:	c9                   	leave  
      b8:	8d 61 fc             	lea    -0x4(%ecx),%esp
      bb:	c3                   	ret    
      bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      c0:	80 3d 02 1b 00 00 20 	cmpb   $0x20,0x1b02
      c7:	75 c8                	jne    91 <main+0x91>
      buf[strlen(buf)-1] = 0;  // chop \n
      c9:	83 ec 0c             	sub    $0xc,%esp
      cc:	68 00 1b 00 00       	push   $0x1b00
      d1:	e8 aa 0c 00 00       	call   d80 <strlen>
      if(chdir(buf+3) < 0)
      d6:	c7 04 24 03 1b 00 00 	movl   $0x1b03,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
      dd:	c6 80 ff 1a 00 00 00 	movb   $0x0,0x1aff(%eax)
      if(chdir(buf+3) < 0)
      e4:	e8 e1 0e 00 00       	call   fca <chdir>
      e9:	83 c4 10             	add    $0x10,%esp
      ec:	85 c0                	test   %eax,%eax
      ee:	0f 89 75 ff ff ff    	jns    69 <main+0x69>
        printf(2, "cannot cd %s\n", buf+3);
      f4:	50                   	push   %eax
      f5:	68 03 1b 00 00       	push   $0x1b03
      fa:	68 b1 14 00 00       	push   $0x14b1
      ff:	6a 02                	push   $0x2
     101:	e8 aa 0f 00 00       	call   10b0 <printf>
     106:	83 c4 10             	add    $0x10,%esp
     109:	e9 5b ff ff ff       	jmp    69 <main+0x69>
      close(fd);
     10e:	83 ec 0c             	sub    $0xc,%esp
     111:	50                   	push   %eax
     112:	e8 6b 0e 00 00       	call   f82 <close>
      break;
     117:	83 c4 10             	add    $0x10,%esp
     11a:	e9 4a ff ff ff       	jmp    69 <main+0x69>
     11f:	90                   	nop

00000120 <fork1.part.0>:
fork1(void)
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     126:	68 08 14 00 00       	push   $0x1408
     12b:	68 a5 14 00 00       	push   $0x14a5
     130:	6a 02                	push   $0x2
     132:	e8 79 0f 00 00       	call   10b0 <printf>
  exit(0);
     137:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     13e:	e8 0f 0e 00 00       	call   f52 <exit>
     143:	83 c4 10             	add    $0x10,%esp
    panic("fork");
  return pid;
}
     146:	c9                   	leave  
     147:	c3                   	ret    
     148:	90                   	nop
     149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000150 <runcmd>:
{
     150:	55                   	push   %ebp
     151:	89 e5                	mov    %esp,%ebp
     153:	53                   	push   %ebx
     154:	83 ec 14             	sub    $0x14,%esp
     157:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     15a:	85 db                	test   %ebx,%ebx
     15c:	0f 84 76 01 00 00    	je     2d8 <runcmd+0x188>
  switch(cmd->type){
     162:	83 3b 05             	cmpl   $0x5,(%ebx)
     165:	77 09                	ja     170 <runcmd+0x20>
     167:	8b 03                	mov    (%ebx),%eax
     169:	ff 24 85 c0 14 00 00 	jmp    *0x14c0(,%eax,4)
  printf(2, "%s\n", s);
     170:	83 ec 04             	sub    $0x4,%esp
     173:	68 0d 14 00 00       	push   $0x140d
     178:	68 a5 14 00 00       	push   $0x14a5
     17d:	6a 02                	push   $0x2
     17f:	e8 2c 0f 00 00       	call   10b0 <printf>
  exit(0);
     184:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     18b:	e8 c2 0d 00 00       	call   f52 <exit>
     190:	83 c4 10             	add    $0x10,%esp
    if(ecmd->argv[0] == 0)
     193:	8b 43 04             	mov    0x4(%ebx),%eax
     196:	85 c0                	test   %eax,%eax
     198:	0f 84 52 01 00 00    	je     2f0 <runcmd+0x1a0>
    exec(ecmd->argv[0], ecmd->argv);
     19e:	8d 53 04             	lea    0x4(%ebx),%edx
     1a1:	83 ec 08             	sub    $0x8,%esp
     1a4:	52                   	push   %edx
     1a5:	50                   	push   %eax
     1a6:	e8 e7 0d 00 00       	call   f92 <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     1ab:	83 c4 0c             	add    $0xc,%esp
     1ae:	ff 73 04             	pushl  0x4(%ebx)
     1b1:	68 14 14 00 00       	push   $0x1414
     1b6:	6a 02                	push   $0x2
     1b8:	e8 f3 0e 00 00       	call   10b0 <printf>
    break;
     1bd:	83 c4 10             	add    $0x10,%esp
  exit(0);
     1c0:	83 ec 0c             	sub    $0xc,%esp
     1c3:	6a 00                	push   $0x0
     1c5:	e8 88 0d 00 00       	call   f52 <exit>
}
     1ca:	83 c4 10             	add    $0x10,%esp
     1cd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     1d0:	c9                   	leave  
     1d1:	c3                   	ret    
     1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  pid = fork();
     1d8:	e8 6d 0d 00 00       	call   f4a <fork>
  if(pid == -1)
     1dd:	83 f8 ff             	cmp    $0xffffffff,%eax
     1e0:	0f 84 9a 01 00 00    	je     380 <runcmd+0x230>
    if(fork1() == 0)
     1e6:	85 c0                	test   %eax,%eax
     1e8:	75 d6                	jne    1c0 <runcmd+0x70>
     1ea:	eb 27                	jmp    213 <runcmd+0xc3>
     1ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    close(rcmd->fd);
     1f0:	83 ec 0c             	sub    $0xc,%esp
     1f3:	ff 73 14             	pushl  0x14(%ebx)
     1f6:	e8 87 0d 00 00       	call   f82 <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     1fb:	59                   	pop    %ecx
     1fc:	58                   	pop    %eax
     1fd:	ff 73 10             	pushl  0x10(%ebx)
     200:	ff 73 08             	pushl  0x8(%ebx)
     203:	e8 92 0d 00 00       	call   f9a <open>
     208:	83 c4 10             	add    $0x10,%esp
     20b:	85 c0                	test   %eax,%eax
     20d:	0f 88 f5 00 00 00    	js     308 <runcmd+0x1b8>
      runcmd(bcmd->cmd);
     213:	83 ec 0c             	sub    $0xc,%esp
     216:	ff 73 04             	pushl  0x4(%ebx)
     219:	e8 32 ff ff ff       	call   150 <runcmd>
     21e:	83 c4 10             	add    $0x10,%esp
     221:	eb 9d                	jmp    1c0 <runcmd+0x70>
     223:	90                   	nop
     224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pipe(p) < 0)
     228:	8d 45 f0             	lea    -0x10(%ebp),%eax
     22b:	83 ec 0c             	sub    $0xc,%esp
     22e:	50                   	push   %eax
     22f:	e8 36 0d 00 00       	call   f6a <pipe>
     234:	83 c4 10             	add    $0x10,%esp
     237:	85 c0                	test   %eax,%eax
     239:	0f 88 f1 00 00 00    	js     330 <runcmd+0x1e0>
  pid = fork();
     23f:	e8 06 0d 00 00       	call   f4a <fork>
  if(pid == -1)
     244:	83 f8 ff             	cmp    $0xffffffff,%eax
     247:	0f 84 13 01 00 00    	je     360 <runcmd+0x210>
    if(fork1() == 0){
     24d:	85 c0                	test   %eax,%eax
     24f:	0f 84 a3 01 00 00    	je     3f8 <runcmd+0x2a8>
  pid = fork();
     255:	e8 f0 0c 00 00       	call   f4a <fork>
  if(pid == -1)
     25a:	83 f8 ff             	cmp    $0xffffffff,%eax
     25d:	0f 84 0d 01 00 00    	je     370 <runcmd+0x220>
    if(fork1() == 0){
     263:	85 c0                	test   %eax,%eax
     265:	0f 84 35 01 00 00    	je     3a0 <runcmd+0x250>
    close(p[0]);
     26b:	83 ec 0c             	sub    $0xc,%esp
     26e:	ff 75 f0             	pushl  -0x10(%ebp)
     271:	e8 0c 0d 00 00       	call   f82 <close>
    close(p[1]);
     276:	58                   	pop    %eax
     277:	ff 75 f4             	pushl  -0xc(%ebp)
     27a:	e8 03 0d 00 00       	call   f82 <close>
    wait(0x0);
     27f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     286:	e8 cf 0c 00 00       	call   f5a <wait>
    wait(0x0);
     28b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     292:	e8 c3 0c 00 00       	call   f5a <wait>
    break;
     297:	83 c4 10             	add    $0x10,%esp
     29a:	e9 21 ff ff ff       	jmp    1c0 <runcmd+0x70>
     29f:	90                   	nop
  pid = fork();
     2a0:	e8 a5 0c 00 00       	call   f4a <fork>
  if(pid == -1)
     2a5:	83 f8 ff             	cmp    $0xffffffff,%eax
     2a8:	0f 84 e2 00 00 00    	je     390 <runcmd+0x240>
    if(fork1() == 0)
     2ae:	85 c0                	test   %eax,%eax
     2b0:	0f 84 2a 01 00 00    	je     3e0 <runcmd+0x290>
    wait(0x0);
     2b6:	83 ec 0c             	sub    $0xc,%esp
     2b9:	6a 00                	push   $0x0
     2bb:	e8 9a 0c 00 00       	call   f5a <wait>
    runcmd(lcmd->right);
     2c0:	5a                   	pop    %edx
     2c1:	ff 73 08             	pushl  0x8(%ebx)
     2c4:	e8 87 fe ff ff       	call   150 <runcmd>
    break;
     2c9:	83 c4 10             	add    $0x10,%esp
     2cc:	e9 ef fe ff ff       	jmp    1c0 <runcmd+0x70>
     2d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
     2d8:	83 ec 0c             	sub    $0xc,%esp
     2db:	6a 00                	push   $0x0
     2dd:	e8 70 0c 00 00       	call   f52 <exit>
     2e2:	83 c4 10             	add    $0x10,%esp
     2e5:	e9 78 fe ff ff       	jmp    162 <runcmd+0x12>
     2ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      exit(0);
     2f0:	83 ec 0c             	sub    $0xc,%esp
     2f3:	6a 00                	push   $0x0
     2f5:	e8 58 0c 00 00       	call   f52 <exit>
     2fa:	8b 43 04             	mov    0x4(%ebx),%eax
     2fd:	83 c4 10             	add    $0x10,%esp
     300:	e9 99 fe ff ff       	jmp    19e <runcmd+0x4e>
     305:	8d 76 00             	lea    0x0(%esi),%esi
      printf(2, "open %s failed\n", rcmd->file);
     308:	83 ec 04             	sub    $0x4,%esp
     30b:	ff 73 08             	pushl  0x8(%ebx)
     30e:	68 24 14 00 00       	push   $0x1424
     313:	6a 02                	push   $0x2
     315:	e8 96 0d 00 00       	call   10b0 <printf>
      exit(0);
     31a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     321:	e8 2c 0c 00 00       	call   f52 <exit>
     326:	83 c4 10             	add    $0x10,%esp
     329:	e9 e5 fe ff ff       	jmp    213 <runcmd+0xc3>
     32e:	66 90                	xchg   %ax,%ax
  printf(2, "%s\n", s);
     330:	83 ec 04             	sub    $0x4,%esp
     333:	68 34 14 00 00       	push   $0x1434
     338:	68 a5 14 00 00       	push   $0x14a5
     33d:	6a 02                	push   $0x2
     33f:	e8 6c 0d 00 00       	call   10b0 <printf>
  exit(0);
     344:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     34b:	e8 02 0c 00 00       	call   f52 <exit>
     350:	83 c4 10             	add    $0x10,%esp
     353:	e9 e7 fe ff ff       	jmp    23f <runcmd+0xef>
     358:	90                   	nop
     359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     360:	e8 bb fd ff ff       	call   120 <fork1.part.0>
     365:	e9 eb fe ff ff       	jmp    255 <runcmd+0x105>
     36a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     370:	e8 ab fd ff ff       	call   120 <fork1.part.0>
     375:	e9 f1 fe ff ff       	jmp    26b <runcmd+0x11b>
     37a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     380:	e8 9b fd ff ff       	call   120 <fork1.part.0>
     385:	e9 36 fe ff ff       	jmp    1c0 <runcmd+0x70>
     38a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     390:	e8 8b fd ff ff       	call   120 <fork1.part.0>
     395:	e9 1c ff ff ff       	jmp    2b6 <runcmd+0x166>
     39a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      close(0);
     3a0:	83 ec 0c             	sub    $0xc,%esp
     3a3:	6a 00                	push   $0x0
     3a5:	e8 d8 0b 00 00       	call   f82 <close>
      dup(p[0]);
     3aa:	5a                   	pop    %edx
     3ab:	ff 75 f0             	pushl  -0x10(%ebp)
     3ae:	e8 1f 0c 00 00       	call   fd2 <dup>
      close(p[0]);
     3b3:	59                   	pop    %ecx
     3b4:	ff 75 f0             	pushl  -0x10(%ebp)
     3b7:	e8 c6 0b 00 00       	call   f82 <close>
      close(p[1]);
     3bc:	58                   	pop    %eax
     3bd:	ff 75 f4             	pushl  -0xc(%ebp)
     3c0:	e8 bd 0b 00 00       	call   f82 <close>
      runcmd(pcmd->right);
     3c5:	58                   	pop    %eax
     3c6:	ff 73 08             	pushl  0x8(%ebx)
     3c9:	e8 82 fd ff ff       	call   150 <runcmd>
     3ce:	83 c4 10             	add    $0x10,%esp
     3d1:	e9 95 fe ff ff       	jmp    26b <runcmd+0x11b>
     3d6:	8d 76 00             	lea    0x0(%esi),%esi
     3d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      runcmd(lcmd->left);
     3e0:	83 ec 0c             	sub    $0xc,%esp
     3e3:	ff 73 04             	pushl  0x4(%ebx)
     3e6:	e8 65 fd ff ff       	call   150 <runcmd>
     3eb:	83 c4 10             	add    $0x10,%esp
     3ee:	e9 c3 fe ff ff       	jmp    2b6 <runcmd+0x166>
     3f3:	90                   	nop
     3f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      close(1);
     3f8:	83 ec 0c             	sub    $0xc,%esp
     3fb:	6a 01                	push   $0x1
     3fd:	e8 80 0b 00 00       	call   f82 <close>
      dup(p[1]);
     402:	58                   	pop    %eax
     403:	ff 75 f4             	pushl  -0xc(%ebp)
     406:	e8 c7 0b 00 00       	call   fd2 <dup>
      close(p[0]);
     40b:	58                   	pop    %eax
     40c:	ff 75 f0             	pushl  -0x10(%ebp)
     40f:	e8 6e 0b 00 00       	call   f82 <close>
      close(p[1]);
     414:	58                   	pop    %eax
     415:	ff 75 f4             	pushl  -0xc(%ebp)
     418:	e8 65 0b 00 00       	call   f82 <close>
      runcmd(pcmd->left);
     41d:	58                   	pop    %eax
     41e:	ff 73 04             	pushl  0x4(%ebx)
     421:	e8 2a fd ff ff       	call   150 <runcmd>
     426:	83 c4 10             	add    $0x10,%esp
     429:	e9 27 fe ff ff       	jmp    255 <runcmd+0x105>
     42e:	66 90                	xchg   %ax,%ax

00000430 <getcmd>:
{
     430:	55                   	push   %ebp
     431:	89 e5                	mov    %esp,%ebp
     433:	56                   	push   %esi
     434:	53                   	push   %ebx
     435:	8b 75 0c             	mov    0xc(%ebp),%esi
     438:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
     43b:	83 ec 08             	sub    $0x8,%esp
     43e:	68 39 14 00 00       	push   $0x1439
     443:	6a 02                	push   $0x2
     445:	e8 66 0c 00 00       	call   10b0 <printf>
  memset(buf, 0, nbuf);
     44a:	83 c4 0c             	add    $0xc,%esp
     44d:	56                   	push   %esi
     44e:	6a 00                	push   $0x0
     450:	53                   	push   %ebx
     451:	e8 5a 09 00 00       	call   db0 <memset>
  gets(buf, nbuf);
     456:	58                   	pop    %eax
     457:	5a                   	pop    %edx
     458:	56                   	push   %esi
     459:	53                   	push   %ebx
     45a:	e8 b1 09 00 00       	call   e10 <gets>
  if(buf[0] == 0) // EOF
     45f:	83 c4 10             	add    $0x10,%esp
     462:	31 c0                	xor    %eax,%eax
     464:	80 3b 00             	cmpb   $0x0,(%ebx)
     467:	0f 94 c0             	sete   %al
}
     46a:	8d 65 f8             	lea    -0x8(%ebp),%esp
  if(buf[0] == 0) // EOF
     46d:	f7 d8                	neg    %eax
}
     46f:	5b                   	pop    %ebx
     470:	5e                   	pop    %esi
     471:	5d                   	pop    %ebp
     472:	c3                   	ret    
     473:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     479:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000480 <panic>:
{
     480:	55                   	push   %ebp
     481:	89 e5                	mov    %esp,%ebp
     483:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     486:	ff 75 08             	pushl  0x8(%ebp)
     489:	68 a5 14 00 00       	push   $0x14a5
     48e:	6a 02                	push   $0x2
     490:	e8 1b 0c 00 00       	call   10b0 <printf>
  exit(0);
     495:	83 c4 10             	add    $0x10,%esp
     498:	c7 45 08 00 00 00 00 	movl   $0x0,0x8(%ebp)
}
     49f:	c9                   	leave  
  exit(0);
     4a0:	e9 ad 0a 00 00       	jmp    f52 <exit>
     4a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     4a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004b0 <fork1>:
{
     4b0:	55                   	push   %ebp
     4b1:	89 e5                	mov    %esp,%ebp
     4b3:	83 ec 18             	sub    $0x18,%esp
  pid = fork();
     4b6:	e8 8f 0a 00 00       	call   f4a <fork>
  if(pid == -1)
     4bb:	83 f8 ff             	cmp    $0xffffffff,%eax
     4be:	74 08                	je     4c8 <fork1+0x18>
}
     4c0:	c9                   	leave  
     4c1:	c3                   	ret    
     4c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     4c8:	89 45 f4             	mov    %eax,-0xc(%ebp)
     4cb:	e8 50 fc ff ff       	call   120 <fork1.part.0>
     4d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
     4d3:	c9                   	leave  
     4d4:	c3                   	ret    
     4d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     4d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004e0 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     4e0:	55                   	push   %ebp
     4e1:	89 e5                	mov    %esp,%ebp
     4e3:	53                   	push   %ebx
     4e4:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4e7:	6a 54                	push   $0x54
     4e9:	e8 22 0e 00 00       	call   1310 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4ee:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     4f1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     4f3:	6a 54                	push   $0x54
     4f5:	6a 00                	push   $0x0
     4f7:	50                   	push   %eax
     4f8:	e8 b3 08 00 00       	call   db0 <memset>
  cmd->type = EXEC;
     4fd:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     503:	89 d8                	mov    %ebx,%eax
     505:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     508:	c9                   	leave  
     509:	c3                   	ret    
     50a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000510 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     510:	55                   	push   %ebp
     511:	89 e5                	mov    %esp,%ebp
     513:	53                   	push   %ebx
     514:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     517:	6a 18                	push   $0x18
     519:	e8 f2 0d 00 00       	call   1310 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     51e:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     521:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     523:	6a 18                	push   $0x18
     525:	6a 00                	push   $0x0
     527:	50                   	push   %eax
     528:	e8 83 08 00 00       	call   db0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     52d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     530:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     536:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     539:	8b 45 0c             	mov    0xc(%ebp),%eax
     53c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     53f:	8b 45 10             	mov    0x10(%ebp),%eax
     542:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     545:	8b 45 14             	mov    0x14(%ebp),%eax
     548:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     54b:	8b 45 18             	mov    0x18(%ebp),%eax
     54e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     551:	89 d8                	mov    %ebx,%eax
     553:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     556:	c9                   	leave  
     557:	c3                   	ret    
     558:	90                   	nop
     559:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000560 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     560:	55                   	push   %ebp
     561:	89 e5                	mov    %esp,%ebp
     563:	53                   	push   %ebx
     564:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     567:	6a 0c                	push   $0xc
     569:	e8 a2 0d 00 00       	call   1310 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     56e:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     571:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     573:	6a 0c                	push   $0xc
     575:	6a 00                	push   $0x0
     577:	50                   	push   %eax
     578:	e8 33 08 00 00       	call   db0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     57d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     580:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     586:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     589:	8b 45 0c             	mov    0xc(%ebp),%eax
     58c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     58f:	89 d8                	mov    %ebx,%eax
     591:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     594:	c9                   	leave  
     595:	c3                   	ret    
     596:	8d 76 00             	lea    0x0(%esi),%esi
     599:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005a0 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     5a0:	55                   	push   %ebp
     5a1:	89 e5                	mov    %esp,%ebp
     5a3:	53                   	push   %ebx
     5a4:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     5a7:	6a 0c                	push   $0xc
     5a9:	e8 62 0d 00 00       	call   1310 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     5ae:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     5b1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     5b3:	6a 0c                	push   $0xc
     5b5:	6a 00                	push   $0x0
     5b7:	50                   	push   %eax
     5b8:	e8 f3 07 00 00       	call   db0 <memset>
  cmd->type = LIST;
  cmd->left = left;
     5bd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     5c0:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     5c6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     5c9:	8b 45 0c             	mov    0xc(%ebp),%eax
     5cc:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     5cf:	89 d8                	mov    %ebx,%eax
     5d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     5d4:	c9                   	leave  
     5d5:	c3                   	ret    
     5d6:	8d 76 00             	lea    0x0(%esi),%esi
     5d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005e0 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     5e0:	55                   	push   %ebp
     5e1:	89 e5                	mov    %esp,%ebp
     5e3:	53                   	push   %ebx
     5e4:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     5e7:	6a 08                	push   $0x8
     5e9:	e8 22 0d 00 00       	call   1310 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     5ee:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     5f1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     5f3:	6a 08                	push   $0x8
     5f5:	6a 00                	push   $0x0
     5f7:	50                   	push   %eax
     5f8:	e8 b3 07 00 00       	call   db0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     5fd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     600:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     606:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     609:	89 d8                	mov    %ebx,%eax
     60b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     60e:	c9                   	leave  
     60f:	c3                   	ret    

00000610 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     610:	55                   	push   %ebp
     611:	89 e5                	mov    %esp,%ebp
     613:	57                   	push   %edi
     614:	56                   	push   %esi
     615:	53                   	push   %ebx
     616:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     619:	8b 45 08             	mov    0x8(%ebp),%eax
{
     61c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     61f:	8b 7d 10             	mov    0x10(%ebp),%edi
  s = *ps;
     622:	8b 30                	mov    (%eax),%esi
  while(s < es && strchr(whitespace, *s))
     624:	39 de                	cmp    %ebx,%esi
     626:	72 0f                	jb     637 <gettoken+0x27>
     628:	eb 25                	jmp    64f <gettoken+0x3f>
     62a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     630:	83 c6 01             	add    $0x1,%esi
  while(s < es && strchr(whitespace, *s))
     633:	39 f3                	cmp    %esi,%ebx
     635:	74 18                	je     64f <gettoken+0x3f>
     637:	0f be 06             	movsbl (%esi),%eax
     63a:	83 ec 08             	sub    $0x8,%esp
     63d:	50                   	push   %eax
     63e:	68 f0 1a 00 00       	push   $0x1af0
     643:	e8 88 07 00 00       	call   dd0 <strchr>
     648:	83 c4 10             	add    $0x10,%esp
     64b:	85 c0                	test   %eax,%eax
     64d:	75 e1                	jne    630 <gettoken+0x20>
  if(q)
     64f:	85 ff                	test   %edi,%edi
     651:	74 02                	je     655 <gettoken+0x45>
    *q = s;
     653:	89 37                	mov    %esi,(%edi)
  ret = *s;
     655:	0f be 06             	movsbl (%esi),%eax
  switch(*s){
     658:	3c 29                	cmp    $0x29,%al
     65a:	7f 54                	jg     6b0 <gettoken+0xa0>
     65c:	3c 28                	cmp    $0x28,%al
     65e:	0f 8d c8 00 00 00    	jge    72c <gettoken+0x11c>
     664:	31 ff                	xor    %edi,%edi
     666:	84 c0                	test   %al,%al
     668:	0f 85 d2 00 00 00    	jne    740 <gettoken+0x130>
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     66e:	8b 55 14             	mov    0x14(%ebp),%edx
     671:	85 d2                	test   %edx,%edx
     673:	74 05                	je     67a <gettoken+0x6a>
    *eq = s;
     675:	8b 45 14             	mov    0x14(%ebp),%eax
     678:	89 30                	mov    %esi,(%eax)

  while(s < es && strchr(whitespace, *s))
     67a:	39 de                	cmp    %ebx,%esi
     67c:	72 09                	jb     687 <gettoken+0x77>
     67e:	eb 1f                	jmp    69f <gettoken+0x8f>
    s++;
     680:	83 c6 01             	add    $0x1,%esi
  while(s < es && strchr(whitespace, *s))
     683:	39 f3                	cmp    %esi,%ebx
     685:	74 18                	je     69f <gettoken+0x8f>
     687:	0f be 06             	movsbl (%esi),%eax
     68a:	83 ec 08             	sub    $0x8,%esp
     68d:	50                   	push   %eax
     68e:	68 f0 1a 00 00       	push   $0x1af0
     693:	e8 38 07 00 00       	call   dd0 <strchr>
     698:	83 c4 10             	add    $0x10,%esp
     69b:	85 c0                	test   %eax,%eax
     69d:	75 e1                	jne    680 <gettoken+0x70>
  *ps = s;
     69f:	8b 45 08             	mov    0x8(%ebp),%eax
     6a2:	89 30                	mov    %esi,(%eax)
  return ret;
}
     6a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6a7:	89 f8                	mov    %edi,%eax
     6a9:	5b                   	pop    %ebx
     6aa:	5e                   	pop    %esi
     6ab:	5f                   	pop    %edi
     6ac:	5d                   	pop    %ebp
     6ad:	c3                   	ret    
     6ae:	66 90                	xchg   %ax,%ax
  switch(*s){
     6b0:	3c 3e                	cmp    $0x3e,%al
     6b2:	75 1c                	jne    6d0 <gettoken+0xc0>
    if(*s == '>'){
     6b4:	80 7e 01 3e          	cmpb   $0x3e,0x1(%esi)
    s++;
     6b8:	8d 46 01             	lea    0x1(%esi),%eax
    if(*s == '>'){
     6bb:	0f 84 a4 00 00 00    	je     765 <gettoken+0x155>
    s++;
     6c1:	89 c6                	mov    %eax,%esi
     6c3:	bf 3e 00 00 00       	mov    $0x3e,%edi
     6c8:	eb a4                	jmp    66e <gettoken+0x5e>
     6ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  switch(*s){
     6d0:	7f 56                	jg     728 <gettoken+0x118>
     6d2:	8d 48 c5             	lea    -0x3b(%eax),%ecx
     6d5:	80 f9 01             	cmp    $0x1,%cl
     6d8:	76 52                	jbe    72c <gettoken+0x11c>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     6da:	39 f3                	cmp    %esi,%ebx
     6dc:	77 24                	ja     702 <gettoken+0xf2>
     6de:	eb 70                	jmp    750 <gettoken+0x140>
     6e0:	0f be 06             	movsbl (%esi),%eax
     6e3:	83 ec 08             	sub    $0x8,%esp
     6e6:	50                   	push   %eax
     6e7:	68 e8 1a 00 00       	push   $0x1ae8
     6ec:	e8 df 06 00 00       	call   dd0 <strchr>
     6f1:	83 c4 10             	add    $0x10,%esp
     6f4:	85 c0                	test   %eax,%eax
     6f6:	75 1f                	jne    717 <gettoken+0x107>
      s++;
     6f8:	83 c6 01             	add    $0x1,%esi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     6fb:	39 f3                	cmp    %esi,%ebx
     6fd:	74 51                	je     750 <gettoken+0x140>
     6ff:	0f be 06             	movsbl (%esi),%eax
     702:	83 ec 08             	sub    $0x8,%esp
     705:	50                   	push   %eax
     706:	68 f0 1a 00 00       	push   $0x1af0
     70b:	e8 c0 06 00 00       	call   dd0 <strchr>
     710:	83 c4 10             	add    $0x10,%esp
     713:	85 c0                	test   %eax,%eax
     715:	74 c9                	je     6e0 <gettoken+0xd0>
    ret = 'a';
     717:	bf 61 00 00 00       	mov    $0x61,%edi
     71c:	e9 4d ff ff ff       	jmp    66e <gettoken+0x5e>
     721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     728:	3c 7c                	cmp    $0x7c,%al
     72a:	75 ae                	jne    6da <gettoken+0xca>
  ret = *s;
     72c:	0f be f8             	movsbl %al,%edi
    s++;
     72f:	83 c6 01             	add    $0x1,%esi
    break;
     732:	e9 37 ff ff ff       	jmp    66e <gettoken+0x5e>
     737:	89 f6                	mov    %esi,%esi
     739:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  switch(*s){
     740:	3c 26                	cmp    $0x26,%al
     742:	75 96                	jne    6da <gettoken+0xca>
     744:	eb e6                	jmp    72c <gettoken+0x11c>
     746:	8d 76 00             	lea    0x0(%esi),%esi
     749:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  if(eq)
     750:	8b 45 14             	mov    0x14(%ebp),%eax
     753:	bf 61 00 00 00       	mov    $0x61,%edi
     758:	85 c0                	test   %eax,%eax
     75a:	0f 85 15 ff ff ff    	jne    675 <gettoken+0x65>
     760:	e9 3a ff ff ff       	jmp    69f <gettoken+0x8f>
      s++;
     765:	83 c6 02             	add    $0x2,%esi
      ret = '+';
     768:	bf 2b 00 00 00       	mov    $0x2b,%edi
     76d:	e9 fc fe ff ff       	jmp    66e <gettoken+0x5e>
     772:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000780 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     780:	55                   	push   %ebp
     781:	89 e5                	mov    %esp,%ebp
     783:	57                   	push   %edi
     784:	56                   	push   %esi
     785:	53                   	push   %ebx
     786:	83 ec 0c             	sub    $0xc,%esp
     789:	8b 7d 08             	mov    0x8(%ebp),%edi
     78c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     78f:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     791:	39 f3                	cmp    %esi,%ebx
     793:	72 12                	jb     7a7 <peek+0x27>
     795:	eb 28                	jmp    7bf <peek+0x3f>
     797:	89 f6                	mov    %esi,%esi
     799:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    s++;
     7a0:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     7a3:	39 de                	cmp    %ebx,%esi
     7a5:	74 18                	je     7bf <peek+0x3f>
     7a7:	0f be 03             	movsbl (%ebx),%eax
     7aa:	83 ec 08             	sub    $0x8,%esp
     7ad:	50                   	push   %eax
     7ae:	68 f0 1a 00 00       	push   $0x1af0
     7b3:	e8 18 06 00 00       	call   dd0 <strchr>
     7b8:	83 c4 10             	add    $0x10,%esp
     7bb:	85 c0                	test   %eax,%eax
     7bd:	75 e1                	jne    7a0 <peek+0x20>
  *ps = s;
     7bf:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     7c1:	0f be 13             	movsbl (%ebx),%edx
     7c4:	31 c0                	xor    %eax,%eax
     7c6:	84 d2                	test   %dl,%dl
     7c8:	74 17                	je     7e1 <peek+0x61>
     7ca:	83 ec 08             	sub    $0x8,%esp
     7cd:	52                   	push   %edx
     7ce:	ff 75 10             	pushl  0x10(%ebp)
     7d1:	e8 fa 05 00 00       	call   dd0 <strchr>
     7d6:	83 c4 10             	add    $0x10,%esp
     7d9:	85 c0                	test   %eax,%eax
     7db:	0f 95 c0             	setne  %al
     7de:	0f b6 c0             	movzbl %al,%eax
}
     7e1:	8d 65 f4             	lea    -0xc(%ebp),%esp
     7e4:	5b                   	pop    %ebx
     7e5:	5e                   	pop    %esi
     7e6:	5f                   	pop    %edi
     7e7:	5d                   	pop    %ebp
     7e8:	c3                   	ret    
     7e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000007f0 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     7f0:	55                   	push   %ebp
     7f1:	89 e5                	mov    %esp,%ebp
     7f3:	57                   	push   %edi
     7f4:	56                   	push   %esi
     7f5:	53                   	push   %ebx
     7f6:	83 ec 1c             	sub    $0x1c,%esp
     7f9:	8b 75 0c             	mov    0xc(%ebp),%esi
     7fc:	8b 7d 10             	mov    0x10(%ebp),%edi
     7ff:	90                   	nop
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     800:	83 ec 04             	sub    $0x4,%esp
     803:	68 59 14 00 00       	push   $0x1459
     808:	57                   	push   %edi
     809:	56                   	push   %esi
     80a:	e8 71 ff ff ff       	call   780 <peek>
     80f:	83 c4 10             	add    $0x10,%esp
     812:	85 c0                	test   %eax,%eax
     814:	0f 84 8e 00 00 00    	je     8a8 <parseredirs+0xb8>
    tok = gettoken(ps, es, 0, 0);
     81a:	6a 00                	push   $0x0
     81c:	6a 00                	push   $0x0
     81e:	57                   	push   %edi
     81f:	56                   	push   %esi
     820:	e8 eb fd ff ff       	call   610 <gettoken>
     825:	89 c3                	mov    %eax,%ebx
    if(gettoken(ps, es, &q, &eq) != 'a')
     827:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     82a:	50                   	push   %eax
     82b:	8d 45 e0             	lea    -0x20(%ebp),%eax
     82e:	50                   	push   %eax
     82f:	57                   	push   %edi
     830:	56                   	push   %esi
     831:	e8 da fd ff ff       	call   610 <gettoken>
     836:	83 c4 20             	add    $0x20,%esp
     839:	83 f8 61             	cmp    $0x61,%eax
     83c:	74 23                	je     861 <parseredirs+0x71>
  printf(2, "%s\n", s);
     83e:	83 ec 04             	sub    $0x4,%esp
     841:	68 3c 14 00 00       	push   $0x143c
     846:	68 a5 14 00 00       	push   $0x14a5
     84b:	6a 02                	push   $0x2
     84d:	e8 5e 08 00 00       	call   10b0 <printf>
  exit(0);
     852:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     859:	e8 f4 06 00 00       	call   f52 <exit>
     85e:	83 c4 10             	add    $0x10,%esp
      panic("missing file for redirection");
    switch(tok){
     861:	83 fb 3c             	cmp    $0x3c,%ebx
     864:	74 32                	je     898 <parseredirs+0xa8>
     866:	83 fb 3e             	cmp    $0x3e,%ebx
     869:	74 05                	je     870 <parseredirs+0x80>
     86b:	83 fb 2b             	cmp    $0x2b,%ebx
     86e:	75 90                	jne    800 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     870:	83 ec 0c             	sub    $0xc,%esp
     873:	6a 01                	push   $0x1
     875:	68 01 02 00 00       	push   $0x201
     87a:	ff 75 e4             	pushl  -0x1c(%ebp)
     87d:	ff 75 e0             	pushl  -0x20(%ebp)
     880:	ff 75 08             	pushl  0x8(%ebp)
     883:	e8 88 fc ff ff       	call   510 <redircmd>
      break;
     888:	83 c4 20             	add    $0x20,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     88b:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     88e:	e9 6d ff ff ff       	jmp    800 <parseredirs+0x10>
     893:	90                   	nop
     894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     898:	83 ec 0c             	sub    $0xc,%esp
     89b:	6a 00                	push   $0x0
     89d:	6a 00                	push   $0x0
     89f:	eb d9                	jmp    87a <parseredirs+0x8a>
     8a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  return cmd;
}
     8a8:	8b 45 08             	mov    0x8(%ebp),%eax
     8ab:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8ae:	5b                   	pop    %ebx
     8af:	5e                   	pop    %esi
     8b0:	5f                   	pop    %edi
     8b1:	5d                   	pop    %ebp
     8b2:	c3                   	ret    
     8b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     8b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000008c0 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     8c0:	55                   	push   %ebp
     8c1:	89 e5                	mov    %esp,%ebp
     8c3:	57                   	push   %edi
     8c4:	56                   	push   %esi
     8c5:	53                   	push   %ebx
     8c6:	83 ec 30             	sub    $0x30,%esp
     8c9:	8b 75 08             	mov    0x8(%ebp),%esi
     8cc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     8cf:	68 5c 14 00 00       	push   $0x145c
     8d4:	57                   	push   %edi
     8d5:	56                   	push   %esi
     8d6:	e8 a5 fe ff ff       	call   780 <peek>
     8db:	83 c4 10             	add    $0x10,%esp
     8de:	85 c0                	test   %eax,%eax
     8e0:	0f 85 ea 00 00 00    	jne    9d0 <parseexec+0x110>
     8e6:	89 c3                	mov    %eax,%ebx
    return parseblock(ps, es);

  ret = execcmd();
     8e8:	e8 f3 fb ff ff       	call   4e0 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     8ed:	83 ec 04             	sub    $0x4,%esp
  ret = execcmd();
     8f0:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = parseredirs(ret, ps, es);
     8f3:	57                   	push   %edi
     8f4:	56                   	push   %esi
     8f5:	50                   	push   %eax
     8f6:	e8 f5 fe ff ff       	call   7f0 <parseredirs>
     8fb:	83 c4 10             	add    $0x10,%esp
     8fe:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     901:	eb 18                	jmp    91b <parseexec+0x5b>
     903:	90                   	nop
     904:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     908:	83 ec 04             	sub    $0x4,%esp
     90b:	57                   	push   %edi
     90c:	56                   	push   %esi
     90d:	ff 75 d4             	pushl  -0x2c(%ebp)
     910:	e8 db fe ff ff       	call   7f0 <parseredirs>
     915:	83 c4 10             	add    $0x10,%esp
     918:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     91b:	83 ec 04             	sub    $0x4,%esp
     91e:	68 73 14 00 00       	push   $0x1473
     923:	57                   	push   %edi
     924:	56                   	push   %esi
     925:	e8 56 fe ff ff       	call   780 <peek>
     92a:	83 c4 10             	add    $0x10,%esp
     92d:	85 c0                	test   %eax,%eax
     92f:	75 7f                	jne    9b0 <parseexec+0xf0>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     931:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     934:	50                   	push   %eax
     935:	8d 45 e0             	lea    -0x20(%ebp),%eax
     938:	50                   	push   %eax
     939:	57                   	push   %edi
     93a:	56                   	push   %esi
     93b:	e8 d0 fc ff ff       	call   610 <gettoken>
     940:	83 c4 10             	add    $0x10,%esp
     943:	85 c0                	test   %eax,%eax
     945:	74 69                	je     9b0 <parseexec+0xf0>
    if(tok != 'a')
     947:	83 f8 61             	cmp    $0x61,%eax
     94a:	74 23                	je     96f <parseexec+0xaf>
  printf(2, "%s\n", s);
     94c:	83 ec 04             	sub    $0x4,%esp
     94f:	68 5e 14 00 00       	push   $0x145e
     954:	68 a5 14 00 00       	push   $0x14a5
     959:	6a 02                	push   $0x2
     95b:	e8 50 07 00 00       	call   10b0 <printf>
  exit(0);
     960:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     967:	e8 e6 05 00 00       	call   f52 <exit>
     96c:	83 c4 10             	add    $0x10,%esp
    cmd->argv[argc] = q;
     96f:	8b 45 e0             	mov    -0x20(%ebp),%eax
     972:	8b 55 d0             	mov    -0x30(%ebp),%edx
     975:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
    cmd->eargv[argc] = eq;
     979:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     97c:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
    argc++;
     980:	83 c3 01             	add    $0x1,%ebx
    if(argc >= MAXARGS)
     983:	83 fb 09             	cmp    $0x9,%ebx
     986:	7e 80                	jle    908 <parseexec+0x48>
  printf(2, "%s\n", s);
     988:	83 ec 04             	sub    $0x4,%esp
     98b:	68 65 14 00 00       	push   $0x1465
     990:	68 a5 14 00 00       	push   $0x14a5
     995:	6a 02                	push   $0x2
     997:	e8 14 07 00 00       	call   10b0 <printf>
  exit(0);
     99c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9a3:	e8 aa 05 00 00       	call   f52 <exit>
     9a8:	83 c4 10             	add    $0x10,%esp
     9ab:	e9 58 ff ff ff       	jmp    908 <parseexec+0x48>
     9b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
     9b3:	8d 04 98             	lea    (%eax,%ebx,4),%eax
  }
  cmd->argv[argc] = 0;
     9b6:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     9bd:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
  return ret;
}
     9c4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     9c7:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9ca:	5b                   	pop    %ebx
     9cb:	5e                   	pop    %esi
     9cc:	5f                   	pop    %edi
     9cd:	5d                   	pop    %ebp
     9ce:	c3                   	ret    
     9cf:	90                   	nop
    return parseblock(ps, es);
     9d0:	83 ec 08             	sub    $0x8,%esp
     9d3:	57                   	push   %edi
     9d4:	56                   	push   %esi
     9d5:	e8 26 01 00 00       	call   b00 <parseblock>
     9da:	83 c4 10             	add    $0x10,%esp
     9dd:	89 45 d4             	mov    %eax,-0x2c(%ebp)
}
     9e0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     9e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9e6:	5b                   	pop    %ebx
     9e7:	5e                   	pop    %esi
     9e8:	5f                   	pop    %edi
     9e9:	5d                   	pop    %ebp
     9ea:	c3                   	ret    
     9eb:	90                   	nop
     9ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000009f0 <parsepipe>:
{
     9f0:	55                   	push   %ebp
     9f1:	89 e5                	mov    %esp,%ebp
     9f3:	57                   	push   %edi
     9f4:	56                   	push   %esi
     9f5:	53                   	push   %ebx
     9f6:	83 ec 14             	sub    $0x14,%esp
     9f9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     9fc:	8b 75 0c             	mov    0xc(%ebp),%esi
  cmd = parseexec(ps, es);
     9ff:	56                   	push   %esi
     a00:	53                   	push   %ebx
     a01:	e8 ba fe ff ff       	call   8c0 <parseexec>
  if(peek(ps, es, "|")){
     a06:	83 c4 0c             	add    $0xc,%esp
  cmd = parseexec(ps, es);
     a09:	89 c7                	mov    %eax,%edi
  if(peek(ps, es, "|")){
     a0b:	68 78 14 00 00       	push   $0x1478
     a10:	56                   	push   %esi
     a11:	53                   	push   %ebx
     a12:	e8 69 fd ff ff       	call   780 <peek>
     a17:	83 c4 10             	add    $0x10,%esp
     a1a:	85 c0                	test   %eax,%eax
     a1c:	75 12                	jne    a30 <parsepipe+0x40>
}
     a1e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a21:	89 f8                	mov    %edi,%eax
     a23:	5b                   	pop    %ebx
     a24:	5e                   	pop    %esi
     a25:	5f                   	pop    %edi
     a26:	5d                   	pop    %ebp
     a27:	c3                   	ret    
     a28:	90                   	nop
     a29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    gettoken(ps, es, 0, 0);
     a30:	6a 00                	push   $0x0
     a32:	6a 00                	push   $0x0
     a34:	56                   	push   %esi
     a35:	53                   	push   %ebx
     a36:	e8 d5 fb ff ff       	call   610 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     a3b:	58                   	pop    %eax
     a3c:	5a                   	pop    %edx
     a3d:	56                   	push   %esi
     a3e:	53                   	push   %ebx
     a3f:	e8 ac ff ff ff       	call   9f0 <parsepipe>
     a44:	89 7d 08             	mov    %edi,0x8(%ebp)
     a47:	89 45 0c             	mov    %eax,0xc(%ebp)
     a4a:	83 c4 10             	add    $0x10,%esp
}
     a4d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a50:	5b                   	pop    %ebx
     a51:	5e                   	pop    %esi
     a52:	5f                   	pop    %edi
     a53:	5d                   	pop    %ebp
    cmd = pipecmd(cmd, parsepipe(ps, es));
     a54:	e9 07 fb ff ff       	jmp    560 <pipecmd>
     a59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000a60 <parseline>:
{
     a60:	55                   	push   %ebp
     a61:	89 e5                	mov    %esp,%ebp
     a63:	57                   	push   %edi
     a64:	56                   	push   %esi
     a65:	53                   	push   %ebx
     a66:	83 ec 14             	sub    $0x14,%esp
     a69:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a6c:	8b 75 0c             	mov    0xc(%ebp),%esi
  cmd = parsepipe(ps, es);
     a6f:	56                   	push   %esi
     a70:	53                   	push   %ebx
     a71:	e8 7a ff ff ff       	call   9f0 <parsepipe>
  while(peek(ps, es, "&")){
     a76:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     a79:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     a7b:	eb 1b                	jmp    a98 <parseline+0x38>
     a7d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     a80:	6a 00                	push   $0x0
     a82:	6a 00                	push   $0x0
     a84:	56                   	push   %esi
     a85:	53                   	push   %ebx
     a86:	e8 85 fb ff ff       	call   610 <gettoken>
    cmd = backcmd(cmd);
     a8b:	89 3c 24             	mov    %edi,(%esp)
     a8e:	e8 4d fb ff ff       	call   5e0 <backcmd>
     a93:	83 c4 10             	add    $0x10,%esp
     a96:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     a98:	83 ec 04             	sub    $0x4,%esp
     a9b:	68 7a 14 00 00       	push   $0x147a
     aa0:	56                   	push   %esi
     aa1:	53                   	push   %ebx
     aa2:	e8 d9 fc ff ff       	call   780 <peek>
     aa7:	83 c4 10             	add    $0x10,%esp
     aaa:	85 c0                	test   %eax,%eax
     aac:	75 d2                	jne    a80 <parseline+0x20>
  if(peek(ps, es, ";")){
     aae:	83 ec 04             	sub    $0x4,%esp
     ab1:	68 76 14 00 00       	push   $0x1476
     ab6:	56                   	push   %esi
     ab7:	53                   	push   %ebx
     ab8:	e8 c3 fc ff ff       	call   780 <peek>
     abd:	83 c4 10             	add    $0x10,%esp
     ac0:	85 c0                	test   %eax,%eax
     ac2:	75 0c                	jne    ad0 <parseline+0x70>
}
     ac4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ac7:	89 f8                	mov    %edi,%eax
     ac9:	5b                   	pop    %ebx
     aca:	5e                   	pop    %esi
     acb:	5f                   	pop    %edi
     acc:	5d                   	pop    %ebp
     acd:	c3                   	ret    
     ace:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     ad0:	6a 00                	push   $0x0
     ad2:	6a 00                	push   $0x0
     ad4:	56                   	push   %esi
     ad5:	53                   	push   %ebx
     ad6:	e8 35 fb ff ff       	call   610 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     adb:	58                   	pop    %eax
     adc:	5a                   	pop    %edx
     add:	56                   	push   %esi
     ade:	53                   	push   %ebx
     adf:	e8 7c ff ff ff       	call   a60 <parseline>
     ae4:	89 7d 08             	mov    %edi,0x8(%ebp)
     ae7:	89 45 0c             	mov    %eax,0xc(%ebp)
     aea:	83 c4 10             	add    $0x10,%esp
}
     aed:	8d 65 f4             	lea    -0xc(%ebp),%esp
     af0:	5b                   	pop    %ebx
     af1:	5e                   	pop    %esi
     af2:	5f                   	pop    %edi
     af3:	5d                   	pop    %ebp
    cmd = listcmd(cmd, parseline(ps, es));
     af4:	e9 a7 fa ff ff       	jmp    5a0 <listcmd>
     af9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000b00 <parseblock>:
{
     b00:	55                   	push   %ebp
     b01:	89 e5                	mov    %esp,%ebp
     b03:	57                   	push   %edi
     b04:	56                   	push   %esi
     b05:	53                   	push   %ebx
     b06:	83 ec 10             	sub    $0x10,%esp
     b09:	8b 5d 08             	mov    0x8(%ebp),%ebx
     b0c:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     b0f:	68 5c 14 00 00       	push   $0x145c
     b14:	56                   	push   %esi
     b15:	53                   	push   %ebx
     b16:	e8 65 fc ff ff       	call   780 <peek>
     b1b:	83 c4 10             	add    $0x10,%esp
     b1e:	85 c0                	test   %eax,%eax
     b20:	74 6e                	je     b90 <parseblock+0x90>
  gettoken(ps, es, 0, 0);
     b22:	6a 00                	push   $0x0
     b24:	6a 00                	push   $0x0
     b26:	56                   	push   %esi
     b27:	53                   	push   %ebx
     b28:	e8 e3 fa ff ff       	call   610 <gettoken>
  cmd = parseline(ps, es);
     b2d:	58                   	pop    %eax
     b2e:	5a                   	pop    %edx
     b2f:	56                   	push   %esi
     b30:	53                   	push   %ebx
     b31:	e8 2a ff ff ff       	call   a60 <parseline>
  if(!peek(ps, es, ")"))
     b36:	83 c4 0c             	add    $0xc,%esp
  cmd = parseline(ps, es);
     b39:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     b3b:	68 98 14 00 00       	push   $0x1498
     b40:	56                   	push   %esi
     b41:	53                   	push   %ebx
     b42:	e8 39 fc ff ff       	call   780 <peek>
     b47:	83 c4 10             	add    $0x10,%esp
     b4a:	85 c0                	test   %eax,%eax
     b4c:	75 23                	jne    b71 <parseblock+0x71>
  printf(2, "%s\n", s);
     b4e:	83 ec 04             	sub    $0x4,%esp
     b51:	68 87 14 00 00       	push   $0x1487
     b56:	68 a5 14 00 00       	push   $0x14a5
     b5b:	6a 02                	push   $0x2
     b5d:	e8 4e 05 00 00       	call   10b0 <printf>
  exit(0);
     b62:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b69:	e8 e4 03 00 00       	call   f52 <exit>
     b6e:	83 c4 10             	add    $0x10,%esp
  gettoken(ps, es, 0, 0);
     b71:	6a 00                	push   $0x0
     b73:	6a 00                	push   $0x0
     b75:	56                   	push   %esi
     b76:	53                   	push   %ebx
     b77:	e8 94 fa ff ff       	call   610 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     b7c:	83 c4 0c             	add    $0xc,%esp
     b7f:	56                   	push   %esi
     b80:	53                   	push   %ebx
     b81:	57                   	push   %edi
     b82:	e8 69 fc ff ff       	call   7f0 <parseredirs>
}
     b87:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b8a:	5b                   	pop    %ebx
     b8b:	5e                   	pop    %esi
     b8c:	5f                   	pop    %edi
     b8d:	5d                   	pop    %ebp
     b8e:	c3                   	ret    
     b8f:	90                   	nop
  printf(2, "%s\n", s);
     b90:	83 ec 04             	sub    $0x4,%esp
     b93:	68 7c 14 00 00       	push   $0x147c
     b98:	68 a5 14 00 00       	push   $0x14a5
     b9d:	6a 02                	push   $0x2
     b9f:	e8 0c 05 00 00       	call   10b0 <printf>
  exit(0);
     ba4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bab:	e8 a2 03 00 00       	call   f52 <exit>
     bb0:	83 c4 10             	add    $0x10,%esp
     bb3:	e9 6a ff ff ff       	jmp    b22 <parseblock+0x22>
     bb8:	90                   	nop
     bb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000bc0 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     bc0:	55                   	push   %ebp
     bc1:	89 e5                	mov    %esp,%ebp
     bc3:	53                   	push   %ebx
     bc4:	83 ec 04             	sub    $0x4,%esp
     bc7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     bca:	85 db                	test   %ebx,%ebx
     bcc:	74 20                	je     bee <nulterminate+0x2e>
    return 0;

  switch(cmd->type){
     bce:	83 3b 05             	cmpl   $0x5,(%ebx)
     bd1:	77 1b                	ja     bee <nulterminate+0x2e>
     bd3:	8b 03                	mov    (%ebx),%eax
     bd5:	ff 24 85 d8 14 00 00 	jmp    *0x14d8(,%eax,4)
     bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    nulterminate(lcmd->right);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
     be0:	83 ec 0c             	sub    $0xc,%esp
     be3:	ff 73 04             	pushl  0x4(%ebx)
     be6:	e8 d5 ff ff ff       	call   bc0 <nulterminate>
    break;
     beb:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     bee:	89 d8                	mov    %ebx,%eax
     bf0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     bf3:	c9                   	leave  
     bf4:	c3                   	ret    
     bf5:	8d 76 00             	lea    0x0(%esi),%esi
    nulterminate(lcmd->left);
     bf8:	83 ec 0c             	sub    $0xc,%esp
     bfb:	ff 73 04             	pushl  0x4(%ebx)
     bfe:	e8 bd ff ff ff       	call   bc0 <nulterminate>
    nulterminate(lcmd->right);
     c03:	58                   	pop    %eax
     c04:	ff 73 08             	pushl  0x8(%ebx)
     c07:	e8 b4 ff ff ff       	call   bc0 <nulterminate>
}
     c0c:	89 d8                	mov    %ebx,%eax
    break;
     c0e:	83 c4 10             	add    $0x10,%esp
}
     c11:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c14:	c9                   	leave  
     c15:	c3                   	ret    
     c16:	8d 76 00             	lea    0x0(%esi),%esi
     c19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    for(i=0; ecmd->argv[i]; i++)
     c20:	8b 4b 04             	mov    0x4(%ebx),%ecx
     c23:	8d 43 08             	lea    0x8(%ebx),%eax
     c26:	85 c9                	test   %ecx,%ecx
     c28:	74 c4                	je     bee <nulterminate+0x2e>
     c2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     c30:	8b 50 24             	mov    0x24(%eax),%edx
     c33:	83 c0 04             	add    $0x4,%eax
     c36:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     c39:	8b 50 fc             	mov    -0x4(%eax),%edx
     c3c:	85 d2                	test   %edx,%edx
     c3e:	75 f0                	jne    c30 <nulterminate+0x70>
}
     c40:	89 d8                	mov    %ebx,%eax
     c42:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c45:	c9                   	leave  
     c46:	c3                   	ret    
     c47:	89 f6                	mov    %esi,%esi
     c49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    nulterminate(rcmd->cmd);
     c50:	83 ec 0c             	sub    $0xc,%esp
     c53:	ff 73 04             	pushl  0x4(%ebx)
     c56:	e8 65 ff ff ff       	call   bc0 <nulterminate>
    *rcmd->efile = 0;
     c5b:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     c5e:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     c61:	c6 00 00             	movb   $0x0,(%eax)
}
     c64:	89 d8                	mov    %ebx,%eax
     c66:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c69:	c9                   	leave  
     c6a:	c3                   	ret    
     c6b:	90                   	nop
     c6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000c70 <parsecmd>:
{
     c70:	55                   	push   %ebp
     c71:	89 e5                	mov    %esp,%ebp
     c73:	56                   	push   %esi
     c74:	53                   	push   %ebx
  es = s + strlen(s);
     c75:	8b 5d 08             	mov    0x8(%ebp),%ebx
     c78:	83 ec 0c             	sub    $0xc,%esp
     c7b:	53                   	push   %ebx
     c7c:	e8 ff 00 00 00       	call   d80 <strlen>
     c81:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     c83:	58                   	pop    %eax
     c84:	8d 45 08             	lea    0x8(%ebp),%eax
     c87:	5a                   	pop    %edx
     c88:	53                   	push   %ebx
     c89:	50                   	push   %eax
     c8a:	e8 d1 fd ff ff       	call   a60 <parseline>
     c8f:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     c91:	8d 45 08             	lea    0x8(%ebp),%eax
     c94:	83 c4 0c             	add    $0xc,%esp
     c97:	68 23 14 00 00       	push   $0x1423
     c9c:	53                   	push   %ebx
     c9d:	50                   	push   %eax
     c9e:	e8 dd fa ff ff       	call   780 <peek>
  if(s != es){
     ca3:	8b 45 08             	mov    0x8(%ebp),%eax
     ca6:	83 c4 10             	add    $0x10,%esp
     ca9:	39 d8                	cmp    %ebx,%eax
     cab:	74 33                	je     ce0 <parsecmd+0x70>
    printf(2, "leftovers: %s\n", s);
     cad:	83 ec 04             	sub    $0x4,%esp
     cb0:	50                   	push   %eax
     cb1:	68 9a 14 00 00       	push   $0x149a
     cb6:	6a 02                	push   $0x2
     cb8:	e8 f3 03 00 00       	call   10b0 <printf>
  printf(2, "%s\n", s);
     cbd:	83 c4 0c             	add    $0xc,%esp
     cc0:	68 5e 14 00 00       	push   $0x145e
     cc5:	68 a5 14 00 00       	push   $0x14a5
     cca:	6a 02                	push   $0x2
     ccc:	e8 df 03 00 00       	call   10b0 <printf>
  exit(0);
     cd1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     cd8:	e8 75 02 00 00       	call   f52 <exit>
     cdd:	83 c4 10             	add    $0x10,%esp
  nulterminate(cmd);
     ce0:	83 ec 0c             	sub    $0xc,%esp
     ce3:	56                   	push   %esi
     ce4:	e8 d7 fe ff ff       	call   bc0 <nulterminate>
}
     ce9:	8d 65 f8             	lea    -0x8(%ebp),%esp
     cec:	89 f0                	mov    %esi,%eax
     cee:	5b                   	pop    %ebx
     cef:	5e                   	pop    %esi
     cf0:	5d                   	pop    %ebp
     cf1:	c3                   	ret    
     cf2:	66 90                	xchg   %ax,%ax
     cf4:	66 90                	xchg   %ax,%ax
     cf6:	66 90                	xchg   %ax,%ax
     cf8:	66 90                	xchg   %ax,%ax
     cfa:	66 90                	xchg   %ax,%ax
     cfc:	66 90                	xchg   %ax,%ax
     cfe:	66 90                	xchg   %ax,%ax

00000d00 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     d00:	55                   	push   %ebp
     d01:	89 e5                	mov    %esp,%ebp
     d03:	53                   	push   %ebx
     d04:	8b 45 08             	mov    0x8(%ebp),%eax
     d07:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     d0a:	89 c2                	mov    %eax,%edx
     d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d10:	83 c1 01             	add    $0x1,%ecx
     d13:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     d17:	83 c2 01             	add    $0x1,%edx
     d1a:	84 db                	test   %bl,%bl
     d1c:	88 5a ff             	mov    %bl,-0x1(%edx)
     d1f:	75 ef                	jne    d10 <strcpy+0x10>
    ;
  return os;
}
     d21:	5b                   	pop    %ebx
     d22:	5d                   	pop    %ebp
     d23:	c3                   	ret    
     d24:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     d2a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000d30 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     d30:	55                   	push   %ebp
     d31:	89 e5                	mov    %esp,%ebp
     d33:	53                   	push   %ebx
     d34:	8b 55 08             	mov    0x8(%ebp),%edx
     d37:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     d3a:	0f b6 02             	movzbl (%edx),%eax
     d3d:	0f b6 19             	movzbl (%ecx),%ebx
     d40:	84 c0                	test   %al,%al
     d42:	75 1c                	jne    d60 <strcmp+0x30>
     d44:	eb 2a                	jmp    d70 <strcmp+0x40>
     d46:	8d 76 00             	lea    0x0(%esi),%esi
     d49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     d50:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     d53:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     d56:	83 c1 01             	add    $0x1,%ecx
     d59:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
     d5c:	84 c0                	test   %al,%al
     d5e:	74 10                	je     d70 <strcmp+0x40>
     d60:	38 d8                	cmp    %bl,%al
     d62:	74 ec                	je     d50 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
     d64:	29 d8                	sub    %ebx,%eax
}
     d66:	5b                   	pop    %ebx
     d67:	5d                   	pop    %ebp
     d68:	c3                   	ret    
     d69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d70:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     d72:	29 d8                	sub    %ebx,%eax
}
     d74:	5b                   	pop    %ebx
     d75:	5d                   	pop    %ebp
     d76:	c3                   	ret    
     d77:	89 f6                	mov    %esi,%esi
     d79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d80 <strlen>:

uint
strlen(const char *s)
{
     d80:	55                   	push   %ebp
     d81:	89 e5                	mov    %esp,%ebp
     d83:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     d86:	80 39 00             	cmpb   $0x0,(%ecx)
     d89:	74 15                	je     da0 <strlen+0x20>
     d8b:	31 d2                	xor    %edx,%edx
     d8d:	8d 76 00             	lea    0x0(%esi),%esi
     d90:	83 c2 01             	add    $0x1,%edx
     d93:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     d97:	89 d0                	mov    %edx,%eax
     d99:	75 f5                	jne    d90 <strlen+0x10>
    ;
  return n;
}
     d9b:	5d                   	pop    %ebp
     d9c:	c3                   	ret    
     d9d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
     da0:	31 c0                	xor    %eax,%eax
}
     da2:	5d                   	pop    %ebp
     da3:	c3                   	ret    
     da4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     daa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000db0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     db0:	55                   	push   %ebp
     db1:	89 e5                	mov    %esp,%ebp
     db3:	57                   	push   %edi
     db4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     db7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     dba:	8b 45 0c             	mov    0xc(%ebp),%eax
     dbd:	89 d7                	mov    %edx,%edi
     dbf:	fc                   	cld    
     dc0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     dc2:	89 d0                	mov    %edx,%eax
     dc4:	5f                   	pop    %edi
     dc5:	5d                   	pop    %ebp
     dc6:	c3                   	ret    
     dc7:	89 f6                	mov    %esi,%esi
     dc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000dd0 <strchr>:

char*
strchr(const char *s, char c)
{
     dd0:	55                   	push   %ebp
     dd1:	89 e5                	mov    %esp,%ebp
     dd3:	53                   	push   %ebx
     dd4:	8b 45 08             	mov    0x8(%ebp),%eax
     dd7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
     dda:	0f b6 10             	movzbl (%eax),%edx
     ddd:	84 d2                	test   %dl,%dl
     ddf:	74 1d                	je     dfe <strchr+0x2e>
    if(*s == c)
     de1:	38 d3                	cmp    %dl,%bl
     de3:	89 d9                	mov    %ebx,%ecx
     de5:	75 0d                	jne    df4 <strchr+0x24>
     de7:	eb 17                	jmp    e00 <strchr+0x30>
     de9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     df0:	38 ca                	cmp    %cl,%dl
     df2:	74 0c                	je     e00 <strchr+0x30>
  for(; *s; s++)
     df4:	83 c0 01             	add    $0x1,%eax
     df7:	0f b6 10             	movzbl (%eax),%edx
     dfa:	84 d2                	test   %dl,%dl
     dfc:	75 f2                	jne    df0 <strchr+0x20>
      return (char*)s;
  return 0;
     dfe:	31 c0                	xor    %eax,%eax
}
     e00:	5b                   	pop    %ebx
     e01:	5d                   	pop    %ebp
     e02:	c3                   	ret    
     e03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     e09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000e10 <gets>:

char*
gets(char *buf, int max)
{
     e10:	55                   	push   %ebp
     e11:	89 e5                	mov    %esp,%ebp
     e13:	57                   	push   %edi
     e14:	56                   	push   %esi
     e15:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     e16:	31 f6                	xor    %esi,%esi
     e18:	89 f3                	mov    %esi,%ebx
{
     e1a:	83 ec 1c             	sub    $0x1c,%esp
     e1d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
     e20:	eb 2f                	jmp    e51 <gets+0x41>
     e22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
     e28:	8d 45 e7             	lea    -0x19(%ebp),%eax
     e2b:	83 ec 04             	sub    $0x4,%esp
     e2e:	6a 01                	push   $0x1
     e30:	50                   	push   %eax
     e31:	6a 00                	push   $0x0
     e33:	e8 3a 01 00 00       	call   f72 <read>
    if(cc < 1)
     e38:	83 c4 10             	add    $0x10,%esp
     e3b:	85 c0                	test   %eax,%eax
     e3d:	7e 1c                	jle    e5b <gets+0x4b>
      break;
    buf[i++] = c;
     e3f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     e43:	83 c7 01             	add    $0x1,%edi
     e46:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
     e49:	3c 0a                	cmp    $0xa,%al
     e4b:	74 23                	je     e70 <gets+0x60>
     e4d:	3c 0d                	cmp    $0xd,%al
     e4f:	74 1f                	je     e70 <gets+0x60>
  for(i=0; i+1 < max; ){
     e51:	83 c3 01             	add    $0x1,%ebx
     e54:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     e57:	89 fe                	mov    %edi,%esi
     e59:	7c cd                	jl     e28 <gets+0x18>
     e5b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
     e5d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
     e60:	c6 03 00             	movb   $0x0,(%ebx)
}
     e63:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e66:	5b                   	pop    %ebx
     e67:	5e                   	pop    %esi
     e68:	5f                   	pop    %edi
     e69:	5d                   	pop    %ebp
     e6a:	c3                   	ret    
     e6b:	90                   	nop
     e6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e70:	8b 75 08             	mov    0x8(%ebp),%esi
     e73:	8b 45 08             	mov    0x8(%ebp),%eax
     e76:	01 de                	add    %ebx,%esi
     e78:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
     e7a:	c6 03 00             	movb   $0x0,(%ebx)
}
     e7d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e80:	5b                   	pop    %ebx
     e81:	5e                   	pop    %esi
     e82:	5f                   	pop    %edi
     e83:	5d                   	pop    %ebp
     e84:	c3                   	ret    
     e85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000e90 <stat>:

int
stat(const char *n, struct stat *st)
{
     e90:	55                   	push   %ebp
     e91:	89 e5                	mov    %esp,%ebp
     e93:	56                   	push   %esi
     e94:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     e95:	83 ec 08             	sub    $0x8,%esp
     e98:	6a 00                	push   $0x0
     e9a:	ff 75 08             	pushl  0x8(%ebp)
     e9d:	e8 f8 00 00 00       	call   f9a <open>
  if(fd < 0)
     ea2:	83 c4 10             	add    $0x10,%esp
     ea5:	85 c0                	test   %eax,%eax
     ea7:	78 27                	js     ed0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     ea9:	83 ec 08             	sub    $0x8,%esp
     eac:	ff 75 0c             	pushl  0xc(%ebp)
     eaf:	89 c3                	mov    %eax,%ebx
     eb1:	50                   	push   %eax
     eb2:	e8 fb 00 00 00       	call   fb2 <fstat>
  close(fd);
     eb7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     eba:	89 c6                	mov    %eax,%esi
  close(fd);
     ebc:	e8 c1 00 00 00       	call   f82 <close>
  return r;
     ec1:	83 c4 10             	add    $0x10,%esp
}
     ec4:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ec7:	89 f0                	mov    %esi,%eax
     ec9:	5b                   	pop    %ebx
     eca:	5e                   	pop    %esi
     ecb:	5d                   	pop    %ebp
     ecc:	c3                   	ret    
     ecd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     ed0:	be ff ff ff ff       	mov    $0xffffffff,%esi
     ed5:	eb ed                	jmp    ec4 <stat+0x34>
     ed7:	89 f6                	mov    %esi,%esi
     ed9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ee0 <atoi>:

int
atoi(const char *s)
{
     ee0:	55                   	push   %ebp
     ee1:	89 e5                	mov    %esp,%ebp
     ee3:	53                   	push   %ebx
     ee4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     ee7:	0f be 11             	movsbl (%ecx),%edx
     eea:	8d 42 d0             	lea    -0x30(%edx),%eax
     eed:	3c 09                	cmp    $0x9,%al
  n = 0;
     eef:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
     ef4:	77 1f                	ja     f15 <atoi+0x35>
     ef6:	8d 76 00             	lea    0x0(%esi),%esi
     ef9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
     f00:	8d 04 80             	lea    (%eax,%eax,4),%eax
     f03:	83 c1 01             	add    $0x1,%ecx
     f06:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
     f0a:	0f be 11             	movsbl (%ecx),%edx
     f0d:	8d 5a d0             	lea    -0x30(%edx),%ebx
     f10:	80 fb 09             	cmp    $0x9,%bl
     f13:	76 eb                	jbe    f00 <atoi+0x20>
  return n;
}
     f15:	5b                   	pop    %ebx
     f16:	5d                   	pop    %ebp
     f17:	c3                   	ret    
     f18:	90                   	nop
     f19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000f20 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     f20:	55                   	push   %ebp
     f21:	89 e5                	mov    %esp,%ebp
     f23:	56                   	push   %esi
     f24:	53                   	push   %ebx
     f25:	8b 5d 10             	mov    0x10(%ebp),%ebx
     f28:	8b 45 08             	mov    0x8(%ebp),%eax
     f2b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     f2e:	85 db                	test   %ebx,%ebx
     f30:	7e 14                	jle    f46 <memmove+0x26>
     f32:	31 d2                	xor    %edx,%edx
     f34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     f38:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     f3c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     f3f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
     f42:	39 d3                	cmp    %edx,%ebx
     f44:	75 f2                	jne    f38 <memmove+0x18>
  return vdst;
}
     f46:	5b                   	pop    %ebx
     f47:	5e                   	pop    %esi
     f48:	5d                   	pop    %ebp
     f49:	c3                   	ret    

00000f4a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     f4a:	b8 01 00 00 00       	mov    $0x1,%eax
     f4f:	cd 40                	int    $0x40
     f51:	c3                   	ret    

00000f52 <exit>:
SYSCALL(exit)
     f52:	b8 02 00 00 00       	mov    $0x2,%eax
     f57:	cd 40                	int    $0x40
     f59:	c3                   	ret    

00000f5a <wait>:
SYSCALL(wait)
     f5a:	b8 03 00 00 00       	mov    $0x3,%eax
     f5f:	cd 40                	int    $0x40
     f61:	c3                   	ret    

00000f62 <waitpid>:
SYSCALL(waitpid)
     f62:	b8 04 00 00 00       	mov    $0x4,%eax
     f67:	cd 40                	int    $0x40
     f69:	c3                   	ret    

00000f6a <pipe>:
SYSCALL(pipe)
     f6a:	b8 05 00 00 00       	mov    $0x5,%eax
     f6f:	cd 40                	int    $0x40
     f71:	c3                   	ret    

00000f72 <read>:
SYSCALL(read)
     f72:	b8 06 00 00 00       	mov    $0x6,%eax
     f77:	cd 40                	int    $0x40
     f79:	c3                   	ret    

00000f7a <write>:
SYSCALL(write)
     f7a:	b8 11 00 00 00       	mov    $0x11,%eax
     f7f:	cd 40                	int    $0x40
     f81:	c3                   	ret    

00000f82 <close>:
SYSCALL(close)
     f82:	b8 16 00 00 00       	mov    $0x16,%eax
     f87:	cd 40                	int    $0x40
     f89:	c3                   	ret    

00000f8a <kill>:
SYSCALL(kill)
     f8a:	b8 07 00 00 00       	mov    $0x7,%eax
     f8f:	cd 40                	int    $0x40
     f91:	c3                   	ret    

00000f92 <exec>:
SYSCALL(exec)
     f92:	b8 08 00 00 00       	mov    $0x8,%eax
     f97:	cd 40                	int    $0x40
     f99:	c3                   	ret    

00000f9a <open>:
SYSCALL(open)
     f9a:	b8 10 00 00 00       	mov    $0x10,%eax
     f9f:	cd 40                	int    $0x40
     fa1:	c3                   	ret    

00000fa2 <mknod>:
SYSCALL(mknod)
     fa2:	b8 12 00 00 00       	mov    $0x12,%eax
     fa7:	cd 40                	int    $0x40
     fa9:	c3                   	ret    

00000faa <unlink>:
SYSCALL(unlink)
     faa:	b8 13 00 00 00       	mov    $0x13,%eax
     faf:	cd 40                	int    $0x40
     fb1:	c3                   	ret    

00000fb2 <fstat>:
SYSCALL(fstat)
     fb2:	b8 09 00 00 00       	mov    $0x9,%eax
     fb7:	cd 40                	int    $0x40
     fb9:	c3                   	ret    

00000fba <link>:
SYSCALL(link)
     fba:	b8 14 00 00 00       	mov    $0x14,%eax
     fbf:	cd 40                	int    $0x40
     fc1:	c3                   	ret    

00000fc2 <mkdir>:
SYSCALL(mkdir)
     fc2:	b8 15 00 00 00       	mov    $0x15,%eax
     fc7:	cd 40                	int    $0x40
     fc9:	c3                   	ret    

00000fca <chdir>:
SYSCALL(chdir)
     fca:	b8 0a 00 00 00       	mov    $0xa,%eax
     fcf:	cd 40                	int    $0x40
     fd1:	c3                   	ret    

00000fd2 <dup>:
SYSCALL(dup)
     fd2:	b8 0b 00 00 00       	mov    $0xb,%eax
     fd7:	cd 40                	int    $0x40
     fd9:	c3                   	ret    

00000fda <getpid>:
SYSCALL(getpid)
     fda:	b8 0c 00 00 00       	mov    $0xc,%eax
     fdf:	cd 40                	int    $0x40
     fe1:	c3                   	ret    

00000fe2 <sbrk>:
SYSCALL(sbrk)
     fe2:	b8 0d 00 00 00       	mov    $0xd,%eax
     fe7:	cd 40                	int    $0x40
     fe9:	c3                   	ret    

00000fea <sleep>:
SYSCALL(sleep)
     fea:	b8 0e 00 00 00       	mov    $0xe,%eax
     fef:	cd 40                	int    $0x40
     ff1:	c3                   	ret    

00000ff2 <uptime>:
SYSCALL(uptime)
     ff2:	b8 0f 00 00 00       	mov    $0xf,%eax
     ff7:	cd 40                	int    $0x40
     ff9:	c3                   	ret    

00000ffa <setpriority>:
SYSCALL(setpriority)
     ffa:	b8 17 00 00 00       	mov    $0x17,%eax
     fff:	cd 40                	int    $0x40
    1001:	c3                   	ret    

00001002 <getpriority>:
SYSCALL(getpriority)
    1002:	b8 18 00 00 00       	mov    $0x18,%eax
    1007:	cd 40                	int    $0x40
    1009:	c3                   	ret    
    100a:	66 90                	xchg   %ax,%ax
    100c:	66 90                	xchg   %ax,%ax
    100e:	66 90                	xchg   %ax,%ax

00001010 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1010:	55                   	push   %ebp
    1011:	89 e5                	mov    %esp,%ebp
    1013:	57                   	push   %edi
    1014:	56                   	push   %esi
    1015:	53                   	push   %ebx
    1016:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1019:	85 d2                	test   %edx,%edx
{
    101b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    101e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    1020:	79 76                	jns    1098 <printint+0x88>
    1022:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    1026:	74 70                	je     1098 <printint+0x88>
    x = -xx;
    1028:	f7 d8                	neg    %eax
    neg = 1;
    102a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1031:	31 f6                	xor    %esi,%esi
    1033:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    1036:	eb 0a                	jmp    1042 <printint+0x32>
    1038:	90                   	nop
    1039:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    1040:	89 fe                	mov    %edi,%esi
    1042:	31 d2                	xor    %edx,%edx
    1044:	8d 7e 01             	lea    0x1(%esi),%edi
    1047:	f7 f1                	div    %ecx
    1049:	0f b6 92 f8 14 00 00 	movzbl 0x14f8(%edx),%edx
  }while((x /= base) != 0);
    1050:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    1052:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    1055:	75 e9                	jne    1040 <printint+0x30>
  if(neg)
    1057:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    105a:	85 c0                	test   %eax,%eax
    105c:	74 08                	je     1066 <printint+0x56>
    buf[i++] = '-';
    105e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    1063:	8d 7e 02             	lea    0x2(%esi),%edi
    1066:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    106a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    106d:	8d 76 00             	lea    0x0(%esi),%esi
    1070:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    1073:	83 ec 04             	sub    $0x4,%esp
    1076:	83 ee 01             	sub    $0x1,%esi
    1079:	6a 01                	push   $0x1
    107b:	53                   	push   %ebx
    107c:	57                   	push   %edi
    107d:	88 45 d7             	mov    %al,-0x29(%ebp)
    1080:	e8 f5 fe ff ff       	call   f7a <write>

  while(--i >= 0)
    1085:	83 c4 10             	add    $0x10,%esp
    1088:	39 de                	cmp    %ebx,%esi
    108a:	75 e4                	jne    1070 <printint+0x60>
    putc(fd, buf[i]);
}
    108c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    108f:	5b                   	pop    %ebx
    1090:	5e                   	pop    %esi
    1091:	5f                   	pop    %edi
    1092:	5d                   	pop    %ebp
    1093:	c3                   	ret    
    1094:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1098:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    109f:	eb 90                	jmp    1031 <printint+0x21>
    10a1:	eb 0d                	jmp    10b0 <printf>
    10a3:	90                   	nop
    10a4:	90                   	nop
    10a5:	90                   	nop
    10a6:	90                   	nop
    10a7:	90                   	nop
    10a8:	90                   	nop
    10a9:	90                   	nop
    10aa:	90                   	nop
    10ab:	90                   	nop
    10ac:	90                   	nop
    10ad:	90                   	nop
    10ae:	90                   	nop
    10af:	90                   	nop

000010b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    10b0:	55                   	push   %ebp
    10b1:	89 e5                	mov    %esp,%ebp
    10b3:	57                   	push   %edi
    10b4:	56                   	push   %esi
    10b5:	53                   	push   %ebx
    10b6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    10b9:	8b 75 0c             	mov    0xc(%ebp),%esi
    10bc:	0f b6 1e             	movzbl (%esi),%ebx
    10bf:	84 db                	test   %bl,%bl
    10c1:	0f 84 b3 00 00 00    	je     117a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    10c7:	8d 45 10             	lea    0x10(%ebp),%eax
    10ca:	83 c6 01             	add    $0x1,%esi
  state = 0;
    10cd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    10cf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    10d2:	eb 2f                	jmp    1103 <printf+0x53>
    10d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    10d8:	83 f8 25             	cmp    $0x25,%eax
    10db:	0f 84 a7 00 00 00    	je     1188 <printf+0xd8>
  write(fd, &c, 1);
    10e1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    10e4:	83 ec 04             	sub    $0x4,%esp
    10e7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    10ea:	6a 01                	push   $0x1
    10ec:	50                   	push   %eax
    10ed:	ff 75 08             	pushl  0x8(%ebp)
    10f0:	e8 85 fe ff ff       	call   f7a <write>
    10f5:	83 c4 10             	add    $0x10,%esp
    10f8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    10fb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    10ff:	84 db                	test   %bl,%bl
    1101:	74 77                	je     117a <printf+0xca>
    if(state == 0){
    1103:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    1105:	0f be cb             	movsbl %bl,%ecx
    1108:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    110b:	74 cb                	je     10d8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    110d:	83 ff 25             	cmp    $0x25,%edi
    1110:	75 e6                	jne    10f8 <printf+0x48>
      if(c == 'd'){
    1112:	83 f8 64             	cmp    $0x64,%eax
    1115:	0f 84 05 01 00 00    	je     1220 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    111b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1121:	83 f9 70             	cmp    $0x70,%ecx
    1124:	74 72                	je     1198 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1126:	83 f8 73             	cmp    $0x73,%eax
    1129:	0f 84 99 00 00 00    	je     11c8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    112f:	83 f8 63             	cmp    $0x63,%eax
    1132:	0f 84 08 01 00 00    	je     1240 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1138:	83 f8 25             	cmp    $0x25,%eax
    113b:	0f 84 ef 00 00 00    	je     1230 <printf+0x180>
  write(fd, &c, 1);
    1141:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1144:	83 ec 04             	sub    $0x4,%esp
    1147:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    114b:	6a 01                	push   $0x1
    114d:	50                   	push   %eax
    114e:	ff 75 08             	pushl  0x8(%ebp)
    1151:	e8 24 fe ff ff       	call   f7a <write>
    1156:	83 c4 0c             	add    $0xc,%esp
    1159:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    115c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    115f:	6a 01                	push   $0x1
    1161:	50                   	push   %eax
    1162:	ff 75 08             	pushl  0x8(%ebp)
    1165:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1168:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    116a:	e8 0b fe ff ff       	call   f7a <write>
  for(i = 0; fmt[i]; i++){
    116f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    1173:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1176:	84 db                	test   %bl,%bl
    1178:	75 89                	jne    1103 <printf+0x53>
    }
  }
}
    117a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    117d:	5b                   	pop    %ebx
    117e:	5e                   	pop    %esi
    117f:	5f                   	pop    %edi
    1180:	5d                   	pop    %ebp
    1181:	c3                   	ret    
    1182:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    1188:	bf 25 00 00 00       	mov    $0x25,%edi
    118d:	e9 66 ff ff ff       	jmp    10f8 <printf+0x48>
    1192:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    1198:	83 ec 0c             	sub    $0xc,%esp
    119b:	b9 10 00 00 00       	mov    $0x10,%ecx
    11a0:	6a 00                	push   $0x0
    11a2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    11a5:	8b 45 08             	mov    0x8(%ebp),%eax
    11a8:	8b 17                	mov    (%edi),%edx
    11aa:	e8 61 fe ff ff       	call   1010 <printint>
        ap++;
    11af:	89 f8                	mov    %edi,%eax
    11b1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    11b4:	31 ff                	xor    %edi,%edi
        ap++;
    11b6:	83 c0 04             	add    $0x4,%eax
    11b9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    11bc:	e9 37 ff ff ff       	jmp    10f8 <printf+0x48>
    11c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    11c8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    11cb:	8b 08                	mov    (%eax),%ecx
        ap++;
    11cd:	83 c0 04             	add    $0x4,%eax
    11d0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    11d3:	85 c9                	test   %ecx,%ecx
    11d5:	0f 84 8e 00 00 00    	je     1269 <printf+0x1b9>
        while(*s != 0){
    11db:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    11de:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    11e0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    11e2:	84 c0                	test   %al,%al
    11e4:	0f 84 0e ff ff ff    	je     10f8 <printf+0x48>
    11ea:	89 75 d0             	mov    %esi,-0x30(%ebp)
    11ed:	89 de                	mov    %ebx,%esi
    11ef:	8b 5d 08             	mov    0x8(%ebp),%ebx
    11f2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    11f5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    11f8:	83 ec 04             	sub    $0x4,%esp
          s++;
    11fb:	83 c6 01             	add    $0x1,%esi
    11fe:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1201:	6a 01                	push   $0x1
    1203:	57                   	push   %edi
    1204:	53                   	push   %ebx
    1205:	e8 70 fd ff ff       	call   f7a <write>
        while(*s != 0){
    120a:	0f b6 06             	movzbl (%esi),%eax
    120d:	83 c4 10             	add    $0x10,%esp
    1210:	84 c0                	test   %al,%al
    1212:	75 e4                	jne    11f8 <printf+0x148>
    1214:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1217:	31 ff                	xor    %edi,%edi
    1219:	e9 da fe ff ff       	jmp    10f8 <printf+0x48>
    121e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1220:	83 ec 0c             	sub    $0xc,%esp
    1223:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1228:	6a 01                	push   $0x1
    122a:	e9 73 ff ff ff       	jmp    11a2 <printf+0xf2>
    122f:	90                   	nop
  write(fd, &c, 1);
    1230:	83 ec 04             	sub    $0x4,%esp
    1233:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1236:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1239:	6a 01                	push   $0x1
    123b:	e9 21 ff ff ff       	jmp    1161 <printf+0xb1>
        putc(fd, *ap);
    1240:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    1243:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1246:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1248:	6a 01                	push   $0x1
        ap++;
    124a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    124d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1250:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1253:	50                   	push   %eax
    1254:	ff 75 08             	pushl  0x8(%ebp)
    1257:	e8 1e fd ff ff       	call   f7a <write>
        ap++;
    125c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    125f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1262:	31 ff                	xor    %edi,%edi
    1264:	e9 8f fe ff ff       	jmp    10f8 <printf+0x48>
          s = "(null)";
    1269:	bb f0 14 00 00       	mov    $0x14f0,%ebx
        while(*s != 0){
    126e:	b8 28 00 00 00       	mov    $0x28,%eax
    1273:	e9 72 ff ff ff       	jmp    11ea <printf+0x13a>
    1278:	66 90                	xchg   %ax,%ax
    127a:	66 90                	xchg   %ax,%ax
    127c:	66 90                	xchg   %ax,%ax
    127e:	66 90                	xchg   %ax,%ax

00001280 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1280:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1281:	a1 64 1b 00 00       	mov    0x1b64,%eax
{
    1286:	89 e5                	mov    %esp,%ebp
    1288:	57                   	push   %edi
    1289:	56                   	push   %esi
    128a:	53                   	push   %ebx
    128b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    128e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    1291:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1298:	39 c8                	cmp    %ecx,%eax
    129a:	8b 10                	mov    (%eax),%edx
    129c:	73 32                	jae    12d0 <free+0x50>
    129e:	39 d1                	cmp    %edx,%ecx
    12a0:	72 04                	jb     12a6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    12a2:	39 d0                	cmp    %edx,%eax
    12a4:	72 32                	jb     12d8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    12a6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    12a9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    12ac:	39 fa                	cmp    %edi,%edx
    12ae:	74 30                	je     12e0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    12b0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    12b3:	8b 50 04             	mov    0x4(%eax),%edx
    12b6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    12b9:	39 f1                	cmp    %esi,%ecx
    12bb:	74 3a                	je     12f7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    12bd:	89 08                	mov    %ecx,(%eax)
  freep = p;
    12bf:	a3 64 1b 00 00       	mov    %eax,0x1b64
}
    12c4:	5b                   	pop    %ebx
    12c5:	5e                   	pop    %esi
    12c6:	5f                   	pop    %edi
    12c7:	5d                   	pop    %ebp
    12c8:	c3                   	ret    
    12c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    12d0:	39 d0                	cmp    %edx,%eax
    12d2:	72 04                	jb     12d8 <free+0x58>
    12d4:	39 d1                	cmp    %edx,%ecx
    12d6:	72 ce                	jb     12a6 <free+0x26>
{
    12d8:	89 d0                	mov    %edx,%eax
    12da:	eb bc                	jmp    1298 <free+0x18>
    12dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    12e0:	03 72 04             	add    0x4(%edx),%esi
    12e3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    12e6:	8b 10                	mov    (%eax),%edx
    12e8:	8b 12                	mov    (%edx),%edx
    12ea:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    12ed:	8b 50 04             	mov    0x4(%eax),%edx
    12f0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    12f3:	39 f1                	cmp    %esi,%ecx
    12f5:	75 c6                	jne    12bd <free+0x3d>
    p->s.size += bp->s.size;
    12f7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    12fa:	a3 64 1b 00 00       	mov    %eax,0x1b64
    p->s.size += bp->s.size;
    12ff:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1302:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1305:	89 10                	mov    %edx,(%eax)
}
    1307:	5b                   	pop    %ebx
    1308:	5e                   	pop    %esi
    1309:	5f                   	pop    %edi
    130a:	5d                   	pop    %ebp
    130b:	c3                   	ret    
    130c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001310 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1310:	55                   	push   %ebp
    1311:	89 e5                	mov    %esp,%ebp
    1313:	57                   	push   %edi
    1314:	56                   	push   %esi
    1315:	53                   	push   %ebx
    1316:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1319:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    131c:	8b 15 64 1b 00 00    	mov    0x1b64,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1322:	8d 78 07             	lea    0x7(%eax),%edi
    1325:	c1 ef 03             	shr    $0x3,%edi
    1328:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    132b:	85 d2                	test   %edx,%edx
    132d:	0f 84 9d 00 00 00    	je     13d0 <malloc+0xc0>
    1333:	8b 02                	mov    (%edx),%eax
    1335:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1338:	39 cf                	cmp    %ecx,%edi
    133a:	76 6c                	jbe    13a8 <malloc+0x98>
    133c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1342:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1347:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    134a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1351:	eb 0e                	jmp    1361 <malloc+0x51>
    1353:	90                   	nop
    1354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1358:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    135a:	8b 48 04             	mov    0x4(%eax),%ecx
    135d:	39 f9                	cmp    %edi,%ecx
    135f:	73 47                	jae    13a8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1361:	39 05 64 1b 00 00    	cmp    %eax,0x1b64
    1367:	89 c2                	mov    %eax,%edx
    1369:	75 ed                	jne    1358 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    136b:	83 ec 0c             	sub    $0xc,%esp
    136e:	56                   	push   %esi
    136f:	e8 6e fc ff ff       	call   fe2 <sbrk>
  if(p == (char*)-1)
    1374:	83 c4 10             	add    $0x10,%esp
    1377:	83 f8 ff             	cmp    $0xffffffff,%eax
    137a:	74 1c                	je     1398 <malloc+0x88>
  hp->s.size = nu;
    137c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    137f:	83 ec 0c             	sub    $0xc,%esp
    1382:	83 c0 08             	add    $0x8,%eax
    1385:	50                   	push   %eax
    1386:	e8 f5 fe ff ff       	call   1280 <free>
  return freep;
    138b:	8b 15 64 1b 00 00    	mov    0x1b64,%edx
      if((p = morecore(nunits)) == 0)
    1391:	83 c4 10             	add    $0x10,%esp
    1394:	85 d2                	test   %edx,%edx
    1396:	75 c0                	jne    1358 <malloc+0x48>
        return 0;
  }
}
    1398:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    139b:	31 c0                	xor    %eax,%eax
}
    139d:	5b                   	pop    %ebx
    139e:	5e                   	pop    %esi
    139f:	5f                   	pop    %edi
    13a0:	5d                   	pop    %ebp
    13a1:	c3                   	ret    
    13a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    13a8:	39 cf                	cmp    %ecx,%edi
    13aa:	74 54                	je     1400 <malloc+0xf0>
        p->s.size -= nunits;
    13ac:	29 f9                	sub    %edi,%ecx
    13ae:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    13b1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    13b4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    13b7:	89 15 64 1b 00 00    	mov    %edx,0x1b64
}
    13bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    13c0:	83 c0 08             	add    $0x8,%eax
}
    13c3:	5b                   	pop    %ebx
    13c4:	5e                   	pop    %esi
    13c5:	5f                   	pop    %edi
    13c6:	5d                   	pop    %ebp
    13c7:	c3                   	ret    
    13c8:	90                   	nop
    13c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    13d0:	c7 05 64 1b 00 00 68 	movl   $0x1b68,0x1b64
    13d7:	1b 00 00 
    13da:	c7 05 68 1b 00 00 68 	movl   $0x1b68,0x1b68
    13e1:	1b 00 00 
    base.s.size = 0;
    13e4:	b8 68 1b 00 00       	mov    $0x1b68,%eax
    13e9:	c7 05 6c 1b 00 00 00 	movl   $0x0,0x1b6c
    13f0:	00 00 00 
    13f3:	e9 44 ff ff ff       	jmp    133c <malloc+0x2c>
    13f8:	90                   	nop
    13f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1400:	8b 08                	mov    (%eax),%ecx
    1402:	89 0a                	mov    %ecx,(%edx)
    1404:	eb b1                	jmp    13b7 <malloc+0xa7>
