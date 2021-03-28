lbl_8009236C:
/* 8009236C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80092370  3C E0 80 40 */	lis r7, g_dComIfG_gameInfo@ha
/* 80092374  38 07 61 C0 */	addi r0, r7, g_dComIfG_gameInfo@l
/* 80092378  1C 63 00 38 */	mulli r3, r3, 0x38
/* 8009237C  7C 60 1A 14 */	add r3, r0, r3
/* 80092380  D0 03 5D 8C */	stfs f0, 0x5d8c(r3)
/* 80092384  C0 04 00 04 */	lfs f0, 4(r4)
/* 80092388  D0 03 5D 90 */	stfs f0, 0x5d90(r3)
/* 8009238C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80092390  D0 03 5D 94 */	stfs f0, 0x5d94(r3)
/* 80092394  C0 05 00 00 */	lfs f0, 0(r5)
/* 80092398  D0 03 5D 98 */	stfs f0, 0x5d98(r3)
/* 8009239C  C0 05 00 04 */	lfs f0, 4(r5)
/* 800923A0  D0 03 5D 9C */	stfs f0, 0x5d9c(r3)
/* 800923A4  C0 05 00 08 */	lfs f0, 8(r5)
/* 800923A8  D0 03 5D A0 */	stfs f0, 0x5da0(r3)
/* 800923AC  D0 23 5D A4 */	stfs f1, 0x5da4(r3)
/* 800923B0  B0 C3 5D A8 */	sth r6, 0x5da8(r3)
/* 800923B4  4E 80 00 20 */	blr 
