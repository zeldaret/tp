lbl_8077E070:
/* 8077E070  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8077E074  7C 08 02 A6 */	mflr r0
/* 8077E078  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8077E07C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8077E080  4B BE 41 48 */	b _savegpr_24
/* 8077E084  7C 7D 1B 78 */	mr r29, r3
/* 8077E088  3C 80 80 78 */	lis r4, lit_3903@ha
/* 8077E08C  3B C4 0D C4 */	addi r30, r4, lit_3903@l
/* 8077E090  4B FF D2 89 */	bl damage_check__FP10e_s1_class
/* 8077E094  38 7D 06 BC */	addi r3, r29, 0x6bc
/* 8077E098  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8077E09C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8077E0A0  4B 8F 7E B8 */	b SetWall__12dBgS_AcchCirFff
/* 8077E0A4  3B E0 00 01 */	li r31, 1
/* 8077E0A8  3B 80 00 00 */	li r28, 0
/* 8077E0AC  3B 60 00 01 */	li r27, 1
/* 8077E0B0  3B 40 00 01 */	li r26, 1
/* 8077E0B4  3B 20 00 00 */	li r25, 0
/* 8077E0B8  3B 00 00 00 */	li r24, 0
/* 8077E0BC  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8077E0C0  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8077E0C4  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8077E0C8  A8 1D 06 96 */	lha r0, 0x696(r29)
/* 8077E0CC  28 00 00 14 */	cmplwi r0, 0x14
/* 8077E0D0  41 81 00 E8 */	bgt lbl_8077E1B8
/* 8077E0D4  3C 60 80 78 */	lis r3, lit_5377@ha
/* 8077E0D8  38 63 10 B4 */	addi r3, r3, lit_5377@l
/* 8077E0DC  54 00 10 3A */	slwi r0, r0, 2
/* 8077E0E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8077E0E4  7C 09 03 A6 */	mtctr r0
/* 8077E0E8  4E 80 04 20 */	bctr 
lbl_8077E0EC:
/* 8077E0EC  7F A3 EB 78 */	mr r3, r29
/* 8077E0F0  4B FF D8 39 */	bl e_s1_wait__FP10e_s1_class
/* 8077E0F4  3B 80 00 01 */	li r28, 1
/* 8077E0F8  48 00 00 C0 */	b lbl_8077E1B8
lbl_8077E0FC:
/* 8077E0FC  7F A3 EB 78 */	mr r3, r29
/* 8077E100  4B FF DB 8D */	bl e_s1_roof__FP10e_s1_class
/* 8077E104  48 00 00 B4 */	b lbl_8077E1B8
lbl_8077E108:
/* 8077E108  7F A3 EB 78 */	mr r3, r29
/* 8077E10C  4B FF DD A1 */	bl e_s1_fight_run__FP10e_s1_class
/* 8077E110  3B 80 00 01 */	li r28, 1
/* 8077E114  3B 00 00 01 */	li r24, 1
/* 8077E118  48 00 00 A0 */	b lbl_8077E1B8
lbl_8077E11C:
/* 8077E11C  7F A3 EB 78 */	mr r3, r29
/* 8077E120  4B FF DE DD */	bl e_s1_fight__FP10e_s1_class
/* 8077E124  3B 80 00 01 */	li r28, 1
/* 8077E128  3B 00 00 01 */	li r24, 1
/* 8077E12C  48 00 00 8C */	b lbl_8077E1B8
lbl_8077E130:
/* 8077E130  7F A3 EB 78 */	mr r3, r29
/* 8077E134  4B FF E1 C5 */	bl e_s1_bibiri__FP10e_s1_class
/* 8077E138  48 00 00 80 */	b lbl_8077E1B8
lbl_8077E13C:
/* 8077E13C  7F A3 EB 78 */	mr r3, r29
/* 8077E140  4B FF E3 ED */	bl e_s1_damage__FP10e_s1_class
/* 8077E144  48 00 00 74 */	b lbl_8077E1B8
lbl_8077E148:
/* 8077E148  7F A3 EB 78 */	mr r3, r29
/* 8077E14C  4B FF E4 B1 */	bl e_s1_path__FP10e_s1_class
/* 8077E150  48 00 00 68 */	b lbl_8077E1B8
lbl_8077E154:
/* 8077E154  7F A3 EB 78 */	mr r3, r29
/* 8077E158  4B FF FB 39 */	bl e_s1_wolfbite__FP10e_s1_class
/* 8077E15C  48 00 00 5C */	b lbl_8077E1B8
lbl_8077E160:
/* 8077E160  7F A3 EB 78 */	mr r3, r29
/* 8077E164  4B FF EA F1 */	bl e_s1_failwait__FP10e_s1_class
/* 8077E168  3B E0 00 00 */	li r31, 0
/* 8077E16C  3B 40 00 00 */	li r26, 0
/* 8077E170  3B 20 00 01 */	li r25, 1
/* 8077E174  48 00 00 44 */	b lbl_8077E1B8
lbl_8077E178:
/* 8077E178  7F A3 EB 78 */	mr r3, r29
/* 8077E17C  4B FF F2 CD */	bl e_s1_shout__FP10e_s1_class
/* 8077E180  3B 40 00 00 */	li r26, 0
/* 8077E184  3B E0 00 00 */	li r31, 0
/* 8077E188  3B 00 00 01 */	li r24, 1
/* 8077E18C  48 00 00 2C */	b lbl_8077E1B8
lbl_8077E190:
/* 8077E190  7F A3 EB 78 */	mr r3, r29
/* 8077E194  4B FF ED 9D */	bl e_s1_fail__FP10e_s1_class
/* 8077E198  3B E0 00 00 */	li r31, 0
/* 8077E19C  3B 40 00 00 */	li r26, 0
/* 8077E1A0  3B 20 00 01 */	li r25, 1
/* 8077E1A4  48 00 00 14 */	b lbl_8077E1B8
lbl_8077E1A8:
/* 8077E1A8  7F A3 EB 78 */	mr r3, r29
/* 8077E1AC  4B FF F4 F5 */	bl e_s1_warpappear__FP10e_s1_class
/* 8077E1B0  3B E0 00 00 */	li r31, 0
/* 8077E1B4  3B 60 00 00 */	li r27, 0
lbl_8077E1B8:
/* 8077E1B8  7F 00 07 75 */	extsb. r0, r24
/* 8077E1BC  41 82 00 14 */	beq lbl_8077E1D0
/* 8077E1C0  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 8077E1C4  38 80 00 01 */	li r4, 1
/* 8077E1C8  4B B4 39 B4 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 8077E1CC  48 00 00 10 */	b lbl_8077E1DC
lbl_8077E1D0:
/* 8077E1D0  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 8077E1D4  38 80 00 00 */	li r4, 0
/* 8077E1D8  4B B4 39 A4 */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_8077E1DC:
/* 8077E1DC  7F 20 07 75 */	extsb. r0, r25
/* 8077E1E0  41 82 01 2C */	beq lbl_8077E30C
/* 8077E1E4  38 61 00 54 */	addi r3, r1, 0x54
/* 8077E1E8  4B 8F 9A 80 */	b __ct__11dBgS_LinChkFv
/* 8077E1EC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8077E1F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8077E1F4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8077E1F8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8077E1FC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8077E200  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8077E204  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8077E208  EC 01 00 2A */	fadds f0, f1, f0
/* 8077E20C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8077E210  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8077E214  80 63 00 04 */	lwz r3, 4(r3)
/* 8077E218  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8077E21C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077E220  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8077E224  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8077E228  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8077E22C  4B BC 82 84 */	b PSMTXCopy
/* 8077E230  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8077E234  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8077E238  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8077E23C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8077E240  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8077E244  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8077E248  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8077E24C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8077E250  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8077E254  EC 01 00 2A */	fadds f0, f1, f0
/* 8077E258  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8077E25C  38 61 00 54 */	addi r3, r1, 0x54
/* 8077E260  38 81 00 24 */	addi r4, r1, 0x24
/* 8077E264  38 A1 00 18 */	addi r5, r1, 0x18
/* 8077E268  7F A6 EB 78 */	mr r6, r29
/* 8077E26C  4B 8F 9A F8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8077E270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077E274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077E278  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8077E27C  38 81 00 54 */	addi r4, r1, 0x54
/* 8077E280  4B 8F 61 34 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8077E284  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8077E288  41 82 00 78 */	beq lbl_8077E300
/* 8077E28C  38 61 00 0C */	addi r3, r1, 0xc
/* 8077E290  38 81 00 24 */	addi r4, r1, 0x24
/* 8077E294  38 A1 00 18 */	addi r5, r1, 0x18
/* 8077E298  4B AE 88 9C */	b __mi__4cXyzCFRC3Vec
/* 8077E29C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8077E2A0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8077E2A4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8077E2A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8077E2AC  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8077E2B0  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8077E2B4  4B AE 93 C0 */	b cM_atan2s__Fff
/* 8077E2B8  7C 64 1B 78 */	mr r4, r3
/* 8077E2BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8077E2C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8077E2C4  4B 88 E1 18 */	b mDoMtx_YrotS__FPA4_fs
/* 8077E2C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077E2CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8077E2D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8077E2D4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8077E2D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8077E2DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8077E2E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8077E2E4  38 81 00 30 */	addi r4, r1, 0x30
/* 8077E2E8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8077E2EC  4B BC 8A 80 */	b PSMTXMultVec
/* 8077E2F0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8077E2F4  38 81 00 3C */	addi r4, r1, 0x3c
/* 8077E2F8  7C 65 1B 78 */	mr r5, r3
/* 8077E2FC  4B BC 8D 94 */	b PSVECAdd
lbl_8077E300:
/* 8077E300  38 61 00 54 */	addi r3, r1, 0x54
/* 8077E304  38 80 FF FF */	li r4, -1
/* 8077E308  4B 8F 99 D4 */	b __dt__11dBgS_LinChkFv
lbl_8077E30C:
/* 8077E30C  3C 60 80 78 */	lis r3, struct_8078137C+0x1@ha
/* 8077E310  88 03 13 7D */	lbz r0, struct_8078137C+0x1@l(r3)
/* 8077E314  28 00 00 00 */	cmplwi r0, 0
/* 8077E318  40 82 00 64 */	bne lbl_8077E37C
/* 8077E31C  7F 40 07 75 */	extsb. r0, r26
/* 8077E320  41 82 00 5C */	beq lbl_8077E37C
/* 8077E324  A8 1D 06 AA */	lha r0, 0x6aa(r29)
/* 8077E328  2C 00 00 00 */	cmpwi r0, 0
/* 8077E32C  40 82 00 50 */	bne lbl_8077E37C
/* 8077E330  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 8077E334  28 00 00 FF */	cmplwi r0, 0xff
/* 8077E338  41 82 00 44 */	beq lbl_8077E37C
/* 8077E33C  3C 60 80 78 */	lis r3, s_down_sub__FPvPv@ha
/* 8077E340  38 63 C8 94 */	addi r3, r3, s_down_sub__FPvPv@l
/* 8077E344  7F A4 EB 78 */	mr r4, r29
/* 8077E348  4B 8A 2F F0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8077E34C  28 03 00 00 */	cmplwi r3, 0
/* 8077E350  40 82 00 2C */	bne lbl_8077E37C
/* 8077E354  38 00 00 0B */	li r0, 0xb
/* 8077E358  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 8077E35C  38 00 00 00 */	li r0, 0
/* 8077E360  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077E364  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077E368  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077E36C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8077E370  80 03 05 78 */	lwz r0, 0x578(r3)
/* 8077E374  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8077E378  90 03 05 78 */	stw r0, 0x578(r3)
lbl_8077E37C:
/* 8077E37C  7F E0 07 75 */	extsb. r0, r31
/* 8077E380  41 82 00 10 */	beq lbl_8077E390
/* 8077E384  38 00 00 04 */	li r0, 4
/* 8077E388  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8077E38C  48 00 00 18 */	b lbl_8077E3A4
lbl_8077E390:
/* 8077E390  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8077E394  54 00 00 3E */	slwi r0, r0, 0
/* 8077E398  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8077E39C  38 00 00 00 */	li r0, 0
/* 8077E3A0  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_8077E3A4:
/* 8077E3A4  7F 80 07 75 */	extsb. r0, r28
/* 8077E3A8  41 82 00 F0 */	beq lbl_8077E498
/* 8077E3AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077E3B0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8077E3B4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8077E3B8  80 63 05 80 */	lwz r3, 0x580(r3)
/* 8077E3BC  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8077E3C0  40 82 00 0C */	bne lbl_8077E3CC
/* 8077E3C4  54 60 02 95 */	rlwinm. r0, r3, 0, 0xa, 0xa
/* 8077E3C8  41 82 00 D0 */	beq lbl_8077E498
lbl_8077E3CC:
/* 8077E3CC  7F A3 EB 78 */	mr r3, r29
/* 8077E3D0  3C 80 80 78 */	lis r4, l_HIO@ha
/* 8077E3D4  38 84 13 8C */	addi r4, r4, l_HIO@l
/* 8077E3D8  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 8077E3DC  4B FF CB 21 */	bl pl_at_check__FP10e_s1_classf
/* 8077E3E0  2C 03 00 00 */	cmpwi r3, 0
/* 8077E3E4  41 82 00 B4 */	beq lbl_8077E498
/* 8077E3E8  83 5F 5D AC */	lwz r26, 0x5dac(r31)
/* 8077E3EC  7F A3 EB 78 */	mr r3, r29
/* 8077E3F0  7F 44 D3 78 */	mr r4, r26
/* 8077E3F4  4B 89 C3 1C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8077E3F8  3C 63 00 01 */	addis r3, r3, 1
/* 8077E3FC  38 63 80 00 */	addi r3, r3, -32768
/* 8077E400  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 8077E404  7C 03 00 50 */	subf r0, r3, r0
/* 8077E408  7C 04 07 34 */	extsh r4, r0
/* 8077E40C  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 8077E410  3C 60 80 78 */	lis r3, l_HIO@ha
/* 8077E414  38 63 13 8C */	addi r3, r3, l_HIO@l
/* 8077E418  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8077E41C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8077E420  FC 00 00 1E */	fctiwz f0, f0
/* 8077E424  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8077E428  80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8077E42C  7C 60 07 34 */	extsh r0, r3
/* 8077E430  7C 04 00 00 */	cmpw r4, r0
/* 8077E434  40 80 00 64 */	bge lbl_8077E498
/* 8077E438  7C 03 00 D0 */	neg r0, r3
/* 8077E43C  7C 00 07 34 */	extsh r0, r0
/* 8077E440  7C 04 00 00 */	cmpw r4, r0
/* 8077E444  40 81 00 54 */	ble lbl_8077E498
/* 8077E448  38 00 00 04 */	li r0, 4
/* 8077E44C  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 8077E450  38 00 00 00 */	li r0, 0
/* 8077E454  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077E458  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 8077E45C  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 8077E460  7F A3 EB 78 */	mr r3, r29
/* 8077E464  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8077E468  4B 89 C2 A8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8077E46C  B0 7D 06 B0 */	sth r3, 0x6b0(r29)
/* 8077E470  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700D4@ha */
/* 8077E474  38 03 00 D4 */	addi r0, r3, 0x00D4 /* 0x000700D4@l */
/* 8077E478  90 01 00 08 */	stw r0, 8(r1)
/* 8077E47C  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 8077E480  38 81 00 08 */	addi r4, r1, 8
/* 8077E484  38 A0 FF FF */	li r5, -1
/* 8077E488  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 8077E48C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077E490  7D 89 03 A6 */	mtctr r12
/* 8077E494  4E 80 04 21 */	bctrl 
lbl_8077E498:
/* 8077E498  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8077E49C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8077E4A0  38 A0 00 04 */	li r5, 4
/* 8077E4A4  38 C0 20 00 */	li r6, 0x2000
/* 8077E4A8  4B AF 21 60 */	b cLib_addCalcAngleS2__FPssss
/* 8077E4AC  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8077E4B0  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 8077E4B4  38 A0 00 04 */	li r5, 4
/* 8077E4B8  38 C0 10 00 */	li r6, 0x1000
/* 8077E4BC  4B AF 21 4C */	b cLib_addCalcAngleS2__FPssss
/* 8077E4C0  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8077E4C4  A8 9D 04 E0 */	lha r4, 0x4e0(r29)
/* 8077E4C8  38 A0 00 04 */	li r5, 4
/* 8077E4CC  38 C0 10 00 */	li r6, 0x1000
/* 8077E4D0  4B AF 21 38 */	b cLib_addCalcAngleS2__FPssss
/* 8077E4D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8077E4D8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8077E4DC  80 63 00 00 */	lwz r3, 0(r3)
/* 8077E4E0  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8077E4E4  4B 88 DE F8 */	b mDoMtx_YrotS__FPA4_fs
/* 8077E4E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077E4EC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8077E4F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8077E4F4  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 8077E4F8  3C 60 80 78 */	lis r3, l_HIO@ha
/* 8077E4FC  38 63 13 8C */	addi r3, r3, l_HIO@l
/* 8077E500  C0 03 00 08 */	lfs f0, 8(r3)
/* 8077E504  EC 01 00 32 */	fmuls f0, f1, f0
/* 8077E508  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8077E50C  38 61 00 48 */	addi r3, r1, 0x48
/* 8077E510  38 81 00 3C */	addi r4, r1, 0x3c
/* 8077E514  4B AF 29 D8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8077E518  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8077E51C  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8077E520  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8077E524  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 8077E528  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8077E52C  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8077E530  7C 65 1B 78 */	mr r5, r3
/* 8077E534  4B BC 8B 5C */	b PSVECAdd
/* 8077E538  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8077E53C  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 8077E540  EC 01 00 2A */	fadds f0, f1, f0
/* 8077E544  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8077E548  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8077E54C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8077E550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077E554  40 80 00 08 */	bge lbl_8077E55C
/* 8077E558  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8077E55C:
/* 8077E55C  C0 3D 06 AC */	lfs f1, 0x6ac(r29)
/* 8077E560  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8077E564  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077E568  40 81 00 58 */	ble lbl_8077E5C0
/* 8077E56C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077E570  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8077E574  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8077E578  FC 00 08 50 */	fneg f0, f1
/* 8077E57C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8077E580  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8077E584  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8077E588  80 63 00 00 */	lwz r3, 0(r3)
/* 8077E58C  A8 9D 06 B0 */	lha r4, 0x6b0(r29)
/* 8077E590  4B 88 DE 4C */	b mDoMtx_YrotS__FPA4_fs
/* 8077E594  38 61 00 48 */	addi r3, r1, 0x48
/* 8077E598  38 81 00 3C */	addi r4, r1, 0x3c
/* 8077E59C  4B AF 29 50 */	b MtxPosition__FP4cXyzP4cXyz
/* 8077E5A0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8077E5A4  38 81 00 3C */	addi r4, r1, 0x3c
/* 8077E5A8  7C 65 1B 78 */	mr r5, r3
/* 8077E5AC  4B BC 8A E4 */	b PSVECAdd
/* 8077E5B0  38 7D 06 AC */	addi r3, r29, 0x6ac
/* 8077E5B4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8077E5B8  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 8077E5BC  4B AF 14 C4 */	b cLib_addCalc0__FPfff
lbl_8077E5C0:
/* 8077E5C0  7F 60 07 75 */	extsb. r0, r27
/* 8077E5C4  41 82 00 3C */	beq lbl_8077E600
/* 8077E5C8  34 7D 08 D4 */	addic. r3, r29, 0x8d4
/* 8077E5CC  41 82 00 34 */	beq lbl_8077E600
/* 8077E5D0  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8077E5D4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8077E5D8  EC 01 00 2A */	fadds f0, f1, f0
/* 8077E5DC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8077E5E0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8077E5E4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8077E5E8  EC 01 00 2A */	fadds f0, f1, f0
/* 8077E5EC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8077E5F0  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8077E5F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8077E5F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8077E5FC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_8077E600:
/* 8077E600  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8077E604  4B BE 3C 10 */	b _restgpr_24
/* 8077E608  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8077E60C  7C 08 03 A6 */	mtlr r0
/* 8077E610  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8077E614  4E 80 00 20 */	blr 
