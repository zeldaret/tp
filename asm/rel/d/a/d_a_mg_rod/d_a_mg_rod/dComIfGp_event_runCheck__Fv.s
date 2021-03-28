lbl_804BB200:
/* 804BB200  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BB204  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BB208  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 804BB20C  30 03 FF FF */	addic r0, r3, -1
/* 804BB210  7C 00 19 10 */	subfe r0, r0, r3
/* 804BB214  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 804BB218  4E 80 00 20 */	blr 
