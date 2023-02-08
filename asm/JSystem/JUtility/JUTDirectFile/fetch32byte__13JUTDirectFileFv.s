lbl_802E8730:
/* 802E8730  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E8734  7C 08 02 A6 */	mflr r0
/* 802E8738  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E873C  39 61 00 20 */	addi r11, r1, 0x20
/* 802E8740  48 07 9A 9D */	bl _savegpr_29
/* 802E8744  7C 7D 1B 78 */	mr r29, r3
/* 802E8748  80 03 08 2C */	lwz r0, 0x82c(r3)
/* 802E874C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 802E8750  80 1D 08 28 */	lwz r0, 0x828(r29)
/* 802E8754  7C 03 00 50 */	subf r0, r3, r0
/* 802E8758  90 1D 08 24 */	stw r0, 0x824(r29)
/* 802E875C  80 1D 08 24 */	lwz r0, 0x824(r29)
/* 802E8760  28 00 08 00 */	cmplwi r0, 0x800
/* 802E8764  40 81 00 0C */	ble lbl_802E8770
/* 802E8768  38 00 08 00 */	li r0, 0x800
/* 802E876C  90 1D 08 24 */	stw r0, 0x824(r29)
lbl_802E8770:
/* 802E8770  48 05 4F 99 */	bl OSEnableInterrupts
/* 802E8774  7C 7E 1B 78 */	mr r30, r3
/* 802E8778  38 7D 08 34 */	addi r3, r29, 0x834
/* 802E877C  80 9D 08 20 */	lwz r4, 0x820(r29)
/* 802E8780  80 BD 08 24 */	lwz r5, 0x824(r29)
/* 802E8784  38 05 00 1F */	addi r0, r5, 0x1f
/* 802E8788  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 802E878C  80 1D 08 2C */	lwz r0, 0x82c(r29)
/* 802E8790  54 06 00 34 */	rlwinm r6, r0, 0, 0, 0x1a
/* 802E8794  38 E0 00 00 */	li r7, 0
/* 802E8798  39 00 00 02 */	li r8, 2
/* 802E879C  48 06 05 B9 */	bl DVDReadAsyncPrio
/* 802E87A0  7C 7F 1B 78 */	mr r31, r3
/* 802E87A4  7F C3 F3 78 */	mr r3, r30
/* 802E87A8  48 05 4F 75 */	bl OSRestoreInterrupts
/* 802E87AC  2C 1F 00 00 */	cmpwi r31, 0
/* 802E87B0  40 82 00 0C */	bne lbl_802E87BC
/* 802E87B4  38 60 FF FF */	li r3, -1
/* 802E87B8  48 00 00 28 */	b lbl_802E87E0
lbl_802E87BC:
/* 802E87BC  48 05 4F 4D */	bl OSEnableInterrupts
/* 802E87C0  7C 7F 1B 78 */	mr r31, r3
lbl_802E87C4:
/* 802E87C4  38 7D 08 34 */	addi r3, r29, 0x834
/* 802E87C8  48 06 29 B5 */	bl DVDGetCommandBlockStatus
/* 802E87CC  2C 03 00 00 */	cmpwi r3, 0
/* 802E87D0  40 82 FF F4 */	bne lbl_802E87C4
/* 802E87D4  7F E3 FB 78 */	mr r3, r31
/* 802E87D8  48 05 4F 45 */	bl OSRestoreInterrupts
/* 802E87DC  80 7D 08 24 */	lwz r3, 0x824(r29)
lbl_802E87E0:
/* 802E87E0  39 61 00 20 */	addi r11, r1, 0x20
/* 802E87E4  48 07 9A 45 */	bl _restgpr_29
/* 802E87E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E87EC  7C 08 03 A6 */	mtlr r0
/* 802E87F0  38 21 00 20 */	addi r1, r1, 0x20
/* 802E87F4  4E 80 00 20 */	blr 
