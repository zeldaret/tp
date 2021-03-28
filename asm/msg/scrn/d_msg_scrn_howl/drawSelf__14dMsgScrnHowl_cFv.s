lbl_80241C30:
/* 80241C30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80241C34  7C 08 02 A6 */	mflr r0
/* 80241C38  90 01 00 44 */	stw r0, 0x44(r1)
/* 80241C3C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80241C40  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80241C44  7C 7E 1B 78 */	mr r30, r3
/* 80241C48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80241C4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80241C50  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 80241C54  38 7E 21 14 */	addi r3, r30, 0x2114
/* 80241C58  38 9E 21 18 */	addi r4, r30, 0x2118
/* 80241C5C  38 BE 21 1C */	addi r5, r30, 0x211c
/* 80241C60  38 DE 21 20 */	addi r6, r30, 0x2120
/* 80241C64  48 11 E8 E5 */	bl GXGetScissor
/* 80241C68  A0 1E 21 38 */	lhz r0, 0x2138(r30)
/* 80241C6C  28 00 00 00 */	cmplwi r0, 0
/* 80241C70  41 82 00 2C */	beq lbl_80241C9C
/* 80241C74  88 1E 27 98 */	lbz r0, 0x2798(r30)
/* 80241C78  28 00 00 00 */	cmplwi r0, 0
/* 80241C7C  41 82 00 0C */	beq lbl_80241C88
/* 80241C80  28 00 00 04 */	cmplwi r0, 4
/* 80241C84  40 82 00 10 */	bne lbl_80241C94
lbl_80241C88:
/* 80241C88  7F C3 F3 78 */	mr r3, r30
/* 80241C8C  48 00 0B 1D */	bl drawGuide__14dMsgScrnHowl_cFv
/* 80241C90  48 00 00 0C */	b lbl_80241C9C
lbl_80241C94:
/* 80241C94  7F C3 F3 78 */	mr r3, r30
/* 80241C98  48 00 13 4D */	bl drawGuide2__14dMsgScrnHowl_cFv
lbl_80241C9C:
/* 80241C9C  88 1E 27 98 */	lbz r0, 0x2798(r30)
/* 80241CA0  28 00 00 03 */	cmplwi r0, 3
/* 80241CA4  41 82 00 0C */	beq lbl_80241CB0
/* 80241CA8  7F C3 F3 78 */	mr r3, r30
/* 80241CAC  48 00 04 ED */	bl drawWave__14dMsgScrnHowl_cFv
lbl_80241CB0:
/* 80241CB0  80 1E 21 20 */	lwz r0, 0x2120(r30)
/* 80241CB4  C8 22 B2 80 */	lfd f1, lit_4587(r2)
/* 80241CB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80241CBC  3C 60 43 30 */	lis r3, 0x4330
/* 80241CC0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80241CC4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80241CC8  EC 80 08 28 */	fsubs f4, f0, f1
/* 80241CCC  80 1E 21 1C */	lwz r0, 0x211c(r30)
/* 80241CD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80241CD4  90 61 00 20 */	stw r3, 0x20(r1)
/* 80241CD8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80241CDC  EC 60 08 28 */	fsubs f3, f0, f1
/* 80241CE0  80 1E 21 18 */	lwz r0, 0x2118(r30)
/* 80241CE4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80241CE8  90 61 00 28 */	stw r3, 0x28(r1)
/* 80241CEC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80241CF0  EC 40 08 28 */	fsubs f2, f0, f1
/* 80241CF4  80 1E 21 14 */	lwz r0, 0x2114(r30)
/* 80241CF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80241CFC  90 61 00 30 */	stw r3, 0x30(r1)
/* 80241D00  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80241D04  EC 00 08 28 */	fsubs f0, f0, f1
/* 80241D08  D0 01 00 08 */	stfs f0, 8(r1)
/* 80241D0C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80241D10  EC 00 18 2A */	fadds f0, f0, f3
/* 80241D14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80241D18  EC 02 20 2A */	fadds f0, f2, f4
/* 80241D1C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80241D20  7F E3 FB 78 */	mr r3, r31
/* 80241D24  38 81 00 08 */	addi r4, r1, 8
/* 80241D28  48 0A 73 99 */	bl func_802E90C0
/* 80241D2C  7F E3 FB 78 */	mr r3, r31
/* 80241D30  81 9F 00 00 */	lwz r12, 0(r31)
/* 80241D34  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80241D38  7D 89 03 A6 */	mtctr r12
/* 80241D3C  4E 80 04 21 */	bctrl 
/* 80241D40  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80241D44  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80241D48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80241D4C  7C 08 03 A6 */	mtlr r0
/* 80241D50  38 21 00 40 */	addi r1, r1, 0x40
/* 80241D54  4E 80 00 20 */	blr 
