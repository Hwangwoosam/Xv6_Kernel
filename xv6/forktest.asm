
_forktest:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "fork test OK\n");
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
  forktest();
  11:	e8 4a 00 00 00       	call   60 <forktest>
  exit(0);
  16:	83 ec 0c             	sub    $0xc,%esp
  19:	6a 00                	push   $0x0
  1b:	e8 e2 03 00 00       	call   402 <exit>
}
  20:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  23:	31 c0                	xor    %eax,%eax
  25:	c9                   	leave  
  26:	8d 61 fc             	lea    -0x4(%ecx),%esp
  29:	c3                   	ret    
  2a:	66 90                	xchg   %ax,%ax
  2c:	66 90                	xchg   %ax,%ax
  2e:	66 90                	xchg   %ax,%ax

00000030 <printf>:
{
  30:	55                   	push   %ebp
  31:	89 e5                	mov    %esp,%ebp
  33:	53                   	push   %ebx
  34:	83 ec 10             	sub    $0x10,%esp
  37:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  write(fd, s, strlen(s));
  3a:	53                   	push   %ebx
  3b:	e8 f0 01 00 00       	call   230 <strlen>
  40:	83 c4 0c             	add    $0xc,%esp
  43:	50                   	push   %eax
  44:	53                   	push   %ebx
  45:	ff 75 08             	pushl  0x8(%ebp)
  48:	e8 dd 03 00 00       	call   42a <write>
}
  4d:	83 c4 10             	add    $0x10,%esp
  50:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  53:	c9                   	leave  
  54:	c3                   	ret    
  55:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000060 <forktest>:
{
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	53                   	push   %ebx
  for(n=0; n<N; n++){
  64:	31 db                	xor    %ebx,%ebx
{
  66:	83 ec 10             	sub    $0x10,%esp
  write(fd, s, strlen(s));
  69:	68 bc 04 00 00       	push   $0x4bc
  6e:	e8 bd 01 00 00       	call   230 <strlen>
  73:	83 c4 0c             	add    $0xc,%esp
  76:	50                   	push   %eax
  77:	68 bc 04 00 00       	push   $0x4bc
  7c:	6a 01                	push   $0x1
  7e:	e8 a7 03 00 00       	call   42a <write>
  83:	83 c4 10             	add    $0x10,%esp
  86:	eb 13                	jmp    9b <forktest+0x3b>
  88:	90                   	nop
  89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(n=0; n<N; n++){
  90:	83 c3 01             	add    $0x1,%ebx
  93:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  99:	74 23                	je     be <forktest+0x5e>
    pid = fork();
  9b:	e8 5a 03 00 00       	call   3fa <fork>
    if(pid < 0)
  a0:	85 c0                	test   %eax,%eax
  a2:	78 4c                	js     f0 <forktest+0x90>
    if(pid == 0)
  a4:	75 ea                	jne    90 <forktest+0x30>
      exit(0);
  a6:	83 ec 0c             	sub    $0xc,%esp
  for(n=0; n<N; n++){
  a9:	83 c3 01             	add    $0x1,%ebx
      exit(0);
  ac:	6a 00                	push   $0x0
  ae:	e8 4f 03 00 00       	call   402 <exit>
  b3:	83 c4 10             	add    $0x10,%esp
  for(n=0; n<N; n++){
  b6:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  bc:	75 dd                	jne    9b <forktest+0x3b>
  write(fd, s, strlen(s));
  be:	83 ec 0c             	sub    $0xc,%esp
  c1:	68 fc 04 00 00       	push   $0x4fc
  c6:	e8 65 01 00 00       	call   230 <strlen>
  cb:	83 c4 0c             	add    $0xc,%esp
  ce:	50                   	push   %eax
  cf:	68 fc 04 00 00       	push   $0x4fc
  d4:	6a 01                	push   $0x1
  d6:	e8 4f 03 00 00       	call   42a <write>
    exit(0);
  db:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  e2:	e8 1b 03 00 00       	call   402 <exit>
  e7:	83 c4 10             	add    $0x10,%esp
  ea:	eb 19                	jmp    105 <forktest+0xa5>
  ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(; n > 0; n--){
  f0:	85 db                	test   %ebx,%ebx
  f2:	75 11                	jne    105 <forktest+0xa5>
  f4:	eb 5a                	jmp    150 <forktest+0xf0>
  f6:	8d 76 00             	lea    0x0(%esi),%esi
  f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 100:	83 eb 01             	sub    $0x1,%ebx
 103:	74 4b                	je     150 <forktest+0xf0>
    if(wait(0x0) < 0){
 105:	83 ec 0c             	sub    $0xc,%esp
 108:	6a 00                	push   $0x0
 10a:	e8 fb 02 00 00       	call   40a <wait>
 10f:	83 c4 10             	add    $0x10,%esp
 112:	85 c0                	test   %eax,%eax
 114:	79 ea                	jns    100 <forktest+0xa0>
  write(fd, s, strlen(s));
 116:	83 ec 0c             	sub    $0xc,%esp
 119:	68 c7 04 00 00       	push   $0x4c7
 11e:	e8 0d 01 00 00       	call   230 <strlen>
 123:	83 c4 0c             	add    $0xc,%esp
 126:	50                   	push   %eax
 127:	68 c7 04 00 00       	push   $0x4c7
 12c:	6a 01                	push   $0x1
 12e:	e8 f7 02 00 00       	call   42a <write>
      exit(0);
 133:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 13a:	e8 c3 02 00 00       	call   402 <exit>
 13f:	83 c4 10             	add    $0x10,%esp
  for(; n > 0; n--){
 142:	83 eb 01             	sub    $0x1,%ebx
 145:	75 be                	jne    105 <forktest+0xa5>
 147:	89 f6                	mov    %esi,%esi
 149:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  if(wait(0x0) != -1){
 150:	83 ec 0c             	sub    $0xc,%esp
 153:	6a 00                	push   $0x0
 155:	e8 b0 02 00 00       	call   40a <wait>
 15a:	83 c4 10             	add    $0x10,%esp
 15d:	83 f8 ff             	cmp    $0xffffffff,%eax
 160:	74 2c                	je     18e <forktest+0x12e>
  write(fd, s, strlen(s));
 162:	83 ec 0c             	sub    $0xc,%esp
 165:	68 db 04 00 00       	push   $0x4db
 16a:	e8 c1 00 00 00       	call   230 <strlen>
 16f:	83 c4 0c             	add    $0xc,%esp
 172:	50                   	push   %eax
 173:	68 db 04 00 00       	push   $0x4db
 178:	6a 01                	push   $0x1
 17a:	e8 ab 02 00 00       	call   42a <write>
    exit(0);
 17f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 186:	e8 77 02 00 00       	call   402 <exit>
 18b:	83 c4 10             	add    $0x10,%esp
  write(fd, s, strlen(s));
 18e:	83 ec 0c             	sub    $0xc,%esp
 191:	68 ee 04 00 00       	push   $0x4ee
 196:	e8 95 00 00 00       	call   230 <strlen>
 19b:	83 c4 0c             	add    $0xc,%esp
 19e:	50                   	push   %eax
 19f:	68 ee 04 00 00       	push   $0x4ee
 1a4:	6a 01                	push   $0x1
 1a6:	e8 7f 02 00 00       	call   42a <write>
}
 1ab:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1ae:	c9                   	leave  
 1af:	c3                   	ret    

000001b0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	8b 45 08             	mov    0x8(%ebp),%eax
 1b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1ba:	89 c2                	mov    %eax,%edx
 1bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1c0:	83 c1 01             	add    $0x1,%ecx
 1c3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 1c7:	83 c2 01             	add    $0x1,%edx
 1ca:	84 db                	test   %bl,%bl
 1cc:	88 5a ff             	mov    %bl,-0x1(%edx)
 1cf:	75 ef                	jne    1c0 <strcpy+0x10>
    ;
  return os;
}
 1d1:	5b                   	pop    %ebx
 1d2:	5d                   	pop    %ebp
 1d3:	c3                   	ret    
 1d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000001e0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	53                   	push   %ebx
 1e4:	8b 55 08             	mov    0x8(%ebp),%edx
 1e7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1ea:	0f b6 02             	movzbl (%edx),%eax
 1ed:	0f b6 19             	movzbl (%ecx),%ebx
 1f0:	84 c0                	test   %al,%al
 1f2:	75 1c                	jne    210 <strcmp+0x30>
 1f4:	eb 2a                	jmp    220 <strcmp+0x40>
 1f6:	8d 76 00             	lea    0x0(%esi),%esi
 1f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 200:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 203:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 206:	83 c1 01             	add    $0x1,%ecx
 209:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 20c:	84 c0                	test   %al,%al
 20e:	74 10                	je     220 <strcmp+0x40>
 210:	38 d8                	cmp    %bl,%al
 212:	74 ec                	je     200 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 214:	29 d8                	sub    %ebx,%eax
}
 216:	5b                   	pop    %ebx
 217:	5d                   	pop    %ebp
 218:	c3                   	ret    
 219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 220:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 222:	29 d8                	sub    %ebx,%eax
}
 224:	5b                   	pop    %ebx
 225:	5d                   	pop    %ebp
 226:	c3                   	ret    
 227:	89 f6                	mov    %esi,%esi
 229:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000230 <strlen>:

uint
strlen(const char *s)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 236:	80 39 00             	cmpb   $0x0,(%ecx)
 239:	74 15                	je     250 <strlen+0x20>
 23b:	31 d2                	xor    %edx,%edx
 23d:	8d 76 00             	lea    0x0(%esi),%esi
 240:	83 c2 01             	add    $0x1,%edx
 243:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 247:	89 d0                	mov    %edx,%eax
 249:	75 f5                	jne    240 <strlen+0x10>
    ;
  return n;
}
 24b:	5d                   	pop    %ebp
 24c:	c3                   	ret    
 24d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 250:	31 c0                	xor    %eax,%eax
}
 252:	5d                   	pop    %ebp
 253:	c3                   	ret    
 254:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 25a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000260 <memset>:

void*
memset(void *dst, int c, uint n)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	57                   	push   %edi
 264:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 267:	8b 4d 10             	mov    0x10(%ebp),%ecx
 26a:	8b 45 0c             	mov    0xc(%ebp),%eax
 26d:	89 d7                	mov    %edx,%edi
 26f:	fc                   	cld    
 270:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 272:	89 d0                	mov    %edx,%eax
 274:	5f                   	pop    %edi
 275:	5d                   	pop    %ebp
 276:	c3                   	ret    
 277:	89 f6                	mov    %esi,%esi
 279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000280 <strchr>:

char*
strchr(const char *s, char c)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	53                   	push   %ebx
 284:	8b 45 08             	mov    0x8(%ebp),%eax
 287:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 28a:	0f b6 10             	movzbl (%eax),%edx
 28d:	84 d2                	test   %dl,%dl
 28f:	74 1d                	je     2ae <strchr+0x2e>
    if(*s == c)
 291:	38 d3                	cmp    %dl,%bl
 293:	89 d9                	mov    %ebx,%ecx
 295:	75 0d                	jne    2a4 <strchr+0x24>
 297:	eb 17                	jmp    2b0 <strchr+0x30>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2a0:	38 ca                	cmp    %cl,%dl
 2a2:	74 0c                	je     2b0 <strchr+0x30>
  for(; *s; s++)
 2a4:	83 c0 01             	add    $0x1,%eax
 2a7:	0f b6 10             	movzbl (%eax),%edx
 2aa:	84 d2                	test   %dl,%dl
 2ac:	75 f2                	jne    2a0 <strchr+0x20>
      return (char*)s;
  return 0;
 2ae:	31 c0                	xor    %eax,%eax
}
 2b0:	5b                   	pop    %ebx
 2b1:	5d                   	pop    %ebp
 2b2:	c3                   	ret    
 2b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002c0 <gets>:

char*
gets(char *buf, int max)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	57                   	push   %edi
 2c4:	56                   	push   %esi
 2c5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2c6:	31 f6                	xor    %esi,%esi
 2c8:	89 f3                	mov    %esi,%ebx
{
 2ca:	83 ec 1c             	sub    $0x1c,%esp
 2cd:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 2d0:	eb 2f                	jmp    301 <gets+0x41>
 2d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 2d8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 2db:	83 ec 04             	sub    $0x4,%esp
 2de:	6a 01                	push   $0x1
 2e0:	50                   	push   %eax
 2e1:	6a 00                	push   $0x0
 2e3:	e8 3a 01 00 00       	call   422 <read>
    if(cc < 1)
 2e8:	83 c4 10             	add    $0x10,%esp
 2eb:	85 c0                	test   %eax,%eax
 2ed:	7e 1c                	jle    30b <gets+0x4b>
      break;
    buf[i++] = c;
 2ef:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2f3:	83 c7 01             	add    $0x1,%edi
 2f6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 2f9:	3c 0a                	cmp    $0xa,%al
 2fb:	74 23                	je     320 <gets+0x60>
 2fd:	3c 0d                	cmp    $0xd,%al
 2ff:	74 1f                	je     320 <gets+0x60>
  for(i=0; i+1 < max; ){
 301:	83 c3 01             	add    $0x1,%ebx
 304:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 307:	89 fe                	mov    %edi,%esi
 309:	7c cd                	jl     2d8 <gets+0x18>
 30b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 30d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 310:	c6 03 00             	movb   $0x0,(%ebx)
}
 313:	8d 65 f4             	lea    -0xc(%ebp),%esp
 316:	5b                   	pop    %ebx
 317:	5e                   	pop    %esi
 318:	5f                   	pop    %edi
 319:	5d                   	pop    %ebp
 31a:	c3                   	ret    
 31b:	90                   	nop
 31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 320:	8b 75 08             	mov    0x8(%ebp),%esi
 323:	8b 45 08             	mov    0x8(%ebp),%eax
 326:	01 de                	add    %ebx,%esi
 328:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 32a:	c6 03 00             	movb   $0x0,(%ebx)
}
 32d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 330:	5b                   	pop    %ebx
 331:	5e                   	pop    %esi
 332:	5f                   	pop    %edi
 333:	5d                   	pop    %ebp
 334:	c3                   	ret    
 335:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000340 <stat>:

int
stat(const char *n, struct stat *st)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	56                   	push   %esi
 344:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 345:	83 ec 08             	sub    $0x8,%esp
 348:	6a 00                	push   $0x0
 34a:	ff 75 08             	pushl  0x8(%ebp)
 34d:	e8 f8 00 00 00       	call   44a <open>
  if(fd < 0)
 352:	83 c4 10             	add    $0x10,%esp
 355:	85 c0                	test   %eax,%eax
 357:	78 27                	js     380 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 359:	83 ec 08             	sub    $0x8,%esp
 35c:	ff 75 0c             	pushl  0xc(%ebp)
 35f:	89 c3                	mov    %eax,%ebx
 361:	50                   	push   %eax
 362:	e8 fb 00 00 00       	call   462 <fstat>
  close(fd);
 367:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 36a:	89 c6                	mov    %eax,%esi
  close(fd);
 36c:	e8 c1 00 00 00       	call   432 <close>
  return r;
 371:	83 c4 10             	add    $0x10,%esp
}
 374:	8d 65 f8             	lea    -0x8(%ebp),%esp
 377:	89 f0                	mov    %esi,%eax
 379:	5b                   	pop    %ebx
 37a:	5e                   	pop    %esi
 37b:	5d                   	pop    %ebp
 37c:	c3                   	ret    
 37d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 380:	be ff ff ff ff       	mov    $0xffffffff,%esi
 385:	eb ed                	jmp    374 <stat+0x34>
 387:	89 f6                	mov    %esi,%esi
 389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000390 <atoi>:

int
atoi(const char *s)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	53                   	push   %ebx
 394:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 397:	0f be 11             	movsbl (%ecx),%edx
 39a:	8d 42 d0             	lea    -0x30(%edx),%eax
 39d:	3c 09                	cmp    $0x9,%al
  n = 0;
 39f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 3a4:	77 1f                	ja     3c5 <atoi+0x35>
 3a6:	8d 76 00             	lea    0x0(%esi),%esi
 3a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 3b0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 3b3:	83 c1 01             	add    $0x1,%ecx
 3b6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 3ba:	0f be 11             	movsbl (%ecx),%edx
 3bd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 3c0:	80 fb 09             	cmp    $0x9,%bl
 3c3:	76 eb                	jbe    3b0 <atoi+0x20>
  return n;
}
 3c5:	5b                   	pop    %ebx
 3c6:	5d                   	pop    %ebp
 3c7:	c3                   	ret    
 3c8:	90                   	nop
 3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003d0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	56                   	push   %esi
 3d4:	53                   	push   %ebx
 3d5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 3d8:	8b 45 08             	mov    0x8(%ebp),%eax
 3db:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3de:	85 db                	test   %ebx,%ebx
 3e0:	7e 14                	jle    3f6 <memmove+0x26>
 3e2:	31 d2                	xor    %edx,%edx
 3e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 3e8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 3ec:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 3ef:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 3f2:	39 d3                	cmp    %edx,%ebx
 3f4:	75 f2                	jne    3e8 <memmove+0x18>
  return vdst;
}
 3f6:	5b                   	pop    %ebx
 3f7:	5e                   	pop    %esi
 3f8:	5d                   	pop    %ebp
 3f9:	c3                   	ret    

