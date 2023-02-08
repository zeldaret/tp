lbl_804C88CC:
/* 804C88CC  80 03 0B 4C */	lwz r0, 0xb4c(r3)
/* 804C88D0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804C88D4  4C 82 00 20 */	bnelr 
/* 804C88D8  80 03 0B 4C */	lwz r0, 0xb4c(r3)
/* 804C88DC  60 00 02 00 */	ori r0, r0, 0x200
/* 804C88E0  90 03 0B 4C */	stw r0, 0xb4c(r3)
/* 804C88E4  38 00 00 5A */	li r0, 0x5a
/* 804C88E8  B0 03 0B 5E */	sth r0, 0xb5e(r3)
/* 804C88EC  4E 80 00 20 */	blr 
