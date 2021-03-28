lbl_809BBD18:
/* 809BBD18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BBD1C  7C 08 02 A6 */	mflr r0
/* 809BBD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BBD24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BBD28  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BBD2C  41 82 00 1C */	beq lbl_809BBD48
/* 809BBD30  3C A0 80 9C */	lis r5, __vt__11J3DTexNoAnm@ha
/* 809BBD34  38 05 E6 D4 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 809BBD38  90 1F 00 00 */	stw r0, 0(r31)
/* 809BBD3C  7C 80 07 35 */	extsh. r0, r4
/* 809BBD40  40 81 00 08 */	ble lbl_809BBD48
/* 809BBD44  4B 91 2F F8 */	b __dl__FPv
lbl_809BBD48:
/* 809BBD48  7F E3 FB 78 */	mr r3, r31
/* 809BBD4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BBD50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BBD54  7C 08 03 A6 */	mtlr r0
/* 809BBD58  38 21 00 10 */	addi r1, r1, 0x10
/* 809BBD5C  4E 80 00 20 */	blr 
