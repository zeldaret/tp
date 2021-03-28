lbl_805959E8:
/* 805959E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805959EC  7C 08 02 A6 */	mflr r0
/* 805959F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805959F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805959F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 805959FC  41 82 00 1C */	beq lbl_80595A18
/* 80595A00  3C A0 80 59 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80595A04  38 05 5D B4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80595A08  90 1F 00 00 */	stw r0, 0(r31)
/* 80595A0C  7C 80 07 35 */	extsh. r0, r4
/* 80595A10  40 81 00 08 */	ble lbl_80595A18
/* 80595A14  4B D3 93 28 */	b __dl__FPv
lbl_80595A18:
/* 80595A18  7F E3 FB 78 */	mr r3, r31
/* 80595A1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80595A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595A24  7C 08 03 A6 */	mtlr r0
/* 80595A28  38 21 00 10 */	addi r1, r1, 0x10
/* 80595A2C  4E 80 00 20 */	blr 
