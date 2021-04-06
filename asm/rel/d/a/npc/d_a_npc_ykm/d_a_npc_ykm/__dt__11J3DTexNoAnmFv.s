lbl_80B53FA8:
/* 80B53FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B53FAC  7C 08 02 A6 */	mflr r0
/* 80B53FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B53FB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B53FB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B53FBC  41 82 00 1C */	beq lbl_80B53FD8
/* 80B53FC0  3C A0 80 B6 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80B5EB9C@ha */
/* 80B53FC4  38 05 EB 9C */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80B5EB9C@l */
/* 80B53FC8  90 1F 00 00 */	stw r0, 0(r31)
/* 80B53FCC  7C 80 07 35 */	extsh. r0, r4
/* 80B53FD0  40 81 00 08 */	ble lbl_80B53FD8
/* 80B53FD4  4B 77 AD 69 */	bl __dl__FPv
lbl_80B53FD8:
/* 80B53FD8  7F E3 FB 78 */	mr r3, r31
/* 80B53FDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B53FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B53FE4  7C 08 03 A6 */	mtlr r0
/* 80B53FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B53FEC  4E 80 00 20 */	blr 
