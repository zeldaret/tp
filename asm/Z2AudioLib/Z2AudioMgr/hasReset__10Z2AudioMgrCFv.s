lbl_802CDA6C:
/* 802CDA6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CDA70  7C 08 02 A6 */	mflr r0
/* 802CDA74  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CDA78  39 61 00 20 */	addi r11, r1, 0x20
/* 802CDA7C  48 09 47 5D */	bl _savegpr_28
/* 802CDA80  7C 7C 1B 78 */	mr r28, r3
/* 802CDA84  3B C0 00 00 */	li r30, 0
/* 802CDA88  7F DF F3 78 */	mr r31, r30
/* 802CDA8C  88 03 05 18 */	lbz r0, 0x518(r3)
/* 802CDA90  28 00 00 00 */	cmplwi r0, 0
/* 802CDA94  41 82 00 18 */	beq lbl_802CDAAC
/* 802CDA98  38 7C 05 1C */	addi r3, r28, 0x51c
/* 802CDA9C  4B FC F7 5D */	bl checkDone__15JASAudioReseterCFv
/* 802CDAA0  2C 03 00 00 */	cmpwi r3, 0
/* 802CDAA4  41 82 00 08 */	beq lbl_802CDAAC
/* 802CDAA8  3B E0 00 01 */	li r31, 1
lbl_802CDAAC:
/* 802CDAAC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802CDAB0  41 82 00 50 */	beq lbl_802CDB00
/* 802CDAB4  3B E0 00 01 */	li r31, 1
/* 802CDAB8  88 1C 05 19 */	lbz r0, 0x519(r28)
/* 802CDABC  28 00 00 00 */	cmplwi r0, 0
/* 802CDAC0  40 82 00 34 */	bne lbl_802CDAF4
/* 802CDAC4  3B A0 00 00 */	li r29, 0
/* 802CDAC8  38 7C 05 34 */	addi r3, r28, 0x534
/* 802CDACC  4B FD 2E 05 */	bl getNumActiveSe__8JAISeMgrCFv
/* 802CDAD0  2C 03 00 00 */	cmpwi r3, 0
/* 802CDAD4  40 82 00 14 */	bne lbl_802CDAE8
/* 802CDAD8  80 1C 0C C4 */	lwz r0, 0xcc4(r28)
/* 802CDADC  2C 00 00 00 */	cmpwi r0, 0
/* 802CDAE0  40 82 00 08 */	bne lbl_802CDAE8
/* 802CDAE4  3B A0 00 01 */	li r29, 1
lbl_802CDAE8:
/* 802CDAE8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802CDAEC  40 82 00 08 */	bne lbl_802CDAF4
/* 802CDAF0  3B E0 00 00 */	li r31, 0
lbl_802CDAF4:
/* 802CDAF4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802CDAF8  41 82 00 08 */	beq lbl_802CDB00
/* 802CDAFC  3B C0 00 01 */	li r30, 1
lbl_802CDB00:
/* 802CDB00  7F C3 F3 78 */	mr r3, r30
/* 802CDB04  39 61 00 20 */	addi r11, r1, 0x20
/* 802CDB08  48 09 47 1D */	bl _restgpr_28
/* 802CDB0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CDB10  7C 08 03 A6 */	mtlr r0
/* 802CDB14  38 21 00 20 */	addi r1, r1, 0x20
/* 802CDB18  4E 80 00 20 */	blr 
