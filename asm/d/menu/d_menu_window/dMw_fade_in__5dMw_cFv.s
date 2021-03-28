lbl_801FCE78:
/* 801FCE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FCE7C  7C 08 02 A6 */	mflr r0
/* 801FCE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FCE84  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 801FCE88  80 63 00 04 */	lwz r3, 4(r3)
/* 801FCE8C  28 03 00 00 */	cmplwi r3, 0
/* 801FCE90  41 82 00 18 */	beq lbl_801FCEA8
/* 801FCE94  38 80 00 0D */	li r4, 0xd
/* 801FCE98  81 83 00 00 */	lwz r12, 0(r3)
/* 801FCE9C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FCEA0  7D 89 03 A6 */	mtctr r12
/* 801FCEA4  4E 80 04 21 */	bctrl 
lbl_801FCEA8:
/* 801FCEA8  80 0D 80 84 */	lwz r0, g_blackColor(r13)
/* 801FCEAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801FCEB0  90 01 00 08 */	stw r0, 8(r1)
/* 801FCEB4  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801FCEB8  88 01 00 08 */	lbz r0, 8(r1)
/* 801FCEBC  98 03 00 0C */	stb r0, 0xc(r3)
/* 801FCEC0  88 01 00 09 */	lbz r0, 9(r1)
/* 801FCEC4  98 03 00 0D */	stb r0, 0xd(r3)
/* 801FCEC8  88 01 00 0A */	lbz r0, 0xa(r1)
/* 801FCECC  98 03 00 0E */	stb r0, 0xe(r3)
/* 801FCED0  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801FCED4  98 03 00 0F */	stb r0, 0xf(r3)
/* 801FCED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FCEDC  7C 08 03 A6 */	mtlr r0
/* 801FCEE0  38 21 00 10 */	addi r1, r1, 0x10
/* 801FCEE4  4E 80 00 20 */	blr 
