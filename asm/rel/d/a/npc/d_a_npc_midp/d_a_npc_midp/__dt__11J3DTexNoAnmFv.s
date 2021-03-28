lbl_80A713A8:
/* 80A713A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A713AC  7C 08 02 A6 */	mflr r0
/* 80A713B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A713B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A713B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A713BC  41 82 00 1C */	beq lbl_80A713D8
/* 80A713C0  3C A0 80 A7 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80A713C4  38 05 3B DC */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80A713C8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A713CC  7C 80 07 35 */	extsh. r0, r4
/* 80A713D0  40 81 00 08 */	ble lbl_80A713D8
/* 80A713D4  4B 85 D9 68 */	b __dl__FPv
lbl_80A713D8:
/* 80A713D8  7F E3 FB 78 */	mr r3, r31
/* 80A713DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A713E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A713E4  7C 08 03 A6 */	mtlr r0
/* 80A713E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A713EC  4E 80 00 20 */	blr 
