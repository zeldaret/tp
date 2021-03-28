lbl_80B82584:
/* 80B82584  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B82588  7C 08 02 A6 */	mflr r0
/* 80B8258C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B82590  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B82594  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B82598  7C 7E 1B 78 */	mr r30, r3
/* 80B8259C  7C 9F 23 78 */	mr r31, r4
/* 80B825A0  80 03 04 DC */	lwz r0, 0x4dc(r3)
/* 80B825A4  90 01 00 08 */	stw r0, 8(r1)
/* 80B825A8  A0 03 04 E0 */	lhz r0, 0x4e0(r3)
/* 80B825AC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B825B0  38 00 00 00 */	li r0, 0
/* 80B825B4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B825B8  38 61 00 08 */	addi r3, r1, 8
/* 80B825BC  4B 48 A9 50 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B825C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B825C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B825C8  7F E4 FB 78 */	mr r4, r31
/* 80B825CC  7F E5 FB 78 */	mr r5, r31
/* 80B825D0  4B 7C 47 9C */	b PSMTXMultVec
/* 80B825D4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B825D8  7F E4 FB 78 */	mr r4, r31
/* 80B825DC  7C 65 1B 78 */	mr r5, r3
/* 80B825E0  4B 7C 4A B0 */	b PSVECAdd
/* 80B825E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B825E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B825EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B825F0  7C 08 03 A6 */	mtlr r0
/* 80B825F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B825F8  4E 80 00 20 */	blr 
