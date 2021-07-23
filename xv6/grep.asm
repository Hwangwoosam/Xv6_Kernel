
_grep:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  }
}

int
main(int argc, char *argv[])
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
  11:	83 ec 18             	sub    $0x18,%esp
  14:	8b 01                	mov    (%ecx),%eax
  16:	8b 79 04             	mov    0x4(%ecx),%edi
  int fd, i;
  char *pattern;

  if(argc <= 1){
  19:	83 f8 01             	cmp    $0x1,%eax
  1c:	7e 6e                	jle    8c <main+0x8c>
    printf(2, "usage: grep pattern [file ...]\n");
    exit(0);
  }
  pattern = argv[1];

  if(argc <= 2){
  1e:	83 f8 02             	cmp    $0x2,%eax
  pattern = argv[1];
  21:	8b 77 04             	mov    0x4(%edi),%esi
  if(argc <= 2){
  24:	0f 84 82 00 00 00    	je     ac <main+0xac>
  2a:	8d 04 87             	lea    (%edi,%eax,4),%eax
  2d:	8d 5f 08             	lea    0x8(%edi),%ebx
  30:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  33:	eb 20                	jmp    55 <main+0x55>
  35:	8d 76 00             	lea    0x0(%esi),%esi
  for(i = 2; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
      printf(1, "grep: cannot open %s\n", argv[i]);
      exit(0);
    }
    grep(pattern, fd);
  38:	83 ec 08             	sub    $0x8,%esp
  3b:	83 c3 04             	add    $0x4,%ebx
  3e:	57                   	push   %edi
  3f:	56                   	push   %esi
  40:	e8 1b 02 00 00       	call   260 <grep>
    close(fd);
  45:	89 3c 24             	mov    %edi,(%esp)
  48:	e8 95 05 00 00       	call   5e2 <close>
  for(i = 2; i < argc; i++){
  4d:	83 c4 10             	add    $0x10,%esp
  50:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
  53:	74 70                	je     c5 <main+0xc5>
    if((fd = open(argv[i], 0)) < 0){
  55:	83 ec 08             	sub    $0x8,%esp
  58:	6a 00                	push   $0x0
  5a:	ff 33                	pushl  (%ebx)
  5c:	e8 99 05 00 00       	call   5fa <open>
  61:	83 c4 10             	add    $0x10,%esp
  64:	85 c0                	test   %eax,%eax
  66:	89 c7                	mov    %eax,%edi
  68:	79 ce                	jns    38 <main+0x38>
      printf(1, "grep: cannot open %s\n", argv[i]);
  6a:	83 ec 04             	sub    $0x4,%esp
  6d:	ff 33                	pushl  (%ebx)
  6f:	68 88 0a 00 00       	push   $0xa88
  74:	6a 01                	push   $0x1
  76:	e8 95 06 00 00       	call   710 <printf>
      exit(0);
  7b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  82:	e8 2b 05 00 00       	call   5b2 <exit>
  87:	83 c4 10             	add    $0x10,%esp
  8a:	eb ac                	jmp    38 <main+0x38>
    printf(2, "usage: grep pattern [file ...]\n");
  8c:	52                   	push   %edx
  8d:	52                   	push   %edx
  8e:	68 68 0a 00 00       	push   $0xa68
  93:	6a 02                	push   $0x2
  95:	e8 76 06 00 00       	call   710 <printf>
    exit(0);
  9a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a1:	e8 0c 05 00 00       	call   5b2 <exit>
  pattern = argv[1];
  a6:	8b 77 04             	mov    0x4(%edi),%esi
  a9:	83 c4 10             	add    $0x10,%esp
    grep(pattern, 0);
  ac:	50                   	push   %eax
  ad:	50                   	push   %eax
  ae:	6a 00                	push   $0x0
  b0:	56                   	push   %esi
  b1:	e8 aa 01 00 00       	call   260 <grep>
    exit(0);
  b6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  bd:	e8 f0 04 00 00       	call   5b2 <exit>
  c2:	83 c4 10             	add    $0x10,%esp
  }
  exit(0);
  c5:	83 ec 0c             	sub    $0xc,%esp
  c8:	6a 00                	push   $0x0
  ca:	e8 e3 04 00 00       	call   5b2 <exit>
}
  cf:	8d 65 f0             	lea    -0x10(%ebp),%esp
  d2:	31 c0                	xor    %eax,%eax
  d4:	59                   	pop    %ecx
  d5:	5b                   	pop    %ebx
  d6:	5e                   	pop    %esi
  d7:	5f                   	pop    %edi
  d8:	5d                   	pop    %ebp
  d9:	8d 61 fc             	lea    -0x4(%ecx),%esp
  dc:	c3                   	ret    
  dd:	66 90                	xchg   %ax,%ax
  df:	90                   	nop

000000e0 <matchstar>:
  return 0;
}

// matchstar: search for c*re at beginning of text
int matchstar(int c, char *re, char *text)
{
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	57                   	push   %edi
  e4:	56                   	push   %esi
  e5:	53                   	push   %ebx
  e6:	83 ec 0c             	sub    $0xc,%esp
  e9:	8b 5d 08             	mov    0x8(%ebp),%ebx
  ec:	8b 75 0c             	mov    0xc(%ebp),%esi
  ef:	8b 7d 10             	mov    0x10(%ebp),%edi
  f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{  // a * matches zero or more instances
    if(matchhere(re, text))
  f8:	83 ec 08             	sub    $0x8,%esp
  fb:	57                   	push   %edi
  fc:	56                   	push   %esi
  fd:	e8 3e 00 00 00       	call   140 <matchhere>
 102:	83 c4 10             	add    $0x10,%esp
 105:	85 c0                	test   %eax,%eax
 107:	75 1f                	jne    128 <matchstar+0x48>
      return 1;
  }while(*text!='\0' && (*text++==c || c=='.'));
 109:	0f be 17             	movsbl (%edi),%edx
 10c:	84 d2                	test   %dl,%dl
 10e:	74 0c                	je     11c <matchstar+0x3c>
 110:	83 c7 01             	add    $0x1,%edi
 113:	39 da                	cmp    %ebx,%edx
 115:	74 e1                	je     f8 <matchstar+0x18>
 117:	83 fb 2e             	cmp    $0x2e,%ebx
 11a:	74 dc                	je     f8 <matchstar+0x18>
  return 0;
}
 11c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 11f:	5b                   	pop    %ebx
 120:	5e                   	pop    %esi
 121:	5f                   	pop    %edi
 122:	5d                   	pop    %ebp
 123:	c3                   	ret    
 124:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 128:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return 1;
 12b:	b8 01 00 00 00       	mov    $0x1,%eax
}
 130:	5b                   	pop    %ebx
 131:	5e                   	pop    %esi
 132:	5f                   	pop    %edi
 133:	5d                   	pop    %ebp
 134:	c3                   	ret    
 135:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000140 <matchhere>:
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	57                   	push   %edi
 144:	56                   	push   %esi
 145:	53                   	push   %ebx
 146:	83 ec 0c             	sub    $0xc,%esp
  if(re[0] == '\0')
 149:	8b 45 08             	mov    0x8(%ebp),%eax
{
 14c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if(re[0] == '\0')
 14f:	0f b6 08             	movzbl (%eax),%ecx
 152:	84 c9                	test   %cl,%cl
 154:	74 67                	je     1bd <matchhere+0x7d>
  if(re[1] == '*')
 156:	0f be 40 01          	movsbl 0x1(%eax),%eax
 15a:	3c 2a                	cmp    $0x2a,%al
 15c:	74 6c                	je     1ca <matchhere+0x8a>
  if(re[0] == '$' && re[1] == '\0')
 15e:	80 f9 24             	cmp    $0x24,%cl
 161:	0f b6 1f             	movzbl (%edi),%ebx
 164:	75 08                	jne    16e <matchhere+0x2e>
 166:	84 c0                	test   %al,%al
 168:	0f 84 81 00 00 00    	je     1ef <matchhere+0xaf>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
 16e:	84 db                	test   %bl,%bl
 170:	74 09                	je     17b <matchhere+0x3b>
 172:	38 d9                	cmp    %bl,%cl
 174:	74 3c                	je     1b2 <matchhere+0x72>
 176:	80 f9 2e             	cmp    $0x2e,%cl
 179:	74 37                	je     1b2 <matchhere+0x72>
}
 17b:	8d 65 f4             	lea    -0xc(%ebp),%esp
  return 0;
 17e:	31 c0                	xor    %eax,%eax
}
 180:	5b                   	pop    %ebx
 181:	5e                   	pop    %esi
 182:	5f                   	pop    %edi
 183:	5d                   	pop    %ebp
 184:	c3                   	ret    
 185:	8d 76 00             	lea    0x0(%esi),%esi
  if(re[1] == '*')
 188:	8b 75 08             	mov    0x8(%ebp),%esi
 18b:	0f b6 4e 01          	movzbl 0x1(%esi),%ecx
 18f:	80 f9 2a             	cmp    $0x2a,%cl
 192:	74 3b                	je     1cf <matchhere+0x8f>
  if(re[0] == '$' && re[1] == '\0')
 194:	3c 24                	cmp    $0x24,%al
 196:	75 04                	jne    19c <matchhere+0x5c>
 198:	84 c9                	test   %cl,%cl
 19a:	74 4f                	je     1eb <matchhere+0xab>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
 19c:	0f b6 33             	movzbl (%ebx),%esi
 19f:	89 f2                	mov    %esi,%edx
 1a1:	84 d2                	test   %dl,%dl
 1a3:	74 d6                	je     17b <matchhere+0x3b>
 1a5:	3c 2e                	cmp    $0x2e,%al
 1a7:	89 df                	mov    %ebx,%edi
 1a9:	74 04                	je     1af <matchhere+0x6f>
 1ab:	38 c2                	cmp    %al,%dl
 1ad:	75 cc                	jne    17b <matchhere+0x3b>
 1af:	0f be c1             	movsbl %cl,%eax
    return matchhere(re+1, text+1);
 1b2:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  if(re[0] == '\0')
 1b6:	84 c0                	test   %al,%al
    return matchhere(re+1, text+1);
 1b8:	8d 5f 01             	lea    0x1(%edi),%ebx
  if(re[0] == '\0')
 1bb:	75 cb                	jne    188 <matchhere+0x48>
    return 1;
 1bd:	b8 01 00 00 00       	mov    $0x1,%eax
}
 1c2:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1c5:	5b                   	pop    %ebx
 1c6:	5e                   	pop    %esi
 1c7:	5f                   	pop    %edi
 1c8:	5d                   	pop    %ebp
 1c9:	c3                   	ret    
  if(re[1] == '*')
 1ca:	89 fb                	mov    %edi,%ebx
 1cc:	0f be c1             	movsbl %cl,%eax
    return matchstar(re[0], re+2, text);
 1cf:	8b 7d 08             	mov    0x8(%ebp),%edi
 1d2:	83 ec 04             	sub    $0x4,%esp
 1d5:	53                   	push   %ebx
 1d6:	8d 57 02             	lea    0x2(%edi),%edx
 1d9:	52                   	push   %edx
 1da:	50                   	push   %eax
 1db:	e8 00 ff ff ff       	call   e0 <matchstar>
 1e0:	83 c4 10             	add    $0x10,%esp
}
 1e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1e6:	5b                   	pop    %ebx
 1e7:	5e                   	pop    %esi
 1e8:	5f                   	pop    %edi
 1e9:	5d                   	pop    %ebp
 1ea:	c3                   	ret    
 1eb:	0f b6 5f 01          	movzbl 0x1(%edi),%ebx
    return *text == '\0';
 1ef:	31 c0                	xor    %eax,%eax
 1f1:	84 db                	test   %bl,%bl
 1f3:	0f 94 c0             	sete   %al
 1f6:	eb ca                	jmp    1c2 <matchhere+0x82>
 1f8:	90                   	nop
 1f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000200 <match>:
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	56                   	push   %esi
 204:	53                   	push   %ebx
 205:	8b 75 08             	mov    0x8(%ebp),%esi
 208:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  if(re[0] == '^')
 20b:	80 3e 5e             	cmpb   $0x5e,(%esi)
 20e:	75 11                	jne    221 <match+0x21>
 210:	eb 2e                	jmp    240 <match+0x40>
 212:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  }while(*text++ != '\0');
 218:	83 c3 01             	add    $0x1,%ebx
 21b:	80 7b ff 00          	cmpb   $0x0,-0x1(%ebx)
 21f:	74 16                	je     237 <match+0x37>
    if(matchhere(re, text))
 221:	83 ec 08             	sub    $0x8,%esp
 224:	53                   	push   %ebx
 225:	56                   	push   %esi
 226:	e8 15 ff ff ff       	call   140 <matchhere>
 22b:	83 c4 10             	add    $0x10,%esp
 22e:	85 c0                	test   %eax,%eax
 230:	74 e6                	je     218 <match+0x18>
      return 1;
 232:	b8 01 00 00 00       	mov    $0x1,%eax
}
 237:	8d 65 f8             	lea    -0x8(%ebp),%esp
 23a:	5b                   	pop    %ebx
 23b:	5e                   	pop    %esi
 23c:	5d                   	pop    %ebp
 23d:	c3                   	ret    
 23e:	66 90                	xchg   %ax,%ax
    return matchhere(re+1, text);
 240:	83 c6 01             	add    $0x1,%esi
 243:	89 75 08             	mov    %esi,0x8(%ebp)
}
 246:	8d 65 f8             	lea    -0x8(%ebp),%esp
 249:	5b                   	pop    %ebx
 24a:	5e                   	pop    %esi
 24b:	5d                   	pop    %ebp
    return matchhere(re+1, text);
 24c:	e9 ef fe ff ff       	jmp    140 <matchhere>
 251:	eb 0d                	jmp    260 <grep>
 253:	90                   	nop
 254:	90                   	nop
 255:	90                   	nop
 256:	90                   	nop
 257:	90                   	nop
 258:	90                   	nop
 259:	90                   	nop
 25a:	90                   	nop
 25b:	90                   	nop
 25c:	90                   	nop
 25d:	90                   	nop
 25e:	90                   	nop
 25f:	90                   	nop

