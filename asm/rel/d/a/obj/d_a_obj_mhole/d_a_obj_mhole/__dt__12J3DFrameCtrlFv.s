lbl_80C93498:
/* 80C93498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9349C  7C 08 02 A6 */	mflr r0
/* 80C934A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C934A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C934A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C934AC  41 82 00 1C */	beq lbl_80C934C8
/* 80C934B0  3C A0 80 C9 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C934B4  38 05 3E C4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C934B8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C934BC  7C 80 07 35 */	extsh. r0, r4
/* 80C934C0  40 81 00 08 */	ble lbl_80C934C8
/* 80C934C4  4B 63 B8 78 */	b __dl__FPv
lbl_80C934C8:
/* 80C934C8  7F E3 FB 78 */	mr r3, r31
/* 80C934CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C934D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C934D4  7C 08 03 A6 */	mtlr r0
/* 80C934D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C934DC  4E 80 00 20 */	blr 
