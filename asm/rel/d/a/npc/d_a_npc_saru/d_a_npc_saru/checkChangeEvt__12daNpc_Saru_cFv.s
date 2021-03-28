lbl_80AC0F28:
/* 80AC0F28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC0F2C  7C 08 02 A6 */	mflr r0
/* 80AC0F30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC0F34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC0F38  7C 7F 1B 78 */	mr r31, r3
/* 80AC0F3C  3C 80 80 AC */	lis r4, lit_4539@ha
/* 80AC0F40  38 A4 4D F4 */	addi r5, r4, lit_4539@l
/* 80AC0F44  80 85 00 00 */	lwz r4, 0(r5)
/* 80AC0F48  80 05 00 04 */	lwz r0, 4(r5)
/* 80AC0F4C  90 81 00 08 */	stw r4, 8(r1)
/* 80AC0F50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AC0F54  80 05 00 08 */	lwz r0, 8(r5)
/* 80AC0F58  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AC0F5C  38 81 00 08 */	addi r4, r1, 8
/* 80AC0F60  48 00 0C 19 */	bl chkAction__12daNpc_Saru_cFM12daNpc_Saru_cFPCvPvPv_i
/* 80AC0F64  2C 03 00 00 */	cmpwi r3, 0
/* 80AC0F68  40 82 00 5C */	bne lbl_80AC0FC4
/* 80AC0F6C  38 00 00 00 */	li r0, 0
/* 80AC0F70  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80AC0F74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AC0F78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AC0F7C  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AC0F80  28 04 00 01 */	cmplwi r4, 1
/* 80AC0F84  41 82 00 0C */	beq lbl_80AC0F90
/* 80AC0F88  28 04 00 02 */	cmplwi r4, 2
/* 80AC0F8C  40 82 00 08 */	bne lbl_80AC0F94
lbl_80AC0F90:
/* 80AC0F90  38 00 00 01 */	li r0, 1
lbl_80AC0F94:
/* 80AC0F94  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AC0F98  41 82 00 2C */	beq lbl_80AC0FC4
/* 80AC0F9C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AC0FA0  4B 58 78 50 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80AC0FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80AC0FA8  41 82 00 14 */	beq lbl_80AC0FBC
/* 80AC0FAC  38 00 00 01 */	li r0, 1
/* 80AC0FB0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AC0FB4  7F E3 FB 78 */	mr r3, r31
/* 80AC0FB8  4B 68 92 6C */	b evtChange__8daNpcT_cFv
lbl_80AC0FBC:
/* 80AC0FBC  38 60 00 01 */	li r3, 1
/* 80AC0FC0  48 00 00 08 */	b lbl_80AC0FC8
lbl_80AC0FC4:
/* 80AC0FC4  38 60 00 00 */	li r3, 0
lbl_80AC0FC8:
/* 80AC0FC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC0FCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC0FD0  7C 08 03 A6 */	mtlr r0
/* 80AC0FD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC0FD8  4E 80 00 20 */	blr 
