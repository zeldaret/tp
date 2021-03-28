lbl_802DC15C:
/* 802DC15C  80 04 00 04 */	lwz r0, 4(r4)
/* 802DC160  7C 00 18 50 */	subf r0, r0, r3
/* 802DC164  7C 00 00 34 */	cntlzw r0, r0
/* 802DC168  54 06 D9 7E */	srwi r6, r0, 5
/* 802DC16C  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 802DC170  41 82 00 94 */	beq lbl_802DC204
/* 802DC174  80 03 00 08 */	lwz r0, 8(r3)
/* 802DC178  28 00 00 01 */	cmplwi r0, 1
/* 802DC17C  40 82 00 14 */	bne lbl_802DC190
/* 802DC180  38 00 00 00 */	li r0, 0
/* 802DC184  90 03 00 00 */	stw r0, 0(r3)
/* 802DC188  90 03 00 04 */	stw r0, 4(r3)
/* 802DC18C  48 00 00 64 */	b lbl_802DC1F0
lbl_802DC190:
/* 802DC190  80 03 00 00 */	lwz r0, 0(r3)
/* 802DC194  7C 04 00 40 */	cmplw r4, r0
/* 802DC198  40 82 00 1C */	bne lbl_802DC1B4
/* 802DC19C  38 00 00 00 */	li r0, 0
/* 802DC1A0  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802DC1A4  90 05 00 08 */	stw r0, 8(r5)
/* 802DC1A8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802DC1AC  90 03 00 00 */	stw r0, 0(r3)
/* 802DC1B0  48 00 00 40 */	b lbl_802DC1F0
lbl_802DC1B4:
/* 802DC1B4  80 03 00 04 */	lwz r0, 4(r3)
/* 802DC1B8  7C 04 00 40 */	cmplw r4, r0
/* 802DC1BC  40 82 00 1C */	bne lbl_802DC1D8
/* 802DC1C0  38 00 00 00 */	li r0, 0
/* 802DC1C4  80 A4 00 08 */	lwz r5, 8(r4)
/* 802DC1C8  90 05 00 0C */	stw r0, 0xc(r5)
/* 802DC1CC  80 04 00 08 */	lwz r0, 8(r4)
/* 802DC1D0  90 03 00 04 */	stw r0, 4(r3)
/* 802DC1D4  48 00 00 1C */	b lbl_802DC1F0
lbl_802DC1D8:
/* 802DC1D8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802DC1DC  80 A4 00 08 */	lwz r5, 8(r4)
/* 802DC1E0  90 05 00 0C */	stw r0, 0xc(r5)
/* 802DC1E4  80 04 00 08 */	lwz r0, 8(r4)
/* 802DC1E8  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802DC1EC  90 05 00 08 */	stw r0, 8(r5)
lbl_802DC1F0:
/* 802DC1F0  38 00 00 00 */	li r0, 0
/* 802DC1F4  90 04 00 04 */	stw r0, 4(r4)
/* 802DC1F8  80 83 00 08 */	lwz r4, 8(r3)
/* 802DC1FC  38 04 FF FF */	addi r0, r4, -1
/* 802DC200  90 03 00 08 */	stw r0, 8(r3)
lbl_802DC204:
/* 802DC204  7C C3 33 78 */	mr r3, r6
/* 802DC208  4E 80 00 20 */	blr 
