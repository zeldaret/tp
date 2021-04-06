lbl_80B6042C:
/* 80B6042C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B60430  7C 08 02 A6 */	mflr r0
/* 80B60434  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B60438  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B6043C  7C 7F 1B 78 */	mr r31, r3
/* 80B60440  3C 80 80 B7 */	lis r4, lit_5056@ha /* 0x80B68954@ha */
/* 80B60444  38 A4 89 54 */	addi r5, r4, lit_5056@l /* 0x80B68954@l */
/* 80B60448  80 85 00 00 */	lwz r4, 0(r5)
/* 80B6044C  80 05 00 04 */	lwz r0, 4(r5)
/* 80B60450  90 81 00 08 */	stw r4, 8(r1)
/* 80B60454  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B60458  80 05 00 08 */	lwz r0, 8(r5)
/* 80B6045C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B60460  38 81 00 08 */	addi r4, r1, 8
/* 80B60464  48 00 13 C5 */	bl chkAction__11daNpc_ykW_cFM11daNpc_ykW_cFPCvPvPv_i
/* 80B60468  2C 03 00 00 */	cmpwi r3, 0
/* 80B6046C  40 82 00 9C */	bne lbl_80B60508
/* 80B60470  38 00 00 00 */	li r0, 0
/* 80B60474  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80B60478  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B6047C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B60480  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80B60484  28 04 00 01 */	cmplwi r4, 1
/* 80B60488  41 82 00 0C */	beq lbl_80B60494
/* 80B6048C  28 04 00 02 */	cmplwi r4, 2
/* 80B60490  40 82 00 08 */	bne lbl_80B60498
lbl_80B60494:
/* 80B60494  38 00 00 01 */	li r0, 1
lbl_80B60498:
/* 80B60498  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B6049C  41 82 00 2C */	beq lbl_80B604C8
/* 80B604A0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80B604A4  4B 4E 83 4D */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80B604A8  2C 03 00 00 */	cmpwi r3, 0
/* 80B604AC  41 82 00 14 */	beq lbl_80B604C0
/* 80B604B0  38 00 00 02 */	li r0, 2
/* 80B604B4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B604B8  7F E3 FB 78 */	mr r3, r31
/* 80B604BC  4B 5E 9D 69 */	bl evtChange__8daNpcT_cFv
lbl_80B604C0:
/* 80B604C0  38 60 00 01 */	li r3, 1
/* 80B604C4  48 00 00 48 */	b lbl_80B6050C
lbl_80B604C8:
/* 80B604C8  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B604CC  2C 00 00 03 */	cmpwi r0, 3
/* 80B604D0  41 82 00 08 */	beq lbl_80B604D8
/* 80B604D4  48 00 00 34 */	b lbl_80B60508
lbl_80B604D8:
/* 80B604D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B604DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B604E0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B604E4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B604E8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B604EC  41 82 00 1C */	beq lbl_80B60508
/* 80B604F0  38 00 00 07 */	li r0, 7
/* 80B604F4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B604F8  7F E3 FB 78 */	mr r3, r31
/* 80B604FC  4B 5E 9D 29 */	bl evtChange__8daNpcT_cFv
/* 80B60500  38 60 00 01 */	li r3, 1
/* 80B60504  48 00 00 08 */	b lbl_80B6050C
lbl_80B60508:
/* 80B60508  38 60 00 00 */	li r3, 0
lbl_80B6050C:
/* 80B6050C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B60510  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B60514  7C 08 03 A6 */	mtlr r0
/* 80B60518  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6051C  4E 80 00 20 */	blr 
