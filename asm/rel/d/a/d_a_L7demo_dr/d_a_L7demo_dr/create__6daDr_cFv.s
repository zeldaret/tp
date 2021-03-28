lbl_805AA224:
/* 805AA224  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AA228  7C 08 02 A6 */	mflr r0
/* 805AA22C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AA230  39 61 00 30 */	addi r11, r1, 0x30
/* 805AA234  4B DB 7F A8 */	b _savegpr_29
/* 805AA238  7C 7E 1B 78 */	mr r30, r3
/* 805AA23C  3C 80 80 5B */	lis r4, lit_3864@ha
/* 805AA240  3B A4 A4 54 */	addi r29, r4, lit_3864@l
/* 805AA244  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805AA248  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805AA24C  40 82 00 28 */	bne lbl_805AA274
/* 805AA250  7F C0 F3 79 */	or. r0, r30, r30
/* 805AA254  41 82 00 14 */	beq lbl_805AA268
/* 805AA258  7C 1F 03 78 */	mr r31, r0
/* 805AA25C  4B A6 E9 08 */	b __ct__10fopAc_ac_cFv
/* 805AA260  38 7F 05 74 */	addi r3, r31, 0x574
/* 805AA264  4B D1 6D 00 */	b __ct__15Z2CreatureEnemyFv
lbl_805AA268:
/* 805AA268  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 805AA26C  60 00 00 08 */	ori r0, r0, 8
/* 805AA270  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_805AA274:
/* 805AA274  38 60 00 00 */	li r3, 0
/* 805AA278  4B A8 27 04 */	b getLayerNo__14dComIfG_play_cFi
/* 805AA27C  2C 03 00 03 */	cmpwi r3, 3
/* 805AA280  40 82 01 14 */	bne lbl_805AA394
/* 805AA284  38 7E 05 68 */	addi r3, r30, 0x568
/* 805AA288  3C 80 80 5B */	lis r4, stringBase0@ha
/* 805AA28C  38 84 A4 C8 */	addi r4, r4, stringBase0@l
/* 805AA290  4B A8 2C 2C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805AA294  7C 7F 1B 78 */	mr r31, r3
/* 805AA298  2C 1F 00 04 */	cmpwi r31, 4
/* 805AA29C  40 82 01 74 */	bne lbl_805AA410
/* 805AA2A0  7F C3 F3 78 */	mr r3, r30
/* 805AA2A4  3C 80 80 5B */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 805AA2A8  38 84 A1 7C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 805AA2AC  38 A0 68 C0 */	li r5, 0x68c0
/* 805AA2B0  4B A7 02 00 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805AA2B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805AA2B8  40 82 00 0C */	bne lbl_805AA2C4
/* 805AA2BC  38 60 00 05 */	li r3, 5
/* 805AA2C0  48 00 01 54 */	b lbl_805AA414
lbl_805AA2C4:
/* 805AA2C4  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 805AA2C8  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 805AA2CC  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 805AA2D0  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 805AA2D4  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 805AA2D8  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 805AA2DC  C0 1E 06 18 */	lfs f0, 0x618(r30)
/* 805AA2E0  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 805AA2E4  C0 1E 06 1C */	lfs f0, 0x61c(r30)
/* 805AA2E8  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 805AA2EC  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 805AA2F0  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 805AA2F4  38 7E 05 74 */	addi r3, r30, 0x574
/* 805AA2F8  38 9E 06 18 */	addi r4, r30, 0x618
/* 805AA2FC  38 BE 05 38 */	addi r5, r30, 0x538
/* 805AA300  38 C0 00 03 */	li r6, 3
/* 805AA304  38 E0 00 01 */	li r7, 1
/* 805AA308  4B D1 6D 8C */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 805AA30C  38 00 00 01 */	li r0, 1
/* 805AA310  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 805AA314  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 805AA318  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 805AA31C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 805AA320  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 805AA324  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 805AA328  3C 60 80 5B */	lis r3, lit_4306@ha
/* 805AA32C  38 83 A5 0C */	addi r4, r3, lit_4306@l
/* 805AA330  80 64 00 00 */	lwz r3, 0(r4)
/* 805AA334  80 04 00 04 */	lwz r0, 4(r4)
/* 805AA338  90 61 00 14 */	stw r3, 0x14(r1)
/* 805AA33C  90 01 00 18 */	stw r0, 0x18(r1)
/* 805AA340  80 04 00 08 */	lwz r0, 8(r4)
/* 805AA344  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805AA348  7F C3 F3 78 */	mr r3, r30
/* 805AA34C  38 81 00 14 */	addi r4, r1, 0x14
/* 805AA350  4B FF EE E9 */	bl setAction__6daDr_cFM6daDr_cFPCvPv_v
/* 805AA354  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805AA358  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805AA35C  28 04 00 FF */	cmplwi r4, 0xff
/* 805AA360  41 82 00 28 */	beq lbl_805AA388
/* 805AA364  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805AA368  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805AA36C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805AA370  7C 05 07 74 */	extsb r5, r0
/* 805AA374  4B A8 AF EC */	b isSwitch__10dSv_info_cCFii
/* 805AA378  2C 03 00 00 */	cmpwi r3, 0
/* 805AA37C  41 82 00 0C */	beq lbl_805AA388
/* 805AA380  38 60 00 05 */	li r3, 5
/* 805AA384  48 00 00 90 */	b lbl_805AA414
lbl_805AA388:
/* 805AA388  7F C3 F3 78 */	mr r3, r30
/* 805AA38C  4B FF FC 49 */	bl daDr_Execute__FP6daDr_c
/* 805AA390  48 00 00 80 */	b lbl_805AA410
lbl_805AA394:
/* 805AA394  3B E0 00 04 */	li r31, 4
/* 805AA398  38 00 00 01 */	li r0, 1
/* 805AA39C  98 1E 06 58 */	stb r0, 0x658(r30)
/* 805AA3A0  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 805AA3A4  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 805AA3A8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805AA3AC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805AA3B0  28 04 00 FF */	cmplwi r4, 0xff
/* 805AA3B4  41 82 00 28 */	beq lbl_805AA3DC
/* 805AA3B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805AA3BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805AA3C0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805AA3C4  7C 05 07 74 */	extsb r5, r0
/* 805AA3C8  4B A8 AF 98 */	b isSwitch__10dSv_info_cCFii
/* 805AA3CC  2C 03 00 00 */	cmpwi r3, 0
/* 805AA3D0  41 82 00 0C */	beq lbl_805AA3DC
/* 805AA3D4  38 60 00 05 */	li r3, 5
/* 805AA3D8  48 00 00 3C */	b lbl_805AA414
lbl_805AA3DC:
/* 805AA3DC  3C 60 80 5B */	lis r3, lit_4317@ha
/* 805AA3E0  38 83 A5 18 */	addi r4, r3, lit_4317@l
/* 805AA3E4  80 64 00 00 */	lwz r3, 0(r4)
/* 805AA3E8  80 04 00 04 */	lwz r0, 4(r4)
/* 805AA3EC  90 61 00 08 */	stw r3, 8(r1)
/* 805AA3F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AA3F4  80 04 00 08 */	lwz r0, 8(r4)
/* 805AA3F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AA3FC  7F C3 F3 78 */	mr r3, r30
/* 805AA400  38 81 00 08 */	addi r4, r1, 8
/* 805AA404  4B FF EE 35 */	bl setAction__6daDr_cFM6daDr_cFPCvPv_v
/* 805AA408  7F C3 F3 78 */	mr r3, r30
/* 805AA40C  4B FF FB C9 */	bl daDr_Execute__FP6daDr_c
lbl_805AA410:
/* 805AA410  7F E3 FB 78 */	mr r3, r31
lbl_805AA414:
/* 805AA414  39 61 00 30 */	addi r11, r1, 0x30
/* 805AA418  4B DB 7E 10 */	b _restgpr_29
/* 805AA41C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AA420  7C 08 03 A6 */	mtlr r0
/* 805AA424  38 21 00 30 */	addi r1, r1, 0x30
/* 805AA428  4E 80 00 20 */	blr 
