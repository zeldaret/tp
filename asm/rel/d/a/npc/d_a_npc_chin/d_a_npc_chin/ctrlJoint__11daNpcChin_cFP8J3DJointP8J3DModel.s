lbl_8098CDE8:
/* 8098CDE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8098CDEC  7C 08 02 A6 */	mflr r0
/* 8098CDF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8098CDF4  39 61 00 30 */	addi r11, r1, 0x30
/* 8098CDF8  4B 9D 53 E0 */	b _savegpr_28
/* 8098CDFC  7C 7D 1B 78 */	mr r29, r3
/* 8098CE00  7C BE 2B 78 */	mr r30, r5
/* 8098CE04  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 8098CE08  7C BF 2B 78 */	mr r31, r5
/* 8098CE0C  3C 60 80 99 */	lis r3, lit_4473@ha
/* 8098CE10  38 83 19 98 */	addi r4, r3, lit_4473@l
/* 8098CE14  80 64 00 00 */	lwz r3, 0(r4)
/* 8098CE18  80 04 00 04 */	lwz r0, 4(r4)
/* 8098CE1C  90 61 00 08 */	stw r3, 8(r1)
/* 8098CE20  90 01 00 0C */	stw r0, 0xc(r1)
/* 8098CE24  80 04 00 08 */	lwz r0, 8(r4)
/* 8098CE28  90 01 00 10 */	stw r0, 0x10(r1)
/* 8098CE2C  2C 05 00 00 */	cmpwi r5, 0
/* 8098CE30  40 82 00 B0 */	bne lbl_8098CEE0
/* 8098CE34  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8098CE38  80 63 00 04 */	lwz r3, 4(r3)
/* 8098CE3C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8098CE40  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8098CE44  38 63 00 30 */	addi r3, r3, 0x30
/* 8098CE48  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8098CE4C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8098CE50  4B 9B 96 60 */	b PSMTXCopy
/* 8098CE54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8098CE58  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 8098CE5C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8098CE60  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 8098CE64  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8098CE68  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 8098CE6C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8098CE70  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 8098CE74  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8098CE78  80 63 00 04 */	lwz r3, 4(r3)
/* 8098CE7C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8098CE80  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8098CE84  38 63 00 90 */	addi r3, r3, 0x90
/* 8098CE88  7F 84 E3 78 */	mr r4, r28
/* 8098CE8C  4B 9B 96 24 */	b PSMTXCopy
/* 8098CE90  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8098CE94  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 8098CE98  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8098CE9C  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 8098CEA0  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8098CEA4  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 8098CEA8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8098CEAC  80 63 00 04 */	lwz r3, 4(r3)
/* 8098CEB0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8098CEB4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8098CEB8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8098CEBC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8098CEC0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8098CEC4  4B 9B 95 EC */	b PSMTXCopy
/* 8098CEC8  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8098CECC  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 8098CED0  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8098CED4  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 8098CED8  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8098CEDC  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_8098CEE0:
/* 8098CEE0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8098CEE4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8098CEE8  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 8098CEEC  7C 60 E2 14 */	add r3, r0, r28
/* 8098CEF0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8098CEF4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8098CEF8  4B 9B 95 B8 */	b PSMTXCopy
/* 8098CEFC  2C 1F 00 02 */	cmpwi r31, 2
/* 8098CF00  41 82 00 38 */	beq lbl_8098CF38
/* 8098CF04  40 80 00 10 */	bge lbl_8098CF14
/* 8098CF08  2C 1F 00 01 */	cmpwi r31, 1
/* 8098CF0C  40 80 00 10 */	bge lbl_8098CF1C
/* 8098CF10  48 00 00 28 */	b lbl_8098CF38
lbl_8098CF14:
/* 8098CF14  2C 1F 00 05 */	cmpwi r31, 5
/* 8098CF18  40 80 00 20 */	bge lbl_8098CF38
lbl_8098CF1C:
/* 8098CF1C  7F A3 EB 78 */	mr r3, r29
/* 8098CF20  7F E4 FB 78 */	mr r4, r31
/* 8098CF24  38 A1 00 08 */	addi r5, r1, 8
/* 8098CF28  3C C0 80 99 */	lis r6, m__17daNpcChin_Param_c@ha
/* 8098CF2C  38 C6 19 0C */	addi r6, r6, m__17daNpcChin_Param_c@l
/* 8098CF30  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 8098CF34  4B 7C 64 48 */	b setLookatMtx__8daNpcF_cFiPif
lbl_8098CF38:
/* 8098CF38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8098CF3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8098CF40  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8098CF44  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8098CF48  7C 80 E2 14 */	add r4, r0, r28
/* 8098CF4C  4B 9B 95 64 */	b PSMTXCopy
/* 8098CF50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8098CF54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8098CF58  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8098CF5C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8098CF60  4B 9B 95 50 */	b PSMTXCopy
/* 8098CF64  2C 1F 00 04 */	cmpwi r31, 4
/* 8098CF68  41 82 00 0C */	beq lbl_8098CF74
/* 8098CF6C  2C 1F 00 08 */	cmpwi r31, 8
/* 8098CF70  40 82 00 2C */	bne lbl_8098CF9C
lbl_8098CF74:
/* 8098CF74  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 8098CF78  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8098CF7C  41 82 00 20 */	beq lbl_8098CF9C
/* 8098CF80  83 9D 05 80 */	lwz r28, 0x580(r29)
/* 8098CF84  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8098CF88  80 83 00 08 */	lwz r4, 8(r3)
/* 8098CF8C  38 7D 05 6C */	addi r3, r29, 0x56c
/* 8098CF90  4B 68 0A 00 */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 8098CF94  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8098CF98  93 83 00 08 */	stw r28, 8(r3)
lbl_8098CF9C:
/* 8098CF9C  38 60 00 01 */	li r3, 1
/* 8098CFA0  39 61 00 30 */	addi r11, r1, 0x30
/* 8098CFA4  4B 9D 52 80 */	b _restgpr_28
/* 8098CFA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8098CFAC  7C 08 03 A6 */	mtlr r0
/* 8098CFB0  38 21 00 30 */	addi r1, r1, 0x30
/* 8098CFB4  4E 80 00 20 */	blr 
