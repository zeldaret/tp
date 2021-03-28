lbl_809BA53C:
/* 809BA53C  C0 04 00 00 */	lfs f0, 0(r4)
/* 809BA540  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 809BA544  C0 04 00 04 */	lfs f0, 4(r4)
/* 809BA548  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 809BA54C  C0 04 00 08 */	lfs f0, 8(r4)
/* 809BA550  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 809BA554  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 809BA558  D0 03 0A D4 */	stfs f0, 0xad4(r3)
/* 809BA55C  B0 A3 04 E6 */	sth r5, 0x4e6(r3)
/* 809BA560  4E 80 00 20 */	blr 
