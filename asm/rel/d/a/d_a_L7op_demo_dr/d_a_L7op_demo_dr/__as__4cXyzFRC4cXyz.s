lbl_805ADF2C:
/* 805ADF2C  C0 04 00 00 */	lfs f0, 0(r4)
/* 805ADF30  D0 03 00 00 */	stfs f0, 0(r3)
/* 805ADF34  C0 04 00 04 */	lfs f0, 4(r4)
/* 805ADF38  D0 03 00 04 */	stfs f0, 4(r3)
/* 805ADF3C  C0 04 00 08 */	lfs f0, 8(r4)
/* 805ADF40  D0 03 00 08 */	stfs f0, 8(r3)
/* 805ADF44  4E 80 00 20 */	blr 
