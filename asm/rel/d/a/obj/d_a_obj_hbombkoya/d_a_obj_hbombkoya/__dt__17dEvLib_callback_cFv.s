lbl_80C1C414:
/* 80C1C414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1C418  7C 08 02 A6 */	mflr r0
/* 80C1C41C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1C420  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1C424  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1C428  41 82 00 1C */	beq lbl_80C1C444
/* 80C1C42C  3C A0 80 C2 */	lis r5, __vt__17dEvLib_callback_c@ha
/* 80C1C430  38 05 C9 84 */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 80C1C434  90 1F 00 00 */	stw r0, 0(r31)
/* 80C1C438  7C 80 07 35 */	extsh. r0, r4
/* 80C1C43C  40 81 00 08 */	ble lbl_80C1C444
/* 80C1C440  4B 6B 28 FC */	b __dl__FPv
lbl_80C1C444:
/* 80C1C444  7F E3 FB 78 */	mr r3, r31
/* 80C1C448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1C44C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1C450  7C 08 03 A6 */	mtlr r0
/* 80C1C454  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1C458  4E 80 00 20 */	blr 
