lbl_80B73F20:
/* 80B73F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B73F24  7C 08 02 A6 */	mflr r0
/* 80B73F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B73F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B73F30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B73F34  41 82 00 1C */	beq lbl_80B73F50
/* 80B73F38  3C A0 80 B7 */	lis r5, __vt__8cM3dGAab@ha /* 0x80B74F30@ha */
/* 80B73F3C  38 05 4F 30 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B74F30@l */
/* 80B73F40  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B73F44  7C 80 07 35 */	extsh. r0, r4
/* 80B73F48  40 81 00 08 */	ble lbl_80B73F50
/* 80B73F4C  4B 75 AD F1 */	bl __dl__FPv
lbl_80B73F50:
/* 80B73F50  7F E3 FB 78 */	mr r3, r31
/* 80B73F54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B73F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B73F5C  7C 08 03 A6 */	mtlr r0
/* 80B73F60  38 21 00 10 */	addi r1, r1, 0x10
/* 80B73F64  4E 80 00 20 */	blr 
