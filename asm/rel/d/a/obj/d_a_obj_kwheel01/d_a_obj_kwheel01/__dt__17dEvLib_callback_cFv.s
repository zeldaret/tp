lbl_80C4F5AC:
/* 80C4F5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4F5B0  7C 08 02 A6 */	mflr r0
/* 80C4F5B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4F5B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4F5BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C4F5C0  41 82 00 1C */	beq lbl_80C4F5DC
/* 80C4F5C4  3C A0 80 C5 */	lis r5, __vt__17dEvLib_callback_c@ha
/* 80C4F5C8  38 05 F7 7C */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 80C4F5CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C4F5D0  7C 80 07 35 */	extsh. r0, r4
/* 80C4F5D4  40 81 00 08 */	ble lbl_80C4F5DC
/* 80C4F5D8  4B 67 F7 64 */	b __dl__FPv
lbl_80C4F5DC:
/* 80C4F5DC  7F E3 FB 78 */	mr r3, r31
/* 80C4F5E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4F5E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4F5E8  7C 08 03 A6 */	mtlr r0
/* 80C4F5EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4F5F0  4E 80 00 20 */	blr 
