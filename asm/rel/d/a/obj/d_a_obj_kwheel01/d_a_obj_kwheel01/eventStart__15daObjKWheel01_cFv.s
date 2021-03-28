lbl_80C4F498:
/* 80C4F498  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C4F49C  54 00 C7 FF */	rlwinm. r0, r0, 0x18, 0x1f, 0x1f
/* 80C4F4A0  41 82 00 10 */	beq lbl_80C4F4B0
/* 80C4F4A4  38 00 00 02 */	li r0, 2
/* 80C4F4A8  B0 03 06 1C */	sth r0, 0x61c(r3)
/* 80C4F4AC  48 00 00 0C */	b lbl_80C4F4B8
lbl_80C4F4B0:
/* 80C4F4B0  38 00 FF FE */	li r0, -2
/* 80C4F4B4  B0 03 06 1C */	sth r0, 0x61c(r3)
lbl_80C4F4B8:
/* 80C4F4B8  38 60 00 01 */	li r3, 1
/* 80C4F4BC  4E 80 00 20 */	blr 
