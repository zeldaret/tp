lbl_8029289C:
/* 8029289C  38 A0 00 00 */	li r5, 0
/* 802928A0  38 00 00 08 */	li r0, 8
/* 802928A4  7C 09 03 A6 */	mtctr r0
lbl_802928A8:
/* 802928A8  7C C4 2A AE */	lhax r6, r4, r5
/* 802928AC  38 05 02 04 */	addi r0, r5, 0x204
/* 802928B0  7C C3 03 2E */	sthx r6, r3, r0
/* 802928B4  38 A5 00 02 */	addi r5, r5, 2
/* 802928B8  42 00 FF F0 */	bdnz lbl_802928A8
/* 802928BC  88 83 02 14 */	lbz r4, 0x214(r3)
/* 802928C0  80 02 BB D0 */	lwz r0, FILTER_MODE_IIR__6JASDsp(r2)
/* 802928C4  7C 80 03 78 */	or r0, r4, r0
/* 802928C8  98 03 02 14 */	stb r0, 0x214(r3)
/* 802928CC  4E 80 00 20 */	blr 
