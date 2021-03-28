lbl_80D24238:
/* 80D24238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2423C  7C 08 02 A6 */	mflr r0
/* 80D24240  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D24244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D24248  7C 7F 1B 78 */	mr r31, r3
/* 80D2424C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D24250  4B 2E 8B 14 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D24254  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D24258  4B 2E 8C EC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D2425C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D24260  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D24264  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D24268  38 84 00 24 */	addi r4, r4, 0x24
/* 80D2426C  4B 62 22 44 */	b PSMTXCopy
/* 80D24270  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D24274  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D24278  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D2427C  4B 62 22 34 */	b PSMTXCopy
/* 80D24280  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D24284  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D24288  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80D2428C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D24290  4B 62 22 20 */	b PSMTXCopy
/* 80D24294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D24298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2429C  7C 08 03 A6 */	mtlr r0
/* 80D242A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D242A4  4E 80 00 20 */	blr 
