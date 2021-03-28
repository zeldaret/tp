lbl_8033A780:
/* 8033A780  38 60 00 00 */	li r3, 0
/* 8033A784  80 80 00 D4 */	lwz r4, 0xd4(r0)
/* 8033A788  54 A5 07 BD */	rlwinm. r5, r5, 0, 0x1e, 0x1e
/* 8033A78C  40 82 00 14 */	bne lbl_8033A7A0
/* 8033A790  3C A0 80 34 */	lis r5, OSDefaultExceptionHandler@ha
/* 8033A794  38 A5 A7 B4 */	addi r5, r5, OSDefaultExceptionHandler@l
/* 8033A798  7C BA 03 A6 */	mtspr 0x1a, r5
/* 8033A79C  4C 00 00 64 */	rfi 
lbl_8033A7A0:
/* 8033A7A0  54 65 15 BA */	rlwinm r5, r3, 2, 0x16, 0x1d
/* 8033A7A4  80 A5 30 00 */	lwz r5, 0x3000(r5)
/* 8033A7A8  7C BA 03 A6 */	mtspr 0x1a, r5
/* 8033A7AC  4C 00 00 64 */	rfi 
