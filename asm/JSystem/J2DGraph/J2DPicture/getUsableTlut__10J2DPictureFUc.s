lbl_802FF100:
/* 802FF100  39 00 00 00 */	li r8, 0
/* 802FF104  39 20 00 00 */	li r9, 0
/* 802FF108  88 C3 01 08 */	lbz r6, 0x108(r3)
/* 802FF10C  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 802FF110  48 00 00 74 */	b lbl_802FF184
lbl_802FF114:
/* 802FF114  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 802FF118  7C 00 28 40 */	cmplw r0, r5
/* 802FF11C  41 82 00 64 */	beq lbl_802FF180
/* 802FF120  55 24 15 BA */	rlwinm r4, r9, 2, 0x16, 0x1d
/* 802FF124  38 04 01 00 */	addi r0, r4, 0x100
/* 802FF128  7C E3 00 2E */	lwzx r7, r3, r0
/* 802FF12C  28 07 00 00 */	cmplwi r7, 0
/* 802FF130  41 82 00 50 */	beq lbl_802FF180
/* 802FF134  80 87 00 20 */	lwz r4, 0x20(r7)
/* 802FF138  28 04 00 00 */	cmplwi r4, 0
/* 802FF13C  41 82 00 44 */	beq lbl_802FF180
/* 802FF140  88 04 00 08 */	lbz r0, 8(r4)
/* 802FF144  28 00 00 00 */	cmplwi r0, 0
/* 802FF148  41 82 00 38 */	beq lbl_802FF180
/* 802FF14C  88 87 00 3A */	lbz r4, 0x3a(r7)
/* 802FF150  2C 04 00 10 */	cmpwi r4, 0x10
/* 802FF154  38 00 00 00 */	li r0, 0
/* 802FF158  41 80 00 08 */	blt lbl_802FF160
/* 802FF15C  38 00 00 10 */	li r0, 0x10
lbl_802FF160:
/* 802FF160  7C 00 20 50 */	subf r0, r0, r4
/* 802FF164  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802FF168  28 04 00 02 */	cmplwi r4, 2
/* 802FF16C  40 80 00 14 */	bge lbl_802FF180
/* 802FF170  38 00 00 01 */	li r0, 1
/* 802FF174  7C 00 20 30 */	slw r0, r0, r4
/* 802FF178  7D 00 03 78 */	or r0, r8, r0
/* 802FF17C  54 08 06 3E */	clrlwi r8, r0, 0x18
lbl_802FF180:
/* 802FF180  39 29 00 01 */	addi r9, r9, 1
lbl_802FF184:
/* 802FF184  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 802FF188  7C 00 30 40 */	cmplw r0, r6
/* 802FF18C  41 80 FF 88 */	blt lbl_802FF114
/* 802FF190  38 60 00 00 */	li r3, 0
/* 802FF194  38 C0 00 00 */	li r6, 0
/* 802FF198  55 05 06 3E */	clrlwi r5, r8, 0x18
/* 802FF19C  38 80 00 01 */	li r4, 1
/* 802FF1A0  48 00 00 20 */	b lbl_802FF1C0
lbl_802FF1A4:
/* 802FF1A4  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 802FF1A8  7C 80 00 30 */	slw r0, r4, r0
/* 802FF1AC  7C A0 00 39 */	and. r0, r5, r0
/* 802FF1B0  40 82 00 0C */	bne lbl_802FF1BC
/* 802FF1B4  7C C3 33 78 */	mr r3, r6
/* 802FF1B8  4E 80 00 20 */	blr 
lbl_802FF1BC:
/* 802FF1BC  38 C6 00 01 */	addi r6, r6, 1
lbl_802FF1C0:
/* 802FF1C0  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 802FF1C4  28 00 00 02 */	cmplwi r0, 2
/* 802FF1C8  41 80 FF DC */	blt lbl_802FF1A4
/* 802FF1CC  4E 80 00 20 */	blr 
