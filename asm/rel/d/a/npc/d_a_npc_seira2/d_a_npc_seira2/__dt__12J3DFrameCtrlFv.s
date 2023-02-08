lbl_80AD4278:
/* 80AD4278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD427C  7C 08 02 A6 */	mflr r0
/* 80AD4280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD4284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD4288  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD428C  41 82 00 1C */	beq lbl_80AD42A8
/* 80AD4290  3C A0 80 AD */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80AD54A0@ha */
/* 80AD4294  38 05 54 A0 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80AD54A0@l */
/* 80AD4298  90 1F 00 00 */	stw r0, 0(r31)
/* 80AD429C  7C 80 07 35 */	extsh. r0, r4
/* 80AD42A0  40 81 00 08 */	ble lbl_80AD42A8
/* 80AD42A4  4B 7F AA 99 */	bl __dl__FPv
lbl_80AD42A8:
/* 80AD42A8  7F E3 FB 78 */	mr r3, r31
/* 80AD42AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD42B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD42B4  7C 08 03 A6 */	mtlr r0
/* 80AD42B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD42BC  4E 80 00 20 */	blr 