00000260 <grep>:
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	57                   	push   %edi
 264:	56                   	push   %esi
 265:	53                   	push   %ebx
  m = 0;
 266:	31 f6                	xor    %esi,%esi
{
 268:	83 ec 1c             	sub    $0x1c,%esp
 26b:	90                   	nop
 26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf+m, sizeof(buf)-m-1)) > 0){
 270:	b8 ff 03 00 00       	mov    $0x3ff,%eax
 275:	83 ec 04             	sub    $0x4,%esp
 278:	29 f0                	sub    %esi,%eax
 27a:	50                   	push   %eax
 27b:	8d 86 80 0e 00 00    	lea    0xe80(%esi),%eax
 281:	50                   	push   %eax
 282:	ff 75 0c             	pushl  0xc(%ebp)
 285:	e8 48 03 00 00       	call   5d2 <read>
 28a:	83 c4 10             	add    $0x10,%esp
 28d:	85 c0                	test   %eax,%eax
 28f:	0f 8e bb 00 00 00    	jle    350 <grep+0xf0>
    m += n;
 295:	01 c6                	add    %eax,%esi
    p = buf;
 297:	bb 80 0e 00 00       	mov    $0xe80,%ebx
    buf[m] = '\0';
 29c:	c6 86 80 0e 00 00 00 	movb   $0x0,0xe80(%esi)
 2a3:	89 75 e4             	mov    %esi,-0x1c(%ebp)
 2a6:	8d 76 00             	lea    0x0(%esi),%esi
 2a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    while((q = strchr(p, '\n')) != 0){
 2b0:	83 ec 08             	sub    $0x8,%esp
 2b3:	6a 0a                	push   $0xa
 2b5:	53                   	push   %ebx
 2b6:	e8 75 01 00 00       	call   430 <strchr>
 2bb:	83 c4 10             	add    $0x10,%esp
 2be:	85 c0                	test   %eax,%eax
 2c0:	89 c6                	mov    %eax,%esi
 2c2:	74 44                	je     308 <grep+0xa8>
      if(match(pattern, p)){
 2c4:	83 ec 08             	sub    $0x8,%esp
      *q = 0;
 2c7:	c6 06 00             	movb   $0x0,(%esi)
 2ca:	8d 7e 01             	lea    0x1(%esi),%edi
      if(match(pattern, p)){
 2cd:	53                   	push   %ebx
 2ce:	ff 75 08             	pushl  0x8(%ebp)
 2d1:	e8 2a ff ff ff       	call   200 <match>
 2d6:	83 c4 10             	add    $0x10,%esp
 2d9:	85 c0                	test   %eax,%eax
 2db:	75 0b                	jne    2e8 <grep+0x88>
      p = q+1;
 2dd:	89 fb                	mov    %edi,%ebx
 2df:	eb cf                	jmp    2b0 <grep+0x50>
 2e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        write(1, p, q+1 - p);
 2e8:	89 f8                	mov    %edi,%eax
 2ea:	83 ec 04             	sub    $0x4,%esp
        *q = '\n';
 2ed:	c6 06 0a             	movb   $0xa,(%esi)
        write(1, p, q+1 - p);
 2f0:	29 d8                	sub    %ebx,%eax
 2f2:	50                   	push   %eax
 2f3:	53                   	push   %ebx
      p = q+1;
 2f4:	89 fb                	mov    %edi,%ebx
        write(1, p, q+1 - p);
 2f6:	6a 01                	push   $0x1
 2f8:	e8 dd 02 00 00       	call   5da <write>
 2fd:	83 c4 10             	add    $0x10,%esp
 300:	eb ae                	jmp    2b0 <grep+0x50>
 302:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(p == buf)
 308:	81 fb 80 0e 00 00    	cmp    $0xe80,%ebx
 30e:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 311:	74 2d                	je     340 <grep+0xe0>
    if(m > 0){
 313:	85 f6                	test   %esi,%esi
 315:	0f 8e 55 ff ff ff    	jle    270 <grep+0x10>
      m -= p - buf;
 31b:	89 d8                	mov    %ebx,%eax
      memmove(buf, p, m);
 31d:	83 ec 04             	sub    $0x4,%esp
      m -= p - buf;
 320:	2d 80 0e 00 00       	sub    $0xe80,%eax
 325:	29 c6                	sub    %eax,%esi
      memmove(buf, p, m);
 327:	56                   	push   %esi
 328:	53                   	push   %ebx
 329:	68 80 0e 00 00       	push   $0xe80
 32e:	e8 4d 02 00 00       	call   580 <memmove>
 333:	83 c4 10             	add    $0x10,%esp
 336:	e9 35 ff ff ff       	jmp    270 <grep+0x10>
 33b:	90                   	nop
 33c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m = 0;
 340:	31 f6                	xor    %esi,%esi
 342:	e9 29 ff ff ff       	jmp    270 <grep+0x10>
 347:	89 f6                	mov    %esi,%esi
 349:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
}
 350:	8d 65 f4             	lea    -0xc(%ebp),%esp
 353:	5b                   	pop    %ebx
 354:	5e                   	pop    %esi
 355:	5f                   	pop    %edi
 356:	5d                   	pop    %ebp
 357:	c3                   	ret    
 358:	66 90                	xchg   %ax,%ax
 35a:	66 90                	xchg   %ax,%ax
 35c:	66 90                	xchg   %ax,%ax
 35e:	66 90                	xchg   %ax,%ax

00000360 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	53                   	push   %ebx
 364:	8b 45 08             	mov    0x8(%ebp),%eax
 367:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 36a:	89 c2                	mov    %eax,%edx
 36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 370:	83 c1 01             	add    $0x1,%ecx
 373:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 377:	83 c2 01             	add    $0x1,%edx
 37a:	84 db                	test   %bl,%bl
 37c:	88 5a ff             	mov    %bl,-0x1(%edx)
 37f:	75 ef                	jne    370 <strcpy+0x10>
    ;
  return os;
}
 381:	5b                   	pop    %ebx
 382:	5d                   	pop    %ebp
 383:	c3                   	ret    
 384:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 38a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000390 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	53                   	push   %ebx
 394:	8b 55 08             	mov    0x8(%ebp),%edx
 397:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 39a:	0f b6 02             	movzbl (%edx),%eax
 39d:	0f b6 19             	movzbl (%ecx),%ebx
 3a0:	84 c0                	test   %al,%al
 3a2:	75 1c                	jne    3c0 <strcmp+0x30>
 3a4:	eb 2a                	jmp    3d0 <strcmp+0x40>
 3a6:	8d 76 00             	lea    0x0(%esi),%esi
 3a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 3b0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 3b3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 3b6:	83 c1 01             	add    $0x1,%ecx
 3b9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 3bc:	84 c0                	test   %al,%al
 3be:	74 10                	je     3d0 <strcmp+0x40>
 3c0:	38 d8                	cmp    %bl,%al
 3c2:	74 ec                	je     3b0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 3c4:	29 d8                	sub    %ebx,%eax
}
 3c6:	5b                   	pop    %ebx
 3c7:	5d                   	pop    %ebp
 3c8:	c3                   	ret    
 3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3d0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 3d2:	29 d8                	sub    %ebx,%eax
}
 3d4:	5b                   	pop    %ebx
 3d5:	5d                   	pop    %ebp
 3d6:	c3                   	ret    
 3d7:	89 f6                	mov    %esi,%esi
 3d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003e0 <strlen>:

uint
strlen(const char *s)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 3e6:	80 39 00             	cmpb   $0x0,(%ecx)
 3e9:	74 15                	je     400 <strlen+0x20>
 3eb:	31 d2                	xor    %edx,%edx
 3ed:	8d 76 00             	lea    0x0(%esi),%esi
 3f0:	83 c2 01             	add    $0x1,%edx
 3f3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 3f7:	89 d0                	mov    %edx,%eax
 3f9:	75 f5                	jne    3f0 <strlen+0x10>
    ;
  return n;
}
 3fb:	5d                   	pop    %ebp
 3fc:	c3                   	ret    
 3fd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 400:	31 c0                	xor    %eax,%eax
}
 402:	5d                   	pop    %ebp
 403:	c3                   	ret    
 404:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 40a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000410 <memset>:

