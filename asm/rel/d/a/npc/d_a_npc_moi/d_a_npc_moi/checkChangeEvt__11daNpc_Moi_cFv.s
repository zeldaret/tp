lbl_80A75460:
/* 80A75460  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A75464  7C 08 02 A6 */	mflr r0
/* 80A75468  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7546C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A75470  7C 7F 1B 78 */	mr r31, r3
/* 80A75474  3C 80 80 A8 */	lis r4, lit_4818@ha
/* 80A75478  38 A4 BD 1C */	addi r5, r4, lit_4818@l
/* 80A7547C  80 85 00 00 */	lwz r4, 0(r5)
/* 80A75480  80 05 00 04 */	lwz r0, 4(r5)
/* 80A75484  90 81 00 08 */	stw r4, 8(r1)
/* 80A75488  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A7548C  80 05 00 08 */	lwz r0, 8(r5)
/* 80A75490  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A75494  38 81 00 08 */	addi r4, r1, 8
/* 80A75498  48 00 11 35 */	bl chkAction__11daNpc_Moi_cFM11daNpc_Moi_cFPCvPvPv_i
/* 80A7549C  2C 03 00 00 */	cmpwi r3, 0
/* 80A754A0  40 82 00 5C */	bne lbl_80A754FC
/* 80A754A4  38 00 00 00 */	li r0, 0
/* 80A754A8  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80A754AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A754B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A754B4  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A754B8  28 04 00 01 */	cmplwi r4, 1
/* 80A754BC  41 82 00 0C */	beq lbl_80A754C8
/* 80A754C0  28 04 00 02 */	cmplwi r4, 2
/* 80A754C4  40 82 00 08 */	bne lbl_80A754CC
lbl_80A754C8:
/* 80A754C8  38 00 00 01 */	li r0, 1
lbl_80A754CC:
/* 80A754CC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A754D0  41 82 00 2C */	beq lbl_80A754FC
/* 80A754D4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A754D8  4B 5D 33 18 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80A754DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A754E0  41 82 00 14 */	beq lbl_80A754F4
/* 80A754E4  38 00 00 02 */	li r0, 2
/* 80A754E8  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A754EC  7F E3 FB 78 */	mr r3, r31
/* 80A754F0  4B 6D 4D 34 */	b evtChange__8daNpcT_cFv
lbl_80A754F4:
/* 80A754F4  38 60 00 01 */	li r3, 1
/* 80A754F8  48 00 00 08 */	b lbl_80A75500
lbl_80A754FC:
/* 80A754FC  38 60 00 00 */	li r3, 0
lbl_80A75500:
/* 80A75500  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A75504  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A75508  7C 08 03 A6 */	mtlr r0
/* 80A7550C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A75510  4E 80 00 20 */	blr 
