lbl_80B30AD8:
/* 80B30AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B30ADC  7C 08 02 A6 */	mflr r0
/* 80B30AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B30AE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B30AE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B30AEC  7C 7E 1B 78 */	mr r30, r3
/* 80B30AF0  7C 9F 23 78 */	mr r31, r4
/* 80B30AF4  38 00 00 03 */	li r0, 3
/* 80B30AF8  B0 03 0E 96 */	sth r0, 0xe96(r3)
/* 80B30AFC  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B30B00  4B 83 15 18 */	b __ptmf_test
/* 80B30B04  2C 03 00 00 */	cmpwi r3, 0
/* 80B30B08  41 82 00 18 */	beq lbl_80B30B20
/* 80B30B0C  7F C3 F3 78 */	mr r3, r30
/* 80B30B10  38 80 00 00 */	li r4, 0
/* 80B30B14  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B30B18  4B 83 15 6C */	b __ptmf_scall
/* 80B30B1C  60 00 00 00 */	nop 
lbl_80B30B20:
/* 80B30B20  38 00 00 00 */	li r0, 0
/* 80B30B24  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B30B28  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B30B2C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80B30B30  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B30B34  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B30B38  80 1F 00 08 */	lwz r0, 8(r31)
/* 80B30B3C  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B30B40  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B30B44  4B 83 14 D4 */	b __ptmf_test
/* 80B30B48  2C 03 00 00 */	cmpwi r3, 0
/* 80B30B4C  41 82 00 18 */	beq lbl_80B30B64
/* 80B30B50  7F C3 F3 78 */	mr r3, r30
/* 80B30B54  38 80 00 00 */	li r4, 0
/* 80B30B58  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B30B5C  4B 83 15 28 */	b __ptmf_scall
/* 80B30B60  60 00 00 00 */	nop 
lbl_80B30B64:
/* 80B30B64  38 60 00 01 */	li r3, 1
/* 80B30B68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B30B6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B30B70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B30B74  7C 08 03 A6 */	mtlr r0
/* 80B30B78  38 21 00 10 */	addi r1, r1, 0x10
/* 80B30B7C  4E 80 00 20 */	blr 
