lbl_804C6DCC:
/* 804C6DCC  88 04 04 96 */	lbz r0, 0x496(r4)
/* 804C6DD0  28 00 00 02 */	cmplwi r0, 2
/* 804C6DD4  41 82 00 2C */	beq lbl_804C6E00
/* 804C6DD8  80 A3 0B 4C */	lwz r5, 0xb4c(r3)
/* 804C6DDC  54 A0 05 6B */	rlwinm. r0, r5, 0, 0x15, 0x15
/* 804C6DE0  4D 82 00 20 */	beqlr 
/* 804C6DE4  54 A0 06 31 */	rlwinm. r0, r5, 0, 0x18, 0x18
/* 804C6DE8  41 82 00 18 */	beq lbl_804C6E00
/* 804C6DEC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C6DF0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C6DF4  80 05 5D B4 */	lwz r0, 0x5db4(r5)
/* 804C6DF8  7C 04 00 40 */	cmplw r4, r0
/* 804C6DFC  4D 82 00 20 */	beqlr 
lbl_804C6E00:
/* 804C6E00  80 03 0B 4C */	lwz r0, 0xb4c(r3)
/* 804C6E04  60 00 00 04 */	ori r0, r0, 4
/* 804C6E08  90 03 0B 4C */	stw r0, 0xb4c(r3)
/* 804C6E0C  4E 80 00 20 */	blr 