void*
memset(void *dst, int c, uint n)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	57                   	push   %edi
 414:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 417:	8b 4d 10             	mov    0x10(%ebp),%ecx
 41a:	8b 45 0c             	mov    0xc(%ebp),%eax
 41d:	89 d7                	mov    %edx,%edi
 41f:	fc                   	cld    
 420:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 422:	89 d0                	mov    %edx,%eax
 424:	5f                   	pop    %edi
 425:	5d                   	pop    %ebp
 426:	c3                   	ret    
 427:	89 f6                	mov    %esi,%esi
 429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000430 <strchr>:

char*
strchr(const char *s, char c)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	53                   	push   %ebx
 434:	8b 45 08             	mov    0x8(%ebp),%eax
 437:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 43a:	0f b6 10             	movzbl (%eax),%edx
 43d:	84 d2                	test   %dl,%dl
 43f:	74 1d                	je     45e <strchr+0x2e>
    if(*s == c)
 441:	38 d3                	cmp    %dl,%bl
 443:	89 d9                	mov    %ebx,%ecx
 445:	75 0d                	jne    454 <strchr+0x24>
 447:	eb 17                	jmp    460 <strchr+0x30>
 449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 450:	38 ca                	cmp    %cl,%dl
 452:	74 0c                	je     460 <strchr+0x30>
  for(; *s; s++)
 454:	83 c0 01             	add    $0x1,%eax
 457:	0f b6 10             	movzbl (%eax),%edx
 45a:	84 d2                	test   %dl,%dl
 45c:	75 f2                	jne    450 <strchr+0x20>
      return (char*)s;
  return 0;
 45e:	31 c0                	xor    %eax,%eax
}
 460:	5b                   	pop    %ebx
 461:	5d                   	pop    %ebp
 462:	c3                   	ret    
 463:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000470 <gets>:

