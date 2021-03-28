lbl_805C69A8:
/* 805C69A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C69AC  7C 08 02 A6 */	mflr r0
/* 805C69B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C69B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C69B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 805C69BC  41 82 00 1C */	beq lbl_805C69D8
/* 805C69C0  3C A0 80 5C */	lis r5, __vt__8cM3dGAab@ha
/* 805C69C4  38 05 78 70 */	addi r0, r5, __vt__8cM3dGAab@l
/* 805C69C8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805C69CC  7C 80 07 35 */	extsh. r0, r4
/* 805C69D0  40 81 00 08 */	ble lbl_805C69D8
/* 805C69D4  4B D0 83 68 */	b __dl__FPv
lbl_805C69D8:
/* 805C69D8  7F E3 FB 78 */	mr r3, r31
/* 805C69DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C69E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C69E4  7C 08 03 A6 */	mtlr r0
/* 805C69E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805C69EC  4E 80 00 20 */	blr 