000003fa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3fa:	b8 01 00 00 00       	mov    $0x1,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <exit>:
SYSCALL(exit)
 402:	b8 02 00 00 00       	mov    $0x2,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <wait>:
SYSCALL(wait)
 40a:	b8 03 00 00 00       	mov    $0x3,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <waitpid>:
SYSCALL(waitpid)
 412:	b8 04 00 00 00       	mov    $0x4,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <pipe>:
SYSCALL(pipe)
 41a:	b8 05 00 00 00       	mov    $0x5,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <read>:
SYSCALL(read)
 422:	b8 06 00 00 00       	mov    $0x6,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <write>:
SYSCALL(write)
 42a:	b8 11 00 00 00       	mov    $0x11,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <close>:
SYSCALL(close)
 432:	b8 16 00 00 00       	mov    $0x16,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <kill>:
SYSCALL(kill)
 43a:	b8 07 00 00 00       	mov    $0x7,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <exec>:
SYSCALL(exec)
 442:	b8 08 00 00 00       	mov    $0x8,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <open>:
SYSCALL(open)
 44a:	b8 10 00 00 00       	mov    $0x10,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <mknod>:
SYSCALL(mknod)
 452:	b8 12 00 00 00       	mov    $0x12,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <unlink>:
SYSCALL(unlink)
 45a:	b8 13 00 00 00       	mov    $0x13,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <fstat>:
