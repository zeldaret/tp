lbl_8015C5F4:
/* 8015C5F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015C5F8  7C 08 02 A6 */	mflr r0
/* 8015C5FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015C600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015C604  7C 7F 1B 78 */	mr r31, r3
/* 8015C608  4B ED B4 5D */	bl hide__12daItemBase_cFv
/* 8015C60C  A0 1F 09 2E */	lhz r0, 0x92e(r31)
/* 8015C610  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 8015C614  28 00 00 3F */	cmplwi r0, 0x3f
/* 8015C618  40 82 00 10 */	bne lbl_8015C628
/* 8015C61C  38 00 00 0F */	li r0, 0xf
/* 8015C620  98 1F 09 5C */	stb r0, 0x95c(r31)
/* 8015C624  48 00 00 08 */	b lbl_8015C62C
lbl_8015C628:
/* 8015C628  98 1F 09 5C */	stb r0, 0x95c(r31)
lbl_8015C62C:
/* 8015C62C  38 00 00 06 */	li r0, 6
/* 8015C630  98 1F 09 4A */	stb r0, 0x94a(r31)
/* 8015C634  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015C638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015C63C  7C 08 03 A6 */	mtlr r0
/* 8015C640  38 21 00 10 */	addi r1, r1, 0x10
/* 8015C644  4E 80 00 20 */	blr 
