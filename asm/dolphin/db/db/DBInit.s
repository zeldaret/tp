lbl_80346398:
/* 80346398  3C 80 80 00 */	lis r4, 0x8000 /* 0x80000040@ha */
/* 8034639C  38 04 00 40 */	addi r0, r4, 0x0040 /* 0x80000040@l */
/* 803463A0  3C 60 80 34 */	lis r3, __DBExceptionDestination@ha /* 0x80346408@ha */
/* 803463A4  90 0D 91 88 */	stw r0, __DBInterface(r13)
/* 803463A8  38 63 64 08 */	addi r3, r3, __DBExceptionDestination@l /* 0x80346408@l */
/* 803463AC  3C 03 80 00 */	addis r0, r3, 0x8000
/* 803463B0  90 04 00 48 */	stw r0, 0x48(r4)
/* 803463B4  38 00 00 01 */	li r0, 1
/* 803463B8  90 0D 91 8C */	stw r0, DBVerbose(r13)
/* 803463BC  4E 80 00 20 */	blr 
