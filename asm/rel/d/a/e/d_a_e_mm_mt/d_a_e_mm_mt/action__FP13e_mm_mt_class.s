lbl_80724190:
/* 80724190  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80724194  7C 08 02 A6 */	mflr r0
/* 80724198  90 01 00 94 */	stw r0, 0x94(r1)
/* 8072419C  39 61 00 90 */	addi r11, r1, 0x90
/* 807241A0  4B C3 E0 39 */	bl _savegpr_28
/* 807241A4  7C 7E 1B 78 */	mr r30, r3
/* 807241A8  3C 60 80 72 */	lis r3, lit_3789@ha /* 0x80725858@ha */
/* 807241AC  3B E3 58 58 */	addi r31, r3, lit_3789@l /* 0x80725858@l */
/* 807241B0  3B A0 00 00 */	li r29, 0
/* 807241B4  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 807241B8  38 81 00 14 */	addi r4, r1, 0x14
/* 807241BC  4B 8F 58 01 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 807241C0  2C 03 00 00 */	cmpwi r3, 0
/* 807241C4  41 82 00 14 */	beq lbl_807241D8
/* 807241C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807241CC  28 00 00 00 */	cmplwi r0, 0
/* 807241D0  41 82 00 08 */	beq lbl_807241D8
/* 807241D4  7C 1D 03 78 */	mr r29, r0
lbl_807241D8:
/* 807241D8  28 1D 00 00 */	cmplwi r29, 0
/* 807241DC  41 82 00 14 */	beq lbl_807241F0
/* 807241E0  C0 1E 08 C4 */	lfs f0, 0x8c4(r30)
/* 807241E4  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 807241E8  C0 1E 08 CC */	lfs f0, 0x8cc(r30)
/* 807241EC  D0 1D 06 7C */	stfs f0, 0x67c(r29)
lbl_807241F0:
/* 807241F0  A8 1E 06 66 */	lha r0, 0x666(r30)
/* 807241F4  2C 00 00 02 */	cmpwi r0, 2
/* 807241F8  41 82 01 20 */	beq lbl_80724318
/* 807241FC  40 80 00 14 */	bge lbl_80724210
/* 80724200  2C 00 00 00 */	cmpwi r0, 0
/* 80724204  41 82 00 18 */	beq lbl_8072421C
/* 80724208  40 80 00 D8 */	bge lbl_807242E0
/* 8072420C  48 00 02 4C */	b lbl_80724458
lbl_80724210:
/* 80724210  2C 00 00 04 */	cmpwi r0, 4
/* 80724214  40 80 02 44 */	bge lbl_80724458
/* 80724218  48 00 01 38 */	b lbl_80724350
lbl_8072421C:
/* 8072421C  7F C3 F3 78 */	mr r3, r30
/* 80724220  4B FF F0 51 */	bl e_mm_mt_normal__FP13e_mm_mt_class
/* 80724224  38 7E 06 EC */	addi r3, r30, 0x6ec
/* 80724228  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072422C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80724230  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80724234  4B 95 28 79 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80724238  28 1D 00 00 */	cmplwi r29, 0
/* 8072423C  41 82 02 1C */	beq lbl_80724458
/* 80724240  7F C3 F3 78 */	mr r3, r30
/* 80724244  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80724248  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072424C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80724250  4B 8F 64 C1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80724254  7C 64 1B 78 */	mr r4, r3
/* 80724258  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8072425C  3C 63 00 01 */	addis r3, r3, 1
/* 80724260  38 03 80 00 */	addi r0, r3, -32768
/* 80724264  7C 03 07 34 */	extsh r3, r0
/* 80724268  4B B4 CB BD */	bl cLib_distanceAngleS__Fss
/* 8072426C  7C 60 07 34 */	extsh r0, r3
/* 80724270  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80724274  41 81 00 18 */	bgt lbl_8072428C
/* 80724278  2C 00 D0 00 */	cmpwi r0, -12288
/* 8072427C  41 80 00 10 */	blt lbl_8072428C
/* 80724280  A8 1E 06 66 */	lha r0, 0x666(r30)
/* 80724284  2C 00 00 00 */	cmpwi r0, 0
/* 80724288  41 82 00 30 */	beq lbl_807242B8
lbl_8072428C:
/* 8072428C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80724290  60 00 00 01 */	ori r0, r0, 1
/* 80724294  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80724298  38 00 00 02 */	li r0, 2
/* 8072429C  98 1E 09 BA */	stb r0, 0x9ba(r30)
/* 807242A0  38 00 00 09 */	li r0, 9
/* 807242A4  98 1E 09 B8 */	stb r0, 0x9b8(r30)
/* 807242A8  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 807242AC  60 00 00 04 */	ori r0, r0, 4
/* 807242B0  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 807242B4  48 00 01 A4 */	b lbl_80724458
lbl_807242B8:
/* 807242B8  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 807242BC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807242C0  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 807242C4  38 00 00 00 */	li r0, 0
/* 807242C8  98 1E 09 BA */	stb r0, 0x9ba(r30)
/* 807242CC  98 1E 09 B8 */	stb r0, 0x9b8(r30)
/* 807242D0  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 807242D4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 807242D8  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 807242DC  48 00 01 7C */	b lbl_80724458
lbl_807242E0:
/* 807242E0  7F C3 F3 78 */	mr r3, r30
/* 807242E4  4B FF F2 05 */	bl e_mm_mt_hagare__FP13e_mm_mt_class
/* 807242E8  38 7E 06 EC */	addi r3, r30, 0x6ec
/* 807242EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807242F0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807242F4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807242F8  4B 95 27 B5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807242FC  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80724300  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 80724304  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80724308  B0 1E 06 8E */	sth r0, 0x68e(r30)
/* 8072430C  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 80724310  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 80724314  48 00 01 44 */	b lbl_80724458
lbl_80724318:
/* 80724318  7F C3 F3 78 */	mr r3, r30
/* 8072431C  4B FF F4 29 */	bl e_mm_mt_carry__FP13e_mm_mt_class
/* 80724320  38 00 00 03 */	li r0, 3
/* 80724324  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 80724328  38 7E 06 AC */	addi r3, r30, 0x6ac
/* 8072432C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80724330  FC 40 08 90 */	fmr f2, f1
/* 80724334  4B 95 1C 25 */	bl SetWall__12dBgS_AcchCirFff
/* 80724338  38 7E 06 EC */	addi r3, r30, 0x6ec
/* 8072433C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80724340  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80724344  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80724348  4B 95 27 65 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8072434C  48 00 01 0C */	b lbl_80724458
lbl_80724350:
/* 80724350  7F C3 F3 78 */	mr r3, r30
/* 80724354  4B FF F8 1D */	bl e_mm_mt_drop__FP13e_mm_mt_class
/* 80724358  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 8072435C  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 80724360  38 7E 09 00 */	addi r3, r30, 0x900
/* 80724364  4B 96 02 F5 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80724368  28 03 00 00 */	cmplwi r3, 0
/* 8072436C  41 82 00 C8 */	beq lbl_80724434
/* 80724370  34 7E 08 C4 */	addic. r3, r30, 0x8c4
/* 80724374  41 82 00 C0 */	beq lbl_80724434
/* 80724378  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8072437C  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80724380  C0 03 00 00 */	lfs f0, 0(r3)
/* 80724384  EC 02 00 32 */	fmuls f0, f2, f0
/* 80724388  EC 01 00 2A */	fadds f0, f1, f0
/* 8072438C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80724390  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80724394  C0 03 00 08 */	lfs f0, 8(r3)
/* 80724398  EC 02 00 32 */	fmuls f0, f2, f0
/* 8072439C  EC 01 00 2A */	fadds f0, f1, f0
/* 807243A0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 807243A4  C0 03 00 00 */	lfs f0, 0(r3)
/* 807243A8  FC 00 02 10 */	fabs f0, f0
/* 807243AC  FC 00 00 18 */	frsp f0, f0
/* 807243B0  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 807243B4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807243B8  4C 41 13 82 */	cror 2, 1, 2
/* 807243BC  41 82 00 1C */	beq lbl_807243D8
/* 807243C0  C0 03 00 08 */	lfs f0, 8(r3)
/* 807243C4  FC 00 02 10 */	fabs f0, f0
/* 807243C8  FC 00 00 18 */	frsp f0, f0
/* 807243CC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807243D0  4C 41 13 82 */	cror 2, 1, 2
/* 807243D4  40 82 00 60 */	bne lbl_80724434
lbl_807243D8:
/* 807243D8  38 7E 06 9C */	addi r3, r30, 0x69c
/* 807243DC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 807243E0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807243E4  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 807243E8  4B B4 B6 55 */	bl cLib_addCalc2__FPffff
/* 807243EC  7F C3 F3 78 */	mr r3, r30
/* 807243F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807243F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807243F8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807243FC  4B 8F 63 15 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80724400  7C 64 1B 78 */	mr r4, r3
/* 80724404  A8 1E 06 8E */	lha r0, 0x68e(r30)
/* 80724408  7C 03 00 50 */	subf r0, r3, r0
/* 8072440C  7C 00 07 34 */	extsh r0, r0
/* 80724410  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80724414  41 81 00 0C */	bgt lbl_80724420
/* 80724418  2C 00 C0 00 */	cmpwi r0, -16384
/* 8072441C  40 80 00 08 */	bge lbl_80724424
lbl_80724420:
/* 80724420  38 84 80 00 */	addi r4, r4, -32768
lbl_80724424:
/* 80724424  38 7E 06 8E */	addi r3, r30, 0x68e
/* 80724428  38 A0 00 04 */	li r5, 4
/* 8072442C  38 C0 01 00 */	li r6, 0x100
/* 80724430  4B B4 C1 D9 */	bl cLib_addCalcAngleS2__FPssss
lbl_80724434:
/* 80724434  38 7E 06 AC */	addi r3, r30, 0x6ac
/* 80724438  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8072443C  FC 40 08 90 */	fmr f2, f1
/* 80724440  4B 95 1B 19 */	bl SetWall__12dBgS_AcchCirFff
/* 80724444  38 7E 06 EC */	addi r3, r30, 0x6ec
/* 80724448  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072444C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80724450  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80724454  4B 95 26 59 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_80724458:
/* 80724458  7F C3 F3 78 */	mr r3, r30
/* 8072445C  38 9E 05 B4 */	addi r4, r30, 0x5b4
/* 80724460  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80724464  38 DE 04 EC */	addi r6, r30, 0x4ec
/* 80724468  48 00 0F D5 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8072446C  A8 1E 06 88 */	lha r0, 0x688(r30)
/* 80724470  2C 00 00 00 */	cmpwi r0, 0
/* 80724474  40 82 05 44 */	bne lbl_807249B8
/* 80724478  38 7E 08 E0 */	addi r3, r30, 0x8e0
/* 8072447C  4B 95 F3 B5 */	bl Move__10dCcD_GSttsFv
/* 80724480  38 7E 09 00 */	addi r3, r30, 0x900
/* 80724484  4B 95 FF DD */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80724488  28 03 00 00 */	cmplwi r3, 0
/* 8072448C  41 82 05 2C */	beq lbl_807249B8
/* 80724490  38 00 00 0A */	li r0, 0xa
/* 80724494  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 80724498  38 7E 09 00 */	addi r3, r30, 0x900
/* 8072449C  4B 96 00 5D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807244A0  90 7E 0B 70 */	stw r3, 0xb70(r30)
/* 807244A4  38 7E 09 00 */	addi r3, r30, 0x900
/* 807244A8  4B 96 00 51 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807244AC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807244B0  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 807244B4  41 82 00 24 */	beq lbl_807244D8
/* 807244B8  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 807244BC  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040018@ha */
/* 807244C0  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x00040018@l */
/* 807244C4  38 A0 00 2D */	li r5, 0x2d
/* 807244C8  81 9E 05 B4 */	lwz r12, 0x5b4(r30)
/* 807244CC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 807244D0  7D 89 03 A6 */	mtctr r12
/* 807244D4  4E 80 04 21 */	bctrl 
lbl_807244D8:
/* 807244D8  28 1D 00 00 */	cmplwi r29, 0
/* 807244DC  41 82 02 C4 */	beq lbl_807247A0
/* 807244E0  88 1D 06 72 */	lbz r0, 0x672(r29)
/* 807244E4  7C 00 07 75 */	extsb. r0, r0
/* 807244E8  41 82 02 B8 */	beq lbl_807247A0
/* 807244EC  88 1E 09 B8 */	lbz r0, 0x9b8(r30)
/* 807244F0  28 00 00 09 */	cmplwi r0, 9
/* 807244F4  41 82 00 24 */	beq lbl_80724518
/* 807244F8  38 7E 09 00 */	addi r3, r30, 0x900
/* 807244FC  4B 95 FF FD */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80724500  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80724504  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 80724508  41 82 00 F4 */	beq lbl_807245FC
/* 8072450C  A8 1D 06 6E */	lha r0, 0x66e(r29)
/* 80724510  2C 00 00 02 */	cmpwi r0, 2
/* 80724514  40 82 00 E8 */	bne lbl_807245FC
lbl_80724518:
/* 80724518  38 61 00 34 */	addi r3, r1, 0x34
/* 8072451C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80724520  3B 9E 09 D4 */	addi r28, r30, 0x9d4
/* 80724524  7F 85 E3 78 */	mr r5, r28
/* 80724528  4B B4 26 0D */	bl __mi__4cXyzCFRC3Vec
/* 8072452C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80724530  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80724534  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80724538  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8072453C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80724540  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80724544  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80724548  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8072454C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80724550  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80724554  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80724558  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8072455C  38 7E 09 00 */	addi r3, r30, 0x900
/* 80724560  4B 95 FF 99 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80724564  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80724568  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8072456C  41 82 00 14 */	beq lbl_80724580
/* 80724570  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80724574  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80724578  EC 01 00 2A */	fadds f0, f1, f0
/* 8072457C  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80724580:
/* 80724580  38 00 00 00 */	li r0, 0
/* 80724584  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80724588  38 61 00 58 */	addi r3, r1, 0x58
/* 8072458C  4B B4 2B 9D */	bl atan2sX_Z__4cXyzCFv
/* 80724590  B0 61 00 22 */	sth r3, 0x22(r1)
/* 80724594  38 00 00 00 */	li r0, 0
/* 80724598  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8072459C  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 807245A0  80 9E 0B 70 */	lwz r4, 0xb70(r30)
/* 807245A4  38 A0 00 28 */	li r5, 0x28
/* 807245A8  7F C6 F3 78 */	mr r6, r30
/* 807245AC  4B 96 2F 69 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 807245B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807245B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807245B8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807245BC  38 80 00 02 */	li r4, 2
/* 807245C0  7F C5 F3 78 */	mr r5, r30
/* 807245C4  38 C1 00 4C */	addi r6, r1, 0x4c
/* 807245C8  38 E1 00 20 */	addi r7, r1, 0x20
/* 807245CC  39 00 00 00 */	li r8, 0
/* 807245D0  39 20 00 00 */	li r9, 0
/* 807245D4  4B 92 7C 45 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 807245D8  88 1D 0B 99 */	lbz r0, 0xb99(r29)
/* 807245DC  60 00 00 02 */	ori r0, r0, 2
/* 807245E0  98 1D 0B 99 */	stb r0, 0xb99(r29)
/* 807245E4  38 7E 09 00 */	addi r3, r30, 0x900
/* 807245E8  81 9E 09 3C */	lwz r12, 0x93c(r30)
/* 807245EC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807245F0  7D 89 03 A6 */	mtctr r12
/* 807245F4  4E 80 04 21 */	bctrl 
/* 807245F8  48 00 03 C0 */	b lbl_807249B8
lbl_807245FC:
/* 807245FC  88 7D 0B 99 */	lbz r3, 0xb99(r29)
/* 80724600  7C 63 07 74 */	extsb r3, r3
/* 80724604  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80724608  40 82 03 B0 */	bne lbl_807249B8
/* 8072460C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80724610  40 82 03 A8 */	bne lbl_807249B8
/* 80724614  AB 9E 05 62 */	lha r28, 0x562(r30)
/* 80724618  7F C3 F3 78 */	mr r3, r30
/* 8072461C  38 9E 0B 70 */	addi r4, r30, 0xb70
/* 80724620  4B 96 35 E5 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80724624  80 1E 0B 70 */	lwz r0, 0xb70(r30)
/* 80724628  90 1D 0B 74 */	stw r0, 0xb74(r29)
/* 8072462C  A8 1E 0B 7E */	lha r0, 0xb7e(r30)
/* 80724630  B0 1D 06 AC */	sth r0, 0x6ac(r29)
/* 80724634  38 00 00 08 */	li r0, 8
/* 80724638  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 8072463C  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 80724640  A8 1D 05 60 */	lha r0, 0x560(r29)
/* 80724644  20 00 07 D0 */	subfic r0, r0, 0x7d0
/* 80724648  7C 03 00 00 */	cmpw r3, r0
/* 8072464C  41 81 00 88 */	bgt lbl_807246D4
/* 80724650  88 1D 0B 99 */	lbz r0, 0xb99(r29)
/* 80724654  60 00 00 10 */	ori r0, r0, 0x10
/* 80724658  98 1D 0B 99 */	stb r0, 0xb99(r29)
/* 8072465C  88 1E 0B 90 */	lbz r0, 0xb90(r30)
/* 80724660  28 00 00 01 */	cmplwi r0, 1
/* 80724664  41 82 00 14 */	beq lbl_80724678
/* 80724668  80 7E 0B 70 */	lwz r3, 0xb70(r30)
/* 8072466C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80724670  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80724674  41 82 00 34 */	beq lbl_807246A8
lbl_80724678:
/* 80724678  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072467C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80724680  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80724684  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80724688  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 8072468C  7D 89 03 A6 */	mtctr r12
/* 80724690  4E 80 04 21 */	bctrl 
/* 80724694  2C 03 00 00 */	cmpwi r3, 0
/* 80724698  40 82 00 10 */	bne lbl_807246A8
/* 8072469C  38 00 00 05 */	li r0, 5
/* 807246A0  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 807246A4  98 03 11 25 */	stb r0, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
lbl_807246A8:
/* 807246A8  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 807246AC  60 00 00 01 */	ori r0, r0, 1
/* 807246B0  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 807246B4  38 00 00 02 */	li r0, 2
/* 807246B8  98 1E 09 BA */	stb r0, 0x9ba(r30)
/* 807246BC  38 00 00 09 */	li r0, 9
/* 807246C0  98 1E 09 B8 */	stb r0, 0x9b8(r30)
/* 807246C4  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 807246C8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 807246CC  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 807246D0  48 00 00 B8 */	b lbl_80724788
lbl_807246D4:
/* 807246D4  7C 1C 18 00 */	cmpw r28, r3
/* 807246D8  41 82 00 30 */	beq lbl_80724708
/* 807246DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E4@ha */
/* 807246E0  38 03 02 E4 */	addi r0, r3, 0x02E4 /* 0x000702E4@l */
/* 807246E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807246E8  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 807246EC  38 81 00 0C */	addi r4, r1, 0xc
/* 807246F0  38 A0 FF FF */	li r5, -1
/* 807246F4  81 9E 05 B4 */	lwz r12, 0x5b4(r30)
/* 807246F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807246FC  7D 89 03 A6 */	mtctr r12
/* 80724700  4E 80 04 21 */	bctrl 
/* 80724704  48 00 00 2C */	b lbl_80724730
lbl_80724708:
/* 80724708  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E5@ha */
/* 8072470C  38 03 02 E5 */	addi r0, r3, 0x02E5 /* 0x000702E5@l */
/* 80724710  90 01 00 08 */	stw r0, 8(r1)
/* 80724714  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80724718  38 81 00 08 */	addi r4, r1, 8
/* 8072471C  38 A0 FF FF */	li r5, -1
/* 80724720  81 9E 05 B4 */	lwz r12, 0x5b4(r30)
/* 80724724  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80724728  7D 89 03 A6 */	mtctr r12
/* 8072472C  4E 80 04 21 */	bctrl 
lbl_80724730:
/* 80724730  88 1E 0B 90 */	lbz r0, 0xb90(r30)
/* 80724734  28 00 00 01 */	cmplwi r0, 1
/* 80724738  41 82 00 14 */	beq lbl_8072474C
/* 8072473C  80 7E 0B 70 */	lwz r3, 0xb70(r30)
/* 80724740  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80724744  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80724748  41 82 00 34 */	beq lbl_8072477C
lbl_8072474C:
/* 8072474C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80724750  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80724754  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80724758  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8072475C  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 80724760  7D 89 03 A6 */	mtctr r12
/* 80724764  4E 80 04 21 */	bctrl 
/* 80724768  2C 03 00 00 */	cmpwi r3, 0
/* 8072476C  40 82 00 10 */	bne lbl_8072477C
/* 80724770  38 00 00 02 */	li r0, 2
/* 80724774  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 80724778  98 03 11 25 */	stb r0, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
lbl_8072477C:
/* 8072477C  88 1D 0B 99 */	lbz r0, 0xb99(r29)
/* 80724780  60 00 00 08 */	ori r0, r0, 8
/* 80724784  98 1D 0B 99 */	stb r0, 0xb99(r29)
lbl_80724788:
/* 80724788  38 7E 09 00 */	addi r3, r30, 0x900
/* 8072478C  81 9E 09 3C */	lwz r12, 0x93c(r30)
/* 80724790  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80724794  7D 89 03 A6 */	mtctr r12
/* 80724798  4E 80 04 21 */	bctrl 
/* 8072479C  48 00 02 1C */	b lbl_807249B8
lbl_807247A0:
/* 807247A0  38 61 00 28 */	addi r3, r1, 0x28
/* 807247A4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807247A8  3B 9E 09 D4 */	addi r28, r30, 0x9d4
/* 807247AC  7F 85 E3 78 */	mr r5, r28
/* 807247B0  4B B4 23 85 */	bl __mi__4cXyzCFRC3Vec
/* 807247B4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807247B8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807247BC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807247C0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807247C4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807247C8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807247CC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 807247D0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807247D4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 807247D8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807247DC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 807247E0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807247E4  38 7E 09 00 */	addi r3, r30, 0x900
/* 807247E8  4B 95 FD 11 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807247EC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807247F0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807247F4  41 82 00 14 */	beq lbl_80724808
/* 807247F8  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 807247FC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80724800  EC 01 00 2A */	fadds f0, f1, f0
/* 80724804  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80724808:
/* 80724808  38 00 00 00 */	li r0, 0
/* 8072480C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80724810  38 61 00 58 */	addi r3, r1, 0x58
/* 80724814  4B B4 29 15 */	bl atan2sX_Z__4cXyzCFv
/* 80724818  B0 61 00 1A */	sth r3, 0x1a(r1)
/* 8072481C  38 00 00 00 */	li r0, 0
/* 80724820  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80724824  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80724828  80 9E 0B 70 */	lwz r4, 0xb70(r30)
/* 8072482C  38 A0 00 28 */	li r5, 0x28
/* 80724830  7F C6 F3 78 */	mr r6, r30
/* 80724834  4B 96 2C E1 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80724838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072483C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80724840  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80724844  38 80 00 02 */	li r4, 2
/* 80724848  7F C5 F3 78 */	mr r5, r30
/* 8072484C  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80724850  38 E1 00 18 */	addi r7, r1, 0x18
/* 80724854  39 00 00 00 */	li r8, 0
/* 80724858  39 20 00 00 */	li r9, 0
/* 8072485C  4B 92 79 BD */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80724860  38 7E 0B 70 */	addi r3, r30, 0xb70
/* 80724864  4B 96 31 F5 */	bl at_power_check__FP11dCcU_AtInfo
/* 80724868  7C 7C 1B 78 */	mr r28, r3
/* 8072486C  88 1E 0B 90 */	lbz r0, 0xb90(r30)
/* 80724870  28 00 00 01 */	cmplwi r0, 1
/* 80724874  40 82 00 D8 */	bne lbl_8072494C
/* 80724878  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072487C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80724880  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80724884  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80724888  28 00 00 08 */	cmplwi r0, 8
/* 8072488C  41 82 00 1C */	beq lbl_807248A8
/* 80724890  28 00 00 09 */	cmplwi r0, 9
/* 80724894  41 82 00 14 */	beq lbl_807248A8
/* 80724898  28 00 00 17 */	cmplwi r0, 0x17
/* 8072489C  41 82 00 0C */	beq lbl_807248A8
/* 807248A0  28 00 00 18 */	cmplwi r0, 0x18
/* 807248A4  40 82 00 7C */	bne lbl_80724920
lbl_807248A8:
/* 807248A8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807248AC  4B B4 30 A9 */	bl cM_rndF__Ff
/* 807248B0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 807248B4  EC 00 08 2A */	fadds f0, f0, f1
/* 807248B8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807248BC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807248C0  4B B4 30 95 */	bl cM_rndF__Ff
/* 807248C4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 807248C8  EC 00 08 2A */	fadds f0, f0, f1
/* 807248CC  FC 00 00 1E */	fctiwz f0, f0
/* 807248D0  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 807248D4  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 807248D8  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 807248DC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 807248E0  4B B4 30 75 */	bl cM_rndF__Ff
/* 807248E4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 807248E8  EC 00 08 2A */	fadds f0, f0, f1
/* 807248EC  FC 00 00 1E */	fctiwz f0, f0
/* 807248F0  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 807248F4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807248F8  7C 00 07 34 */	extsh r0, r0
/* 807248FC  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 80724900  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80724904  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80724908  3C 00 43 30 */	lis r0, 0x4330
/* 8072490C  90 01 00 78 */	stw r0, 0x78(r1)
/* 80724910  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80724914  EC 00 08 28 */	fsubs f0, f0, f1
/* 80724918  D0 1E 06 9C */	stfs f0, 0x69c(r30)
/* 8072491C  48 00 00 88 */	b lbl_807249A4
lbl_80724920:
/* 80724920  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80724924  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80724928  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8072492C  4B B4 30 61 */	bl cM_rndFX__Ff
/* 80724930  FC 00 08 1E */	fctiwz f0, f1
/* 80724934  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80724938  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8072493C  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80724940  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80724944  D0 1E 06 9C */	stfs f0, 0x69c(r30)
/* 80724948  48 00 00 5C */	b lbl_807249A4
lbl_8072494C:
/* 8072494C  28 1C 00 00 */	cmplwi r28, 0
/* 80724950  41 82 00 34 */	beq lbl_80724984
/* 80724954  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80724958  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 8072495C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80724960  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80724964  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80724968  4B B4 30 25 */	bl cM_rndFX__Ff
/* 8072496C  FC 00 08 1E */	fctiwz f0, f1
/* 80724970  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80724974  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 80724978  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8072497C  7C 00 1A 14 */	add r0, r0, r3
/* 80724980  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_80724984:
/* 80724984  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80724988  4B B4 30 05 */	bl cM_rndFX__Ff
/* 8072498C  FC 00 08 1E */	fctiwz f0, f1
/* 80724990  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80724994  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80724998  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 8072499C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807249A0  D0 1E 06 9C */	stfs f0, 0x69c(r30)
lbl_807249A4:
/* 807249A4  38 7E 09 00 */	addi r3, r30, 0x900
/* 807249A8  81 9E 09 3C */	lwz r12, 0x93c(r30)
/* 807249AC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807249B0  7D 89 03 A6 */	mtctr r12
/* 807249B4  4E 80 04 21 */	bctrl 
lbl_807249B8:
/* 807249B8  28 1D 00 00 */	cmplwi r29, 0
/* 807249BC  41 82 00 40 */	beq lbl_807249FC
/* 807249C0  88 1D 06 72 */	lbz r0, 0x672(r29)
/* 807249C4  7C 00 07 75 */	extsb. r0, r0
/* 807249C8  41 82 00 34 */	beq lbl_807249FC
/* 807249CC  88 1D 0B 99 */	lbz r0, 0xb99(r29)
/* 807249D0  2C 00 00 04 */	cmpwi r0, 4
/* 807249D4  41 82 00 28 */	beq lbl_807249FC
/* 807249D8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807249DC  80 63 00 04 */	lwz r3, 4(r3)
/* 807249E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807249E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807249E8  38 63 02 10 */	addi r3, r3, 0x210
/* 807249EC  80 9E 06 5C */	lwz r4, 0x65c(r30)
/* 807249F0  38 84 00 24 */	addi r4, r4, 0x24
/* 807249F4  4B C2 1A BD */	bl PSMTXCopy
/* 807249F8  48 00 01 50 */	b lbl_80724B48
lbl_807249FC:
/* 807249FC  A8 1E 06 64 */	lha r0, 0x664(r30)
/* 80724A00  1C 00 0B B8 */	mulli r0, r0, 0xbb8
/* 80724A04  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80724A08  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80724A0C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80724A10  7C 23 04 2E */	lfsx f1, r3, r0
/* 80724A14  C0 1E 06 9C */	lfs f0, 0x69c(r30)
/* 80724A18  EC 00 00 72 */	fmuls f0, f0, f1
/* 80724A1C  FC 00 00 1E */	fctiwz f0, f0
/* 80724A20  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80724A24  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80724A28  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 80724A2C  A8 1E 06 64 */	lha r0, 0x664(r30)
/* 80724A30  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 80724A34  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80724A38  7C 23 04 2E */	lfsx f1, r3, r0
/* 80724A3C  C0 1E 06 9C */	lfs f0, 0x69c(r30)
/* 80724A40  EC 00 00 72 */	fmuls f0, f0, f1
/* 80724A44  FC 00 00 1E */	fctiwz f0, f0
/* 80724A48  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80724A4C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80724A50  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 80724A54  38 7E 06 9C */	addi r3, r30, 0x69c
/* 80724A58  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80724A5C  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 80724A60  4B B4 B0 21 */	bl cLib_addCalc0__FPfff
/* 80724A64  38 7E 06 A4 */	addi r3, r30, 0x6a4
/* 80724A68  38 80 00 00 */	li r4, 0
/* 80724A6C  38 A0 00 01 */	li r5, 1
/* 80724A70  38 C0 00 32 */	li r6, 0x32
/* 80724A74  4B B4 BB 95 */	bl cLib_addCalcAngleS2__FPssss
/* 80724A78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80724A7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80724A80  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80724A84  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80724A88  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80724A8C  4B C2 1E 5D */	bl PSMTXTrans
/* 80724A90  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80724A94  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80724A98  80 63 00 00 */	lwz r3, 0(r3)
/* 80724A9C  A8 9E 06 8E */	lha r4, 0x68e(r30)
/* 80724AA0  4B 8E 79 3D */	bl mDoMtx_YrotS__FPA4_fs
/* 80724AA4  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80724AA8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80724AAC  41 82 00 0C */	beq lbl_80724AB8
/* 80724AB0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80724AB4  48 00 00 08 */	b lbl_80724ABC
lbl_80724AB8:
/* 80724AB8  C0 1F 00 04 */	lfs f0, 4(r31)
lbl_80724ABC:
/* 80724ABC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80724AC0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80724AC4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80724AC8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80724ACC  38 61 00 58 */	addi r3, r1, 0x58
/* 80724AD0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80724AD4  4B B4 C4 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80724AD8  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80724ADC  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80724AE0  C0 61 00 54 */	lfs f3, 0x54(r1)
/* 80724AE4  4B 8E 82 B9 */	bl transM__14mDoMtx_stack_cFfff
/* 80724AE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80724AEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80724AF0  A8 9E 06 8E */	lha r4, 0x68e(r30)
/* 80724AF4  4B 8E 79 41 */	bl mDoMtx_YrotM__FPA4_fs
/* 80724AF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80724AFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80724B00  A8 9E 06 A0 */	lha r4, 0x6a0(r30)
/* 80724B04  4B 8E 78 99 */	bl mDoMtx_XrotM__FPA4_fs
/* 80724B08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80724B0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80724B10  A8 9E 06 90 */	lha r4, 0x690(r30)
/* 80724B14  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 80724B18  7C 04 02 14 */	add r0, r4, r0
/* 80724B1C  7C 04 07 34 */	extsh r4, r0
/* 80724B20  4B 8E 79 AD */	bl mDoMtx_ZrotM__FPA4_fs
/* 80724B24  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80724B28  FC 40 08 90 */	fmr f2, f1
/* 80724B2C  FC 60 08 90 */	fmr f3, f1
/* 80724B30  4B 8E 83 09 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80724B34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80724B38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80724B3C  80 9E 06 5C */	lwz r4, 0x65c(r30)
/* 80724B40  38 84 00 24 */	addi r4, r4, 0x24
/* 80724B44  4B C2 19 6D */	bl PSMTXCopy
lbl_80724B48:
/* 80724B48  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80724B4C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80724B50  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80724B54  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80724B58  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80724B5C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80724B60  28 1D 00 00 */	cmplwi r29, 0
/* 80724B64  41 82 00 B0 */	beq lbl_80724C14
/* 80724B68  88 1D 06 72 */	lbz r0, 0x672(r29)
/* 80724B6C  7C 00 07 75 */	extsb. r0, r0
/* 80724B70  41 82 00 A4 */	beq lbl_80724C14
/* 80724B74  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80724B78  38 81 00 10 */	addi r4, r1, 0x10
/* 80724B7C  4B 8F 4E 41 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80724B80  2C 03 00 00 */	cmpwi r3, 0
/* 80724B84  41 82 00 84 */	beq lbl_80724C08
/* 80724B88  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80724B8C  28 04 00 00 */	cmplwi r4, 0
/* 80724B90  41 82 00 78 */	beq lbl_80724C08
/* 80724B94  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80724B98  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80724B9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80724BA0  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 80724BA4  4B 8E 78 39 */	bl mDoMtx_YrotS__FPA4_fs
/* 80724BA8  88 1E 04 99 */	lbz r0, 0x499(r30)
/* 80724BAC  2C 00 00 01 */	cmpwi r0, 1
/* 80724BB0  41 82 00 20 */	beq lbl_80724BD0
/* 80724BB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80724BB8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80724BBC  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80724BC0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80724BC4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80724BC8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80724BCC  48 00 00 1C */	b lbl_80724BE8
lbl_80724BD0:
/* 80724BD0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80724BD4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80724BD8  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80724BDC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80724BE0  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80724BE4  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_80724BE8:
/* 80724BE8  38 61 00 58 */	addi r3, r1, 0x58
/* 80724BEC  38 81 00 40 */	addi r4, r1, 0x40
/* 80724BF0  4B B4 C2 FD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80724BF4  38 61 00 40 */	addi r3, r1, 0x40
/* 80724BF8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80724BFC  7C 65 1B 78 */	mr r5, r3
/* 80724C00  4B C2 24 91 */	bl PSVECAdd
/* 80724C04  48 00 00 60 */	b lbl_80724C64
lbl_80724C08:
/* 80724C08  38 00 00 00 */	li r0, 0
/* 80724C0C  98 1D 06 72 */	stb r0, 0x672(r29)
/* 80724C10  48 00 00 54 */	b lbl_80724C64
lbl_80724C14:
/* 80724C14  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80724C18  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80724C1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80724C20  A8 9E 06 90 */	lha r4, 0x690(r30)
/* 80724C24  4B 8E 77 21 */	bl mDoMtx_XrotS__FPA4_fs
/* 80724C28  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80724C2C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80724C30  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80724C34  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80724C38  EC 01 00 32 */	fmuls f0, f1, f0
/* 80724C3C  FC 00 00 50 */	fneg f0, f0
/* 80724C40  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80724C44  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80724C48  38 61 00 58 */	addi r3, r1, 0x58
/* 80724C4C  38 81 00 40 */	addi r4, r1, 0x40
/* 80724C50  4B B4 C2 9D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80724C54  38 61 00 40 */	addi r3, r1, 0x40
/* 80724C58  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80724C5C  7C 65 1B 78 */	mr r5, r3
/* 80724C60  4B C2 24 31 */	bl PSVECAdd
lbl_80724C64:
/* 80724C64  38 7E 0B 5C */	addi r3, r30, 0xb5c
/* 80724C68  38 81 00 40 */	addi r4, r1, 0x40
/* 80724C6C  4B B4 A9 DD */	bl SetC__8cM3dGSphFRC4cXyz
/* 80724C70  A8 1E 06 66 */	lha r0, 0x666(r30)
/* 80724C74  2C 00 00 01 */	cmpwi r0, 1
/* 80724C78  40 82 00 1C */	bne lbl_80724C94
/* 80724C7C  38 7E 0B 5C */	addi r3, r30, 0xb5c
/* 80724C80  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80724C84  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80724C88  EC 21 00 32 */	fmuls f1, f1, f0
/* 80724C8C  4B B4 AA 7D */	bl SetR__8cM3dGSphFf
/* 80724C90  48 00 00 38 */	b lbl_80724CC8
lbl_80724C94:
/* 80724C94  2C 00 00 02 */	cmpwi r0, 2
/* 80724C98  40 82 00 1C */	bne lbl_80724CB4
/* 80724C9C  38 7E 0B 5C */	addi r3, r30, 0xb5c
/* 80724CA0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80724CA4  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80724CA8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80724CAC  4B B4 AA 5D */	bl SetR__8cM3dGSphFf
/* 80724CB0  48 00 00 18 */	b lbl_80724CC8
lbl_80724CB4:
/* 80724CB4  38 7E 0B 5C */	addi r3, r30, 0xb5c
/* 80724CB8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80724CBC  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80724CC0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80724CC4  4B B4 AA 45 */	bl SetR__8cM3dGSphFf
lbl_80724CC8:
/* 80724CC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80724CCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80724CD0  3B 83 23 3C */	addi r28, r3, 0x233c
/* 80724CD4  7F 83 E3 78 */	mr r3, r28
/* 80724CD8  38 9E 0A 38 */	addi r4, r30, 0xa38
/* 80724CDC  4B B3 FE CD */	bl Set__4cCcSFP8cCcD_Obj
/* 80724CE0  A8 1E 06 88 */	lha r0, 0x688(r30)
/* 80724CE4  2C 00 00 00 */	cmpwi r0, 0
/* 80724CE8  41 82 00 14 */	beq lbl_80724CFC
/* 80724CEC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80724CF0  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80724CF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80724CF8  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_80724CFC:
/* 80724CFC  38 7E 0A 24 */	addi r3, r30, 0xa24
/* 80724D00  38 81 00 40 */	addi r4, r1, 0x40
/* 80724D04  4B B4 A9 45 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80724D08  38 7E 0A 24 */	addi r3, r30, 0xa24
/* 80724D0C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80724D10  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80724D14  EC 21 00 32 */	fmuls f1, f1, f0
/* 80724D18  4B B4 A9 F1 */	bl SetR__8cM3dGSphFf
/* 80724D1C  7F 83 E3 78 */	mr r3, r28
/* 80724D20  38 9E 09 00 */	addi r4, r30, 0x900
/* 80724D24  4B B3 FE 85 */	bl Set__4cCcSFP8cCcD_Obj
/* 80724D28  39 61 00 90 */	addi r11, r1, 0x90
/* 80724D2C  4B C3 D4 F9 */	bl _restgpr_28
/* 80724D30  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80724D34  7C 08 03 A6 */	mtlr r0
/* 80724D38  38 21 00 90 */	addi r1, r1, 0x90
/* 80724D3C  4E 80 00 20 */	blr 
