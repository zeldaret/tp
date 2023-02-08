lbl_804FA488:
/* 804FA488  C0 04 00 00 */	lfs f0, 0(r4)
/* 804FA48C  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 804FA490  C0 04 00 04 */	lfs f0, 4(r4)
/* 804FA494  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 804FA498  C0 04 00 08 */	lfs f0, 8(r4)
/* 804FA49C  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 804FA4A0  4E 80 00 20 */	blr 
