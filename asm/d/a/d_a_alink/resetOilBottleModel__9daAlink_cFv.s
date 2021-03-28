lbl_80110F88:
/* 80110F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80110F8C  7C 08 02 A6 */	mflr r0
/* 80110F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80110F94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80110F98  7C 7F 1B 78 */	mr r31, r3
/* 80110F9C  38 80 00 00 */	li r4, 0
/* 80110FA0  38 A0 00 01 */	li r5, 1
/* 80110FA4  4B FB 03 39 */	bl deleteEquipItem__9daAlink_cFii
/* 80110FA8  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 80110FAC  2C 00 00 00 */	cmpwi r0, 0
/* 80110FB0  41 82 00 14 */	beq lbl_80110FC4
/* 80110FB4  7F E3 FB 78 */	mr r3, r31
/* 80110FB8  4B FF FE CD */	bl setKandelaarModel__9daAlink_cFv
/* 80110FBC  38 00 00 48 */	li r0, 0x48
/* 80110FC0  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
lbl_80110FC4:
/* 80110FC4  7F E3 FB 78 */	mr r3, r31
/* 80110FC8  4B FA E8 BD */	bl returnKeepItemData__9daAlink_cFv
/* 80110FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80110FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80110FD4  7C 08 03 A6 */	mtlr r0
/* 80110FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80110FDC  4E 80 00 20 */	blr 
