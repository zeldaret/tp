lbl_802A65D4:
/* 802A65D4  54 87 D9 7E */	srwi r7, r4, 5
/* 802A65D8  38 C0 00 01 */	li r6, 1
/* 802A65DC  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 802A65E0  7C C6 00 30 */	slw r6, r6, r0
/* 802A65E4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 802A65E8  41 82 00 18 */	beq lbl_802A6600
/* 802A65EC  54 E4 10 3A */	slwi r4, r7, 2
/* 802A65F0  7C 03 20 2E */	lwzx r0, r3, r4
/* 802A65F4  7C 00 33 78 */	or r0, r0, r6
/* 802A65F8  7C 03 21 2E */	stwx r0, r3, r4
/* 802A65FC  4E 80 00 20 */	blr 
lbl_802A6600:
/* 802A6600  54 E4 10 3A */	slwi r4, r7, 2
/* 802A6604  7C 03 20 2E */	lwzx r0, r3, r4
/* 802A6608  7C 00 30 78 */	andc r0, r0, r6
/* 802A660C  7C 03 21 2E */	stwx r0, r3, r4
/* 802A6610  4E 80 00 20 */	blr 
