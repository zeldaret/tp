lbl_80528BF8:
/* 80528BF8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80528BFC  7C 08 02 A6 */	mflr r0
/* 80528C00  90 01 00 54 */	stw r0, 0x54(r1)
/* 80528C04  39 61 00 50 */	addi r11, r1, 0x50
/* 80528C08  4B E3 95 D5 */	bl _savegpr_29
/* 80528C0C  7C 7D 1B 78 */	mr r29, r3
/* 80528C10  7C DE 33 78 */	mr r30, r6
/* 80528C14  7C FF 3B 78 */	mr r31, r7
/* 80528C18  80 04 00 08 */	lwz r0, 8(r4)
/* 80528C1C  54 A3 20 36 */	slwi r3, r5, 4
/* 80528C20  7C 60 1A 14 */	add r3, r0, r3
/* 80528C24  C0 C3 00 04 */	lfs f6, 4(r3)
/* 80528C28  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 80528C2C  C0 A3 00 08 */	lfs f5, 8(r3)
/* 80528C30  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 80528C34  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 80528C38  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 80528C3C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80528C40  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80528C44  C0 63 00 18 */	lfs f3, 0x18(r3)
/* 80528C48  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80528C4C  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80528C50  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80528C54  EC 00 30 28 */	fsubs f0, f0, f6
/* 80528C58  EC 01 00 32 */	fmuls f0, f1, f0
/* 80528C5C  EC 06 00 2A */	fadds f0, f6, f0
/* 80528C60  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80528C64  EC 03 28 28 */	fsubs f0, f3, f5
/* 80528C68  EC 01 00 32 */	fmuls f0, f1, f0
/* 80528C6C  EC 05 00 2A */	fadds f0, f5, f0
/* 80528C70  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80528C74  EC 02 20 28 */	fsubs f0, f2, f4
/* 80528C78  EC 01 00 32 */	fmuls f0, f1, f0
/* 80528C7C  EC 04 00 2A */	fadds f0, f4, f0
/* 80528C80  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80528C84  38 61 00 2C */	addi r3, r1, 0x2c
/* 80528C88  38 81 00 20 */	addi r4, r1, 0x20
/* 80528C8C  38 A1 00 08 */	addi r5, r1, 8
/* 80528C90  4B B3 2A D1 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 80528C94  C0 01 00 08 */	lfs f0, 8(r1)
/* 80528C98  EC 20 00 32 */	fmuls f1, f0, f0
/* 80528C9C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80528CA0  EC 00 00 32 */	fmuls f0, f0, f0
/* 80528CA4  EC 21 00 2A */	fadds f1, f1, f0
/* 80528CA8  3C 60 80 53 */	lis r3, lit_3788@ha /* 0x80529400@ha */
/* 80528CAC  C0 03 94 00 */	lfs f0, lit_3788@l(r3)  /* 0x80529400@l */
/* 80528CB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80528CB4  40 81 00 0C */	ble lbl_80528CC0
/* 80528CB8  FC 00 08 34 */	frsqrte f0, f1
/* 80528CBC  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80528CC0:
/* 80528CC0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80528CC4  4B D3 E9 B1 */	bl cM_atan2s__Fff
/* 80528CC8  B0 7E 00 00 */	sth r3, 0(r30)
/* 80528CCC  C0 21 00 08 */	lfs f1, 8(r1)
/* 80528CD0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80528CD4  4B D3 E9 A1 */	bl cM_atan2s__Fff
/* 80528CD8  B0 7F 00 00 */	sth r3, 0(r31)
/* 80528CDC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80528CE0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80528CE4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80528CE8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80528CEC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80528CF0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80528CF4  39 61 00 50 */	addi r11, r1, 0x50
/* 80528CF8  4B E3 95 31 */	bl _restgpr_29
/* 80528CFC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80528D00  7C 08 03 A6 */	mtlr r0
/* 80528D04  38 21 00 50 */	addi r1, r1, 0x50
/* 80528D08  4E 80 00 20 */	blr 