SYSCALL(fstat)
 462:	b8 09 00 00 00       	mov    $0x9,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    

0000046a <link>:
SYSCALL(link)
 46a:	b8 14 00 00 00       	mov    $0x14,%eax
 46f:	cd 40                	int    $0x40
 471:	c3                   	ret    

00000472 <mkdir>:
SYSCALL(mkdir)
 472:	b8 15 00 00 00       	mov    $0x15,%eax
 477:	cd 40                	int    $0x40
 479:	c3                   	ret    

0000047a <chdir>:
SYSCALL(chdir)
 47a:	b8 0a 00 00 00       	mov    $0xa,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    

00000482 <dup>:
SYSCALL(dup)
 482:	b8 0b 00 00 00       	mov    $0xb,%eax
 487:	cd 40                	int    $0x40
 489:	c3                   	ret    

0000048a <getpid>:
SYSCALL(getpid)
 48a:	b8 0c 00 00 00       	mov    $0xc,%eax
 48f:	cd 40                	int    $0x40
 491:	c3                   	ret    

00000492 <sbrk>:
SYSCALL(sbrk)
 492:	b8 0d 00 00 00       	mov    $0xd,%eax
 497:	cd 40                	int    $0x40
 499:	c3                   	ret    

0000049a <sleep>:
SYSCALL(sleep)
 49a:	b8 0e 00 00 00       	mov    $0xe,%eax
 49f:	cd 40                	int    $0x40
 4a1:	c3                   	ret    

000004a2 <uptime>:
SYSCALL(uptime)
 4a2:	b8 0f 00 00 00       	mov    $0xf,%eax
 4a7:	cd 40                	int    $0x40
 4a9:	c3                   	ret    

000004aa <setpriority>:
SYSCALL(setpriority)
 4aa:	b8 17 00 00 00       	mov    $0x17,%eax
 4af:	cd 40                	int    $0x40
 4b1:	c3                   	ret    

000004b2 <getpriority>:
SYSCALL(getpriority)
 4b2:	b8 18 00 00 00       	mov    $0x18,%eax
 4b7:	cd 40                	int    $0x40
 4b9:	c3                   	ret    
