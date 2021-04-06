lbl_80A9B1D8:
/* 80A9B1D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9B1DC  7C 08 02 A6 */	mflr r0
/* 80A9B1E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9B1E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9B1E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9B1EC  41 82 00 1C */	beq lbl_80A9B208
/* 80A9B1F0  3C A0 80 AA */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80A9C018@ha */
/* 80A9B1F4  38 05 C0 18 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80A9C018@l */
/* 80A9B1F8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A9B1FC  7C 80 07 35 */	extsh. r0, r4
/* 80A9B200  40 81 00 08 */	ble lbl_80A9B208
/* 80A9B204  4B 83 3B 39 */	bl __dl__FPv
lbl_80A9B208:
/* 80A9B208  7F E3 FB 78 */	mr r3, r31
/* 80A9B20C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9B210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9B214  7C 08 03 A6 */	mtlr r0
/* 80A9B218  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9B21C  4E 80 00 20 */	blr 
