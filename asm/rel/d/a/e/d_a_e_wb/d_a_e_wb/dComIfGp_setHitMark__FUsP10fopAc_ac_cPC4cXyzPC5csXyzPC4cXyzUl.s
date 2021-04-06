lbl_807E22B8:
/* 807E22B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E22BC  7C 08 02 A6 */	mflr r0
/* 807E22C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E22C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E22C8  7C 7F 1B 78 */	mr r31, r3
/* 807E22CC  7C 8C 23 78 */	mr r12, r4
/* 807E22D0  7C AB 2B 78 */	mr r11, r5
/* 807E22D4  7C CA 33 78 */	mr r10, r6
/* 807E22D8  7C E0 3B 78 */	mr r0, r7
/* 807E22DC  7D 09 43 78 */	mr r9, r8
/* 807E22E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E22E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E22E8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807E22EC  7F E4 FB 78 */	mr r4, r31
/* 807E22F0  7D 85 63 78 */	mr r5, r12
/* 807E22F4  7D 66 5B 78 */	mr r6, r11
/* 807E22F8  7D 47 53 78 */	mr r7, r10
/* 807E22FC  7C 08 03 78 */	mr r8, r0
/* 807E2300  4B 86 9F 19 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 807E2304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E2308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E230C  7C 08 03 A6 */	mtlr r0
/* 807E2310  38 21 00 10 */	addi r1, r1, 0x10
/* 807E2314  4E 80 00 20 */	blr 
