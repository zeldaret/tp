lbl_80BD8748:
/* 80BD8748  3C 80 80 BE */	lis r4, lit_3829@ha /* 0x80BDA008@ha */
/* 80BD874C  C0 04 A0 08 */	lfs f0, lit_3829@l(r4)  /* 0x80BDA008@l */
/* 80BD8750  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 80BD8754  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80BD8758  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 80BD875C  38 00 00 0D */	li r0, 0xd
/* 80BD8760  B0 03 0F 14 */	sth r0, 0xf14(r3)
/* 80BD8764  38 00 09 D8 */	li r0, 0x9d8
/* 80BD8768  B0 03 0F 16 */	sth r0, 0xf16(r3)
/* 80BD876C  38 00 00 01 */	li r0, 1
/* 80BD8770  98 03 0E 92 */	stb r0, 0xe92(r3)
/* 80BD8774  4E 80 00 20 */	blr 
