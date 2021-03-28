lbl_8012DC44:
/* 8012DC44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012DC48  7C 08 02 A6 */	mflr r0
/* 8012DC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012DC50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012DC54  7C 7F 1B 78 */	mr r31, r3
/* 8012DC58  4B FF B3 05 */	bl setWolfAtnMoveDirection__9daAlink_cFv
/* 8012DC5C  7F E3 FB 78 */	mr r3, r31
/* 8012DC60  38 80 00 00 */	li r4, 0
/* 8012DC64  4B FF BE E1 */	bl checkNextActionWolf__9daAlink_cFi
/* 8012DC68  2C 03 00 00 */	cmpwi r3, 0
/* 8012DC6C  40 82 00 84 */	bne lbl_8012DCF0
/* 8012DC70  7F E3 FB 78 */	mr r3, r31
/* 8012DC74  4B F8 5C 91 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 8012DC78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012DC7C  41 82 00 3C */	beq lbl_8012DCB8
/* 8012DC80  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8012DC84  60 00 00 01 */	ori r0, r0, 1
/* 8012DC88  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8012DC8C  7F E3 FB 78 */	mr r3, r31
/* 8012DC90  4B FF E3 19 */	bl checkWolfWaitSlipPolygon__9daAlink_cFv
/* 8012DC94  2C 03 00 00 */	cmpwi r3, 0
/* 8012DC98  41 82 00 2C */	beq lbl_8012DCC4
/* 8012DC9C  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 8012DCA0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8012DCA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012DCA8  41 81 00 1C */	bgt lbl_8012DCC4
/* 8012DCAC  7F E3 FB 78 */	mr r3, r31
/* 8012DCB0  48 00 25 35 */	bl procWolfWaitSlipInit__9daAlink_cFv
/* 8012DCB4  48 00 00 40 */	b lbl_8012DCF4
lbl_8012DCB8:
/* 8012DCB8  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8012DCBC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8012DCC0  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_8012DCC4:
/* 8012DCC4  7F E3 FB 78 */	mr r3, r31
/* 8012DCC8  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8012DCCC  4B FF B4 49 */	bl setBlendWolfAtnMoveAnime__9daAlink_cFf
/* 8012DCD0  7F E3 FB 78 */	mr r3, r31
/* 8012DCD4  4B FF AA C5 */	bl checkWolfAtnWait__9daAlink_cFv
/* 8012DCD8  2C 03 00 00 */	cmpwi r3, 0
/* 8012DCDC  41 82 00 14 */	beq lbl_8012DCF0
/* 8012DCE0  7F E3 FB 78 */	mr r3, r31
/* 8012DCE4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010037@ha */
/* 8012DCE8  38 84 00 37 */	addi r4, r4, 0x0037 /* 0x00010037@l */
/* 8012DCEC  4B F9 13 CD */	bl voiceStartLevel__9daAlink_cFUl
lbl_8012DCF0:
/* 8012DCF0  38 60 00 01 */	li r3, 1
lbl_8012DCF4:
/* 8012DCF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012DCF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012DCFC  7C 08 03 A6 */	mtlr r0
/* 8012DD00  38 21 00 10 */	addi r1, r1, 0x10
/* 8012DD04  4E 80 00 20 */	blr 
