lbl_802AB830:
/* 802AB830  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AB834  80 C4 00 00 */	lwz r6, 0(r4)
/* 802AB838  28 06 00 00 */	cmplwi r6, 0
/* 802AB83C  41 82 00 F8 */	beq lbl_802AB934
/* 802AB840  38 E0 27 0F */	li r7, 0x270f
/* 802AB844  39 00 00 00 */	li r8, 0
/* 802AB848  38 A0 00 00 */	li r5, 0
/* 802AB84C  38 00 00 08 */	li r0, 8
/* 802AB850  7C 09 03 A6 */	mtctr r0
lbl_802AB854:
/* 802AB854  38 05 03 A0 */	addi r0, r5, 0x3a0
/* 802AB858  7C 03 00 2E */	lwzx r0, r3, r0
/* 802AB85C  7C 00 30 40 */	cmplw r0, r6
/* 802AB860  40 82 00 0C */	bne lbl_802AB86C
/* 802AB864  7D 07 43 78 */	mr r7, r8
/* 802AB868  48 00 00 10 */	b lbl_802AB878
lbl_802AB86C:
/* 802AB86C  39 08 00 01 */	addi r8, r8, 1
/* 802AB870  38 A5 00 04 */	addi r5, r5, 4
/* 802AB874  42 00 FF E0 */	bdnz lbl_802AB854
lbl_802AB878:
/* 802AB878  2C 07 27 0F */	cmpwi r7, 0x270f
/* 802AB87C  40 82 00 48 */	bne lbl_802AB8C4
/* 802AB880  39 00 00 00 */	li r8, 0
/* 802AB884  38 A0 00 00 */	li r5, 0
/* 802AB888  38 00 00 08 */	li r0, 8
/* 802AB88C  7C 09 03 A6 */	mtctr r0
lbl_802AB890:
/* 802AB890  38 05 03 A0 */	addi r0, r5, 0x3a0
/* 802AB894  7C 03 00 2E */	lwzx r0, r3, r0
/* 802AB898  28 00 00 00 */	cmplwi r0, 0
/* 802AB89C  40 82 00 14 */	bne lbl_802AB8B0
/* 802AB8A0  7D 07 43 78 */	mr r7, r8
/* 802AB8A4  7C A3 2A 14 */	add r5, r3, r5
/* 802AB8A8  90 C5 03 A0 */	stw r6, 0x3a0(r5)
/* 802AB8AC  48 00 00 10 */	b lbl_802AB8BC
lbl_802AB8B0:
/* 802AB8B0  39 08 00 01 */	addi r8, r8, 1
/* 802AB8B4  38 A5 00 04 */	addi r5, r5, 4
/* 802AB8B8  42 00 FF D8 */	bdnz lbl_802AB890
lbl_802AB8BC:
/* 802AB8BC  2C 08 00 08 */	cmpwi r8, 8
/* 802AB8C0  41 82 00 74 */	beq lbl_802AB934
lbl_802AB8C4:
/* 802AB8C4  80 A4 00 00 */	lwz r5, 0(r4)
/* 802AB8C8  C0 05 00 00 */	lfs f0, 0(r5)
/* 802AB8CC  1C E7 00 0C */	mulli r7, r7, 0xc
/* 802AB8D0  7C C3 3A 14 */	add r6, r3, r7
/* 802AB8D4  D0 06 03 40 */	stfs f0, 0x340(r6)
/* 802AB8D8  C0 05 00 04 */	lfs f0, 4(r5)
/* 802AB8DC  D0 06 03 44 */	stfs f0, 0x344(r6)
/* 802AB8E0  C0 05 00 08 */	lfs f0, 8(r5)
/* 802AB8E4  D0 06 03 48 */	stfs f0, 0x348(r6)
/* 802AB8E8  80 AD 85 C4 */	lwz r5, __OSReport_disable-0x54(r13)
/* 802AB8EC  E0 25 01 70 */	psq_l f1, 368(r5), 0, 0 /* qr0 */
/* 802AB8F0  C0 05 01 78 */	lfs f0, 0x178(r5)
/* 802AB8F4  F0 21 00 08 */	psq_st f1, 8(r1), 0, 0 /* qr0 */
/* 802AB8F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802AB8FC  80 A1 00 08 */	lwz r5, 8(r1)
/* 802AB900  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802AB904  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802AB908  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AB90C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802AB910  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AB914  C0 06 03 44 */	lfs f0, 0x344(r6)
/* 802AB918  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 802AB91C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802AB920  40 81 00 08 */	ble lbl_802AB928
/* 802AB924  D0 26 03 44 */	stfs f1, 0x344(r6)
lbl_802AB928:
/* 802AB928  38 07 03 40 */	addi r0, r7, 0x340
/* 802AB92C  7C 03 02 14 */	add r0, r3, r0
/* 802AB930  90 04 00 00 */	stw r0, 0(r4)
lbl_802AB934:
/* 802AB934  38 21 00 20 */	addi r1, r1, 0x20
/* 802AB938  4E 80 00 20 */	blr 
