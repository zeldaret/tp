lbl_80627CBC:
/* 80627CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80627CC0  7C 08 02 A6 */	mflr r0
/* 80627CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80627CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80627CCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80627CD0  7C 7E 1B 78 */	mr r30, r3
/* 80627CD4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80627CD8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80627CDC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80627CE0  4B 9F 2B 01 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80627CE4  3C 60 80 63 */	lis r3, lit_6390@ha /* 0x8062E728@ha */
/* 80627CE8  C0 03 E7 28 */	lfs f0, lit_6390@l(r3)  /* 0x8062E728@l */
/* 80627CEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80627CF0  40 80 00 30 */	bge lbl_80627D20
/* 80627CF4  7F C3 F3 78 */	mr r3, r30
/* 80627CF8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80627CFC  4B 9F 2A 15 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80627D00  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80627D04  7C 00 18 50 */	subf r0, r0, r3
/* 80627D08  7C 03 07 34 */	extsh r3, r0
/* 80627D0C  4B D3 D3 C5 */	bl abs
/* 80627D10  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80627D14  40 80 00 0C */	bge lbl_80627D20
/* 80627D18  38 60 00 01 */	li r3, 1
/* 80627D1C  48 00 00 08 */	b lbl_80627D24
lbl_80627D20:
/* 80627D20  38 60 00 00 */	li r3, 0
lbl_80627D24:
/* 80627D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80627D28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80627D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80627D30  7C 08 03 A6 */	mtlr r0
/* 80627D34  38 21 00 10 */	addi r1, r1, 0x10
/* 80627D38  4E 80 00 20 */	blr 
