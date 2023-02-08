lbl_804BB50C:
/* 804BB50C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BB510  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BB514  98 65 5E 41 */	stb r3, 0x5e41(r5)
/* 804BB518  98 85 5E 5B */	stb r4, 0x5e5b(r5)
/* 804BB51C  4E 80 00 20 */	blr 
