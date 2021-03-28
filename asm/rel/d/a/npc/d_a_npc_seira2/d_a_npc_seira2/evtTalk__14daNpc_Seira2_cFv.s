lbl_80AD1C60:
/* 80AD1C60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AD1C64  7C 08 02 A6 */	mflr r0
/* 80AD1C68  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AD1C6C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80AD1C70  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80AD1C74  7C 7E 1B 78 */	mr r30, r3
/* 80AD1C78  3C 80 80 AD */	lis r4, cNullVec__6Z2Calc@ha
/* 80AD1C7C  3B E4 4B 90 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80AD1C80  88 03 10 ED */	lbz r0, 0x10ed(r3)
/* 80AD1C84  28 00 00 00 */	cmplwi r0, 0
/* 80AD1C88  41 82 00 B8 */	beq lbl_80AD1D40
/* 80AD1C8C  80 9F 07 34 */	lwz r4, 0x734(r31)
/* 80AD1C90  80 1F 07 38 */	lwz r0, 0x738(r31)
/* 80AD1C94  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80AD1C98  90 01 00 30 */	stw r0, 0x30(r1)
/* 80AD1C9C  80 1F 07 3C */	lwz r0, 0x73c(r31)
/* 80AD1CA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD1CA4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80AD1CA8  48 00 0B C9 */	bl chkAction__14daNpc_Seira2_cFM14daNpc_Seira2_cFPCvPvPv_i
/* 80AD1CAC  2C 03 00 00 */	cmpwi r3, 0
/* 80AD1CB0  41 82 00 1C */	beq lbl_80AD1CCC
/* 80AD1CB4  7F C3 F3 78 */	mr r3, r30
/* 80AD1CB8  38 80 00 00 */	li r4, 0
/* 80AD1CBC  39 9E 10 D8 */	addi r12, r30, 0x10d8
/* 80AD1CC0  4B 89 03 C4 */	b __ptmf_scall
/* 80AD1CC4  60 00 00 00 */	nop 
/* 80AD1CC8  48 00 01 20 */	b lbl_80AD1DE8
lbl_80AD1CCC:
/* 80AD1CCC  38 00 00 00 */	li r0, 0
/* 80AD1CD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AD1CD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AD1CD8  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80AD1CDC  28 03 00 01 */	cmplwi r3, 1
/* 80AD1CE0  41 82 00 0C */	beq lbl_80AD1CEC
/* 80AD1CE4  28 03 00 02 */	cmplwi r3, 2
/* 80AD1CE8  40 82 00 08 */	bne lbl_80AD1CF0
lbl_80AD1CEC:
/* 80AD1CEC  38 00 00 01 */	li r0, 1
lbl_80AD1CF0:
/* 80AD1CF0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AD1CF4  41 82 00 1C */	beq lbl_80AD1D10
/* 80AD1CF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AD1CFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AD1D00  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AD1D04  4B 57 6A EC */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80AD1D08  2C 03 00 00 */	cmpwi r3, 0
/* 80AD1D0C  41 82 00 DC */	beq lbl_80AD1DE8
lbl_80AD1D10:
/* 80AD1D10  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 80AD1D14  4B 6C 3F 88 */	b shop_cam_action_init__16ShopCam_action_cFv
/* 80AD1D18  80 7F 07 40 */	lwz r3, 0x740(r31)
/* 80AD1D1C  80 1F 07 44 */	lwz r0, 0x744(r31)
/* 80AD1D20  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AD1D24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD1D28  80 1F 07 48 */	lwz r0, 0x748(r31)
/* 80AD1D2C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80AD1D30  7F C3 F3 78 */	mr r3, r30
/* 80AD1D34  38 81 00 20 */	addi r4, r1, 0x20
/* 80AD1D38  48 00 0B 65 */	bl setAction__14daNpc_Seira2_cFM14daNpc_Seira2_cFPCvPvPv_i
/* 80AD1D3C  48 00 00 AC */	b lbl_80AD1DE8
lbl_80AD1D40:
/* 80AD1D40  80 9F 07 4C */	lwz r4, 0x74c(r31)
/* 80AD1D44  80 1F 07 50 */	lwz r0, 0x750(r31)
/* 80AD1D48  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AD1D4C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AD1D50  80 1F 07 54 */	lwz r0, 0x754(r31)
/* 80AD1D54  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AD1D58  38 81 00 14 */	addi r4, r1, 0x14
/* 80AD1D5C  48 00 0B 15 */	bl chkAction__14daNpc_Seira2_cFM14daNpc_Seira2_cFPCvPvPv_i
/* 80AD1D60  2C 03 00 00 */	cmpwi r3, 0
/* 80AD1D64  41 82 00 1C */	beq lbl_80AD1D80
/* 80AD1D68  7F C3 F3 78 */	mr r3, r30
/* 80AD1D6C  38 80 00 00 */	li r4, 0
/* 80AD1D70  39 9E 10 D8 */	addi r12, r30, 0x10d8
/* 80AD1D74  4B 89 03 10 */	b __ptmf_scall
/* 80AD1D78  60 00 00 00 */	nop 
/* 80AD1D7C  48 00 00 6C */	b lbl_80AD1DE8
lbl_80AD1D80:
/* 80AD1D80  38 00 00 00 */	li r0, 0
/* 80AD1D84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AD1D88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AD1D8C  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80AD1D90  28 03 00 01 */	cmplwi r3, 1
/* 80AD1D94  41 82 00 0C */	beq lbl_80AD1DA0
/* 80AD1D98  28 03 00 02 */	cmplwi r3, 2
/* 80AD1D9C  40 82 00 08 */	bne lbl_80AD1DA4
lbl_80AD1DA0:
/* 80AD1DA0  38 00 00 01 */	li r0, 1
lbl_80AD1DA4:
/* 80AD1DA4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AD1DA8  41 82 00 1C */	beq lbl_80AD1DC4
/* 80AD1DAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AD1DB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AD1DB4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AD1DB8  4B 57 6A 38 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80AD1DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80AD1DC0  41 82 00 28 */	beq lbl_80AD1DE8
lbl_80AD1DC4:
/* 80AD1DC4  80 7F 07 58 */	lwz r3, 0x758(r31)
/* 80AD1DC8  80 1F 07 5C */	lwz r0, 0x75c(r31)
/* 80AD1DCC  90 61 00 08 */	stw r3, 8(r1)
/* 80AD1DD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AD1DD4  80 1F 07 60 */	lwz r0, 0x760(r31)
/* 80AD1DD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD1DDC  7F C3 F3 78 */	mr r3, r30
/* 80AD1DE0  38 81 00 08 */	addi r4, r1, 8
/* 80AD1DE4  48 00 0A B9 */	bl setAction__14daNpc_Seira2_cFM14daNpc_Seira2_cFPCvPvPv_i
lbl_80AD1DE8:
/* 80AD1DE8  38 60 00 01 */	li r3, 1
/* 80AD1DEC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80AD1DF0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80AD1DF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AD1DF8  7C 08 03 A6 */	mtlr r0
/* 80AD1DFC  38 21 00 40 */	addi r1, r1, 0x40
/* 80AD1E00  4E 80 00 20 */	blr 
