lbl_809D7F28:
/* 809D7F28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D7F2C  7C 08 02 A6 */	mflr r0
/* 809D7F30  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D7F34  39 61 00 20 */	addi r11, r1, 0x20
/* 809D7F38  4B 98 A2 A4 */	b _savegpr_29
/* 809D7F3C  7C 7D 1B 78 */	mr r29, r3
/* 809D7F40  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 809D7F44  2C 00 00 02 */	cmpwi r0, 2
/* 809D7F48  41 82 00 28 */	beq lbl_809D7F70
/* 809D7F4C  40 80 00 10 */	bge lbl_809D7F5C
/* 809D7F50  2C 00 00 01 */	cmpwi r0, 1
/* 809D7F54  40 80 00 14 */	bge lbl_809D7F68
/* 809D7F58  48 00 00 28 */	b lbl_809D7F80
lbl_809D7F5C:
/* 809D7F5C  2C 00 00 09 */	cmpwi r0, 9
/* 809D7F60  41 82 00 18 */	beq lbl_809D7F78
/* 809D7F64  48 00 00 1C */	b lbl_809D7F80
lbl_809D7F68:
/* 809D7F68  3B C0 00 0A */	li r30, 0xa
/* 809D7F6C  48 00 00 18 */	b lbl_809D7F84
lbl_809D7F70:
/* 809D7F70  3B C0 00 0B */	li r30, 0xb
/* 809D7F74  48 00 00 10 */	b lbl_809D7F84
lbl_809D7F78:
/* 809D7F78  3B C0 00 0C */	li r30, 0xc
/* 809D7F7C  48 00 00 08 */	b lbl_809D7F84
lbl_809D7F80:
/* 809D7F80  3B C0 00 0D */	li r30, 0xd
lbl_809D7F84:
/* 809D7F84  2C 1E 00 00 */	cmpwi r30, 0
/* 809D7F88  41 80 00 2C */	blt lbl_809D7FB4
/* 809D7F8C  7C 1E 00 00 */	cmpw r30, r0
/* 809D7F90  41 82 00 24 */	beq lbl_809D7FB4
/* 809D7F94  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 809D7F98  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 809D7F9C  4B 76 D8 FC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D7FA0  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 809D7FA4  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 809D7FA8  3C 60 80 9E */	lis r3, lit_4385@ha
/* 809D7FAC  C0 03 9E 30 */	lfs f0, lit_4385@l(r3)
/* 809D7FB0  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_809D7FB4:
/* 809D7FB4  39 61 00 20 */	addi r11, r1, 0x20
/* 809D7FB8  4B 98 A2 70 */	b _restgpr_29
/* 809D7FBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D7FC0  7C 08 03 A6 */	mtlr r0
/* 809D7FC4  38 21 00 20 */	addi r1, r1, 0x20
/* 809D7FC8  4E 80 00 20 */	blr 
