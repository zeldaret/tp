lbl_8055D0D8:
/* 8055D0D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8055D0DC  7C 08 02 A6 */	mflr r0
/* 8055D0E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8055D0E4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8055D0E8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8055D0EC  7C 7E 1B 78 */	mr r30, r3
/* 8055D0F0  3C 80 80 56 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80564F90@ha */
/* 8055D0F4  3B E4 4F 90 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80564F90@l */
/* 8055D0F8  88 03 11 31 */	lbz r0, 0x1131(r3)
/* 8055D0FC  28 00 00 00 */	cmplwi r0, 0
/* 8055D100  41 82 00 74 */	beq lbl_8055D174
/* 8055D104  80 9F 07 6C */	lwz r4, 0x76c(r31)
/* 8055D108  80 1F 07 70 */	lwz r0, 0x770(r31)
/* 8055D10C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8055D110  90 01 00 30 */	stw r0, 0x30(r1)
/* 8055D114  80 1F 07 74 */	lwz r0, 0x774(r31)
/* 8055D118  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055D11C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8055D120  48 00 0B E9 */	bl chkAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i
/* 8055D124  2C 03 00 00 */	cmpwi r3, 0
/* 8055D128  41 82 00 1C */	beq lbl_8055D144
/* 8055D12C  7F C3 F3 78 */	mr r3, r30
/* 8055D130  38 80 00 00 */	li r4, 0
/* 8055D134  39 9E 11 18 */	addi r12, r30, 0x1118
/* 8055D138  4B E0 4F 4D */	bl __ptmf_scall
/* 8055D13C  60 00 00 00 */	nop 
/* 8055D140  48 00 00 98 */	b lbl_8055D1D8
lbl_8055D144:
/* 8055D144  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 8055D148  4B C3 8B 55 */	bl shop_cam_action_init__16ShopCam_action_cFv
/* 8055D14C  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 8055D150  80 1F 07 7C */	lwz r0, 0x77c(r31)
/* 8055D154  90 61 00 20 */	stw r3, 0x20(r1)
/* 8055D158  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055D15C  80 1F 07 80 */	lwz r0, 0x780(r31)
/* 8055D160  90 01 00 28 */	stw r0, 0x28(r1)
/* 8055D164  7F C3 F3 78 */	mr r3, r30
/* 8055D168  38 81 00 20 */	addi r4, r1, 0x20
/* 8055D16C  48 00 0B C9 */	bl setAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i
/* 8055D170  48 00 00 68 */	b lbl_8055D1D8
lbl_8055D174:
/* 8055D174  80 9F 07 84 */	lwz r4, 0x784(r31)
/* 8055D178  80 1F 07 88 */	lwz r0, 0x788(r31)
/* 8055D17C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8055D180  90 01 00 18 */	stw r0, 0x18(r1)
/* 8055D184  80 1F 07 8C */	lwz r0, 0x78c(r31)
/* 8055D188  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8055D18C  38 81 00 14 */	addi r4, r1, 0x14
/* 8055D190  48 00 0B 79 */	bl chkAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i
/* 8055D194  2C 03 00 00 */	cmpwi r3, 0
/* 8055D198  41 82 00 1C */	beq lbl_8055D1B4
/* 8055D19C  7F C3 F3 78 */	mr r3, r30
/* 8055D1A0  38 80 00 00 */	li r4, 0
/* 8055D1A4  39 9E 11 18 */	addi r12, r30, 0x1118
/* 8055D1A8  4B E0 4E DD */	bl __ptmf_scall
/* 8055D1AC  60 00 00 00 */	nop 
/* 8055D1B0  48 00 00 28 */	b lbl_8055D1D8
lbl_8055D1B4:
/* 8055D1B4  80 7F 07 90 */	lwz r3, 0x790(r31)
/* 8055D1B8  80 1F 07 94 */	lwz r0, 0x794(r31)
/* 8055D1BC  90 61 00 08 */	stw r3, 8(r1)
/* 8055D1C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8055D1C4  80 1F 07 98 */	lwz r0, 0x798(r31)
/* 8055D1C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8055D1CC  7F C3 F3 78 */	mr r3, r30
/* 8055D1D0  38 81 00 08 */	addi r4, r1, 8
/* 8055D1D4  48 00 0B 61 */	bl setAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i
lbl_8055D1D8:
/* 8055D1D8  38 60 00 01 */	li r3, 1
/* 8055D1DC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8055D1E0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8055D1E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8055D1E8  7C 08 03 A6 */	mtlr r0
/* 8055D1EC  38 21 00 40 */	addi r1, r1, 0x40
/* 8055D1F0  4E 80 00 20 */	blr 
