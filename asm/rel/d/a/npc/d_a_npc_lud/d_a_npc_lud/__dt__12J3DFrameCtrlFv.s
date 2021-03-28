lbl_80A6F69C:
/* 80A6F69C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6F6A0  7C 08 02 A6 */	mflr r0
/* 80A6F6A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6F6A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6F6AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6F6B0  41 82 00 1C */	beq lbl_80A6F6CC
/* 80A6F6B4  3C A0 80 A7 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80A6F6B8  38 05 09 EC */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80A6F6BC  90 1F 00 00 */	stw r0, 0(r31)
/* 80A6F6C0  7C 80 07 35 */	extsh. r0, r4
/* 80A6F6C4  40 81 00 08 */	ble lbl_80A6F6CC
/* 80A6F6C8  4B 85 F6 74 */	b __dl__FPv
lbl_80A6F6CC:
/* 80A6F6CC  7F E3 FB 78 */	mr r3, r31
/* 80A6F6D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6F6D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6F6D8  7C 08 03 A6 */	mtlr r0
/* 80A6F6DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6F6E0  4E 80 00 20 */	blr 
