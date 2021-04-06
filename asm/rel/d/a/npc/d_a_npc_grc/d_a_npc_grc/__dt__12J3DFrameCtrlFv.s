lbl_809CF3B0:
/* 809CF3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CF3B4  7C 08 02 A6 */	mflr r0
/* 809CF3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CF3BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CF3C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809CF3C4  41 82 00 1C */	beq lbl_809CF3E0
/* 809CF3C8  3C A0 80 9D */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x809CFACC@ha */
/* 809CF3CC  38 05 FA CC */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x809CFACC@l */
/* 809CF3D0  90 1F 00 00 */	stw r0, 0(r31)
/* 809CF3D4  7C 80 07 35 */	extsh. r0, r4
/* 809CF3D8  40 81 00 08 */	ble lbl_809CF3E0
/* 809CF3DC  4B 8F F9 61 */	bl __dl__FPv
lbl_809CF3E0:
/* 809CF3E0  7F E3 FB 78 */	mr r3, r31
/* 809CF3E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CF3E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CF3EC  7C 08 03 A6 */	mtlr r0
/* 809CF3F0  38 21 00 10 */	addi r1, r1, 0x10
/* 809CF3F4  4E 80 00 20 */	blr 
