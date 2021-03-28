lbl_80D044B8:
/* 80D044B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D044BC  7C 08 02 A6 */	mflr r0
/* 80D044C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D044C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D044C8  7C 7F 1B 78 */	mr r31, r3
/* 80D044CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D044D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D044D4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D044D8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D044DC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D044E0  4B 64 24 08 */	b PSMTXTrans
/* 80D044E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D044E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D044EC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80D044F0  4B 30 7F 44 */	b mDoMtx_YrotM__FPA4_fs
/* 80D044F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D044F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D044FC  38 9F 05 D8 */	addi r4, r31, 0x5d8
/* 80D04500  4B 64 1F B0 */	b PSMTXCopy
/* 80D04504  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D04508  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D0450C  38 9F 05 A8 */	addi r4, r31, 0x5a8
/* 80D04510  4B 64 1F A0 */	b PSMTXCopy
/* 80D04514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D04518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0451C  7C 08 03 A6 */	mtlr r0
/* 80D04520  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04524  4E 80 00 20 */	blr 
