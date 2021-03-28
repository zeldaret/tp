lbl_804CE1F0:
/* 804CE1F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CE1F4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 804CE1F8  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 804CE1FC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 804CE200  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 804CE204  90 03 00 48 */	stw r0, 0x48(r3)
/* 804CE208  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 804CE20C  90 03 00 4C */	stw r0, 0x4c(r3)
/* 804CE210  4E 80 00 20 */	blr 
