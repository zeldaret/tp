lbl_80A5352C:
/* 80A5352C  94 21 FE 40 */	stwu r1, -0x1c0(r1)
/* 80A53530  7C 08 02 A6 */	mflr r0
/* 80A53534  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 80A53538  DB E1 01 B0 */	stfd f31, 0x1b0(r1)
/* 80A5353C  F3 E1 01 B8 */	psq_st f31, 440(r1), 0, 0 /* qr0 */
/* 80A53540  DB C1 01 A0 */	stfd f30, 0x1a0(r1)
/* 80A53544  F3 C1 01 A8 */	psq_st f30, 424(r1), 0, 0 /* qr0 */
/* 80A53548  DB A1 01 90 */	stfd f29, 0x190(r1)
/* 80A5354C  F3 A1 01 98 */	psq_st f29, 408(r1), 0, 0 /* qr0 */
/* 80A53550  DB 81 01 80 */	stfd f28, 0x180(r1)
/* 80A53554  F3 81 01 88 */	psq_st f28, 392(r1), 0, 0 /* qr0 */
/* 80A53558  DB 61 01 70 */	stfd f27, 0x170(r1)
/* 80A5355C  F3 61 01 78 */	psq_st f27, 376(r1), 0, 0 /* qr0 */
/* 80A53560  39 61 01 70 */	addi r11, r1, 0x170
/* 80A53564  4B 90 EC 50 */	b _savegpr_19
/* 80A53568  7C 7D 1B 78 */	mr r29, r3
/* 80A5356C  3C 60 80 A6 */	lis r3, lit_1109@ha
/* 80A53570  3B 43 FE 48 */	addi r26, r3, lit_1109@l
/* 80A53574  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A53578  3B 63 DE FC */	addi r27, r3, lit_4030@l
/* 80A5357C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A53580  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80A53584  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A53588  7C 99 23 78 */	mr r25, r4
/* 80A5358C  C3 FB 00 30 */	lfs f31, 0x30(r27)
/* 80A53590  C3 DB 00 6C */	lfs f30, 0x6c(r27)
/* 80A53594  3A E0 00 00 */	li r23, 0
/* 80A53598  3B E0 00 01 */	li r31, 1
/* 80A5359C  3A C0 00 01 */	li r22, 1
/* 80A535A0  3B C0 00 01 */	li r30, 1
/* 80A535A4  3A A0 08 00 */	li r21, 0x800
/* 80A535A8  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A535AC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A535B0  FC 00 00 1E */	fctiwz f0, f0
/* 80A535B4  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 80A535B8  82 81 01 2C */	lwz r20, 0x12c(r1)
/* 80A535BC  FF A0 F8 90 */	fmr f29, f31
/* 80A535C0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A535C4  7C 00 07 74 */	extsb r0, r0
/* 80A535C8  2C 00 00 07 */	cmpwi r0, 7
/* 80A535CC  41 82 00 0C */	beq lbl_80A535D8
/* 80A535D0  2C 00 00 08 */	cmpwi r0, 8
/* 80A535D4  40 82 00 08 */	bne lbl_80A535DC
lbl_80A535D8:
/* 80A535D8  C3 BB 01 54 */	lfs f29, 0x154(r27)
lbl_80A535DC:
/* 80A535DC  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80A535E0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A535E4  41 82 00 1C */	beq lbl_80A53600
/* 80A535E8  88 7D 0B D8 */	lbz r3, 0xbd8(r29)
/* 80A535EC  7C 60 07 74 */	extsb r0, r3
/* 80A535F0  2C 00 00 03 */	cmpwi r0, 3
/* 80A535F4  40 80 00 0C */	bge lbl_80A53600
/* 80A535F8  38 03 00 01 */	addi r0, r3, 1
/* 80A535FC  98 1D 0B D8 */	stb r0, 0xbd8(r29)
lbl_80A53600:
/* 80A53600  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A53604  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A53608  41 80 00 88 */	blt lbl_80A53690
/* 80A5360C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A53610  40 80 00 80 */	bge lbl_80A53690
/* 80A53614  7F A3 EB 78 */	mr r3, r29
/* 80A53618  4B FF 65 55 */	bl bomb_check__FP12npc_ks_class
/* 80A5361C  7C 78 1B 79 */	or. r24, r3, r3
/* 80A53620  40 82 00 10 */	bne lbl_80A53630
/* 80A53624  38 00 00 00 */	li r0, 0
/* 80A53628  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A5362C  48 00 01 00 */	b lbl_80A5372C
lbl_80A53630:
/* 80A53630  38 00 00 00 */	li r0, 0
/* 80A53634  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80A53638  C0 38 04 D0 */	lfs f1, 0x4d0(r24)
/* 80A5363C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A53640  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A53644  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80A53648  C0 58 04 D8 */	lfs f2, 0x4d8(r24)
/* 80A5364C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A53650  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A53654  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80A53658  4B 81 40 1C */	b cM_atan2s__Fff
/* 80A5365C  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A53660  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80A53664  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A53668  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80A5366C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A53670  EC 21 00 2A */	fadds f1, f1, f0
/* 80A53674  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80A53678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5367C  40 81 00 0C */	ble lbl_80A53688
/* 80A53680  FC 00 08 34 */	frsqrte f0, f1
/* 80A53684  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A53688:
/* 80A53688  FF 60 08 90 */	fmr f27, f1
/* 80A5368C  48 00 00 A0 */	b lbl_80A5372C
lbl_80A53690:
/* 80A53690  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A53694  41 80 00 98 */	blt lbl_80A5372C
/* 80A53698  2C 00 00 32 */	cmpwi r0, 0x32
/* 80A5369C  40 80 00 90 */	bge lbl_80A5372C
/* 80A536A0  7F A3 EB 78 */	mr r3, r29
/* 80A536A4  C0 1B 03 FC */	lfs f0, 0x3fc(r27)
/* 80A536A8  EC 20 E8 2A */	fadds f1, f0, f29
/* 80A536AC  4B FF 67 F1 */	bl enemy_check__FP12npc_ks_classf
/* 80A536B0  7C 78 1B 79 */	or. r24, r3, r3
/* 80A536B4  40 82 00 10 */	bne lbl_80A536C4
/* 80A536B8  38 00 00 00 */	li r0, 0
/* 80A536BC  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A536C0  48 00 00 6C */	b lbl_80A5372C
lbl_80A536C4:
/* 80A536C4  38 00 00 00 */	li r0, 0
/* 80A536C8  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80A536CC  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A536D0  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A536D4  40 82 00 58 */	bne lbl_80A5372C
/* 80A536D8  C0 38 04 D0 */	lfs f1, 0x4d0(r24)
/* 80A536DC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A536E0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A536E4  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80A536E8  C0 58 04 D8 */	lfs f2, 0x4d8(r24)
/* 80A536EC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A536F0  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A536F4  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80A536F8  4B 81 3F 7C */	b cM_atan2s__Fff
/* 80A536FC  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A53700  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80A53704  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A53708  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80A5370C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A53710  EC 21 00 2A */	fadds f1, f1, f0
/* 80A53714  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80A53718  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5371C  40 81 00 0C */	ble lbl_80A53728
/* 80A53720  FC 00 08 34 */	frsqrte f0, f1
/* 80A53724  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A53728:
/* 80A53728  FF 60 08 90 */	fmr f27, f1
lbl_80A5372C:
/* 80A5372C  38 7A 00 70 */	addi r3, r26, 0x70
/* 80A53730  C3 83 00 0C */	lfs f28, 0xc(r3)
/* 80A53734  4B FF 59 21 */	bl checkDoorDemo__Fv
/* 80A53738  2C 03 00 00 */	cmpwi r3, 0
/* 80A5373C  41 82 00 0C */	beq lbl_80A53748
/* 80A53740  C0 1B 00 D8 */	lfs f0, 0xd8(r27)
/* 80A53744  EF 9C 00 28 */	fsubs f28, f28, f0
lbl_80A53748:
/* 80A53748  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A5374C  28 00 00 33 */	cmplwi r0, 0x33
/* 80A53750  41 81 0A FC */	bgt lbl_80A5424C
/* 80A53754  3C 60 80 A6 */	lis r3, lit_8135@ha
/* 80A53758  38 63 E9 54 */	addi r3, r3, lit_8135@l
/* 80A5375C  54 00 10 3A */	slwi r0, r0, 2
/* 80A53760  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A53764  7C 09 03 A6 */	mtctr r0
/* 80A53768  4E 80 04 20 */	bctr 
lbl_80A5376C:
/* 80A5376C  38 00 00 01 */	li r0, 1
/* 80A53770  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A53774  7F A3 EB 78 */	mr r3, r29
/* 80A53778  38 80 00 33 */	li r4, 0x33
/* 80A5377C  C0 3B 00 6C */	lfs f1, 0x6c(r27)
/* 80A53780  38 A0 00 02 */	li r5, 2
/* 80A53784  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A53788  4B FF 5A 1D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A5378C  C0 3B 00 20 */	lfs f1, 0x20(r27)
/* 80A53790  4B 81 41 C4 */	b cM_rndF__Ff
/* 80A53794  C0 1B 00 20 */	lfs f0, 0x20(r27)
/* 80A53798  EC 00 08 2A */	fadds f0, f0, f1
/* 80A5379C  FC 00 00 1E */	fctiwz f0, f0
/* 80A537A0  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 80A537A4  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 80A537A8  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A537AC  7F A3 EB 78 */	mr r3, r29
/* 80A537B0  4B 5C 61 14 */	b fopAcM_setStageLayer__FPv
/* 80A537B4  38 00 00 00 */	li r0, 0
/* 80A537B8  B0 1D 05 62 */	sth r0, 0x562(r29)
lbl_80A537BC:
/* 80A537BC  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A537C0  2C 00 00 00 */	cmpwi r0, 0
/* 80A537C4  40 82 00 B4 */	bne lbl_80A53878
/* 80A537C8  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 80A537CC  4B 81 41 88 */	b cM_rndF__Ff
/* 80A537D0  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80A537D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A537D8  40 80 00 54 */	bge lbl_80A5382C
/* 80A537DC  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A537E0  2C 00 00 33 */	cmpwi r0, 0x33
/* 80A537E4  41 82 00 94 */	beq lbl_80A53878
/* 80A537E8  7F A3 EB 78 */	mr r3, r29
/* 80A537EC  38 80 00 33 */	li r4, 0x33
/* 80A537F0  C0 3B 00 6C */	lfs f1, 0x6c(r27)
/* 80A537F4  38 A0 00 02 */	li r5, 2
/* 80A537F8  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A537FC  4B FF 59 A9 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A53800  C0 3B 00 20 */	lfs f1, 0x20(r27)
/* 80A53804  4B 81 41 50 */	b cM_rndF__Ff
/* 80A53808  C0 1B 00 D4 */	lfs f0, 0xd4(r27)
/* 80A5380C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A53810  FC 00 00 1E */	fctiwz f0, f0
/* 80A53814  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 80A53818  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 80A5381C  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A53820  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050014@ha */
/* 80A53824  3A E3 00 14 */	addi r23, r3, 0x0014 /* 0x00050014@l */
/* 80A53828  48 00 00 50 */	b lbl_80A53878
lbl_80A5382C:
/* 80A5382C  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A53830  2C 00 00 35 */	cmpwi r0, 0x35
/* 80A53834  41 82 00 44 */	beq lbl_80A53878
/* 80A53838  7F A3 EB 78 */	mr r3, r29
/* 80A5383C  38 80 00 35 */	li r4, 0x35
/* 80A53840  C0 3B 04 10 */	lfs f1, 0x410(r27)
/* 80A53844  38 A0 00 02 */	li r5, 2
/* 80A53848  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A5384C  4B FF 59 59 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A53850  C0 3B 00 C0 */	lfs f1, 0xc0(r27)
/* 80A53854  4B 81 41 00 */	b cM_rndF__Ff
/* 80A53858  C0 1B 00 84 */	lfs f0, 0x84(r27)
/* 80A5385C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A53860  FC 00 00 1E */	fctiwz f0, f0
/* 80A53864  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 80A53868  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 80A5386C  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A53870  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050014@ha */
/* 80A53874  3A E3 00 14 */	addi r23, r3, 0x0014 /* 0x00050014@l */
lbl_80A53878:
/* 80A53878  A8 1D 05 F2 */	lha r0, 0x5f2(r29)
/* 80A5387C  2C 00 00 00 */	cmpwi r0, 0
/* 80A53880  40 82 09 CC */	bne lbl_80A5424C
/* 80A53884  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A53888  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 80A5388C  EC 00 E0 2A */	fadds f0, f0, f28
/* 80A53890  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A53894  40 81 09 B8 */	ble lbl_80A5424C
/* 80A53898  7F A3 EB 78 */	mr r3, r29
/* 80A5389C  38 80 00 1C */	li r4, 0x1c
/* 80A538A0  C0 3B 00 6C */	lfs f1, 0x6c(r27)
/* 80A538A4  38 A0 00 02 */	li r5, 2
/* 80A538A8  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A538AC  4B FF 58 F9 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A538B0  38 00 00 02 */	li r0, 2
/* 80A538B4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A538B8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A538BC  3A E3 00 16 */	addi r23, r3, 0x0016 /* 0x00050016@l */
/* 80A538C0  48 00 09 8C */	b lbl_80A5424C
lbl_80A538C4:
/* 80A538C4  38 7A 00 70 */	addi r3, r26, 0x70
/* 80A538C8  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 80A538CC  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A538D0  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 80A538D4  EC 1C 00 28 */	fsubs f0, f28, f0
/* 80A538D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A538DC  40 80 00 10 */	bge lbl_80A538EC
/* 80A538E0  38 00 00 00 */	li r0, 0
/* 80A538E4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A538E8  48 00 00 3C */	b lbl_80A53924
lbl_80A538EC:
/* 80A538EC  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80A538F0  EC 00 E0 2A */	fadds f0, f0, f28
/* 80A538F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A538F8  40 81 00 2C */	ble lbl_80A53924
/* 80A538FC  7F A3 EB 78 */	mr r3, r29
/* 80A53900  38 80 00 1A */	li r4, 0x1a
/* 80A53904  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80A53908  38 A0 00 02 */	li r5, 2
/* 80A5390C  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A53910  4B FF 58 95 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A53914  38 00 00 03 */	li r0, 3
/* 80A53918  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A5391C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050015@ha */
/* 80A53920  3A E3 00 15 */	addi r23, r3, 0x0015 /* 0x00050015@l */
lbl_80A53924:
/* 80A53924  80 7D 06 AC */	lwz r3, 0x6ac(r29)
/* 80A53928  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80A5392C  41 82 09 20 */	beq lbl_80A5424C
/* 80A53930  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80A53934  41 82 09 18 */	beq lbl_80A5424C
/* 80A53938  7F A3 EB 78 */	mr r3, r29
/* 80A5393C  7F 24 CB 78 */	mr r4, r25
/* 80A53940  4B FF 57 49 */	bl otherBgCheck__FP10fopAc_ac_cP10fopAc_ac_c
/* 80A53944  2C 03 00 00 */	cmpwi r3, 0
/* 80A53948  40 82 09 04 */	bne lbl_80A5424C
/* 80A5394C  C0 1B 00 C0 */	lfs f0, 0xc0(r27)
/* 80A53950  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A53954  48 00 08 F8 */	b lbl_80A5424C
lbl_80A53958:
/* 80A53958  38 7A 00 70 */	addi r3, r26, 0x70
/* 80A5395C  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 80A53960  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A53964  38 63 00 0C */	addi r3, r3, 0xc
/* 80A53968  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 80A5396C  4B 8D 4A C0 */	b checkPass__12J3DFrameCtrlFf
/* 80A53970  2C 03 00 00 */	cmpwi r3, 0
/* 80A53974  41 82 00 0C */	beq lbl_80A53980
/* 80A53978  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050015@ha */
/* 80A5397C  3A E3 00 15 */	addi r23, r3, 0x0015 /* 0x00050015@l */
lbl_80A53980:
/* 80A53980  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A53984  C0 1B 04 14 */	lfs f0, 0x414(r27)
/* 80A53988  EC 00 E0 2A */	fadds f0, f0, f28
/* 80A5398C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A53990  40 80 00 24 */	bge lbl_80A539B4
/* 80A53994  7F A3 EB 78 */	mr r3, r29
/* 80A53998  38 80 00 1C */	li r4, 0x1c
/* 80A5399C  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80A539A0  38 A0 00 02 */	li r5, 2
/* 80A539A4  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A539A8  4B FF 57 FD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A539AC  38 00 00 02 */	li r0, 2
/* 80A539B0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A539B4:
/* 80A539B4  80 7D 06 AC */	lwz r3, 0x6ac(r29)
/* 80A539B8  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80A539BC  41 82 08 90 */	beq lbl_80A5424C
/* 80A539C0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80A539C4  41 82 08 88 */	beq lbl_80A5424C
/* 80A539C8  7F A3 EB 78 */	mr r3, r29
/* 80A539CC  7F 24 CB 78 */	mr r4, r25
/* 80A539D0  4B FF 56 B9 */	bl otherBgCheck__FP10fopAc_ac_cP10fopAc_ac_c
/* 80A539D4  2C 03 00 00 */	cmpwi r3, 0
/* 80A539D8  40 82 08 74 */	bne lbl_80A5424C
/* 80A539DC  C0 1B 00 C0 */	lfs f0, 0xc0(r27)
/* 80A539E0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A539E4  48 00 08 68 */	b lbl_80A5424C
lbl_80A539E8:
/* 80A539E8  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A539EC  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A539F0  2C 14 00 0B */	cmpwi r20, 0xb
/* 80A539F4  41 80 08 58 */	blt lbl_80A5424C
/* 80A539F8  38 00 00 00 */	li r0, 0
/* 80A539FC  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A53A00  48 00 08 4C */	b lbl_80A5424C
lbl_80A53A04:
/* 80A53A04  7F A3 EB 78 */	mr r3, r29
/* 80A53A08  38 80 00 2F */	li r4, 0x2f
/* 80A53A0C  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80A53A10  38 A0 00 02 */	li r5, 2
/* 80A53A14  C0 5D 05 D4 */	lfs f2, 0x5d4(r29)
/* 80A53A18  4B FF 57 8D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A53A1C  38 00 00 08 */	li r0, 8
/* 80A53A20  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A53A24:
/* 80A53A24  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A53A28  38 63 00 0C */	addi r3, r3, 0xc
/* 80A53A2C  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 80A53A30  4B 8D 49 FC */	b checkPass__12J3DFrameCtrlFf
/* 80A53A34  2C 03 00 00 */	cmpwi r3, 0
/* 80A53A38  41 82 00 30 */	beq lbl_80A53A68
/* 80A53A3C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060042@ha */
/* 80A53A40  38 03 00 42 */	addi r0, r3, 0x0042 /* 0x00060042@l */
/* 80A53A44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A53A48  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A53A4C  38 81 00 34 */	addi r4, r1, 0x34
/* 80A53A50  38 A0 00 00 */	li r5, 0
/* 80A53A54  38 C0 FF FF */	li r6, -1
/* 80A53A58  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A53A5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A53A60  7D 89 03 A6 */	mtctr r12
/* 80A53A64  4E 80 04 21 */	bctrl 
lbl_80A53A68:
/* 80A53A68  3B C0 00 00 */	li r30, 0
/* 80A53A6C  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80A53A70  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80A53A74  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80A53A78  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 80A53A7C  FC 40 08 90 */	fmr f2, f1
/* 80A53A80  4B 81 C0 00 */	b cLib_addCalc0__FPfff
/* 80A53A84  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80A53A88  C0 3D 06 3C */	lfs f1, 0x63c(r29)
/* 80A53A8C  C0 5B 00 FC */	lfs f2, 0xfc(r27)
/* 80A53A90  C0 7B 00 08 */	lfs f3, 8(r27)
/* 80A53A94  4B 81 BF A8 */	b cLib_addCalc2__FPffff
/* 80A53A98  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A53A9C  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 80A53AA0  EC 00 E0 2A */	fadds f0, f0, f28
/* 80A53AA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A53AA8  40 81 00 0C */	ble lbl_80A53AB4
/* 80A53AAC  C3 FB 00 6C */	lfs f31, 0x6c(r27)
/* 80A53AB0  48 00 00 08 */	b lbl_80A53AB8
lbl_80A53AB4:
/* 80A53AB4  C3 FB 00 30 */	lfs f31, 0x30(r27)
lbl_80A53AB8:
/* 80A53AB8  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 80A53ABC  C0 3B 00 2C */	lfs f1, 0x2c(r27)
/* 80A53AC0  C0 7B 00 FC */	lfs f3, 0xfc(r27)
/* 80A53AC4  EC 03 07 F2 */	fmuls f0, f3, f31
/* 80A53AC8  EC 21 00 2A */	fadds f1, f1, f0
/* 80A53ACC  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A53AD0  4B 81 BF 6C */	b cLib_addCalc2__FPffff
/* 80A53AD4  C0 1D 05 D4 */	lfs f0, 0x5d4(r29)
/* 80A53AD8  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A53ADC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A53AE0  C3 DB 00 FC */	lfs f30, 0xfc(r27)
/* 80A53AE4  3A A0 01 00 */	li r21, 0x100
/* 80A53AE8  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A53AEC  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A53AF0  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A53AF4  2C 00 00 00 */	cmpwi r0, 0
/* 80A53AF8  40 82 07 54 */	bne lbl_80A5424C
/* 80A53AFC  C0 3B 00 C0 */	lfs f1, 0xc0(r27)
/* 80A53B00  4B 81 3E 54 */	b cM_rndF__Ff
/* 80A53B04  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 80A53B08  EC 00 08 2A */	fadds f0, f0, f1
/* 80A53B0C  FC 00 00 1E */	fctiwz f0, f0
/* 80A53B10  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 80A53B14  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 80A53B18  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A53B1C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050014@ha */
/* 80A53B20  3A E3 00 14 */	addi r23, r3, 0x0014 /* 0x00050014@l */
/* 80A53B24  48 00 07 28 */	b lbl_80A5424C
lbl_80A53B28:
/* 80A53B28  C0 3B 00 C0 */	lfs f1, 0xc0(r27)
/* 80A53B2C  4B 81 3E 28 */	b cM_rndF__Ff
/* 80A53B30  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 80A53B34  EC 00 08 2A */	fadds f0, f0, f1
/* 80A53B38  FC 00 00 1E */	fctiwz f0, f0
/* 80A53B3C  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 80A53B40  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 80A53B44  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A53B48  38 00 00 0B */	li r0, 0xb
/* 80A53B4C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A53B50  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A53B54  B0 1D 08 FE */	sth r0, 0x8fe(r29)
lbl_80A53B58:
/* 80A53B58  38 00 00 01 */	li r0, 1
/* 80A53B5C  98 1D 05 FC */	stb r0, 0x5fc(r29)
/* 80A53B60  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A53B64  2C 00 00 00 */	cmpwi r0, 0
/* 80A53B68  40 82 06 E4 */	bne lbl_80A5424C
/* 80A53B6C  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 80A53B70  4B 81 3D E4 */	b cM_rndF__Ff
/* 80A53B74  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80A53B78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A53B7C  40 80 00 20 */	bge lbl_80A53B9C
/* 80A53B80  7F A3 EB 78 */	mr r3, r29
/* 80A53B84  38 80 00 1E */	li r4, 0x1e
/* 80A53B88  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80A53B8C  38 A0 00 00 */	li r5, 0
/* 80A53B90  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A53B94  4B FF 56 11 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A53B98  48 00 00 1C */	b lbl_80A53BB4
lbl_80A53B9C:
/* 80A53B9C  7F A3 EB 78 */	mr r3, r29
/* 80A53BA0  38 80 00 05 */	li r4, 5
/* 80A53BA4  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80A53BA8  38 A0 00 00 */	li r5, 0
/* 80A53BAC  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A53BB0  4B FF 55 F5 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A53BB4:
/* 80A53BB4  38 00 00 0C */	li r0, 0xc
/* 80A53BB8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A53BBC  48 00 06 90 */	b lbl_80A5424C
lbl_80A53BC0:
/* 80A53BC0  38 80 00 01 */	li r4, 1
/* 80A53BC4  98 9D 05 FC */	stb r4, 0x5fc(r29)
/* 80A53BC8  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A53BCC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A53BD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A53BD4  40 82 00 18 */	bne lbl_80A53BEC
/* 80A53BD8  C0 3B 00 30 */	lfs f1, 0x30(r27)
/* 80A53BDC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A53BE0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A53BE4  41 82 00 08 */	beq lbl_80A53BEC
/* 80A53BE8  38 80 00 00 */	li r4, 0
lbl_80A53BEC:
/* 80A53BEC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A53BF0  41 82 06 5C */	beq lbl_80A5424C
/* 80A53BF4  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 80A53BF8  4B 81 3D 5C */	b cM_rndF__Ff
/* 80A53BFC  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80A53C00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A53C04  40 80 00 20 */	bge lbl_80A53C24
/* 80A53C08  7F A3 EB 78 */	mr r3, r29
/* 80A53C0C  38 80 00 1E */	li r4, 0x1e
/* 80A53C10  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80A53C14  38 A0 00 00 */	li r5, 0
/* 80A53C18  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A53C1C  4B FF 55 89 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A53C20  48 00 00 1C */	b lbl_80A53C3C
lbl_80A53C24:
/* 80A53C24  7F A3 EB 78 */	mr r3, r29
/* 80A53C28  38 80 00 05 */	li r4, 5
/* 80A53C2C  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80A53C30  38 A0 00 00 */	li r5, 0
/* 80A53C34  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A53C38  4B FF 55 6D */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A53C3C:
/* 80A53C3C  38 00 00 0D */	li r0, 0xd
/* 80A53C40  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A53C44  48 00 06 08 */	b lbl_80A5424C
lbl_80A53C48:
/* 80A53C48  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A53C4C  38 80 00 01 */	li r4, 1
/* 80A53C50  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A53C54  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A53C58  40 82 00 18 */	bne lbl_80A53C70
/* 80A53C5C  C0 3B 00 30 */	lfs f1, 0x30(r27)
/* 80A53C60  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A53C64  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A53C68  41 82 00 08 */	beq lbl_80A53C70
/* 80A53C6C  38 80 00 00 */	li r4, 0
lbl_80A53C70:
/* 80A53C70  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A53C74  41 82 05 D8 */	beq lbl_80A5424C
/* 80A53C78  38 00 00 00 */	li r0, 0
/* 80A53C7C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A53C80  48 00 05 CC */	b lbl_80A5424C
lbl_80A53C84:
/* 80A53C84  3A C0 00 00 */	li r22, 0
/* 80A53C88  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A53C8C  2C 00 00 00 */	cmpwi r0, 0
/* 80A53C90  40 82 05 BC */	bne lbl_80A5424C
/* 80A53C94  38 00 00 C8 */	li r0, 0xc8
/* 80A53C98  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80A53C9C  38 00 00 00 */	li r0, 0
/* 80A53CA0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A53CA4  98 1D 0A EC */	stb r0, 0xaec(r29)
/* 80A53CA8  38 60 00 01 */	li r3, 1
/* 80A53CAC  48 00 0B F8 */	b lbl_80A548A4
lbl_80A53CB0:
/* 80A53CB0  38 7A 00 70 */	addi r3, r26, 0x70
/* 80A53CB4  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 80A53CB8  A8 7D 08 FE */	lha r3, 0x8fe(r29)
/* 80A53CBC  3C 63 00 01 */	addis r3, r3, 1
/* 80A53CC0  38 03 80 00 */	addi r0, r3, -32768
/* 80A53CC4  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A53CC8  C0 1B 00 70 */	lfs f0, 0x70(r27)
/* 80A53CCC  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80A53CD0  40 81 05 7C */	ble lbl_80A5424C
/* 80A53CD4  38 00 00 1F */	li r0, 0x1f
/* 80A53CD8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A53CDC  7F A3 EB 78 */	mr r3, r29
/* 80A53CE0  38 80 00 33 */	li r4, 0x33
/* 80A53CE4  C0 3B 00 6C */	lfs f1, 0x6c(r27)
/* 80A53CE8  38 A0 00 02 */	li r5, 2
/* 80A53CEC  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A53CF0  4B FF 54 B5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A53CF4  48 00 05 58 */	b lbl_80A5424C
lbl_80A53CF8:
/* 80A53CF8  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A53CFC  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A53D00  28 18 00 00 */	cmplwi r24, 0
/* 80A53D04  41 82 00 0C */	beq lbl_80A53D10
/* 80A53D08  80 18 00 04 */	lwz r0, 4(r24)
/* 80A53D0C  48 00 00 08 */	b lbl_80A53D14
lbl_80A53D10:
/* 80A53D10  38 00 FF FF */	li r0, -1
lbl_80A53D14:
/* 80A53D14  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A53D18  38 00 00 01 */	li r0, 1
/* 80A53D1C  98 1D 05 FC */	stb r0, 0x5fc(r29)
/* 80A53D20  C0 1B 00 68 */	lfs f0, 0x68(r27)
/* 80A53D24  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80A53D28  40 80 05 24 */	bge lbl_80A5424C
/* 80A53D2C  38 00 00 1E */	li r0, 0x1e
/* 80A53D30  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A53D34  7F A3 EB 78 */	mr r3, r29
/* 80A53D38  38 80 00 1A */	li r4, 0x1a
/* 80A53D3C  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80A53D40  38 A0 00 02 */	li r5, 2
/* 80A53D44  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A53D48  4B FF 54 5D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A53D4C  48 00 05 00 */	b lbl_80A5424C
lbl_80A53D50:
/* 80A53D50  7F A3 EB 78 */	mr r3, r29
/* 80A53D54  38 80 00 27 */	li r4, 0x27
/* 80A53D58  C0 3B 00 6C */	lfs f1, 0x6c(r27)
/* 80A53D5C  38 A0 00 02 */	li r5, 2
/* 80A53D60  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A53D64  4B FF 54 41 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A53D68  38 00 00 29 */	li r0, 0x29
/* 80A53D6C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A53D70  C0 3B 00 D4 */	lfs f1, 0xd4(r27)
/* 80A53D74  4B 81 3B E0 */	b cM_rndF__Ff
/* 80A53D78  C0 1B 00 20 */	lfs f0, 0x20(r27)
/* 80A53D7C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A53D80  FC 00 00 1E */	fctiwz f0, f0
/* 80A53D84  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 80A53D88  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 80A53D8C  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A53D90  A8 7D 08 FE */	lha r3, 0x8fe(r29)
/* 80A53D94  3C 63 00 01 */	addis r3, r3, 1
/* 80A53D98  38 03 80 00 */	addi r0, r3, -32768
/* 80A53D9C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A53DA0  48 00 04 AC */	b lbl_80A5424C
lbl_80A53DA4:
/* 80A53DA4  3A A0 10 00 */	li r21, 0x1000
/* 80A53DA8  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A53DAC  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A53DB0  41 82 00 2C */	beq lbl_80A53DDC
/* 80A53DB4  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A53DB8  40 82 00 0C */	bne lbl_80A53DC4
/* 80A53DBC  2C 14 00 07 */	cmpwi r20, 7
/* 80A53DC0  41 80 00 1C */	blt lbl_80A53DDC
lbl_80A53DC4:
/* 80A53DC4  2C 14 00 28 */	cmpwi r20, 0x28
/* 80A53DC8  40 81 00 0C */	ble lbl_80A53DD4
/* 80A53DCC  2C 14 00 30 */	cmpwi r20, 0x30
/* 80A53DD0  41 80 00 0C */	blt lbl_80A53DDC
lbl_80A53DD4:
/* 80A53DD4  2C 14 00 41 */	cmpwi r20, 0x41
/* 80A53DD8  40 81 00 0C */	ble lbl_80A53DE4
lbl_80A53DDC:
/* 80A53DDC  38 00 00 04 */	li r0, 4
/* 80A53DE0  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
lbl_80A53DE4:
/* 80A53DE4  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A53DE8  2C 00 00 00 */	cmpwi r0, 0
/* 80A53DEC  40 82 00 28 */	bne lbl_80A53E14
/* 80A53DF0  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A53DF4  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A53DF8  40 82 00 1C */	bne lbl_80A53E14
/* 80A53DFC  7F A3 EB 78 */	mr r3, r29
/* 80A53E00  38 80 00 2B */	li r4, 0x2b
/* 80A53E04  C0 3B 00 6C */	lfs f1, 0x6c(r27)
/* 80A53E08  38 A0 00 00 */	li r5, 0
/* 80A53E0C  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A53E10  4B FF 53 95 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A53E14:
/* 80A53E14  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A53E18  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A53E1C  40 82 04 30 */	bne lbl_80A5424C
/* 80A53E20  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A53E24  38 80 00 01 */	li r4, 1
/* 80A53E28  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A53E2C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A53E30  40 82 00 18 */	bne lbl_80A53E48
/* 80A53E34  C0 3B 00 30 */	lfs f1, 0x30(r27)
/* 80A53E38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A53E3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A53E40  41 82 00 08 */	beq lbl_80A53E48
/* 80A53E44  38 80 00 00 */	li r4, 0
lbl_80A53E48:
/* 80A53E48  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A53E4C  41 82 04 00 */	beq lbl_80A5424C
/* 80A53E50  38 00 00 28 */	li r0, 0x28
/* 80A53E54  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A53E58  48 00 03 F4 */	b lbl_80A5424C
lbl_80A53E5C:
/* 80A53E5C  3B E0 00 02 */	li r31, 2
/* 80A53E60  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80A53E64  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A53E68  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A53E6C  2C 00 00 00 */	cmpwi r0, 0
/* 80A53E70  40 82 01 5C */	bne lbl_80A53FCC
/* 80A53E74  82 9C 5D AC */	lwz r20, 0x5dac(r28)
/* 80A53E78  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A53E7C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A53E80  80 63 00 00 */	lwz r3, 0(r3)
/* 80A53E84  A8 94 04 E6 */	lha r4, 0x4e6(r20)
/* 80A53E88  4B 5B 85 54 */	b mDoMtx_YrotS__FPA4_fs
/* 80A53E8C  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 80A53E90  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A53E94  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80A53E98  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80A53E9C  3B 00 00 00 */	li r24, 0
/* 80A53EA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A53EA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A53EA8  3A 63 0F 38 */	addi r19, r3, 0xf38
/* 80A53EAC  3C 60 80 A6 */	lis r3, yuka_jump_x@ha
/* 80A53EB0  3B 23 E9 48 */	addi r25, r3, yuka_jump_x@l
/* 80A53EB4  C3 FB 00 34 */	lfs f31, 0x34(r27)
/* 80A53EB8  C3 9B 00 10 */	lfs f28, 0x10(r27)
lbl_80A53EBC:
/* 80A53EBC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80A53EC0  4B 62 36 BC */	b __ct__11dBgS_GndChkFv
/* 80A53EC4  C0 19 00 00 */	lfs f0, 0(r25)
/* 80A53EC8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A53ECC  38 61 00 74 */	addi r3, r1, 0x74
/* 80A53ED0  38 81 00 68 */	addi r4, r1, 0x68
/* 80A53ED4  4B 81 D0 18 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A53ED8  38 61 00 68 */	addi r3, r1, 0x68
/* 80A53EDC  38 94 04 D0 */	addi r4, r20, 0x4d0
/* 80A53EE0  7C 65 1B 78 */	mr r5, r3
/* 80A53EE4  4B 8F 31 AC */	b PSVECAdd
/* 80A53EE8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80A53EEC  38 81 00 68 */	addi r4, r1, 0x68
/* 80A53EF0  4B 81 3E 38 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80A53EF4  7E 63 9B 78 */	mr r3, r19
/* 80A53EF8  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80A53EFC  4B 62 05 A4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80A53F00  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80A53F04  C0 19 00 00 */	lfs f0, 0(r25)
/* 80A53F08  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80A53F0C  D0 19 00 00 */	stfs f0, 0(r25)
/* 80A53F10  FC 20 08 18 */	frsp f1, f1
/* 80A53F14  C0 14 04 D4 */	lfs f0, 0x4d4(r20)
/* 80A53F18  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A53F1C  FC 00 02 10 */	fabs f0, f0
/* 80A53F20  FC 00 00 18 */	frsp f0, f0
/* 80A53F24  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 80A53F28  40 80 00 7C */	bge lbl_80A53FA4
/* 80A53F2C  38 00 00 33 */	li r0, 0x33
/* 80A53F30  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A53F34  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80A53F38  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A53F3C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80A53F40  D0 1D 08 F4 */	stfs f0, 0x8f4(r29)
/* 80A53F44  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80A53F48  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A53F4C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A53F50  D0 1D 09 10 */	stfs f0, 0x910(r29)
/* 80A53F54  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A53F58  D0 1D 09 14 */	stfs f0, 0x914(r29)
/* 80A53F5C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A53F60  D0 1D 09 18 */	stfs f0, 0x918(r29)
/* 80A53F64  C0 1D 08 F0 */	lfs f0, 0x8f0(r29)
/* 80A53F68  D0 1D 09 1C */	stfs f0, 0x91c(r29)
/* 80A53F6C  C0 1D 08 F4 */	lfs f0, 0x8f4(r29)
/* 80A53F70  D0 1D 09 20 */	stfs f0, 0x920(r29)
/* 80A53F74  C0 1D 08 F8 */	lfs f0, 0x8f8(r29)
/* 80A53F78  D0 1D 09 24 */	stfs f0, 0x924(r29)
/* 80A53F7C  7F A3 EB 78 */	mr r3, r29
/* 80A53F80  38 80 00 20 */	li r4, 0x20
/* 80A53F84  C0 3B 00 94 */	lfs f1, 0x94(r27)
/* 80A53F88  38 A0 00 00 */	li r5, 0
/* 80A53F8C  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A53F90  4B FF 52 15 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A53F94  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80A53F98  38 80 FF FF */	li r4, -1
/* 80A53F9C  4B 62 36 54 */	b __dt__11dBgS_GndChkFv
/* 80A53FA0  48 00 00 1C */	b lbl_80A53FBC
lbl_80A53FA4:
/* 80A53FA4  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80A53FA8  38 80 FF FF */	li r4, -1
/* 80A53FAC  4B 62 36 44 */	b __dt__11dBgS_GndChkFv
/* 80A53FB0  3B 18 00 01 */	addi r24, r24, 1
/* 80A53FB4  2C 18 00 02 */	cmpwi r24, 2
/* 80A53FB8  41 80 FF 04 */	blt lbl_80A53EBC
lbl_80A53FBC:
/* 80A53FBC  2C 18 00 02 */	cmpwi r24, 2
/* 80A53FC0  40 82 00 0C */	bne lbl_80A53FCC
/* 80A53FC4  38 00 00 00 */	li r0, 0
/* 80A53FC8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A53FCC:
/* 80A53FCC  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A53FD0  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A53FD4  C3 FB 04 18 */	lfs f31, 0x418(r27)
/* 80A53FD8  48 00 02 74 */	b lbl_80A5424C
lbl_80A53FDC:
/* 80A53FDC  3B E0 00 02 */	li r31, 2
/* 80A53FE0  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A53FE4  2C 00 00 20 */	cmpwi r0, 0x20
/* 80A53FE8  40 82 00 B0 */	bne lbl_80A54098
/* 80A53FEC  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A53FF0  38 80 00 01 */	li r4, 1
/* 80A53FF4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A53FF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A53FFC  40 82 00 18 */	bne lbl_80A54014
/* 80A54000  C0 3B 00 30 */	lfs f1, 0x30(r27)
/* 80A54004  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A54008  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A5400C  41 82 00 08 */	beq lbl_80A54014
/* 80A54010  38 80 00 00 */	li r4, 0
lbl_80A54014:
/* 80A54014  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A54018  41 82 00 80 */	beq lbl_80A54098
/* 80A5401C  7F A3 EB 78 */	mr r3, r29
/* 80A54020  38 80 00 21 */	li r4, 0x21
/* 80A54024  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 80A54028  38 A0 00 00 */	li r5, 0
/* 80A5402C  FC 40 08 90 */	fmr f2, f1
/* 80A54030  4B FF 51 75 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A54034  C0 1B 00 84 */	lfs f0, 0x84(r27)
/* 80A54038  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A5403C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A54040  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A54044  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A54048  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A5404C  38 81 00 30 */	addi r4, r1, 0x30
/* 80A54050  38 A0 FF FF */	li r5, -1
/* 80A54054  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A54058  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5405C  7D 89 03 A6 */	mtctr r12
/* 80A54060  4E 80 04 21 */	bctrl 
/* 80A54064  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A54068  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A5406C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A54070  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A54074  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A54078  38 A0 00 00 */	li r5, 0
/* 80A5407C  38 C0 FF FF */	li r6, -1
/* 80A54080  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A54084  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A54088  7D 89 03 A6 */	mtctr r12
/* 80A5408C  4E 80 04 21 */	bctrl 
/* 80A54090  38 00 00 01 */	li r0, 1
/* 80A54094  98 1D 0B E0 */	stb r0, 0xbe0(r29)
lbl_80A54098:
/* 80A54098  38 61 00 44 */	addi r3, r1, 0x44
/* 80A5409C  38 9D 08 F0 */	addi r4, r29, 0x8f0
/* 80A540A0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80A540A4  4B 81 2A 90 */	b __mi__4cXyzCFRC3Vec
/* 80A540A8  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80A540AC  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80A540B0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80A540B4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A540B8  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80A540BC  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80A540C0  4B 81 35 B4 */	b cM_atan2s__Fff
/* 80A540C4  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A540C8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80A540CC  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A540D0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80A540D4  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A540D8  EC 41 00 2A */	fadds f2, f1, f0
/* 80A540DC  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80A540E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A540E4  40 81 00 0C */	ble lbl_80A540F0
/* 80A540E8  FC 00 10 34 */	frsqrte f0, f2
/* 80A540EC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A540F0:
/* 80A540F0  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80A540F4  4B 81 35 80 */	b cM_atan2s__Fff
/* 80A540F8  7C 03 00 D0 */	neg r0, r3
/* 80A540FC  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80A54100  3A A0 20 00 */	li r21, 0x2000
/* 80A54104  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80A54108  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80A5410C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A54110  40 81 00 0C */	ble lbl_80A5411C
/* 80A54114  38 00 00 01 */	li r0, 1
/* 80A54118  98 1D 09 0C */	stb r0, 0x90c(r29)
lbl_80A5411C:
/* 80A5411C  38 61 00 74 */	addi r3, r1, 0x74
/* 80A54120  4B 8F 30 18 */	b PSVECSquareMag
/* 80A54124  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80A54128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5412C  40 81 00 58 */	ble lbl_80A54184
/* 80A54130  FC 00 08 34 */	frsqrte f0, f1
/* 80A54134  C8 9B 00 50 */	lfd f4, 0x50(r27)
/* 80A54138  FC 44 00 32 */	fmul f2, f4, f0
/* 80A5413C  C8 7B 00 58 */	lfd f3, 0x58(r27)
/* 80A54140  FC 00 00 32 */	fmul f0, f0, f0
/* 80A54144  FC 01 00 32 */	fmul f0, f1, f0
/* 80A54148  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5414C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A54150  FC 44 00 32 */	fmul f2, f4, f0
/* 80A54154  FC 00 00 32 */	fmul f0, f0, f0
/* 80A54158  FC 01 00 32 */	fmul f0, f1, f0
/* 80A5415C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A54160  FC 02 00 32 */	fmul f0, f2, f0
/* 80A54164  FC 44 00 32 */	fmul f2, f4, f0
/* 80A54168  FC 00 00 32 */	fmul f0, f0, f0
/* 80A5416C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A54170  FC 03 00 28 */	fsub f0, f3, f0
/* 80A54174  FC 02 00 32 */	fmul f0, f2, f0
/* 80A54178  FC 21 00 32 */	fmul f1, f1, f0
/* 80A5417C  FC 20 08 18 */	frsp f1, f1
/* 80A54180  48 00 00 88 */	b lbl_80A54208
lbl_80A54184:
/* 80A54184  C8 1B 00 60 */	lfd f0, 0x60(r27)
/* 80A54188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5418C  40 80 00 10 */	bge lbl_80A5419C
/* 80A54190  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A54194  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A54198  48 00 00 70 */	b lbl_80A54208
lbl_80A5419C:
/* 80A5419C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80A541A0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80A541A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A541A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A541AC  7C 03 00 00 */	cmpw r3, r0
/* 80A541B0  41 82 00 14 */	beq lbl_80A541C4
/* 80A541B4  40 80 00 40 */	bge lbl_80A541F4
/* 80A541B8  2C 03 00 00 */	cmpwi r3, 0
/* 80A541BC  41 82 00 20 */	beq lbl_80A541DC
/* 80A541C0  48 00 00 34 */	b lbl_80A541F4
lbl_80A541C4:
/* 80A541C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A541C8  41 82 00 0C */	beq lbl_80A541D4
/* 80A541CC  38 00 00 01 */	li r0, 1
/* 80A541D0  48 00 00 28 */	b lbl_80A541F8
lbl_80A541D4:
/* 80A541D4  38 00 00 02 */	li r0, 2
/* 80A541D8  48 00 00 20 */	b lbl_80A541F8
lbl_80A541DC:
/* 80A541DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A541E0  41 82 00 0C */	beq lbl_80A541EC
/* 80A541E4  38 00 00 05 */	li r0, 5
/* 80A541E8  48 00 00 10 */	b lbl_80A541F8
lbl_80A541EC:
/* 80A541EC  38 00 00 03 */	li r0, 3
/* 80A541F0  48 00 00 08 */	b lbl_80A541F8
lbl_80A541F4:
/* 80A541F4  38 00 00 04 */	li r0, 4
lbl_80A541F8:
/* 80A541F8  2C 00 00 01 */	cmpwi r0, 1
/* 80A541FC  40 82 00 0C */	bne lbl_80A54208
/* 80A54200  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A54204  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A54208:
/* 80A54208  C0 1B 00 AC */	lfs f0, 0xac(r27)
/* 80A5420C  C0 5D 05 2C */	lfs f2, 0x52c(r29)
/* 80A54210  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80A54214  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A54218  4C 40 13 82 */	cror 2, 0, 2
/* 80A5421C  40 82 00 2C */	bne lbl_80A54248
/* 80A54220  38 00 00 00 */	li r0, 0
/* 80A54224  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A54228  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80A5422C  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80A54230  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A54234  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A54238  38 00 00 01 */	li r0, 1
/* 80A5423C  98 1D 0B E0 */	stb r0, 0xbe0(r29)
/* 80A54240  38 60 00 02 */	li r3, 2
/* 80A54244  48 00 06 60 */	b lbl_80A548A4
lbl_80A54248:
/* 80A54248  FF E0 10 90 */	fmr f31, f2
lbl_80A5424C:
/* 80A5424C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80A54250  FC 20 F8 90 */	fmr f1, f31
/* 80A54254  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A54258  FC 60 F0 90 */	fmr f3, f30
/* 80A5425C  4B 81 B7 E0 */	b cLib_addCalc2__FPffff
/* 80A54260  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A54264  2C 00 00 07 */	cmpwi r0, 7
/* 80A54268  40 80 01 F0 */	bge lbl_80A54458
/* 80A5426C  38 00 00 01 */	li r0, 1
/* 80A54270  98 1D 05 FC */	stb r0, 0x5fc(r29)
/* 80A54274  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 80A54278  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A5427C  40 81 00 10 */	ble lbl_80A5428C
/* 80A54280  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A54284  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A54288  48 00 00 58 */	b lbl_80A542E0
lbl_80A5428C:
/* 80A5428C  A8 7D 05 C8 */	lha r3, 0x5c8(r29)
/* 80A54290  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A54294  7C 03 00 50 */	subf r0, r3, r0
/* 80A54298  7C 00 07 34 */	extsh r0, r0
/* 80A5429C  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80A542A0  41 81 00 0C */	bgt lbl_80A542AC
/* 80A542A4  2C 00 D0 00 */	cmpwi r0, -12288
/* 80A542A8  40 80 00 38 */	bge lbl_80A542E0
lbl_80A542AC:
/* 80A542AC  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A542B0  2C 00 00 05 */	cmpwi r0, 5
/* 80A542B4  40 80 00 2C */	bge lbl_80A542E0
/* 80A542B8  7F A3 EB 78 */	mr r3, r29
/* 80A542BC  38 80 00 1C */	li r4, 0x1c
/* 80A542C0  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80A542C4  38 A0 00 00 */	li r5, 0
/* 80A542C8  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A542CC  4B FF 4E D9 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A542D0  38 00 00 05 */	li r0, 5
/* 80A542D4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A542D8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050015@ha */
/* 80A542DC  3A E3 00 15 */	addi r23, r3, 0x0015 /* 0x00050015@l */
lbl_80A542E0:
/* 80A542E0  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 80A542E4  2C 00 00 00 */	cmpwi r0, 0
/* 80A542E8  41 82 00 1C */	beq lbl_80A54304
/* 80A542EC  38 00 00 00 */	li r0, 0
/* 80A542F0  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80A542F4  38 00 00 0A */	li r0, 0xa
/* 80A542F8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A542FC  7F E3 FB 78 */	mr r3, r31
/* 80A54300  48 00 05 A4 */	b lbl_80A548A4
lbl_80A54304:
/* 80A54304  4B FF 4D 51 */	bl checkDoorDemo__Fv
/* 80A54308  2C 03 00 00 */	cmpwi r3, 0
/* 80A5430C  40 82 00 64 */	bne lbl_80A54370
/* 80A54310  3C 60 80 A5 */	lis r3, s_01_sub__FPvPv@ha
/* 80A54314  38 63 BA DC */	addi r3, r3, s_01_sub__FPvPv@l
/* 80A54318  7F A4 EB 78 */	mr r4, r29
/* 80A5431C  4B 5C D0 1C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A54320  7C 64 1B 79 */	or. r4, r3, r3
/* 80A54324  41 82 00 4C */	beq lbl_80A54370
/* 80A54328  38 61 00 38 */	addi r3, r1, 0x38
/* 80A5432C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80A54330  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80A54334  4B 81 28 00 */	b __mi__4cXyzCFRC3Vec
/* 80A54338  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80A5433C  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80A54340  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80A54344  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A54348  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80A5434C  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80A54350  4B 81 33 24 */	b cM_atan2s__Fff
/* 80A54354  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A54358  38 00 00 14 */	li r0, 0x14
/* 80A5435C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A54360  38 00 00 3C */	li r0, 0x3c
/* 80A54364  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A54368  7F E3 FB 78 */	mr r3, r31
/* 80A5436C  48 00 05 38 */	b lbl_80A548A4
lbl_80A54370:
/* 80A54370  A8 1D 05 F6 */	lha r0, 0x5f6(r29)
/* 80A54374  2C 00 00 00 */	cmpwi r0, 0
/* 80A54378  40 82 00 64 */	bne lbl_80A543DC
/* 80A5437C  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 80A54380  4B 81 35 D4 */	b cM_rndF__Ff
/* 80A54384  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80A54388  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5438C  40 80 00 28 */	bge lbl_80A543B4
/* 80A54390  7F A3 EB 78 */	mr r3, r29
/* 80A54394  4B FF 5B 9D */	bl en_search_test__FP12npc_ks_class
/* 80A54398  28 03 00 00 */	cmplwi r3, 0
/* 80A5439C  41 82 00 0C */	beq lbl_80A543A8
/* 80A543A0  80 03 00 04 */	lwz r0, 4(r3)
/* 80A543A4  48 00 00 08 */	b lbl_80A543AC
lbl_80A543A8:
/* 80A543A8  38 00 FF FF */	li r0, -1
lbl_80A543AC:
/* 80A543AC  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A543B0  48 00 00 0C */	b lbl_80A543BC
lbl_80A543B4:
/* 80A543B4  38 00 FF FF */	li r0, -1
/* 80A543B8  90 1D 09 38 */	stw r0, 0x938(r29)
lbl_80A543BC:
/* 80A543BC  C0 3B 00 C0 */	lfs f1, 0xc0(r27)
/* 80A543C0  4B 81 35 94 */	b cM_rndF__Ff
/* 80A543C4  C0 1B 00 C0 */	lfs f0, 0xc0(r27)
/* 80A543C8  EC 00 08 2A */	fadds f0, f0, f1
/* 80A543CC  FC 00 00 1E */	fctiwz f0, f0
/* 80A543D0  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 80A543D4  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 80A543D8  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
lbl_80A543DC:
/* 80A543DC  A8 1D 05 E6 */	lha r0, 0x5e6(r29)
/* 80A543E0  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80A543E4  40 82 00 3C */	bne lbl_80A54420
/* 80A543E8  7F A3 EB 78 */	mr r3, r29
/* 80A543EC  4B FF 57 5D */	bl bomb_view_check__FP12npc_ks_class
/* 80A543F0  28 03 00 00 */	cmplwi r3, 0
/* 80A543F4  41 82 00 2C */	beq lbl_80A54420
/* 80A543F8  38 00 00 1E */	li r0, 0x1e
/* 80A543FC  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A54400  7F A3 EB 78 */	mr r3, r29
/* 80A54404  38 80 00 1A */	li r4, 0x1a
/* 80A54408  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80A5440C  38 A0 00 02 */	li r5, 2
/* 80A54410  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A54414  4B FF 4D 91 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A54418  7F E3 FB 78 */	mr r3, r31
/* 80A5441C  48 00 04 88 */	b lbl_80A548A4
lbl_80A54420:
/* 80A54420  A8 7D 05 E6 */	lha r3, 0x5e6(r29)
/* 80A54424  38 03 00 02 */	addi r0, r3, 2
/* 80A54428  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80A5442C  40 82 00 2C */	bne lbl_80A54458
/* 80A54430  7F A3 EB 78 */	mr r3, r29
/* 80A54434  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80A54438  EC 20 E8 2A */	fadds f1, f0, f29
/* 80A5443C  4B FF 5A 3D */	bl enemy_view_check__FP12npc_ks_classf
/* 80A54440  28 03 00 00 */	cmplwi r3, 0
/* 80A54444  41 82 00 14 */	beq lbl_80A54458
/* 80A54448  38 00 00 28 */	li r0, 0x28
/* 80A5444C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A54450  7F E3 FB 78 */	mr r3, r31
/* 80A54454  48 00 04 50 */	b lbl_80A548A4
lbl_80A54458:
/* 80A54458  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80A5445C  A8 9D 08 FE */	lha r4, 0x8fe(r29)
/* 80A54460  38 A0 00 02 */	li r5, 2
/* 80A54464  7E A6 AB 78 */	mr r6, r21
/* 80A54468  4B 81 C1 A0 */	b cLib_addCalcAngleS2__FPssss
/* 80A5446C  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80A54470  38 80 00 00 */	li r4, 0
/* 80A54474  38 A0 00 01 */	li r5, 1
/* 80A54478  38 C0 08 00 */	li r6, 0x800
/* 80A5447C  4B 81 C1 8C */	b cLib_addCalcAngleS2__FPssss
/* 80A54480  82 7C 5D AC */	lwz r19, 0x5dac(r28)
/* 80A54484  2C 16 00 00 */	cmpwi r22, 0
/* 80A54488  41 82 01 8C */	beq lbl_80A54614
/* 80A5448C  C0 33 04 D4 */	lfs f1, 0x4d4(r19)
/* 80A54490  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A54494  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A54498  FC 00 02 10 */	fabs f0, f0
/* 80A5449C  FC 20 00 18 */	frsp f1, f0
/* 80A544A0  C0 1B 03 E8 */	lfs f0, 0x3e8(r27)
/* 80A544A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A544A8  41 81 00 24 */	bgt lbl_80A544CC
/* 80A544AC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A544B0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80A544B4  41 82 01 60 */	beq lbl_80A54614
/* 80A544B8  7F A3 EB 78 */	mr r3, r29
/* 80A544BC  7E 64 9B 78 */	mr r4, r19
/* 80A544C0  4B 5C 89 3C */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A544C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A544C8  41 82 01 4C */	beq lbl_80A54614
lbl_80A544CC:
/* 80A544CC  2C 1E 00 00 */	cmpwi r30, 0
/* 80A544D0  41 82 01 40 */	beq lbl_80A54610
/* 80A544D4  C0 33 05 2C */	lfs f1, 0x52c(r19)
/* 80A544D8  C0 1B 00 94 */	lfs f0, 0x94(r27)
/* 80A544DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A544E0  40 81 01 30 */	ble lbl_80A54610
/* 80A544E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A544E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A544EC  82 63 5D 74 */	lwz r19, 0x5d74(r3)
/* 80A544F0  C0 33 00 D8 */	lfs f1, 0xd8(r19)
/* 80A544F4  C0 13 00 E4 */	lfs f0, 0xe4(r19)
/* 80A544F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A544FC  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80A54500  C0 53 00 E0 */	lfs f2, 0xe0(r19)
/* 80A54504  C0 13 00 EC */	lfs f0, 0xec(r19)
/* 80A54508  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A5450C  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80A54510  4B 81 31 64 */	b cM_atan2s__Fff
/* 80A54514  7C 64 1B 78 */	mr r4, r3
/* 80A54518  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A5451C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A54520  80 63 00 00 */	lwz r3, 0(r3)
/* 80A54524  4B 5B 7E B8 */	b mDoMtx_YrotS__FPA4_fs
/* 80A54528  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80A5452C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A54530  C0 1B 00 B4 */	lfs f0, 0xb4(r27)
/* 80A54534  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A54538  C0 1B 00 20 */	lfs f0, 0x20(r27)
/* 80A5453C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80A54540  38 61 00 74 */	addi r3, r1, 0x74
/* 80A54544  38 81 00 68 */	addi r4, r1, 0x68
/* 80A54548  4B 81 C9 A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A5454C  38 61 00 68 */	addi r3, r1, 0x68
/* 80A54550  38 93 00 D8 */	addi r4, r19, 0xd8
/* 80A54554  7C 65 1B 78 */	mr r5, r3
/* 80A54558  4B 8F 2B 38 */	b PSVECAdd
/* 80A5455C  38 61 00 80 */	addi r3, r1, 0x80
/* 80A54560  4B 62 30 1C */	b __ct__11dBgS_GndChkFv
/* 80A54564  38 61 00 80 */	addi r3, r1, 0x80
/* 80A54568  38 81 00 68 */	addi r4, r1, 0x68
/* 80A5456C  4B 81 37 BC */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80A54570  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A54574  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A54578  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80A5457C  38 81 00 80 */	addi r4, r1, 0x80
/* 80A54580  4B 61 FF 20 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80A54584  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80A54588  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A5458C  FC 00 02 10 */	fabs f0, f0
/* 80A54590  FC 20 00 18 */	frsp f1, f0
/* 80A54594  C0 1B 01 3C */	lfs f0, 0x13c(r27)
/* 80A54598  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5459C  40 80 00 60 */	bge lbl_80A545FC
/* 80A545A0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80A545A4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A545A8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80A545AC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A545B0  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80A545B4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A545B8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A545BC  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80A545C0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A545C4  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80A545C8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A545CC  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80A545D0  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80A545D4  B0 1D 04 C8 */	sth r0, 0x4c8(r29)
/* 80A545D8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A545DC  B0 1D 04 CA */	sth r0, 0x4ca(r29)
/* 80A545E0  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80A545E4  B0 1D 04 CC */	sth r0, 0x4cc(r29)
/* 80A545E8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A545EC  98 1D 04 CE */	stb r0, 0x4ce(r29)
/* 80A545F0  88 1D 04 E3 */	lbz r0, 0x4e3(r29)
/* 80A545F4  98 1D 04 CF */	stb r0, 0x4cf(r29)
/* 80A545F8  48 00 00 08 */	b lbl_80A54600
lbl_80A545FC:
/* 80A545FC  3A E0 00 00 */	li r23, 0
lbl_80A54600:
/* 80A54600  38 61 00 80 */	addi r3, r1, 0x80
/* 80A54604  38 80 FF FF */	li r4, -1
/* 80A54608  4B 62 2F E8 */	b __dt__11dBgS_GndChkFv
/* 80A5460C  48 00 00 08 */	b lbl_80A54614
lbl_80A54610:
/* 80A54610  3A E0 00 00 */	li r23, 0
lbl_80A54614:
/* 80A54614  28 17 00 00 */	cmplwi r23, 0
/* 80A54618  41 82 00 24 */	beq lbl_80A5463C
/* 80A5461C  92 E1 00 28 */	stw r23, 0x28(r1)
/* 80A54620  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A54624  38 81 00 28 */	addi r4, r1, 0x28
/* 80A54628  38 A0 FF FF */	li r5, -1
/* 80A5462C  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A54630  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A54634  7D 89 03 A6 */	mtctr r12
/* 80A54638  4E 80 04 21 */	bctrl 
lbl_80A5463C:
/* 80A5463C  A8 7D 09 4C */	lha r3, 0x94c(r29)
/* 80A54640  7C 60 07 35 */	extsh. r0, r3
/* 80A54644  41 82 00 34 */	beq lbl_80A54678
/* 80A54648  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A5464C  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A54650  41 82 00 0C */	beq lbl_80A5465C
/* 80A54654  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80A54658  40 82 00 20 */	bne lbl_80A54678
lbl_80A5465C:
/* 80A5465C  7F A3 EB 78 */	mr r3, r29
/* 80A54660  38 80 00 37 */	li r4, 0x37
/* 80A54664  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80A54668  38 A0 00 02 */	li r5, 2
/* 80A5466C  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A54670  4B FF 4B 35 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A54674  48 00 00 30 */	b lbl_80A546A4
lbl_80A54678:
/* 80A54678  7C 60 07 35 */	extsh. r0, r3
/* 80A5467C  40 82 00 28 */	bne lbl_80A546A4
/* 80A54680  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A54684  2C 00 00 37 */	cmpwi r0, 0x37
/* 80A54688  40 82 00 1C */	bne lbl_80A546A4
/* 80A5468C  7F A3 EB 78 */	mr r3, r29
/* 80A54690  38 80 00 1A */	li r4, 0x1a
/* 80A54694  C0 3B 00 90 */	lfs f1, 0x90(r27)
/* 80A54698  38 A0 00 02 */	li r5, 2
/* 80A5469C  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 80A546A0  4B FF 4B 05 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A546A4:
/* 80A546A4  2C 1E 00 00 */	cmpwi r30, 0
/* 80A546A8  41 82 01 8C */	beq lbl_80A54834
/* 80A546AC  88 1D 0B DD */	lbz r0, 0xbdd(r29)
/* 80A546B0  7C 00 07 75 */	extsb. r0, r0
/* 80A546B4  41 82 01 4C */	beq lbl_80A54800
/* 80A546B8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80A546BC  C0 1D 06 3C */	lfs f0, 0x63c(r29)
/* 80A546C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A546C4  40 80 01 3C */	bge lbl_80A54800
/* 80A546C8  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80A546CC  C0 1B 00 A0 */	lfs f0, 0xa0(r27)
/* 80A546D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A546D4  40 80 00 08 */	bge lbl_80A546DC
/* 80A546D8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80A546DC:
/* 80A546DC  38 00 00 07 */	li r0, 7
/* 80A546E0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A546E4  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80A546E8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A546EC  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 80A546F0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A546F4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80A546F8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A546FC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A54700  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A54704  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A54708  C0 1D 06 3C */	lfs f0, 0x63c(r29)
/* 80A5470C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A54710  88 1A 01 0C */	lbz r0, 0x10c(r26)
/* 80A54714  7C 00 07 75 */	extsb. r0, r0
/* 80A54718  40 82 00 30 */	bne lbl_80A54748
/* 80A5471C  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 80A54720  D0 1A 01 10 */	stfs f0, 0x110(r26)
/* 80A54724  38 7A 01 10 */	addi r3, r26, 0x110
/* 80A54728  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A5472C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A54730  3C 80 80 A5 */	lis r4, __dt__4cXyzFv@ha
/* 80A54734  38 84 91 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A54738  38 BA 01 00 */	addi r5, r26, 0x100
/* 80A5473C  4B FF 47 DD */	bl __register_global_object
/* 80A54740  38 00 00 01 */	li r0, 1
/* 80A54744  98 1A 01 0C */	stb r0, 0x10c(r26)
lbl_80A54748:
/* 80A54748  3B 00 00 00 */	li r24, 0
/* 80A5474C  3A 80 00 00 */	li r20, 0
/* 80A54750  3A A0 00 00 */	li r21, 0
/* 80A54754  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A54758  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l
/* 80A5475C  3C 60 80 A6 */	lis r3, w_eff_id@ha
/* 80A54760  3A C3 E9 4C */	addi r22, r3, w_eff_id@l
lbl_80A54764:
/* 80A54764  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80A54768  38 00 00 FF */	li r0, 0xff
/* 80A5476C  90 01 00 08 */	stw r0, 8(r1)
/* 80A54770  38 80 00 00 */	li r4, 0
/* 80A54774  90 81 00 0C */	stw r4, 0xc(r1)
/* 80A54778  38 00 FF FF */	li r0, -1
/* 80A5477C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A54780  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A54784  90 81 00 18 */	stw r4, 0x18(r1)
/* 80A54788  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80A5478C  3A 75 0B E4 */	addi r19, r21, 0xbe4
/* 80A54790  7C 9D 98 2E */	lwzx r4, r29, r19
/* 80A54794  38 A0 00 00 */	li r5, 0
/* 80A54798  7C D6 A2 2E */	lhzx r6, r22, r20
/* 80A5479C  38 E1 00 5C */	addi r7, r1, 0x5c
/* 80A547A0  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80A547A4  39 20 00 00 */	li r9, 0
/* 80A547A8  39 5A 01 10 */	addi r10, r26, 0x110
/* 80A547AC  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 80A547B0  4B 5F 8D 1C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80A547B4  7C 7D 99 2E */	stwx r3, r29, r19
/* 80A547B8  3B 18 00 01 */	addi r24, r24, 1
/* 80A547BC  2C 18 00 04 */	cmpwi r24, 4
/* 80A547C0  3A 94 00 02 */	addi r20, r20, 2
/* 80A547C4  3A B5 00 04 */	addi r21, r21, 4
/* 80A547C8  41 80 FF 9C */	blt lbl_80A54764
/* 80A547CC  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003001C@ha */
/* 80A547D0  38 03 00 1C */	addi r0, r3, 0x001C /* 0x0003001C@l */
/* 80A547D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A547D8  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A547DC  38 81 00 24 */	addi r4, r1, 0x24
/* 80A547E0  38 A0 00 00 */	li r5, 0
/* 80A547E4  38 C0 FF FF */	li r6, -1
/* 80A547E8  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A547EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A547F0  7D 89 03 A6 */	mtctr r12
/* 80A547F4  4E 80 04 21 */	bctrl 
/* 80A547F8  7F E3 FB 78 */	mr r3, r31
/* 80A547FC  48 00 00 A8 */	b lbl_80A548A4
lbl_80A54800:
/* 80A54800  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A54804  2C 00 00 32 */	cmpwi r0, 0x32
/* 80A54808  40 80 00 90 */	bge lbl_80A54898
/* 80A5480C  88 7D 0B D8 */	lbz r3, 0xbd8(r29)
/* 80A54810  7C 60 07 75 */	extsb. r0, r3
/* 80A54814  41 82 00 84 */	beq lbl_80A54898
/* 80A54818  38 03 FF FF */	addi r0, r3, -1
/* 80A5481C  98 1D 0B D8 */	stb r0, 0xbd8(r29)
/* 80A54820  38 00 00 32 */	li r0, 0x32
/* 80A54824  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A54828  38 00 00 14 */	li r0, 0x14
/* 80A5482C  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A54830  48 00 00 68 */	b lbl_80A54898
lbl_80A54834:
/* 80A54834  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80A54838  C0 1B 00 90 */	lfs f0, 0x90(r27)
/* 80A5483C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A54840  4C 41 13 82 */	cror 2, 1, 2
/* 80A54844  40 82 00 0C */	bne lbl_80A54850
/* 80A54848  C0 5B 01 40 */	lfs f2, 0x140(r27)
/* 80A5484C  48 00 00 08 */	b lbl_80A54854
lbl_80A54850:
/* 80A54850  C0 5B 01 C4 */	lfs f2, 0x1c4(r27)
lbl_80A54854:
/* 80A54854  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A54858  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A5485C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A54860  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A54864  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A54868  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A5486C  C0 1D 06 3C */	lfs f0, 0x63c(r29)
/* 80A54870  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A54874  38 7D 0B F4 */	addi r3, r29, 0xbf4
/* 80A54878  38 81 00 50 */	addi r4, r1, 0x50
/* 80A5487C  C0 3B 04 1C */	lfs f1, 0x41c(r27)
/* 80A54880  4B 5C 88 8C */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80A54884  88 1D 0B DD */	lbz r0, 0xbdd(r29)
/* 80A54888  7C 00 07 75 */	extsb. r0, r0
/* 80A5488C  40 82 00 0C */	bne lbl_80A54898
/* 80A54890  38 00 00 00 */	li r0, 0
/* 80A54894  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A54898:
/* 80A54898  7F A3 EB 78 */	mr r3, r29
/* 80A5489C  4B FF DF FD */	bl action_check__FP12npc_ks_class
/* 80A548A0  7F E3 FB 78 */	mr r3, r31
lbl_80A548A4:
/* 80A548A4  E3 E1 01 B8 */	psq_l f31, 440(r1), 0, 0 /* qr0 */
/* 80A548A8  CB E1 01 B0 */	lfd f31, 0x1b0(r1)
/* 80A548AC  E3 C1 01 A8 */	psq_l f30, 424(r1), 0, 0 /* qr0 */
/* 80A548B0  CB C1 01 A0 */	lfd f30, 0x1a0(r1)
/* 80A548B4  E3 A1 01 98 */	psq_l f29, 408(r1), 0, 0 /* qr0 */
/* 80A548B8  CB A1 01 90 */	lfd f29, 0x190(r1)
/* 80A548BC  E3 81 01 88 */	psq_l f28, 392(r1), 0, 0 /* qr0 */
/* 80A548C0  CB 81 01 80 */	lfd f28, 0x180(r1)
/* 80A548C4  E3 61 01 78 */	psq_l f27, 376(r1), 0, 0 /* qr0 */
/* 80A548C8  CB 61 01 70 */	lfd f27, 0x170(r1)
/* 80A548CC  39 61 01 70 */	addi r11, r1, 0x170
/* 80A548D0  4B 90 D9 30 */	b _restgpr_19
/* 80A548D4  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 80A548D8  7C 08 03 A6 */	mtlr r0
/* 80A548DC  38 21 01 C0 */	addi r1, r1, 0x1c0
/* 80A548E0  4E 80 00 20 */	blr 
