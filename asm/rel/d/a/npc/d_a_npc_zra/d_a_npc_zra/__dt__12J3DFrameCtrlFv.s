lbl_80B7F0A0:
/* 80B7F0A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7F0A4  7C 08 02 A6 */	mflr r0
/* 80B7F0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7F0AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7F0B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7F0B4  41 82 00 1C */	beq lbl_80B7F0D0
/* 80B7F0B8  3C A0 80 B9 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B8DA28@ha */
/* 80B7F0BC  38 05 DA 28 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B8DA28@l */
/* 80B7F0C0  90 1F 00 00 */	stw r0, 0(r31)
/* 80B7F0C4  7C 80 07 35 */	extsh. r0, r4
/* 80B7F0C8  40 81 00 08 */	ble lbl_80B7F0D0
/* 80B7F0CC  4B 74 FC 71 */	bl __dl__FPv
lbl_80B7F0D0:
/* 80B7F0D0  7F E3 FB 78 */	mr r3, r31
/* 80B7F0D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7F0D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7F0DC  7C 08 03 A6 */	mtlr r0
/* 80B7F0E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7F0E4  4E 80 00 20 */	blr 
