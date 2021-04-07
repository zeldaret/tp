lbl_80693074:
/* 80693074  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80693078  7C 08 02 A6 */	mflr r0
/* 8069307C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80693080  39 61 00 50 */	addi r11, r1, 0x50
/* 80693084  4B CC F1 4D */	bl _savegpr_26
/* 80693088  7C 7E 1B 78 */	mr r30, r3
/* 8069308C  3C 80 80 69 */	lis r4, lit_3788@ha /* 0x80694690@ha */
/* 80693090  3B E4 46 90 */	addi r31, r4, lit_3788@l /* 0x80694690@l */
/* 80693094  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80693098  3B 44 61 C0 */	addi r26, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069309C  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 806930A0  7C 9D 23 78 */	mr r29, r4
/* 806930A4  4B 98 76 6D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806930A8  B0 7E 06 84 */	sth r3, 0x684(r30)
/* 806930AC  7F C3 F3 78 */	mr r3, r30
/* 806930B0  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 806930B4  4B 98 77 2D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806930B8  D0 3E 06 88 */	stfs f1, 0x688(r30)
/* 806930BC  7F C3 F3 78 */	mr r3, r30
/* 806930C0  4B FF E5 A1 */	bl damage_check__FP10e_bu_class
/* 806930C4  80 1E 09 20 */	lwz r0, 0x920(r30)
/* 806930C8  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 806930CC  90 1E 09 20 */	stw r0, 0x920(r30)
/* 806930D0  3B 80 00 00 */	li r28, 0
/* 806930D4  3B 60 00 01 */	li r27, 1
/* 806930D8  3B 40 00 00 */	li r26, 0
/* 806930DC  A8 1E 06 72 */	lha r0, 0x672(r30)
/* 806930E0  28 00 00 15 */	cmplwi r0, 0x15
/* 806930E4  41 81 00 F8 */	bgt lbl_806931DC
/* 806930E8  3C 60 80 69 */	lis r3, lit_4547@ha /* 0x806947E8@ha */
/* 806930EC  38 63 47 E8 */	addi r3, r3, lit_4547@l /* 0x806947E8@l */
/* 806930F0  54 00 10 3A */	slwi r0, r0, 2
/* 806930F4  7C 03 00 2E */	lwzx r0, r3, r0
/* 806930F8  7C 09 03 A6 */	mtctr r0
/* 806930FC  4E 80 04 20 */	bctr 
lbl_80693100:
/* 80693100  7F C3 F3 78 */	mr r3, r30
/* 80693104  4B FF EB 21 */	bl e_bu_wait__FP10e_bu_class
/* 80693108  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069310C  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 80693110  3B 60 00 00 */	li r27, 0
/* 80693114  48 00 00 C8 */	b lbl_806931DC
lbl_80693118:
/* 80693118  7F C3 F3 78 */	mr r3, r30
/* 8069311C  4B FF EC A9 */	bl e_bu_fight_fly__FP10e_bu_class
/* 80693120  48 00 00 BC */	b lbl_806931DC
lbl_80693124:
/* 80693124  7F C3 F3 78 */	mr r3, r30
/* 80693128  4B FF ED E9 */	bl e_bu_fight__FP10e_bu_class
/* 8069312C  48 00 00 B0 */	b lbl_806931DC
lbl_80693130:
/* 80693130  7F C3 F3 78 */	mr r3, r30
/* 80693134  4B FF F0 F9 */	bl e_bu_attack__FP10e_bu_class
/* 80693138  80 1E 09 20 */	lwz r0, 0x920(r30)
/* 8069313C  60 00 00 0C */	ori r0, r0, 0xc
/* 80693140  90 1E 09 20 */	stw r0, 0x920(r30)
/* 80693144  48 00 00 98 */	b lbl_806931DC
lbl_80693148:
/* 80693148  7F C3 F3 78 */	mr r3, r30
/* 8069314C  4B FF F2 F1 */	bl e_bu_fly__FP10e_bu_class
/* 80693150  48 00 00 8C */	b lbl_806931DC
lbl_80693154:
/* 80693154  7F C3 F3 78 */	mr r3, r30
/* 80693158  4B FF F4 D5 */	bl e_bu_path_fly__FP10e_bu_class
/* 8069315C  48 00 00 80 */	b lbl_806931DC
lbl_80693160:
/* 80693160  7F C3 F3 78 */	mr r3, r30
/* 80693164  4B FF F7 CD */	bl e_bu_chance__FP10e_bu_class
/* 80693168  7C 7C 1B 78 */	mr r28, r3
/* 8069316C  3B 60 00 00 */	li r27, 0
/* 80693170  3B 40 00 01 */	li r26, 1
/* 80693174  48 00 00 68 */	b lbl_806931DC
lbl_80693178:
/* 80693178  7F C3 F3 78 */	mr r3, r30
/* 8069317C  4B FF F9 79 */	bl e_bu_head__FP10e_bu_class
/* 80693180  7C 7C 1B 78 */	mr r28, r3
/* 80693184  3B 60 00 00 */	li r27, 0
/* 80693188  3B 40 00 01 */	li r26, 1
/* 8069318C  48 00 00 50 */	b lbl_806931DC
lbl_80693190:
/* 80693190  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80693194  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80693198  EC 01 00 2A */	fadds f0, f1, f0
/* 8069319C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806931A0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806931A4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 806931A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 806931AC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806931B0  38 00 00 0A */	li r0, 0xa
/* 806931B4  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 806931B8  A8 1E 06 B2 */	lha r0, 0x6b2(r30)
/* 806931BC  2C 00 00 00 */	cmpwi r0, 0
/* 806931C0  40 82 00 14 */	bne lbl_806931D4
/* 806931C4  7F C3 F3 78 */	mr r3, r30
/* 806931C8  4B FF E0 29 */	bl bu_disappear__FP10fopAc_ac_c
/* 806931CC  7F C3 F3 78 */	mr r3, r30
/* 806931D0  4B 98 6A AD */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_806931D4:
/* 806931D4  3B 60 00 00 */	li r27, 0
/* 806931D8  3B 40 00 02 */	li r26, 2
lbl_806931DC:
/* 806931DC  7F 40 07 74 */	extsb r0, r26
/* 806931E0  2C 00 00 01 */	cmpwi r0, 1
/* 806931E4  40 82 00 2C */	bne lbl_80693210
/* 806931E8  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 806931EC  60 00 00 01 */	ori r0, r0, 1
/* 806931F0  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 806931F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806931F8  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 806931FC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80693200  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 80693204  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80693208  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 8069320C  48 00 00 14 */	b lbl_80693220
lbl_80693210:
/* 80693210  A0 7E 05 8E */	lhz r3, 0x58e(r30)
/* 80693214  38 00 FF E8 */	li r0, -24
/* 80693218  7C 60 00 38 */	and r0, r3, r0
/* 8069321C  B0 1E 05 8E */	sth r0, 0x58e(r30)
lbl_80693220:
/* 80693220  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80693224  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80693228  41 82 00 10 */	beq lbl_80693238
/* 8069322C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80693230  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80693234  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80693238:
/* 80693238  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8069323C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80693240  41 82 00 78 */	beq lbl_806932B8
/* 80693244  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 80693248  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8069324C  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80693250  A0 7E 05 8E */	lhz r3, 0x58e(r30)
/* 80693254  38 00 FF E8 */	li r0, -24
/* 80693258  7C 60 00 38 */	and r0, r3, r0
/* 8069325C  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80693260  38 00 00 00 */	li r0, 0
/* 80693264  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80693268  38 00 00 0A */	li r0, 0xa
/* 8069326C  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 80693270  38 00 00 15 */	li r0, 0x15
/* 80693274  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 80693278  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070368@ha */
/* 8069327C  38 03 03 68 */	addi r0, r3, 0x0368 /* 0x00070368@l */
/* 80693280  90 01 00 08 */	stw r0, 8(r1)
/* 80693284  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80693288  38 81 00 08 */	addi r4, r1, 8
/* 8069328C  38 A0 FF FF */	li r5, -1
/* 80693290  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80693294  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80693298  7D 89 03 A6 */	mtctr r12
/* 8069329C  4E 80 04 21 */	bctrl 
/* 806932A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806932A4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806932A8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806932AC  80 1E 09 4C */	lwz r0, 0x94c(r30)
/* 806932B0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806932B4  90 1E 09 4C */	stw r0, 0x94c(r30)
lbl_806932B8:
/* 806932B8  C0 3E 06 98 */	lfs f1, 0x698(r30)
/* 806932BC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806932C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806932C4  40 81 00 B8 */	ble lbl_8069337C
/* 806932C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806932CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806932D0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806932D4  FC 00 08 50 */	fneg f0, f1
/* 806932D8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806932DC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806932E0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806932E4  80 63 00 00 */	lwz r3, 0(r3)
/* 806932E8  A8 9E 06 9C */	lha r4, 0x69c(r30)
/* 806932EC  4B 97 90 F1 */	bl mDoMtx_YrotS__FPA4_fs
/* 806932F0  38 61 00 24 */	addi r3, r1, 0x24
/* 806932F4  38 81 00 18 */	addi r4, r1, 0x18
/* 806932F8  4B BD DB F5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806932FC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80693300  38 81 00 18 */	addi r4, r1, 0x18
/* 80693304  7C 65 1B 78 */	mr r5, r3
/* 80693308  4B CB 3D 89 */	bl PSVECAdd
/* 8069330C  38 7E 06 98 */	addi r3, r30, 0x698
/* 80693310  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80693314  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80693318  4B BD C7 69 */	bl cLib_addCalc0__FPfff
/* 8069331C  88 1E 06 A4 */	lbz r0, 0x6a4(r30)
/* 80693320  7C 00 07 75 */	extsb. r0, r0
/* 80693324  41 82 00 94 */	beq lbl_806933B8
/* 80693328  38 00 00 03 */	li r0, 3
/* 8069332C  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 80693330  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80693334  38 03 13 00 */	addi r0, r3, 0x1300
/* 80693338  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8069333C  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80693340  38 03 17 00 */	addi r0, r3, 0x1700
/* 80693344  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80693348  C0 3E 06 98 */	lfs f1, 0x698(r30)
/* 8069334C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80693350  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80693354  4C 40 13 82 */	cror 2, 0, 2
/* 80693358  41 82 00 10 */	beq lbl_80693368
/* 8069335C  80 1E 07 38 */	lwz r0, 0x738(r30)
/* 80693360  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80693364  41 82 00 54 */	beq lbl_806933B8
lbl_80693368:
/* 80693368  7F C3 F3 78 */	mr r3, r30
/* 8069336C  4B FF DE 85 */	bl bu_disappear__FP10fopAc_ac_c
/* 80693370  7F C3 F3 78 */	mr r3, r30
/* 80693374  4B 98 69 09 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80693378  48 00 00 40 */	b lbl_806933B8
lbl_8069337C:
/* 8069337C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80693380  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80693384  38 A0 00 04 */	li r5, 4
/* 80693388  38 C0 20 00 */	li r6, 0x2000
/* 8069338C  4B BD D2 7D */	bl cLib_addCalcAngleS2__FPssss
/* 80693390  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80693394  38 80 00 00 */	li r4, 0
/* 80693398  38 A0 00 04 */	li r5, 4
/* 8069339C  38 C0 20 00 */	li r6, 0x2000
/* 806933A0  4B BD D2 69 */	bl cLib_addCalcAngleS2__FPssss
/* 806933A4  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 806933A8  A8 9E 04 E0 */	lha r4, 0x4e0(r30)
/* 806933AC  38 A0 00 04 */	li r5, 4
/* 806933B0  38 C0 20 00 */	li r6, 0x2000
/* 806933B4  4B BD D2 55 */	bl cLib_addCalcAngleS2__FPssss
lbl_806933B8:
/* 806933B8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806933BC  C0 1E 06 A8 */	lfs f0, 0x6a8(r30)
/* 806933C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 806933C4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806933C8  C0 3E 04 C0 */	lfs f1, 0x4c0(r30)
/* 806933CC  C0 1E 06 A8 */	lfs f0, 0x6a8(r30)
/* 806933D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 806933D4  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 806933D8  38 7E 07 0C */	addi r3, r30, 0x70c
/* 806933DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806933E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806933E4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806933E8  4B 9E 36 C5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806933EC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806933F0  C0 1E 06 A8 */	lfs f0, 0x6a8(r30)
/* 806933F4  EC 01 00 2A */	fadds f0, f1, f0
/* 806933F8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806933FC  C0 3E 04 C0 */	lfs f1, 0x4c0(r30)
/* 80693400  C0 1E 06 A8 */	lfs f0, 0x6a8(r30)
/* 80693404  EC 01 00 2A */	fadds f0, f1, f0
/* 80693408  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8069340C  7F 40 07 74 */	extsb r0, r26
/* 80693410  2C 00 00 02 */	cmpwi r0, 2
/* 80693414  41 82 00 28 */	beq lbl_8069343C
/* 80693418  38 7E 06 A8 */	addi r3, r30, 0x6a8
/* 8069341C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80693420  3C 80 80 69 */	lis r4, l_HIO@ha /* 0x80694968@ha */
/* 80693424  38 84 49 68 */	addi r4, r4, l_HIO@l /* 0x80694968@l */
/* 80693428  C0 04 00 08 */	lfs f0, 8(r4)
/* 8069342C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80693430  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80693434  FC 60 10 90 */	fmr f3, f2
/* 80693438  4B BD C6 05 */	bl cLib_addCalc2__FPffff
lbl_8069343C:
/* 8069343C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80693440  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80693444  EC 21 00 28 */	fsubs f1, f1, f0
/* 80693448  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8069344C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80693450  40 80 00 48 */	bge lbl_80693498
/* 80693454  A8 1E 06 72 */	lha r0, 0x672(r30)
/* 80693458  2C 00 00 00 */	cmpwi r0, 0
/* 8069345C  41 82 00 3C */	beq lbl_80693498
/* 80693460  7F A3 EB 78 */	mr r3, r29
/* 80693464  7F C4 F3 78 */	mr r4, r30
/* 80693468  4B 98 99 95 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8069346C  2C 03 00 00 */	cmpwi r3, 0
/* 80693470  41 82 00 1C */	beq lbl_8069348C
/* 80693474  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80693478  54 00 00 3E */	slwi r0, r0, 0
/* 8069347C  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80693480  38 00 00 00 */	li r0, 0
/* 80693484  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80693488  48 00 00 24 */	b lbl_806934AC
lbl_8069348C:
/* 8069348C  38 00 00 04 */	li r0, 4
/* 80693490  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80693494  48 00 00 18 */	b lbl_806934AC
lbl_80693498:
/* 80693498  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8069349C  54 00 00 3E */	slwi r0, r0, 0
/* 806934A0  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806934A4  38 00 00 00 */	li r0, 0
/* 806934A8  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_806934AC:
/* 806934AC  7F 80 07 75 */	extsb. r0, r28
/* 806934B0  41 82 00 24 */	beq lbl_806934D4
/* 806934B4  38 7E 0A 7C */	addi r3, r30, 0xa7c
/* 806934B8  38 9E 0A 80 */	addi r4, r30, 0xa80
/* 806934BC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806934C0  38 DE 04 E4 */	addi r6, r30, 0x4e4
/* 806934C4  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 806934C8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806934CC  39 00 00 01 */	li r8, 1
/* 806934D0  4B 98 9B 51 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_806934D4:
/* 806934D4  38 7E 06 BE */	addi r3, r30, 0x6be
/* 806934D8  38 80 00 00 */	li r4, 0
/* 806934DC  38 A0 00 02 */	li r5, 2
/* 806934E0  38 C0 04 00 */	li r6, 0x400
/* 806934E4  4B BD D1 25 */	bl cLib_addCalcAngleS2__FPssss
/* 806934E8  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 806934EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806934F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806934F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806934F8  7F C3 F3 78 */	mr r3, r30
/* 806934FC  38 9E 05 C4 */	addi r4, r30, 0x5c4
/* 80693500  38 BE 05 38 */	addi r5, r30, 0x538
/* 80693504  38 C1 00 0C */	addi r6, r1, 0xc
/* 80693508  48 00 0D 61 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8069350C  7F 63 DB 78 */	mr r3, r27
/* 80693510  39 61 00 50 */	addi r11, r1, 0x50
/* 80693514  4B CC ED 09 */	bl _restgpr_26
/* 80693518  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8069351C  7C 08 03 A6 */	mtlr r0
/* 80693520  38 21 00 50 */	addi r1, r1, 0x50
/* 80693524  4E 80 00 20 */	blr 
