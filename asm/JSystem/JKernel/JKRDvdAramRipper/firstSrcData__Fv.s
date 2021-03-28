lbl_802DB3E8:
/* 802DB3E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB3EC  7C 08 02 A6 */	mflr r0
/* 802DB3F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB3F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DB3F8  93 C1 00 08 */	stw r30, 8(r1)
/* 802DB3FC  80 6D 8E EC */	lwz r3, szpEnd(r13)
/* 802DB400  38 03 FF E7 */	addi r0, r3, -25
/* 802DB404  90 0D 8F 10 */	stw r0, srcLimit(r13)
/* 802DB408  80 0D 8E E8 */	lwz r0, szpBuf(r13)
/* 802DB40C  7C 1E 03 78 */	mr r30, r0
/* 802DB410  7C 60 18 50 */	subf r3, r0, r3
/* 802DB414  80 0D 8F 0C */	lwz r0, transLeft(r13)
/* 802DB418  7C 00 18 40 */	cmplw r0, r3
/* 802DB41C  7C 7F 1B 78 */	mr r31, r3
/* 802DB420  40 80 00 08 */	bge lbl_802DB428
/* 802DB424  7C 1F 03 78 */	mr r31, r0
lbl_802DB428:
/* 802DB428  80 6D 8F 14 */	lwz r3, srcFile(r13)
/* 802DB42C  38 63 00 5C */	addi r3, r3, 0x5c
/* 802DB430  7F C4 F3 78 */	mr r4, r30
/* 802DB434  7F E5 FB 78 */	mr r5, r31
/* 802DB438  38 C0 00 00 */	li r6, 0
/* 802DB43C  38 E0 00 02 */	li r7, 2
/* 802DB440  48 06 DA 05 */	bl DVDReadPrio
/* 802DB444  2C 03 00 00 */	cmpwi r3, 0
/* 802DB448  40 80 00 20 */	bge lbl_802DB468
/* 802DB44C  88 0D 83 50 */	lbz r0, data_804508D0(r13)
/* 802DB450  28 00 00 00 */	cmplwi r0, 0
/* 802DB454  40 82 00 0C */	bne lbl_802DB460
/* 802DB458  38 60 00 00 */	li r3, 0
/* 802DB45C  48 00 00 28 */	b lbl_802DB484
lbl_802DB460:
/* 802DB460  48 07 15 65 */	bl VIWaitForRetrace
/* 802DB464  4B FF FF C4 */	b lbl_802DB428
lbl_802DB468:
/* 802DB468  80 0D 8F 08 */	lwz r0, srcOffset(r13)
/* 802DB46C  7C 00 FA 14 */	add r0, r0, r31
/* 802DB470  90 0D 8F 08 */	stw r0, srcOffset(r13)
/* 802DB474  80 0D 8F 0C */	lwz r0, transLeft(r13)
/* 802DB478  7C 1F 00 50 */	subf r0, r31, r0
/* 802DB47C  90 0D 8F 0C */	stw r0, transLeft(r13)
/* 802DB480  7F C3 F3 78 */	mr r3, r30
lbl_802DB484:
/* 802DB484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DB488  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DB48C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB490  7C 08 03 A6 */	mtlr r0
/* 802DB494  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB498  4E 80 00 20 */	blr 
