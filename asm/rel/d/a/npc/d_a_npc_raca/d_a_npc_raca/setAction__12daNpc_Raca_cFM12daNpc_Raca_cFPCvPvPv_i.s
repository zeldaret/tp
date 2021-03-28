lbl_80AB73DC:
/* 80AB73DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB73E0  7C 08 02 A6 */	mflr r0
/* 80AB73E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB73E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB73EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB73F0  7C 7E 1B 78 */	mr r30, r3
/* 80AB73F4  7C 9F 23 78 */	mr r31, r4
/* 80AB73F8  38 00 00 03 */	li r0, 3
/* 80AB73FC  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80AB7400  38 7E 0F 98 */	addi r3, r30, 0xf98
/* 80AB7404  4B 8A AC 14 */	b __ptmf_test
/* 80AB7408  2C 03 00 00 */	cmpwi r3, 0
/* 80AB740C  41 82 00 18 */	beq lbl_80AB7424
/* 80AB7410  7F C3 F3 78 */	mr r3, r30
/* 80AB7414  38 80 00 00 */	li r4, 0
/* 80AB7418  39 9E 0F 98 */	addi r12, r30, 0xf98
/* 80AB741C  4B 8A AC 68 */	b __ptmf_scall
/* 80AB7420  60 00 00 00 */	nop 
lbl_80AB7424:
/* 80AB7424  38 00 00 00 */	li r0, 0
/* 80AB7428  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80AB742C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AB7430  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AB7434  90 7E 0F 98 */	stw r3, 0xf98(r30)
/* 80AB7438  90 1E 0F 9C */	stw r0, 0xf9c(r30)
/* 80AB743C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AB7440  90 1E 0F A0 */	stw r0, 0xfa0(r30)
/* 80AB7444  38 7E 0F 98 */	addi r3, r30, 0xf98
/* 80AB7448  4B 8A AB D0 */	b __ptmf_test
/* 80AB744C  2C 03 00 00 */	cmpwi r3, 0
/* 80AB7450  41 82 00 18 */	beq lbl_80AB7468
/* 80AB7454  7F C3 F3 78 */	mr r3, r30
/* 80AB7458  38 80 00 00 */	li r4, 0
/* 80AB745C  39 9E 0F 98 */	addi r12, r30, 0xf98
/* 80AB7460  4B 8A AC 24 */	b __ptmf_scall
/* 80AB7464  60 00 00 00 */	nop 
lbl_80AB7468:
/* 80AB7468  38 60 00 01 */	li r3, 1
/* 80AB746C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB7470  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB7474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB7478  7C 08 03 A6 */	mtlr r0
/* 80AB747C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB7480  4E 80 00 20 */	blr 
