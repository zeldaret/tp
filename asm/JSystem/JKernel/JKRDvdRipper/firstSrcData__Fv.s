lbl_802DA60C:
/* 802DA60C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DA610  7C 08 02 A6 */	mflr r0
/* 802DA614  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DA618  39 61 00 20 */	addi r11, r1, 0x20
/* 802DA61C  48 08 7B C1 */	bl _savegpr_29
/* 802DA620  80 6D 8E AC */	lwz r3, szpEnd(r13)
/* 802DA624  38 03 FF E7 */	addi r0, r3, -25
/* 802DA628  90 0D 8E C4 */	stw r0, srcLimit(r13)
/* 802DA62C  80 0D 8E A8 */	lwz r0, szpBuf(r13)
/* 802DA630  7C 1D 03 78 */	mr r29, r0
/* 802DA634  7C 60 18 50 */	subf r3, r0, r3
/* 802DA638  80 0D 8E C0 */	lwz r0, transLeft(r13)
/* 802DA63C  7C 00 18 40 */	cmplw r0, r3
/* 802DA640  7C 7F 1B 78 */	mr r31, r3
/* 802DA644  40 80 00 08 */	bge lbl_802DA64C
/* 802DA648  7C 1F 03 78 */	mr r31, r0
lbl_802DA64C:
/* 802DA64C  7F FE FB 78 */	mr r30, r31
lbl_802DA650:
/* 802DA650  80 6D 8E C8 */	lwz r3, srcFile(r13)
/* 802DA654  38 63 00 5C */	addi r3, r3, 0x5c
/* 802DA658  7F A4 EB 78 */	mr r4, r29
/* 802DA65C  7F C5 F3 78 */	mr r5, r30
/* 802DA660  80 CD 8E BC */	lwz r6, srcOffset(r13)
/* 802DA664  38 E0 00 02 */	li r7, 2
/* 802DA668  48 06 E7 DD */	bl DVDReadPrio
/* 802DA66C  2C 03 00 00 */	cmpwi r3, 0
/* 802DA670  40 80 00 28 */	bge lbl_802DA698
/* 802DA674  2C 03 FF FD */	cmpwi r3, -3
/* 802DA678  41 82 00 10 */	beq lbl_802DA688
/* 802DA67C  88 0D 83 48 */	lbz r0, data_804508C8(r13)
/* 802DA680  28 00 00 00 */	cmplwi r0, 0
/* 802DA684  40 82 00 0C */	bne lbl_802DA690
lbl_802DA688:
/* 802DA688  38 60 00 00 */	li r3, 0
/* 802DA68C  48 00 00 34 */	b lbl_802DA6C0
lbl_802DA690:
/* 802DA690  48 07 23 35 */	bl VIWaitForRetrace
/* 802DA694  4B FF FF BC */	b lbl_802DA650
lbl_802DA698:
/* 802DA698  7F A3 EB 78 */	mr r3, r29
/* 802DA69C  7F E4 FB 78 */	mr r4, r31
/* 802DA6A0  48 06 0E E1 */	bl DCInvalidateRange
/* 802DA6A4  80 0D 8E BC */	lwz r0, srcOffset(r13)
/* 802DA6A8  7C 00 FA 14 */	add r0, r0, r31
/* 802DA6AC  90 0D 8E BC */	stw r0, srcOffset(r13)
/* 802DA6B0  80 0D 8E C0 */	lwz r0, transLeft(r13)
/* 802DA6B4  7C 1F 00 50 */	subf r0, r31, r0
/* 802DA6B8  90 0D 8E C0 */	stw r0, transLeft(r13)
/* 802DA6BC  7F A3 EB 78 */	mr r3, r29
lbl_802DA6C0:
/* 802DA6C0  39 61 00 20 */	addi r11, r1, 0x20
/* 802DA6C4  48 08 7B 65 */	bl _restgpr_29
/* 802DA6C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DA6CC  7C 08 03 A6 */	mtlr r0
/* 802DA6D0  38 21 00 20 */	addi r1, r1, 0x20
/* 802DA6D4  4E 80 00 20 */	blr 
