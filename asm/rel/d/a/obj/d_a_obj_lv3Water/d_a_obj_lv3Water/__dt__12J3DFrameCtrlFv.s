lbl_80C58D20:
/* 80C58D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C58D24  7C 08 02 A6 */	mflr r0
/* 80C58D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C58D2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C58D30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C58D34  41 82 00 1C */	beq lbl_80C58D50
/* 80C58D38  3C A0 80 C6 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C5A278@ha */
/* 80C58D3C  38 05 A2 78 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C5A278@l */
/* 80C58D40  90 1F 00 00 */	stw r0, 0(r31)
/* 80C58D44  7C 80 07 35 */	extsh. r0, r4
/* 80C58D48  40 81 00 08 */	ble lbl_80C58D50
/* 80C58D4C  4B 67 5F F1 */	bl __dl__FPv
lbl_80C58D50:
/* 80C58D50  7F E3 FB 78 */	mr r3, r31
/* 80C58D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C58D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C58D5C  7C 08 03 A6 */	mtlr r0
/* 80C58D60  38 21 00 10 */	addi r1, r1, 0x10
/* 80C58D64  4E 80 00 20 */	blr 
