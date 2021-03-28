lbl_8035C984:
/* 8035C984  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035C988  54 65 FF FE */	rlwinm r5, r3, 0x1f, 0x1f, 0x1f
/* 8035C98C  50 65 0F BC */	rlwimi r5, r3, 1, 0x1e, 0x1e
/* 8035C990  80 04 02 04 */	lwz r0, 0x204(r4)
/* 8035C994  50 A0 74 22 */	rlwimi r0, r5, 0xe, 0x10, 0x11
/* 8035C998  90 04 02 04 */	stw r0, 0x204(r4)
/* 8035C99C  80 04 05 AC */	lwz r0, 0x5ac(r4)
/* 8035C9A0  60 00 00 04 */	ori r0, r0, 4
/* 8035C9A4  90 04 05 AC */	stw r0, 0x5ac(r4)
/* 8035C9A8  4E 80 00 20 */	blr 
