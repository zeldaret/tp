lbl_8026ECD0:
/* 8026ECD0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8026ECD4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026ECD8  7C 00 00 26 */	mfcr r0
/* 8026ECDC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8026ECE0  4E 80 00 20 */	blr 
