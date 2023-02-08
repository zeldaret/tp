lbl_80C616A8:
/* 80C616A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C616AC  7C 08 02 A6 */	mflr r0
/* 80C616B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C616B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C616B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C616BC  41 82 00 1C */	beq lbl_80C616D8
/* 80C616C0  3C A0 80 C6 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C61CA8@ha */
/* 80C616C4  38 05 1C A8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C61CA8@l */
/* 80C616C8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C616CC  7C 80 07 35 */	extsh. r0, r4
/* 80C616D0  40 81 00 08 */	ble lbl_80C616D8
/* 80C616D4  4B 66 D6 69 */	bl __dl__FPv
lbl_80C616D8:
/* 80C616D8  7F E3 FB 78 */	mr r3, r31
/* 80C616DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C616E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C616E4  7C 08 03 A6 */	mtlr r0
/* 80C616E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C616EC  4E 80 00 20 */	blr 
