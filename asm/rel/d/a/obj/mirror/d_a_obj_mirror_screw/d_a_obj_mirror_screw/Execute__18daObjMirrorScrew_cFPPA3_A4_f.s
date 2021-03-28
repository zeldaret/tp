lbl_80C99490:
/* 80C99490  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C99494  7C 08 02 A6 */	mflr r0
/* 80C99498  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9949C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C994A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C994A4  7C 7E 1B 78 */	mr r30, r3
/* 80C994A8  7C 9F 23 78 */	mr r31, r4
/* 80C994AC  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 80C994B0  28 00 00 00 */	cmplwi r0, 0
/* 80C994B4  40 82 00 20 */	bne lbl_80C994D4
/* 80C994B8  38 00 00 B3 */	li r0, 0xb3
/* 80C994BC  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80C994C0  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80C994C4  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80C994C8  38 81 00 12 */	addi r4, r1, 0x12
/* 80C994CC  4B 38 03 2C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C994D0  90 7E 05 B4 */	stw r3, 0x5b4(r30)
lbl_80C994D4:
/* 80C994D4  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80C994D8  28 00 00 00 */	cmplwi r0, 0
/* 80C994DC  40 82 00 20 */	bne lbl_80C994FC
/* 80C994E0  38 00 02 C6 */	li r0, 0x2c6
/* 80C994E4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80C994E8  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80C994EC  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80C994F0  38 81 00 10 */	addi r4, r1, 0x10
/* 80C994F4  4B 38 03 04 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C994F8  90 7E 05 B8 */	stw r3, 0x5b8(r30)
lbl_80C994FC:
/* 80C994FC  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 80C99500  28 00 00 00 */	cmplwi r0, 0
/* 80C99504  40 82 00 20 */	bne lbl_80C99524
/* 80C99508  38 00 00 B1 */	li r0, 0xb1
/* 80C9950C  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80C99510  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80C99514  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80C99518  38 81 00 0E */	addi r4, r1, 0xe
/* 80C9951C  4B 38 02 DC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C99520  90 7E 05 BC */	stw r3, 0x5bc(r30)
lbl_80C99524:
/* 80C99524  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 80C99528  28 00 00 00 */	cmplwi r0, 0
/* 80C9952C  40 82 00 20 */	bne lbl_80C9954C
/* 80C99530  38 00 00 B0 */	li r0, 0xb0
/* 80C99534  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80C99538  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80C9953C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80C99540  38 81 00 0C */	addi r4, r1, 0xc
/* 80C99544  4B 38 02 B4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C99548  90 7E 05 C0 */	stw r3, 0x5c0(r30)
lbl_80C9954C:
/* 80C9954C  80 1E 05 C4 */	lwz r0, 0x5c4(r30)
/* 80C99550  28 00 00 00 */	cmplwi r0, 0
/* 80C99554  40 82 00 20 */	bne lbl_80C99574
/* 80C99558  38 00 00 B2 */	li r0, 0xb2
/* 80C9955C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80C99560  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80C99564  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80C99568  38 81 00 0A */	addi r4, r1, 0xa
/* 80C9956C  4B 38 02 8C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C99570  90 7E 05 C4 */	stw r3, 0x5c4(r30)
lbl_80C99574:
/* 80C99574  80 1E 05 C8 */	lwz r0, 0x5c8(r30)
/* 80C99578  28 00 00 00 */	cmplwi r0, 0
/* 80C9957C  40 82 00 20 */	bne lbl_80C9959C
/* 80C99580  38 00 00 AF */	li r0, 0xaf
/* 80C99584  B0 01 00 08 */	sth r0, 8(r1)
/* 80C99588  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80C9958C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80C99590  38 81 00 08 */	addi r4, r1, 8
/* 80C99594  4B 38 02 64 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C99598  90 7E 05 C8 */	stw r3, 0x5c8(r30)
lbl_80C9959C:
/* 80C9959C  7F C3 F3 78 */	mr r3, r30
/* 80C995A0  80 9E 05 AC */	lwz r4, 0x5ac(r30)
/* 80C995A4  39 84 00 0C */	addi r12, r4, 0xc
/* 80C995A8  4B 6C 8A DC */	b __ptmf_scall
/* 80C995AC  60 00 00 00 */	nop 
/* 80C995B0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C995B4  4B 37 37 B0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C995B8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80C995BC  4B 37 39 88 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C995C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C995C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C995C8  38 9E 05 6C */	addi r4, r30, 0x56c
/* 80C995CC  4B 6A CE E4 */	b PSMTXCopy
/* 80C995D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C995D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C995D8  80 9E 05 A0 */	lwz r4, 0x5a0(r30)
/* 80C995DC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C995E0  4B 6A CE D0 */	b PSMTXCopy
/* 80C995E4  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C995E8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C995EC  38 60 00 01 */	li r3, 1
/* 80C995F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C995F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C995F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C995FC  7C 08 03 A6 */	mtlr r0
/* 80C99600  38 21 00 20 */	addi r1, r1, 0x20
/* 80C99604  4E 80 00 20 */	blr 
