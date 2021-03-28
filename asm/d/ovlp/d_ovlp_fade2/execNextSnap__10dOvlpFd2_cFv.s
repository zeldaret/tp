lbl_80252BC0:
/* 80252BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252BC4  7C 08 02 A6 */	mflr r0
/* 80252BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252BCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80252BD0  7C 7F 1B 78 */	mr r31, r3
/* 80252BD4  38 7F 01 1D */	addi r3, r31, 0x11d
/* 80252BD8  48 00 02 99 */	bl func_80252E70
/* 80252BDC  7C 60 07 75 */	extsb. r0, r3
/* 80252BE0  40 82 00 74 */	bne lbl_80252C54
/* 80252BE4  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80252BE8  80 63 00 04 */	lwz r3, 4(r3)
/* 80252BEC  38 80 00 10 */	li r4, 0x10
/* 80252BF0  81 83 00 00 */	lwz r12, 0(r3)
/* 80252BF4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80252BF8  7D 89 03 A6 */	mtctr r12
/* 80252BFC  4E 80 04 21 */	bctrl 
/* 80252C00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80252C04  40 82 00 50 */	bne lbl_80252C54
/* 80252C08  A8 7F 01 10 */	lha r3, 0x110(r31)
/* 80252C0C  A8 1F 01 12 */	lha r0, 0x112(r31)
/* 80252C10  7C 03 02 14 */	add r0, r3, r0
/* 80252C14  B0 1F 01 10 */	sth r0, 0x110(r31)
/* 80252C18  38 80 00 00 */	li r4, 0
/* 80252C1C  98 9F 01 1C */	stb r4, 0x11c(r31)
/* 80252C20  38 00 00 01 */	li r0, 1
/* 80252C24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80252C28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80252C2C  98 03 5D 44 */	stb r0, 0x5d44(r3)
/* 80252C30  98 83 5E B8 */	stb r4, 0x5eb8(r3)
/* 80252C34  3C 60 80 3C */	lis r3, lit_3765@ha
/* 80252C38  38 83 2D 14 */	addi r4, r3, lit_3765@l
/* 80252C3C  80 64 00 00 */	lwz r3, 0(r4)
/* 80252C40  80 04 00 04 */	lwz r0, 4(r4)
/* 80252C44  90 7F 00 CC */	stw r3, 0xcc(r31)
/* 80252C48  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 80252C4C  80 04 00 08 */	lwz r0, 8(r4)
/* 80252C50  90 1F 00 D4 */	stw r0, 0xd4(r31)
lbl_80252C54:
/* 80252C54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80252C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80252C5C  7C 08 03 A6 */	mtlr r0
/* 80252C60  38 21 00 10 */	addi r1, r1, 0x10
/* 80252C64  4E 80 00 20 */	blr 
