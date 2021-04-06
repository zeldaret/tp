lbl_80C7FC54:
/* 80C7FC54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7FC58  7C 08 02 A6 */	mflr r0
/* 80C7FC5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7FC60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C7FC64  7C 7F 1B 78 */	mr r31, r3
/* 80C7FC68  3C 60 80 C8 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C81D04@ha */
/* 80C7FC6C  38 C3 1D 04 */	addi r6, r3, cNullVec__6Z2Calc@l /* 0x80C81D04@l */
/* 80C7FC70  3C 60 80 C8 */	lis r3, struct_80C81FE8+0x1@ha /* 0x80C81FE9@ha */
/* 80C7FC74  38 A3 1F E9 */	addi r5, r3, struct_80C81FE8+0x1@l /* 0x80C81FE9@l */
/* 80C7FC78  88 05 00 00 */	lbz r0, 0(r5)
/* 80C7FC7C  7C 00 07 75 */	extsb. r0, r0
/* 80C7FC80  40 82 00 40 */	bne lbl_80C7FCC0
/* 80C7FC84  80 66 01 C8 */	lwz r3, 0x1c8(r6)
/* 80C7FC88  80 06 01 CC */	lwz r0, 0x1cc(r6)
/* 80C7FC8C  90 66 01 E0 */	stw r3, 0x1e0(r6)
/* 80C7FC90  90 06 01 E4 */	stw r0, 0x1e4(r6)
/* 80C7FC94  80 06 01 D0 */	lwz r0, 0x1d0(r6)
/* 80C7FC98  90 06 01 E8 */	stw r0, 0x1e8(r6)
/* 80C7FC9C  38 86 01 E0 */	addi r4, r6, 0x1e0
/* 80C7FCA0  80 66 01 D4 */	lwz r3, 0x1d4(r6)
/* 80C7FCA4  80 06 01 D8 */	lwz r0, 0x1d8(r6)
/* 80C7FCA8  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C7FCAC  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C7FCB0  80 06 01 DC */	lwz r0, 0x1dc(r6)
/* 80C7FCB4  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C7FCB8  38 00 00 01 */	li r0, 1
/* 80C7FCBC  98 05 00 00 */	stb r0, 0(r5)
lbl_80C7FCC0:
/* 80C7FCC0  7F E3 FB 78 */	mr r3, r31
/* 80C7FCC4  88 1F 0A 1A */	lbz r0, 0xa1a(r31)
/* 80C7FCC8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C7FCCC  39 86 01 E0 */	addi r12, r6, 0x1e0
/* 80C7FCD0  7D 8C 02 14 */	add r12, r12, r0
/* 80C7FCD4  4B 6E 23 B1 */	bl __ptmf_scall
/* 80C7FCD8  60 00 00 00 */	nop 
/* 80C7FCDC  80 1F 0A 50 */	lwz r0, 0xa50(r31)
/* 80C7FCE0  28 00 00 00 */	cmplwi r0, 0
/* 80C7FCE4  41 82 00 94 */	beq lbl_80C7FD78
/* 80C7FCE8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C7FCEC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C7FCF0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C7FCF4  A8 1F 09 BA */	lha r0, 0x9ba(r31)
/* 80C7FCF8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80C7FCFC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80C7FD00  7C 63 02 14 */	add r3, r3, r0
/* 80C7FD04  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7FD08  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7FD0C  4B 6C 67 A5 */	bl PSMTXCopy
/* 80C7FD10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7FD14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7FD18  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C7FD1C  D0 1F 0A 58 */	stfs f0, 0xa58(r31)
/* 80C7FD20  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C7FD24  D0 1F 0A 5C */	stfs f0, 0xa5c(r31)
/* 80C7FD28  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C7FD2C  D0 1F 0A 60 */	stfs f0, 0xa60(r31)
/* 80C7FD30  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070226@ha */
/* 80C7FD34  38 03 02 26 */	addi r0, r3, 0x0226 /* 0x00070226@l */
/* 80C7FD38  90 01 00 08 */	stw r0, 8(r1)
/* 80C7FD3C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C7FD40  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C7FD44  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7FD48  38 81 00 08 */	addi r4, r1, 8
/* 80C7FD4C  38 BF 0A 58 */	addi r5, r31, 0xa58
/* 80C7FD50  38 C0 00 00 */	li r6, 0
/* 80C7FD54  38 E0 00 00 */	li r7, 0
/* 80C7FD58  3D 00 80 C8 */	lis r8, lit_3855@ha /* 0x80C81C48@ha */
/* 80C7FD5C  C0 28 1C 48 */	lfs f1, lit_3855@l(r8)  /* 0x80C81C48@l */
/* 80C7FD60  FC 40 08 90 */	fmr f2, f1
/* 80C7FD64  3D 00 80 C8 */	lis r8, lit_4276@ha /* 0x80C81C6C@ha */
/* 80C7FD68  C0 68 1C 6C */	lfs f3, lit_4276@l(r8)  /* 0x80C81C6C@l */
/* 80C7FD6C  FC 80 18 90 */	fmr f4, f3
/* 80C7FD70  39 00 00 00 */	li r8, 0
/* 80C7FD74  4B 62 C7 99 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C7FD78:
/* 80C7FD78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C7FD7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7FD80  7C 08 03 A6 */	mtlr r0
/* 80C7FD84  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7FD88  4E 80 00 20 */	blr 
