lbl_806728B4:
/* 806728B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806728B8  7C 08 02 A6 */	mflr r0
/* 806728BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806728C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806728C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806728C8  7C 7E 1B 78 */	mr r30, r3
/* 806728CC  7C 9F 23 78 */	mr r31, r4
/* 806728D0  88 03 00 08 */	lbz r0, 8(r3)
/* 806728D4  28 00 00 00 */	cmplwi r0, 0
/* 806728D8  41 82 00 80 */	beq lbl_80672958
/* 806728DC  80 1E 00 00 */	lwz r0, 0(r30)
/* 806728E0  28 00 00 00 */	cmplwi r0, 0
/* 806728E4  40 82 00 08 */	bne lbl_806728EC
/* 806728E8  48 00 00 70 */	b lbl_80672958
lbl_806728EC:
/* 806728EC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806728F0  D0 21 00 08 */	stfs f1, 8(r1)
/* 806728F4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806728F8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 806728FC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80672900  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80672904  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80672908  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067290C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80672910  EC 42 00 2A */	fadds f2, f2, f0
/* 80672914  4B CD 3F D4 */	b PSMTXTrans
/* 80672918  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067291C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80672920  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80672924  4B 99 9B 10 */	b mDoMtx_YrotM__FPA4_fs
/* 80672928  88 1E 00 09 */	lbz r0, 9(r30)
/* 8067292C  28 00 00 01 */	cmplwi r0, 1
/* 80672930  40 82 00 14 */	bne lbl_80672944
/* 80672934  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80672938  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067293C  38 80 7F FF */	li r4, 0x7fff
/* 80672940  4B 99 9A F4 */	b mDoMtx_YrotM__FPA4_fs
lbl_80672944:
/* 80672944  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80672948  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067294C  80 9E 00 00 */	lwz r4, 0(r30)
/* 80672950  38 84 00 24 */	addi r4, r4, 0x24
/* 80672954  4B CD 3B 5C */	b PSMTXCopy
lbl_80672958:
/* 80672958  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8067295C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80672960  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80672964  7C 08 03 A6 */	mtlr r0
/* 80672968  38 21 00 20 */	addi r1, r1, 0x20
/* 8067296C  4E 80 00 20 */	blr 
