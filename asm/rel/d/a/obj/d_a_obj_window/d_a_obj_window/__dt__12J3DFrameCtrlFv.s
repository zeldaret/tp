lbl_80D38A20:
/* 80D38A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D38A24  7C 08 02 A6 */	mflr r0
/* 80D38A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38A2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D38A30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D38A34  41 82 00 1C */	beq lbl_80D38A50
/* 80D38A38  3C A0 80 D4 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80D39334@ha */
/* 80D38A3C  38 05 93 34 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80D39334@l */
/* 80D38A40  90 1F 00 00 */	stw r0, 0(r31)
/* 80D38A44  7C 80 07 35 */	extsh. r0, r4
/* 80D38A48  40 81 00 08 */	ble lbl_80D38A50
/* 80D38A4C  4B 59 62 F1 */	bl __dl__FPv
lbl_80D38A50:
/* 80D38A50  7F E3 FB 78 */	mr r3, r31
/* 80D38A54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D38A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D38A5C  7C 08 03 A6 */	mtlr r0
/* 80D38A60  38 21 00 10 */	addi r1, r1, 0x10
/* 80D38A64  4E 80 00 20 */	blr 
