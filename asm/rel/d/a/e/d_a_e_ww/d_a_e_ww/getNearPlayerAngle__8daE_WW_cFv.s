lbl_807E7FCC:
/* 807E7FCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807E7FD0  7C 08 02 A6 */	mflr r0
/* 807E7FD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807E7FD8  39 61 00 20 */	addi r11, r1, 0x20
/* 807E7FDC  4B B7 A2 00 */	b _savegpr_29
/* 807E7FE0  7C 7D 1B 78 */	mr r29, r3
/* 807E7FE4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807E7FE8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807E7FEC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807E7FF0  4B 83 27 20 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807E7FF4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807E7FF8  7C 7F 07 34 */	extsh r31, r3
/* 807E7FFC  7C 00 F8 50 */	subf r0, r0, r31
/* 807E8000  7C 1E 07 34 */	extsh r30, r0
/* 807E8004  7F C3 F3 78 */	mr r3, r30
/* 807E8008  4B B7 D0 C8 */	b abs
/* 807E800C  2C 03 18 00 */	cmpwi r3, 0x1800
/* 807E8010  41 80 00 20 */	blt lbl_807E8030
/* 807E8014  7F C0 07 35 */	extsh. r0, r30
/* 807E8018  38 1F E8 00 */	addi r0, r31, -6144
/* 807E801C  7C 03 07 34 */	extsh r3, r0
/* 807E8020  40 80 00 14 */	bge lbl_807E8034
/* 807E8024  38 1F 18 00 */	addi r0, r31, 0x1800
/* 807E8028  7C 03 07 34 */	extsh r3, r0
/* 807E802C  48 00 00 08 */	b lbl_807E8034
lbl_807E8030:
/* 807E8030  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
lbl_807E8034:
/* 807E8034  39 61 00 20 */	addi r11, r1, 0x20
/* 807E8038  4B B7 A1 F0 */	b _restgpr_29
/* 807E803C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807E8040  7C 08 03 A6 */	mtlr r0
/* 807E8044  38 21 00 20 */	addi r1, r1, 0x20
/* 807E8048  4E 80 00 20 */	blr 
