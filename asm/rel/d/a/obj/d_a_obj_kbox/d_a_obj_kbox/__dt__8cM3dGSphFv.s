lbl_80C3EE98:
/* 80C3EE98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3EE9C  7C 08 02 A6 */	mflr r0
/* 80C3EEA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3EEA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3EEA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C3EEAC  41 82 00 1C */	beq lbl_80C3EEC8
/* 80C3EEB0  3C A0 80 C4 */	lis r5, __vt__8cM3dGSph@ha /* 0x80C3F1C4@ha */
/* 80C3EEB4  38 05 F1 C4 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80C3F1C4@l */
/* 80C3EEB8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C3EEBC  7C 80 07 35 */	extsh. r0, r4
/* 80C3EEC0  40 81 00 08 */	ble lbl_80C3EEC8
/* 80C3EEC4  4B 68 FE 79 */	bl __dl__FPv
lbl_80C3EEC8:
/* 80C3EEC8  7F E3 FB 78 */	mr r3, r31
/* 80C3EECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3EED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3EED4  7C 08 03 A6 */	mtlr r0
/* 80C3EED8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3EEDC  4E 80 00 20 */	blr 
