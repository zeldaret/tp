lbl_807D1B48:
/* 807D1B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D1B4C  7C 08 02 A6 */	mflr r0
/* 807D1B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D1B54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807D1B58  7C 7F 1B 78 */	mr r31, r3
/* 807D1B5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807D1B60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807D1B64  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807D1B68  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 807D1B6C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 807D1B70  4B B7 4D 78 */	b PSMTXTrans
/* 807D1B74  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 807D1B78  FC 40 08 90 */	fmr f2, f1
/* 807D1B7C  FC 60 08 90 */	fmr f3, f1
/* 807D1B80  4B 83 B2 B8 */	b scaleM__14mDoMtx_stack_cFfff
/* 807D1B84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807D1B88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807D1B8C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 807D1B90  38 84 00 24 */	addi r4, r4, 0x24
/* 807D1B94  4B B7 49 1C */	b PSMTXCopy
/* 807D1B98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807D1B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D1BA0  7C 08 03 A6 */	mtlr r0
/* 807D1BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 807D1BA8  4E 80 00 20 */	blr 
