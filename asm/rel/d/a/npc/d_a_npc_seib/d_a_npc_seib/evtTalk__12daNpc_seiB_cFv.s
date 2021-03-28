lbl_80AC58F4:
/* 80AC58F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AC58F8  7C 08 02 A6 */	mflr r0
/* 80AC58FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AC5900  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AC5904  7C 7F 1B 78 */	mr r31, r3
/* 80AC5908  3C 80 80 AC */	lis r4, lit_4342@ha
/* 80AC590C  38 A4 72 38 */	addi r5, r4, lit_4342@l
/* 80AC5910  80 85 00 00 */	lwz r4, 0(r5)
/* 80AC5914  80 05 00 04 */	lwz r0, 4(r5)
/* 80AC5918  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AC591C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AC5920  80 05 00 08 */	lwz r0, 8(r5)
/* 80AC5924  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AC5928  38 81 00 14 */	addi r4, r1, 0x14
/* 80AC592C  48 00 04 DD */	bl chkAction__12daNpc_seiB_cFM12daNpc_seiB_cFPCvPvPv_i
/* 80AC5930  2C 03 00 00 */	cmpwi r3, 0
/* 80AC5934  41 82 00 1C */	beq lbl_80AC5950
/* 80AC5938  7F E3 FB 78 */	mr r3, r31
/* 80AC593C  38 80 00 00 */	li r4, 0
/* 80AC5940  39 9F 0E 54 */	addi r12, r31, 0xe54
/* 80AC5944  4B 89 C7 40 */	b __ptmf_scall
/* 80AC5948  60 00 00 00 */	nop 
/* 80AC594C  48 00 00 90 */	b lbl_80AC59DC
lbl_80AC5950:
/* 80AC5950  38 00 00 00 */	li r0, 0
/* 80AC5954  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80AC5958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AC595C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AC5960  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AC5964  28 04 00 01 */	cmplwi r4, 1
/* 80AC5968  41 82 00 0C */	beq lbl_80AC5974
/* 80AC596C  28 04 00 02 */	cmplwi r4, 2
/* 80AC5970  40 82 00 08 */	bne lbl_80AC5978
lbl_80AC5974:
/* 80AC5974  38 00 00 01 */	li r0, 1
lbl_80AC5978:
/* 80AC5978  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AC597C  41 82 00 34 */	beq lbl_80AC59B0
/* 80AC5980  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AC5984  4B 58 2E 6C */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80AC5988  2C 03 00 00 */	cmpwi r3, 0
/* 80AC598C  40 82 00 0C */	bne lbl_80AC5998
/* 80AC5990  38 60 00 01 */	li r3, 1
/* 80AC5994  48 00 00 4C */	b lbl_80AC59E0
lbl_80AC5998:
/* 80AC5998  38 00 00 02 */	li r0, 2
/* 80AC599C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AC59A0  7F E3 FB 78 */	mr r3, r31
/* 80AC59A4  4B 68 48 80 */	b evtChange__8daNpcT_cFv
/* 80AC59A8  38 60 00 01 */	li r3, 1
/* 80AC59AC  48 00 00 34 */	b lbl_80AC59E0
lbl_80AC59B0:
/* 80AC59B0  3C 60 80 AC */	lis r3, lit_4352@ha
/* 80AC59B4  38 83 72 44 */	addi r4, r3, lit_4352@l
/* 80AC59B8  80 64 00 00 */	lwz r3, 0(r4)
/* 80AC59BC  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC59C0  90 61 00 08 */	stw r3, 8(r1)
/* 80AC59C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AC59C8  80 04 00 08 */	lwz r0, 8(r4)
/* 80AC59CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AC59D0  7F E3 FB 78 */	mr r3, r31
/* 80AC59D4  38 81 00 08 */	addi r4, r1, 8
/* 80AC59D8  48 00 04 5D */	bl setAction__12daNpc_seiB_cFM12daNpc_seiB_cFPCvPvPv_i
lbl_80AC59DC:
/* 80AC59DC  38 60 00 01 */	li r3, 1
lbl_80AC59E0:
/* 80AC59E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AC59E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AC59E8  7C 08 03 A6 */	mtlr r0
/* 80AC59EC  38 21 00 30 */	addi r1, r1, 0x30
/* 80AC59F0  4E 80 00 20 */	blr 
