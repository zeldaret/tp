lbl_80A29EC0:
/* 80A29EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29EC4  7C 08 02 A6 */	mflr r0
/* 80A29EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29ECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A29ED0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A29ED4  41 82 00 1C */	beq lbl_80A29EF0
/* 80A29ED8  3C A0 80 A3 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80A29EDC  38 05 A6 EC */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80A29EE0  90 1F 00 00 */	stw r0, 0(r31)
/* 80A29EE4  7C 80 07 35 */	extsh. r0, r4
/* 80A29EE8  40 81 00 08 */	ble lbl_80A29EF0
/* 80A29EEC  4B 8A 4E 50 */	b __dl__FPv
lbl_80A29EF0:
/* 80A29EF0  7F E3 FB 78 */	mr r3, r31
/* 80A29EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A29EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A29EFC  7C 08 03 A6 */	mtlr r0
/* 80A29F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80A29F04  4E 80 00 20 */	blr 
