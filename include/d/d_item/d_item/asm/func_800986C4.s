/* 800986C4 00095604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800986C8 00095608  7C 08 02 A6 */	mflr r0
/* 800986CC 0009560C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800986D0 00095610  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800986D4 00095614  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800986D8 00095618  38 63 01 00 */	addi r3, r3, 0x100
/* 800986DC 0009561C  38 80 00 01 */	li r4, 1
/* 800986E0 00095620  38 A0 00 02 */	li r5, 2
/* 800986E4 00095624  4B F9 BB 05 */	bl setCollect__20dSv_player_collect_cFiUc
/* 800986E8 00095628  38 60 00 3F */	li r3, 0x3f
/* 800986EC 0009562C  4B F9 67 D5 */	bl dComIfGs_setSelectEquipSword
/* 800986F0 00095630  88 AD 87 E4 */	lbz r5, lbl_80450D64-_SDA_BASE_(r13)
/* 800986F4 00095634  7C A5 07 74 */	extsb r5, r5
/* 800986F8 00095638  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800986FC 0009563C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098700 00095640  38 80 00 1C */	li r4, 0x1c
/* 80098704 00095644  4B F9 CA FD */	bl onSwitch__10dSv_info_cFii
/* 80098708 00095648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009870C 0009564C  7C 08 03 A6 */	mtlr r0
/* 80098710 00095650  38 21 00 10 */	addi r1, r1, 0x10
/* 80098714 00095654  4E 80 00 20 */	blr 