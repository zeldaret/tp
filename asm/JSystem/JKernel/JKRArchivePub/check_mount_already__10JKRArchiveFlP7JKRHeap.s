lbl_802D5778:
/* 802D5778  28 04 00 00 */	cmplwi r4, 0
/* 802D577C  40 82 00 08 */	bne lbl_802D5784
/* 802D5780  80 8D 8D F4 */	lwz r4, sCurrentHeap__7JKRHeap(r13)
lbl_802D5784:
/* 802D5784  3C A0 80 43 */	lis r5, sVolumeList__13JKRFileLoader@ha
/* 802D5788  80 C5 43 54 */	lwz r6, sVolumeList__13JKRFileLoader@l(r5)
/* 802D578C  48 00 00 48 */	b lbl_802D57D4
lbl_802D5790:
/* 802D5790  80 E6 00 00 */	lwz r7, 0(r6)
/* 802D5794  80 A7 00 2C */	lwz r5, 0x2c(r7)
/* 802D5798  3C 05 AD BF */	addis r0, r5, 0xadbf
/* 802D579C  28 00 52 43 */	cmplwi r0, 0x5243
/* 802D57A0  40 82 00 30 */	bne lbl_802D57D0
/* 802D57A4  80 07 00 40 */	lwz r0, 0x40(r7)
/* 802D57A8  7C 00 18 00 */	cmpw r0, r3
/* 802D57AC  40 82 00 24 */	bne lbl_802D57D0
/* 802D57B0  80 07 00 38 */	lwz r0, 0x38(r7)
/* 802D57B4  7C 00 20 40 */	cmplw r0, r4
/* 802D57B8  40 82 00 18 */	bne lbl_802D57D0
/* 802D57BC  80 67 00 34 */	lwz r3, 0x34(r7)
/* 802D57C0  38 03 00 01 */	addi r0, r3, 1
/* 802D57C4  90 07 00 34 */	stw r0, 0x34(r7)
/* 802D57C8  7C E3 3B 78 */	mr r3, r7
/* 802D57CC  4E 80 00 20 */	blr 
lbl_802D57D0:
/* 802D57D0  80 C6 00 0C */	lwz r6, 0xc(r6)
lbl_802D57D4:
/* 802D57D4  28 06 00 00 */	cmplwi r6, 0
/* 802D57D8  40 82 FF B8 */	bne lbl_802D5790
/* 802D57DC  38 60 00 00 */	li r3, 0
/* 802D57E0  4E 80 00 20 */	blr 
