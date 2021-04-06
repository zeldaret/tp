lbl_8045D744:
/* 8045D744  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045D748  7C 08 02 A6 */	mflr r0
/* 8045D74C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045D750  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045D754  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045D758  7C 7E 1B 78 */	mr r30, r3
/* 8045D75C  3C 60 80 46 */	lis r3, lit_3806@ha /* 0x8045E534@ha */
/* 8045D760  3B E3 E5 34 */	addi r31, r3, lit_3806@l /* 0x8045E534@l */
/* 8045D764  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D768  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D76C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8045D770  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8045D774  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8045D778  4B EE 91 71 */	bl PSMTXTrans
/* 8045D77C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D780  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D784  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8045D788  4B BA EC AD */	bl mDoMtx_YrotM__FPA4_fs
/* 8045D78C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D790  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D794  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 8045D798  38 84 00 24 */	addi r4, r4, 0x24
/* 8045D79C  4B EE 8D 15 */	bl PSMTXCopy
/* 8045D7A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D7A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D7A8  80 9E 05 7C */	lwz r4, 0x57c(r30)
/* 8045D7AC  38 84 00 24 */	addi r4, r4, 0x24
/* 8045D7B0  4B EE 8D 01 */	bl PSMTXCopy
/* 8045D7B4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8045D7B8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045D7BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8045D7C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8045D7C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8045D7C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D7CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D7D0  38 81 00 08 */	addi r4, r1, 8
/* 8045D7D4  38 BE 05 A8 */	addi r5, r30, 0x5a8
/* 8045D7D8  4B EE 95 95 */	bl PSMTXMultVec
/* 8045D7DC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8045D7E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045D7E4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8045D7E8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8045D7EC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8045D7F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D7F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D7F8  38 81 00 08 */	addi r4, r1, 8
/* 8045D7FC  38 BE 05 B4 */	addi r5, r30, 0x5b4
/* 8045D800  4B EE 95 6D */	bl PSMTXMultVec
/* 8045D804  88 1E 05 85 */	lbz r0, 0x585(r30)
/* 8045D808  28 00 00 00 */	cmplwi r0, 0
/* 8045D80C  40 82 00 68 */	bne lbl_8045D874
/* 8045D810  4B BA F4 B9 */	bl push__14mDoMtx_stack_cFv
/* 8045D814  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D818  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D81C  A8 1E 05 8A */	lha r0, 0x58a(r30)
/* 8045D820  7C 00 00 D0 */	neg r0, r0
/* 8045D824  7C 04 07 34 */	extsh r4, r0
/* 8045D828  4B BA EB B5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8045D82C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8045D830  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8045D834  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 8045D838  4B BA F5 65 */	bl transM__14mDoMtx_stack_cFfff
/* 8045D83C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D840  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D844  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8045D848  D0 1E 05 9C */	stfs f0, 0x59c(r30)
/* 8045D84C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8045D850  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 8045D854  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8045D858  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8045D85C  4B BA F4 B9 */	bl pop__14mDoMtx_stack_cFv
/* 8045D860  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D864  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D868  38 9E 05 9C */	addi r4, r30, 0x59c
/* 8045D86C  7C 85 23 78 */	mr r5, r4
/* 8045D870  4B EE 94 FD */	bl PSMTXMultVec
lbl_8045D874:
/* 8045D874  88 1E 05 85 */	lbz r0, 0x585(r30)
/* 8045D878  28 00 00 01 */	cmplwi r0, 1
/* 8045D87C  40 82 00 60 */	bne lbl_8045D8DC
/* 8045D880  4B BA F4 49 */	bl push__14mDoMtx_stack_cFv
/* 8045D884  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D888  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D88C  A8 9E 05 8A */	lha r4, 0x58a(r30)
/* 8045D890  4B BA EB 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 8045D894  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8045D898  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8045D89C  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 8045D8A0  4B BA F4 FD */	bl transM__14mDoMtx_stack_cFfff
/* 8045D8A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D8A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D8AC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8045D8B0  D0 1E 05 9C */	stfs f0, 0x59c(r30)
/* 8045D8B4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8045D8B8  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 8045D8BC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8045D8C0  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8045D8C4  4B BA F4 51 */	bl pop__14mDoMtx_stack_cFv
/* 8045D8C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045D8CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045D8D0  38 9E 05 9C */	addi r4, r30, 0x59c
/* 8045D8D4  7C 85 23 78 */	mr r5, r4
/* 8045D8D8  4B EE 94 95 */	bl PSMTXMultVec
lbl_8045D8DC:
/* 8045D8DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045D8E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045D8E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045D8E8  7C 08 03 A6 */	mtlr r0
/* 8045D8EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8045D8F0  4E 80 00 20 */	blr 
