lbl_80141230:
/* 80141230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80141234  7C 08 02 A6 */	mflr r0
/* 80141238  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014123C  7C 65 1B 78 */	mr r5, r3
/* 80141240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80141244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80141248  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 8014124C  7C 05 07 74 */	extsb r5, r0
/* 80141250  4B EF 3F B1 */	bl onSwitch__10dSv_info_cFii
/* 80141254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80141258  7C 08 03 A6 */	mtlr r0
/* 8014125C  38 21 00 10 */	addi r1, r1, 0x10
/* 80141260  4E 80 00 20 */	blr 
