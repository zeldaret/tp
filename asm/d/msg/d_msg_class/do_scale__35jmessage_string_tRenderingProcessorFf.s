lbl_80232600:
/* 80232600  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80232604  7C 08 02 A6 */	mflr r0
/* 80232608  90 01 00 44 */	stw r0, 0x44(r1)
/* 8023260C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80232610  7C 7F 1B 78 */	mr r31, r3
/* 80232614  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80232618  80 C3 00 08 */	lwz r6, 8(r3)
/* 8023261C  38 61 00 08 */	addi r3, r1, 8
/* 80232620  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 80232624  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 80232628  38 84 00 2B */	addi r4, r4, 0x2b
/* 8023262C  C0 42 B0 5C */	lfs f2, lit_4026(r2)
/* 80232630  C0 06 01 1C */	lfs f0, 0x11c(r6)
/* 80232634  EC 00 00 72 */	fmuls f0, f0, f1
/* 80232638  EC 02 00 2A */	fadds f0, f2, f0
/* 8023263C  FC 00 00 1E */	fctiwz f0, f0
/* 80232640  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80232644  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80232648  7C 05 07 34 */	extsh r5, r0
/* 8023264C  C0 06 01 20 */	lfs f0, 0x120(r6)
/* 80232650  EC 00 00 72 */	fmuls f0, f0, f1
/* 80232654  EC 02 00 2A */	fadds f0, f2, f0
/* 80232658  FC 00 00 1E */	fctiwz f0, f0
/* 8023265C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80232660  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80232664  7C 06 07 34 */	extsh r6, r0
/* 80232668  4C C6 31 82 */	crclr 6
/* 8023266C  48 13 3E 71 */	bl sprintf
/* 80232670  7F E3 FB 78 */	mr r3, r31
/* 80232674  38 81 00 08 */	addi r4, r1, 8
/* 80232678  4B FF F9 CD */	bl do_strcat__35jmessage_string_tRenderingProcessorFPc
/* 8023267C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80232680  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80232684  7C 08 03 A6 */	mtlr r0
/* 80232688  38 21 00 40 */	addi r1, r1, 0x40
/* 8023268C  4E 80 00 20 */	blr 
