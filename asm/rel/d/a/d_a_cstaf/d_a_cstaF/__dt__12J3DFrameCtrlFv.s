lbl_804DE290:
/* 804DE290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE294  7C 08 02 A6 */	mflr r0
/* 804DE298  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE29C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE2A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DE2A4  41 82 00 1C */	beq lbl_804DE2C0
/* 804DE2A8  3C A0 80 4E */	lis r5, __vt__12J3DFrameCtrl@ha
/* 804DE2AC  38 05 FA A0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 804DE2B0  90 1F 00 00 */	stw r0, 0(r31)
/* 804DE2B4  7C 80 07 35 */	extsh. r0, r4
/* 804DE2B8  40 81 00 08 */	ble lbl_804DE2C0
/* 804DE2BC  4B DF 0A 80 */	b __dl__FPv
lbl_804DE2C0:
/* 804DE2C0  7F E3 FB 78 */	mr r3, r31
/* 804DE2C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE2CC  7C 08 03 A6 */	mtlr r0
/* 804DE2D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE2D4  4E 80 00 20 */	blr 