char*
gets(char *buf, int max)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	57                   	push   %edi
 474:	56                   	push   %esi
 475:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 476:	31 f6                	xor    %esi,%esi
 478:	89 f3                	mov    %esi,%ebx
{
 47a:	83 ec 1c             	sub    $0x1c,%esp
 47d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 480:	eb 2f                	jmp    4b1 <gets+0x41>
 482:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 488:	8d 45 e7             	lea    -0x19(%ebp),%eax
 48b:	83 ec 04             	sub    $0x4,%esp
 48e:	6a 01                	push   $0x1
 490:	50                   	push   %eax
 491:	6a 00                	push   $0x0
 493:	e8 3a 01 00 00       	call   5d2 <read>
    if(cc < 1)
 498:	83 c4 10             	add    $0x10,%esp
 49b:	85 c0                	test   %eax,%eax
 49d:	7e 1c                	jle    4bb <gets+0x4b>
      break;
    buf[i++] = c;
 49f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4a3:	83 c7 01             	add    $0x1,%edi
 4a6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 4a9:	3c 0a                	cmp    $0xa,%al
 4ab:	74 23                	je     4d0 <gets+0x60>
 4ad:	3c 0d                	cmp    $0xd,%al
 4af:	74 1f                	je     4d0 <gets+0x60>
  for(i=0; i+1 < max; ){
 4b1:	83 c3 01             	add    $0x1,%ebx
 4b4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4b7:	89 fe                	mov    %edi,%esi
 4b9:	7c cd                	jl     488 <gets+0x18>
 4bb:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 4bd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 4c0:	c6 03 00             	movb   $0x0,(%ebx)
}
 4c3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4c6:	5b                   	pop    %ebx
 4c7:	5e                   	pop    %esi
 4c8:	5f                   	pop    %edi
 4c9:	5d                   	pop    %ebp
 4ca:	c3                   	ret    
 4cb:	90                   	nop
 4cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4d0:	8b 75 08             	mov    0x8(%ebp),%esi
 4d3:	8b 45 08             	mov    0x8(%ebp),%eax
 4d6:	01 de                	add    %ebx,%esi
 4d8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 4da:	c6 03 00             	movb   $0x0,(%ebx)
}
 4dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4e0:	5b                   	pop    %ebx
 4e1:	5e                   	pop    %esi
 4e2:	5f                   	pop    %edi
 4e3:	5d                   	pop    %ebp
 4e4:	c3                   	ret    
 4e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004f0 <stat>:

