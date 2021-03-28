lbl_80D440B8:
/* 80D440B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D440BC  7C 08 02 A6 */	mflr r0
/* 80D440C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D440C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D440C8  7C 7F 1B 78 */	mr r31, r3
/* 80D440CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D440D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D440D4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D440D8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D440DC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D440E0  4B 60 28 08 */	b PSMTXTrans
/* 80D440E4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D440E8  4B 2C 8D EC */	b XYZrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D440EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D440F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D440F4  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D440F8  38 84 00 24 */	addi r4, r4, 0x24
/* 80D440FC  4B 60 23 B4 */	b PSMTXCopy
/* 80D44100  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D44104  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D44108  38 9F 05 74 */	addi r4, r31, 0x574
/* 80D4410C  4B 60 23 A4 */	b PSMTXCopy
/* 80D44110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D44114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D44118  7C 08 03 A6 */	mtlr r0
/* 80D4411C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D44120  4E 80 00 20 */	blr 
