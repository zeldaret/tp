lbl_80D02A10:
/* 80D02A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D02A14  7C 08 02 A6 */	mflr r0
/* 80D02A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02A1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D02A20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D02A24  41 82 00 1C */	beq lbl_80D02A40
/* 80D02A28  3C A0 80 D0 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80D041C8@ha */
/* 80D02A2C  38 05 41 C8 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80D041C8@l */
/* 80D02A30  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D02A34  7C 80 07 35 */	extsh. r0, r4
/* 80D02A38  40 81 00 08 */	ble lbl_80D02A40
/* 80D02A3C  4B 5C C3 01 */	bl __dl__FPv
lbl_80D02A40:
/* 80D02A40  7F E3 FB 78 */	mr r3, r31
/* 80D02A44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D02A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D02A4C  7C 08 03 A6 */	mtlr r0
/* 80D02A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02A54  4E 80 00 20 */	blr 
