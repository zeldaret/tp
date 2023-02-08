lbl_807A78B4:
/* 807A78B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807A78B8  7C 08 02 A6 */	mflr r0
/* 807A78BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 807A78C0  39 61 00 40 */	addi r11, r1, 0x40
/* 807A78C4  4B BB A9 19 */	bl _savegpr_29
/* 807A78C8  7C 7F 1B 78 */	mr r31, r3
/* 807A78CC  3C 60 80 7B */	lis r3, lit_3909@ha /* 0x807AFD2C@ha */
/* 807A78D0  3B A3 FD 2C */	addi r29, r3, lit_3909@l /* 0x807AFD2C@l */
/* 807A78D4  88 1F 06 E4 */	lbz r0, 0x6e4(r31)
/* 807A78D8  28 00 00 00 */	cmplwi r0, 0
/* 807A78DC  41 82 01 14 */	beq lbl_807A79F0
/* 807A78E0  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 807A78E4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807A78E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A78EC  41 82 01 04 */	beq lbl_807A79F0
/* 807A78F0  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 807A78F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A78F8  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 807A78FC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807A7900  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 807A7904  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A7908  C0 1D 00 00 */	lfs f0, 0(r29)
/* 807A790C  EC 01 00 2A */	fadds f0, f1, f0
/* 807A7910  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A7914  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A7918  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A791C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807A7920  38 00 00 FF */	li r0, 0xff
/* 807A7924  90 01 00 08 */	stw r0, 8(r1)
/* 807A7928  38 80 00 00 */	li r4, 0
/* 807A792C  90 81 00 0C */	stw r4, 0xc(r1)
/* 807A7930  38 00 FF FF */	li r0, -1
/* 807A7934  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A7938  90 81 00 14 */	stw r4, 0x14(r1)
/* 807A793C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807A7940  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807A7944  80 9F 0A F0 */	lwz r4, 0xaf0(r31)
/* 807A7948  38 A0 00 00 */	li r5, 0
/* 807A794C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008375@ha */
/* 807A7950  38 C6 83 75 */	addi r6, r6, 0x8375 /* 0x00008375@l */
/* 807A7954  38 E1 00 24 */	addi r7, r1, 0x24
/* 807A7958  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807A795C  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 807A7960  39 40 00 00 */	li r10, 0
/* 807A7964  C0 3D 00 08 */	lfs f1, 8(r29)
/* 807A7968  4B 8A 5B 65 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807A796C  90 7F 0A F0 */	stw r3, 0xaf0(r31)
/* 807A7970  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807A7974  38 00 00 FF */	li r0, 0xff
/* 807A7978  90 01 00 08 */	stw r0, 8(r1)
/* 807A797C  38 80 00 00 */	li r4, 0
/* 807A7980  90 81 00 0C */	stw r4, 0xc(r1)
/* 807A7984  38 00 FF FF */	li r0, -1
/* 807A7988  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A798C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807A7990  90 81 00 18 */	stw r4, 0x18(r1)
/* 807A7994  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807A7998  80 9F 0A F4 */	lwz r4, 0xaf4(r31)
/* 807A799C  38 A0 00 00 */	li r5, 0
/* 807A79A0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008376@ha */
/* 807A79A4  38 C6 83 76 */	addi r6, r6, 0x8376 /* 0x00008376@l */
/* 807A79A8  38 E1 00 24 */	addi r7, r1, 0x24
/* 807A79AC  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807A79B0  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 807A79B4  39 40 00 00 */	li r10, 0
/* 807A79B8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 807A79BC  4B 8A 5B 11 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807A79C0  90 7F 0A F4 */	stw r3, 0xaf4(r31)
/* 807A79C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070359@ha */
/* 807A79C8  38 03 03 59 */	addi r0, r3, 0x0359 /* 0x00070359@l */
/* 807A79CC  90 01 00 20 */	stw r0, 0x20(r1)
/* 807A79D0  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807A79D4  38 81 00 20 */	addi r4, r1, 0x20
/* 807A79D8  88 BF 06 E9 */	lbz r5, 0x6e9(r31)
/* 807A79DC  38 C0 FF FF */	li r6, -1
/* 807A79E0  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 807A79E4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807A79E8  7D 89 03 A6 */	mtctr r12
/* 807A79EC  4E 80 04 21 */	bctrl 
lbl_807A79F0:
/* 807A79F0  39 61 00 40 */	addi r11, r1, 0x40
/* 807A79F4  4B BB A8 35 */	bl _restgpr_29
/* 807A79F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807A79FC  7C 08 03 A6 */	mtlr r0
/* 807A7A00  38 21 00 40 */	addi r1, r1, 0x40
/* 807A7A04  4E 80 00 20 */	blr 
