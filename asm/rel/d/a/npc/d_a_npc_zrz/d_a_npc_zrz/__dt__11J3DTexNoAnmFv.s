lbl_80B948E0:
/* 80B948E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B948E4  7C 08 02 A6 */	mflr r0
/* 80B948E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B948EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B948F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B948F4  41 82 00 1C */	beq lbl_80B94910
/* 80B948F8  3C A0 80 BA */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80B9B764@ha */
/* 80B948FC  38 05 B7 64 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80B9B764@l */
/* 80B94900  90 1F 00 00 */	stw r0, 0(r31)
/* 80B94904  7C 80 07 35 */	extsh. r0, r4
/* 80B94908  40 81 00 08 */	ble lbl_80B94910
/* 80B9490C  4B 73 A4 31 */	bl __dl__FPv
lbl_80B94910:
/* 80B94910  7F E3 FB 78 */	mr r3, r31
/* 80B94914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B94918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9491C  7C 08 03 A6 */	mtlr r0
/* 80B94920  38 21 00 10 */	addi r1, r1, 0x10
/* 80B94924  4E 80 00 20 */	blr 
