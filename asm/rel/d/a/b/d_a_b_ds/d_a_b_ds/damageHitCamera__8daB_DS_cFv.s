lbl_805D03EC:
/* 805D03EC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805D03F0  7C 08 02 A6 */	mflr r0
/* 805D03F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 805D03F8  39 61 00 50 */	addi r11, r1, 0x50
/* 805D03FC  4B D9 1D E1 */	bl _savegpr_29
/* 805D0400  7C 7D 1B 78 */	mr r29, r3
/* 805D0404  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805D0408  3B E3 CA 54 */	addi r31, r3, lit_3932@l /* 0x805DCA54@l */
/* 805D040C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D0410  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D0414  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805D0418  7C 00 07 74 */	extsb r0, r0
/* 805D041C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805D0420  7C 63 02 14 */	add r3, r3, r0
/* 805D0424  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 805D0428  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805D042C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805D0430  80 63 00 00 */	lwz r3, 0(r3)
/* 805D0434  A8 9D 07 D0 */	lha r4, 0x7d0(r29)
/* 805D0438  4B A3 BF A5 */	bl mDoMtx_YrotS__FPA4_fs
/* 805D043C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D0440  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805D0444  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805D0448  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805D044C  C0 1F 02 EC */	lfs f0, 0x2ec(r31)
/* 805D0450  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805D0454  38 61 00 2C */	addi r3, r1, 0x2c
/* 805D0458  38 81 00 20 */	addi r4, r1, 0x20
/* 805D045C  4B CA 0A 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805D0460  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 805D0464  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805D0468  EC 01 00 2A */	fadds f0, f1, f0
/* 805D046C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805D0470  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 805D0474  C0 3D 09 48 */	lfs f1, 0x948(r29)
/* 805D0478  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805D047C  41 82 00 10 */	beq lbl_805D048C
/* 805D0480  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805D0484  EC 00 08 2A */	fadds f0, f0, f1
/* 805D0488  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_805D048C:
/* 805D048C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 805D0490  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805D0494  EC 01 00 2A */	fadds f0, f1, f0
/* 805D0498  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805D049C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805D04A0  D0 1D 2D 20 */	stfs f0, 0x2d20(r29)
/* 805D04A4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805D04A8  D0 1D 2D 24 */	stfs f0, 0x2d24(r29)
/* 805D04AC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805D04B0  D0 1D 2D 28 */	stfs f0, 0x2d28(r29)
/* 805D04B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D04B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805D04BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805D04C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805D04C4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 805D04C8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805D04CC  38 61 00 2C */	addi r3, r1, 0x2c
/* 805D04D0  38 81 00 20 */	addi r4, r1, 0x20
/* 805D04D4  4B CA 0A 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805D04D8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 805D04DC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805D04E0  EC 01 00 2A */	fadds f0, f1, f0
/* 805D04E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805D04E8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 805D04EC  C0 3D 09 48 */	lfs f1, 0x948(r29)
/* 805D04F0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805D04F4  41 82 00 10 */	beq lbl_805D0504
/* 805D04F8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805D04FC  EC 00 08 2A */	fadds f0, f0, f1
/* 805D0500  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_805D0504:
/* 805D0504  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 805D0508  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805D050C  EC 01 00 2A */	fadds f0, f1, f0
/* 805D0510  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805D0514  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805D0518  D0 1D 2D 14 */	stfs f0, 0x2d14(r29)
/* 805D051C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805D0520  D0 1D 2D 18 */	stfs f0, 0x2d18(r29)
/* 805D0524  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805D0528  D0 1D 2D 1C */	stfs f0, 0x2d1c(r29)
/* 805D052C  C0 1D 2D 20 */	lfs f0, 0x2d20(r29)
/* 805D0530  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805D0534  C0 1D 2D 24 */	lfs f0, 0x2d24(r29)
/* 805D0538  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805D053C  C0 1D 2D 28 */	lfs f0, 0x2d28(r29)
/* 805D0540  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805D0544  C0 1D 2D 14 */	lfs f0, 0x2d14(r29)
/* 805D0548  D0 01 00 08 */	stfs f0, 8(r1)
/* 805D054C  C0 1D 2D 18 */	lfs f0, 0x2d18(r29)
/* 805D0550  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805D0554  C0 1D 2D 1C */	lfs f0, 0x2d1c(r29)
/* 805D0558  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805D055C  38 7E 02 48 */	addi r3, r30, 0x248
/* 805D0560  38 81 00 14 */	addi r4, r1, 0x14
/* 805D0564  38 A1 00 08 */	addi r5, r1, 8
/* 805D0568  4B BB 05 41 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805D056C  39 61 00 50 */	addi r11, r1, 0x50
/* 805D0570  4B D9 1C B9 */	bl _restgpr_29
/* 805D0574  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805D0578  7C 08 03 A6 */	mtlr r0
/* 805D057C  38 21 00 50 */	addi r1, r1, 0x50
/* 805D0580  4E 80 00 20 */	blr 
