lbl_80A3C62C:
/* 80A3C62C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C630  7C 08 02 A6 */	mflr r0
/* 80A3C634  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C63C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A3C640  41 82 00 1C */	beq lbl_80A3C65C
/* 80A3C644  3C A0 80 A4 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80A43228@ha */
/* 80A3C648  38 05 32 28 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80A43228@l */
/* 80A3C64C  90 1F 00 00 */	stw r0, 0(r31)
/* 80A3C650  7C 80 07 35 */	extsh. r0, r4
/* 80A3C654  40 81 00 08 */	ble lbl_80A3C65C
/* 80A3C658  4B 89 26 E5 */	bl __dl__FPv
lbl_80A3C65C:
/* 80A3C65C  7F E3 FB 78 */	mr r3, r31
/* 80A3C660  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C668  7C 08 03 A6 */	mtlr r0
/* 80A3C66C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C670  4E 80 00 20 */	blr 
