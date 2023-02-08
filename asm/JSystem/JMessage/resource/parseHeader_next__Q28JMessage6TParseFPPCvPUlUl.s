lbl_802A91B8:
/* 802A91B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A91BC  7C 08 02 A6 */	mflr r0
/* 802A91C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A91C4  39 61 00 30 */	addi r11, r1, 0x30
/* 802A91C8  48 0B 90 11 */	bl _savegpr_28
/* 802A91CC  7C 7F 1B 78 */	mr r31, r3
/* 802A91D0  7C DC 33 78 */	mr r28, r6
/* 802A91D4  83 C4 00 00 */	lwz r30, 0(r4)
/* 802A91D8  38 1E 00 20 */	addi r0, r30, 0x20
/* 802A91DC  90 04 00 00 */	stw r0, 0(r4)
/* 802A91E0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802A91E4  90 05 00 00 */	stw r0, 0(r5)
/* 802A91E8  7F C3 F3 78 */	mr r3, r30
/* 802A91EC  38 82 BE 18 */	la r4, ga4cSignature__Q28JMessage4data(r2) /* 80455818-_SDA2_BASE_ */
/* 802A91F0  38 A0 00 04 */	li r5, 4
/* 802A91F4  48 0B CE 99 */	bl memcmp
/* 802A91F8  2C 03 00 00 */	cmpwi r3, 0
/* 802A91FC  41 82 00 0C */	beq lbl_802A9208
/* 802A9200  38 60 00 00 */	li r3, 0
/* 802A9204  48 00 00 D8 */	b lbl_802A92DC
lbl_802A9208:
/* 802A9208  80 7E 00 04 */	lwz r3, 4(r30)
/* 802A920C  3C 03 9D 93 */	addis r0, r3, 0x9d93
/* 802A9210  28 00 67 31 */	cmplwi r0, 0x6731
/* 802A9214  41 82 00 0C */	beq lbl_802A9220
/* 802A9218  38 60 00 00 */	li r3, 0
/* 802A921C  48 00 00 C0 */	b lbl_802A92DC
lbl_802A9220:
/* 802A9220  88 9E 00 10 */	lbz r4, 0x10(r30)
/* 802A9224  28 04 00 00 */	cmplwi r4, 0
/* 802A9228  41 82 00 3C */	beq lbl_802A9264
/* 802A922C  80 7F 00 04 */	lwz r3, 4(r31)
/* 802A9230  38 00 00 00 */	li r0, 0
/* 802A9234  88 A3 00 00 */	lbz r5, 0(r3)
/* 802A9238  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 802A923C  7C 05 20 40 */	cmplw r5, r4
/* 802A9240  41 82 00 0C */	beq lbl_802A924C
/* 802A9244  28 05 00 00 */	cmplwi r5, 0
/* 802A9248  40 82 00 08 */	bne lbl_802A9250
lbl_802A924C:
/* 802A924C  38 00 00 01 */	li r0, 1
lbl_802A9250:
/* 802A9250  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802A9254  40 82 00 0C */	bne lbl_802A9260
/* 802A9258  38 60 00 00 */	li r3, 0
/* 802A925C  48 00 00 80 */	b lbl_802A92DC
lbl_802A9260:
/* 802A9260  4B FF FE 59 */	bl setEncoding__Q28JMessage18TResourceContainerFUc
lbl_802A9264:
/* 802A9264  57 80 06 F7 */	rlwinm. r0, r28, 0, 0x1b, 0x1b
/* 802A9268  41 82 00 0C */	beq lbl_802A9274
/* 802A926C  38 60 00 01 */	li r3, 1
/* 802A9270  48 00 00 6C */	b lbl_802A92DC
lbl_802A9274:
/* 802A9274  80 7F 00 04 */	lwz r3, 4(r31)
/* 802A9278  3B A3 00 08 */	addi r29, r3, 8
/* 802A927C  7F A3 EB 78 */	mr r3, r29
/* 802A9280  81 9D 00 0C */	lwz r12, 0xc(r29)
/* 802A9284  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A9288  7D 89 03 A6 */	mtctr r12
/* 802A928C  4E 80 04 21 */	bctrl 
/* 802A9290  90 7F 00 08 */	stw r3, 8(r31)
/* 802A9294  80 DF 00 08 */	lwz r6, 8(r31)
/* 802A9298  28 06 00 00 */	cmplwi r6, 0
/* 802A929C  40 82 00 0C */	bne lbl_802A92A8
/* 802A92A0  57 83 DF FE */	rlwinm r3, r28, 0x1b, 0x1f, 0x1f
/* 802A92A4  48 00 00 38 */	b lbl_802A92DC
lbl_802A92A8:
/* 802A92A8  38 1D 00 04 */	addi r0, r29, 4
/* 802A92AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A92B0  90 01 00 08 */	stw r0, 8(r1)
/* 802A92B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802A92B8  90 01 00 18 */	stw r0, 0x18(r1)
/* 802A92BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A92C0  38 61 00 10 */	addi r3, r1, 0x10
/* 802A92C4  7F A4 EB 78 */	mr r4, r29
/* 802A92C8  38 A1 00 14 */	addi r5, r1, 0x14
/* 802A92CC  48 03 38 DD */	bl Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
/* 802A92D0  80 7F 00 08 */	lwz r3, 8(r31)
/* 802A92D4  93 C3 00 08 */	stw r30, 8(r3)
/* 802A92D8  38 60 00 01 */	li r3, 1
lbl_802A92DC:
/* 802A92DC  39 61 00 30 */	addi r11, r1, 0x30
/* 802A92E0  48 0B 8F 45 */	bl _restgpr_28
/* 802A92E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A92E8  7C 08 03 A6 */	mtlr r0
/* 802A92EC  38 21 00 30 */	addi r1, r1, 0x30
/* 802A92F0  4E 80 00 20 */	blr 
