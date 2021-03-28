lbl_8066EC40:
/* 8066EC40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066EC44  7C 08 02 A6 */	mflr r0
/* 8066EC48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066EC4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8066EC50  7C 7F 1B 79 */	or. r31, r3, r3
/* 8066EC54  41 82 00 1C */	beq lbl_8066EC70
/* 8066EC58  3C A0 80 67 */	lis r5, __vt__8cM3dGSph@ha
/* 8066EC5C  38 05 F2 1C */	addi r0, r5, __vt__8cM3dGSph@l
/* 8066EC60  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8066EC64  7C 80 07 35 */	extsh. r0, r4
/* 8066EC68  40 81 00 08 */	ble lbl_8066EC70
/* 8066EC6C  4B C6 00 D0 */	b __dl__FPv
lbl_8066EC70:
/* 8066EC70  7F E3 FB 78 */	mr r3, r31
/* 8066EC74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8066EC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066EC7C  7C 08 03 A6 */	mtlr r0
/* 8066EC80  38 21 00 10 */	addi r1, r1, 0x10
/* 8066EC84  4E 80 00 20 */	blr 
