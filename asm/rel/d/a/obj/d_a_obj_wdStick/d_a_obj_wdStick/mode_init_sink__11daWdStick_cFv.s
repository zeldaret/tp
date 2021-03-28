lbl_80D33D68:
/* 80D33D68  38 00 00 00 */	li r0, 0
/* 80D33D6C  B0 03 0A B0 */	sth r0, 0xab0(r3)
/* 80D33D70  B0 03 0A AE */	sth r0, 0xaae(r3)
/* 80D33D74  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80D33D78  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80D33D7C  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80D33D80  38 00 00 04 */	li r0, 4
/* 80D33D84  98 03 05 78 */	stb r0, 0x578(r3)
/* 80D33D88  4E 80 00 20 */	blr 
