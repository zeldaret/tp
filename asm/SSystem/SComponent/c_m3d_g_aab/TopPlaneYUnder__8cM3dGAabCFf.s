lbl_8026ECE4:
/* 8026ECE4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8026ECE8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026ECEC  7C 00 00 26 */	mfcr r0
/* 8026ECF0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8026ECF4  4E 80 00 20 */	blr 
