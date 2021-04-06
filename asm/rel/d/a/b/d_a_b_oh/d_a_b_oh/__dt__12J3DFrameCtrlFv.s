lbl_8061D39C:
/* 8061D39C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061D3A0  7C 08 02 A6 */	mflr r0
/* 8061D3A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061D3A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061D3AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8061D3B0  41 82 00 1C */	beq lbl_8061D3CC
/* 8061D3B4  3C A0 80 62 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8061DB54@ha */
/* 8061D3B8  38 05 DB 54 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8061DB54@l */
/* 8061D3BC  90 1F 00 00 */	stw r0, 0(r31)
/* 8061D3C0  7C 80 07 35 */	extsh. r0, r4
/* 8061D3C4  40 81 00 08 */	ble lbl_8061D3CC
/* 8061D3C8  4B CB 19 75 */	bl __dl__FPv
lbl_8061D3CC:
/* 8061D3CC  7F E3 FB 78 */	mr r3, r31
/* 8061D3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061D3D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061D3D8  7C 08 03 A6 */	mtlr r0
/* 8061D3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8061D3E0  4E 80 00 20 */	blr 
