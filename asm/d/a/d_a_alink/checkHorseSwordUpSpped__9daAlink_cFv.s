lbl_800EEE30:
/* 800EEE30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800EEE34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800EEE38  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800EEE3C  C0 43 05 2C */	lfs f2, 0x52c(r3)
/* 800EEE40  C0 22 94 D0 */	lfs f1, lit_18847(r2)
/* 800EEE44  C0 03 17 90 */	lfs f0, 0x1790(r3)
/* 800EEE48  EC 01 00 32 */	fmuls f0, f1, f0
/* 800EEE4C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800EEE50  7C 00 00 26 */	mfcr r0
/* 800EEE54  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 800EEE58  4E 80 00 20 */	blr 
