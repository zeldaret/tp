lbl_802DCDC4:
/* 802DCDC4  80 C3 00 08 */	lwz r6, 8(r3)
/* 802DCDC8  7C 87 23 78 */	mr r7, r4
/* 802DCDCC  38 06 00 03 */	addi r0, r6, 3
/* 802DCDD0  7C 05 00 50 */	subf r0, r5, r0
/* 802DCDD4  54 00 F0 BE */	srwi r0, r0, 2
/* 802DCDD8  7C 09 03 A6 */	mtctr r0
/* 802DCDDC  7C 05 30 40 */	cmplw r5, r6
/* 802DCDE0  40 80 00 18 */	bge lbl_802DCDF8
lbl_802DCDE4:
/* 802DCDE4  80 05 00 00 */	lwz r0, 0(r5)
/* 802DCDE8  90 07 00 00 */	stw r0, 0(r7)
/* 802DCDEC  38 A5 00 04 */	addi r5, r5, 4
/* 802DCDF0  38 E7 00 04 */	addi r7, r7, 4
/* 802DCDF4  42 00 FF F0 */	bdnz lbl_802DCDE4
lbl_802DCDF8:
/* 802DCDF8  80 03 00 08 */	lwz r0, 8(r3)
/* 802DCDFC  7C E5 3B 78 */	mr r5, r7
/* 802DCE00  48 00 00 08 */	b lbl_802DCE08
lbl_802DCE04:
/* 802DCE04  38 A5 00 04 */	addi r5, r5, 4
lbl_802DCE08:
/* 802DCE08  7C 05 00 40 */	cmplw r5, r0
/* 802DCE0C  40 82 FF F8 */	bne lbl_802DCE04
/* 802DCE10  90 E3 00 08 */	stw r7, 8(r3)
/* 802DCE14  7C 83 23 78 */	mr r3, r4
/* 802DCE18  4E 80 00 20 */	blr 
