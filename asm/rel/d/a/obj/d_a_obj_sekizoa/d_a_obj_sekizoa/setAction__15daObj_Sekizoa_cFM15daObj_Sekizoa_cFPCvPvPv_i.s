lbl_80CD0B34:
/* 80CD0B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD0B38  7C 08 02 A6 */	mflr r0
/* 80CD0B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD0B40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD0B44  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD0B48  7C 7E 1B 78 */	mr r30, r3
/* 80CD0B4C  7C 9F 23 78 */	mr r31, r4
/* 80CD0B50  38 00 00 03 */	li r0, 3
/* 80CD0B54  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80CD0B58  38 7E 11 18 */	addi r3, r30, 0x1118
/* 80CD0B5C  4B 69 14 BC */	b __ptmf_test
/* 80CD0B60  2C 03 00 00 */	cmpwi r3, 0
/* 80CD0B64  41 82 00 18 */	beq lbl_80CD0B7C
/* 80CD0B68  7F C3 F3 78 */	mr r3, r30
/* 80CD0B6C  38 80 00 00 */	li r4, 0
/* 80CD0B70  39 9E 11 18 */	addi r12, r30, 0x1118
/* 80CD0B74  4B 69 15 10 */	b __ptmf_scall
/* 80CD0B78  60 00 00 00 */	nop 
lbl_80CD0B7C:
/* 80CD0B7C  38 00 00 00 */	li r0, 0
/* 80CD0B80  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80CD0B84  80 7F 00 00 */	lwz r3, 0(r31)
/* 80CD0B88  80 1F 00 04 */	lwz r0, 4(r31)
/* 80CD0B8C  90 7E 11 18 */	stw r3, 0x1118(r30)
/* 80CD0B90  90 1E 11 1C */	stw r0, 0x111c(r30)
/* 80CD0B94  80 1F 00 08 */	lwz r0, 8(r31)
/* 80CD0B98  90 1E 11 20 */	stw r0, 0x1120(r30)
/* 80CD0B9C  38 7E 11 18 */	addi r3, r30, 0x1118
/* 80CD0BA0  4B 69 14 78 */	b __ptmf_test
/* 80CD0BA4  2C 03 00 00 */	cmpwi r3, 0
/* 80CD0BA8  41 82 00 18 */	beq lbl_80CD0BC0
/* 80CD0BAC  7F C3 F3 78 */	mr r3, r30
/* 80CD0BB0  38 80 00 00 */	li r4, 0
/* 80CD0BB4  39 9E 11 18 */	addi r12, r30, 0x1118
/* 80CD0BB8  4B 69 14 CC */	b __ptmf_scall
/* 80CD0BBC  60 00 00 00 */	nop 
lbl_80CD0BC0:
/* 80CD0BC0  38 60 00 01 */	li r3, 1
/* 80CD0BC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD0BC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD0BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD0BD0  7C 08 03 A6 */	mtlr r0
/* 80CD0BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD0BD8  4E 80 00 20 */	blr 
