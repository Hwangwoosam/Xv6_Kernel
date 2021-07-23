
_myyoon219:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
	exit(1);
}

int
main()
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
	int pid[10] ;

	for (int i = 0; i< 10; i++) {
  11:	31 db                	xor    %ebx,%ebx
{
  13:	83 ec 38             	sub    $0x38,%esp
  16:	eb 16                	jmp    2e <main+0x2e>
  18:	90                   	nop
  19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		pid[i] = fork() ;
		if (pid[i] < 0) {
			printf(2,"fork failed\n") ;
		} else if (pid[i] == 0) {
  20:	0f 84 36 01 00 00    	je     15c <main+0x15c>
	for (int i = 0; i< 10; i++) {
  26:	83 c3 01             	add    $0x1,%ebx
  29:	83 fb 0a             	cmp    $0xa,%ebx
  2c:	74 27                	je     55 <main+0x55>
		pid[i] = fork() ;
  2e:	e8 d7 03 00 00       	call   40a <fork>
		if (pid[i] < 0) {
  33:	85 c0                	test   %eax,%eax
		pid[i] = fork() ;
  35:	89 44 9d c0          	mov    %eax,-0x40(%ebp,%ebx,4)
		if (pid[i] < 0) {
  39:	79 e5                	jns    20 <main+0x20>
			printf(2,"fork failed\n") ;
  3b:	83 ec 08             	sub    $0x8,%esp
	for (int i = 0; i< 10; i++) {
  3e:	83 c3 01             	add    $0x1,%ebx
			printf(2,"fork failed\n") ;
  41:	68 cf 08 00 00       	push   $0x8cf
  46:	6a 02                	push   $0x2
  48:	e8 23 05 00 00       	call   570 <printf>
  4d:	83 c4 10             	add    $0x10,%esp
	for (int i = 0; i< 10; i++) {
  50:	83 fb 0a             	cmp    $0xa,%ebx
  53:	75 d9                	jne    2e <main+0x2e>
		} else {
			continue ;
		}
	}

	sleep(500) ;
  55:	83 ec 0c             	sub    $0xc,%esp
  58:	68 f4 01 00 00       	push   $0x1f4
  5d:	e8 48 04 00 00       	call   4aa <sleep>
	if (setpriority(getpid(),1) == -1) {
  62:	e8 33 04 00 00       	call   49a <getpid>
  67:	5a                   	pop    %edx
  68:	59                   	pop    %ecx
  69:	6a 01                	push   $0x1
  6b:	50                   	push   %eax
  6c:	e8 49 04 00 00       	call   4ba <setpriority>
  71:	83 c4 10             	add    $0x10,%esp
  74:	83 f8 ff             	cmp    $0xffffffff,%eax
  77:	0f 84 bd 00 00 00    	je     13a <main+0x13a>
	for (int i = 0; i< 10; i++) {
  7d:	31 db                	xor    %ebx,%ebx
  7f:	eb 1f                	jmp    a0 <main+0xa0>
  81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	for (int i = 0; i < 10; i++) {
		if (setpriority(pid[i],1) == -1) {
			printf(2,"[MAIN] pid[%d] setpriority error.\n", i) ;
			exit(1) ;
		}
		sleep(250);
  88:	83 ec 0c             	sub    $0xc,%esp
	for (int i = 0; i < 10; i++) {
  8b:	83 c3 01             	add    $0x1,%ebx
		sleep(250);
  8e:	68 fa 00 00 00       	push   $0xfa
  93:	e8 12 04 00 00       	call   4aa <sleep>
	for (int i = 0; i < 10; i++) {
  98:	83 c4 10             	add    $0x10,%esp
  9b:	83 fb 0a             	cmp    $0xa,%ebx
  9e:	74 40                	je     e0 <main+0xe0>
		if (setpriority(pid[i],1) == -1) {
  a0:	83 ec 08             	sub    $0x8,%esp
  a3:	6a 01                	push   $0x1
  a5:	ff 74 9d c0          	pushl  -0x40(%ebp,%ebx,4)
  a9:	e8 0c 04 00 00       	call   4ba <setpriority>
  ae:	83 c4 10             	add    $0x10,%esp
  b1:	83 f8 ff             	cmp    $0xffffffff,%eax
  b4:	75 d2                	jne    88 <main+0x88>
			printf(2,"[MAIN] pid[%d] setpriority error.\n", i) ;
  b6:	83 ec 04             	sub    $0x4,%esp
  b9:	53                   	push   %ebx
  ba:	68 f8 08 00 00       	push   $0x8f8
  bf:	6a 02                	push   $0x2
  c1:	e8 aa 04 00 00       	call   570 <printf>
			exit(1) ;
  c6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  cd:	e8 40 03 00 00       	call   412 <exit>
  d2:	83 c4 10             	add    $0x10,%esp
  d5:	eb b1                	jmp    88 <main+0x88>
  d7:	89 f6                	mov    %esi,%esi
  d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	}
	sleep(10000);
  e0:	83 ec 0c             	sub    $0xc,%esp
  e3:	8d 5d c0             	lea    -0x40(%ebp),%ebx
  e6:	8d 7d e8             	lea    -0x18(%ebp),%edi
  e9:	68 10 27 00 00       	push   $0x2710
  ee:	e8 b7 03 00 00       	call   4aa <sleep>
  f3:	83 c4 10             	add    $0x10,%esp
  f6:	8d 76 00             	lea    0x0(%esi),%esi
  f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (int i = 0; i < 10; i++) {
		kill(pid[i]) ;
 100:	8b 33                	mov    (%ebx),%esi
 102:	83 ec 0c             	sub    $0xc,%esp
 105:	83 c3 04             	add    $0x4,%ebx
 108:	56                   	push   %esi
 109:	e8 3c 03 00 00       	call   44a <kill>
		waitpid(pid[i], 0x0, 0) ;
 10e:	83 c4 0c             	add    $0xc,%esp
 111:	6a 00                	push   $0x0
 113:	6a 00                	push   $0x0
 115:	56                   	push   %esi
 116:	e8 07 03 00 00       	call   422 <waitpid>
	for (int i = 0; i < 10; i++) {
 11b:	83 c4 10             	add    $0x10,%esp
 11e:	39 df                	cmp    %ebx,%edi
 120:	75 de                	jne    100 <main+0x100>
	}
	exit(0) ;
 122:	83 ec 0c             	sub    $0xc,%esp
 125:	6a 00                	push   $0x0
 127:	e8 e6 02 00 00       	call   412 <exit>
}
 12c:	8d 65 f0             	lea    -0x10(%ebp),%esp
 12f:	31 c0                	xor    %eax,%eax
 131:	59                   	pop    %ecx
 132:	5b                   	pop    %ebx
 133:	5e                   	pop    %esi
 134:	5f                   	pop    %edi
 135:	5d                   	pop    %ebp
 136:	8d 61 fc             	lea    -0x4(%ecx),%esp
 139:	c3                   	ret    
		printf(2,"[MAIN] setpriority error.\n");
 13a:	50                   	push   %eax
 13b:	50                   	push   %eax
 13c:	68 dc 08 00 00       	push   $0x8dc
 141:	6a 02                	push   $0x2
 143:	e8 28 04 00 00       	call   570 <printf>
		exit(1);
 148:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 14f:	e8 be 02 00 00       	call   412 <exit>
 154:	83 c4 10             	add    $0x10,%esp
 157:	e9 21 ff ff ff       	jmp    7d <main+0x7d>
			loop(i) ;
 15c:	83 ec 0c             	sub    $0xc,%esp
 15f:	53                   	push   %ebx
 160:	e8 0b 00 00 00       	call   170 <loop>
 165:	66 90                	xchg   %ax,%ax
 167:	66 90                	xchg   %ax,%ax
 169:	66 90                	xchg   %ax,%ax
 16b:	66 90                	xchg   %ax,%ax
 16d:	66 90                	xchg   %ax,%ax
 16f:	90                   	nop

00000170 <loop>:
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	56                   	push   %esi
 174:	53                   	push   %ebx
 175:	8b 75 08             	mov    0x8(%ebp),%esi
 178:	90                   	nop
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		for(int i = 0; i< num; i++){
 180:	85 f6                	test   %esi,%esi
 182:	7e 25                	jle    1a9 <loop+0x39>
 184:	31 db                	xor    %ebx,%ebx
 186:	8d 76 00             	lea    0x0(%esi),%esi
 189:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
			printf(1,"  ");
 190:	83 ec 08             	sub    $0x8,%esp
		for(int i = 0; i< num; i++){
 193:	83 c3 01             	add    $0x1,%ebx
			printf(1,"  ");
 196:	68 c8 08 00 00       	push   $0x8c8
 19b:	6a 01                	push   $0x1
 19d:	e8 ce 03 00 00       	call   570 <printf>
		for(int i = 0; i< num; i++){
 1a2:	83 c4 10             	add    $0x10,%esp
 1a5:	39 de                	cmp    %ebx,%esi
 1a7:	75 e7                	jne    190 <loop+0x20>
		printf(1,"%d\n",num);
 1a9:	83 ec 04             	sub    $0x4,%esp
 1ac:	56                   	push   %esi
 1ad:	68 cb 08 00 00       	push   $0x8cb
 1b2:	6a 01                	push   $0x1
 1b4:	e8 b7 03 00 00       	call   570 <printf>
		for(int i = 0; i< num; i++){
 1b9:	83 c4 10             	add    $0x10,%esp
 1bc:	eb c2                	jmp    180 <loop+0x10>
 1be:	66 90                	xchg   %ax,%ax

000001c0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	53                   	push   %ebx
 1c4:	8b 45 08             	mov    0x8(%ebp),%eax
 1c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1ca:	89 c2                	mov    %eax,%edx
 1cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1d0:	83 c1 01             	add    $0x1,%ecx
 1d3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 1d7:	83 c2 01             	add    $0x1,%edx
 1da:	84 db                	test   %bl,%bl
 1dc:	88 5a ff             	mov    %bl,-0x1(%edx)
 1df:	75 ef                	jne    1d0 <strcpy+0x10>
    ;
  return os;
}
 1e1:	5b                   	pop    %ebx
 1e2:	5d                   	pop    %ebp
 1e3:	c3                   	ret    
 1e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000001f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	53                   	push   %ebx
 1f4:	8b 55 08             	mov    0x8(%ebp),%edx
 1f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1fa:	0f b6 02             	movzbl (%edx),%eax
 1fd:	0f b6 19             	movzbl (%ecx),%ebx
 200:	84 c0                	test   %al,%al
 202:	75 1c                	jne    220 <strcmp+0x30>
 204:	eb 2a                	jmp    230 <strcmp+0x40>
 206:	8d 76 00             	lea    0x0(%esi),%esi
 209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 210:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 213:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 216:	83 c1 01             	add    $0x1,%ecx
 219:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 21c:	84 c0                	test   %al,%al
 21e:	74 10                	je     230 <strcmp+0x40>
 220:	38 d8                	cmp    %bl,%al
 222:	74 ec                	je     210 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 224:	29 d8                	sub    %ebx,%eax
}
 226:	5b                   	pop    %ebx
 227:	5d                   	pop    %ebp
 228:	c3                   	ret    
 229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 230:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 232:	29 d8                	sub    %ebx,%eax
}
 234:	5b                   	pop    %ebx
 235:	5d                   	pop    %ebp
 236:	c3                   	ret    
 237:	89 f6                	mov    %esi,%esi
 239:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000240 <strlen>:

uint
strlen(const char *s)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 246:	80 39 00             	cmpb   $0x0,(%ecx)
 249:	74 15                	je     260 <strlen+0x20>
 24b:	31 d2                	xor    %edx,%edx
 24d:	8d 76 00             	lea    0x0(%esi),%esi
 250:	83 c2 01             	add    $0x1,%edx
 253:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 257:	89 d0                	mov    %edx,%eax
 259:	75 f5                	jne    250 <strlen+0x10>
    ;
  return n;
}
 25b:	5d                   	pop    %ebp
 25c:	c3                   	ret    
 25d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 260:	31 c0                	xor    %eax,%eax
}
 262:	5d                   	pop    %ebp
 263:	c3                   	ret    
 264:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 26a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000270 <memset>:

void*
memset(void *dst, int c, uint n)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	57                   	push   %edi
 274:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 277:	8b 4d 10             	mov    0x10(%ebp),%ecx
 27a:	8b 45 0c             	mov    0xc(%ebp),%eax
 27d:	89 d7                	mov    %edx,%edi
 27f:	fc                   	cld    
 280:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 282:	89 d0                	mov    %edx,%eax
 284:	5f                   	pop    %edi
 285:	5d                   	pop    %ebp
 286:	c3                   	ret    
 287:	89 f6                	mov    %esi,%esi
 289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000290 <strchr>:

char*
strchr(const char *s, char c)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	53                   	push   %ebx
 294:	8b 45 08             	mov    0x8(%ebp),%eax
 297:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 29a:	0f b6 10             	movzbl (%eax),%edx
 29d:	84 d2                	test   %dl,%dl
 29f:	74 1d                	je     2be <strchr+0x2e>
    if(*s == c)
 2a1:	38 d3                	cmp    %dl,%bl
 2a3:	89 d9                	mov    %ebx,%ecx
 2a5:	75 0d                	jne    2b4 <strchr+0x24>
 2a7:	eb 17                	jmp    2c0 <strchr+0x30>
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2b0:	38 ca                	cmp    %cl,%dl
 2b2:	74 0c                	je     2c0 <strchr+0x30>
  for(; *s; s++)
 2b4:	83 c0 01             	add    $0x1,%eax
 2b7:	0f b6 10             	movzbl (%eax),%edx
 2ba:	84 d2                	test   %dl,%dl
 2bc:	75 f2                	jne    2b0 <strchr+0x20>
      return (char*)s;
  return 0;
 2be:	31 c0                	xor    %eax,%eax
}
 2c0:	5b                   	pop    %ebx
 2c1:	5d                   	pop    %ebp
 2c2:	c3                   	ret    
 2c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002d0 <gets>:

char*
gets(char *buf, int max)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	57                   	push   %edi
 2d4:	56                   	push   %esi
 2d5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2d6:	31 f6                	xor    %esi,%esi
 2d8:	89 f3                	mov    %esi,%ebx
{
 2da:	83 ec 1c             	sub    $0x1c,%esp
 2dd:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 2e0:	eb 2f                	jmp    311 <gets+0x41>
 2e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 2e8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 2eb:	83 ec 04             	sub    $0x4,%esp
 2ee:	6a 01                	push   $0x1
 2f0:	50                   	push   %eax
 2f1:	6a 00                	push   $0x0
 2f3:	e8 3a 01 00 00       	call   432 <read>
    if(cc < 1)
 2f8:	83 c4 10             	add    $0x10,%esp
 2fb:	85 c0                	test   %eax,%eax
 2fd:	7e 1c                	jle    31b <gets+0x4b>
      break;
    buf[i++] = c;
 2ff:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 303:	83 c7 01             	add    $0x1,%edi
 306:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 309:	3c 0a                	cmp    $0xa,%al
 30b:	74 23                	je     330 <gets+0x60>
 30d:	3c 0d                	cmp    $0xd,%al
 30f:	74 1f                	je     330 <gets+0x60>
  for(i=0; i+1 < max; ){
 311:	83 c3 01             	add    $0x1,%ebx
 314:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 317:	89 fe                	mov    %edi,%esi
 319:	7c cd                	jl     2e8 <gets+0x18>
 31b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 31d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 320:	c6 03 00             	movb   $0x0,(%ebx)
}
 323:	8d 65 f4             	lea    -0xc(%ebp),%esp
 326:	5b                   	pop    %ebx
 327:	5e                   	pop    %esi
 328:	5f                   	pop    %edi
 329:	5d                   	pop    %ebp
 32a:	c3                   	ret    
 32b:	90                   	nop
 32c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 330:	8b 75 08             	mov    0x8(%ebp),%esi
 333:	8b 45 08             	mov    0x8(%ebp),%eax
 336:	01 de                	add    %ebx,%esi
 338:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 33a:	c6 03 00             	movb   $0x0,(%ebx)
}
 33d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 340:	5b                   	pop    %ebx
 341:	5e                   	pop    %esi
 342:	5f                   	pop    %edi
 343:	5d                   	pop    %ebp
 344:	c3                   	ret    
 345:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 349:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000350 <stat>:

int
stat(const char *n, struct stat *st)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	56                   	push   %esi
 354:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 355:	83 ec 08             	sub    $0x8,%esp
 358:	6a 00                	push   $0x0
 35a:	ff 75 08             	pushl  0x8(%ebp)
 35d:	e8 f8 00 00 00       	call   45a <open>
  if(fd < 0)
 362:	83 c4 10             	add    $0x10,%esp
 365:	85 c0                	test   %eax,%eax
 367:	78 27                	js     390 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 369:	83 ec 08             	sub    $0x8,%esp
 36c:	ff 75 0c             	pushl  0xc(%ebp)
 36f:	89 c3                	mov    %eax,%ebx
 371:	50                   	push   %eax
 372:	e8 fb 00 00 00       	call   472 <fstat>
  close(fd);
 377:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 37a:	89 c6                	mov    %eax,%esi
  close(fd);
 37c:	e8 c1 00 00 00       	call   442 <close>
  return r;
 381:	83 c4 10             	add    $0x10,%esp
}
 384:	8d 65 f8             	lea    -0x8(%ebp),%esp
 387:	89 f0                	mov    %esi,%eax
 389:	5b                   	pop    %ebx
 38a:	5e                   	pop    %esi
 38b:	5d                   	pop    %ebp
 38c:	c3                   	ret    
 38d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 390:	be ff ff ff ff       	mov    $0xffffffff,%esi
 395:	eb ed                	jmp    384 <stat+0x34>
 397:	89 f6                	mov    %esi,%esi
 399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003a0 <atoi>:

int
atoi(const char *s)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	53                   	push   %ebx
 3a4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3a7:	0f be 11             	movsbl (%ecx),%edx
 3aa:	8d 42 d0             	lea    -0x30(%edx),%eax
 3ad:	3c 09                	cmp    $0x9,%al
  n = 0;
 3af:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 3b4:	77 1f                	ja     3d5 <atoi+0x35>
 3b6:	8d 76 00             	lea    0x0(%esi),%esi
 3b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 3c0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 3c3:	83 c1 01             	add    $0x1,%ecx
 3c6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 3ca:	0f be 11             	movsbl (%ecx),%edx
 3cd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 3d0:	80 fb 09             	cmp    $0x9,%bl
 3d3:	76 eb                	jbe    3c0 <atoi+0x20>
  return n;
}
 3d5:	5b                   	pop    %ebx
 3d6:	5d                   	pop    %ebp
 3d7:	c3                   	ret    
 3d8:	90                   	nop
 3d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	56                   	push   %esi
 3e4:	53                   	push   %ebx
 3e5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 3e8:	8b 45 08             	mov    0x8(%ebp),%eax
 3eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3ee:	85 db                	test   %ebx,%ebx
 3f0:	7e 14                	jle    406 <memmove+0x26>
 3f2:	31 d2                	xor    %edx,%edx
 3f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 3f8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 3fc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 3ff:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 402:	39 d3                	cmp    %edx,%ebx
 404:	75 f2                	jne    3f8 <memmove+0x18>
  return vdst;
}
 406:	5b                   	pop    %ebx
 407:	5e                   	pop    %esi
 408:	5d                   	pop    %ebp
 409:	c3                   	ret    

0000040a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 40a:	b8 01 00 00 00       	mov    $0x1,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <exit>:
SYSCALL(exit)
 412:	b8 02 00 00 00       	mov    $0x2,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <wait>:
SYSCALL(wait)
 41a:	b8 03 00 00 00       	mov    $0x3,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <waitpid>:
SYSCALL(waitpid)
 422:	b8 04 00 00 00       	mov    $0x4,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <pipe>:
SYSCALL(pipe)
 42a:	b8 05 00 00 00       	mov    $0x5,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <read>:
SYSCALL(read)
 432:	b8 06 00 00 00       	mov    $0x6,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <write>:
SYSCALL(write)
 43a:	b8 11 00 00 00       	mov    $0x11,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <close>:
SYSCALL(close)
 442:	b8 16 00 00 00       	mov    $0x16,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <kill>:
SYSCALL(kill)
 44a:	b8 07 00 00 00       	mov    $0x7,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <exec>:
SYSCALL(exec)
 452:	b8 08 00 00 00       	mov    $0x8,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <open>:
SYSCALL(open)
 45a:	b8 10 00 00 00       	mov    $0x10,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <mknod>:
SYSCALL(mknod)
 462:	b8 12 00 00 00       	mov    $0x12,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    

0000046a <unlink>:
SYSCALL(unlink)
 46a:	b8 13 00 00 00       	mov    $0x13,%eax
 46f:	cd 40                	int    $0x40
 471:	c3                   	ret    

00000472 <fstat>:
SYSCALL(fstat)
 472:	b8 09 00 00 00       	mov    $0x9,%eax
 477:	cd 40                	int    $0x40
 479:	c3                   	ret    

0000047a <link>:
SYSCALL(link)
 47a:	b8 14 00 00 00       	mov    $0x14,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    

00000482 <mkdir>:
SYSCALL(mkdir)
 482:	b8 15 00 00 00       	mov    $0x15,%eax
 487:	cd 40                	int    $0x40
 489:	c3                   	ret    

0000048a <chdir>:
SYSCALL(chdir)
 48a:	b8 0a 00 00 00       	mov    $0xa,%eax
 48f:	cd 40                	int    $0x40
 491:	c3                   	ret    

00000492 <dup>:
SYSCALL(dup)
 492:	b8 0b 00 00 00       	mov    $0xb,%eax
 497:	cd 40                	int    $0x40
 499:	c3                   	ret    

0000049a <getpid>:
SYSCALL(getpid)
 49a:	b8 0c 00 00 00       	mov    $0xc,%eax
 49f:	cd 40                	int    $0x40
 4a1:	c3                   	ret    

000004a2 <sbrk>:
SYSCALL(sbrk)
 4a2:	b8 0d 00 00 00       	mov    $0xd,%eax
 4a7:	cd 40                	int    $0x40
 4a9:	c3                   	ret    

000004aa <sleep>:
SYSCALL(sleep)
 4aa:	b8 0e 00 00 00       	mov    $0xe,%eax
 4af:	cd 40                	int    $0x40
 4b1:	c3                   	ret    

000004b2 <uptime>:
SYSCALL(uptime)
 4b2:	b8 0f 00 00 00       	mov    $0xf,%eax
 4b7:	cd 40                	int    $0x40
 4b9:	c3                   	ret    

000004ba <setpriority>:
SYSCALL(setpriority)
 4ba:	b8 17 00 00 00       	mov    $0x17,%eax
 4bf:	cd 40                	int    $0x40
 4c1:	c3                   	ret    

000004c2 <getpriority>:
SYSCALL(getpriority)
 4c2:	b8 18 00 00 00       	mov    $0x18,%eax
 4c7:	cd 40                	int    $0x40
 4c9:	c3                   	ret    
 4ca:	66 90                	xchg   %ax,%ax
 4cc:	66 90                	xchg   %ax,%ax
 4ce:	66 90                	xchg   %ax,%ax

000004d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	57                   	push   %edi
 4d4:	56                   	push   %esi
 4d5:	53                   	push   %ebx
 4d6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 4d9:	85 d2                	test   %edx,%edx
{
 4db:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 4de:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 4e0:	79 76                	jns    558 <printint+0x88>
 4e2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 4e6:	74 70                	je     558 <printint+0x88>
    x = -xx;
 4e8:	f7 d8                	neg    %eax
    neg = 1;
 4ea:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 4f1:	31 f6                	xor    %esi,%esi
 4f3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 4f6:	eb 0a                	jmp    502 <printint+0x32>
 4f8:	90                   	nop
 4f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 500:	89 fe                	mov    %edi,%esi
 502:	31 d2                	xor    %edx,%edx
 504:	8d 7e 01             	lea    0x1(%esi),%edi
 507:	f7 f1                	div    %ecx
 509:	0f b6 92 24 09 00 00 	movzbl 0x924(%edx),%edx
  }while((x /= base) != 0);
 510:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 512:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 515:	75 e9                	jne    500 <printint+0x30>
  if(neg)
 517:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 51a:	85 c0                	test   %eax,%eax
 51c:	74 08                	je     526 <printint+0x56>
    buf[i++] = '-';
 51e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 523:	8d 7e 02             	lea    0x2(%esi),%edi
 526:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 52a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 52d:	8d 76 00             	lea    0x0(%esi),%esi
 530:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 533:	83 ec 04             	sub    $0x4,%esp
 536:	83 ee 01             	sub    $0x1,%esi
 539:	6a 01                	push   $0x1
 53b:	53                   	push   %ebx
 53c:	57                   	push   %edi
 53d:	88 45 d7             	mov    %al,-0x29(%ebp)
 540:	e8 f5 fe ff ff       	call   43a <write>

  while(--i >= 0)
 545:	83 c4 10             	add    $0x10,%esp
 548:	39 de                	cmp    %ebx,%esi
 54a:	75 e4                	jne    530 <printint+0x60>
    putc(fd, buf[i]);
}
 54c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 54f:	5b                   	pop    %ebx
 550:	5e                   	pop    %esi
 551:	5f                   	pop    %edi
 552:	5d                   	pop    %ebp
 553:	c3                   	ret    
 554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 558:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 55f:	eb 90                	jmp    4f1 <printint+0x21>
 561:	eb 0d                	jmp    570 <printf>
 563:	90                   	nop
 564:	90                   	nop
 565:	90                   	nop
 566:	90                   	nop
 567:	90                   	nop
 568:	90                   	nop
 569:	90                   	nop
 56a:	90                   	nop
 56b:	90                   	nop
 56c:	90                   	nop
 56d:	90                   	nop
 56e:	90                   	nop
 56f:	90                   	nop

00000570 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	57                   	push   %edi
 574:	56                   	push   %esi
 575:	53                   	push   %ebx
 576:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 579:	8b 75 0c             	mov    0xc(%ebp),%esi
 57c:	0f b6 1e             	movzbl (%esi),%ebx
 57f:	84 db                	test   %bl,%bl
 581:	0f 84 b3 00 00 00    	je     63a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 587:	8d 45 10             	lea    0x10(%ebp),%eax
 58a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 58d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 58f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 592:	eb 2f                	jmp    5c3 <printf+0x53>
 594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 598:	83 f8 25             	cmp    $0x25,%eax
 59b:	0f 84 a7 00 00 00    	je     648 <printf+0xd8>
  write(fd, &c, 1);
 5a1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 5a4:	83 ec 04             	sub    $0x4,%esp
 5a7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 5aa:	6a 01                	push   $0x1
 5ac:	50                   	push   %eax
 5ad:	ff 75 08             	pushl  0x8(%ebp)
 5b0:	e8 85 fe ff ff       	call   43a <write>
 5b5:	83 c4 10             	add    $0x10,%esp
 5b8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 5bb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 5bf:	84 db                	test   %bl,%bl
 5c1:	74 77                	je     63a <printf+0xca>
    if(state == 0){
 5c3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 5c5:	0f be cb             	movsbl %bl,%ecx
 5c8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 5cb:	74 cb                	je     598 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 5cd:	83 ff 25             	cmp    $0x25,%edi
 5d0:	75 e6                	jne    5b8 <printf+0x48>
      if(c == 'd'){
 5d2:	83 f8 64             	cmp    $0x64,%eax
 5d5:	0f 84 05 01 00 00    	je     6e0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 5db:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 5e1:	83 f9 70             	cmp    $0x70,%ecx
 5e4:	74 72                	je     658 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 5e6:	83 f8 73             	cmp    $0x73,%eax
 5e9:	0f 84 99 00 00 00    	je     688 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 5ef:	83 f8 63             	cmp    $0x63,%eax
 5f2:	0f 84 08 01 00 00    	je     700 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 5f8:	83 f8 25             	cmp    $0x25,%eax
 5fb:	0f 84 ef 00 00 00    	je     6f0 <printf+0x180>
  write(fd, &c, 1);
 601:	8d 45 e7             	lea    -0x19(%ebp),%eax
 604:	83 ec 04             	sub    $0x4,%esp
 607:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 60b:	6a 01                	push   $0x1
 60d:	50                   	push   %eax
 60e:	ff 75 08             	pushl  0x8(%ebp)
 611:	e8 24 fe ff ff       	call   43a <write>
 616:	83 c4 0c             	add    $0xc,%esp
 619:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 61c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 61f:	6a 01                	push   $0x1
 621:	50                   	push   %eax
 622:	ff 75 08             	pushl  0x8(%ebp)
 625:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 628:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 62a:	e8 0b fe ff ff       	call   43a <write>
  for(i = 0; fmt[i]; i++){
 62f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 633:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 636:	84 db                	test   %bl,%bl
 638:	75 89                	jne    5c3 <printf+0x53>
    }
  }
}
 63a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 63d:	5b                   	pop    %ebx
 63e:	5e                   	pop    %esi
 63f:	5f                   	pop    %edi
 640:	5d                   	pop    %ebp
 641:	c3                   	ret    
 642:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 648:	bf 25 00 00 00       	mov    $0x25,%edi
 64d:	e9 66 ff ff ff       	jmp    5b8 <printf+0x48>
 652:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 658:	83 ec 0c             	sub    $0xc,%esp
 65b:	b9 10 00 00 00       	mov    $0x10,%ecx
 660:	6a 00                	push   $0x0
 662:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 665:	8b 45 08             	mov    0x8(%ebp),%eax
 668:	8b 17                	mov    (%edi),%edx
 66a:	e8 61 fe ff ff       	call   4d0 <printint>
        ap++;
 66f:	89 f8                	mov    %edi,%eax
 671:	83 c4 10             	add    $0x10,%esp
      state = 0;
 674:	31 ff                	xor    %edi,%edi
        ap++;
 676:	83 c0 04             	add    $0x4,%eax
 679:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 67c:	e9 37 ff ff ff       	jmp    5b8 <printf+0x48>
 681:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 688:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 68b:	8b 08                	mov    (%eax),%ecx
        ap++;
 68d:	83 c0 04             	add    $0x4,%eax
 690:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 693:	85 c9                	test   %ecx,%ecx
 695:	0f 84 8e 00 00 00    	je     729 <printf+0x1b9>
        while(*s != 0){
 69b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 69e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 6a0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 6a2:	84 c0                	test   %al,%al
 6a4:	0f 84 0e ff ff ff    	je     5b8 <printf+0x48>
 6aa:	89 75 d0             	mov    %esi,-0x30(%ebp)
 6ad:	89 de                	mov    %ebx,%esi
 6af:	8b 5d 08             	mov    0x8(%ebp),%ebx
 6b2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 6b5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 6b8:	83 ec 04             	sub    $0x4,%esp
          s++;
 6bb:	83 c6 01             	add    $0x1,%esi
 6be:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 6c1:	6a 01                	push   $0x1
 6c3:	57                   	push   %edi
 6c4:	53                   	push   %ebx
 6c5:	e8 70 fd ff ff       	call   43a <write>
        while(*s != 0){
 6ca:	0f b6 06             	movzbl (%esi),%eax
 6cd:	83 c4 10             	add    $0x10,%esp
 6d0:	84 c0                	test   %al,%al
 6d2:	75 e4                	jne    6b8 <printf+0x148>
 6d4:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 6d7:	31 ff                	xor    %edi,%edi
 6d9:	e9 da fe ff ff       	jmp    5b8 <printf+0x48>
 6de:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 6e0:	83 ec 0c             	sub    $0xc,%esp
 6e3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6e8:	6a 01                	push   $0x1
 6ea:	e9 73 ff ff ff       	jmp    662 <printf+0xf2>
 6ef:	90                   	nop
  write(fd, &c, 1);
 6f0:	83 ec 04             	sub    $0x4,%esp
 6f3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 6f6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 6f9:	6a 01                	push   $0x1
 6fb:	e9 21 ff ff ff       	jmp    621 <printf+0xb1>
        putc(fd, *ap);
 700:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 703:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 706:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 708:	6a 01                	push   $0x1
        ap++;
 70a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 70d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 710:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 713:	50                   	push   %eax
 714:	ff 75 08             	pushl  0x8(%ebp)
 717:	e8 1e fd ff ff       	call   43a <write>
        ap++;
 71c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 71f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 722:	31 ff                	xor    %edi,%edi
 724:	e9 8f fe ff ff       	jmp    5b8 <printf+0x48>
          s = "(null)";
 729:	bb 1c 09 00 00       	mov    $0x91c,%ebx
        while(*s != 0){
 72e:	b8 28 00 00 00       	mov    $0x28,%eax
 733:	e9 72 ff ff ff       	jmp    6aa <printf+0x13a>
 738:	66 90                	xchg   %ax,%ax
 73a:	66 90                	xchg   %ax,%ax
 73c:	66 90                	xchg   %ax,%ax
 73e:	66 90                	xchg   %ax,%ax

00000740 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 740:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 741:	a1 0c 0c 00 00       	mov    0xc0c,%eax
{
 746:	89 e5                	mov    %esp,%ebp
 748:	57                   	push   %edi
 749:	56                   	push   %esi
 74a:	53                   	push   %ebx
 74b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 74e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 751:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 758:	39 c8                	cmp    %ecx,%eax
 75a:	8b 10                	mov    (%eax),%edx
 75c:	73 32                	jae    790 <free+0x50>
 75e:	39 d1                	cmp    %edx,%ecx
 760:	72 04                	jb     766 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 762:	39 d0                	cmp    %edx,%eax
 764:	72 32                	jb     798 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 766:	8b 73 fc             	mov    -0x4(%ebx),%esi
 769:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 76c:	39 fa                	cmp    %edi,%edx
 76e:	74 30                	je     7a0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 770:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 773:	8b 50 04             	mov    0x4(%eax),%edx
 776:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 779:	39 f1                	cmp    %esi,%ecx
 77b:	74 3a                	je     7b7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 77d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 77f:	a3 0c 0c 00 00       	mov    %eax,0xc0c
}
 784:	5b                   	pop    %ebx
 785:	5e                   	pop    %esi
 786:	5f                   	pop    %edi
 787:	5d                   	pop    %ebp
 788:	c3                   	ret    
 789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 790:	39 d0                	cmp    %edx,%eax
 792:	72 04                	jb     798 <free+0x58>
 794:	39 d1                	cmp    %edx,%ecx
 796:	72 ce                	jb     766 <free+0x26>
{
 798:	89 d0                	mov    %edx,%eax
 79a:	eb bc                	jmp    758 <free+0x18>
 79c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 7a0:	03 72 04             	add    0x4(%edx),%esi
 7a3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7a6:	8b 10                	mov    (%eax),%edx
 7a8:	8b 12                	mov    (%edx),%edx
 7aa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 7ad:	8b 50 04             	mov    0x4(%eax),%edx
 7b0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7b3:	39 f1                	cmp    %esi,%ecx
 7b5:	75 c6                	jne    77d <free+0x3d>
    p->s.size += bp->s.size;
 7b7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 7ba:	a3 0c 0c 00 00       	mov    %eax,0xc0c
    p->s.size += bp->s.size;
 7bf:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 7c2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 7c5:	89 10                	mov    %edx,(%eax)
}
 7c7:	5b                   	pop    %ebx
 7c8:	5e                   	pop    %esi
 7c9:	5f                   	pop    %edi
 7ca:	5d                   	pop    %ebp
 7cb:	c3                   	ret    
 7cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000007d0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 7d0:	55                   	push   %ebp
 7d1:	89 e5                	mov    %esp,%ebp
 7d3:	57                   	push   %edi
 7d4:	56                   	push   %esi
 7d5:	53                   	push   %ebx
 7d6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7d9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 7dc:	8b 15 0c 0c 00 00    	mov    0xc0c,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7e2:	8d 78 07             	lea    0x7(%eax),%edi
 7e5:	c1 ef 03             	shr    $0x3,%edi
 7e8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 7eb:	85 d2                	test   %edx,%edx
 7ed:	0f 84 9d 00 00 00    	je     890 <malloc+0xc0>
 7f3:	8b 02                	mov    (%edx),%eax
 7f5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 7f8:	39 cf                	cmp    %ecx,%edi
 7fa:	76 6c                	jbe    868 <malloc+0x98>
 7fc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 802:	bb 00 10 00 00       	mov    $0x1000,%ebx
 807:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 80a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 811:	eb 0e                	jmp    821 <malloc+0x51>
 813:	90                   	nop
 814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 818:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 81a:	8b 48 04             	mov    0x4(%eax),%ecx
 81d:	39 f9                	cmp    %edi,%ecx
 81f:	73 47                	jae    868 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 821:	39 05 0c 0c 00 00    	cmp    %eax,0xc0c
 827:	89 c2                	mov    %eax,%edx
 829:	75 ed                	jne    818 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 82b:	83 ec 0c             	sub    $0xc,%esp
 82e:	56                   	push   %esi
 82f:	e8 6e fc ff ff       	call   4a2 <sbrk>
  if(p == (char*)-1)
 834:	83 c4 10             	add    $0x10,%esp
 837:	83 f8 ff             	cmp    $0xffffffff,%eax
 83a:	74 1c                	je     858 <malloc+0x88>
  hp->s.size = nu;
 83c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 83f:	83 ec 0c             	sub    $0xc,%esp
 842:	83 c0 08             	add    $0x8,%eax
 845:	50                   	push   %eax
 846:	e8 f5 fe ff ff       	call   740 <free>
  return freep;
 84b:	8b 15 0c 0c 00 00    	mov    0xc0c,%edx
      if((p = morecore(nunits)) == 0)
 851:	83 c4 10             	add    $0x10,%esp
 854:	85 d2                	test   %edx,%edx
 856:	75 c0                	jne    818 <malloc+0x48>
        return 0;
  }
}
 858:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 85b:	31 c0                	xor    %eax,%eax
}
 85d:	5b                   	pop    %ebx
 85e:	5e                   	pop    %esi
 85f:	5f                   	pop    %edi
 860:	5d                   	pop    %ebp
 861:	c3                   	ret    
 862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 868:	39 cf                	cmp    %ecx,%edi
 86a:	74 54                	je     8c0 <malloc+0xf0>
        p->s.size -= nunits;
 86c:	29 f9                	sub    %edi,%ecx
 86e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 871:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 874:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 877:	89 15 0c 0c 00 00    	mov    %edx,0xc0c
}
 87d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 880:	83 c0 08             	add    $0x8,%eax
}
 883:	5b                   	pop    %ebx
 884:	5e                   	pop    %esi
 885:	5f                   	pop    %edi
 886:	5d                   	pop    %ebp
 887:	c3                   	ret    
 888:	90                   	nop
 889:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 890:	c7 05 0c 0c 00 00 10 	movl   $0xc10,0xc0c
 897:	0c 00 00 
 89a:	c7 05 10 0c 00 00 10 	movl   $0xc10,0xc10
 8a1:	0c 00 00 
    base.s.size = 0;
 8a4:	b8 10 0c 00 00       	mov    $0xc10,%eax
 8a9:	c7 05 14 0c 00 00 00 	movl   $0x0,0xc14
 8b0:	00 00 00 
 8b3:	e9 44 ff ff ff       	jmp    7fc <malloc+0x2c>
 8b8:	90                   	nop
 8b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 8c0:	8b 08                	mov    (%eax),%ecx
 8c2:	89 0a                	mov    %ecx,(%edx)
 8c4:	eb b1                	jmp    877 <malloc+0xa7>
