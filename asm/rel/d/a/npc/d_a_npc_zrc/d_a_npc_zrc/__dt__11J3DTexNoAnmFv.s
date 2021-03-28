lbl_80B8E71C:
/* 80B8E71C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8E720  7C 08 02 A6 */	mflr r0
/* 80B8E724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8E728  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8E72C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B8E730  41 82 00 1C */	beq lbl_80B8E74C
/* 80B8E734  3C A0 80 B9 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80B8E738  38 05 3B 24 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80B8E73C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B8E740  7C 80 07 35 */	extsh. r0, r4
/* 80B8E744  40 81 00 08 */	ble lbl_80B8E74C
/* 80B8E748  4B 74 05 F4 */	b __dl__FPv
lbl_80B8E74C:
/* 80B8E74C  7F E3 FB 78 */	mr r3, r31
/* 80B8E750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B8E754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8E758  7C 08 03 A6 */	mtlr r0
/* 80B8E75C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8E760  4E 80 00 20 */	blr 
