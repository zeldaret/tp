lbl_80BEB8F0:
/* 80BEB8F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEB8F4  7C 08 02 A6 */	mflr r0
/* 80BEB8F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEB8FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEB900  7C 7F 1B 78 */	mr r31, r3
/* 80BEB904  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BEB908  4B 42 14 5C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BEB90C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BEB910  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BEB914  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 80BEB918  38 84 00 24 */	addi r4, r4, 0x24
/* 80BEB91C  4B 75 AB 94 */	b PSMTXCopy
/* 80BEB920  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80BEB924  38 03 00 24 */	addi r0, r3, 0x24
/* 80BEB928  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BEB92C  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80BEB930  28 00 00 00 */	cmplwi r0, 0
/* 80BEB934  41 82 00 3C */	beq lbl_80BEB970
/* 80BEB938  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80BEB93C  4B 42 14 28 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BEB940  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BEB944  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BEB948  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BEB94C  4B 42 0A E8 */	b mDoMtx_YrotM__FPA4_fs
/* 80BEB950  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BEB954  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BEB958  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80BEB95C  38 84 00 24 */	addi r4, r4, 0x24
/* 80BEB960  4B 75 AB 50 */	b PSMTXCopy
/* 80BEB964  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BEB968  38 03 00 24 */	addi r0, r3, 0x24
/* 80BEB96C  90 1F 05 04 */	stw r0, 0x504(r31)
lbl_80BEB970:
/* 80BEB970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEB974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEB978  7C 08 03 A6 */	mtlr r0
/* 80BEB97C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEB980  4E 80 00 20 */	blr 
