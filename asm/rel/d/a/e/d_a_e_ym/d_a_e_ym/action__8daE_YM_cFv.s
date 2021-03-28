lbl_8081300C:
/* 8081300C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80813010  7C 08 02 A6 */	mflr r0
/* 80813014  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80813018  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8081301C  4B B4 F1 C0 */	b _savegpr_29
/* 80813020  7C 7E 1B 78 */	mr r30, r3
/* 80813024  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80813028  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8081302C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80813030  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80813034  28 00 00 36 */	cmplwi r0, 0x36
/* 80813038  40 82 00 0C */	bne lbl_80813044
/* 8081303C  38 00 00 00 */	li r0, 0
/* 80813040  B0 1E 07 00 */	sth r0, 0x700(r30)
lbl_80813044:
/* 80813044  7F C3 F3 78 */	mr r3, r30
/* 80813048  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8081304C  4B 80 77 94 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80813050  D0 3E 06 D8 */	stfs f1, 0x6d8(r30)
/* 80813054  7F C3 F3 78 */	mr r3, r30
/* 80813058  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8081305C  4B 80 76 B4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80813060  B0 7E 06 EA */	sth r3, 0x6ea(r30)
/* 80813064  80 1E 09 8C */	lwz r0, 0x98c(r30)
/* 80813068  60 00 00 01 */	ori r0, r0, 1
/* 8081306C  90 1E 09 8C */	stw r0, 0x98c(r30)
/* 80813070  A8 1E 06 FE */	lha r0, 0x6fe(r30)
/* 80813074  2C 00 00 00 */	cmpwi r0, 0
/* 80813078  41 82 00 10 */	beq lbl_80813088
/* 8081307C  80 1E 09 8C */	lwz r0, 0x98c(r30)
/* 80813080  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80813084  90 1E 09 8C */	stw r0, 0x98c(r30)
lbl_80813088:
/* 80813088  C0 3E 06 D4 */	lfs f1, 0x6d4(r30)
/* 8081308C  3C 60 80 81 */	lis r3, lit_3926@ha
/* 80813090  C0 03 59 98 */	lfs f0, lit_3926@l(r3)
/* 80813094  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80813098  40 82 00 10 */	bne lbl_808130A8
/* 8081309C  80 1E 09 8C */	lwz r0, 0x98c(r30)
/* 808130A0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 808130A4  90 1E 09 8C */	stw r0, 0x98c(r30)
lbl_808130A8:
/* 808130A8  38 00 00 00 */	li r0, 0
/* 808130AC  98 1E 0A 2F */	stb r0, 0xa2f(r30)
/* 808130B0  98 1E 09 E9 */	stb r0, 0x9e9(r30)
/* 808130B4  A8 1E 07 00 */	lha r0, 0x700(r30)
/* 808130B8  2C 00 00 00 */	cmpwi r0, 0
/* 808130BC  41 82 00 0C */	beq lbl_808130C8
/* 808130C0  38 00 00 07 */	li r0, 7
/* 808130C4  98 1E 09 E9 */	stb r0, 0x9e9(r30)
lbl_808130C8:
/* 808130C8  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 808130CC  28 00 00 01 */	cmplwi r0, 1
/* 808130D0  40 82 00 14 */	bne lbl_808130E4
/* 808130D4  80 1E 09 74 */	lwz r0, 0x974(r30)
/* 808130D8  60 00 00 01 */	ori r0, r0, 1
/* 808130DC  90 1E 09 74 */	stw r0, 0x974(r30)
/* 808130E0  48 00 00 10 */	b lbl_808130F0
lbl_808130E4:
/* 808130E4  80 1E 09 74 */	lwz r0, 0x974(r30)
/* 808130E8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 808130EC  90 1E 09 74 */	stw r0, 0x974(r30)
lbl_808130F0:
/* 808130F0  7F C3 F3 78 */	mr r3, r30
/* 808130F4  4B FF 8A 89 */	bl damage_check__8daE_YM_cFv
/* 808130F8  7F C3 F3 78 */	mr r3, r30
/* 808130FC  4B FF 61 2D */	bl checkSurpriseLock__8daE_YM_cFv
/* 80813100  38 00 00 01 */	li r0, 1
/* 80813104  98 1E 06 CF */	stb r0, 0x6cf(r30)
/* 80813108  3B A0 00 00 */	li r29, 0
/* 8081310C  80 1E 06 90 */	lwz r0, 0x690(r30)
/* 80813110  28 00 00 12 */	cmplwi r0, 0x12
/* 80813114  41 81 01 0C */	bgt lbl_80813220
/* 80813118  3C 60 80 81 */	lis r3, lit_8522@ha
/* 8081311C  38 63 5B DC */	addi r3, r3, lit_8522@l
/* 80813120  54 00 10 3A */	slwi r0, r0, 2
/* 80813124  7C 03 00 2E */	lwzx r0, r3, r0
/* 80813128  7C 09 03 A6 */	mtctr r0
/* 8081312C  4E 80 04 20 */	bctr 
lbl_80813130:
/* 80813130  7F C3 F3 78 */	mr r3, r30
/* 80813134  4B FF 6E 91 */	bl executeWait__8daE_YM_cFv
/* 80813138  48 00 00 E8 */	b lbl_80813220
lbl_8081313C:
/* 8081313C  7F C3 F3 78 */	mr r3, r30
/* 80813140  4B FF 74 3D */	bl executeMove__8daE_YM_cFv
/* 80813144  48 00 00 DC */	b lbl_80813220
lbl_80813148:
/* 80813148  7F C3 F3 78 */	mr r3, r30
/* 8081314C  4B FF 7B 69 */	bl executeEscape__8daE_YM_cFv
/* 80813150  48 00 00 D0 */	b lbl_80813220
lbl_80813154:
/* 80813154  7F C3 F3 78 */	mr r3, r30
/* 80813158  4B FF 82 ED */	bl executeDown__8daE_YM_cFv
/* 8081315C  48 00 00 C4 */	b lbl_80813220
lbl_80813160:
/* 80813160  7F C3 F3 78 */	mr r3, r30
/* 80813164  4B FF 8B 99 */	bl executeWind__8daE_YM_cFv
/* 80813168  48 00 00 B8 */	b lbl_80813220
lbl_8081316C:
/* 8081316C  7F C3 F3 78 */	mr r3, r30
/* 80813170  4B FF 92 05 */	bl executeSurprise__8daE_YM_cFv
/* 80813174  48 00 00 AC */	b lbl_80813220
lbl_80813178:
/* 80813178  7F C3 F3 78 */	mr r3, r30
/* 8081317C  4B FF 9D 65 */	bl executeBack__8daE_YM_cFv
/* 80813180  48 00 00 A0 */	b lbl_80813220
lbl_80813184:
/* 80813184  7F C3 F3 78 */	mr r3, r30
/* 80813188  4B FF 9E 41 */	bl executeFall__8daE_YM_cFv
/* 8081318C  48 00 00 94 */	b lbl_80813220
lbl_80813190:
/* 80813190  3B A0 00 01 */	li r29, 1
/* 80813194  7F C3 F3 78 */	mr r3, r30
/* 80813198  4B FF A1 31 */	bl executeAttack__8daE_YM_cFv
/* 8081319C  48 00 00 84 */	b lbl_80813220
lbl_808131A0:
/* 808131A0  3B A0 00 01 */	li r29, 1
/* 808131A4  7F C3 F3 78 */	mr r3, r30
/* 808131A8  4B FF AA B5 */	bl executeAttackWall__8daE_YM_cFv
/* 808131AC  48 00 00 74 */	b lbl_80813220
lbl_808131B0:
/* 808131B0  7F C3 F3 78 */	mr r3, r30
/* 808131B4  4B FF B0 B9 */	bl executeDefense__8daE_YM_cFv
/* 808131B8  48 00 00 68 */	b lbl_80813220
lbl_808131BC:
/* 808131BC  7F C3 F3 78 */	mr r3, r30
/* 808131C0  4B FF B4 E1 */	bl executeFly__8daE_YM_cFv
/* 808131C4  48 00 00 5C */	b lbl_80813220
lbl_808131C8:
/* 808131C8  3B A0 00 01 */	li r29, 1
/* 808131CC  7F C3 F3 78 */	mr r3, r30
/* 808131D0  4B FF C7 5D */	bl executeFlyAttack__8daE_YM_cFv
/* 808131D4  48 00 00 4C */	b lbl_80813220
lbl_808131D8:
/* 808131D8  7F C3 F3 78 */	mr r3, r30
/* 808131DC  4B FF D1 31 */	bl executeRail__8daE_YM_cFv
/* 808131E0  48 00 00 40 */	b lbl_80813220
lbl_808131E4:
/* 808131E4  7F C3 F3 78 */	mr r3, r30
/* 808131E8  4B FF D4 A9 */	bl executeBackRail__8daE_YM_cFv
/* 808131EC  48 00 00 34 */	b lbl_80813220
lbl_808131F0:
/* 808131F0  3B A0 00 01 */	li r29, 1
/* 808131F4  7F C3 F3 78 */	mr r3, r30
/* 808131F8  4B FF DC 6D */	bl executeElectric__8daE_YM_cFv
/* 808131FC  48 00 00 24 */	b lbl_80813220
lbl_80813200:
/* 80813200  7F C3 F3 78 */	mr r3, r30
/* 80813204  4B FF DE 59 */	bl executeSwitch__8daE_YM_cFv
/* 80813208  48 00 00 18 */	b lbl_80813220
lbl_8081320C:
/* 8081320C  7F C3 F3 78 */	mr r3, r30
/* 80813210  4B FF E6 29 */	bl executeFire__8daE_YM_cFv
/* 80813214  48 00 00 0C */	b lbl_80813220
lbl_80813218:
/* 80813218  7F C3 F3 78 */	mr r3, r30
/* 8081321C  4B FF F1 B5 */	bl executeRiver__8daE_YM_cFv
lbl_80813220:
/* 80813220  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80813224  30 1D FF FF */	addic r0, r29, -1
/* 80813228  7C 00 E9 10 */	subfe r0, r0, r29
/* 8081322C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80813230  4B AA E9 4C */	b setLinkSearch__15Z2CreatureEnemyFb
/* 80813234  88 1E 06 CF */	lbz r0, 0x6cf(r30)
/* 80813238  28 00 00 00 */	cmplwi r0, 0
/* 8081323C  41 82 00 30 */	beq lbl_8081326C
/* 80813240  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070194@ha */
/* 80813244  38 03 01 94 */	addi r0, r3, 0x0194 /* 0x00070194@l */
/* 80813248  90 01 00 08 */	stw r0, 8(r1)
/* 8081324C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80813250  38 81 00 08 */	addi r4, r1, 8
/* 80813254  38 A0 00 00 */	li r5, 0
/* 80813258  38 C0 FF FF */	li r6, -1
/* 8081325C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80813260  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80813264  7D 89 03 A6 */	mtctr r12
/* 80813268  4E 80 04 21 */	bctrl 
lbl_8081326C:
/* 8081326C  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 80813270  28 00 00 01 */	cmplwi r0, 1
/* 80813274  41 82 00 CC */	beq lbl_80813340
/* 80813278  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8081327C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80813280  41 82 00 80 */	beq lbl_80813300
/* 80813284  3C 60 80 81 */	lis r3, __vt__8cM3dGPla@ha
/* 80813288  38 03 5D 04 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8081328C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80813290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80813294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80813298  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8081329C  38 9E 08 50 */	addi r4, r30, 0x850
/* 808132A0  38 A1 00 3C */	addi r5, r1, 0x3c
/* 808132A4  4B 86 14 A0 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 808132A8  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 808132AC  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 808132B0  4B A5 43 C4 */	b cM_atan2s__Fff
/* 808132B4  7C 64 07 34 */	extsh r4, r3
/* 808132B8  38 7E 06 68 */	addi r3, r30, 0x668
/* 808132BC  38 A0 00 08 */	li r5, 8
/* 808132C0  38 C0 08 00 */	li r6, 0x800
/* 808132C4  38 E0 01 00 */	li r7, 0x100
/* 808132C8  4B A5 D2 78 */	b cLib_addCalcAngleS__FPsssss
/* 808132CC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 808132D0  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 808132D4  4B A5 43 A0 */	b cM_atan2s__Fff
/* 808132D8  7C 64 07 34 */	extsh r4, r3
/* 808132DC  38 7E 06 6A */	addi r3, r30, 0x66a
/* 808132E0  38 A0 00 08 */	li r5, 8
/* 808132E4  38 C0 08 00 */	li r6, 0x800
/* 808132E8  38 E0 01 00 */	li r7, 0x100
/* 808132EC  4B A5 D2 54 */	b cLib_addCalcAngleS__FPsssss
/* 808132F0  3C 60 80 81 */	lis r3, __vt__8cM3dGPla@ha
/* 808132F4  38 03 5D 04 */	addi r0, r3, __vt__8cM3dGPla@l
/* 808132F8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 808132FC  48 00 00 14 */	b lbl_80813310
lbl_80813300:
/* 80813300  38 00 00 00 */	li r0, 0
/* 80813304  B0 1E 06 68 */	sth r0, 0x668(r30)
/* 80813308  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8081330C  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_80813310:
/* 80813310  7F C3 F3 78 */	mr r3, r30
/* 80813314  38 9E 09 38 */	addi r4, r30, 0x938
/* 80813318  4B 80 73 B4 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8081331C  88 1E 07 1C */	lbz r0, 0x71c(r30)
/* 80813320  28 00 00 00 */	cmplwi r0, 0
/* 80813324  40 82 00 A0 */	bne lbl_808133C4
/* 80813328  38 7E 07 60 */	addi r3, r30, 0x760
/* 8081332C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80813330  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80813334  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80813338  4B 86 37 74 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8081333C  48 00 00 88 */	b lbl_808133C4
lbl_80813340:
/* 80813340  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80813344  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80813348  A8 9E 06 68 */	lha r4, 0x668(r30)
/* 8081334C  4B 7F 8F F8 */	b mDoMtx_XrotS__FPA4_fs
/* 80813350  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80813354  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80813358  A8 9E 06 6C */	lha r4, 0x66c(r30)
/* 8081335C  4B 7F 91 70 */	b mDoMtx_ZrotM__FPA4_fs
/* 80813360  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80813364  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80813368  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8081336C  4B 7F 90 C8 */	b mDoMtx_YrotM__FPA4_fs
/* 80813370  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80813374  3C 60 80 81 */	lis r3, lit_3926@ha
/* 80813378  C0 03 59 98 */	lfs f0, lit_3926@l(r3)
/* 8081337C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80813380  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80813384  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80813388  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8081338C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80813390  38 81 00 30 */	addi r4, r1, 0x30
/* 80813394  38 A1 00 24 */	addi r5, r1, 0x24
/* 80813398  4B B3 39 D4 */	b PSMTXMultVec
/* 8081339C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 808133A0  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 808133A4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 808133A8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 808133AC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 808133B0  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 808133B4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 808133B8  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 808133BC  7C 65 1B 78 */	mr r5, r3
/* 808133C0  4B B3 3C D0 */	b PSVECAdd
lbl_808133C4:
/* 808133C4  C0 3E 06 D4 */	lfs f1, 0x6d4(r30)
/* 808133C8  3C 60 80 81 */	lis r3, lit_3926@ha
/* 808133CC  C0 03 59 98 */	lfs f0, lit_3926@l(r3)
/* 808133D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 808133D4  40 82 00 54 */	bne lbl_80813428
/* 808133D8  38 00 00 00 */	li r0, 0
/* 808133DC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 808133E0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 808133E4  7F C4 F3 78 */	mr r4, r30
/* 808133E8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 808133EC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 808133F0  7D 89 03 A6 */	mtctr r12
/* 808133F4  4E 80 04 21 */	bctrl 
/* 808133F8  2C 03 00 00 */	cmpwi r3, 0
/* 808133FC  41 82 00 1C */	beq lbl_80813418
/* 80813400  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80813404  7F C4 F3 78 */	mr r4, r30
/* 80813408  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8081340C  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 80813410  7D 89 03 A6 */	mtctr r12
/* 80813414  4E 80 04 21 */	bctrl 
lbl_80813418:
/* 80813418  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8081341C  60 00 02 00 */	ori r0, r0, 0x200
/* 80813420  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80813424  48 00 00 8C */	b lbl_808134B0
lbl_80813428:
/* 80813428  80 1E 07 14 */	lwz r0, 0x714(r30)
/* 8081342C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80813430  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 80813434  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 80813438  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 8081343C  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 80813440  28 00 00 01 */	cmplwi r0, 1
/* 80813444  40 82 00 6C */	bne lbl_808134B0
/* 80813448  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8081344C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80813450  40 82 00 60 */	bne lbl_808134B0
/* 80813454  38 61 00 50 */	addi r3, r1, 0x50
/* 80813458  4B 86 48 10 */	b __ct__11dBgS_LinChkFv
/* 8081345C  38 61 00 50 */	addi r3, r1, 0x50
/* 80813460  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80813464  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80813468  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 8081346C  38 84 00 D8 */	addi r4, r4, 0xd8
/* 80813470  38 BE 05 50 */	addi r5, r30, 0x550
/* 80813474  7F C6 F3 78 */	mr r6, r30
/* 80813478  4B 86 48 EC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8081347C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80813480  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80813484  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80813488  38 81 00 50 */	addi r4, r1, 0x50
/* 8081348C  4B 86 0F 28 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80813490  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80813494  41 82 00 10 */	beq lbl_808134A4
/* 80813498  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8081349C  60 00 02 00 */	ori r0, r0, 0x200
/* 808134A0  B0 1E 05 8E */	sth r0, 0x58e(r30)
lbl_808134A4:
/* 808134A4  38 61 00 50 */	addi r3, r1, 0x50
/* 808134A8  38 80 FF FF */	li r4, -1
/* 808134AC  4B 86 48 30 */	b __dt__11dBgS_LinChkFv
lbl_808134B0:
/* 808134B0  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 808134B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 808134B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 808134BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 808134C0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 808134C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 808134C8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 808134CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 808134D0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 808134D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 808134D8  7F C3 F3 78 */	mr r3, r30
/* 808134DC  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 808134E0  38 A1 00 0C */	addi r5, r1, 0xc
/* 808134E4  38 DE 04 EC */	addi r6, r30, 0x4ec
/* 808134E8  48 00 20 05 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 808134EC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 808134F0  7C 03 07 74 */	extsb r3, r0
/* 808134F4  4B 81 9B 78 */	b dComIfGp_getReverb__Fi
/* 808134F8  7C 65 1B 78 */	mr r5, r3
/* 808134FC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80813500  38 80 00 00 */	li r4, 0
/* 80813504  4B 7F DB AC */	b play__16mDoExt_McaMorfSOFUlSc
/* 80813508  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8081350C  4B 7F 9F 1C */	b play__14mDoExt_baseAnmFv
/* 80813510  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80813514  4B B4 ED 14 */	b _restgpr_29
/* 80813518  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8081351C  7C 08 03 A6 */	mtlr r0
/* 80813520  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80813524  4E 80 00 20 */	blr 
