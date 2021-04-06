lbl_809F9A24:
/* 809F9A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F9A28  7C 08 02 A6 */	mflr r0
/* 809F9A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F9A30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F9A34  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F9A38  41 82 00 1C */	beq lbl_809F9A54
/* 809F9A3C  3C A0 80 A0 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80A010F8@ha */
/* 809F9A40  38 05 10 F8 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80A010F8@l */
/* 809F9A44  90 1F 00 00 */	stw r0, 0(r31)
/* 809F9A48  7C 80 07 35 */	extsh. r0, r4
/* 809F9A4C  40 81 00 08 */	ble lbl_809F9A54
/* 809F9A50  4B 8D 52 ED */	bl __dl__FPv
lbl_809F9A54:
/* 809F9A54  7F E3 FB 78 */	mr r3, r31
/* 809F9A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F9A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F9A60  7C 08 03 A6 */	mtlr r0
/* 809F9A64  38 21 00 10 */	addi r1, r1, 0x10
/* 809F9A68  4E 80 00 20 */	blr 
