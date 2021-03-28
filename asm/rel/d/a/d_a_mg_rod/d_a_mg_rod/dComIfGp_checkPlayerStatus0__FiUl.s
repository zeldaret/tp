lbl_804BB21C:
/* 804BB21C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804BB220  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804BB224  54 60 20 36 */	slwi r0, r3, 4
/* 804BB228  7C 65 02 14 */	add r3, r5, r0
/* 804BB22C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804BB230  7C 03 20 38 */	and r3, r0, r4
/* 804BB234  4E 80 00 20 */	blr 
