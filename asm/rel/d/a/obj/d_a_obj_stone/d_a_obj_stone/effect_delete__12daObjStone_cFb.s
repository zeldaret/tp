lbl_80CEC7DC:
/* 80CEC7DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CEC7E0  38 A0 00 00 */	li r5, 0
/* 80CEC7E4  38 00 00 03 */	li r0, 3
/* 80CEC7E8  7C 09 03 A6 */	mtctr r0
lbl_80CEC7EC:
/* 80CEC7EC  39 05 09 64 */	addi r8, r5, 0x964
/* 80CEC7F0  7C E3 40 2E */	lwzx r7, r3, r8
/* 80CEC7F4  28 07 00 00 */	cmplwi r7, 0
/* 80CEC7F8  41 82 00 80 */	beq lbl_80CEC878
/* 80CEC7FC  80 07 01 00 */	lwz r0, 0x100(r7)
/* 80CEC800  28 00 00 05 */	cmplwi r0, 5
/* 80CEC804  40 81 00 14 */	ble lbl_80CEC818
/* 80CEC808  80 C7 00 D0 */	lwz r6, 0xd0(r7)
/* 80CEC80C  80 07 00 DC */	lwz r0, 0xdc(r7)
/* 80CEC810  7C 06 02 15 */	add. r0, r6, r0
/* 80CEC814  41 82 00 0C */	beq lbl_80CEC820
lbl_80CEC818:
/* 80CEC818  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80CEC81C  41 82 00 34 */	beq lbl_80CEC850
lbl_80CEC820:
/* 80CEC820  80 07 00 F4 */	lwz r0, 0xf4(r7)
/* 80CEC824  60 00 00 01 */	ori r0, r0, 1
/* 80CEC828  90 07 00 F4 */	stw r0, 0xf4(r7)
/* 80CEC82C  38 00 00 01 */	li r0, 1
/* 80CEC830  90 07 00 24 */	stw r0, 0x24(r7)
/* 80CEC834  7C C3 40 2E */	lwzx r6, r3, r8
/* 80CEC838  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 80CEC83C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80CEC840  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 80CEC844  38 00 00 00 */	li r0, 0
/* 80CEC848  7C 03 41 2E */	stwx r0, r3, r8
/* 80CEC84C  48 00 00 2C */	b lbl_80CEC878
lbl_80CEC850:
/* 80CEC850  E0 03 04 D0 */	psq_l f0, 1232(r3), 0, 0 /* qr0 */
/* 80CEC854  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 80CEC858  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 80CEC85C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CEC860  7C C3 40 2E */	lwzx r6, r3, r8
/* 80CEC864  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CEC868  D0 06 00 A4 */	stfs f0, 0xa4(r6)
/* 80CEC86C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CEC870  D0 06 00 A8 */	stfs f0, 0xa8(r6)
/* 80CEC874  D0 26 00 AC */	stfs f1, 0xac(r6)
lbl_80CEC878:
/* 80CEC878  38 A5 00 04 */	addi r5, r5, 4
/* 80CEC87C  42 00 FF 70 */	bdnz lbl_80CEC7EC
/* 80CEC880  38 21 00 20 */	addi r1, r1, 0x20
/* 80CEC884  4E 80 00 20 */	blr 
