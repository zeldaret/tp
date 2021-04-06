lbl_802E199C:
/* 802E199C  3C 80 80 43 */	lis r4, mPadList__10JUTGamePad@ha /* 0x804343E4@ha */
/* 802E19A0  38 84 43 E4 */	addi r4, r4, mPadList__10JUTGamePad@l /* 0x804343E4@l */
/* 802E19A4  80 84 00 00 */	lwz r4, 0(r4)
/* 802E19A8  48 00 00 20 */	b lbl_802E19C8
lbl_802E19AC:
/* 802E19AC  80 A4 00 00 */	lwz r5, 0(r4)
/* 802E19B0  A8 05 00 7C */	lha r0, 0x7c(r5)
/* 802E19B4  7C 03 00 00 */	cmpw r3, r0
/* 802E19B8  40 82 00 0C */	bne lbl_802E19C4
/* 802E19BC  7C A3 2B 78 */	mr r3, r5
/* 802E19C0  4E 80 00 20 */	blr 
lbl_802E19C4:
/* 802E19C4  80 84 00 0C */	lwz r4, 0xc(r4)
lbl_802E19C8:
/* 802E19C8  28 04 00 00 */	cmplwi r4, 0
/* 802E19CC  40 82 FF E0 */	bne lbl_802E19AC
/* 802E19D0  38 60 00 00 */	li r3, 0
/* 802E19D4  4E 80 00 20 */	blr 
