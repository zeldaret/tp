lbl_8094686C:
/* 8094686C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80946870  7C 08 02 A6 */	mflr r0
/* 80946874  90 01 00 14 */	stw r0, 0x14(r1)
/* 80946878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8094687C  93 C1 00 08 */	stw r30, 8(r1)
/* 80946880  7C BE 2B 78 */	mr r30, r5
/* 80946884  A0 84 00 14 */	lhz r4, 0x14(r4)
/* 80946888  80 65 00 84 */	lwz r3, 0x84(r5)
/* 8094688C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80946890  1F E4 00 30 */	mulli r31, r4, 0x30
/* 80946894  7C 60 FA 14 */	add r3, r0, r31
/* 80946898  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8094689C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809468A0  4B 9F FC 10 */	b PSMTXCopy
/* 809468A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809468A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809468AC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 809468B0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809468B4  7C 80 FA 14 */	add r4, r0, r31
/* 809468B8  4B 9F FB F8 */	b PSMTXCopy
/* 809468BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809468C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809468C4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 809468C8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 809468CC  4B 9F FB E4 */	b PSMTXCopy
/* 809468D0  38 60 00 01 */	li r3, 1
/* 809468D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809468D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809468DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809468E0  7C 08 03 A6 */	mtlr r0
/* 809468E4  38 21 00 10 */	addi r1, r1, 0x10
/* 809468E8  4E 80 00 20 */	blr 
