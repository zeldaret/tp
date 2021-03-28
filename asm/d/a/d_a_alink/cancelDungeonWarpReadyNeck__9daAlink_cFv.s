lbl_800D07FC:
/* 800D07FC  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0800  28 00 00 EA */	cmplwi r0, 0xea
/* 800D0804  4C 82 00 20 */	bnelr 
/* 800D0808  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800D080C  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 800D0810  90 03 31 A0 */	stw r0, 0x31a0(r3)
/* 800D0814  4E 80 00 20 */	blr 
