lbl_80496DF4:
/* 80496DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80496DF8  7C 08 02 A6 */	mflr r0
/* 80496DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80496E00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80496E04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80496E08  41 82 00 1C */	beq lbl_80496E24
/* 80496E0C  3C A0 80 4A */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80498444@ha */
/* 80496E10  38 05 84 44 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80498444@l */
/* 80496E14  90 1F 00 00 */	stw r0, 0(r31)
/* 80496E18  7C 80 07 35 */	extsh. r0, r4
/* 80496E1C  40 81 00 08 */	ble lbl_80496E24
/* 80496E20  4B E3 7F 1D */	bl __dl__FPv
lbl_80496E24:
/* 80496E24  7F E3 FB 78 */	mr r3, r31
/* 80496E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80496E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496E30  7C 08 03 A6 */	mtlr r0
/* 80496E34  38 21 00 10 */	addi r1, r1, 0x10
/* 80496E38  4E 80 00 20 */	blr 
