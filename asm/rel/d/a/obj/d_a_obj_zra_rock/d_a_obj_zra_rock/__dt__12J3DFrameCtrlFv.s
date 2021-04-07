lbl_80D452D4:
/* 80D452D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D452D8  7C 08 02 A6 */	mflr r0
/* 80D452DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D452E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D452E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D452E8  41 82 00 1C */	beq lbl_80D45304
/* 80D452EC  3C A0 80 D4 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80D45668@ha */
/* 80D452F0  38 05 56 68 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80D45668@l */
/* 80D452F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D452F8  7C 80 07 35 */	extsh. r0, r4
/* 80D452FC  40 81 00 08 */	ble lbl_80D45304
/* 80D45300  4B 58 9A 3D */	bl __dl__FPv
lbl_80D45304:
/* 80D45304  7F E3 FB 78 */	mr r3, r31
/* 80D45308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4530C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D45310  7C 08 03 A6 */	mtlr r0
/* 80D45314  38 21 00 10 */	addi r1, r1, 0x10
/* 80D45318  4E 80 00 20 */	blr 
