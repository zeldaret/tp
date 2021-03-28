lbl_80D2E3E8:
/* 80D2E3E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2E3EC  7C 08 02 A6 */	mflr r0
/* 80D2E3F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2E3F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2E3F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2E3FC  41 82 00 1C */	beq lbl_80D2E418
/* 80D2E400  3C A0 80 D3 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D2E404  38 05 EA EC */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D2E408  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2E40C  7C 80 07 35 */	extsh. r0, r4
/* 80D2E410  40 81 00 08 */	ble lbl_80D2E418
/* 80D2E414  4B 5A 09 28 */	b __dl__FPv
lbl_80D2E418:
/* 80D2E418  7F E3 FB 78 */	mr r3, r31
/* 80D2E41C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2E420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2E424  7C 08 03 A6 */	mtlr r0
/* 80D2E428  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2E42C  4E 80 00 20 */	blr 
