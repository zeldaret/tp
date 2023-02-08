lbl_802ED4FC:
/* 802ED4FC  88 03 00 78 */	lbz r0, 0x78(r3)
/* 802ED500  54 07 06 30 */	rlwinm r7, r0, 0, 0x18, 0x18
/* 802ED504  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802ED508  98 03 00 78 */	stb r0, 0x78(r3)
/* 802ED50C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 802ED510  41 82 00 30 */	beq lbl_802ED540
/* 802ED514  38 A0 00 01 */	li r5, 1
/* 802ED518  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802ED51C  7C A4 00 30 */	slw r4, r5, r0
/* 802ED520  38 04 FF FF */	addi r0, r4, -1
/* 802ED524  88 A3 00 78 */	lbz r5, 0x78(r3)
/* 802ED528  7C A4 00 38 */	and r4, r5, r0
/* 802ED52C  7C A0 00 78 */	andc r0, r5, r0
/* 802ED530  54 00 08 3C */	slwi r0, r0, 1
/* 802ED534  7C 80 03 78 */	or r0, r4, r0
/* 802ED538  98 03 00 78 */	stb r0, 0x78(r3)
/* 802ED53C  48 00 00 38 */	b lbl_802ED574
lbl_802ED540:
/* 802ED540  54 88 06 3E */	clrlwi r8, r4, 0x18
/* 802ED544  89 23 00 78 */	lbz r9, 0x78(r3)
/* 802ED548  38 C0 00 01 */	li r6, 1
/* 802ED54C  7C C4 40 30 */	slw r4, r6, r8
/* 802ED550  38 04 FF FF */	addi r0, r4, -1
/* 802ED554  7D 25 00 38 */	and r5, r9, r0
/* 802ED558  38 08 00 01 */	addi r0, r8, 1
/* 802ED55C  7C C4 00 30 */	slw r4, r6, r0
/* 802ED560  38 04 FF FF */	addi r0, r4, -1
/* 802ED564  7D 20 00 78 */	andc r0, r9, r0
/* 802ED568  7C 00 0E 70 */	srawi r0, r0, 1
/* 802ED56C  7C A0 03 78 */	or r0, r5, r0
/* 802ED570  98 03 00 78 */	stb r0, 0x78(r3)
lbl_802ED574:
/* 802ED574  88 03 00 78 */	lbz r0, 0x78(r3)
/* 802ED578  7C 00 3B 78 */	or r0, r0, r7
/* 802ED57C  98 03 00 78 */	stb r0, 0x78(r3)
/* 802ED580  4E 80 00 20 */	blr 
