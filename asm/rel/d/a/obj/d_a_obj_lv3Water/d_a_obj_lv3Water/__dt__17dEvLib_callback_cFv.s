lbl_80C59D20:
/* 80C59D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C59D24  7C 08 02 A6 */	mflr r0
/* 80C59D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C59D2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C59D30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C59D34  41 82 00 1C */	beq lbl_80C59D50
/* 80C59D38  3C A0 80 C6 */	lis r5, __vt__17dEvLib_callback_c@ha
/* 80C59D3C  38 05 A2 84 */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 80C59D40  90 1F 00 00 */	stw r0, 0(r31)
/* 80C59D44  7C 80 07 35 */	extsh. r0, r4
/* 80C59D48  40 81 00 08 */	ble lbl_80C59D50
/* 80C59D4C  4B 67 4F F0 */	b __dl__FPv
lbl_80C59D50:
/* 80C59D50  7F E3 FB 78 */	mr r3, r31
/* 80C59D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C59D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C59D5C  7C 08 03 A6 */	mtlr r0
/* 80C59D60  38 21 00 10 */	addi r1, r1, 0x10
/* 80C59D64  4E 80 00 20 */	blr 
