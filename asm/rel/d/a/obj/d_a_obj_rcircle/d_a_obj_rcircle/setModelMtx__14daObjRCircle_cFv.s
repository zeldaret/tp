lbl_80CB8BF0:
/* 80CB8BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8BF4  7C 08 02 A6 */	mflr r0
/* 80CB8BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB8C00  7C 7F 1B 78 */	mr r31, r3
/* 80CB8C04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB8C08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB8C0C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CB8C10  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CB8C14  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CB8C18  4B 68 DC D0 */	b PSMTXTrans
/* 80CB8C1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB8C20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB8C24  80 9F 05 A4 */	lwz r4, 0x5a4(r31)
/* 80CB8C28  38 84 00 24 */	addi r4, r4, 0x24
/* 80CB8C2C  4B 68 D8 84 */	b PSMTXCopy
/* 80CB8C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB8C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8C38  7C 08 03 A6 */	mtlr r0
/* 80CB8C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8C40  4E 80 00 20 */	blr 
