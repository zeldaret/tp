lbl_805A30A0:
/* 805A30A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A30A4  7C 08 02 A6 */	mflr r0
/* 805A30A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A30AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A30B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A30B4  41 82 00 1C */	beq lbl_805A30D0
/* 805A30B8  3C A0 80 5A */	lis r5, __vt__17dEvLib_callback_c@ha
/* 805A30BC  38 05 33 E4 */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 805A30C0  90 1F 00 00 */	stw r0, 0(r31)
/* 805A30C4  7C 80 07 35 */	extsh. r0, r4
/* 805A30C8  40 81 00 08 */	ble lbl_805A30D0
/* 805A30CC  4B D2 BC 70 */	b __dl__FPv
lbl_805A30D0:
/* 805A30D0  7F E3 FB 78 */	mr r3, r31
/* 805A30D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A30D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A30DC  7C 08 03 A6 */	mtlr r0
/* 805A30E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A30E4  4E 80 00 20 */	blr 
