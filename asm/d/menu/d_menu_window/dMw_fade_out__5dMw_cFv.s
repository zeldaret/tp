lbl_801FCE08:
/* 801FCE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FCE0C  7C 08 02 A6 */	mflr r0
/* 801FCE10  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FCE14  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 801FCE18  80 63 00 04 */	lwz r3, 4(r3)
/* 801FCE1C  28 03 00 00 */	cmplwi r3, 0
/* 801FCE20  41 82 00 18 */	beq lbl_801FCE38
/* 801FCE24  38 80 00 0D */	li r4, 0xd
/* 801FCE28  81 83 00 00 */	lwz r12, 0(r3)
/* 801FCE2C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801FCE30  7D 89 03 A6 */	mtctr r12
/* 801FCE34  4E 80 04 21 */	bctrl 
lbl_801FCE38:
/* 801FCE38  80 0D 80 84 */	lwz r0, g_blackColor(r13)
/* 801FCE3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801FCE40  90 01 00 08 */	stw r0, 8(r1)
/* 801FCE44  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801FCE48  88 01 00 08 */	lbz r0, 8(r1)
/* 801FCE4C  98 03 00 0C */	stb r0, 0xc(r3)
/* 801FCE50  88 01 00 09 */	lbz r0, 9(r1)
/* 801FCE54  98 03 00 0D */	stb r0, 0xd(r3)
/* 801FCE58  88 01 00 0A */	lbz r0, 0xa(r1)
/* 801FCE5C  98 03 00 0E */	stb r0, 0xe(r3)
/* 801FCE60  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801FCE64  98 03 00 0F */	stb r0, 0xf(r3)
/* 801FCE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FCE6C  7C 08 03 A6 */	mtlr r0
/* 801FCE70  38 21 00 10 */	addi r1, r1, 0x10
/* 801FCE74  4E 80 00 20 */	blr 
