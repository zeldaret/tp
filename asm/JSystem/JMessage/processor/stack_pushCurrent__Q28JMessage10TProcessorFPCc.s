lbl_802A7BF8:
/* 802A7BF8  28 04 00 00 */	cmplwi r4, 0
/* 802A7BFC  4D 82 00 20 */	beqlr 
/* 802A7C00  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802A7C04  28 00 00 04 */	cmplwi r0, 4
/* 802A7C08  4C 80 00 20 */	bgelr 
/* 802A7C0C  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 802A7C10  54 00 10 3A */	slwi r0, r0, 2
/* 802A7C14  7C A3 02 14 */	add r5, r3, r0
/* 802A7C18  90 C5 00 14 */	stw r6, 0x14(r5)
/* 802A7C1C  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 802A7C20  38 05 00 01 */	addi r0, r5, 1
/* 802A7C24  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A7C28  90 83 00 0C */	stw r4, 0xc(r3)
/* 802A7C2C  4E 80 00 20 */	blr 
