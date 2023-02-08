lbl_80ACC4A8:
/* 80ACC4A8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80ACC4AC  54 00 C5 2E */	rlwinm r0, r0, 0x18, 0x14, 0x17
/* 80ACC4B0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80ACC4B4  38 03 FF FF */	addi r0, r3, -1
/* 80ACC4B8  30 00 FF FF */	addic r0, r0, -1
/* 80ACC4BC  7C 00 01 10 */	subfe r0, r0, r0
/* 80ACC4C0  7C 63 00 38 */	and r3, r3, r0
/* 80ACC4C4  4E 80 00 20 */	blr 
