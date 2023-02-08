lbl_80AEB1A0:
/* 80AEB1A0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80AEB1A4  98 03 05 6C */	stb r0, 0x56c(r3)
/* 80AEB1A8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80AEB1AC  54 00 C4 3E */	rlwinm r0, r0, 0x18, 0x10, 0x1f
/* 80AEB1B0  90 03 05 90 */	stw r0, 0x590(r3)
/* 80AEB1B4  38 00 00 09 */	li r0, 9
/* 80AEB1B8  90 03 05 90 */	stw r0, 0x590(r3)
/* 80AEB1BC  38 00 00 00 */	li r0, 0
/* 80AEB1C0  98 03 09 EA */	stb r0, 0x9ea(r3)
/* 80AEB1C4  4E 80 00 20 */	blr 
