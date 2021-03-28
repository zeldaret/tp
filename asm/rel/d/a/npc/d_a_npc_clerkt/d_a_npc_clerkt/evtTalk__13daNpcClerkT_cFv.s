lbl_8099AD74:
/* 8099AD74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8099AD78  7C 08 02 A6 */	mflr r0
/* 8099AD7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8099AD80  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8099AD84  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8099AD88  7C 7E 1B 78 */	mr r30, r3
/* 8099AD8C  3C 80 80 9A */	lis r4, cNullVec__6Z2Calc@ha
/* 8099AD90  3B E4 D3 58 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 8099AD94  88 03 10 EA */	lbz r0, 0x10ea(r3)
/* 8099AD98  28 00 00 00 */	cmplwi r0, 0
/* 8099AD9C  41 82 00 B8 */	beq lbl_8099AE54
/* 8099ADA0  80 9F 00 E0 */	lwz r4, 0xe0(r31)
/* 8099ADA4  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 8099ADA8  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8099ADAC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8099ADB0  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 8099ADB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8099ADB8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8099ADBC  48 00 03 F5 */	bl chkAction__13daNpcClerkT_cFM13daNpcClerkT_cFPCvPvPv_i
/* 8099ADC0  2C 03 00 00 */	cmpwi r3, 0
/* 8099ADC4  41 82 00 1C */	beq lbl_8099ADE0
/* 8099ADC8  7F C3 F3 78 */	mr r3, r30
/* 8099ADCC  38 80 00 00 */	li r4, 0
/* 8099ADD0  39 9E 10 D4 */	addi r12, r30, 0x10d4
/* 8099ADD4  4B 9C 72 B0 */	b __ptmf_scall
/* 8099ADD8  60 00 00 00 */	nop 
/* 8099ADDC  48 00 01 20 */	b lbl_8099AEFC
lbl_8099ADE0:
/* 8099ADE0  38 00 00 00 */	li r0, 0
/* 8099ADE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8099ADE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8099ADEC  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 8099ADF0  28 03 00 01 */	cmplwi r3, 1
/* 8099ADF4  41 82 00 0C */	beq lbl_8099AE00
/* 8099ADF8  28 03 00 02 */	cmplwi r3, 2
/* 8099ADFC  40 82 00 08 */	bne lbl_8099AE04
lbl_8099AE00:
/* 8099AE00  38 00 00 01 */	li r0, 1
lbl_8099AE04:
/* 8099AE04  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8099AE08  41 82 00 1C */	beq lbl_8099AE24
/* 8099AE0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8099AE10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8099AE14  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8099AE18  4B 6A D9 D8 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 8099AE1C  2C 03 00 00 */	cmpwi r3, 0
/* 8099AE20  41 82 00 DC */	beq lbl_8099AEFC
lbl_8099AE24:
/* 8099AE24  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 8099AE28  4B 7F AE 74 */	b shop_cam_action_init__16ShopCam_action_cFv
/* 8099AE2C  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 8099AE30  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8099AE34  90 61 00 20 */	stw r3, 0x20(r1)
/* 8099AE38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099AE3C  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 8099AE40  90 01 00 28 */	stw r0, 0x28(r1)
/* 8099AE44  7F C3 F3 78 */	mr r3, r30
/* 8099AE48  38 81 00 20 */	addi r4, r1, 0x20
/* 8099AE4C  48 00 03 91 */	bl setAction__13daNpcClerkT_cFM13daNpcClerkT_cFPCvPvPv_i
/* 8099AE50  48 00 00 AC */	b lbl_8099AEFC
lbl_8099AE54:
/* 8099AE54  80 9F 00 F8 */	lwz r4, 0xf8(r31)
/* 8099AE58  80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 8099AE5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8099AE60  90 01 00 18 */	stw r0, 0x18(r1)
/* 8099AE64  80 1F 01 00 */	lwz r0, 0x100(r31)
/* 8099AE68  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8099AE6C  38 81 00 14 */	addi r4, r1, 0x14
/* 8099AE70  48 00 03 41 */	bl chkAction__13daNpcClerkT_cFM13daNpcClerkT_cFPCvPvPv_i
/* 8099AE74  2C 03 00 00 */	cmpwi r3, 0
/* 8099AE78  41 82 00 1C */	beq lbl_8099AE94
/* 8099AE7C  7F C3 F3 78 */	mr r3, r30
/* 8099AE80  38 80 00 00 */	li r4, 0
/* 8099AE84  39 9E 10 D4 */	addi r12, r30, 0x10d4
/* 8099AE88  4B 9C 71 FC */	b __ptmf_scall
/* 8099AE8C  60 00 00 00 */	nop 
/* 8099AE90  48 00 00 6C */	b lbl_8099AEFC
lbl_8099AE94:
/* 8099AE94  38 00 00 00 */	li r0, 0
/* 8099AE98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8099AE9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8099AEA0  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 8099AEA4  28 03 00 01 */	cmplwi r3, 1
/* 8099AEA8  41 82 00 0C */	beq lbl_8099AEB4
/* 8099AEAC  28 03 00 02 */	cmplwi r3, 2
/* 8099AEB0  40 82 00 08 */	bne lbl_8099AEB8
lbl_8099AEB4:
/* 8099AEB4  38 00 00 01 */	li r0, 1
lbl_8099AEB8:
/* 8099AEB8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8099AEBC  41 82 00 1C */	beq lbl_8099AED8
/* 8099AEC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8099AEC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8099AEC8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8099AECC  4B 6A D9 24 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 8099AED0  2C 03 00 00 */	cmpwi r3, 0
/* 8099AED4  41 82 00 28 */	beq lbl_8099AEFC
lbl_8099AED8:
/* 8099AED8  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 8099AEDC  80 1F 01 08 */	lwz r0, 0x108(r31)
/* 8099AEE0  90 61 00 08 */	stw r3, 8(r1)
/* 8099AEE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8099AEE8  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 8099AEEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8099AEF0  7F C3 F3 78 */	mr r3, r30
/* 8099AEF4  38 81 00 08 */	addi r4, r1, 8
/* 8099AEF8  48 00 02 E5 */	bl setAction__13daNpcClerkT_cFM13daNpcClerkT_cFPCvPvPv_i
lbl_8099AEFC:
/* 8099AEFC  38 60 00 01 */	li r3, 1
/* 8099AF00  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8099AF04  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8099AF08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8099AF0C  7C 08 03 A6 */	mtlr r0
/* 8099AF10  38 21 00 40 */	addi r1, r1, 0x40
/* 8099AF14  4E 80 00 20 */	blr 