int
stat(const char *n, struct stat *st)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	56                   	push   %esi
 4f4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4f5:	83 ec 08             	sub    $0x8,%esp
 4f8:	6a 00                	push   $0x0
 4fa:	ff 75 08             	pushl  0x8(%ebp)
 4fd:	e8 f8 00 00 00       	call   5fa <open>
  if(fd < 0)
 502:	83 c4 10             	add    $0x10,%esp
 505:	85 c0                	test   %eax,%eax
 507:	78 27                	js     530 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 509:	83 ec 08             	sub    $0x8,%esp
 50c:	ff 75 0c             	pushl  0xc(%ebp)
 50f:	89 c3                	mov    %eax,%ebx
 511:	50                   	push   %eax
 512:	e8 fb 00 00 00       	call   612 <fstat>
  close(fd);
 517:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 51a:	89 c6                	mov    %eax,%esi
  close(fd);
 51c:	e8 c1 00 00 00       	call   5e2 <close>
  return r;
 521:	83 c4 10             	add    $0x10,%esp
}
 524:	8d 65 f8             	lea    -0x8(%ebp),%esp
 527:	89 f0                	mov    %esi,%eax
 529:	5b                   	pop    %ebx
 52a:	5e                   	pop    %esi
 52b:	5d                   	pop    %ebp
 52c:	c3                   	ret    
 52d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 530:	be ff ff ff ff       	mov    $0xffffffff,%esi
 535:	eb ed                	jmp    524 <stat+0x34>
 537:	89 f6                	mov    %esi,%esi
 539:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000540 <atoi>:

int
atoi(const char *s)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	53                   	push   %ebx
 544:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 547:	0f be 11             	movsbl (%ecx),%edx
 54a:	8d 42 d0             	lea    -0x30(%edx),%eax
 54d:	3c 09                	cmp    $0x9,%al
  n = 0;
 54f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 554:	77 1f                	ja     575 <atoi+0x35>
 556:	8d 76 00             	lea    0x0(%esi),%esi
 559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 560:	8d 04 80             	lea    (%eax,%eax,4),%eax
 563:	83 c1 01             	add    $0x1,%ecx
 566:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 56a:	0f be 11             	movsbl (%ecx),%edx
 56d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 570:	80 fb 09             	cmp    $0x9,%bl
 573:	76 eb                	jbe    560 <atoi+0x20>
  return n;
}
 575:	5b                   	pop    %ebx
 576:	5d                   	pop    %ebp
 577:	c3                   	ret    
 578:	90                   	nop
 579:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000580 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	56                   	push   %esi
 584:	53                   	push   %ebx
 585:	8b 5d 10             	mov    0x10(%ebp),%ebx
 588:	8b 45 08             	mov    0x8(%ebp),%eax
 58b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 58e:	85 db                	test   %ebx,%ebx
 590:	7e 14                	jle    5a6 <memmove+0x26>
 592:	31 d2                	xor    %edx,%edx
 594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 598:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 59c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 59f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 5a2:	39 d3                	cmp    %edx,%ebx
 5a4:	75 f2                	jne    598 <memmove+0x18>
  return vdst;
}
 5a6:	5b                   	pop    %ebx
 5a7:	5e                   	pop    %esi
 5a8:	5d                   	pop    %ebp
 5a9:	c3                   	ret    

000005aa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5aa:	b8 01 00 00 00       	mov    $0x1,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <exit>:
SYSCALL(exit)
 5b2:	b8 02 00 00 00       	mov    $0x2,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <wait>:
SYSCALL(wait)
 5ba:	b8 03 00 00 00       	mov    $0x3,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <waitpid>:
SYSCALL(waitpid)
 5c2:	b8 04 00 00 00       	mov    $0x4,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <pipe>:
SYSCALL(pipe)
 5ca:	b8 05 00 00 00       	mov    $0x5,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <read>:
SYSCALL(read)
 5d2:	b8 06 00 00 00       	mov    $0x6,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <write>:
SYSCALL(write)
 5da:	b8 11 00 00 00       	mov    $0x11,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <close>:
SYSCALL(close)
 5e2:	b8 16 00 00 00       	mov    $0x16,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <kill>:
SYSCALL(kill)
 5ea:	b8 07 00 00 00       	mov    $0x7,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <exec>:
SYSCALL(exec)
 5f2:	b8 08 00 00 00       	mov    $0x8,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    

000005fa <open>:
SYSCALL(open)
 5fa:	b8 10 00 00 00       	mov    $0x10,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <mknod>:
SYSCALL(mknod)
 602:	b8 12 00 00 00       	mov    $0x12,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <unlink>:
SYSCALL(unlink)
 60a:	b8 13 00 00 00       	mov    $0x13,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <fstat>:
