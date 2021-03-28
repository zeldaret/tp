lbl_802BBBE0:
/* 802BBBE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BBBE4  7C 08 02 A6 */	mflr r0
/* 802BBBE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BBBEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BBBF0  93 C1 00 08 */	stw r30, 8(r1)
/* 802BBBF4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802BBBF8  7C 9F 23 78 */	mr r31, r4
/* 802BBBFC  41 82 00 A4 */	beq lbl_802BBCA0
/* 802BBC00  3C 60 80 3D */	lis r3, __vt__11Z2SoundInfo@ha
/* 802BBC04  38 63 AC 48 */	addi r3, r3, __vt__11Z2SoundInfo@l
/* 802BBC08  90 7E 00 00 */	stw r3, 0(r30)
/* 802BBC0C  38 03 00 24 */	addi r0, r3, 0x24
/* 802BBC10  90 1E 00 04 */	stw r0, 4(r30)
/* 802BBC14  38 03 00 34 */	addi r0, r3, 0x34
/* 802BBC18  90 1E 00 08 */	stw r0, 8(r30)
/* 802BBC1C  34 1E 00 0C */	addic. r0, r30, 0xc
/* 802BBC20  41 82 00 24 */	beq lbl_802BBC44
/* 802BBC24  34 7E 00 0C */	addic. r3, r30, 0xc
/* 802BBC28  41 82 00 08 */	beq lbl_802BBC30
/* 802BBC2C  38 63 FF F4 */	addi r3, r3, -12
lbl_802BBC30:
/* 802BBC30  80 0D 85 CC */	lwz r0, data_80450B4C(r13)
/* 802BBC34  7C 00 18 40 */	cmplw r0, r3
/* 802BBC38  40 82 00 0C */	bne lbl_802BBC44
/* 802BBC3C  38 00 00 00 */	li r0, 0
/* 802BBC40  90 0D 85 CC */	stw r0, data_80450B4C(r13)
lbl_802BBC44:
/* 802BBC44  38 7E 00 08 */	addi r3, r30, 8
/* 802BBC48  38 80 00 00 */	li r4, 0
/* 802BBC4C  4B FE 7E 8D */	bl __dt__16JAIStreamDataMgrFv
/* 802BBC50  34 1E 00 04 */	addic. r0, r30, 4
/* 802BBC54  41 82 00 30 */	beq lbl_802BBC84
/* 802BBC58  3C 60 80 3A */	lis r3, __vt__12JAUSoundInfo@ha
/* 802BBC5C  38 03 2F 4C */	addi r0, r3, __vt__12JAUSoundInfo@l
/* 802BBC60  90 1E 00 04 */	stw r0, 4(r30)
/* 802BBC64  34 1E 00 04 */	addic. r0, r30, 4
/* 802BBC68  41 82 00 1C */	beq lbl_802BBC84
/* 802BBC6C  80 6D 85 D0 */	lwz r3, data_80450B50(r13)
/* 802BBC70  38 1E 00 04 */	addi r0, r30, 4
/* 802BBC74  7C 03 00 40 */	cmplw r3, r0
/* 802BBC78  40 82 00 0C */	bne lbl_802BBC84
/* 802BBC7C  38 00 00 00 */	li r0, 0
/* 802BBC80  90 0D 85 D0 */	stw r0, data_80450B50(r13)
lbl_802BBC84:
/* 802BBC84  7F C3 F3 78 */	mr r3, r30
/* 802BBC88  38 80 00 00 */	li r4, 0
/* 802BBC8C  4B FE 70 C5 */	bl __dt__12JAISoundInfoFv
/* 802BBC90  7F E0 07 35 */	extsh. r0, r31
/* 802BBC94  40 81 00 0C */	ble lbl_802BBCA0
/* 802BBC98  7F C3 F3 78 */	mr r3, r30
/* 802BBC9C  48 01 30 A1 */	bl __dl__FPv
lbl_802BBCA0:
/* 802BBCA0  7F C3 F3 78 */	mr r3, r30
/* 802BBCA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BBCA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BBCAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BBCB0  7C 08 03 A6 */	mtlr r0
/* 802BBCB4  38 21 00 10 */	addi r1, r1, 0x10
/* 802BBCB8  4E 80 00 20 */	blr 
