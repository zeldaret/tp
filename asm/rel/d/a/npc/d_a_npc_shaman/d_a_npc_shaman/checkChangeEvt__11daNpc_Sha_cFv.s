lbl_80AE3A8C:
/* 80AE3A8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AE3A90  7C 08 02 A6 */	mflr r0
/* 80AE3A94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE3A98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AE3A9C  7C 7F 1B 78 */	mr r31, r3
/* 80AE3AA0  3C 80 80 AE */	lis r4, lit_4497@ha /* 0x80AE70CC@ha */
/* 80AE3AA4  38 A4 70 CC */	addi r5, r4, lit_4497@l /* 0x80AE70CC@l */
/* 80AE3AA8  80 85 00 00 */	lwz r4, 0(r5)
/* 80AE3AAC  80 05 00 04 */	lwz r0, 4(r5)
/* 80AE3AB0  90 81 00 08 */	stw r4, 8(r1)
/* 80AE3AB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE3AB8  80 05 00 08 */	lwz r0, 8(r5)
/* 80AE3ABC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE3AC0  38 81 00 08 */	addi r4, r1, 8
/* 80AE3AC4  48 00 0A 45 */	bl chkAction__11daNpc_Sha_cFM11daNpc_Sha_cFPCvPvPv_i
/* 80AE3AC8  2C 03 00 00 */	cmpwi r3, 0
/* 80AE3ACC  40 82 00 94 */	bne lbl_80AE3B60
/* 80AE3AD0  38 00 00 00 */	li r0, 0
/* 80AE3AD4  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80AE3AD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE3ADC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE3AE0  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AE3AE4  28 04 00 01 */	cmplwi r4, 1
/* 80AE3AE8  41 82 00 0C */	beq lbl_80AE3AF4
/* 80AE3AEC  28 04 00 02 */	cmplwi r4, 2
/* 80AE3AF0  40 82 00 08 */	bne lbl_80AE3AF8
lbl_80AE3AF4:
/* 80AE3AF4  38 00 00 01 */	li r0, 1
lbl_80AE3AF8:
/* 80AE3AF8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AE3AFC  41 82 00 2C */	beq lbl_80AE3B28
/* 80AE3B00  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AE3B04  4B 56 4C ED */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80AE3B08  2C 03 00 00 */	cmpwi r3, 0
/* 80AE3B0C  41 82 00 14 */	beq lbl_80AE3B20
/* 80AE3B10  38 00 00 01 */	li r0, 1
/* 80AE3B14  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AE3B18  7F E3 FB 78 */	mr r3, r31
/* 80AE3B1C  4B 66 67 09 */	bl evtChange__8daNpcT_cFv
lbl_80AE3B20:
/* 80AE3B20  38 60 00 01 */	li r3, 1
/* 80AE3B24  48 00 00 40 */	b lbl_80AE3B64
lbl_80AE3B28:
/* 80AE3B28  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80AE3B2C  2C 00 00 01 */	cmpwi r0, 1
/* 80AE3B30  41 82 00 0C */	beq lbl_80AE3B3C
/* 80AE3B34  40 80 00 2C */	bge lbl_80AE3B60
/* 80AE3B38  48 00 00 28 */	b lbl_80AE3B60
lbl_80AE3B3C:
/* 80AE3B3C  88 1F 0F A0 */	lbz r0, 0xfa0(r31)
/* 80AE3B40  28 00 00 00 */	cmplwi r0, 0
/* 80AE3B44  40 82 00 1C */	bne lbl_80AE3B60
/* 80AE3B48  38 00 00 02 */	li r0, 2
/* 80AE3B4C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AE3B50  7F E3 FB 78 */	mr r3, r31
/* 80AE3B54  4B 66 66 D1 */	bl evtChange__8daNpcT_cFv
/* 80AE3B58  38 60 00 01 */	li r3, 1
/* 80AE3B5C  48 00 00 08 */	b lbl_80AE3B64
lbl_80AE3B60:
/* 80AE3B60  38 60 00 00 */	li r3, 0
lbl_80AE3B64:
/* 80AE3B64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AE3B68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AE3B6C  7C 08 03 A6 */	mtlr r0
/* 80AE3B70  38 21 00 20 */	addi r1, r1, 0x20
/* 80AE3B74  4E 80 00 20 */	blr 
