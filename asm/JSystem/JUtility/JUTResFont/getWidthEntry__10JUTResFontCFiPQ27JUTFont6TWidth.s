lbl_802DFC64:
/* 802DFC64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DFC68  7C 08 02 A6 */	mflr r0
/* 802DFC6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DFC70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DFC74  93 C1 00 08 */	stw r30, 8(r1)
/* 802DFC78  7C 7E 1B 78 */	mr r30, r3
/* 802DFC7C  7C BF 2B 78 */	mr r31, r5
/* 802DFC80  48 00 01 59 */	bl getFontCode__10JUTResFontCFi
/* 802DFC84  38 A0 00 00 */	li r5, 0
/* 802DFC88  98 BF 00 00 */	stb r5, 0(r31)
/* 802DFC8C  80 9E 00 4C */	lwz r4, 0x4c(r30)
/* 802DFC90  A0 04 00 0E */	lhz r0, 0xe(r4)
/* 802DFC94  98 1F 00 01 */	stb r0, 1(r31)
/* 802DFC98  A0 1E 00 60 */	lhz r0, 0x60(r30)
/* 802DFC9C  80 9E 00 54 */	lwz r4, 0x54(r30)
/* 802DFCA0  7C 09 03 A6 */	mtctr r0
/* 802DFCA4  2C 00 00 00 */	cmpwi r0, 0
/* 802DFCA8  40 81 00 4C */	ble lbl_802DFCF4
lbl_802DFCAC:
/* 802DFCAC  7C C4 28 2E */	lwzx r6, r4, r5
/* 802DFCB0  A0 E6 00 08 */	lhz r7, 8(r6)
/* 802DFCB4  7C 07 18 00 */	cmpw r7, r3
/* 802DFCB8  41 81 00 34 */	bgt lbl_802DFCEC
/* 802DFCBC  A0 06 00 0A */	lhz r0, 0xa(r6)
/* 802DFCC0  7C 03 00 00 */	cmpw r3, r0
/* 802DFCC4  41 81 00 28 */	bgt lbl_802DFCEC
/* 802DFCC8  7C 07 18 50 */	subf r0, r7, r3
/* 802DFCCC  54 03 08 3C */	slwi r3, r0, 1
/* 802DFCD0  38 63 00 0C */	addi r3, r3, 0xc
/* 802DFCD4  7C 66 1A 14 */	add r3, r6, r3
/* 802DFCD8  88 03 00 00 */	lbz r0, 0(r3)
/* 802DFCDC  98 1F 00 00 */	stb r0, 0(r31)
/* 802DFCE0  88 03 00 01 */	lbz r0, 1(r3)
/* 802DFCE4  98 1F 00 01 */	stb r0, 1(r31)
/* 802DFCE8  48 00 00 0C */	b lbl_802DFCF4
lbl_802DFCEC:
/* 802DFCEC  38 A5 00 04 */	addi r5, r5, 4
/* 802DFCF0  42 00 FF BC */	bdnz lbl_802DFCAC
lbl_802DFCF4:
/* 802DFCF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DFCF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DFCFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DFD00  7C 08 03 A6 */	mtlr r0
/* 802DFD04  38 21 00 10 */	addi r1, r1, 0x10
/* 802DFD08  4E 80 00 20 */	blr 
