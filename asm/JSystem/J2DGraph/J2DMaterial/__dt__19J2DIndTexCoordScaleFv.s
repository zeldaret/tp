lbl_802EB290:
/* 802EB290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EB294  7C 08 02 A6 */	mflr r0
/* 802EB298  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EB29C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EB2A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EB2A4  41 82 00 10 */	beq lbl_802EB2B4
/* 802EB2A8  7C 80 07 35 */	extsh. r0, r4
/* 802EB2AC  40 81 00 08 */	ble lbl_802EB2B4
/* 802EB2B0  4B FE 3A 8D */	bl __dl__FPv
lbl_802EB2B4:
/* 802EB2B4  7F E3 FB 78 */	mr r3, r31
/* 802EB2B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EB2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EB2C0  7C 08 03 A6 */	mtlr r0
/* 802EB2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802EB2C8  4E 80 00 20 */	blr 
