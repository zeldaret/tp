lbl_809D7FD0:
/* 809D7FD0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809D7FD4  7C 08 02 A6 */	mflr r0
/* 809D7FD8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809D7FDC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 809D7FE0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 809D7FE4  7C 7E 1B 78 */	mr r30, r3
/* 809D7FE8  3C 80 80 9E */	lis r4, cNullVec__6Z2Calc@ha
/* 809D7FEC  3B E4 9E 8C */	addi r31, r4, cNullVec__6Z2Calc@l
/* 809D7FF0  88 03 10 DD */	lbz r0, 0x10dd(r3)
/* 809D7FF4  28 00 00 00 */	cmplwi r0, 0
/* 809D7FF8  41 82 00 B8 */	beq lbl_809D80B0
/* 809D7FFC  80 9F 03 C4 */	lwz r4, 0x3c4(r31)
/* 809D8000  80 1F 03 C8 */	lwz r0, 0x3c8(r31)
/* 809D8004  90 81 00 2C */	stw r4, 0x2c(r1)
/* 809D8008  90 01 00 30 */	stw r0, 0x30(r1)
/* 809D800C  80 1F 03 CC */	lwz r0, 0x3cc(r31)
/* 809D8010  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D8014  38 81 00 2C */	addi r4, r1, 0x2c
/* 809D8018  48 00 08 39 */	bl chkAction__12daNpc_grMC_cFM12daNpc_grMC_cFPCvPvPv_i
/* 809D801C  2C 03 00 00 */	cmpwi r3, 0
/* 809D8020  41 82 00 1C */	beq lbl_809D803C
/* 809D8024  7F C3 F3 78 */	mr r3, r30
/* 809D8028  38 80 00 00 */	li r4, 0
/* 809D802C  39 9E 10 CC */	addi r12, r30, 0x10cc
/* 809D8030  4B 98 A0 54 */	b __ptmf_scall
/* 809D8034  60 00 00 00 */	nop 
/* 809D8038  48 00 01 20 */	b lbl_809D8158
lbl_809D803C:
/* 809D803C  38 00 00 00 */	li r0, 0
/* 809D8040  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809D8044  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809D8048  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 809D804C  28 03 00 01 */	cmplwi r3, 1
/* 809D8050  41 82 00 0C */	beq lbl_809D805C
/* 809D8054  28 03 00 02 */	cmplwi r3, 2
/* 809D8058  40 82 00 08 */	bne lbl_809D8060
lbl_809D805C:
/* 809D805C  38 00 00 01 */	li r0, 1
lbl_809D8060:
/* 809D8060  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809D8064  41 82 00 1C */	beq lbl_809D8080
/* 809D8068  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809D806C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809D8070  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 809D8074  4B 67 07 7C */	b ChkPresentEnd__16dEvent_manager_cFv
/* 809D8078  2C 03 00 00 */	cmpwi r3, 0
/* 809D807C  41 82 00 DC */	beq lbl_809D8158
lbl_809D8080:
/* 809D8080  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 809D8084  4B 7B DC 18 */	b shop_cam_action_init__16ShopCam_action_cFv
/* 809D8088  80 7F 03 D0 */	lwz r3, 0x3d0(r31)
/* 809D808C  80 1F 03 D4 */	lwz r0, 0x3d4(r31)
/* 809D8090  90 61 00 20 */	stw r3, 0x20(r1)
/* 809D8094  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D8098  80 1F 03 D8 */	lwz r0, 0x3d8(r31)
/* 809D809C  90 01 00 28 */	stw r0, 0x28(r1)
/* 809D80A0  7F C3 F3 78 */	mr r3, r30
/* 809D80A4  38 81 00 20 */	addi r4, r1, 0x20
/* 809D80A8  48 00 07 D5 */	bl setAction__12daNpc_grMC_cFM12daNpc_grMC_cFPCvPvPv_i
/* 809D80AC  48 00 00 AC */	b lbl_809D8158
lbl_809D80B0:
/* 809D80B0  80 9F 03 DC */	lwz r4, 0x3dc(r31)
/* 809D80B4  80 1F 03 E0 */	lwz r0, 0x3e0(r31)
/* 809D80B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 809D80BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 809D80C0  80 1F 03 E4 */	lwz r0, 0x3e4(r31)
/* 809D80C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809D80C8  38 81 00 14 */	addi r4, r1, 0x14
/* 809D80CC  48 00 07 85 */	bl chkAction__12daNpc_grMC_cFM12daNpc_grMC_cFPCvPvPv_i
/* 809D80D0  2C 03 00 00 */	cmpwi r3, 0
/* 809D80D4  41 82 00 1C */	beq lbl_809D80F0
/* 809D80D8  7F C3 F3 78 */	mr r3, r30
/* 809D80DC  38 80 00 00 */	li r4, 0
/* 809D80E0  39 9E 10 CC */	addi r12, r30, 0x10cc
/* 809D80E4  4B 98 9F A0 */	b __ptmf_scall
/* 809D80E8  60 00 00 00 */	nop 
/* 809D80EC  48 00 00 6C */	b lbl_809D8158
lbl_809D80F0:
/* 809D80F0  38 00 00 00 */	li r0, 0
/* 809D80F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809D80F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809D80FC  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 809D8100  28 03 00 01 */	cmplwi r3, 1
/* 809D8104  41 82 00 0C */	beq lbl_809D8110
/* 809D8108  28 03 00 02 */	cmplwi r3, 2
/* 809D810C  40 82 00 08 */	bne lbl_809D8114
lbl_809D8110:
/* 809D8110  38 00 00 01 */	li r0, 1
lbl_809D8114:
/* 809D8114  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809D8118  41 82 00 1C */	beq lbl_809D8134
/* 809D811C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809D8120  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809D8124  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 809D8128  4B 67 06 C8 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 809D812C  2C 03 00 00 */	cmpwi r3, 0
/* 809D8130  41 82 00 28 */	beq lbl_809D8158
lbl_809D8134:
/* 809D8134  80 7F 03 E8 */	lwz r3, 0x3e8(r31)
/* 809D8138  80 1F 03 EC */	lwz r0, 0x3ec(r31)
/* 809D813C  90 61 00 08 */	stw r3, 8(r1)
/* 809D8140  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D8144  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 809D8148  90 01 00 10 */	stw r0, 0x10(r1)
/* 809D814C  7F C3 F3 78 */	mr r3, r30
/* 809D8150  38 81 00 08 */	addi r4, r1, 8
/* 809D8154  48 00 07 29 */	bl setAction__12daNpc_grMC_cFM12daNpc_grMC_cFPCvPvPv_i
lbl_809D8158:
/* 809D8158  38 60 00 01 */	li r3, 1
/* 809D815C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 809D8160  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 809D8164  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809D8168  7C 08 03 A6 */	mtlr r0
/* 809D816C  38 21 00 40 */	addi r1, r1, 0x40
/* 809D8170  4E 80 00 20 */	blr 
