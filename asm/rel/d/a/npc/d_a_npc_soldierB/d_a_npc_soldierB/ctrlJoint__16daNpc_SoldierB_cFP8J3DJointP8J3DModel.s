lbl_80AF3634:
/* 80AF3634  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF3638  7C 08 02 A6 */	mflr r0
/* 80AF363C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF3640  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF3644  4B 86 EB 95 */	bl _savegpr_28
/* 80AF3648  7C 7C 1B 78 */	mr r28, r3
/* 80AF364C  7C BD 2B 78 */	mr r29, r5
/* 80AF3650  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80AF3654  7C BE 2B 78 */	mr r30, r5
/* 80AF3658  3C 60 80 AF */	lis r3, lit_4477@ha /* 0x80AF5B58@ha */
/* 80AF365C  38 83 5B 58 */	addi r4, r3, lit_4477@l /* 0x80AF5B58@l */
/* 80AF3660  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF3664  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF3668  90 61 00 08 */	stw r3, 8(r1)
/* 80AF366C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF3670  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF3674  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF3678  2C 05 00 00 */	cmpwi r5, 0
/* 80AF367C  40 82 00 B0 */	bne lbl_80AF372C
/* 80AF3680  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AF3684  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF3688  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AF368C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AF3690  38 63 00 30 */	addi r3, r3, 0x30
/* 80AF3694  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF3698  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF369C  4B 85 2E 15 */	bl PSMTXCopy
/* 80AF36A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF36A4  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF36A8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80AF36AC  D0 1C 08 54 */	stfs f0, 0x854(r28)
/* 80AF36B0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80AF36B4  D0 1C 08 58 */	stfs f0, 0x858(r28)
/* 80AF36B8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80AF36BC  D0 1C 08 5C */	stfs f0, 0x85c(r28)
/* 80AF36C0  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AF36C4  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF36C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AF36CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AF36D0  38 63 00 90 */	addi r3, r3, 0x90
/* 80AF36D4  7F E4 FB 78 */	mr r4, r31
/* 80AF36D8  4B 85 2D D9 */	bl PSMTXCopy
/* 80AF36DC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80AF36E0  D0 1C 08 60 */	stfs f0, 0x860(r28)
/* 80AF36E4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80AF36E8  D0 1C 08 64 */	stfs f0, 0x864(r28)
/* 80AF36EC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80AF36F0  D0 1C 08 68 */	stfs f0, 0x868(r28)
/* 80AF36F4  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AF36F8  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF36FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AF3700  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AF3704  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80AF3708  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF370C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF3710  4B 85 2D A1 */	bl PSMTXCopy
/* 80AF3714  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80AF3718  D0 1C 08 6C */	stfs f0, 0x86c(r28)
/* 80AF371C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80AF3720  D0 1C 08 70 */	stfs f0, 0x870(r28)
/* 80AF3724  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80AF3728  D0 1C 08 74 */	stfs f0, 0x874(r28)
lbl_80AF372C:
/* 80AF372C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80AF3730  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80AF3734  1F FE 00 30 */	mulli r31, r30, 0x30
/* 80AF3738  7C 60 FA 14 */	add r3, r0, r31
/* 80AF373C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF3740  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF3744  4B 85 2D 6D */	bl PSMTXCopy
/* 80AF3748  2C 1E 00 02 */	cmpwi r30, 2
/* 80AF374C  41 82 00 38 */	beq lbl_80AF3784
/* 80AF3750  40 80 00 10 */	bge lbl_80AF3760
/* 80AF3754  2C 1E 00 01 */	cmpwi r30, 1
/* 80AF3758  40 80 00 10 */	bge lbl_80AF3768
/* 80AF375C  48 00 00 28 */	b lbl_80AF3784
lbl_80AF3760:
/* 80AF3760  2C 1E 00 05 */	cmpwi r30, 5
/* 80AF3764  40 80 00 20 */	bge lbl_80AF3784
lbl_80AF3768:
/* 80AF3768  7F 83 E3 78 */	mr r3, r28
/* 80AF376C  7F C4 F3 78 */	mr r4, r30
/* 80AF3770  38 A1 00 08 */	addi r5, r1, 8
/* 80AF3774  3C C0 80 AF */	lis r6, m__22daNpc_SoldierB_Param_c@ha /* 0x80AF5AD4@ha */
/* 80AF3778  38 C6 5A D4 */	addi r6, r6, m__22daNpc_SoldierB_Param_c@l /* 0x80AF5AD4@l */
/* 80AF377C  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80AF3780  4B 65 FB FD */	bl setLookatMtx__8daNpcF_cFiPif
lbl_80AF3784:
/* 80AF3784  2C 1E 00 01 */	cmpwi r30, 1
/* 80AF3788  40 82 00 30 */	bne lbl_80AF37B8
/* 80AF378C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF3790  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF3794  A8 1C 09 0C */	lha r0, 0x90c(r28)
/* 80AF3798  7C 00 00 D0 */	neg r0, r0
/* 80AF379C  7C 04 07 34 */	extsh r4, r0
/* 80AF37A0  4B 51 8C 95 */	bl mDoMtx_YrotM__FPA4_fs
/* 80AF37A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF37A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF37AC  A8 9C 09 08 */	lha r4, 0x908(r28)
/* 80AF37B0  4B 51 8D 1D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80AF37B4  48 00 00 34 */	b lbl_80AF37E8
lbl_80AF37B8:
/* 80AF37B8  2C 1E 00 04 */	cmpwi r30, 4
/* 80AF37BC  40 82 00 2C */	bne lbl_80AF37E8
/* 80AF37C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF37C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF37C8  A8 1C 09 18 */	lha r0, 0x918(r28)
/* 80AF37CC  7C 00 00 D0 */	neg r0, r0
/* 80AF37D0  7C 04 07 34 */	extsh r4, r0
/* 80AF37D4  4B 51 8C 61 */	bl mDoMtx_YrotM__FPA4_fs
/* 80AF37D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF37DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF37E0  A8 9C 09 14 */	lha r4, 0x914(r28)
/* 80AF37E4  4B 51 8C E9 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80AF37E8:
/* 80AF37E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF37EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF37F0  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 80AF37F4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80AF37F8  7C 80 FA 14 */	add r4, r0, r31
/* 80AF37FC  4B 85 2C B5 */	bl PSMTXCopy
/* 80AF3800  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF3804  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF3808  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80AF380C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80AF3810  4B 85 2C A1 */	bl PSMTXCopy
/* 80AF3814  38 60 00 01 */	li r3, 1
/* 80AF3818  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF381C  4B 86 EA 09 */	bl _restgpr_28
/* 80AF3820  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF3824  7C 08 03 A6 */	mtlr r0
/* 80AF3828  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF382C  4E 80 00 20 */	blr 