SYSCALL(fstat)
 612:	b8 09 00 00 00       	mov    $0x9,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    

0000061a <link>:
SYSCALL(link)
 61a:	b8 14 00 00 00       	mov    $0x14,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    

00000622 <mkdir>:
SYSCALL(mkdir)
 622:	b8 15 00 00 00       	mov    $0x15,%eax
 627:	cd 40                	int    $0x40
 629:	c3                   	ret    

0000062a <chdir>:
SYSCALL(chdir)
 62a:	b8 0a 00 00 00       	mov    $0xa,%eax
 62f:	cd 40                	int    $0x40
 631:	c3                   	ret    

00000632 <dup>:
SYSCALL(dup)
 632:	b8 0b 00 00 00       	mov    $0xb,%eax
 637:	cd 40                	int    $0x40
 639:	c3                   	ret    

0000063a <getpid>:
SYSCALL(getpid)
 63a:	b8 0c 00 00 00       	mov    $0xc,%eax
 63f:	cd 40                	int    $0x40
 641:	c3                   	ret    

00000642 <sbrk>:
SYSCALL(sbrk)
 642:	b8 0d 00 00 00       	mov    $0xd,%eax
 647:	cd 40                	int    $0x40
 649:	c3                   	ret    

0000064a <sleep>:
SYSCALL(sleep)
 64a:	b8 0e 00 00 00       	mov    $0xe,%eax
 64f:	cd 40                	int    $0x40
 651:	c3                   	ret    

00000652 <uptime>:
SYSCALL(uptime)
 652:	b8 0f 00 00 00       	mov    $0xf,%eax
 657:	cd 40                	int    $0x40
 659:	c3                   	ret    

0000065a <setpriority>:
SYSCALL(setpriority)
 65a:	b8 17 00 00 00       	mov    $0x17,%eax
 65f:	cd 40                	int    $0x40
 661:	c3                   	ret    

00000662 <getpriority>:
SYSCALL(getpriority)
 662:	b8 18 00 00 00       	mov    $0x18,%eax
 667:	cd 40                	int    $0x40
 669:	c3                   	ret    
 66a:	66 90                	xchg   %ax,%ax
 66c:	66 90                	xchg   %ax,%ax
 66e:	66 90                	xchg   %ax,%ax

00000670 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	57                   	push   %edi
 674:	56                   	push   %esi
 675:	53                   	push   %ebx
 676:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 679:	85 d2                	test   %edx,%edx
{
 67b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 67e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 680:	79 76                	jns    6f8 <printint+0x88>
 682:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 686:	74 70                	je     6f8 <printint+0x88>
    x = -xx;
 688:	f7 d8                	neg    %eax
    neg = 1;
 68a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 691:	31 f6                	xor    %esi,%esi
 693:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 696:	eb 0a                	jmp    6a2 <printint+0x32>
 698:	90                   	nop
 699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 6a0:	89 fe                	mov    %edi,%esi
 6a2:	31 d2                	xor    %edx,%edx
 6a4:	8d 7e 01             	lea    0x1(%esi),%edi
 6a7:	f7 f1                	div    %ecx
 6a9:	0f b6 92 a8 0a 00 00 	movzbl 0xaa8(%edx),%edx
  }while((x /= base) != 0);
 6b0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 6b2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 6b5:	75 e9                	jne    6a0 <printint+0x30>
  if(neg)
 6b7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 6ba:	85 c0                	test   %eax,%eax
 6bc:	74 08                	je     6c6 <printint+0x56>
    buf[i++] = '-';
 6be:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 6c3:	8d 7e 02             	lea    0x2(%esi),%edi
 6c6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 6ca:	8b 7d c0             	mov    -0x40(%ebp),%edi
 6cd:	8d 76 00             	lea    0x0(%esi),%esi
 6d0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 6d3:	83 ec 04             	sub    $0x4,%esp
 6d6:	83 ee 01             	sub    $0x1,%esi
 6d9:	6a 01                	push   $0x1
 6db:	53                   	push   %ebx
 6dc:	57                   	push   %edi
 6dd:	88 45 d7             	mov    %al,-0x29(%ebp)
 6e0:	e8 f5 fe ff ff       	call   5da <write>

  while(--i >= 0)
 6e5:	83 c4 10             	add    $0x10,%esp
 6e8:	39 de                	cmp    %ebx,%esi
 6ea:	75 e4                	jne    6d0 <printint+0x60>
    putc(fd, buf[i]);
}
 6ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6ef:	5b                   	pop    %ebx
 6f0:	5e                   	pop    %esi
 6f1:	5f                   	pop    %edi
 6f2:	5d                   	pop    %ebp
 6f3:	c3                   	ret    
 6f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6f8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 6ff:	eb 90                	jmp    691 <printint+0x21>
 701:	eb 0d                	jmp    710 <printf>
 703:	90                   	nop
 704:	90                   	nop
 705:	90                   	nop
 706:	90                   	nop
 707:	90                   	nop
 708:	90                   	nop
 709:	90                   	nop
 70a:	90                   	nop
 70b:	90                   	nop
 70c:	90                   	nop
 70d:	90                   	nop
 70e:	90                   	nop
 70f:	90                   	nop

