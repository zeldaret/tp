lbl_80B46F54:
/* 80B46F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B46F58  7C 08 02 A6 */	mflr r0
/* 80B46F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B46F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B46F64  93 C1 00 08 */	stw r30, 8(r1)
/* 80B46F68  7C 7E 1B 78 */	mr r30, r3
/* 80B46F6C  3B E0 FF FF */	li r31, -1
/* 80B46F70  38 60 02 3A */	li r3, 0x23a
/* 80B46F74  4B 60 5B 39 */	bl daNpcT_chkEvtBit__FUl
/* 80B46F78  2C 03 00 00 */	cmpwi r3, 0
/* 80B46F7C  41 82 00 0C */	beq lbl_80B46F88
/* 80B46F80  3B E0 03 26 */	li r31, 0x326
/* 80B46F84  48 00 00 18 */	b lbl_80B46F9C
lbl_80B46F88:
/* 80B46F88  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 80B46F8C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80B46F90  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B46F94  41 82 00 08 */	beq lbl_80B46F9C
/* 80B46F98  7C 1F 03 78 */	mr r31, r0
lbl_80B46F9C:
/* 80B46F9C  7F E3 FB 78 */	mr r3, r31
/* 80B46FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B46FA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B46FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B46FAC  7C 08 03 A6 */	mtlr r0
/* 80B46FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B46FB4  4E 80 00 20 */	blr 
