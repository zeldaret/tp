lbl_80041F18:
/* 80041F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80041F1C  7C 08 02 A6 */	mflr r0
/* 80041F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80041F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80041F28  7C 7F 1B 78 */	mr r31, r3
/* 80041F2C  80 83 00 C4 */	lwz r4, 0xc4(r3)
/* 80041F30  48 00 13 BD */	bl convPId__14dEvt_control_cFUi
/* 80041F34  28 03 00 00 */	cmplwi r3, 0
/* 80041F38  41 82 00 0C */	beq lbl_80041F44
/* 80041F3C  38 00 00 00 */	li r0, 0
/* 80041F40  B0 03 00 F8 */	sth r0, 0xf8(r3)
lbl_80041F44:
/* 80041F44  7F E3 FB 78 */	mr r3, r31
/* 80041F48  80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 80041F4C  48 00 13 A1 */	bl convPId__14dEvt_control_cFUi
/* 80041F50  28 03 00 00 */	cmplwi r3, 0
/* 80041F54  41 82 00 0C */	beq lbl_80041F60
/* 80041F58  38 00 00 00 */	li r0, 0
/* 80041F5C  B0 03 00 F8 */	sth r0, 0xf8(r3)
lbl_80041F60:
/* 80041F60  A8 9F 00 DE */	lha r4, 0xde(r31)
/* 80041F64  2C 04 FF FF */	cmpwi r4, -1
/* 80041F68  41 82 00 20 */	beq lbl_80041F88
/* 80041F6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80041F70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80041F74  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80041F78  38 A0 00 01 */	li r5, 1
/* 80041F7C  48 00 4E 31 */	bl endProc__16dEvent_manager_cFsi
/* 80041F80  38 00 FF FF */	li r0, -1
/* 80041F84  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_80041F88:
/* 80041F88  38 60 00 01 */	li r3, 1
/* 80041F8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80041F90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80041F94  7C 08 03 A6 */	mtlr r0
/* 80041F98  38 21 00 10 */	addi r1, r1, 0x10
/* 80041F9C  4E 80 00 20 */	blr 
