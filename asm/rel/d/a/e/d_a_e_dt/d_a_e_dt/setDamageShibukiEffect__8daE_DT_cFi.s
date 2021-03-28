lbl_806AF3D0:
/* 806AF3D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806AF3D4  7C 08 02 A6 */	mflr r0
/* 806AF3D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 806AF3DC  7C 68 1B 78 */	mr r8, r3
/* 806AF3E0  7C 85 23 78 */	mr r5, r4
/* 806AF3E4  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 806AF3E8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806AF3EC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806AF3F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806AF3F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806AF3F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806AF3FC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806AF400  38 80 00 00 */	li r4, 0
/* 806AF404  90 81 00 08 */	stw r4, 8(r1)
/* 806AF408  38 00 FF FF */	li r0, -1
/* 806AF40C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806AF410  90 81 00 10 */	stw r4, 0x10(r1)
/* 806AF414  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AF418  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AF41C  38 80 00 00 */	li r4, 0
/* 806AF420  54 A0 08 3C */	slwi r0, r5, 1
/* 806AF424  3C A0 80 6B */	lis r5, w_eff_id_4529@ha
/* 806AF428  38 A5 60 84 */	addi r5, r5, w_eff_id_4529@l
/* 806AF42C  7C A5 02 2E */	lhzx r5, r5, r0
/* 806AF430  38 C8 04 D0 */	addi r6, r8, 0x4d0
/* 806AF434  38 E8 01 0C */	addi r7, r8, 0x10c
/* 806AF438  39 08 04 E4 */	addi r8, r8, 0x4e4
/* 806AF43C  39 21 00 20 */	addi r9, r1, 0x20
/* 806AF440  39 40 00 FF */	li r10, 0xff
/* 806AF444  3D 60 80 6B */	lis r11, lit_3868@ha
/* 806AF448  C0 2B 5C FC */	lfs f1, lit_3868@l(r11)
/* 806AF44C  4B 99 D6 44 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AF450  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AF454  7C 08 03 A6 */	mtlr r0
/* 806AF458  38 21 00 30 */	addi r1, r1, 0x30
/* 806AF45C  4E 80 00 20 */	blr 
