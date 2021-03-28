lbl_802DCBD4:
/* 802DCBD4  80 C5 00 00 */	lwz r6, 0(r5)
/* 802DCBD8  80 A5 00 04 */	lwz r5, 4(r5)
/* 802DCBDC  90 A6 00 04 */	stw r5, 4(r6)
/* 802DCBE0  90 C5 00 00 */	stw r6, 0(r5)
/* 802DCBE4  80 A4 00 00 */	lwz r5, 0(r4)
/* 802DCBE8  38 05 FF FF */	addi r0, r5, -1
/* 802DCBEC  90 04 00 00 */	stw r0, 0(r4)
/* 802DCBF0  90 C3 00 00 */	stw r6, 0(r3)
/* 802DCBF4  4E 80 00 20 */	blr 
