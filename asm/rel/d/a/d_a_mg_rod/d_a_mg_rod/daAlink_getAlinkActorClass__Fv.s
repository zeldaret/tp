lbl_804BB1F0:
/* 804BB1F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BB1F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BB1F8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804BB1FC  4E 80 00 20 */	blr 
