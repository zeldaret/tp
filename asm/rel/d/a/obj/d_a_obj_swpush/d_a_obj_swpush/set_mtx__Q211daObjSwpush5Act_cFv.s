lbl_804834E8:
/* 804834E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804834EC  7C 08 02 A6 */	mflr r0
/* 804834F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804834F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804834F8  7C 7F 1B 78 */	mr r31, r3
/* 804834FC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80483500  4B B8 98 64 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80483504  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80483508  4B B8 9A 3C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8048350C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80483510  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80483514  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80483518  38 84 00 24 */	addi r4, r4, 0x24
/* 8048351C  4B EC 2F 94 */	b PSMTXCopy
/* 80483520  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80483524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483528  7C 08 03 A6 */	mtlr r0
/* 8048352C  38 21 00 10 */	addi r1, r1, 0x10
/* 80483530  4E 80 00 20 */	blr 
