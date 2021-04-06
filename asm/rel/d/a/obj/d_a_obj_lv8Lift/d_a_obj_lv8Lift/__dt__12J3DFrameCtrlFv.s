lbl_80C88D24:
/* 80C88D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C88D28  7C 08 02 A6 */	mflr r0
/* 80C88D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C88D30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C88D34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C88D38  41 82 00 1C */	beq lbl_80C88D54
/* 80C88D3C  3C A0 80 C9 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C8A194@ha */
/* 80C88D40  38 05 A1 94 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C8A194@l */
/* 80C88D44  90 1F 00 00 */	stw r0, 0(r31)
/* 80C88D48  7C 80 07 35 */	extsh. r0, r4
/* 80C88D4C  40 81 00 08 */	ble lbl_80C88D54
/* 80C88D50  4B 64 5F ED */	bl __dl__FPv
lbl_80C88D54:
/* 80C88D54  7F E3 FB 78 */	mr r3, r31
/* 80C88D58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C88D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C88D60  7C 08 03 A6 */	mtlr r0
/* 80C88D64  38 21 00 10 */	addi r1, r1, 0x10
/* 80C88D68  4E 80 00 20 */	blr 
