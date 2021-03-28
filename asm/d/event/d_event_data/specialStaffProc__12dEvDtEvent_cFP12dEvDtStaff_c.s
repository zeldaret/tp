lbl_80043F70:
/* 80043F70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80043F74  7C 08 02 A6 */	mflr r0
/* 80043F78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80043F7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80043F80  48 31 E2 59 */	bl _savegpr_28
/* 80043F84  7C 7C 1B 78 */	mr r28, r3
/* 80043F88  7C 9D 23 78 */	mr r29, r4
/* 80043F8C  3B C0 00 00 */	li r30, 0
/* 80043F90  3B E0 00 00 */	li r31, 0
/* 80043F94  48 00 00 20 */	b lbl_80043FB4
lbl_80043F98:
/* 80043F98  38 1F 00 2C */	addi r0, r31, 0x2c
/* 80043F9C  7C 1C 00 2E */	lwzx r0, r28, r0
/* 80043FA0  1C 00 00 50 */	mulli r0, r0, 0x50
/* 80043FA4  7C 7D 02 14 */	add r3, r29, r0
/* 80043FA8  48 00 00 D9 */	bl specialProc__12dEvDtStaff_cFv
/* 80043FAC  3B DE 00 01 */	addi r30, r30, 1
/* 80043FB0  3B FF 00 04 */	addi r31, r31, 4
lbl_80043FB4:
/* 80043FB4  80 1C 00 7C */	lwz r0, 0x7c(r28)
/* 80043FB8  7C 1E 00 00 */	cmpw r30, r0
/* 80043FBC  41 80 FF DC */	blt lbl_80043F98
/* 80043FC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80043FC4  48 31 E2 61 */	bl _restgpr_28
/* 80043FC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80043FCC  7C 08 03 A6 */	mtlr r0
/* 80043FD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80043FD4  4E 80 00 20 */	blr 
