lbl_80A155E4:
/* 80A155E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A155E8  7C 08 02 A6 */	mflr r0
/* 80A155EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A155F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A155F4  7C 7F 1B 78 */	mr r31, r3
/* 80A155F8  3C 80 80 A2 */	lis r4, lit_4674@ha
/* 80A155FC  38 A4 AB 74 */	addi r5, r4, lit_4674@l
/* 80A15600  80 85 00 00 */	lwz r4, 0(r5)
/* 80A15604  80 05 00 04 */	lwz r0, 4(r5)
/* 80A15608  90 81 00 08 */	stw r4, 8(r1)
/* 80A1560C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A15610  80 05 00 08 */	lwz r0, 8(r5)
/* 80A15614  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A15618  38 81 00 08 */	addi r4, r1, 8
/* 80A1561C  48 00 0C 95 */	bl chkAction__13daNpc_Jagar_cFM13daNpc_Jagar_cFPCvPvPv_i
/* 80A15620  2C 03 00 00 */	cmpwi r3, 0
/* 80A15624  40 82 00 D8 */	bne lbl_80A156FC
/* 80A15628  38 00 00 00 */	li r0, 0
/* 80A1562C  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80A15630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A15634  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A15638  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A1563C  28 04 00 01 */	cmplwi r4, 1
/* 80A15640  41 82 00 0C */	beq lbl_80A1564C
/* 80A15644  28 04 00 02 */	cmplwi r4, 2
/* 80A15648  40 82 00 08 */	bne lbl_80A15650
lbl_80A1564C:
/* 80A1564C  38 00 00 01 */	li r0, 1
lbl_80A15650:
/* 80A15650  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A15654  41 82 00 2C */	beq lbl_80A15680
/* 80A15658  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A1565C  4B 63 31 94 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80A15660  2C 03 00 00 */	cmpwi r3, 0
/* 80A15664  41 82 00 14 */	beq lbl_80A15678
/* 80A15668  38 00 00 01 */	li r0, 1
/* 80A1566C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A15670  7F E3 FB 78 */	mr r3, r31
/* 80A15674  4B 73 4B B0 */	b evtChange__8daNpcT_cFv
lbl_80A15678:
/* 80A15678  38 60 00 01 */	li r3, 1
/* 80A1567C  48 00 00 84 */	b lbl_80A15700
lbl_80A15680:
/* 80A15680  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80A15684  2C 00 00 01 */	cmpwi r0, 1
/* 80A15688  41 82 00 50 */	beq lbl_80A156D8
/* 80A1568C  40 80 00 70 */	bge lbl_80A156FC
/* 80A15690  2C 00 00 00 */	cmpwi r0, 0
/* 80A15694  40 80 00 0C */	bge lbl_80A156A0
/* 80A15698  48 00 00 64 */	b lbl_80A156FC
/* 80A1569C  48 00 00 60 */	b lbl_80A156FC
lbl_80A156A0:
/* 80A156A0  38 60 00 1C */	li r3, 0x1c
/* 80A156A4  4B 73 74 08 */	b daNpcT_chkEvtBit__FUl
/* 80A156A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A156AC  41 82 00 50 */	beq lbl_80A156FC
/* 80A156B0  7F E3 FB 78 */	mr r3, r31
/* 80A156B4  48 00 22 D1 */	bl chkChuMotion__13daNpc_Jagar_cFv
/* 80A156B8  2C 03 00 00 */	cmpwi r3, 0
/* 80A156BC  41 82 00 40 */	beq lbl_80A156FC
/* 80A156C0  38 00 00 02 */	li r0, 2
/* 80A156C4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A156C8  7F E3 FB 78 */	mr r3, r31
/* 80A156CC  4B 73 4B 58 */	b evtChange__8daNpcT_cFv
/* 80A156D0  38 60 00 01 */	li r3, 1
/* 80A156D4  48 00 00 2C */	b lbl_80A15700
lbl_80A156D8:
/* 80A156D8  80 1F 0F EC */	lwz r0, 0xfec(r31)
/* 80A156DC  2C 00 00 04 */	cmpwi r0, 4
/* 80A156E0  40 80 00 1C */	bge lbl_80A156FC
/* 80A156E4  38 00 00 06 */	li r0, 6
/* 80A156E8  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A156EC  7F E3 FB 78 */	mr r3, r31
/* 80A156F0  4B 73 4B 34 */	b evtChange__8daNpcT_cFv
/* 80A156F4  38 60 00 01 */	li r3, 1
/* 80A156F8  48 00 00 08 */	b lbl_80A15700
lbl_80A156FC:
/* 80A156FC  38 60 00 00 */	li r3, 0
lbl_80A15700:
/* 80A15700  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A15704  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A15708  7C 08 03 A6 */	mtlr r0
/* 80A1570C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A15710  4E 80 00 20 */	blr 
