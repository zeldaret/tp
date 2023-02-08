lbl_80A46B18:
/* 80A46B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A46B1C  7C 08 02 A6 */	mflr r0
/* 80A46B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A46B24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A46B28  93 C1 00 08 */	stw r30, 8(r1)
/* 80A46B2C  7C 7E 1B 78 */	mr r30, r3
/* 80A46B30  7C 9F 23 78 */	mr r31, r4
/* 80A46B34  38 00 00 03 */	li r0, 3
/* 80A46B38  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80A46B3C  38 7E 0F C4 */	addi r3, r30, 0xfc4
/* 80A46B40  4B 91 B4 D9 */	bl __ptmf_test
/* 80A46B44  2C 03 00 00 */	cmpwi r3, 0
/* 80A46B48  41 82 00 18 */	beq lbl_80A46B60
/* 80A46B4C  7F C3 F3 78 */	mr r3, r30
/* 80A46B50  38 80 00 00 */	li r4, 0
/* 80A46B54  39 9E 0F C4 */	addi r12, r30, 0xfc4
/* 80A46B58  4B 91 B5 2D */	bl __ptmf_scall
/* 80A46B5C  60 00 00 00 */	nop 
lbl_80A46B60:
/* 80A46B60  38 00 00 00 */	li r0, 0
/* 80A46B64  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A46B68  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A46B6C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A46B70  90 7E 0F C4 */	stw r3, 0xfc4(r30)
/* 80A46B74  90 1E 0F C8 */	stw r0, 0xfc8(r30)
/* 80A46B78  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A46B7C  90 1E 0F CC */	stw r0, 0xfcc(r30)
/* 80A46B80  38 7E 0F C4 */	addi r3, r30, 0xfc4
/* 80A46B84  4B 91 B4 95 */	bl __ptmf_test
/* 80A46B88  2C 03 00 00 */	cmpwi r3, 0
/* 80A46B8C  41 82 00 18 */	beq lbl_80A46BA4
/* 80A46B90  7F C3 F3 78 */	mr r3, r30
/* 80A46B94  38 80 00 00 */	li r4, 0
/* 80A46B98  39 9E 0F C4 */	addi r12, r30, 0xfc4
/* 80A46B9C  4B 91 B4 E9 */	bl __ptmf_scall
/* 80A46BA0  60 00 00 00 */	nop 
lbl_80A46BA4:
/* 80A46BA4  38 60 00 01 */	li r3, 1
/* 80A46BA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A46BAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A46BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A46BB4  7C 08 03 A6 */	mtlr r0
/* 80A46BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A46BBC  4E 80 00 20 */	blr 
