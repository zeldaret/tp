lbl_80A98A98:
/* 80A98A98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A98A9C  7C 08 02 A6 */	mflr r0
/* 80A98AA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A98AA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A98AA8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A98AAC  7C 7F 1B 78 */	mr r31, r3
/* 80A98AB0  3C 80 80 AA */	lis r4, lit_4688@ha /* 0x80A9BF8C@ha */
/* 80A98AB4  38 A4 BF 8C */	addi r5, r4, lit_4688@l /* 0x80A9BF8C@l */
/* 80A98AB8  80 85 00 00 */	lwz r4, 0(r5)
/* 80A98ABC  80 05 00 04 */	lwz r0, 4(r5)
/* 80A98AC0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A98AC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A98AC8  80 05 00 08 */	lwz r0, 8(r5)
/* 80A98ACC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A98AD0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A98AD4  48 00 0A 5D */	bl chkAction__18daNpc_Pachi_Maro_cFM18daNpc_Pachi_Maro_cFPCvPvPv_i
/* 80A98AD8  2C 03 00 00 */	cmpwi r3, 0
/* 80A98ADC  41 82 00 1C */	beq lbl_80A98AF8
/* 80A98AE0  7F E3 FB 78 */	mr r3, r31
/* 80A98AE4  38 80 00 00 */	li r4, 0
/* 80A98AE8  39 9F 0F BC */	addi r12, r31, 0xfbc
/* 80A98AEC  4B 8C 95 99 */	bl __ptmf_scall
/* 80A98AF0  60 00 00 00 */	nop 
/* 80A98AF4  48 00 00 8C */	b lbl_80A98B80
lbl_80A98AF8:
/* 80A98AF8  38 00 00 00 */	li r0, 0
/* 80A98AFC  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80A98B00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A98B04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A98B08  3B C3 4E C8 */	addi r30, r3, 0x4ec8
/* 80A98B0C  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A98B10  28 04 00 01 */	cmplwi r4, 1
/* 80A98B14  41 82 00 0C */	beq lbl_80A98B20
/* 80A98B18  28 04 00 02 */	cmplwi r4, 2
/* 80A98B1C  40 82 00 08 */	bne lbl_80A98B24
lbl_80A98B20:
/* 80A98B20  38 00 00 01 */	li r0, 1
lbl_80A98B24:
/* 80A98B24  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A98B28  41 82 00 2C */	beq lbl_80A98B54
/* 80A98B2C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A98B30  4B 5A FC C1 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80A98B34  2C 03 00 00 */	cmpwi r3, 0
/* 80A98B38  40 82 00 0C */	bne lbl_80A98B44
/* 80A98B3C  38 60 00 01 */	li r3, 1
/* 80A98B40  48 00 00 44 */	b lbl_80A98B84
lbl_80A98B44:
/* 80A98B44  7F C3 F3 78 */	mr r3, r30
/* 80A98B48  4B 5A 99 21 */	bl reset__14dEvt_control_cFv
/* 80A98B4C  38 60 00 01 */	li r3, 1
/* 80A98B50  48 00 00 34 */	b lbl_80A98B84
lbl_80A98B54:
/* 80A98B54  3C 60 80 AA */	lis r3, lit_4698@ha /* 0x80A9BF98@ha */
/* 80A98B58  38 83 BF 98 */	addi r4, r3, lit_4698@l /* 0x80A9BF98@l */
/* 80A98B5C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A98B60  80 04 00 04 */	lwz r0, 4(r4)
/* 80A98B64  90 61 00 08 */	stw r3, 8(r1)
/* 80A98B68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A98B6C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A98B70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A98B74  7F E3 FB 78 */	mr r3, r31
/* 80A98B78  38 81 00 08 */	addi r4, r1, 8
/* 80A98B7C  48 00 09 E1 */	bl setAction__18daNpc_Pachi_Maro_cFM18daNpc_Pachi_Maro_cFPCvPvPv_i
lbl_80A98B80:
/* 80A98B80  38 60 00 01 */	li r3, 1
lbl_80A98B84:
/* 80A98B84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A98B88  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A98B8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A98B90  7C 08 03 A6 */	mtlr r0
/* 80A98B94  38 21 00 30 */	addi r1, r1, 0x30
/* 80A98B98  4E 80 00 20 */	blr 
