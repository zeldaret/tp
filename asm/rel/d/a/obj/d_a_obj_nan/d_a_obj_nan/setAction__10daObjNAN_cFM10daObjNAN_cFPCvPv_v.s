lbl_80CA05D4:
/* 80CA05D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA05D8  7C 08 02 A6 */	mflr r0
/* 80CA05DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA05E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA05E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA05E8  7C 7E 1B 78 */	mr r30, r3
/* 80CA05EC  7C 9F 23 78 */	mr r31, r4
/* 80CA05F0  38 7E 07 B8 */	addi r3, r30, 0x7b8
/* 80CA05F4  4B 6C 1A 25 */	bl __ptmf_test
/* 80CA05F8  2C 03 00 00 */	cmpwi r3, 0
/* 80CA05FC  41 82 00 1C */	beq lbl_80CA0618
/* 80CA0600  38 00 FF FF */	li r0, -1
/* 80CA0604  90 1E 07 D0 */	stw r0, 0x7d0(r30)
/* 80CA0608  7F C3 F3 78 */	mr r3, r30
/* 80CA060C  39 9E 07 B8 */	addi r12, r30, 0x7b8
/* 80CA0610  4B 6C 1A 75 */	bl __ptmf_scall
/* 80CA0614  60 00 00 00 */	nop 
lbl_80CA0618:
/* 80CA0618  80 7E 07 B8 */	lwz r3, 0x7b8(r30)
/* 80CA061C  80 1E 07 BC */	lwz r0, 0x7bc(r30)
/* 80CA0620  90 7E 07 C4 */	stw r3, 0x7c4(r30)
/* 80CA0624  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80CA0628  80 1E 07 C0 */	lwz r0, 0x7c0(r30)
/* 80CA062C  90 1E 07 CC */	stw r0, 0x7cc(r30)
/* 80CA0630  80 7F 00 00 */	lwz r3, 0(r31)
/* 80CA0634  80 1F 00 04 */	lwz r0, 4(r31)
/* 80CA0638  90 7E 07 B8 */	stw r3, 0x7b8(r30)
/* 80CA063C  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80CA0640  80 1F 00 08 */	lwz r0, 8(r31)
/* 80CA0644  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 80CA0648  38 00 00 00 */	li r0, 0
/* 80CA064C  90 1E 07 D0 */	stw r0, 0x7d0(r30)
/* 80CA0650  7F C3 F3 78 */	mr r3, r30
/* 80CA0654  39 9E 07 B8 */	addi r12, r30, 0x7b8
/* 80CA0658  4B 6C 1A 2D */	bl __ptmf_scall
/* 80CA065C  60 00 00 00 */	nop 
/* 80CA0660  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA0664  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA0668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA066C  7C 08 03 A6 */	mtlr r0
/* 80CA0670  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA0674  4E 80 00 20 */	blr 
