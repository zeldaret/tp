lbl_80ACCA48:
/* 80ACCA48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80ACCA4C  7C 08 02 A6 */	mflr r0
/* 80ACCA50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80ACCA54  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80ACCA58  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80ACCA5C  7C 7E 1B 78 */	mr r30, r3
/* 80ACCA60  3C 80 80 AD */	lis r4, cNullVec__6Z2Calc@ha
/* 80ACCA64  3B E4 FF 90 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80ACCA68  88 03 10 FD */	lbz r0, 0x10fd(r3)
/* 80ACCA6C  28 00 00 00 */	cmplwi r0, 0
/* 80ACCA70  41 82 00 B8 */	beq lbl_80ACCB28
/* 80ACCA74  80 9F 07 A0 */	lwz r4, 0x7a0(r31)
/* 80ACCA78  80 1F 07 A4 */	lwz r0, 0x7a4(r31)
/* 80ACCA7C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80ACCA80  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ACCA84  80 1F 07 A8 */	lwz r0, 0x7a8(r31)
/* 80ACCA88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ACCA8C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80ACCA90  48 00 0E 71 */	bl chkAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i
/* 80ACCA94  2C 03 00 00 */	cmpwi r3, 0
/* 80ACCA98  41 82 00 1C */	beq lbl_80ACCAB4
/* 80ACCA9C  7F C3 F3 78 */	mr r3, r30
/* 80ACCAA0  38 80 00 00 */	li r4, 0
/* 80ACCAA4  39 9E 10 E8 */	addi r12, r30, 0x10e8
/* 80ACCAA8  4B 89 55 DC */	b __ptmf_scall
/* 80ACCAAC  60 00 00 00 */	nop 
/* 80ACCAB0  48 00 01 20 */	b lbl_80ACCBD0
lbl_80ACCAB4:
/* 80ACCAB4  38 00 00 00 */	li r0, 0
/* 80ACCAB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ACCABC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ACCAC0  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80ACCAC4  28 03 00 01 */	cmplwi r3, 1
/* 80ACCAC8  41 82 00 0C */	beq lbl_80ACCAD4
/* 80ACCACC  28 03 00 02 */	cmplwi r3, 2
/* 80ACCAD0  40 82 00 08 */	bne lbl_80ACCAD8
lbl_80ACCAD4:
/* 80ACCAD4  38 00 00 01 */	li r0, 1
lbl_80ACCAD8:
/* 80ACCAD8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ACCADC  41 82 00 1C */	beq lbl_80ACCAF8
/* 80ACCAE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ACCAE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ACCAE8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80ACCAEC  4B 57 BD 04 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80ACCAF0  2C 03 00 00 */	cmpwi r3, 0
/* 80ACCAF4  41 82 00 DC */	beq lbl_80ACCBD0
lbl_80ACCAF8:
/* 80ACCAF8  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 80ACCAFC  4B 6C 91 A0 */	b shop_cam_action_init__16ShopCam_action_cFv
/* 80ACCB00  80 7F 07 AC */	lwz r3, 0x7ac(r31)
/* 80ACCB04  80 1F 07 B0 */	lwz r0, 0x7b0(r31)
/* 80ACCB08  90 61 00 20 */	stw r3, 0x20(r1)
/* 80ACCB0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACCB10  80 1F 07 B4 */	lwz r0, 0x7b4(r31)
/* 80ACCB14  90 01 00 28 */	stw r0, 0x28(r1)
/* 80ACCB18  7F C3 F3 78 */	mr r3, r30
/* 80ACCB1C  38 81 00 20 */	addi r4, r1, 0x20
/* 80ACCB20  48 00 0E 0D */	bl setAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i
/* 80ACCB24  48 00 00 AC */	b lbl_80ACCBD0
lbl_80ACCB28:
/* 80ACCB28  80 9F 07 B8 */	lwz r4, 0x7b8(r31)
/* 80ACCB2C  80 1F 07 BC */	lwz r0, 0x7bc(r31)
/* 80ACCB30  90 81 00 14 */	stw r4, 0x14(r1)
/* 80ACCB34  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ACCB38  80 1F 07 C0 */	lwz r0, 0x7c0(r31)
/* 80ACCB3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ACCB40  38 81 00 14 */	addi r4, r1, 0x14
/* 80ACCB44  48 00 0D BD */	bl chkAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i
/* 80ACCB48  2C 03 00 00 */	cmpwi r3, 0
/* 80ACCB4C  41 82 00 1C */	beq lbl_80ACCB68
/* 80ACCB50  7F C3 F3 78 */	mr r3, r30
/* 80ACCB54  38 80 00 00 */	li r4, 0
/* 80ACCB58  39 9E 10 E8 */	addi r12, r30, 0x10e8
/* 80ACCB5C  4B 89 55 28 */	b __ptmf_scall
/* 80ACCB60  60 00 00 00 */	nop 
/* 80ACCB64  48 00 00 6C */	b lbl_80ACCBD0
lbl_80ACCB68:
/* 80ACCB68  38 00 00 00 */	li r0, 0
/* 80ACCB6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ACCB70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ACCB74  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80ACCB78  28 03 00 01 */	cmplwi r3, 1
/* 80ACCB7C  41 82 00 0C */	beq lbl_80ACCB88
/* 80ACCB80  28 03 00 02 */	cmplwi r3, 2
/* 80ACCB84  40 82 00 08 */	bne lbl_80ACCB8C
lbl_80ACCB88:
/* 80ACCB88  38 00 00 01 */	li r0, 1
lbl_80ACCB8C:
/* 80ACCB8C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ACCB90  41 82 00 1C */	beq lbl_80ACCBAC
/* 80ACCB94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ACCB98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ACCB9C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80ACCBA0  4B 57 BC 50 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80ACCBA4  2C 03 00 00 */	cmpwi r3, 0
/* 80ACCBA8  41 82 00 28 */	beq lbl_80ACCBD0
lbl_80ACCBAC:
/* 80ACCBAC  80 7F 07 C4 */	lwz r3, 0x7c4(r31)
/* 80ACCBB0  80 1F 07 C8 */	lwz r0, 0x7c8(r31)
/* 80ACCBB4  90 61 00 08 */	stw r3, 8(r1)
/* 80ACCBB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ACCBBC  80 1F 07 CC */	lwz r0, 0x7cc(r31)
/* 80ACCBC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ACCBC4  7F C3 F3 78 */	mr r3, r30
/* 80ACCBC8  38 81 00 08 */	addi r4, r1, 8
/* 80ACCBCC  48 00 0D 61 */	bl setAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i
lbl_80ACCBD0:
/* 80ACCBD0  38 60 00 01 */	li r3, 1
/* 80ACCBD4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80ACCBD8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80ACCBDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ACCBE0  7C 08 03 A6 */	mtlr r0
/* 80ACCBE4  38 21 00 40 */	addi r1, r1, 0x40
/* 80ACCBE8  4E 80 00 20 */	blr 
