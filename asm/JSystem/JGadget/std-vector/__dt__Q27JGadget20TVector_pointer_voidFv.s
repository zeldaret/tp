lbl_802DCCFC:
/* 802DCCFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DCD00  7C 08 02 A6 */	mflr r0
/* 802DCD04  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DCD08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DCD0C  93 C1 00 08 */	stw r30, 8(r1)
/* 802DCD10  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DCD14  7C 9F 23 78 */	mr r31, r4
/* 802DCD18  41 82 00 70 */	beq lbl_802DCD88
/* 802DCD1C  41 82 00 5C */	beq lbl_802DCD78
/* 802DCD20  80 7E 00 08 */	lwz r3, 8(r30)
/* 802DCD24  80 9E 00 04 */	lwz r4, 4(r30)
/* 802DCD28  38 03 00 03 */	addi r0, r3, 3
/* 802DCD2C  7C 03 00 50 */	subf r0, r3, r0
/* 802DCD30  54 00 F0 BE */	srwi r0, r0, 2
/* 802DCD34  7C 09 03 A6 */	mtctr r0
/* 802DCD38  7C 03 18 40 */	cmplw r3, r3
/* 802DCD3C  40 80 00 18 */	bge lbl_802DCD54
lbl_802DCD40:
/* 802DCD40  80 03 00 00 */	lwz r0, 0(r3)
/* 802DCD44  90 04 00 00 */	stw r0, 0(r4)
/* 802DCD48  38 63 00 04 */	addi r3, r3, 4
/* 802DCD4C  38 84 00 04 */	addi r4, r4, 4
/* 802DCD50  42 00 FF F0 */	bdnz lbl_802DCD40
lbl_802DCD54:
/* 802DCD54  80 1E 00 08 */	lwz r0, 8(r30)
/* 802DCD58  7C 83 23 78 */	mr r3, r4
/* 802DCD5C  48 00 00 08 */	b lbl_802DCD64
lbl_802DCD60:
/* 802DCD60  38 63 00 04 */	addi r3, r3, 4
lbl_802DCD64:
/* 802DCD64  7C 03 00 40 */	cmplw r3, r0
/* 802DCD68  40 82 FF F8 */	bne lbl_802DCD60
/* 802DCD6C  90 9E 00 08 */	stw r4, 8(r30)
/* 802DCD70  80 7E 00 04 */	lwz r3, 4(r30)
/* 802DCD74  4B FF 1F C9 */	bl __dl__FPv
lbl_802DCD78:
/* 802DCD78  7F E0 07 35 */	extsh. r0, r31
/* 802DCD7C  40 81 00 0C */	ble lbl_802DCD88
/* 802DCD80  7F C3 F3 78 */	mr r3, r30
/* 802DCD84  4B FF 1F B9 */	bl __dl__FPv
lbl_802DCD88:
/* 802DCD88  7F C3 F3 78 */	mr r3, r30
/* 802DCD8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DCD90  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DCD94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DCD98  7C 08 03 A6 */	mtlr r0
/* 802DCD9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DCDA0  4E 80 00 20 */	blr 
