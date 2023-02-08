lbl_80AD7A00:
/* 80AD7A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD7A04  7C 08 02 A6 */	mflr r0
/* 80AD7A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD7A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD7A10  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD7A14  41 82 00 1C */	beq lbl_80AD7A30
/* 80AD7A18  3C A0 80 AD */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80AD7FA4@ha */
/* 80AD7A1C  38 05 7F A4 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80AD7FA4@l */
/* 80AD7A20  90 1F 00 00 */	stw r0, 0(r31)
/* 80AD7A24  7C 80 07 35 */	extsh. r0, r4
/* 80AD7A28  40 81 00 08 */	ble lbl_80AD7A30
/* 80AD7A2C  4B 7F 73 11 */	bl __dl__FPv
lbl_80AD7A30:
/* 80AD7A30  7F E3 FB 78 */	mr r3, r31
/* 80AD7A34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD7A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD7A3C  7C 08 03 A6 */	mtlr r0
/* 80AD7A40  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD7A44  4E 80 00 20 */	blr 
