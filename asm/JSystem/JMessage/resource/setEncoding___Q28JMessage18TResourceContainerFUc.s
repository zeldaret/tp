lbl_802A90F0:
/* 802A90F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A90F4  98 83 00 00 */	stb r4, 0(r3)
/* 802A90F8  38 00 00 00 */	li r0, 0
/* 802A90FC  90 01 00 08 */	stw r0, 8(r1)
/* 802A9100  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802A9104  28 00 00 05 */	cmplwi r0, 5
/* 802A9108  54 85 15 BA */	rlwinm r5, r4, 2, 0x16, 0x1d
/* 802A910C  3C 80 80 3D */	lis r4, sapfnParseCharacter___Q28JMessage18TResourceContainer@ha
/* 802A9110  38 04 9C 80 */	addi r0, r4, sapfnParseCharacter___Q28JMessage18TResourceContainer@l
/* 802A9114  7C 80 2A 14 */	add r4, r0, r5
/* 802A9118  41 80 00 08 */	blt lbl_802A9120
/* 802A911C  38 81 00 08 */	addi r4, r1, 8
lbl_802A9120:
/* 802A9120  80 04 00 00 */	lwz r0, 0(r4)
/* 802A9124  90 03 00 04 */	stw r0, 4(r3)
/* 802A9128  38 21 00 10 */	addi r1, r1, 0x10
/* 802A912C  4E 80 00 20 */	blr 
