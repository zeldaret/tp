lbl_805B559C:
/* 805B559C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805B55A0  7C 08 02 A6 */	mflr r0
/* 805B55A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 805B55A8  39 61 00 60 */	addi r11, r1, 0x60
/* 805B55AC  4B DA CC 24 */	b _savegpr_26
/* 805B55B0  7C 7E 1B 78 */	mr r30, r3
/* 805B55B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805B55B8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 805B55BC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805B55C0  4B A6 51 50 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805B55C4  B0 7E 06 CE */	sth r3, 0x6ce(r30)
/* 805B55C8  7F C3 F3 78 */	mr r3, r30
/* 805B55CC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805B55D0  4B A6 52 10 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805B55D4  D0 3E 06 D0 */	stfs f1, 0x6d0(r30)
/* 805B55D8  7F C3 F3 78 */	mr r3, r30
/* 805B55DC  4B FF E8 25 */	bl damage_check__FP10b_bq_class
/* 805B55E0  3B A0 00 00 */	li r29, 0
/* 805B55E4  3B 80 00 01 */	li r28, 1
/* 805B55E8  38 00 00 00 */	li r0, 0
/* 805B55EC  98 1E 06 FB */	stb r0, 0x6fb(r30)
/* 805B55F0  3B 40 00 00 */	li r26, 0
/* 805B55F4  3B 60 00 01 */	li r27, 1
/* 805B55F8  A8 1E 06 CA */	lha r0, 0x6ca(r30)
/* 805B55FC  2C 00 00 02 */	cmpwi r0, 2
/* 805B5600  41 82 00 50 */	beq lbl_805B5650
/* 805B5604  40 80 00 14 */	bge lbl_805B5618
/* 805B5608  2C 00 00 00 */	cmpwi r0, 0
/* 805B560C  41 82 00 1C */	beq lbl_805B5628
/* 805B5610  40 80 00 30 */	bge lbl_805B5640
/* 805B5614  48 00 00 90 */	b lbl_805B56A4
lbl_805B5618:
/* 805B5618  2C 00 00 04 */	cmpwi r0, 4
/* 805B561C  41 82 00 68 */	beq lbl_805B5684
/* 805B5620  40 80 00 84 */	bge lbl_805B56A4
/* 805B5624  48 00 00 48 */	b lbl_805B566C
lbl_805B5628:
/* 805B5628  7F C3 F3 78 */	mr r3, r30
/* 805B562C  4B FF EA 1D */	bl b_bq_stay__FP10b_bq_class
/* 805B5630  7C 7C 1B 78 */	mr r28, r3
/* 805B5634  38 00 00 0A */	li r0, 0xa
/* 805B5638  B0 1E 06 DE */	sth r0, 0x6de(r30)
/* 805B563C  48 00 00 68 */	b lbl_805B56A4
lbl_805B5640:
/* 805B5640  7F C3 F3 78 */	mr r3, r30
/* 805B5644  4B FF EE 91 */	bl b_bq_wait__FP10b_bq_class
/* 805B5648  3B A0 00 01 */	li r29, 1
/* 805B564C  48 00 00 58 */	b lbl_805B56A4
lbl_805B5650:
/* 805B5650  7F C3 F3 78 */	mr r3, r30
/* 805B5654  4B FF F6 F9 */	bl b_bq_attack__FP10b_bq_class
/* 805B5658  7C 7A 07 74 */	extsb r26, r3
/* 805B565C  3B A0 00 01 */	li r29, 1
/* 805B5660  38 00 00 02 */	li r0, 2
/* 805B5664  98 1E 06 FB */	stb r0, 0x6fb(r30)
/* 805B5668  48 00 00 3C */	b lbl_805B56A4
lbl_805B566C:
/* 805B566C  7F C3 F3 78 */	mr r3, r30
/* 805B5670  4B FF EF A5 */	bl b_bq_damage__FP10b_bq_class
/* 805B5674  3B A0 00 00 */	li r29, 0
/* 805B5678  38 00 00 01 */	li r0, 1
/* 805B567C  98 1E 06 FB */	stb r0, 0x6fb(r30)
/* 805B5680  48 00 00 24 */	b lbl_805B56A4
lbl_805B5684:
/* 805B5684  7F C3 F3 78 */	mr r3, r30
/* 805B5688  4B FF FE 59 */	bl b_bq_end__FP10b_bq_class
/* 805B568C  38 00 00 01 */	li r0, 1
/* 805B5690  98 1E 06 FB */	stb r0, 0x6fb(r30)
/* 805B5694  88 1E 13 96 */	lbz r0, 0x1396(r30)
/* 805B5698  7C 00 07 75 */	extsb. r0, r0
/* 805B569C  41 82 00 08 */	beq lbl_805B56A4
/* 805B56A0  3B 60 00 00 */	li r27, 0
lbl_805B56A4:
/* 805B56A4  7F 40 07 35 */	extsh. r0, r26
/* 805B56A8  41 82 00 24 */	beq lbl_805B56CC
/* 805B56AC  A8 1E 06 D6 */	lha r0, 0x6d6(r30)
/* 805B56B0  2C 00 00 00 */	cmpwi r0, 0
/* 805B56B4  40 82 00 18 */	bne lbl_805B56CC
/* 805B56B8  38 7E 13 8E */	addi r3, r30, 0x138e
/* 805B56BC  A8 9E 13 90 */	lha r4, 0x1390(r30)
/* 805B56C0  38 A0 00 08 */	li r5, 8
/* 805B56C4  38 C0 00 30 */	li r6, 0x30
/* 805B56C8  4B CB AF 40 */	b cLib_addCalcAngleS2__FPssss
lbl_805B56CC:
/* 805B56CC  38 7E 13 8C */	addi r3, r30, 0x138c
/* 805B56D0  A8 9E 13 8E */	lha r4, 0x138e(r30)
/* 805B56D4  38 A0 00 08 */	li r5, 8
/* 805B56D8  38 C0 00 C8 */	li r6, 0xc8
/* 805B56DC  4B CB AF 2C */	b cLib_addCalcAngleS2__FPssss
/* 805B56E0  38 80 00 00 */	li r4, 0
/* 805B56E4  7F A0 07 75 */	extsb. r0, r29
/* 805B56E8  41 82 00 C0 */	beq lbl_805B57A8
/* 805B56EC  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 805B56F0  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B56F4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805B56F8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805B56FC  38 81 00 20 */	addi r4, r1, 0x20
/* 805B5700  4B A6 40 F8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805B5704  7C 64 1B 79 */	or. r4, r3, r3
/* 805B5708  41 82 00 64 */	beq lbl_805B576C
/* 805B570C  A8 04 06 9A */	lha r0, 0x69a(r4)
/* 805B5710  2C 00 00 02 */	cmpwi r0, 2
/* 805B5714  40 82 00 58 */	bne lbl_805B576C
/* 805B5718  A8 04 06 A0 */	lha r0, 0x6a0(r4)
/* 805B571C  2C 00 00 00 */	cmpwi r0, 0
/* 805B5720  40 82 00 4C */	bne lbl_805B576C
/* 805B5724  38 61 00 24 */	addi r3, r1, 0x24
/* 805B5728  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 805B572C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805B5730  4B CB 14 04 */	b __mi__4cXyzCFRC3Vec
/* 805B5734  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 805B5738  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805B573C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805B5740  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805B5744  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 805B5748  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 805B574C  4B CB 1F 28 */	b cM_atan2s__Fff
/* 805B5750  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 805B5754  7C 00 18 50 */	subf r0, r0, r3
/* 805B5758  7C 04 07 34 */	extsh r4, r0
/* 805B575C  38 00 00 06 */	li r0, 6
/* 805B5760  7C 04 03 D6 */	divw r0, r4, r0
/* 805B5764  7C 04 07 34 */	extsh r4, r0
/* 805B5768  48 00 00 40 */	b lbl_805B57A8
lbl_805B576C:
/* 805B576C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 805B5770  A8 7E 06 CE */	lha r3, 0x6ce(r30)
/* 805B5774  A8 1E 13 8C */	lha r0, 0x138c(r30)
/* 805B5778  7C 03 02 14 */	add r0, r3, r0
/* 805B577C  7C 64 00 50 */	subf r3, r4, r0
/* 805B5780  38 00 00 03 */	li r0, 3
/* 805B5784  7C 03 03 D6 */	divw r0, r3, r0
/* 805B5788  7C 04 07 34 */	extsh r4, r0
/* 805B578C  2C 04 0D AC */	cmpwi r4, 0xdac
/* 805B5790  40 81 00 0C */	ble lbl_805B579C
/* 805B5794  38 80 0D AC */	li r4, 0xdac
/* 805B5798  48 00 00 10 */	b lbl_805B57A8
lbl_805B579C:
/* 805B579C  2C 04 F2 54 */	cmpwi r4, -3500
/* 805B57A0  40 80 00 08 */	bge lbl_805B57A8
/* 805B57A4  38 80 F2 54 */	li r4, -3500
lbl_805B57A8:
/* 805B57A8  38 7E 06 F4 */	addi r3, r30, 0x6f4
/* 805B57AC  38 A0 00 08 */	li r5, 8
/* 805B57B0  A8 DE 06 F6 */	lha r6, 0x6f6(r30)
/* 805B57B4  4B CB AE 54 */	b cLib_addCalcAngleS2__FPssss
/* 805B57B8  38 7E 06 F6 */	addi r3, r30, 0x6f6
/* 805B57BC  38 80 01 00 */	li r4, 0x100
/* 805B57C0  38 A0 00 01 */	li r5, 1
/* 805B57C4  38 C0 00 01 */	li r6, 1
/* 805B57C8  4B CB AE 40 */	b cLib_addCalcAngleS2__FPssss
/* 805B57CC  7F 80 07 75 */	extsb. r0, r28
/* 805B57D0  41 82 00 C8 */	beq lbl_805B5898
/* 805B57D4  88 1E 06 F8 */	lbz r0, 0x6f8(r30)
/* 805B57D8  7C 00 07 75 */	extsb. r0, r0
/* 805B57DC  40 82 00 BC */	bne lbl_805B5898
/* 805B57E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B57E4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 805B57E8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 805B57EC  38 00 00 FF */	li r0, 0xff
/* 805B57F0  90 01 00 08 */	stw r0, 8(r1)
/* 805B57F4  38 80 00 00 */	li r4, 0
/* 805B57F8  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B57FC  38 00 FF FF */	li r0, -1
/* 805B5800  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B5804  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5808  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B580C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5810  80 9E 11 80 */	lwz r4, 0x1180(r30)
/* 805B5814  38 A0 00 00 */	li r5, 0
/* 805B5818  3C C0 00 01 */	lis r6, 0x0001 /* 0x000082B4@ha */
/* 805B581C  38 C6 82 B4 */	addi r6, r6, 0x82B4 /* 0x000082B4@l */
/* 805B5820  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 805B5824  39 00 00 00 */	li r8, 0
/* 805B5828  39 20 00 00 */	li r9, 0
/* 805B582C  39 40 00 00 */	li r10, 0
/* 805B5830  3D 60 80 5C */	lis r11, lit_3816@ha
/* 805B5834  C0 2B A5 88 */	lfs f1, lit_3816@l(r11)
/* 805B5838  4B A9 7C 94 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B583C  90 7E 11 80 */	stw r3, 0x1180(r30)
/* 805B5840  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 805B5844  38 00 00 FF */	li r0, 0xff
/* 805B5848  90 01 00 08 */	stw r0, 8(r1)
/* 805B584C  38 80 00 00 */	li r4, 0
/* 805B5850  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5854  38 00 FF FF */	li r0, -1
/* 805B5858  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B585C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5860  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5864  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5868  80 9E 11 84 */	lwz r4, 0x1184(r30)
/* 805B586C  38 A0 00 00 */	li r5, 0
/* 805B5870  3C C0 00 01 */	lis r6, 0x0001 /* 0x000082B5@ha */
/* 805B5874  38 C6 82 B5 */	addi r6, r6, 0x82B5 /* 0x000082B5@l */
/* 805B5878  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 805B587C  39 00 00 00 */	li r8, 0
/* 805B5880  39 20 00 00 */	li r9, 0
/* 805B5884  39 40 00 00 */	li r10, 0
/* 805B5888  3D 60 80 5C */	lis r11, lit_3816@ha
/* 805B588C  C0 2B A5 88 */	lfs f1, lit_3816@l(r11)
/* 805B5890  4B A9 7C 3C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5894  90 7E 11 84 */	stw r3, 0x1184(r30)
lbl_805B5898:
/* 805B5898  7F 60 07 75 */	extsb. r0, r27
/* 805B589C  41 82 00 14 */	beq lbl_805B58B0
/* 805B58A0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805B58A4  80 03 05 88 */	lwz r0, 0x588(r3)
/* 805B58A8  64 00 02 00 */	oris r0, r0, 0x200
/* 805B58AC  90 03 05 88 */	stw r0, 0x588(r3)
lbl_805B58B0:
/* 805B58B0  39 61 00 60 */	addi r11, r1, 0x60
/* 805B58B4  4B DA C9 68 */	b _restgpr_26
/* 805B58B8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B58BC  7C 08 03 A6 */	mtlr r0
/* 805B58C0  38 21 00 60 */	addi r1, r1, 0x60
/* 805B58C4  4E 80 00 20 */	blr 
