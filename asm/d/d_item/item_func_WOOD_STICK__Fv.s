lbl_800986C4:
/* 800986C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800986C8  7C 08 02 A6 */	mflr r0
/* 800986CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800986D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800986D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800986D8  38 63 01 00 */	addi r3, r3, 0x100
/* 800986DC  38 80 00 01 */	li r4, 1
/* 800986E0  38 A0 00 02 */	li r5, 2
/* 800986E4  4B F9 BB 05 */	bl setCollect__20dSv_player_collect_cFiUc
/* 800986E8  38 60 00 3F */	li r3, 0x3f
/* 800986EC  4B F9 67 D5 */	bl dComIfGs_setSelectEquipSword__FUc
/* 800986F0  88 AD 87 E4 */	lbz r5, struct_80450D64+0x0(r13)
/* 800986F4  7C A5 07 74 */	extsb r5, r5
/* 800986F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800986FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098700  38 80 00 1C */	li r4, 0x1c
/* 80098704  4B F9 CA FD */	bl onSwitch__10dSv_info_cFii
/* 80098708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009870C  7C 08 03 A6 */	mtlr r0
/* 80098710  38 21 00 10 */	addi r1, r1, 0x10
/* 80098714  4E 80 00 20 */	blr 
