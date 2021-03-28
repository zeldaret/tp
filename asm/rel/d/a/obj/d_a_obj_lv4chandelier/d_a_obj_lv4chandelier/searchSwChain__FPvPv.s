lbl_80C63F34:
/* 80C63F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C63F38  7C 08 02 A6 */	mflr r0
/* 80C63F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C63F40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C63F44  93 C1 00 08 */	stw r30, 8(r1)
/* 80C63F48  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C63F4C  7C 9F 23 78 */	mr r31, r4
/* 80C63F50  41 82 00 3C */	beq lbl_80C63F8C
/* 80C63F54  4B 3B 4D 8C */	b fopAc_IsActor__FPv
/* 80C63F58  2C 03 00 00 */	cmpwi r3, 0
/* 80C63F5C  41 82 00 30 */	beq lbl_80C63F8C
/* 80C63F60  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80C63F64  2C 00 01 6F */	cmpwi r0, 0x16f
/* 80C63F68  40 82 00 24 */	bne lbl_80C63F8C
/* 80C63F6C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C63F70  54 03 27 3E */	srwi r3, r0, 0x1c
/* 80C63F74  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C63F78  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C63F7C  7C 03 00 00 */	cmpw r3, r0
/* 80C63F80  40 82 00 0C */	bne lbl_80C63F8C
/* 80C63F84  7F C3 F3 78 */	mr r3, r30
/* 80C63F88  48 00 00 08 */	b lbl_80C63F90
lbl_80C63F8C:
/* 80C63F8C  38 60 00 00 */	li r3, 0
lbl_80C63F90:
/* 80C63F90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C63F94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C63F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C63F9C  7C 08 03 A6 */	mtlr r0
/* 80C63FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C63FA4  4E 80 00 20 */	blr 
