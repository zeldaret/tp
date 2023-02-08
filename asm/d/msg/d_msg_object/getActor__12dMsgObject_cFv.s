lbl_8023819C:
/* 8023819C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802381A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802381A4  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802381A8  28 03 00 00 */	cmplwi r3, 0
/* 802381AC  40 82 00 0C */	bne lbl_802381B8
/* 802381B0  38 60 00 00 */	li r3, 0
/* 802381B4  4E 80 00 20 */	blr 
lbl_802381B8:
/* 802381B8  80 63 01 00 */	lwz r3, 0x100(r3)
/* 802381BC  4E 80 00 20 */	blr 
