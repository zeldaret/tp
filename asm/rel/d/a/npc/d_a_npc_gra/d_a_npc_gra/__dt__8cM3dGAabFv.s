lbl_809C92A0:
/* 809C92A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C92A4  7C 08 02 A6 */	mflr r0
/* 809C92A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C92AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C92B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809C92B4  41 82 00 1C */	beq lbl_809C92D0
/* 809C92B8  3C A0 80 9D */	lis r5, __vt__8cM3dGAab@ha
/* 809C92BC  38 05 B2 CC */	addi r0, r5, __vt__8cM3dGAab@l
/* 809C92C0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809C92C4  7C 80 07 35 */	extsh. r0, r4
/* 809C92C8  40 81 00 08 */	ble lbl_809C92D0
/* 809C92CC  4B 90 5A 70 */	b __dl__FPv
lbl_809C92D0:
/* 809C92D0  7F E3 FB 78 */	mr r3, r31
/* 809C92D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C92D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C92DC  7C 08 03 A6 */	mtlr r0
/* 809C92E0  38 21 00 10 */	addi r1, r1, 0x10
/* 809C92E4  4E 80 00 20 */	blr 
