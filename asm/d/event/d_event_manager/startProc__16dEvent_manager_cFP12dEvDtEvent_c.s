lbl_80046CB8:
/* 80046CB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80046CBC  7C 08 02 A6 */	mflr r0
/* 80046CC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80046CC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80046CC8  48 31 B5 0D */	bl _savegpr_27
/* 80046CCC  7C 7D 1B 78 */	mr r29, r3
/* 80046CD0  7C 9E 23 78 */	mr r30, r4
/* 80046CD4  3B E0 00 00 */	li r31, 0
/* 80046CD8  3B 80 00 00 */	li r28, 0
/* 80046CDC  48 00 00 90 */	b lbl_80046D6C
lbl_80046CE0:
/* 80046CE0  38 1C 00 2C */	addi r0, r28, 0x2c
/* 80046CE4  7C 9E 00 2E */	lwzx r4, r30, r0
/* 80046CE8  80 1D 01 B4 */	lwz r0, 0x1b4(r29)
/* 80046CEC  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80046CF0  7C 7D 02 14 */	add r3, r29, r0
/* 80046CF4  80 63 00 08 */	lwz r3, 8(r3)
/* 80046CF8  1C 04 00 50 */	mulli r0, r4, 0x50
/* 80046CFC  7F 63 02 14 */	add r27, r3, r0
/* 80046D00  80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 80046D04  2C 00 00 00 */	cmpwi r0, 0
/* 80046D08  40 82 00 3C */	bne lbl_80046D44
/* 80046D0C  7F A3 EB 78 */	mr r3, r29
/* 80046D10  7F 64 DB 78 */	mr r4, r27
/* 80046D14  38 A0 00 01 */	li r5, 1
/* 80046D18  48 00 19 01 */	bl specialCast__16dEvent_manager_cFPCci
/* 80046D1C  28 03 00 00 */	cmplwi r3, 0
/* 80046D20  40 82 00 10 */	bne lbl_80046D30
/* 80046D24  7F 63 DB 78 */	mr r3, r27
/* 80046D28  38 80 FF FF */	li r4, -1
/* 80046D2C  4B FD 6A 75 */	bl fopAcM_searchFromName4Event__FPCcs
lbl_80046D30:
/* 80046D30  28 03 00 00 */	cmplwi r3, 0
/* 80046D34  41 82 00 10 */	beq lbl_80046D44
/* 80046D38  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80046D3C  60 00 80 00 */	ori r0, r0, 0x8000
/* 80046D40  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80046D44:
/* 80046D44  80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 80046D48  2C 00 00 01 */	cmpwi r0, 1
/* 80046D4C  40 82 00 10 */	bne lbl_80046D5C
/* 80046D50  7F A3 EB 78 */	mr r3, r29
/* 80046D54  7F 64 DB 78 */	mr r4, r27
/* 80046D58  48 00 15 75 */	bl issueStaff__16dEvent_manager_cFPCc
lbl_80046D5C:
/* 80046D5C  7F 63 DB 78 */	mr r3, r27
/* 80046D60  4B FF D3 D5 */	bl init__12dEvDtStaff_cFv
/* 80046D64  3B FF 00 01 */	addi r31, r31, 1
/* 80046D68  3B 9C 00 04 */	addi r28, r28, 4
lbl_80046D6C:
/* 80046D6C  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 80046D70  7C 1F 00 00 */	cmpw r31, r0
/* 80046D74  41 80 FF 6C */	blt lbl_80046CE0
/* 80046D78  38 00 00 01 */	li r0, 1
/* 80046D7C  90 1E 00 A4 */	stw r0, 0xa4(r30)
/* 80046D80  38 7D 01 BC */	addi r3, r29, 0x1bc
/* 80046D84  4B FF D0 D5 */	bl init__11dEvDtFlag_cFv
/* 80046D88  39 61 00 20 */	addi r11, r1, 0x20
/* 80046D8C  48 31 B4 95 */	bl _restgpr_27
/* 80046D90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80046D94  7C 08 03 A6 */	mtlr r0
/* 80046D98  38 21 00 20 */	addi r1, r1, 0x20
/* 80046D9C  4E 80 00 20 */	blr 
