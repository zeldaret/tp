lbl_804BB248:
/* 804BB248  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804BB24C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804BB250  1C 03 00 38 */	mulli r0, r3, 0x38
/* 804BB254  7C 64 02 14 */	add r3, r4, r0
/* 804BB258  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 804BB25C  4E 80 00 20 */	blr 
