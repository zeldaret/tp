lbl_80BB6AB8:
/* 80BB6AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB6ABC  7C 08 02 A6 */	mflr r0
/* 80BB6AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6AC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB6AC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB6ACC  41 82 00 1C */	beq lbl_80BB6AE8
/* 80BB6AD0  3C A0 80 BC */	lis r5, __vt__8cM3dGAab@ha /* 0x80BB80FC@ha */
/* 80BB6AD4  38 05 80 FC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BB80FC@l */
/* 80BB6AD8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BB6ADC  7C 80 07 35 */	extsh. r0, r4
/* 80BB6AE0  40 81 00 08 */	ble lbl_80BB6AE8
/* 80BB6AE4  4B 71 82 59 */	bl __dl__FPv
lbl_80BB6AE8:
/* 80BB6AE8  7F E3 FB 78 */	mr r3, r31
/* 80BB6AEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB6AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB6AF4  7C 08 03 A6 */	mtlr r0
/* 80BB6AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6AFC  4E 80 00 20 */	blr 
