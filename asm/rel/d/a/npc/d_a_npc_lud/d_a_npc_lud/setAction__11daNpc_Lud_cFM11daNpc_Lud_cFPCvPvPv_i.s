lbl_80A6CE20:
/* 80A6CE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6CE24  7C 08 02 A6 */	mflr r0
/* 80A6CE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6CE2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6CE30  93 C1 00 08 */	stw r30, 8(r1)
/* 80A6CE34  7C 7E 1B 78 */	mr r30, r3
/* 80A6CE38  7C 9F 23 78 */	mr r31, r4
/* 80A6CE3C  38 00 00 03 */	li r0, 3
/* 80A6CE40  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80A6CE44  38 7E 0F B4 */	addi r3, r30, 0xfb4
/* 80A6CE48  4B 8F 51 D1 */	bl __ptmf_test
/* 80A6CE4C  2C 03 00 00 */	cmpwi r3, 0
/* 80A6CE50  41 82 00 18 */	beq lbl_80A6CE68
/* 80A6CE54  7F C3 F3 78 */	mr r3, r30
/* 80A6CE58  38 80 00 00 */	li r4, 0
/* 80A6CE5C  39 9E 0F B4 */	addi r12, r30, 0xfb4
/* 80A6CE60  4B 8F 52 25 */	bl __ptmf_scall
/* 80A6CE64  60 00 00 00 */	nop 
lbl_80A6CE68:
/* 80A6CE68  38 00 00 00 */	li r0, 0
/* 80A6CE6C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A6CE70  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A6CE74  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A6CE78  90 7E 0F B4 */	stw r3, 0xfb4(r30)
/* 80A6CE7C  90 1E 0F B8 */	stw r0, 0xfb8(r30)
/* 80A6CE80  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A6CE84  90 1E 0F BC */	stw r0, 0xfbc(r30)
/* 80A6CE88  38 7E 0F B4 */	addi r3, r30, 0xfb4
/* 80A6CE8C  4B 8F 51 8D */	bl __ptmf_test
/* 80A6CE90  2C 03 00 00 */	cmpwi r3, 0
/* 80A6CE94  41 82 00 18 */	beq lbl_80A6CEAC
/* 80A6CE98  7F C3 F3 78 */	mr r3, r30
/* 80A6CE9C  38 80 00 00 */	li r4, 0
/* 80A6CEA0  39 9E 0F B4 */	addi r12, r30, 0xfb4
/* 80A6CEA4  4B 8F 51 E1 */	bl __ptmf_scall
/* 80A6CEA8  60 00 00 00 */	nop 
lbl_80A6CEAC:
/* 80A6CEAC  38 60 00 01 */	li r3, 1
/* 80A6CEB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6CEB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A6CEB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6CEBC  7C 08 03 A6 */	mtlr r0
/* 80A6CEC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6CEC4  4E 80 00 20 */	blr 
