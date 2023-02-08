lbl_802928F4:
/* 802928F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802928F8  7C 08 02 A6 */	mflr r0
/* 802928FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80292900  38 63 00 5C */	addi r3, r3, 0x5c
/* 80292904  48 00 0C E5 */	bl writeExport__12JASTrackPortFUlUs
/* 80292908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029290C  7C 08 03 A6 */	mtlr r0
/* 80292910  38 21 00 10 */	addi r1, r1, 0x10
/* 80292914  4E 80 00 20 */	blr 
