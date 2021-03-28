lbl_802E4288:
/* 802E4288  80 03 00 00 */	lwz r0, 0(r3)
/* 802E428C  28 00 00 00 */	cmplwi r0, 0
/* 802E4290  4D 82 00 20 */	beqlr 
/* 802E4294  A0 03 00 04 */	lhz r0, 4(r3)
/* 802E4298  28 00 01 90 */	cmplwi r0, 0x190
/* 802E429C  40 81 00 0C */	ble lbl_802E42A8
/* 802E42A0  54 84 08 3C */	slwi r4, r4, 1
/* 802E42A4  54 C6 08 3C */	slwi r6, r6, 1
lbl_802E42A8:
/* 802E42A8  A0 03 00 06 */	lhz r0, 6(r3)
/* 802E42AC  28 00 01 2C */	cmplwi r0, 0x12c
/* 802E42B0  40 81 00 0C */	ble lbl_802E42BC
/* 802E42B4  54 A5 08 3C */	slwi r5, r5, 1
/* 802E42B8  54 E7 08 3C */	slwi r7, r7, 1
lbl_802E42BC:
/* 802E42BC  81 03 00 14 */	lwz r8, 0x14(r3)
/* 802E42C0  A0 03 00 08 */	lhz r0, 8(r3)
/* 802E42C4  7C 00 29 D6 */	mullw r0, r0, r5
/* 802E42C8  54 05 08 3C */	slwi r5, r0, 1
/* 802E42CC  54 80 08 3C */	slwi r0, r4, 1
/* 802E42D0  7C A5 02 14 */	add r5, r5, r0
/* 802E42D4  7C A8 2A 14 */	add r5, r8, r5
/* 802E42D8  39 00 00 00 */	li r8, 0
/* 802E42DC  38 80 10 80 */	li r4, 0x1080
/* 802E42E0  48 00 00 30 */	b lbl_802E4310
lbl_802E42E4:
/* 802E42E4  7C C9 03 A6 */	mtctr r6
/* 802E42E8  2C 06 00 00 */	cmpwi r6, 0
/* 802E42EC  40 81 00 10 */	ble lbl_802E42FC
lbl_802E42F0:
/* 802E42F0  B0 85 00 00 */	sth r4, 0(r5)
/* 802E42F4  38 A5 00 02 */	addi r5, r5, 2
/* 802E42F8  42 00 FF F8 */	bdnz lbl_802E42F0
lbl_802E42FC:
/* 802E42FC  A0 03 00 08 */	lhz r0, 8(r3)
/* 802E4300  7C 06 00 50 */	subf r0, r6, r0
/* 802E4304  54 00 08 3C */	slwi r0, r0, 1
/* 802E4308  7C A5 02 14 */	add r5, r5, r0
/* 802E430C  39 08 00 01 */	addi r8, r8, 1
lbl_802E4310:
/* 802E4310  7C 08 38 00 */	cmpw r8, r7
/* 802E4314  41 80 FF D0 */	blt lbl_802E42E4
/* 802E4318  4E 80 00 20 */	blr 
