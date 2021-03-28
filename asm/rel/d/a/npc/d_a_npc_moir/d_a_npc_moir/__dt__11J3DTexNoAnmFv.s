lbl_80A7CD34:
/* 80A7CD34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7CD38  7C 08 02 A6 */	mflr r0
/* 80A7CD3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7CD40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7CD44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A7CD48  41 82 00 1C */	beq lbl_80A7CD64
/* 80A7CD4C  3C A0 80 A8 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80A7CD50  38 05 3C 88 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80A7CD54  90 1F 00 00 */	stw r0, 0(r31)
/* 80A7CD58  7C 80 07 35 */	extsh. r0, r4
/* 80A7CD5C  40 81 00 08 */	ble lbl_80A7CD64
/* 80A7CD60  4B 85 1F DC */	b __dl__FPv
lbl_80A7CD64:
/* 80A7CD64  7F E3 FB 78 */	mr r3, r31
/* 80A7CD68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7CD6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7CD70  7C 08 03 A6 */	mtlr r0
/* 80A7CD74  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7CD78  4E 80 00 20 */	blr 
