lbl_80CFF168:
/* 80CFF168  38 00 00 02 */	li r0, 2
/* 80CFF16C  90 03 05 C4 */	stw r0, 0x5c4(r3)
/* 80CFF170  38 00 00 00 */	li r0, 0
/* 80CFF174  98 03 05 DF */	stb r0, 0x5df(r3)
/* 80CFF178  3C 80 80 D0 */	lis r4, lit_3939@ha
/* 80CFF17C  C0 04 FC F4 */	lfs f0, lit_3939@l(r4)
/* 80CFF180  D0 03 05 EC */	stfs f0, 0x5ec(r3)
/* 80CFF184  4E 80 00 20 */	blr 
