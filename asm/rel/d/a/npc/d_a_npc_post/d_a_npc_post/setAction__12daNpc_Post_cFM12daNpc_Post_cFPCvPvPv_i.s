lbl_80AAAA10:
/* 80AAAA10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAAA14  7C 08 02 A6 */	mflr r0
/* 80AAAA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAAA1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAAA20  93 C1 00 08 */	stw r30, 8(r1)
/* 80AAAA24  7C 7E 1B 78 */	mr r30, r3
/* 80AAAA28  7C 9F 23 78 */	mr r31, r4
/* 80AAAA2C  38 00 00 03 */	li r0, 3
/* 80AAAA30  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80AAAA34  38 7E 0F E4 */	addi r3, r30, 0xfe4
/* 80AAAA38  4B 8B 75 E1 */	bl __ptmf_test
/* 80AAAA3C  2C 03 00 00 */	cmpwi r3, 0
/* 80AAAA40  41 82 00 18 */	beq lbl_80AAAA58
/* 80AAAA44  7F C3 F3 78 */	mr r3, r30
/* 80AAAA48  38 80 00 00 */	li r4, 0
/* 80AAAA4C  39 9E 0F E4 */	addi r12, r30, 0xfe4
/* 80AAAA50  4B 8B 76 35 */	bl __ptmf_scall
/* 80AAAA54  60 00 00 00 */	nop 
lbl_80AAAA58:
/* 80AAAA58  38 00 00 00 */	li r0, 0
/* 80AAAA5C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80AAAA60  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AAAA64  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AAAA68  90 7E 0F E4 */	stw r3, 0xfe4(r30)
/* 80AAAA6C  90 1E 0F E8 */	stw r0, 0xfe8(r30)
/* 80AAAA70  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AAAA74  90 1E 0F EC */	stw r0, 0xfec(r30)
/* 80AAAA78  38 7E 0F E4 */	addi r3, r30, 0xfe4
/* 80AAAA7C  4B 8B 75 9D */	bl __ptmf_test
/* 80AAAA80  2C 03 00 00 */	cmpwi r3, 0
/* 80AAAA84  41 82 00 18 */	beq lbl_80AAAA9C
/* 80AAAA88  7F C3 F3 78 */	mr r3, r30
/* 80AAAA8C  38 80 00 00 */	li r4, 0
/* 80AAAA90  39 9E 0F E4 */	addi r12, r30, 0xfe4
/* 80AAAA94  4B 8B 75 F1 */	bl __ptmf_scall
/* 80AAAA98  60 00 00 00 */	nop 
lbl_80AAAA9C:
/* 80AAAA9C  38 60 00 01 */	li r3, 1
/* 80AAAAA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAAAA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AAAAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAAAAC  7C 08 03 A6 */	mtlr r0
/* 80AAAAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAAAB4  4E 80 00 20 */	blr 
