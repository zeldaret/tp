lbl_80BC3C74:
/* 80BC3C74  88 03 07 2B */	lbz r0, 0x72b(r3)
/* 80BC3C78  28 00 00 00 */	cmplwi r0, 0
/* 80BC3C7C  40 82 00 10 */	bne lbl_80BC3C8C
/* 80BC3C80  80 03 06 04 */	lwz r0, 0x604(r3)
/* 80BC3C84  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80BC3C88  90 03 06 04 */	stw r0, 0x604(r3)
lbl_80BC3C8C:
/* 80BC3C8C  38 00 00 01 */	li r0, 1
/* 80BC3C90  98 03 07 29 */	stb r0, 0x729(r3)
/* 80BC3C94  4E 80 00 20 */	blr 
