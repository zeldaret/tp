lbl_8007B460:
/* 8007B460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B464  7C 08 02 A6 */	mflr r0
/* 8007B468  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B46C  3C A0 0F 00 */	lis r5, 0xf00
/* 8007B470  38 C0 00 18 */	li r6, 0x18
/* 8007B474  4B FF FE 99 */	bl GetPolyInf0__4cBgWCFiUlUl
/* 8007B478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B47C  7C 08 03 A6 */	mtlr r0
/* 8007B480  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B484  4E 80 00 20 */	blr 
