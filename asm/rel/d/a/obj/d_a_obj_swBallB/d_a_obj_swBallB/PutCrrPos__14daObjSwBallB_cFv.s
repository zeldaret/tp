lbl_80CF5388:
/* 80CF5388  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CF538C  7C 08 02 A6 */	mflr r0
/* 80CF5390  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CF5394  39 61 00 40 */	addi r11, r1, 0x40
/* 80CF5398  4B 66 CE 28 */	b _savegpr_22
/* 80CF539C  7C 76 1B 78 */	mr r22, r3
/* 80CF53A0  3C 60 80 CF */	lis r3, l_color@ha
/* 80CF53A4  3B E3 59 D0 */	addi r31, r3, l_color@l
/* 80CF53A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF53AC  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l
/* 80CF53B0  83 17 5D AC */	lwz r24, 0x5dac(r23)
/* 80CF53B4  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80CF53B8  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 80CF53BC  4B 57 B8 48 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80CF53C0  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 80CF53C4  7C 00 18 50 */	subf r0, r0, r3
/* 80CF53C8  7C 19 07 34 */	extsh r25, r0
/* 80CF53CC  7E C3 B3 78 */	mr r3, r22
/* 80CF53D0  80 97 5D AC */	lwz r4, 0x5dac(r23)
/* 80CF53D4  4B 32 55 90 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80CF53D8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80CF53DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF53E0  40 80 00 BC */	bge lbl_80CF549C
/* 80CF53E4  2C 19 40 00 */	cmpwi r25, 0x4000
/* 80CF53E8  40 80 00 B4 */	bge lbl_80CF549C
/* 80CF53EC  2C 19 C0 00 */	cmpwi r25, -16384
/* 80CF53F0  40 81 00 AC */	ble lbl_80CF549C
/* 80CF53F4  7F 03 C3 78 */	mr r3, r24
/* 80CF53F8  81 98 06 28 */	lwz r12, 0x628(r24)
/* 80CF53FC  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80CF5400  7D 89 03 A6 */	mtctr r12
/* 80CF5404  4E 80 04 21 */	bctrl 
/* 80CF5408  90 61 00 0C */	stw r3, 0xc(r1)
/* 80CF540C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80CF5410  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80CF5414  38 81 00 0C */	addi r4, r1, 0xc
/* 80CF5418  4B 32 43 E0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80CF541C  7C 77 1B 79 */	or. r23, r3, r3
/* 80CF5420  41 82 00 7C */	beq lbl_80CF549C
/* 80CF5424  4B 32 38 BC */	b fopAc_IsActor__FPv
/* 80CF5428  2C 03 00 00 */	cmpwi r3, 0
/* 80CF542C  41 82 00 70 */	beq lbl_80CF549C
/* 80CF5430  A8 17 00 08 */	lha r0, 8(r23)
/* 80CF5434  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80CF5438  40 82 00 64 */	bne lbl_80CF549C
/* 80CF543C  38 00 00 00 */	li r0, 0
/* 80CF5440  88 77 0C F0 */	lbz r3, 0xcf0(r23)
/* 80CF5444  2C 03 00 08 */	cmpwi r3, 8
/* 80CF5448  41 82 00 0C */	beq lbl_80CF5454
/* 80CF544C  2C 03 00 09 */	cmpwi r3, 9
/* 80CF5450  40 82 00 08 */	bne lbl_80CF5458
lbl_80CF5454:
/* 80CF5454  38 00 00 01 */	li r0, 1
lbl_80CF5458:
/* 80CF5458  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80CF545C  41 82 00 40 */	beq lbl_80CF549C
/* 80CF5460  7F 03 C3 78 */	mr r3, r24
/* 80CF5464  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 80CF5468  81 98 06 28 */	lwz r12, 0x628(r24)
/* 80CF546C  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 80CF5470  7D 89 03 A6 */	mtctr r12
/* 80CF5474  4E 80 04 21 */	bctrl 
/* 80CF5478  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF547C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF5480  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80CF5484  28 00 00 00 */	cmplwi r0, 0
/* 80CF5488  40 82 00 14 */	bne lbl_80CF549C
/* 80CF548C  38 00 00 14 */	li r0, 0x14
/* 80CF5490  98 03 5E 24 */	stb r0, 0x5e24(r3)
/* 80CF5494  38 00 00 02 */	li r0, 2
/* 80CF5498  98 03 5E 4A */	stb r0, 0x5e4a(r3)
lbl_80CF549C:
/* 80CF549C  3B 40 00 00 */	li r26, 0
/* 80CF54A0  48 00 01 E0 */	b lbl_80CF5680
lbl_80CF54A4:
/* 80CF54A4  3B 20 00 00 */	li r25, 0
/* 80CF54A8  3B 00 00 00 */	li r24, 0
/* 80CF54AC  3A E0 00 00 */	li r23, 0
/* 80CF54B0  57 5D 06 3E */	clrlwi r29, r26, 0x18
/* 80CF54B4  57 43 15 BA */	rlwinm r3, r26, 2, 0x16, 0x1d
/* 80CF54B8  3B C3 05 8C */	addi r30, r3, 0x58c
/* 80CF54BC  7C 76 F0 2E */	lwzx r3, r22, r30
/* 80CF54C0  3C 03 00 01 */	addis r0, r3, 1
/* 80CF54C4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF54C8  41 82 01 6C */	beq lbl_80CF5634
/* 80CF54CC  90 61 00 08 */	stw r3, 8(r1)
/* 80CF54D0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80CF54D4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80CF54D8  38 81 00 08 */	addi r4, r1, 8
/* 80CF54DC  4B 32 43 1C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80CF54E0  7C 7B 1B 78 */	mr r27, r3
/* 80CF54E4  7E C3 B3 78 */	mr r3, r22
/* 80CF54E8  7F 64 DB 78 */	mr r4, r27
/* 80CF54EC  4B FF F1 81 */	bl checkArea_sub__14daObjSwBallB_cFP10fopAc_ac_c
/* 80CF54F0  30 03 FF FF */	addic r0, r3, -1
/* 80CF54F4  7C 00 19 10 */	subfe r0, r0, r3
/* 80CF54F8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CF54FC  7C 19 03 78 */	mr r25, r0
/* 80CF5500  80 7B 04 9C */	lwz r3, 0x49c(r27)
/* 80CF5504  54 60 9F FE */	rlwinm r0, r3, 0x13, 0x1f, 0x1f
/* 80CF5508  7C 18 03 78 */	mr r24, r0
/* 80CF550C  54 60 67 FE */	rlwinm r0, r3, 0xc, 0x1f, 0x1f
/* 80CF5510  7C 17 03 78 */	mr r23, r0
/* 80CF5514  80 76 05 9C */	lwz r3, 0x59c(r22)
/* 80CF5518  3C 03 00 01 */	addis r0, r3, 1
/* 80CF551C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF5520  41 82 00 10 */	beq lbl_80CF5530
/* 80CF5524  7C 16 F0 2E */	lwzx r0, r22, r30
/* 80CF5528  7C 03 00 40 */	cmplw r3, r0
/* 80CF552C  40 82 01 08 */	bne lbl_80CF5634
lbl_80CF5530:
/* 80CF5530  7F 96 EA 14 */	add r28, r22, r29
/* 80CF5534  88 1C 05 99 */	lbz r0, 0x599(r28)
/* 80CF5538  2C 00 00 01 */	cmpwi r0, 1
/* 80CF553C  41 82 00 94 */	beq lbl_80CF55D0
/* 80CF5540  40 80 00 F4 */	bge lbl_80CF5634
/* 80CF5544  2C 00 00 00 */	cmpwi r0, 0
/* 80CF5548  40 80 00 08 */	bge lbl_80CF5550
/* 80CF554C  48 00 00 E8 */	b lbl_80CF5634
lbl_80CF5550:
/* 80CF5550  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80CF5554  41 82 00 2C */	beq lbl_80CF5580
/* 80CF5558  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80CF555C  40 82 00 10 */	bne lbl_80CF556C
/* 80CF5560  88 1C 05 97 */	lbz r0, 0x597(r28)
/* 80CF5564  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CF5568  40 82 00 3C */	bne lbl_80CF55A4
lbl_80CF556C:
/* 80CF556C  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80CF5570  40 82 00 10 */	bne lbl_80CF5580
/* 80CF5574  88 1C 05 97 */	lbz r0, 0x597(r28)
/* 80CF5578  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80CF557C  40 82 00 28 */	bne lbl_80CF55A4
lbl_80CF5580:
/* 80CF5580  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80CF5584  41 82 00 38 */	beq lbl_80CF55BC
/* 80CF5588  88 1C 05 97 */	lbz r0, 0x597(r28)
/* 80CF558C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80CF5590  40 82 00 2C */	bne lbl_80CF55BC
/* 80CF5594  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80CF5598  40 82 00 24 */	bne lbl_80CF55BC
/* 80CF559C  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80CF55A0  40 82 00 1C */	bne lbl_80CF55BC
lbl_80CF55A4:
/* 80CF55A4  38 60 00 01 */	li r3, 1
/* 80CF55A8  98 7B 0D B8 */	stb r3, 0xdb8(r27)
/* 80CF55AC  7C 16 F0 2E */	lwzx r0, r22, r30
/* 80CF55B0  90 16 05 9C */	stw r0, 0x59c(r22)
/* 80CF55B4  98 7C 05 99 */	stb r3, 0x599(r28)
/* 80CF55B8  48 00 00 7C */	b lbl_80CF5634
lbl_80CF55BC:
/* 80CF55BC  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80CF55C0  40 82 00 74 */	bne lbl_80CF5634
/* 80CF55C4  38 00 FF FF */	li r0, -1
/* 80CF55C8  90 16 05 9C */	stw r0, 0x59c(r22)
/* 80CF55CC  48 00 00 68 */	b lbl_80CF5634
lbl_80CF55D0:
/* 80CF55D0  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80CF55D4  41 82 00 4C */	beq lbl_80CF5620
/* 80CF55D8  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80CF55DC  C0 36 04 D0 */	lfs f1, 0x4d0(r22)
/* 80CF55E0  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80CF55E4  4B 57 B1 5C */	b cLib_chaseF__FPfff
/* 80CF55E8  38 7B 04 D8 */	addi r3, r27, 0x4d8
/* 80CF55EC  C0 36 04 D8 */	lfs f1, 0x4d8(r22)
/* 80CF55F0  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80CF55F4  4B 57 B1 4C */	b cLib_chaseF__FPfff
/* 80CF55F8  7E C3 B3 78 */	mr r3, r22
/* 80CF55FC  7F 64 DB 78 */	mr r4, r27
/* 80CF5600  4B 32 53 64 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80CF5604  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CF5608  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CF560C  40 82 00 28 */	bne lbl_80CF5634
/* 80CF5610  38 00 00 00 */	li r0, 0
/* 80CF5614  98 1B 0D B8 */	stb r0, 0xdb8(r27)
/* 80CF5618  98 1C 05 99 */	stb r0, 0x599(r28)
/* 80CF561C  48 00 00 18 */	b lbl_80CF5634
lbl_80CF5620:
/* 80CF5620  38 00 00 00 */	li r0, 0
/* 80CF5624  98 1B 0D B8 */	stb r0, 0xdb8(r27)
/* 80CF5628  98 1C 05 99 */	stb r0, 0x599(r28)
/* 80CF562C  38 00 FF FF */	li r0, -1
/* 80CF5630  90 16 05 9C */	stw r0, 0x59c(r22)
lbl_80CF5634:
/* 80CF5634  38 00 00 00 */	li r0, 0
/* 80CF5638  38 7D 05 97 */	addi r3, r29, 0x597
/* 80CF563C  7C 16 19 AE */	stbx r0, r22, r3
/* 80CF5640  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80CF5644  41 82 00 10 */	beq lbl_80CF5654
/* 80CF5648  7C 16 18 AE */	lbzx r0, r22, r3
/* 80CF564C  60 00 00 02 */	ori r0, r0, 2
/* 80CF5650  7C 16 19 AE */	stbx r0, r22, r3
lbl_80CF5654:
/* 80CF5654  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80CF5658  41 82 00 10 */	beq lbl_80CF5668
/* 80CF565C  7C 16 18 AE */	lbzx r0, r22, r3
/* 80CF5660  60 00 00 01 */	ori r0, r0, 1
/* 80CF5664  7C 16 19 AE */	stbx r0, r22, r3
lbl_80CF5668:
/* 80CF5668  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80CF566C  41 82 00 10 */	beq lbl_80CF567C
/* 80CF5670  7C 16 18 AE */	lbzx r0, r22, r3
/* 80CF5674  60 00 00 04 */	ori r0, r0, 4
/* 80CF5678  7C 16 19 AE */	stbx r0, r22, r3
lbl_80CF567C:
/* 80CF567C  3B 5A 00 01 */	addi r26, r26, 1
lbl_80CF5680:
/* 80CF5680  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 80CF5684  28 00 00 02 */	cmplwi r0, 2
/* 80CF5688  41 80 FE 1C */	blt lbl_80CF54A4
/* 80CF568C  39 61 00 40 */	addi r11, r1, 0x40
/* 80CF5690  4B 66 CB 7C */	b _restgpr_22
/* 80CF5694  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CF5698  7C 08 03 A6 */	mtlr r0
/* 80CF569C  38 21 00 40 */	addi r1, r1, 0x40
/* 80CF56A0  4E 80 00 20 */	blr 
