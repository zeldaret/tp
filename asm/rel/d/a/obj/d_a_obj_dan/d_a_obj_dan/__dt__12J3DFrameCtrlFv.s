lbl_80BDA9B0:
/* 80BDA9B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDA9B4  7C 08 02 A6 */	mflr r0
/* 80BDA9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDA9BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDA9C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BDA9C4  41 82 00 1C */	beq lbl_80BDA9E0
/* 80BDA9C8  3C A0 80 BE */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80BDC544@ha */
/* 80BDA9CC  38 05 C5 44 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80BDC544@l */
/* 80BDA9D0  90 1F 00 00 */	stw r0, 0(r31)
/* 80BDA9D4  7C 80 07 35 */	extsh. r0, r4
/* 80BDA9D8  40 81 00 08 */	ble lbl_80BDA9E0
/* 80BDA9DC  4B 6F 43 61 */	bl __dl__FPv
lbl_80BDA9E0:
/* 80BDA9E0  7F E3 FB 78 */	mr r3, r31
/* 80BDA9E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDA9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDA9EC  7C 08 03 A6 */	mtlr r0
/* 80BDA9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDA9F4  4E 80 00 20 */	blr 
