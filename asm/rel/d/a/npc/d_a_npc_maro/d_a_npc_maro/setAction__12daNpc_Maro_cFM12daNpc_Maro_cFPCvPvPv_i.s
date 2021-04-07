lbl_8055DD34:
/* 8055DD34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055DD38  7C 08 02 A6 */	mflr r0
/* 8055DD3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055DD40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055DD44  93 C1 00 08 */	stw r30, 8(r1)
/* 8055DD48  7C 7E 1B 78 */	mr r30, r3
/* 8055DD4C  7C 9F 23 78 */	mr r31, r4
/* 8055DD50  38 00 00 03 */	li r0, 3
/* 8055DD54  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 8055DD58  38 7E 11 18 */	addi r3, r30, 0x1118
/* 8055DD5C  4B E0 42 BD */	bl __ptmf_test
/* 8055DD60  2C 03 00 00 */	cmpwi r3, 0
/* 8055DD64  41 82 00 18 */	beq lbl_8055DD7C
/* 8055DD68  7F C3 F3 78 */	mr r3, r30
/* 8055DD6C  38 80 00 00 */	li r4, 0
/* 8055DD70  39 9E 11 18 */	addi r12, r30, 0x1118
/* 8055DD74  4B E0 43 11 */	bl __ptmf_scall
/* 8055DD78  60 00 00 00 */	nop 
lbl_8055DD7C:
/* 8055DD7C  38 00 00 00 */	li r0, 0
/* 8055DD80  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 8055DD84  80 7F 00 00 */	lwz r3, 0(r31)
/* 8055DD88  80 1F 00 04 */	lwz r0, 4(r31)
/* 8055DD8C  90 7E 11 18 */	stw r3, 0x1118(r30)
/* 8055DD90  90 1E 11 1C */	stw r0, 0x111c(r30)
/* 8055DD94  80 1F 00 08 */	lwz r0, 8(r31)
/* 8055DD98  90 1E 11 20 */	stw r0, 0x1120(r30)
/* 8055DD9C  38 7E 11 18 */	addi r3, r30, 0x1118
/* 8055DDA0  4B E0 42 79 */	bl __ptmf_test
/* 8055DDA4  2C 03 00 00 */	cmpwi r3, 0
/* 8055DDA8  41 82 00 18 */	beq lbl_8055DDC0
/* 8055DDAC  7F C3 F3 78 */	mr r3, r30
/* 8055DDB0  38 80 00 00 */	li r4, 0
/* 8055DDB4  39 9E 11 18 */	addi r12, r30, 0x1118
/* 8055DDB8  4B E0 42 CD */	bl __ptmf_scall
/* 8055DDBC  60 00 00 00 */	nop 
lbl_8055DDC0:
/* 8055DDC0  38 60 00 01 */	li r3, 1
/* 8055DDC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055DDC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055DDCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055DDD0  7C 08 03 A6 */	mtlr r0
/* 8055DDD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8055DDD8  4E 80 00 20 */	blr 
