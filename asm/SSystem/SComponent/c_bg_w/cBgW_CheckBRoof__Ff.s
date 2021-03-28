lbl_802681FC:
/* 802681FC  C0 02 B6 EC */	lfs f0, lit_2249(r2)
/* 80268200  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268204  7C 00 00 26 */	mfcr r0
/* 80268208  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8026820C  4E 80 00 20 */	blr 
