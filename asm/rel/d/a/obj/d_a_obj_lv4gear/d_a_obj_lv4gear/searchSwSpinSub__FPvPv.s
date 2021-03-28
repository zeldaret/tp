lbl_80C67F38:
/* 80C67F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67F3C  7C 08 02 A6 */	mflr r0
/* 80C67F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C67F48  93 C1 00 08 */	stw r30, 8(r1)
/* 80C67F4C  7C 9E 23 78 */	mr r30, r4
/* 80C67F50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C67F54  41 82 00 44 */	beq lbl_80C67F98
/* 80C67F58  4B 3B 0D 88 */	b fopAc_IsActor__FPv
/* 80C67F5C  2C 03 00 00 */	cmpwi r3, 0
/* 80C67F60  41 82 00 38 */	beq lbl_80C67F98
/* 80C67F64  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 80C67F68  2C 00 00 B3 */	cmpwi r0, 0xb3
/* 80C67F6C  40 82 00 2C */	bne lbl_80C67F98
/* 80C67F70  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C67F74  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80C67F78  28 03 00 FF */	cmplwi r3, 0xff
/* 80C67F7C  41 82 00 1C */	beq lbl_80C67F98
/* 80C67F80  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C67F84  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80C67F88  7C 03 00 40 */	cmplw r3, r0
/* 80C67F8C  40 82 00 0C */	bne lbl_80C67F98
/* 80C67F90  7F E3 FB 78 */	mr r3, r31
/* 80C67F94  48 00 00 08 */	b lbl_80C67F9C
lbl_80C67F98:
/* 80C67F98  38 60 00 00 */	li r3, 0
lbl_80C67F9C:
/* 80C67F9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C67FA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C67FA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67FA8  7C 08 03 A6 */	mtlr r0
/* 80C67FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67FB0  4E 80 00 20 */	blr 
