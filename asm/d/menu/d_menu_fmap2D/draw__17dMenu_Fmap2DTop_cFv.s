lbl_801D6C98:
/* 801D6C98  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801D6C9C  7C 08 02 A6 */	mflr r0
/* 801D6CA0  90 01 00 64 */	stw r0, 0x64(r1)
/* 801D6CA4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801D6CA8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801D6CAC  7C 7E 1B 78 */	mr r30, r3
/* 801D6CB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801D6CB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801D6CB8  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 801D6CBC  7F E3 FB 78 */	mr r3, r31
/* 801D6CC0  81 9F 00 00 */	lwz r12, 0(r31)
/* 801D6CC4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801D6CC8  7D 89 03 A6 */	mtctr r12
/* 801D6CCC  4E 80 04 21 */	bctrl 
/* 801D6CD0  38 61 00 14 */	addi r3, r1, 0x14
/* 801D6CD4  38 81 00 10 */	addi r4, r1, 0x10
/* 801D6CD8  38 A1 00 0C */	addi r5, r1, 0xc
/* 801D6CDC  38 C1 00 08 */	addi r6, r1, 8
/* 801D6CE0  48 18 98 69 */	bl GXGetScissor
/* 801D6CE4  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 801D6CE8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801D6CEC  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D6CF0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801D6CF4  C0 02 A7 DC */	lfs f0, lit_4199(r2)
/* 801D6CF8  EC 01 00 2A */	fadds f0, f1, f0
/* 801D6CFC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801D6D00  C0 02 A7 E0 */	lfs f0, lit_4200(r2)
/* 801D6D04  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801D6D08  7F E3 FB 78 */	mr r3, r31
/* 801D6D0C  38 81 00 28 */	addi r4, r1, 0x28
/* 801D6D10  48 11 23 B1 */	bl func_802E90C0
/* 801D6D14  7F E3 FB 78 */	mr r3, r31
/* 801D6D18  81 9F 00 00 */	lwz r12, 0(r31)
/* 801D6D1C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D6D20  7D 89 03 A6 */	mtctr r12
/* 801D6D24  4E 80 04 21 */	bctrl 
/* 801D6D28  80 7E 00 08 */	lwz r3, 8(r30)
/* 801D6D2C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 801D6D30  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 801D6D34  7F E4 FB 78 */	mr r4, r31
/* 801D6D38  48 12 21 9D */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801D6D3C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801D6D40  C8 22 A7 F8 */	lfd f1, lit_4207(r2)
/* 801D6D44  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801D6D48  3C 60 43 30 */	lis r3, 0x4330
/* 801D6D4C  90 61 00 38 */	stw r3, 0x38(r1)
/* 801D6D50  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801D6D54  EC 60 08 28 */	fsubs f3, f0, f1
/* 801D6D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D6D5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D6D60  90 61 00 40 */	stw r3, 0x40(r1)
/* 801D6D64  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801D6D68  EC 40 08 28 */	fsubs f2, f0, f1
/* 801D6D6C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801D6D70  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 801D6D74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801D6D78  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801D6D7C  90 61 00 48 */	stw r3, 0x48(r1)
/* 801D6D80  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801D6D84  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D6D88  EC 02 00 2A */	fadds f0, f2, f0
/* 801D6D8C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801D6D90  80 01 00 08 */	lwz r0, 8(r1)
/* 801D6D94  90 01 00 54 */	stw r0, 0x54(r1)
/* 801D6D98  90 61 00 50 */	stw r3, 0x50(r1)
/* 801D6D9C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801D6DA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D6DA4  EC 03 00 2A */	fadds f0, f3, f0
/* 801D6DA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801D6DAC  7F E3 FB 78 */	mr r3, r31
/* 801D6DB0  38 81 00 18 */	addi r4, r1, 0x18
/* 801D6DB4  48 11 23 0D */	bl func_802E90C0
/* 801D6DB8  7F E3 FB 78 */	mr r3, r31
/* 801D6DBC  81 9F 00 00 */	lwz r12, 0(r31)
/* 801D6DC0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D6DC4  7D 89 03 A6 */	mtctr r12
/* 801D6DC8  4E 80 04 21 */	bctrl 
/* 801D6DCC  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 801D6DD0  28 03 00 00 */	cmplwi r3, 0
/* 801D6DD4  41 82 00 0C */	beq lbl_801D6DE0
/* 801D6DD8  7F E4 FB 78 */	mr r4, r31
/* 801D6DDC  48 06 6B 3D */	bl draw__17dMsgScrnExplain_cFP13J2DOrthoGraph
lbl_801D6DE0:
/* 801D6DE0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801D6DE4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801D6DE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801D6DEC  7C 08 03 A6 */	mtlr r0
/* 801D6DF0  38 21 00 60 */	addi r1, r1, 0x60
/* 801D6DF4  4E 80 00 20 */	blr 
