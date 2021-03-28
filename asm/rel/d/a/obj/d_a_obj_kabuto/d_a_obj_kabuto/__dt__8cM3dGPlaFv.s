lbl_80C2B844:
/* 80C2B844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2B848  7C 08 02 A6 */	mflr r0
/* 80C2B84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2B850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2B854  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C2B858  41 82 00 1C */	beq lbl_80C2B874
/* 80C2B85C  3C A0 80 C3 */	lis r5, __vt__8cM3dGPla@ha
/* 80C2B860  38 05 E2 C0 */	addi r0, r5, __vt__8cM3dGPla@l
/* 80C2B864  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C2B868  7C 80 07 35 */	extsh. r0, r4
/* 80C2B86C  40 81 00 08 */	ble lbl_80C2B874
/* 80C2B870  4B 6A 34 CC */	b __dl__FPv
lbl_80C2B874:
/* 80C2B874  7F E3 FB 78 */	mr r3, r31
/* 80C2B878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2B87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2B880  7C 08 03 A6 */	mtlr r0
/* 80C2B884  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2B888  4E 80 00 20 */	blr 
