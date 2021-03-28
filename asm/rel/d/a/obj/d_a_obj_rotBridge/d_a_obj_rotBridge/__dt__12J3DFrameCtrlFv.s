lbl_80CBEED4:
/* 80CBEED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBEED8  7C 08 02 A6 */	mflr r0
/* 80CBEEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBEEE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBEEE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBEEE8  41 82 00 1C */	beq lbl_80CBEF04
/* 80CBEEEC  3C A0 80 CC */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80CBEEF0  38 05 F7 34 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80CBEEF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBEEF8  7C 80 07 35 */	extsh. r0, r4
/* 80CBEEFC  40 81 00 08 */	ble lbl_80CBEF04
/* 80CBEF00  4B 60 FE 3C */	b __dl__FPv
lbl_80CBEF04:
/* 80CBEF04  7F E3 FB 78 */	mr r3, r31
/* 80CBEF08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBEF0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBEF10  7C 08 03 A6 */	mtlr r0
/* 80CBEF14  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBEF18  4E 80 00 20 */	blr 
