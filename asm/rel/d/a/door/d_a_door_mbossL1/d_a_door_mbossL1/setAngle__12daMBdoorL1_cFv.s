lbl_806759E4:
/* 806759E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806759E8  7C 08 02 A6 */	mflr r0
/* 806759EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806759F0  39 61 00 30 */	addi r11, r1, 0x30
/* 806759F4  4B CE C7 E9 */	bl _savegpr_29
/* 806759F8  7C 7D 1B 78 */	mr r29, r3
/* 806759FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80675A00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80675A04  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80675A08  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80675A0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80675A10  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80675A14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80675A18  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80675A1C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80675A20  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80675A24  B0 01 00 08 */	sth r0, 8(r1)
/* 80675A28  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80675A2C  88 1D 05 DF */	lbz r0, 0x5df(r29)
/* 80675A30  28 00 00 01 */	cmplwi r0, 1
/* 80675A34  40 82 00 0C */	bne lbl_80675A40
/* 80675A38  38 04 7F FF */	addi r0, r4, 0x7fff
/* 80675A3C  7C 04 07 34 */	extsh r4, r0
lbl_80675A40:
/* 80675A40  38 61 00 08 */	addi r3, r1, 8
/* 80675A44  7C 84 07 34 */	extsh r4, r4
/* 80675A48  3B E4 7F FF */	addi r31, r4, 0x7fff
/* 80675A4C  7F E4 07 34 */	extsh r4, r31
/* 80675A50  38 A0 00 05 */	li r5, 5
/* 80675A54  38 C0 0B B8 */	li r6, 0xbb8
/* 80675A58  4B BF AB B1 */	bl cLib_addCalcAngleS2__FPssss
/* 80675A5C  88 1D 05 CD */	lbz r0, 0x5cd(r29)
/* 80675A60  28 00 00 00 */	cmplwi r0, 0
/* 80675A64  41 82 00 34 */	beq lbl_80675A98
/* 80675A68  7F C3 F3 78 */	mr r3, r30
/* 80675A6C  38 81 00 0C */	addi r4, r1, 0xc
/* 80675A70  A8 A1 00 08 */	lha r5, 8(r1)
/* 80675A74  38 C0 00 00 */	li r6, 0
/* 80675A78  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80675A7C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80675A80  7D 89 03 A6 */	mtctr r12
/* 80675A84  4E 80 04 21 */	bctrl 
/* 80675A88  88 7D 05 CD */	lbz r3, 0x5cd(r29)
/* 80675A8C  38 03 FF FF */	addi r0, r3, -1
/* 80675A90  98 1D 05 CD */	stb r0, 0x5cd(r29)
/* 80675A94  48 00 00 2C */	b lbl_80675AC0
lbl_80675A98:
/* 80675A98  7F C3 F3 78 */	mr r3, r30
/* 80675A9C  38 81 00 0C */	addi r4, r1, 0xc
/* 80675AA0  7F E5 07 34 */	extsh r5, r31
/* 80675AA4  38 C0 00 00 */	li r6, 0
/* 80675AA8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80675AAC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80675AB0  7D 89 03 A6 */	mtctr r12
/* 80675AB4  4E 80 04 21 */	bctrl 
/* 80675AB8  38 60 00 01 */	li r3, 1
/* 80675ABC  48 00 00 08 */	b lbl_80675AC4
lbl_80675AC0:
/* 80675AC0  38 60 00 00 */	li r3, 0
lbl_80675AC4:
/* 80675AC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80675AC8  4B CE C7 61 */	bl _restgpr_29
/* 80675ACC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80675AD0  7C 08 03 A6 */	mtlr r0
/* 80675AD4  38 21 00 30 */	addi r1, r1, 0x30
/* 80675AD8  4E 80 00 20 */	blr 
