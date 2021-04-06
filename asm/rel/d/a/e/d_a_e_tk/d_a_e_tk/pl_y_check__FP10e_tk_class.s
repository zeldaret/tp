lbl_807B8428:
/* 807B8428  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 807B842C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B8430  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B8434  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807B8438  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807B843C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807B8440  3C 60 80 7C */	lis r3, lit_3830@ha /* 0x807BA28C@ha */
/* 807B8444  C0 03 A2 8C */	lfs f0, lit_3830@l(r3)  /* 0x807BA28C@l */
/* 807B8448  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B844C  7C 00 00 26 */	mfcr r0
/* 807B8450  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 807B8454  7C 00 00 34 */	cntlzw r0, r0
/* 807B8458  54 03 D9 7E */	srwi r3, r0, 5
/* 807B845C  4E 80 00 20 */	blr 
