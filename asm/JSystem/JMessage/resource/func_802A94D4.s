lbl_802A94D4:
/* 802A94D4  7C 03 20 50 */	subf r0, r3, r4
/* 802A94D8  7C 00 16 70 */	srawi r0, r0, 2
/* 802A94DC  7C 00 01 94 */	addze r0, r0
/* 802A94E0  7C 06 03 78 */	mr r6, r0
/* 802A94E4  80 85 00 00 */	lwz r4, 0(r5)
/* 802A94E8  48 00 00 34 */	b lbl_802A951C
lbl_802A94EC:
/* 802A94EC  7C C0 0E 70 */	srawi r0, r6, 1
/* 802A94F0  7C E0 01 94 */	addze r7, r0
/* 802A94F4  54 E0 10 3A */	slwi r0, r7, 2
/* 802A94F8  7C A3 02 14 */	add r5, r3, r0
/* 802A94FC  80 05 00 00 */	lwz r0, 0(r5)
/* 802A9500  7C 00 20 40 */	cmplw r0, r4
/* 802A9504  40 80 00 14 */	bge lbl_802A9518
/* 802A9508  38 65 00 04 */	addi r3, r5, 4
/* 802A950C  38 07 00 01 */	addi r0, r7, 1
/* 802A9510  7C C0 30 50 */	subf r6, r0, r6
/* 802A9514  48 00 00 08 */	b lbl_802A951C
lbl_802A9518:
/* 802A9518  7C E6 3B 78 */	mr r6, r7
lbl_802A951C:
/* 802A951C  2C 06 00 00 */	cmpwi r6, 0
/* 802A9520  41 81 FF CC */	bgt lbl_802A94EC
/* 802A9524  4E 80 00 20 */	blr 
