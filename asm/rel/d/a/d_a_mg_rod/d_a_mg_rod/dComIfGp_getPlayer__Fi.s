lbl_804BB27C:
/* 804BB27C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804BB280  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804BB284  54 60 18 38 */	slwi r0, r3, 3
/* 804BB288  7C 64 02 14 */	add r3, r4, r0
/* 804BB28C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804BB290  4E 80 00 20 */	blr 
