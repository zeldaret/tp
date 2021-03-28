lbl_80AC1BA4:
/* 80AC1BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC1BA8  7C 08 02 A6 */	mflr r0
/* 80AC1BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC1BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC1BB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC1BB8  7C 7E 1B 78 */	mr r30, r3
/* 80AC1BBC  7C 9F 23 78 */	mr r31, r4
/* 80AC1BC0  38 00 00 03 */	li r0, 3
/* 80AC1BC4  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80AC1BC8  38 7E 0F C8 */	addi r3, r30, 0xfc8
/* 80AC1BCC  4B 8A 04 4C */	b __ptmf_test
/* 80AC1BD0  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1BD4  41 82 00 18 */	beq lbl_80AC1BEC
/* 80AC1BD8  7F C3 F3 78 */	mr r3, r30
/* 80AC1BDC  38 80 00 00 */	li r4, 0
/* 80AC1BE0  39 9E 0F C8 */	addi r12, r30, 0xfc8
/* 80AC1BE4  4B 8A 04 A0 */	b __ptmf_scall
/* 80AC1BE8  60 00 00 00 */	nop 
lbl_80AC1BEC:
/* 80AC1BEC  38 00 00 00 */	li r0, 0
/* 80AC1BF0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80AC1BF4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AC1BF8  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AC1BFC  90 7E 0F C8 */	stw r3, 0xfc8(r30)
/* 80AC1C00  90 1E 0F CC */	stw r0, 0xfcc(r30)
/* 80AC1C04  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AC1C08  90 1E 0F D0 */	stw r0, 0xfd0(r30)
/* 80AC1C0C  38 7E 0F C8 */	addi r3, r30, 0xfc8
/* 80AC1C10  4B 8A 04 08 */	b __ptmf_test
/* 80AC1C14  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1C18  41 82 00 18 */	beq lbl_80AC1C30
/* 80AC1C1C  7F C3 F3 78 */	mr r3, r30
/* 80AC1C20  38 80 00 00 */	li r4, 0
/* 80AC1C24  39 9E 0F C8 */	addi r12, r30, 0xfc8
/* 80AC1C28  4B 8A 04 5C */	b __ptmf_scall
/* 80AC1C2C  60 00 00 00 */	nop 
lbl_80AC1C30:
/* 80AC1C30  38 60 00 01 */	li r3, 1
/* 80AC1C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC1C38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC1C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC1C40  7C 08 03 A6 */	mtlr r0
/* 80AC1C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC1C48  4E 80 00 20 */	blr 
