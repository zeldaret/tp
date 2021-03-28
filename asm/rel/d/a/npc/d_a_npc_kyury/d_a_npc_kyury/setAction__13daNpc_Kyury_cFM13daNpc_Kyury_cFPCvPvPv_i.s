lbl_80A61A2C:
/* 80A61A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A61A30  7C 08 02 A6 */	mflr r0
/* 80A61A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A61A38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A61A3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A61A40  7C 7E 1B 78 */	mr r30, r3
/* 80A61A44  7C 9F 23 78 */	mr r31, r4
/* 80A61A48  38 00 00 03 */	li r0, 3
/* 80A61A4C  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80A61A50  38 7E 0F C8 */	addi r3, r30, 0xfc8
/* 80A61A54  4B 90 05 C4 */	b __ptmf_test
/* 80A61A58  2C 03 00 00 */	cmpwi r3, 0
/* 80A61A5C  41 82 00 18 */	beq lbl_80A61A74
/* 80A61A60  7F C3 F3 78 */	mr r3, r30
/* 80A61A64  38 80 00 00 */	li r4, 0
/* 80A61A68  39 9E 0F C8 */	addi r12, r30, 0xfc8
/* 80A61A6C  4B 90 06 18 */	b __ptmf_scall
/* 80A61A70  60 00 00 00 */	nop 
lbl_80A61A74:
/* 80A61A74  38 00 00 00 */	li r0, 0
/* 80A61A78  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A61A7C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A61A80  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A61A84  90 7E 0F C8 */	stw r3, 0xfc8(r30)
/* 80A61A88  90 1E 0F CC */	stw r0, 0xfcc(r30)
/* 80A61A8C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A61A90  90 1E 0F D0 */	stw r0, 0xfd0(r30)
/* 80A61A94  38 7E 0F C8 */	addi r3, r30, 0xfc8
/* 80A61A98  4B 90 05 80 */	b __ptmf_test
/* 80A61A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80A61AA0  41 82 00 18 */	beq lbl_80A61AB8
/* 80A61AA4  7F C3 F3 78 */	mr r3, r30
/* 80A61AA8  38 80 00 00 */	li r4, 0
/* 80A61AAC  39 9E 0F C8 */	addi r12, r30, 0xfc8
/* 80A61AB0  4B 90 05 D4 */	b __ptmf_scall
/* 80A61AB4  60 00 00 00 */	nop 
lbl_80A61AB8:
/* 80A61AB8  38 60 00 01 */	li r3, 1
/* 80A61ABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A61AC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A61AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A61AC8  7C 08 03 A6 */	mtlr r0
/* 80A61ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A61AD0  4E 80 00 20 */	blr 
