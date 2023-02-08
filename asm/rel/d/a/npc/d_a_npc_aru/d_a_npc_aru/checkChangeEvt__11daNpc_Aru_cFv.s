lbl_80952CE8:
/* 80952CE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80952CEC  7C 08 02 A6 */	mflr r0
/* 80952CF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80952CF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80952CF8  7C 7F 1B 78 */	mr r31, r3
/* 80952CFC  3C 80 80 95 */	lis r4, lit_4761@ha /* 0x80957EBC@ha */
/* 80952D00  38 A4 7E BC */	addi r5, r4, lit_4761@l /* 0x80957EBC@l */
/* 80952D04  80 85 00 00 */	lwz r4, 0(r5)
/* 80952D08  80 05 00 04 */	lwz r0, 4(r5)
/* 80952D0C  90 81 00 08 */	stw r4, 8(r1)
/* 80952D10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80952D14  80 05 00 08 */	lwz r0, 8(r5)
/* 80952D18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80952D1C  38 81 00 08 */	addi r4, r1, 8
/* 80952D20  48 00 0D 99 */	bl chkAction__11daNpc_Aru_cFM11daNpc_Aru_cFPCvPvPv_i
/* 80952D24  2C 03 00 00 */	cmpwi r3, 0
/* 80952D28  40 82 00 5C */	bne lbl_80952D84
/* 80952D2C  38 00 00 00 */	li r0, 0
/* 80952D30  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80952D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80952D38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80952D3C  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80952D40  28 04 00 01 */	cmplwi r4, 1
/* 80952D44  41 82 00 0C */	beq lbl_80952D50
/* 80952D48  28 04 00 02 */	cmplwi r4, 2
/* 80952D4C  40 82 00 08 */	bne lbl_80952D54
lbl_80952D50:
/* 80952D50  38 00 00 01 */	li r0, 1
lbl_80952D54:
/* 80952D54  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80952D58  41 82 00 2C */	beq lbl_80952D84
/* 80952D5C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80952D60  4B 6F 5A 91 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80952D64  2C 03 00 00 */	cmpwi r3, 0
/* 80952D68  41 82 00 14 */	beq lbl_80952D7C
/* 80952D6C  38 00 00 02 */	li r0, 2
/* 80952D70  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80952D74  7F E3 FB 78 */	mr r3, r31
/* 80952D78  4B 7F 74 AD */	bl evtChange__8daNpcT_cFv
lbl_80952D7C:
/* 80952D7C  38 60 00 01 */	li r3, 1
/* 80952D80  48 00 00 08 */	b lbl_80952D88
lbl_80952D84:
/* 80952D84  38 60 00 00 */	li r3, 0
lbl_80952D88:
/* 80952D88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80952D8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80952D90  7C 08 03 A6 */	mtlr r0
/* 80952D94  38 21 00 20 */	addi r1, r1, 0x20
/* 80952D98  4E 80 00 20 */	blr 