00000710 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	57                   	push   %edi
 714:	56                   	push   %esi
 715:	53                   	push   %ebx
 716:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 719:	8b 75 0c             	mov    0xc(%ebp),%esi
 71c:	0f b6 1e             	movzbl (%esi),%ebx
 71f:	84 db                	test   %bl,%bl
 721:	0f 84 b3 00 00 00    	je     7da <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 727:	8d 45 10             	lea    0x10(%ebp),%eax
 72a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 72d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 72f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 732:	eb 2f                	jmp    763 <printf+0x53>
 734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 738:	83 f8 25             	cmp    $0x25,%eax
 73b:	0f 84 a7 00 00 00    	je     7e8 <printf+0xd8>
  write(fd, &c, 1);
 741:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 744:	83 ec 04             	sub    $0x4,%esp
 747:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 74a:	6a 01                	push   $0x1
 74c:	50                   	push   %eax
 74d:	ff 75 08             	pushl  0x8(%ebp)
 750:	e8 85 fe ff ff       	call   5da <write>
 755:	83 c4 10             	add    $0x10,%esp
 758:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 75b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 75f:	84 db                	test   %bl,%bl
 761:	74 77                	je     7da <printf+0xca>
    if(state == 0){
 763:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 765:	0f be cb             	movsbl %bl,%ecx
 768:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 76b:	74 cb                	je     738 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 76d:	83 ff 25             	cmp    $0x25,%edi
 770:	75 e6                	jne    758 <printf+0x48>
      if(c == 'd'){
 772:	83 f8 64             	cmp    $0x64,%eax
 775:	0f 84 05 01 00 00    	je     880 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 77b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 781:	83 f9 70             	cmp    $0x70,%ecx
 784:	74 72                	je     7f8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 786:	83 f8 73             	cmp    $0x73,%eax
 789:	0f 84 99 00 00 00    	je     828 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 78f:	83 f8 63             	cmp    $0x63,%eax
 792:	0f 84 08 01 00 00    	je     8a0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 798:	83 f8 25             	cmp    $0x25,%eax
 79b:	0f 84 ef 00 00 00    	je     890 <printf+0x180>
  write(fd, &c, 1);
 7a1:	8d 45 e7             	lea    -0x19(%ebp),%eax
 7a4:	83 ec 04             	sub    $0x4,%esp
 7a7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7ab:	6a 01                	push   $0x1
 7ad:	50                   	push   %eax
 7ae:	ff 75 08             	pushl  0x8(%ebp)
 7b1:	e8 24 fe ff ff       	call   5da <write>
 7b6:	83 c4 0c             	add    $0xc,%esp
 7b9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 7bc:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 7bf:	6a 01                	push   $0x1
 7c1:	50                   	push   %eax
 7c2:	ff 75 08             	pushl  0x8(%ebp)
 7c5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7c8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 7ca:	e8 0b fe ff ff       	call   5da <write>
  for(i = 0; fmt[i]; i++){
 7cf:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 7d3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7d6:	84 db                	test   %bl,%bl
 7d8:	75 89                	jne    763 <printf+0x53>
    }
  }
}
 7da:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7dd:	5b                   	pop    %ebx
 7de:	5e                   	pop    %esi
 7df:	5f                   	pop    %edi
 7e0:	5d                   	pop    %ebp
 7e1:	c3                   	ret    
 7e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 7e8:	bf 25 00 00 00       	mov    $0x25,%edi
 7ed:	e9 66 ff ff ff       	jmp    758 <printf+0x48>
 7f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7f8:	83 ec 0c             	sub    $0xc,%esp
 7fb:	b9 10 00 00 00       	mov    $0x10,%ecx
 800:	6a 00                	push   $0x0
 802:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 805:	8b 45 08             	mov    0x8(%ebp),%eax
 808:	8b 17                	mov    (%edi),%edx
 80a:	e8 61 fe ff ff       	call   670 <printint>
        ap++;
 80f:	89 f8                	mov    %edi,%eax
 811:	83 c4 10             	add    $0x10,%esp
      state = 0;
 814:	31 ff                	xor    %edi,%edi
        ap++;
 816:	83 c0 04             	add    $0x4,%eax
 819:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 81c:	e9 37 ff ff ff       	jmp    758 <printf+0x48>
 821:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 828:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 82b:	8b 08                	mov    (%eax),%ecx
        ap++;
 82d:	83 c0 04             	add    $0x4,%eax
 830:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 833:	85 c9                	test   %ecx,%ecx
 835:	0f 84 8e 00 00 00    	je     8c9 <printf+0x1b9>
        while(*s != 0){
 83b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 83e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 840:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 842:	84 c0                	test   %al,%al
 844:	0f 84 0e ff ff ff    	je     758 <printf+0x48>
 84a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 84d:	89 de                	mov    %ebx,%esi
 84f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 852:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 855:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 858:	83 ec 04             	sub    $0x4,%esp
          s++;
 85b:	83 c6 01             	add    $0x1,%esi
 85e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 861:	6a 01                	push   $0x1
 863:	57                   	push   %edi
 864:	53                   	push   %ebx
 865:	e8 70 fd ff ff       	call   5da <write>
        while(*s != 0){
 86a:	0f b6 06             	movzbl (%esi),%eax
 86d:	83 c4 10             	add    $0x10,%esp
 870:	84 c0                	test   %al,%al
 872:	75 e4                	jne    858 <printf+0x148>
 874:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 877:	31 ff                	xor    %edi,%edi
 879:	e9 da fe ff ff       	jmp    758 <printf+0x48>
 87e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 880:	83 ec 0c             	sub    $0xc,%esp
 883:	b9 0a 00 00 00       	mov    $0xa,%ecx
 888:	6a 01                	push   $0x1
 88a:	e9 73 ff ff ff       	jmp    802 <printf+0xf2>
 88f:	90                   	nop
  write(fd, &c, 1);
 890:	83 ec 04             	sub    $0x4,%esp
 893:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 896:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 899:	6a 01                	push   $0x1
 89b:	e9 21 ff ff ff       	jmp    7c1 <printf+0xb1>
        putc(fd, *ap);
 8a0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 8a3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8a6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 8a8:	6a 01                	push   $0x1
        ap++;
 8aa:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 8ad:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 8b0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8b3:	50                   	push   %eax
 8b4:	ff 75 08             	pushl  0x8(%ebp)
 8b7:	e8 1e fd ff ff       	call   5da <write>
        ap++;
 8bc:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 8bf:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8c2:	31 ff                	xor    %edi,%edi
 8c4:	e9 8f fe ff ff       	jmp    758 <printf+0x48>
          s = "(null)";
 8c9:	bb 9e 0a 00 00       	mov    $0xa9e,%ebx
        while(*s != 0){
 8ce:	b8 28 00 00 00       	mov    $0x28,%eax
 8d3:	e9 72 ff ff ff       	jmp    84a <printf+0x13a>
 8d8:	66 90                	xchg   %ax,%ax
 8da:	66 90                	xchg   %ax,%ax
 8dc:	66 90                	xchg   %ax,%ax
 8de:	66 90                	xchg   %ax,%ax

000008e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8e1:	a1 60 0e 00 00       	mov    0xe60,%eax
{
 8e6:	89 e5                	mov    %esp,%ebp
 8e8:	57                   	push   %edi
 8e9:	56                   	push   %esi
 8ea:	53                   	push   %ebx
 8eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8ee:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 8f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8f8:	39 c8                	cmp    %ecx,%eax
 8fa:	8b 10                	mov    (%eax),%edx
 8fc:	73 32                	jae    930 <free+0x50>
 8fe:	39 d1                	cmp    %edx,%ecx
 900:	72 04                	jb     906 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 902:	39 d0                	cmp    %edx,%eax
 904:	72 32                	jb     938 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 906:	8b 73 fc             	mov    -0x4(%ebx),%esi
 909:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 90c:	39 fa                	cmp    %edi,%edx
 90e:	74 30                	je     940 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 910:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 913:	8b 50 04             	mov    0x4(%eax),%edx
 916:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 919:	39 f1                	cmp    %esi,%ecx
 91b:	74 3a                	je     957 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 91d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 91f:	a3 60 0e 00 00       	mov    %eax,0xe60
}
 924:	5b                   	pop    %ebx
 925:	5e                   	pop    %esi
 926:	5f                   	pop    %edi
 927:	5d                   	pop    %ebp
 928:	c3                   	ret    
 929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 930:	39 d0                	cmp    %edx,%eax
 932:	72 04                	jb     938 <free+0x58>
 934:	39 d1                	cmp    %edx,%ecx
 936:	72 ce                	jb     906 <free+0x26>
{
 938:	89 d0                	mov    %edx,%eax
 93a:	eb bc                	jmp    8f8 <free+0x18>
 93c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 940:	03 72 04             	add    0x4(%edx),%esi
 943:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 946:	8b 10                	mov    (%eax),%edx
 948:	8b 12                	mov    (%edx),%edx
 94a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 94d:	8b 50 04             	mov    0x4(%eax),%edx
 950:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 953:	39 f1                	cmp    %esi,%ecx
 955:	75 c6                	jne    91d <free+0x3d>
    p->s.size += bp->s.size;
 957:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 95a:	a3 60 0e 00 00       	mov    %eax,0xe60
    p->s.size += bp->s.size;
 95f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 962:	8b 53 f8             	mov    -0x8(%ebx),%edx
 965:	89 10                	mov    %edx,(%eax)
}
 967:	5b                   	pop    %ebx
 968:	5e                   	pop    %esi
 969:	5f                   	pop    %edi
 96a:	5d                   	pop    %ebp
 96b:	c3                   	ret    
 96c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000970 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 970:	55                   	push   %ebp
 971:	89 e5                	mov    %esp,%ebp
 973:	57                   	push   %edi
 974:	56                   	push   %esi
 975:	53                   	push   %ebx
 976:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 979:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 97c:	8b 15 60 0e 00 00    	mov    0xe60,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 982:	8d 78 07             	lea    0x7(%eax),%edi
 985:	c1 ef 03             	shr    $0x3,%edi
 988:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 98b:	85 d2                	test   %edx,%edx
 98d:	0f 84 9d 00 00 00    	je     a30 <malloc+0xc0>
 993:	8b 02                	mov    (%edx),%eax
 995:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 998:	39 cf                	cmp    %ecx,%edi
 99a:	76 6c                	jbe    a08 <malloc+0x98>
 99c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 9a2:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9a7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 9aa:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 9b1:	eb 0e                	jmp    9c1 <malloc+0x51>
 9b3:	90                   	nop
 9b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9b8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9ba:	8b 48 04             	mov    0x4(%eax),%ecx
 9bd:	39 f9                	cmp    %edi,%ecx
 9bf:	73 47                	jae    a08 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9c1:	39 05 60 0e 00 00    	cmp    %eax,0xe60
 9c7:	89 c2                	mov    %eax,%edx
 9c9:	75 ed                	jne    9b8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9cb:	83 ec 0c             	sub    $0xc,%esp
 9ce:	56                   	push   %esi
 9cf:	e8 6e fc ff ff       	call   642 <sbrk>
  if(p == (char*)-1)
 9d4:	83 c4 10             	add    $0x10,%esp
 9d7:	83 f8 ff             	cmp    $0xffffffff,%eax
 9da:	74 1c                	je     9f8 <malloc+0x88>
  hp->s.size = nu;
 9dc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9df:	83 ec 0c             	sub    $0xc,%esp
 9e2:	83 c0 08             	add    $0x8,%eax
 9e5:	50                   	push   %eax
 9e6:	e8 f5 fe ff ff       	call   8e0 <free>
  return freep;
 9eb:	8b 15 60 0e 00 00    	mov    0xe60,%edx
      if((p = morecore(nunits)) == 0)
 9f1:	83 c4 10             	add    $0x10,%esp
 9f4:	85 d2                	test   %edx,%edx
 9f6:	75 c0                	jne    9b8 <malloc+0x48>
        return 0;
  }
}
 9f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9fb:	31 c0                	xor    %eax,%eax
}
 9fd:	5b                   	pop    %ebx
 9fe:	5e                   	pop    %esi
 9ff:	5f                   	pop    %edi
 a00:	5d                   	pop    %ebp
 a01:	c3                   	ret    
 a02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a08:	39 cf                	cmp    %ecx,%edi
 a0a:	74 54                	je     a60 <malloc+0xf0>
        p->s.size -= nunits;
 a0c:	29 f9                	sub    %edi,%ecx
 a0e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a11:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a14:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 a17:	89 15 60 0e 00 00    	mov    %edx,0xe60
}
 a1d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a20:	83 c0 08             	add    $0x8,%eax
}
 a23:	5b                   	pop    %ebx
 a24:	5e                   	pop    %esi
 a25:	5f                   	pop    %edi
 a26:	5d                   	pop    %ebp
 a27:	c3                   	ret    
 a28:	90                   	nop
 a29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 a30:	c7 05 60 0e 00 00 64 	movl   $0xe64,0xe60
 a37:	0e 00 00 
 a3a:	c7 05 64 0e 00 00 64 	movl   $0xe64,0xe64
 a41:	0e 00 00 
    base.s.size = 0;
 a44:	b8 64 0e 00 00       	mov    $0xe64,%eax
 a49:	c7 05 68 0e 00 00 00 	movl   $0x0,0xe68
 a50:	00 00 00 
 a53:	e9 44 ff ff ff       	jmp    99c <malloc+0x2c>
 a58:	90                   	nop
 a59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 a60:	8b 08                	mov    (%eax),%ecx
 a62:	89 0a                	mov    %ecx,(%edx)
 a64:	eb b1                	jmp    a17 <malloc+0xa7>
