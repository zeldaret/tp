lbl_8085366C:
/* 8085366C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80853670  7C 08 02 A6 */	mflr r0
/* 80853674  90 01 00 44 */	stw r0, 0x44(r1)
/* 80853678  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8085367C  7C 7F 1B 78 */	mr r31, r3
/* 80853680  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80853684  C0 23 07 0C */	lfs f1, 0x70c(r3)
/* 80853688  3C 60 80 85 */	lis r3, l_HIO@ha
/* 8085368C  38 63 4F 78 */	addi r3, r3, l_HIO@l
/* 80853690  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80853694  EC 21 00 2A */	fadds f1, f1, f0
/* 80853698  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8085369C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 808536A0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 808536A4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 808536A8  38 61 00 20 */	addi r3, r1, 0x20
/* 808536AC  38 80 00 00 */	li r4, 0
/* 808536B0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 808536B4  38 C0 00 00 */	li r6, 0
/* 808536B8  4B A1 3D 3C */	b __ct__5csXyzFsss
/* 808536BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808536C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808536C4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 808536C8  38 00 00 FF */	li r0, 0xff
/* 808536CC  90 01 00 08 */	stw r0, 8(r1)
/* 808536D0  38 80 00 00 */	li r4, 0
/* 808536D4  90 81 00 0C */	stw r4, 0xc(r1)
/* 808536D8  38 00 FF FF */	li r0, -1
/* 808536DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 808536E0  90 81 00 14 */	stw r4, 0x14(r1)
/* 808536E4  90 81 00 18 */	stw r4, 0x18(r1)
/* 808536E8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 808536EC  80 9F 0B 50 */	lwz r4, 0xb50(r31)
/* 808536F0  38 A0 00 00 */	li r5, 0
/* 808536F4  3C C0 00 01 */	lis r6, 0x0001 /* 0x000086FE@ha */
/* 808536F8  38 C6 86 FE */	addi r6, r6, 0x86FE /* 0x000086FE@l */
/* 808536FC  38 E1 00 28 */	addi r7, r1, 0x28
/* 80853700  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80853704  39 21 00 20 */	addi r9, r1, 0x20
/* 80853708  39 40 00 00 */	li r10, 0
/* 8085370C  3D 60 80 85 */	lis r11, lit_3932@ha
/* 80853710  C0 2B 4B 10 */	lfs f1, lit_3932@l(r11)
/* 80853714  4B 7F 9D B8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80853718  90 7F 0B 50 */	stw r3, 0xb50(r31)
/* 8085371C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80853720  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80853724  7C 08 03 A6 */	mtlr r0
/* 80853728  38 21 00 40 */	addi r1, r1, 0x40
/* 8085372C  4E 80 00 20 */	blr 
