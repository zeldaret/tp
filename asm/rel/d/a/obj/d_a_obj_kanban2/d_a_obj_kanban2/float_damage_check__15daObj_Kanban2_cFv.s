lbl_8058221C:
/* 8058221C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80582220  7C 08 02 A6 */	mflr r0
/* 80582224  90 01 00 24 */	stw r0, 0x24(r1)
/* 80582228  39 61 00 20 */	addi r11, r1, 0x20
/* 8058222C  4B DD FF B1 */	bl _savegpr_29
/* 80582230  7C 7D 1B 78 */	mr r29, r3
/* 80582234  3C 60 80 58 */	lis r3, lit_3970@ha /* 0x80585620@ha */
/* 80582238  3B C3 56 20 */	addi r30, r3, lit_3970@l /* 0x80585620@l */
/* 8058223C  88 1D 06 28 */	lbz r0, 0x628(r29)
/* 80582240  28 00 00 00 */	cmplwi r0, 0
/* 80582244  41 82 00 0C */	beq lbl_80582250
/* 80582248  38 60 00 00 */	li r3, 0
/* 8058224C  48 00 00 8C */	b lbl_805822D8
lbl_80582250:
/* 80582250  38 7D 08 64 */	addi r3, r29, 0x864
/* 80582254  4B B0 15 DD */	bl Move__10dCcD_GSttsFv
/* 80582258  38 7D 08 84 */	addi r3, r29, 0x884
/* 8058225C  4B B0 22 05 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80582260  28 03 00 00 */	cmplwi r3, 0
/* 80582264  41 82 00 70 */	beq lbl_805822D4
/* 80582268  38 00 00 0A */	li r0, 0xa
/* 8058226C  98 1D 06 28 */	stb r0, 0x628(r29)
/* 80582270  38 00 04 00 */	li r0, 0x400
/* 80582274  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80582278  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8058227C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80582280  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80582284  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80582288  7F A3 EB 78 */	mr r3, r29
/* 8058228C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80582290  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80582294  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80582298  4B A9 84 79 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8058229C  7C 7F 1B 78 */	mr r31, r3
/* 805822A0  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 805822A4  4B CE 56 E9 */	bl cM_rndFX__Ff
/* 805822A8  FC 00 08 1E */	fctiwz f0, f1
/* 805822AC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805822B0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805822B4  3C 1F 00 01 */	addis r0, r31, 1
/* 805822B8  7C 60 1A 14 */	add r3, r0, r3
/* 805822BC  38 03 80 00 */	addi r0, r3, -32768
/* 805822C0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805822C4  7F A3 EB 78 */	mr r3, r29
/* 805822C8  48 00 08 35 */	bl setWaterEffect__15daObj_Kanban2_cFv
/* 805822CC  38 60 00 01 */	li r3, 1
/* 805822D0  48 00 00 08 */	b lbl_805822D8
lbl_805822D4:
/* 805822D4  38 60 00 00 */	li r3, 0
lbl_805822D8:
/* 805822D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805822DC  4B DD FF 4D */	bl _restgpr_29
/* 805822E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805822E4  7C 08 03 A6 */	mtlr r0
/* 805822E8  38 21 00 20 */	addi r1, r1, 0x20
/* 805822EC  4E 80 00 20 */	blr 
