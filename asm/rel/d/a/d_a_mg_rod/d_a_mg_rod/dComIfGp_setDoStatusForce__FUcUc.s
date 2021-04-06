lbl_804BB4F8:
/* 804BB4F8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BB4FC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BB500  98 65 5E 3C */	stb r3, 0x5e3c(r5)
/* 804BB504  98 85 5E 57 */	stb r4, 0x5e57(r5)
/* 804BB508  4E 80 00 20 */	blr 
