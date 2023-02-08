lbl_80534E90:
/* 80534E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534E94  7C 08 02 A6 */	mflr r0
/* 80534E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80534EA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80534EA4  41 82 00 1C */	beq lbl_80534EC0
/* 80534EA8  3C A0 80 53 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80536B30@ha */
/* 80534EAC  38 05 6B 30 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80536B30@l */
/* 80534EB0  90 1F 00 00 */	stw r0, 0(r31)
/* 80534EB4  7C 80 07 35 */	extsh. r0, r4
/* 80534EB8  40 81 00 08 */	ble lbl_80534EC0
/* 80534EBC  4B D9 9E 81 */	bl __dl__FPv
lbl_80534EC0:
/* 80534EC0  7F E3 FB 78 */	mr r3, r31
/* 80534EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80534EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80534ECC  7C 08 03 A6 */	mtlr r0
/* 80534ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80534ED4  4E 80 00 20 */	blr 
