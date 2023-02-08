lbl_8054CA48:
/* 8054CA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CA4C  7C 08 02 A6 */	mflr r0
/* 8054CA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CA54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054CA58  93 C1 00 08 */	stw r30, 8(r1)
/* 8054CA5C  7C 7E 1B 78 */	mr r30, r3
/* 8054CA60  7C 9F 23 78 */	mr r31, r4
/* 8054CA64  38 00 00 03 */	li r0, 3
/* 8054CA68  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 8054CA6C  38 7E 13 58 */	addi r3, r30, 0x1358
/* 8054CA70  4B E1 55 A9 */	bl __ptmf_test
/* 8054CA74  2C 03 00 00 */	cmpwi r3, 0
/* 8054CA78  41 82 00 18 */	beq lbl_8054CA90
/* 8054CA7C  7F C3 F3 78 */	mr r3, r30
/* 8054CA80  38 80 00 00 */	li r4, 0
/* 8054CA84  39 9E 13 58 */	addi r12, r30, 0x1358
/* 8054CA88  4B E1 55 FD */	bl __ptmf_scall
/* 8054CA8C  60 00 00 00 */	nop 
lbl_8054CA90:
/* 8054CA90  38 00 00 00 */	li r0, 0
/* 8054CA94  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 8054CA98  80 7F 00 00 */	lwz r3, 0(r31)
/* 8054CA9C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8054CAA0  90 7E 13 58 */	stw r3, 0x1358(r30)
/* 8054CAA4  90 1E 13 5C */	stw r0, 0x135c(r30)
/* 8054CAA8  80 1F 00 08 */	lwz r0, 8(r31)
/* 8054CAAC  90 1E 13 60 */	stw r0, 0x1360(r30)
/* 8054CAB0  38 7E 13 58 */	addi r3, r30, 0x1358
/* 8054CAB4  4B E1 55 65 */	bl __ptmf_test
/* 8054CAB8  2C 03 00 00 */	cmpwi r3, 0
/* 8054CABC  41 82 00 18 */	beq lbl_8054CAD4
/* 8054CAC0  7F C3 F3 78 */	mr r3, r30
/* 8054CAC4  38 80 00 00 */	li r4, 0
/* 8054CAC8  39 9E 13 58 */	addi r12, r30, 0x1358
/* 8054CACC  4B E1 55 B9 */	bl __ptmf_scall
/* 8054CAD0  60 00 00 00 */	nop 
lbl_8054CAD4:
/* 8054CAD4  38 60 00 01 */	li r3, 1
/* 8054CAD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054CADC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054CAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CAE4  7C 08 03 A6 */	mtlr r0
/* 8054CAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CAEC  4E 80 00 20 */	blr 
