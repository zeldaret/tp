lbl_80AC5E34:
/* 80AC5E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC5E38  7C 08 02 A6 */	mflr r0
/* 80AC5E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC5E40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC5E44  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC5E48  7C 7E 1B 78 */	mr r30, r3
/* 80AC5E4C  7C 9F 23 78 */	mr r31, r4
/* 80AC5E50  38 00 00 03 */	li r0, 3
/* 80AC5E54  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80AC5E58  38 7E 0E 54 */	addi r3, r30, 0xe54
/* 80AC5E5C  4B 89 C1 BC */	b __ptmf_test
/* 80AC5E60  2C 03 00 00 */	cmpwi r3, 0
/* 80AC5E64  41 82 00 18 */	beq lbl_80AC5E7C
/* 80AC5E68  7F C3 F3 78 */	mr r3, r30
/* 80AC5E6C  38 80 00 00 */	li r4, 0
/* 80AC5E70  39 9E 0E 54 */	addi r12, r30, 0xe54
/* 80AC5E74  4B 89 C2 10 */	b __ptmf_scall
/* 80AC5E78  60 00 00 00 */	nop 
lbl_80AC5E7C:
/* 80AC5E7C  38 00 00 00 */	li r0, 0
/* 80AC5E80  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80AC5E84  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AC5E88  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AC5E8C  90 7E 0E 54 */	stw r3, 0xe54(r30)
/* 80AC5E90  90 1E 0E 58 */	stw r0, 0xe58(r30)
/* 80AC5E94  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AC5E98  90 1E 0E 5C */	stw r0, 0xe5c(r30)
/* 80AC5E9C  38 7E 0E 54 */	addi r3, r30, 0xe54
/* 80AC5EA0  4B 89 C1 78 */	b __ptmf_test
/* 80AC5EA4  2C 03 00 00 */	cmpwi r3, 0
/* 80AC5EA8  41 82 00 18 */	beq lbl_80AC5EC0
/* 80AC5EAC  7F C3 F3 78 */	mr r3, r30
/* 80AC5EB0  38 80 00 00 */	li r4, 0
/* 80AC5EB4  39 9E 0E 54 */	addi r12, r30, 0xe54
/* 80AC5EB8  4B 89 C1 CC */	b __ptmf_scall
/* 80AC5EBC  60 00 00 00 */	nop 
lbl_80AC5EC0:
/* 80AC5EC0  38 60 00 01 */	li r3, 1
/* 80AC5EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC5EC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC5ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC5ED0  7C 08 03 A6 */	mtlr r0
/* 80AC5ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC5ED8  4E 80 00 20 */	blr 
