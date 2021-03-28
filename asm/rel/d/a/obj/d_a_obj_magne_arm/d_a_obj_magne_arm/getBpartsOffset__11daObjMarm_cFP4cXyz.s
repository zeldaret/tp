lbl_8058F358:
/* 8058F358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058F35C  7C 08 02 A6 */	mflr r0
/* 8058F360  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058F364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058F368  93 C1 00 08 */	stw r30, 8(r1)
/* 8058F36C  7C 7E 1B 78 */	mr r30, r3
/* 8058F370  7C 9F 23 78 */	mr r31, r4
/* 8058F374  3C 60 80 59 */	lis r3, l_offsetB_3648@ha
/* 8058F378  C4 03 28 88 */	lfsu f0, l_offsetB_3648@l(r3)
/* 8058F37C  D0 04 00 00 */	stfs f0, 0(r4)
/* 8058F380  C0 03 00 04 */	lfs f0, 4(r3)
/* 8058F384  D0 04 00 04 */	stfs f0, 4(r4)
/* 8058F388  C0 03 00 08 */	lfs f0, 8(r3)
/* 8058F38C  D0 04 00 08 */	stfs f0, 8(r4)
/* 8058F390  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8058F394  4B A7 D9 D0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8058F398  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F39C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F3A0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8058F3A4  4B A7 D0 90 */	b mDoMtx_YrotM__FPA4_fs
/* 8058F3A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F3AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F3B0  7F E4 FB 78 */	mr r4, r31
/* 8058F3B4  7F E5 FB 78 */	mr r5, r31
/* 8058F3B8  4B DB 79 B4 */	b PSMTXMultVec
/* 8058F3BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058F3C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058F3C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058F3C8  7C 08 03 A6 */	mtlr r0
/* 8058F3CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058F3D0  4E 80 00 20 */	blr 
