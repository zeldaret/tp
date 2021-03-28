lbl_80BD7788:
/* 80BD7788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD778C  7C 08 02 A6 */	mflr r0
/* 80BD7790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD7794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD7798  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD779C  7C 7E 1B 78 */	mr r30, r3
/* 80BD77A0  7C 9F 23 78 */	mr r31, r4
/* 80BD77A4  3C 60 80 BE */	lis r3, l_chainOffset@ha
/* 80BD77A8  C4 03 A3 4C */	lfsu f0, l_chainOffset@l(r3)
/* 80BD77AC  D0 04 00 00 */	stfs f0, 0(r4)
/* 80BD77B0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BD77B4  D0 04 00 04 */	stfs f0, 4(r4)
/* 80BD77B8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BD77BC  D0 04 00 08 */	stfs f0, 8(r4)
/* 80BD77C0  38 7E 0F 38 */	addi r3, r30, 0xf38
/* 80BD77C4  4B 43 55 A0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD77C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD77CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD77D0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BD77D4  4B 43 4C 60 */	b mDoMtx_YrotM__FPA4_fs
/* 80BD77D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD77DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD77E0  7F E4 FB 78 */	mr r4, r31
/* 80BD77E4  7F E5 FB 78 */	mr r5, r31
/* 80BD77E8  4B 76 F5 84 */	b PSMTXMultVec
/* 80BD77EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD77F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BD77F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD77F8  7C 08 03 A6 */	mtlr r0
/* 80BD77FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD7800  4E 80 00 20 */	blr 
