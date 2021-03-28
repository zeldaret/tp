lbl_80A6B4E8:
/* 80A6B4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6B4EC  7C 08 02 A6 */	mflr r0
/* 80A6B4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6B4F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6B4F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6B4FC  41 82 00 1C */	beq lbl_80A6B518
/* 80A6B500  3C A0 80 A7 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80A6B504  38 05 09 E0 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80A6B508  90 1F 00 00 */	stw r0, 0(r31)
/* 80A6B50C  7C 80 07 35 */	extsh. r0, r4
/* 80A6B510  40 81 00 08 */	ble lbl_80A6B518
/* 80A6B514  4B 86 38 28 */	b __dl__FPv
lbl_80A6B518:
/* 80A6B518  7F E3 FB 78 */	mr r3, r31
/* 80A6B51C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6B520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6B524  7C 08 03 A6 */	mtlr r0
/* 80A6B528  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6B52C  4E 80 00 20 */	blr 
