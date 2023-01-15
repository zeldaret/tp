lbl_80545638:
/* 80545638  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8054563C  7C 08 02 A6 */	mflr r0
/* 80545640  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80545644  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80545648  4B E1 CB 75 */	bl _savegpr_21
/* 8054564C  7C 7F 1B 78 */	mr r31, r3
/* 80545650  3C 60 80 55 */	lis r3, lit_1109@ha /* 0x8054AF80@ha */
/* 80545654  3B A3 AF 80 */	addi r29, r3, lit_1109@l /* 0x8054AF80@l */
/* 80545658  3C 60 80 55 */	lis r3, lit_3905@ha /* 0x8054A964@ha */
/* 8054565C  3B C3 A9 64 */	addi r30, r3, lit_3905@l /* 0x8054A964@l */
/* 80545660  38 60 00 00 */	li r3, 0
/* 80545664  48 00 52 79 */	bl dComIfGp_getPlayer__Fi
/* 80545668  7C 7B 1B 78 */	mr r27, r3
/* 8054566C  38 60 00 00 */	li r3, 0
/* 80545670  48 00 52 51 */	bl dComIfGp_getPlayerCameraID__Fi
/* 80545674  48 00 52 35 */	bl dComIfGp_getCamera__Fi
/* 80545678  7C 7C 1B 78 */	mr r28, r3
/* 8054567C  38 60 00 00 */	li r3, 0
/* 80545680  48 00 52 29 */	bl dComIfGp_getCamera__Fi
/* 80545684  7C 79 1B 78 */	mr r25, r3
/* 80545688  38 61 00 78 */	addi r3, r1, 0x78
/* 8054568C  48 00 52 19 */	bl __ct__4cXyzFv
/* 80545690  38 61 00 6C */	addi r3, r1, 0x6c
/* 80545694  48 00 52 11 */	bl __ct__4cXyzFv
/* 80545698  38 61 00 60 */	addi r3, r1, 0x60
/* 8054569C  48 00 52 09 */	bl __ct__4cXyzFv
/* 805456A0  38 61 00 54 */	addi r3, r1, 0x54
/* 805456A4  48 00 52 01 */	bl __ct__4cXyzFv
/* 805456A8  3B 40 00 00 */	li r26, 0
/* 805456AC  48 00 51 DD */	bl dComIfGp_event_runCheck__Fv
/* 805456B0  2C 03 00 00 */	cmpwi r3, 0
/* 805456B4  40 82 00 84 */	bne lbl_80545738
/* 805456B8  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 805456BC  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 805456C0  A0 63 03 A2 */	lhz r3, 0x3a2(r3)
/* 805456C4  48 00 51 95 */	bl dComIfGs_isEventBit__FUs
/* 805456C8  2C 03 00 00 */	cmpwi r3, 0
/* 805456CC  40 82 00 6C */	bne lbl_80545738
/* 805456D0  A0 7F 07 56 */	lhz r3, 0x756(r31)
/* 805456D4  38 03 00 01 */	addi r0, r3, 1
/* 805456D8  B0 1F 07 56 */	sth r0, 0x756(r31)
/* 805456DC  A0 1F 07 56 */	lhz r0, 0x756(r31)
/* 805456E0  28 00 00 C8 */	cmplwi r0, 0xc8
/* 805456E4  40 80 00 54 */	bge lbl_80545738
/* 805456E8  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 805456EC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805456F0  EC 41 00 28 */	fsubs f2, f1, f0
/* 805456F4  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 805456F8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805456FC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80545700  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80545704  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80545708  EC 01 00 28 */	fsubs f0, f1, f0
/* 8054570C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80545710  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80545714  EC 00 00 32 */	fmuls f0, f0, f0
/* 80545718  EC 21 00 2A */	fadds f1, f1, f0
/* 8054571C  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80545720  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80545724  40 80 00 14 */	bge lbl_80545738
/* 80545728  38 00 00 C8 */	li r0, 0xc8
/* 8054572C  B0 1F 07 56 */	sth r0, 0x756(r31)
/* 80545730  38 00 00 23 */	li r0, 0x23
/* 80545734  B0 1F 07 52 */	sth r0, 0x752(r31)
lbl_80545738:
/* 80545738  A8 9F 07 52 */	lha r4, 0x752(r31)
/* 8054573C  28 04 00 51 */	cmplwi r4, 0x51
/* 80545740  41 81 2B 08 */	bgt lbl_80548248
/* 80545744  3C 60 80 55 */	lis r3, lit_5824@ha /* 0x8054AD6C@ha */
/* 80545748  38 63 AD 6C */	addi r3, r3, lit_5824@l /* 0x8054AD6C@l */
/* 8054574C  54 80 10 3A */	slwi r0, r4, 2
/* 80545750  7C 03 00 2E */	lwzx r0, r3, r0
/* 80545754  7C 09 03 A6 */	mtctr r0
/* 80545758  4E 80 04 20 */	bctr 
lbl_8054575C:
/* 8054575C  48 00 51 2D */	bl dComIfGp_event_runCheck__Fv
/* 80545760  2C 03 00 00 */	cmpwi r3, 0
/* 80545764  40 82 2A E4 */	bne lbl_80548248
/* 80545768  88 1F 07 B5 */	lbz r0, 0x7b5(r31)
/* 8054576C  28 00 00 00 */	cmplwi r0, 0
/* 80545770  41 82 00 5C */	beq lbl_805457CC
/* 80545774  28 00 00 01 */	cmplwi r0, 1
/* 80545778  41 82 00 14 */	beq lbl_8054578C
/* 8054577C  28 00 00 15 */	cmplwi r0, 0x15
/* 80545780  41 82 00 0C */	beq lbl_8054578C
/* 80545784  28 00 00 29 */	cmplwi r0, 0x29
/* 80545788  40 82 2A C0 */	bne lbl_80548248
lbl_8054578C:
/* 8054578C  88 7F 07 B7 */	lbz r3, 0x7b7(r31)
/* 80545790  38 03 00 01 */	addi r0, r3, 1
/* 80545794  98 1F 07 B7 */	stb r0, 0x7b7(r31)
/* 80545798  88 1F 07 B7 */	lbz r0, 0x7b7(r31)
/* 8054579C  28 00 00 03 */	cmplwi r0, 3
/* 805457A0  41 80 00 10 */	blt lbl_805457B0
/* 805457A4  38 00 00 0A */	li r0, 0xa
/* 805457A8  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 805457AC  48 00 00 0C */	b lbl_805457B8
lbl_805457B0:
/* 805457B0  38 00 00 1E */	li r0, 0x1e
/* 805457B4  B0 1F 07 52 */	sth r0, 0x752(r31)
lbl_805457B8:
/* 805457B8  38 00 00 00 */	li r0, 0
/* 805457BC  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 805457C0  38 00 00 01 */	li r0, 1
/* 805457C4  B0 1F 05 BE */	sth r0, 0x5be(r31)
/* 805457C8  48 00 2A 80 */	b lbl_80548248
lbl_805457CC:
/* 805457CC  88 7F 07 BA */	lbz r3, 0x7ba(r31)
/* 805457D0  28 03 00 00 */	cmplwi r3, 0
/* 805457D4  41 82 00 2C */	beq lbl_80545800
/* 805457D8  38 03 FF FF */	addi r0, r3, -1
/* 805457DC  98 1F 07 BA */	stb r0, 0x7ba(r31)
/* 805457E0  88 1F 07 BA */	lbz r0, 0x7ba(r31)
/* 805457E4  28 00 00 00 */	cmplwi r0, 0
/* 805457E8  40 82 2A 60 */	bne lbl_80548248
/* 805457EC  38 00 00 50 */	li r0, 0x50
/* 805457F0  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 805457F4  38 00 00 00 */	li r0, 0
/* 805457F8  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 805457FC  48 00 2A 4C */	b lbl_80548248
lbl_80545800:
/* 80545800  3A E0 00 00 */	li r23, 0
/* 80545804  3B 00 00 00 */	li r24, 0
/* 80545808  3C 60 80 55 */	lis r3, check_kind@ha /* 0x8054ACA8@ha */
/* 8054580C  3B 23 AC A8 */	addi r25, r3, check_kind@l /* 0x8054ACA8@l */
lbl_80545810:
/* 80545810  2C 17 00 0B */	cmpwi r23, 0xb
/* 80545814  40 82 00 14 */	bne lbl_80545828
/* 80545818  A0 79 00 02 */	lhz r3, 2(r25)
/* 8054581C  48 00 50 0D */	bl dComIfGs_getEventReg__FUs
/* 80545820  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80545824  41 82 00 50 */	beq lbl_80545874
lbl_80545828:
/* 80545828  3A DD 01 7C */	addi r22, r29, 0x17c
/* 8054582C  7E D6 C2 14 */	add r22, r22, r24
/* 80545830  C0 36 00 00 */	lfs f1, 0(r22)
/* 80545834  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80545838  EC 41 00 28 */	fsubs f2, f1, f0
/* 8054583C  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80545840  C0 36 00 08 */	lfs f1, 8(r22)
/* 80545844  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80545848  EC 01 00 28 */	fsubs f0, f1, f0
/* 8054584C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80545850  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80545854  EC 00 00 32 */	fmuls f0, f0, f0
/* 80545858  EC 21 00 2A */	fadds f1, f1, f0
/* 8054585C  48 00 4F B1 */	bl JMAFastSqrt__Ff
/* 80545860  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80545864  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80545868  40 80 00 0C */	bge lbl_80545874
/* 8054586C  7E C3 B3 78 */	mr r3, r22
/* 80545870  4B C1 9C 81 */	bl setLookPos__9daPy_py_cFP4cXyz
lbl_80545874:
/* 80545874  3A F7 00 01 */	addi r23, r23, 1
/* 80545878  2C 17 00 14 */	cmpwi r23, 0x14
/* 8054587C  3B 18 00 0C */	addi r24, r24, 0xc
/* 80545880  41 80 FF 90 */	blt lbl_80545810
/* 80545884  88 7F 07 B6 */	lbz r3, 0x7b6(r31)
/* 80545888  28 03 00 00 */	cmplwi r3, 0
/* 8054588C  41 82 00 0C */	beq lbl_80545898
/* 80545890  38 03 FF FF */	addi r0, r3, -1
/* 80545894  98 1F 07 B6 */	stb r0, 0x7b6(r31)
lbl_80545898:
/* 80545898  38 60 00 00 */	li r3, 0
/* 8054589C  38 80 20 00 */	li r4, 0x2000
/* 805458A0  48 00 4F 51 */	bl dComIfGp_checkPlayerStatus0__FiUl
/* 805458A4  28 03 00 00 */	cmplwi r3, 0
/* 805458A8  41 82 29 A0 */	beq lbl_80548248
/* 805458AC  3A E0 00 00 */	li r23, 0
/* 805458B0  3B 00 00 00 */	li r24, 0
lbl_805458B4:
/* 805458B4  2C 17 00 0B */	cmpwi r23, 0xb
/* 805458B8  40 82 00 14 */	bne lbl_805458CC
/* 805458BC  A0 79 00 02 */	lhz r3, 2(r25)
/* 805458C0  48 00 4F 69 */	bl dComIfGs_getEventReg__FUs
/* 805458C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805458C8  41 82 00 9C */	beq lbl_80545964
lbl_805458CC:
/* 805458CC  2C 17 00 0C */	cmpwi r23, 0xc
/* 805458D0  41 80 00 0C */	blt lbl_805458DC
/* 805458D4  2C 17 00 11 */	cmpwi r23, 0x11
/* 805458D8  40 81 00 0C */	ble lbl_805458E4
lbl_805458DC:
/* 805458DC  2C 17 00 0B */	cmpwi r23, 0xb
/* 805458E0  40 82 00 0C */	bne lbl_805458EC
lbl_805458E4:
/* 805458E4  38 A0 06 00 */	li r5, 0x600
/* 805458E8  48 00 00 28 */	b lbl_80545910
lbl_805458EC:
/* 805458EC  2C 17 00 00 */	cmpwi r23, 0
/* 805458F0  41 82 00 14 */	beq lbl_80545904
/* 805458F4  2C 17 00 05 */	cmpwi r23, 5
/* 805458F8  41 82 00 0C */	beq lbl_80545904
/* 805458FC  2C 17 00 07 */	cmpwi r23, 7
/* 80545900  40 82 00 0C */	bne lbl_8054590C
lbl_80545904:
/* 80545904  38 A0 0C 00 */	li r5, 0xc00
/* 80545908  48 00 00 08 */	b lbl_80545910
lbl_8054590C:
/* 8054590C  38 A0 08 00 */	li r5, 0x800
lbl_80545910:
/* 80545910  7F E3 FB 78 */	mr r3, r31
/* 80545914  3A DD 01 7C */	addi r22, r29, 0x17c
/* 80545918  7E D6 C2 14 */	add r22, r22, r24
/* 8054591C  7E C4 B3 78 */	mr r4, r22
/* 80545920  4B FF FB 7D */	bl zoom_check__FP15npc_henna_classP4cXyzs
/* 80545924  2C 03 00 00 */	cmpwi r3, 0
/* 80545928  41 82 00 3C */	beq lbl_80545964
/* 8054592C  88 7F 07 B6 */	lbz r3, 0x7b6(r31)
/* 80545930  38 03 00 02 */	addi r0, r3, 2
/* 80545934  98 1F 07 B6 */	stb r0, 0x7b6(r31)
/* 80545938  88 1F 07 B6 */	lbz r0, 0x7b6(r31)
/* 8054593C  28 00 00 0A */	cmplwi r0, 0xa
/* 80545940  41 80 00 24 */	blt lbl_80545964
/* 80545944  38 00 00 28 */	li r0, 0x28
/* 80545948  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 8054594C  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 80545950  7E C4 B3 78 */	mr r4, r22
/* 80545954  48 00 4E 81 */	bl __as__4cXyzFRC4cXyz
/* 80545958  9A FF 07 B4 */	stb r23, 0x7b4(r31)
/* 8054595C  38 00 00 00 */	li r0, 0
/* 80545960  B0 1F 05 BE */	sth r0, 0x5be(r31)
lbl_80545964:
/* 80545964  3A F7 00 01 */	addi r23, r23, 1
/* 80545968  2C 17 00 14 */	cmpwi r23, 0x14
/* 8054596C  3B 18 00 0C */	addi r24, r24, 0xc
/* 80545970  41 80 FF 44 */	blt lbl_805458B4
/* 80545974  48 00 28 D4 */	b lbl_80548248
lbl_80545978:
/* 80545978  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 8054597C  48 00 4E 45 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80545980  2C 03 00 00 */	cmpwi r3, 0
/* 80545984  40 82 00 5C */	bne lbl_805459E0
/* 80545988  7F E3 FB 78 */	mr r3, r31
/* 8054598C  38 80 00 02 */	li r4, 2
/* 80545990  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80545994  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80545998  38 C0 00 00 */	li r6, 0
/* 8054599C  4B AD 5F 6D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805459A0  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805459A4  38 80 00 02 */	li r4, 2
/* 805459A8  48 00 4E 09 */	bl onCondition__11dEvt_info_cFUs
/* 805459AC  38 61 00 54 */	addi r3, r1, 0x54
/* 805459B0  38 80 FF FF */	li r4, -1
/* 805459B4  4B FF DB 0D */	bl __dt__4cXyzFv
/* 805459B8  38 61 00 60 */	addi r3, r1, 0x60
/* 805459BC  38 80 FF FF */	li r4, -1
/* 805459C0  4B FF DB 01 */	bl __dt__4cXyzFv
/* 805459C4  38 61 00 6C */	addi r3, r1, 0x6c
/* 805459C8  38 80 FF FF */	li r4, -1
/* 805459CC  4B FF DA F5 */	bl __dt__4cXyzFv
/* 805459D0  38 61 00 78 */	addi r3, r1, 0x78
/* 805459D4  38 80 FF FF */	li r4, -1
/* 805459D8  4B FF DA E9 */	bl __dt__4cXyzFv
/* 805459DC  48 00 2A 00 */	b lbl_805483DC
lbl_805459E0:
/* 805459E0  38 7C 02 48 */	addi r3, r28, 0x248
/* 805459E4  4B C1 BA ED */	bl Stop__9dCamera_cFv
/* 805459E8  38 00 00 02 */	li r0, 2
/* 805459EC  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 805459F0  38 00 00 00 */	li r0, 0
/* 805459F4  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 805459F8  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 805459FC  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 80545A00  38 7C 02 48 */	addi r3, r28, 0x248
/* 80545A04  38 80 00 01 */	li r4, 1
/* 80545A08  4B C1 D6 05 */	bl SetTrimSize__9dCamera_cFl
/* 80545A0C  48 00 4D 95 */	bl daPy_getPlayerActorClass__Fv
/* 80545A10  48 00 4D 7D */	bl changeOriginalDemo__9daPy_py_cFv
/* 80545A14  48 00 4D 8D */	bl daPy_getPlayerActorClass__Fv
/* 80545A18  38 80 00 48 */	li r4, 0x48
/* 80545A1C  38 A0 00 01 */	li r5, 1
/* 80545A20  38 C0 00 00 */	li r6, 0
/* 80545A24  38 E0 00 00 */	li r7, 0
/* 80545A28  48 00 4D 51 */	bl changeDemoMode__9daPy_py_cFUliis
/* 80545A2C  38 00 00 00 */	li r0, 0
/* 80545A30  B0 1F 06 A4 */	sth r0, 0x6a4(r31)
lbl_80545A34:
/* 80545A34  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80545A38  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80545A3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80545A40  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80545A44  48 00 4D 15 */	bl cMtx_YrotS__FPA4_fs
/* 80545A48  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80545A4C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80545A50  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80545A54  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80545A58  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 80545A5C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80545A60  38 61 00 78 */	addi r3, r1, 0x78
/* 80545A64  38 9F 07 60 */	addi r4, r31, 0x760
/* 80545A68  4B D2 B4 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80545A6C  38 7F 07 60 */	addi r3, r31, 0x760
/* 80545A70  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80545A74  48 00 4C B1 */	bl __apl__4cXyzFRC3Vec
/* 80545A78  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80545A7C  D0 1F 07 6C */	stfs f0, 0x76c(r31)
/* 80545A80  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80545A84  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80545A88  EC 01 00 2A */	fadds f0, f1, f0
/* 80545A8C  D0 1F 07 70 */	stfs f0, 0x770(r31)
/* 80545A90  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80545A94  D0 1F 07 74 */	stfs f0, 0x774(r31)
/* 80545A98  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 80545A9C  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80545AA0  C0 5E 01 2C */	lfs f2, 0x12c(r30)
/* 80545AA4  C0 7E 01 30 */	lfs f3, 0x130(r30)
/* 80545AA8  4B D2 9F 95 */	bl cLib_addCalc2__FPffff
/* 80545AAC  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80545AB0  2C 00 00 41 */	cmpwi r0, 0x41
/* 80545AB4  40 82 27 94 */	bne lbl_80548248
/* 80545AB8  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 80545ABC  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 80545AC0  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80545AC4  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80545AC8  C0 5E 01 3C */	lfs f2, 0x13c(r30)
/* 80545ACC  C0 7E 01 40 */	lfs f3, 0x140(r30)
/* 80545AD0  48 00 4C 45 */	bl set__4cXyzFfff
/* 80545AD4  38 7F 07 60 */	addi r3, r31, 0x760
/* 80545AD8  C0 3E 01 44 */	lfs f1, 0x144(r30)
/* 80545ADC  C0 5E 01 48 */	lfs f2, 0x148(r30)
/* 80545AE0  C0 7E 01 4C */	lfs f3, 0x14c(r30)
/* 80545AE4  48 00 4C 31 */	bl set__4cXyzFfff
/* 80545AE8  38 7F 07 84 */	addi r3, r31, 0x784
/* 80545AEC  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 80545AF0  C0 5E 01 3C */	lfs f2, 0x13c(r30)
/* 80545AF4  C0 7E 01 54 */	lfs f3, 0x154(r30)
/* 80545AF8  48 00 4C 1D */	bl set__4cXyzFfff
/* 80545AFC  38 7F 07 78 */	addi r3, r31, 0x778
/* 80545B00  C0 3E 01 44 */	lfs f1, 0x144(r30)
/* 80545B04  C0 5E 01 48 */	lfs f2, 0x148(r30)
/* 80545B08  C0 7E 01 4C */	lfs f3, 0x14c(r30)
/* 80545B0C  48 00 4C 09 */	bl set__4cXyzFfff
/* 80545B10  C0 3F 07 78 */	lfs f1, 0x778(r31)
/* 80545B14  C0 1F 07 60 */	lfs f0, 0x760(r31)
/* 80545B18  EC 21 00 28 */	fsubs f1, f1, f0
/* 80545B1C  48 00 4B ED */	bl fabsf__3stdFf
/* 80545B20  D0 3F 07 90 */	stfs f1, 0x790(r31)
/* 80545B24  C0 3F 07 7C */	lfs f1, 0x77c(r31)
/* 80545B28  C0 1F 07 64 */	lfs f0, 0x764(r31)
/* 80545B2C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80545B30  48 00 4B D9 */	bl fabsf__3stdFf
/* 80545B34  D0 3F 07 94 */	stfs f1, 0x794(r31)
/* 80545B38  C0 3F 07 80 */	lfs f1, 0x780(r31)
/* 80545B3C  C0 1F 07 68 */	lfs f0, 0x768(r31)
/* 80545B40  EC 21 00 28 */	fsubs f1, f1, f0
/* 80545B44  48 00 4B C5 */	bl fabsf__3stdFf
/* 80545B48  D0 3F 07 98 */	stfs f1, 0x798(r31)
/* 80545B4C  C0 3F 07 84 */	lfs f1, 0x784(r31)
/* 80545B50  C0 1F 07 6C */	lfs f0, 0x76c(r31)
/* 80545B54  EC 21 00 28 */	fsubs f1, f1, f0
/* 80545B58  48 00 4B B1 */	bl fabsf__3stdFf
/* 80545B5C  D0 3F 07 9C */	stfs f1, 0x79c(r31)
/* 80545B60  C0 3F 07 88 */	lfs f1, 0x788(r31)
/* 80545B64  C0 1F 07 70 */	lfs f0, 0x770(r31)
/* 80545B68  EC 21 00 28 */	fsubs f1, f1, f0
/* 80545B6C  48 00 4B 9D */	bl fabsf__3stdFf
/* 80545B70  D0 3F 07 A0 */	stfs f1, 0x7a0(r31)
/* 80545B74  C0 3F 07 8C */	lfs f1, 0x78c(r31)
/* 80545B78  C0 1F 07 74 */	lfs f0, 0x774(r31)
/* 80545B7C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80545B80  48 00 4B 89 */	bl fabsf__3stdFf
/* 80545B84  D0 3F 07 A4 */	stfs f1, 0x7a4(r31)
/* 80545B88  38 00 00 03 */	li r0, 3
/* 80545B8C  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80545B90  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80545B94  D0 1F 07 C0 */	stfs f0, 0x7c0(r31)
/* 80545B98  38 00 00 00 */	li r0, 0
/* 80545B9C  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80545BA0  48 00 26 A8 */	b lbl_80548248
lbl_80545BA4:
/* 80545BA4  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80545BA8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80545BAC  40 81 00 24 */	ble lbl_80545BD0
/* 80545BB0  7F E3 FB 78 */	mr r3, r31
/* 80545BB4  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 80545BB8  4B FF F4 F1 */	bl cam_3d_morf__FP15npc_henna_classf
/* 80545BBC  38 7F 07 C0 */	addi r3, r31, 0x7c0
/* 80545BC0  C0 3E 01 58 */	lfs f1, 0x158(r30)
/* 80545BC4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80545BC8  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 80545BCC  4B D2 9E 71 */	bl cLib_addCalc2__FPffff
lbl_80545BD0:
/* 80545BD0  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80545BD4  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 80545BD8  41 80 26 70 */	blt lbl_80548248
/* 80545BDC  40 82 00 50 */	bne lbl_80545C2C
/* 80545BE0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80545BE4  7F E4 FB 78 */	mr r4, r31
/* 80545BE8  38 A0 03 21 */	li r5, 0x321
/* 80545BEC  38 C0 00 00 */	li r6, 0
/* 80545BF0  38 E0 00 00 */	li r7, 0
/* 80545BF4  4B D0 43 9D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80545BF8  38 61 00 6C */	addi r3, r1, 0x6c
/* 80545BFC  C0 3E 01 60 */	lfs f1, 0x160(r30)
/* 80545C00  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80545C04  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 80545C08  48 00 4B 0D */	bl set__4cXyzFfff
/* 80545C0C  48 00 4B 95 */	bl daPy_getPlayerActorClass__Fv
/* 80545C10  38 81 00 6C */	addi r4, r1, 0x6c
/* 80545C14  38 A0 E1 C5 */	li r5, -7739
/* 80545C18  38 C0 00 00 */	li r6, 0
/* 80545C1C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80545C20  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80545C24  7D 89 03 A6 */	mtctr r12
/* 80545C28  4E 80 04 21 */	bctrl 
lbl_80545C2C:
/* 80545C2C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80545C30  7F E4 FB 78 */	mr r4, r31
/* 80545C34  38 A0 00 00 */	li r5, 0
/* 80545C38  38 C0 00 00 */	li r6, 0
/* 80545C3C  4B D0 46 9D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80545C40  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80545C44  4B D0 48 FD */	bl getNowMsgNo__10dMsgFlow_cFv
/* 80545C48  28 03 1F 42 */	cmplwi r3, 0x1f42
/* 80545C4C  40 82 25 FC */	bne lbl_80548248
/* 80545C50  38 00 00 0B */	li r0, 0xb
/* 80545C54  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80545C58  38 00 FF EC */	li r0, -20
/* 80545C5C  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80545C60  38 00 00 02 */	li r0, 2
/* 80545C64  B0 1F 06 A4 */	sth r0, 0x6a4(r31)
/* 80545C68  A8 1F 06 20 */	lha r0, 0x620(r31)
/* 80545C6C  B0 1F 06 18 */	sth r0, 0x618(r31)
/* 80545C70  48 00 25 D8 */	b lbl_80548248
lbl_80545C74:
/* 80545C74  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80545C78  48 00 4B 49 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80545C7C  2C 03 00 00 */	cmpwi r3, 0
/* 80545C80  40 82 00 5C */	bne lbl_80545CDC
/* 80545C84  7F E3 FB 78 */	mr r3, r31
/* 80545C88  38 80 00 02 */	li r4, 2
/* 80545C8C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FF7F@ha */
/* 80545C90  38 A5 FF 7F */	addi r5, r5, 0xFF7F /* 0x0000FF7F@l */
/* 80545C94  38 C0 00 00 */	li r6, 0
/* 80545C98  4B AD 5C 71 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80545C9C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80545CA0  38 80 00 02 */	li r4, 2
/* 80545CA4  48 00 4B 0D */	bl onCondition__11dEvt_info_cFUs
/* 80545CA8  38 61 00 54 */	addi r3, r1, 0x54
/* 80545CAC  38 80 FF FF */	li r4, -1
/* 80545CB0  4B FF D8 11 */	bl __dt__4cXyzFv
/* 80545CB4  38 61 00 60 */	addi r3, r1, 0x60
/* 80545CB8  38 80 FF FF */	li r4, -1
/* 80545CBC  4B FF D8 05 */	bl __dt__4cXyzFv
/* 80545CC0  38 61 00 6C */	addi r3, r1, 0x6c
/* 80545CC4  38 80 FF FF */	li r4, -1
/* 80545CC8  4B FF D7 F9 */	bl __dt__4cXyzFv
/* 80545CCC  38 61 00 78 */	addi r3, r1, 0x78
/* 80545CD0  38 80 FF FF */	li r4, -1
/* 80545CD4  4B FF D7 ED */	bl __dt__4cXyzFv
/* 80545CD8  48 00 27 04 */	b lbl_805483DC
lbl_80545CDC:
/* 80545CDC  38 7C 02 48 */	addi r3, r28, 0x248
/* 80545CE0  4B C1 B7 F1 */	bl Stop__9dCamera_cFv
/* 80545CE4  38 00 00 0B */	li r0, 0xb
/* 80545CE8  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80545CEC  38 00 00 00 */	li r0, 0
/* 80545CF0  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80545CF4  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80545CF8  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 80545CFC  38 7C 02 48 */	addi r3, r28, 0x248
/* 80545D00  38 80 00 01 */	li r4, 1
/* 80545D04  4B C1 D3 09 */	bl SetTrimSize__9dCamera_cFl
/* 80545D08  48 00 4A 99 */	bl daPy_getPlayerActorClass__Fv
/* 80545D0C  48 00 4A 81 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80545D10  48 00 4A 91 */	bl daPy_getPlayerActorClass__Fv
/* 80545D14  38 80 00 01 */	li r4, 1
/* 80545D18  38 A0 00 00 */	li r5, 0
/* 80545D1C  38 C0 00 00 */	li r6, 0
/* 80545D20  38 E0 00 00 */	li r7, 0
/* 80545D24  48 00 4A 55 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80545D28:
/* 80545D28  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80545D2C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80545D30  80 63 00 00 */	lwz r3, 0(r3)
/* 80545D34  A8 9F 06 20 */	lha r4, 0x620(r31)
/* 80545D38  48 00 4A 21 */	bl cMtx_YrotS__FPA4_fs
/* 80545D3C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80545D40  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80545D44  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 80545D48  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80545D4C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80545D50  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80545D54  38 61 00 78 */	addi r3, r1, 0x78
/* 80545D58  38 9F 07 60 */	addi r4, r31, 0x760
/* 80545D5C  4B D2 B1 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80545D60  38 7F 07 60 */	addi r3, r31, 0x760
/* 80545D64  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80545D68  48 00 49 BD */	bl __apl__4cXyzFRC3Vec
/* 80545D6C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80545D70  D0 1F 07 6C */	stfs f0, 0x76c(r31)
/* 80545D74  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80545D78  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80545D7C  EC 01 00 2A */	fadds f0, f1, f0
/* 80545D80  D0 1F 07 70 */	stfs f0, 0x770(r31)
/* 80545D84  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80545D88  D0 1F 07 74 */	stfs f0, 0x774(r31)
/* 80545D8C  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 80545D90  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80545D94  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80545D98  C0 7E 00 90 */	lfs f3, 0x90(r30)
/* 80545D9C  4B D2 9C A1 */	bl cLib_addCalc2__FPffff
/* 80545DA0  A8 7F 07 54 */	lha r3, 0x754(r31)
/* 80545DA4  7C 60 07 35 */	extsh. r0, r3
/* 80545DA8  40 82 01 A0 */	bne lbl_80545F48
/* 80545DAC  A8 1F 05 BE */	lha r0, 0x5be(r31)
/* 80545DB0  2C 00 00 01 */	cmpwi r0, 1
/* 80545DB4  40 82 00 74 */	bne lbl_80545E28
/* 80545DB8  38 00 00 02 */	li r0, 2
/* 80545DBC  B0 1F 05 BE */	sth r0, 0x5be(r31)
/* 80545DC0  88 1F 07 B7 */	lbz r0, 0x7b7(r31)
/* 80545DC4  28 00 00 04 */	cmplwi r0, 4
/* 80545DC8  41 80 00 20 */	blt lbl_80545DE8
/* 80545DCC  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80545DD0  7F E4 FB 78 */	mr r4, r31
/* 80545DD4  38 A0 03 54 */	li r5, 0x354
/* 80545DD8  38 C0 00 00 */	li r6, 0
/* 80545DDC  38 E0 00 00 */	li r7, 0
/* 80545DE0  4B D0 41 B1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80545DE4  48 00 00 1C */	b lbl_80545E00
lbl_80545DE8:
/* 80545DE8  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80545DEC  7F E4 FB 78 */	mr r4, r31
/* 80545DF0  38 A0 03 53 */	li r5, 0x353
/* 80545DF4  38 C0 00 00 */	li r6, 0
/* 80545DF8  38 E0 00 00 */	li r7, 0
/* 80545DFC  4B D0 41 95 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80545E00:
/* 80545E00  7F E3 FB 78 */	mr r3, r31
/* 80545E04  38 80 00 12 */	li r4, 0x12
/* 80545E08  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 80545E0C  38 A0 00 02 */	li r5, 2
/* 80545E10  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80545E14  4B FF D1 85 */	bl anm_init__FP15npc_henna_classifUcf
/* 80545E18  A8 7F 05 BC */	lha r3, 0x5bc(r31)
/* 80545E1C  38 03 00 01 */	addi r0, r3, 1
/* 80545E20  B0 1F 05 BC */	sth r0, 0x5bc(r31)
/* 80545E24  48 00 01 14 */	b lbl_80545F38
lbl_80545E28:
/* 80545E28  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80545E2C  3A C3 72 88 */	addi r22, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80545E30  A0 76 03 9C */	lhz r3, 0x39c(r22)
/* 80545E34  48 00 4A 25 */	bl dComIfGs_isEventBit__FUs
/* 80545E38  2C 03 00 00 */	cmpwi r3, 0
/* 80545E3C  40 82 00 18 */	bne lbl_80545E54
/* 80545E40  A0 76 03 9C */	lhz r3, 0x39c(r22)
/* 80545E44  48 00 4A DD */	bl dComIfGs_onEventBit__FUs
/* 80545E48  38 00 00 13 */	li r0, 0x13
/* 80545E4C  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80545E50  48 00 23 F8 */	b lbl_80548248
lbl_80545E54:
/* 80545E54  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80545E58  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80545E5C  A0 63 03 A2 */	lhz r3, 0x3a2(r3)
/* 80545E60  48 00 49 F9 */	bl dComIfGs_isEventBit__FUs
/* 80545E64  2C 03 00 00 */	cmpwi r3, 0
/* 80545E68  41 82 00 60 */	beq lbl_80545EC8
/* 80545E6C  88 1F 07 09 */	lbz r0, 0x709(r31)
/* 80545E70  28 00 00 00 */	cmplwi r0, 0
/* 80545E74  41 82 00 28 */	beq lbl_80545E9C
/* 80545E78  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80545E7C  7F E4 FB 78 */	mr r4, r31
/* 80545E80  38 A0 03 27 */	li r5, 0x327
/* 80545E84  38 C0 00 00 */	li r6, 0
/* 80545E88  38 E0 00 00 */	li r7, 0
/* 80545E8C  4B D0 41 05 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80545E90  38 00 00 5A */	li r0, 0x5a
/* 80545E94  B0 1F 06 BA */	sth r0, 0x6ba(r31)
/* 80545E98  48 00 00 1C */	b lbl_80545EB4
lbl_80545E9C:
/* 80545E9C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80545EA0  7F E4 FB 78 */	mr r4, r31
/* 80545EA4  38 A0 03 25 */	li r5, 0x325
/* 80545EA8  38 C0 00 00 */	li r6, 0
/* 80545EAC  38 E0 00 00 */	li r7, 0
/* 80545EB0  4B D0 40 E1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80545EB4:
/* 80545EB4  38 00 00 14 */	li r0, 0x14
/* 80545EB8  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80545EBC  38 00 00 00 */	li r0, 0
/* 80545EC0  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80545EC4  48 00 00 74 */	b lbl_80545F38
lbl_80545EC8:
/* 80545EC8  88 1F 07 09 */	lbz r0, 0x709(r31)
/* 80545ECC  28 00 00 00 */	cmplwi r0, 0
/* 80545ED0  41 82 00 28 */	beq lbl_80545EF8
/* 80545ED4  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80545ED8  7F E4 FB 78 */	mr r4, r31
/* 80545EDC  38 A0 03 26 */	li r5, 0x326
/* 80545EE0  38 C0 00 00 */	li r6, 0
/* 80545EE4  38 E0 00 00 */	li r7, 0
/* 80545EE8  4B D0 40 A9 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80545EEC  38 00 00 5A */	li r0, 0x5a
/* 80545EF0  B0 1F 06 BA */	sth r0, 0x6ba(r31)
/* 80545EF4  48 00 00 44 */	b lbl_80545F38
lbl_80545EF8:
/* 80545EF8  A8 1F 05 BC */	lha r0, 0x5bc(r31)
/* 80545EFC  2C 00 00 00 */	cmpwi r0, 0
/* 80545F00  40 82 00 20 */	bne lbl_80545F20
/* 80545F04  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80545F08  7F E4 FB 78 */	mr r4, r31
/* 80545F0C  38 A0 03 23 */	li r5, 0x323
/* 80545F10  38 C0 00 00 */	li r6, 0
/* 80545F14  38 E0 00 00 */	li r7, 0
/* 80545F18  4B D0 40 79 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80545F1C  48 00 00 1C */	b lbl_80545F38
lbl_80545F20:
/* 80545F20  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80545F24  7F E4 FB 78 */	mr r4, r31
/* 80545F28  38 A0 03 24 */	li r5, 0x324
/* 80545F2C  38 C0 00 00 */	li r6, 0
/* 80545F30  38 E0 00 00 */	li r7, 0
/* 80545F34  4B D0 40 5D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80545F38:
/* 80545F38  A8 7F 05 BC */	lha r3, 0x5bc(r31)
/* 80545F3C  38 03 00 01 */	addi r0, r3, 1
/* 80545F40  B0 1F 05 BC */	sth r0, 0x5bc(r31)
/* 80545F44  48 00 00 20 */	b lbl_80545F64
lbl_80545F48:
/* 80545F48  A8 1F 05 BE */	lha r0, 0x5be(r31)
/* 80545F4C  2C 00 00 02 */	cmpwi r0, 2
/* 80545F50  40 82 00 14 */	bne lbl_80545F64
/* 80545F54  2C 03 00 05 */	cmpwi r3, 5
/* 80545F58  40 82 00 0C */	bne lbl_80545F64
/* 80545F5C  38 00 00 02 */	li r0, 2
/* 80545F60  90 1F 06 88 */	stw r0, 0x688(r31)
lbl_80545F64:
/* 80545F64  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80545F68  2C 00 00 00 */	cmpwi r0, 0
/* 80545F6C  41 80 22 DC */	blt lbl_80548248
/* 80545F70  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80545F74  7F E4 FB 78 */	mr r4, r31
/* 80545F78  38 A0 00 00 */	li r5, 0
/* 80545F7C  38 C0 00 00 */	li r6, 0
/* 80545F80  4B D0 43 59 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80545F84  2C 03 00 00 */	cmpwi r3, 0
/* 80545F88  41 82 22 C0 */	beq lbl_80548248
/* 80545F8C  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 80545F90  2C 00 00 02 */	cmpwi r0, 2
/* 80545F94  40 82 00 88 */	bne lbl_8054601C
/* 80545F98  88 1F 07 B7 */	lbz r0, 0x7b7(r31)
/* 80545F9C  28 00 00 04 */	cmplwi r0, 4
/* 80545FA0  41 80 00 7C */	blt lbl_8054601C
/* 80545FA4  7F E3 FB 78 */	mr r3, r31
/* 80545FA8  48 00 49 6D */	bl fopAcM_GetRoomNo__FPC10fopAc_ac_c
/* 80545FAC  7C 65 1B 78 */	mr r5, r3
/* 80545FB0  38 60 00 01 */	li r3, 1
/* 80545FB4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80545FB8  38 80 00 00 */	li r4, 0
/* 80545FBC  38 C0 00 00 */	li r6, 0
/* 80545FC0  38 E0 FF FF */	li r7, -1
/* 80545FC4  4B AE 11 AD */	bl dStage_changeScene__FifUlScsi
/* 80545FC8  38 00 00 01 */	li r0, 1
/* 80545FCC  3C 60 80 45 */	lis r3, cDmr_SkipInfo+0x0@ha /* 0x80450C9C@ha */
/* 80545FD0  98 03 0C 9C */	stb r0, cDmr_SkipInfo+0x0@l(r3)  /* 0x80450C9C@l */
/* 80545FD4  38 00 00 00 */	li r0, 0
/* 80545FD8  3C 60 80 45 */	lis r3, struct_80450C98+0x2@ha /* 0x80450C9A@ha */
/* 80545FDC  98 03 0C 9A */	stb r0, struct_80450C98+0x2@l(r3)  /* 0x80450C9A@l */
/* 80545FE0  3C 60 80 45 */	lis r3, struct_80450C98+0x3@ha /* 0x80450C9B@ha */
/* 80545FE4  98 03 0C 9B */	stb r0, struct_80450C98+0x3@l(r3)  /* 0x80450C9B@l */
/* 80545FE8  38 61 00 54 */	addi r3, r1, 0x54
/* 80545FEC  38 80 FF FF */	li r4, -1
/* 80545FF0  4B FF D4 D1 */	bl __dt__4cXyzFv
/* 80545FF4  38 61 00 60 */	addi r3, r1, 0x60
/* 80545FF8  38 80 FF FF */	li r4, -1
/* 80545FFC  4B FF D4 C5 */	bl __dt__4cXyzFv
/* 80546000  38 61 00 6C */	addi r3, r1, 0x6c
/* 80546004  38 80 FF FF */	li r4, -1
/* 80546008  4B FF D4 B9 */	bl __dt__4cXyzFv
/* 8054600C  38 61 00 78 */	addi r3, r1, 0x78
/* 80546010  38 80 FF FF */	li r4, -1
/* 80546014  4B FF D4 AD */	bl __dt__4cXyzFv
/* 80546018  48 00 23 C4 */	b lbl_805483DC
lbl_8054601C:
/* 8054601C  38 00 00 00 */	li r0, 0
/* 80546020  90 1F 06 88 */	stw r0, 0x688(r31)
/* 80546024  A8 1F 05 BE */	lha r0, 0x5be(r31)
/* 80546028  2C 00 00 02 */	cmpwi r0, 2
/* 8054602C  40 82 00 30 */	bne lbl_8054605C
/* 80546030  38 00 00 64 */	li r0, 0x64
/* 80546034  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546038  7F E3 FB 78 */	mr r3, r31
/* 8054603C  38 80 00 20 */	li r4, 0x20
/* 80546040  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 80546044  38 A0 00 02 */	li r5, 2
/* 80546048  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8054604C  4B FF CF 4D */	bl anm_init__FP15npc_henna_classifUcf
/* 80546050  38 00 00 00 */	li r0, 0
/* 80546054  B0 1F 05 BE */	sth r0, 0x5be(r31)
/* 80546058  48 00 21 F0 */	b lbl_80548248
lbl_8054605C:
/* 8054605C  48 00 48 99 */	bl dMsgObject_getSelectCursorPos__Fv
/* 80546060  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80546064  40 82 00 10 */	bne lbl_80546074
/* 80546068  38 00 00 0C */	li r0, 0xc
/* 8054606C  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546070  48 00 00 0C */	b lbl_8054607C
lbl_80546074:
/* 80546074  38 00 00 0D */	li r0, 0xd
/* 80546078  B0 1F 07 52 */	sth r0, 0x752(r31)
lbl_8054607C:
/* 8054607C  38 00 00 00 */	li r0, 0
/* 80546080  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80546084  48 00 21 C4 */	b lbl_80548248
lbl_80546088:
/* 80546088  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 8054608C  2C 00 00 01 */	cmpwi r0, 1
/* 80546090  41 80 21 B8 */	blt lbl_80548248
/* 80546094  40 82 00 E4 */	bne lbl_80546178
/* 80546098  2C 04 00 0C */	cmpwi r4, 0xc
/* 8054609C  40 82 00 C4 */	bne lbl_80546160
/* 805460A0  48 00 46 59 */	bl dComIfGs_getRupee__Fv
/* 805460A4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805460A8  28 00 00 14 */	cmplwi r0, 0x14
/* 805460AC  41 80 00 98 */	blt lbl_80546144
/* 805460B0  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 805460B4  3A C3 72 88 */	addi r22, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 805460B8  A0 76 03 A2 */	lhz r3, 0x3a2(r22)
/* 805460BC  48 00 47 9D */	bl dComIfGs_isEventBit__FUs
/* 805460C0  2C 03 00 00 */	cmpwi r3, 0
/* 805460C4  40 82 00 44 */	bne lbl_80546108
/* 805460C8  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805460CC  7F E4 FB 78 */	mr r4, r31
/* 805460D0  38 A0 03 2E */	li r5, 0x32e
/* 805460D4  38 C0 00 00 */	li r6, 0
/* 805460D8  38 E0 00 00 */	li r7, 0
/* 805460DC  4B D0 3E B5 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805460E0  A0 76 03 A2 */	lhz r3, 0x3a2(r22)
/* 805460E4  48 00 48 3D */	bl dComIfGs_onEventBit__FUs
/* 805460E8  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 805460EC  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 805460F0  A0 63 03 A0 */	lhz r3, 0x3a0(r3)
/* 805460F4  48 00 48 2D */	bl dComIfGs_onEventBit__FUs
/* 805460F8  38 00 00 01 */	li r0, 1
/* 805460FC  3C 60 80 45 */	lis r3, data_80450CA0@ha /* 0x80450CA0@ha */
/* 80546100  98 03 0C A0 */	stb r0, data_80450CA0@l(r3)  /* 0x80450CA0@l */
/* 80546104  48 00 00 1C */	b lbl_80546120
lbl_80546108:
/* 80546108  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8054610C  7F E4 FB 78 */	mr r4, r31
/* 80546110  38 A0 03 2F */	li r5, 0x32f
/* 80546114  38 C0 00 00 */	li r6, 0
/* 80546118  38 E0 00 00 */	li r7, 0
/* 8054611C  4B D0 3E 75 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80546120:
/* 80546120  38 60 FF EC */	li r3, -20
/* 80546124  48 00 45 BD */	bl dComIfGp_setItemRupeeCount__Fl
/* 80546128  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8054612C  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80546130  A0 63 03 9E */	lhz r3, 0x39e(r3)
/* 80546134  48 00 47 ED */	bl dComIfGs_onEventBit__FUs
/* 80546138  38 00 00 01 */	li r0, 1
/* 8054613C  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 80546140  48 00 00 38 */	b lbl_80546178
lbl_80546144:
/* 80546144  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546148  7F E4 FB 78 */	mr r4, r31
/* 8054614C  38 A0 03 32 */	li r5, 0x332
/* 80546150  38 C0 00 00 */	li r6, 0
/* 80546154  38 E0 00 00 */	li r7, 0
/* 80546158  4B D0 3E 39 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8054615C  48 00 00 1C */	b lbl_80546178
lbl_80546160:
/* 80546160  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546164  7F E4 FB 78 */	mr r4, r31
/* 80546168  38 A0 03 31 */	li r5, 0x331
/* 8054616C  38 C0 00 00 */	li r6, 0
/* 80546170  38 E0 00 00 */	li r7, 0
/* 80546174  4B D0 3E 1D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80546178:
/* 80546178  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8054617C  7F E4 FB 78 */	mr r4, r31
/* 80546180  38 A0 00 00 */	li r5, 0
/* 80546184  38 C0 00 00 */	li r6, 0
/* 80546188  4B D0 41 51 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8054618C  2C 03 00 00 */	cmpwi r3, 0
/* 80546190  41 82 20 B8 */	beq lbl_80548248
/* 80546194  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80546198  7C 00 07 75 */	extsb. r0, r0
/* 8054619C  41 82 00 48 */	beq lbl_805461E4
/* 805461A0  38 00 00 64 */	li r0, 0x64
/* 805461A4  B0 1F 06 BA */	sth r0, 0x6ba(r31)
/* 805461A8  7F E3 FB 78 */	mr r3, r31
/* 805461AC  48 00 47 69 */	bl fopAcM_GetRoomNo__FPC10fopAc_ac_c
/* 805461B0  7C 65 1B 78 */	mr r5, r3
/* 805461B4  38 60 00 01 */	li r3, 1
/* 805461B8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 805461BC  38 80 00 00 */	li r4, 0
/* 805461C0  38 C0 00 00 */	li r6, 0
/* 805461C4  38 E0 FF FF */	li r7, -1
/* 805461C8  4B AE 0F A9 */	bl dStage_changeScene__FifUlScsi
/* 805461CC  38 00 00 00 */	li r0, 0
/* 805461D0  3C 60 80 45 */	lis r3, struct_80450C98+0x2@ha /* 0x80450C9A@ha */
/* 805461D4  98 03 0C 9A */	stb r0, struct_80450C98+0x2@l(r3)  /* 0x80450C9A@l */
/* 805461D8  3C 60 80 45 */	lis r3, struct_80450C98+0x3@ha /* 0x80450C9B@ha */
/* 805461DC  98 03 0C 9B */	stb r0, struct_80450C98+0x3@l(r3)  /* 0x80450C9B@l */
/* 805461E0  48 00 20 68 */	b lbl_80548248
lbl_805461E4:
/* 805461E4  38 00 00 64 */	li r0, 0x64
/* 805461E8  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 805461EC  48 00 20 5C */	b lbl_80548248
lbl_805461F0:
/* 805461F0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805461F4  7F E4 FB 78 */	mr r4, r31
/* 805461F8  38 A0 00 00 */	li r5, 0
/* 805461FC  38 C0 00 00 */	li r6, 0
/* 80546200  4B D0 40 D9 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80546204  2C 03 00 00 */	cmpwi r3, 0
/* 80546208  41 82 20 40 */	beq lbl_80548248
/* 8054620C  38 00 00 64 */	li r0, 0x64
/* 80546210  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546214  38 00 00 00 */	li r0, 0
/* 80546218  90 1F 06 88 */	stw r0, 0x688(r31)
/* 8054621C  48 00 20 2C */	b lbl_80548248
lbl_80546220:
/* 80546220  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546224  7F E4 FB 78 */	mr r4, r31
/* 80546228  38 A0 00 00 */	li r5, 0
/* 8054622C  38 C0 00 00 */	li r6, 0
/* 80546230  4B D0 40 A9 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80546234  2C 03 00 00 */	cmpwi r3, 0
/* 80546238  41 82 20 10 */	beq lbl_80548248
/* 8054623C  38 00 00 00 */	li r0, 0
/* 80546240  90 1F 06 88 */	stw r0, 0x688(r31)
/* 80546244  48 00 46 B1 */	bl dMsgObject_getSelectCursorPos__Fv
/* 80546248  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8054624C  40 82 00 10 */	bne lbl_8054625C
/* 80546250  38 00 00 0C */	li r0, 0xc
/* 80546254  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546258  48 00 00 28 */	b lbl_80546280
lbl_8054625C:
/* 8054625C  48 00 46 99 */	bl dMsgObject_getSelectCursorPos__Fv
/* 80546260  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80546264  28 00 00 01 */	cmplwi r0, 1
/* 80546268  40 82 00 10 */	bne lbl_80546278
/* 8054626C  38 00 00 15 */	li r0, 0x15
/* 80546270  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546274  48 00 00 0C */	b lbl_80546280
lbl_80546278:
/* 80546278  38 00 00 0D */	li r0, 0xd
/* 8054627C  B0 1F 07 52 */	sth r0, 0x752(r31)
lbl_80546280:
/* 80546280  38 00 00 00 */	li r0, 0
/* 80546284  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80546288  48 00 1F C0 */	b lbl_80548248
lbl_8054628C:
/* 8054628C  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80546290  2C 00 00 01 */	cmpwi r0, 1
/* 80546294  41 80 1F B4 */	blt lbl_80548248
/* 80546298  40 82 00 80 */	bne lbl_80546318
/* 8054629C  48 00 44 5D */	bl dComIfGs_getRupee__Fv
/* 805462A0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805462A4  28 00 00 64 */	cmplwi r0, 0x64
/* 805462A8  41 80 00 58 */	blt lbl_80546300
/* 805462AC  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805462B0  7F E4 FB 78 */	mr r4, r31
/* 805462B4  38 A0 03 30 */	li r5, 0x330
/* 805462B8  38 C0 00 00 */	li r6, 0
/* 805462BC  38 E0 00 00 */	li r7, 0
/* 805462C0  4B D0 3C D1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805462C4  38 60 FF 9C */	li r3, -100
/* 805462C8  48 00 44 19 */	bl dComIfGp_setItemRupeeCount__Fl
/* 805462CC  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 805462D0  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 805462D4  A0 63 03 9E */	lhz r3, 0x39e(r3)
/* 805462D8  48 00 46 49 */	bl dComIfGs_onEventBit__FUs
/* 805462DC  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 805462E0  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 805462E4  A0 63 03 A0 */	lhz r3, 0x3a0(r3)
/* 805462E8  48 00 46 39 */	bl dComIfGs_onEventBit__FUs
/* 805462EC  38 00 00 01 */	li r0, 1
/* 805462F0  3C 60 80 45 */	lis r3, data_80450CA0@ha /* 0x80450CA0@ha */
/* 805462F4  98 03 0C A0 */	stb r0, data_80450CA0@l(r3)  /* 0x80450CA0@l */
/* 805462F8  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 805462FC  48 00 00 1C */	b lbl_80546318
lbl_80546300:
/* 80546300  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546304  7F E4 FB 78 */	mr r4, r31
/* 80546308  38 A0 03 32 */	li r5, 0x332
/* 8054630C  38 C0 00 00 */	li r6, 0
/* 80546310  38 E0 00 00 */	li r7, 0
/* 80546314  4B D0 3C 7D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80546318:
/* 80546318  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8054631C  7F E4 FB 78 */	mr r4, r31
/* 80546320  38 A0 00 00 */	li r5, 0
/* 80546324  38 C0 00 00 */	li r6, 0
/* 80546328  4B D0 3F B1 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8054632C  2C 03 00 00 */	cmpwi r3, 0
/* 80546330  41 82 1F 18 */	beq lbl_80548248
/* 80546334  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80546338  7C 00 07 75 */	extsb. r0, r0
/* 8054633C  41 82 00 48 */	beq lbl_80546384
/* 80546340  38 00 00 64 */	li r0, 0x64
/* 80546344  B0 1F 06 BA */	sth r0, 0x6ba(r31)
/* 80546348  7F E3 FB 78 */	mr r3, r31
/* 8054634C  48 00 45 C9 */	bl fopAcM_GetRoomNo__FPC10fopAc_ac_c
/* 80546350  7C 65 1B 78 */	mr r5, r3
/* 80546354  38 60 00 01 */	li r3, 1
/* 80546358  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8054635C  38 80 00 00 */	li r4, 0
/* 80546360  38 C0 00 00 */	li r6, 0
/* 80546364  38 E0 FF FF */	li r7, -1
/* 80546368  4B AE 0E 09 */	bl dStage_changeScene__FifUlScsi
/* 8054636C  38 00 00 00 */	li r0, 0
/* 80546370  3C 60 80 45 */	lis r3, struct_80450C98+0x2@ha /* 0x80450C9A@ha */
/* 80546374  98 03 0C 9A */	stb r0, struct_80450C98+0x2@l(r3)  /* 0x80450C9A@l */
/* 80546378  3C 60 80 45 */	lis r3, struct_80450C98+0x3@ha /* 0x80450C9B@ha */
/* 8054637C  98 03 0C 9B */	stb r0, struct_80450C98+0x3@l(r3)  /* 0x80450C9B@l */
/* 80546380  48 00 1E C8 */	b lbl_80548248
lbl_80546384:
/* 80546384  38 00 00 64 */	li r0, 0x64
/* 80546388  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 8054638C  48 00 1E BC */	b lbl_80548248
lbl_80546390:
/* 80546390  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80546394  48 00 44 2D */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80546398  2C 03 00 00 */	cmpwi r3, 0
/* 8054639C  40 82 00 5C */	bne lbl_805463F8
/* 805463A0  7F E3 FB 78 */	mr r3, r31
/* 805463A4  38 80 00 02 */	li r4, 2
/* 805463A8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805463AC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805463B0  38 C0 00 00 */	li r6, 0
/* 805463B4  4B AD 55 55 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805463B8  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805463BC  38 80 00 02 */	li r4, 2
/* 805463C0  48 00 43 F1 */	bl onCondition__11dEvt_info_cFUs
/* 805463C4  38 61 00 54 */	addi r3, r1, 0x54
/* 805463C8  38 80 FF FF */	li r4, -1
/* 805463CC  4B FF D0 F5 */	bl __dt__4cXyzFv
/* 805463D0  38 61 00 60 */	addi r3, r1, 0x60
/* 805463D4  38 80 FF FF */	li r4, -1
/* 805463D8  4B FF D0 E9 */	bl __dt__4cXyzFv
/* 805463DC  38 61 00 6C */	addi r3, r1, 0x6c
/* 805463E0  38 80 FF FF */	li r4, -1
/* 805463E4  4B FF D0 DD */	bl __dt__4cXyzFv
/* 805463E8  38 61 00 78 */	addi r3, r1, 0x78
/* 805463EC  38 80 FF FF */	li r4, -1
/* 805463F0  4B FF D0 D1 */	bl __dt__4cXyzFv
/* 805463F4  48 00 1F E8 */	b lbl_805483DC
lbl_805463F8:
/* 805463F8  38 7C 02 48 */	addi r3, r28, 0x248
/* 805463FC  4B C1 B0 D5 */	bl Stop__9dCamera_cFv
/* 80546400  38 00 00 1F */	li r0, 0x1f
/* 80546404  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546408  38 00 00 00 */	li r0, 0
/* 8054640C  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80546410  38 7C 02 48 */	addi r3, r28, 0x248
/* 80546414  38 80 00 01 */	li r4, 1
/* 80546418  4B C1 CB F5 */	bl SetTrimSize__9dCamera_cFl
lbl_8054641C:
/* 8054641C  3B 40 00 01 */	li r26, 1
/* 80546420  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80546424  2C 00 00 05 */	cmpwi r0, 5
/* 80546428  41 80 1E 20 */	blt lbl_80548248
/* 8054642C  40 82 00 78 */	bne lbl_805464A4
/* 80546430  88 1F 07 B5 */	lbz r0, 0x7b5(r31)
/* 80546434  28 00 00 19 */	cmplwi r0, 0x19
/* 80546438  40 81 00 20 */	ble lbl_80546458
/* 8054643C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546440  7F E4 FB 78 */	mr r4, r31
/* 80546444  38 A0 03 52 */	li r5, 0x352
/* 80546448  38 C0 00 00 */	li r6, 0
/* 8054644C  38 E0 00 00 */	li r7, 0
/* 80546450  4B D0 3B 41 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546454  48 00 00 40 */	b lbl_80546494
lbl_80546458:
/* 80546458  28 00 00 05 */	cmplwi r0, 5
/* 8054645C  40 81 00 20 */	ble lbl_8054647C
/* 80546460  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546464  7F E4 FB 78 */	mr r4, r31
/* 80546468  38 A0 03 51 */	li r5, 0x351
/* 8054646C  38 C0 00 00 */	li r6, 0
/* 80546470  38 E0 00 00 */	li r7, 0
/* 80546474  4B D0 3B 1D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546478  48 00 00 1C */	b lbl_80546494
lbl_8054647C:
/* 8054647C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546480  7F E4 FB 78 */	mr r4, r31
/* 80546484  38 A0 03 50 */	li r5, 0x350
/* 80546488  38 C0 00 00 */	li r6, 0
/* 8054648C  38 E0 00 00 */	li r7, 0
/* 80546490  4B D0 3B 01 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80546494:
/* 80546494  38 00 00 00 */	li r0, 0
/* 80546498  98 1F 07 B5 */	stb r0, 0x7b5(r31)
/* 8054649C  38 00 00 02 */	li r0, 2
/* 805464A0  90 1F 06 88 */	stw r0, 0x688(r31)
lbl_805464A4:
/* 805464A4  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805464A8  7F E4 FB 78 */	mr r4, r31
/* 805464AC  38 A0 00 00 */	li r5, 0
/* 805464B0  38 C0 00 00 */	li r6, 0
/* 805464B4  4B D0 3E 25 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 805464B8  2C 03 00 00 */	cmpwi r3, 0
/* 805464BC  41 82 1D 8C */	beq lbl_80548248
/* 805464C0  38 00 00 65 */	li r0, 0x65
/* 805464C4  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 805464C8  38 00 00 00 */	li r0, 0
/* 805464CC  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805464D0  48 00 1D 78 */	b lbl_80548248
lbl_805464D4:
/* 805464D4  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805464D8  48 00 42 E9 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 805464DC  2C 03 00 00 */	cmpwi r3, 0
/* 805464E0  40 82 00 5C */	bne lbl_8054653C
/* 805464E4  7F E3 FB 78 */	mr r3, r31
/* 805464E8  38 80 00 02 */	li r4, 2
/* 805464EC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805464F0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805464F4  38 C0 00 00 */	li r6, 0
/* 805464F8  4B AD 54 11 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805464FC  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80546500  38 80 00 02 */	li r4, 2
/* 80546504  48 00 42 AD */	bl onCondition__11dEvt_info_cFUs
/* 80546508  38 61 00 54 */	addi r3, r1, 0x54
/* 8054650C  38 80 FF FF */	li r4, -1
/* 80546510  4B FF CF B1 */	bl __dt__4cXyzFv
/* 80546514  38 61 00 60 */	addi r3, r1, 0x60
/* 80546518  38 80 FF FF */	li r4, -1
/* 8054651C  4B FF CF A5 */	bl __dt__4cXyzFv
/* 80546520  38 61 00 6C */	addi r3, r1, 0x6c
/* 80546524  38 80 FF FF */	li r4, -1
/* 80546528  4B FF CF 99 */	bl __dt__4cXyzFv
/* 8054652C  38 61 00 78 */	addi r3, r1, 0x78
/* 80546530  38 80 FF FF */	li r4, -1
/* 80546534  4B FF CF 8D */	bl __dt__4cXyzFv
/* 80546538  48 00 1E A4 */	b lbl_805483DC
lbl_8054653C:
/* 8054653C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80546540  4B C1 AF 91 */	bl Stop__9dCamera_cFv
/* 80546544  38 00 00 24 */	li r0, 0x24
/* 80546548  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 8054654C  38 00 00 00 */	li r0, 0
/* 80546550  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80546554  38 7C 02 48 */	addi r3, r28, 0x248
/* 80546558  38 80 00 01 */	li r4, 1
/* 8054655C  4B C1 CA B1 */	bl SetTrimSize__9dCamera_cFl
lbl_80546560:
/* 80546560  3B 40 00 01 */	li r26, 1
/* 80546564  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80546568  2C 00 00 05 */	cmpwi r0, 5
/* 8054656C  41 80 1C DC */	blt lbl_80548248
/* 80546570  40 82 00 1C */	bne lbl_8054658C
/* 80546574  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546578  7F E4 FB 78 */	mr r4, r31
/* 8054657C  38 A0 03 22 */	li r5, 0x322
/* 80546580  38 C0 00 00 */	li r6, 0
/* 80546584  38 E0 00 00 */	li r7, 0
/* 80546588  4B D0 3A 09 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_8054658C:
/* 8054658C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546590  7F E4 FB 78 */	mr r4, r31
/* 80546594  38 A0 00 00 */	li r5, 0
/* 80546598  38 C0 00 00 */	li r6, 0
/* 8054659C  4B D0 3D 3D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 805465A0  2C 03 00 00 */	cmpwi r3, 0
/* 805465A4  41 82 1C A4 */	beq lbl_80548248
/* 805465A8  38 00 00 65 */	li r0, 0x65
/* 805465AC  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 805465B0  48 00 1C 98 */	b lbl_80548248
lbl_805465B4:
/* 805465B4  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805465B8  48 00 42 09 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 805465BC  2C 03 00 00 */	cmpwi r3, 0
/* 805465C0  40 82 00 5C */	bne lbl_8054661C
/* 805465C4  7F E3 FB 78 */	mr r3, r31
/* 805465C8  38 80 00 02 */	li r4, 2
/* 805465CC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805465D0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805465D4  38 C0 00 00 */	li r6, 0
/* 805465D8  4B AD 53 31 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805465DC  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805465E0  38 80 00 02 */	li r4, 2
/* 805465E4  48 00 41 CD */	bl onCondition__11dEvt_info_cFUs
/* 805465E8  38 61 00 54 */	addi r3, r1, 0x54
/* 805465EC  38 80 FF FF */	li r4, -1
/* 805465F0  4B FF CE D1 */	bl __dt__4cXyzFv
/* 805465F4  38 61 00 60 */	addi r3, r1, 0x60
/* 805465F8  38 80 FF FF */	li r4, -1
/* 805465FC  4B FF CE C5 */	bl __dt__4cXyzFv
/* 80546600  38 61 00 6C */	addi r3, r1, 0x6c
/* 80546604  38 80 FF FF */	li r4, -1
/* 80546608  4B FF CE B9 */	bl __dt__4cXyzFv
/* 8054660C  38 61 00 78 */	addi r3, r1, 0x78
/* 80546610  38 80 FF FF */	li r4, -1
/* 80546614  4B FF CE AD */	bl __dt__4cXyzFv
/* 80546618  48 00 1D C4 */	b lbl_805483DC
lbl_8054661C:
/* 8054661C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80546620  4B C1 AE B1 */	bl Stop__9dCamera_cFv
/* 80546624  38 00 00 29 */	li r0, 0x29
/* 80546628  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 8054662C  38 00 00 00 */	li r0, 0
/* 80546630  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80546634  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 80546638  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 8054663C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80546640  38 80 00 01 */	li r4, 1
/* 80546644  4B C1 C9 C9 */	bl SetTrimSize__9dCamera_cFl
/* 80546648  48 00 41 59 */	bl daPy_getPlayerActorClass__Fv
/* 8054664C  48 00 40 85 */	bl onPlayerNoDraw__9daPy_py_cFv
/* 80546650  38 61 00 48 */	addi r3, r1, 0x48
/* 80546654  38 99 00 E4 */	addi r4, r25, 0xe4
/* 80546658  38 B9 00 D8 */	addi r5, r25, 0xd8
/* 8054665C  4B D2 04 D9 */	bl __mi__4cXyzCFRC3Vec
/* 80546660  38 61 00 78 */	addi r3, r1, 0x78
/* 80546664  38 81 00 48 */	addi r4, r1, 0x48
/* 80546668  48 00 41 6D */	bl __as__4cXyzFRC4cXyz
/* 8054666C  38 61 00 48 */	addi r3, r1, 0x48
/* 80546670  38 80 FF FF */	li r4, -1
/* 80546674  4B FF CE 4D */	bl __dt__4cXyzFv
/* 80546678  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8054667C  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 80546680  4B D2 0F F5 */	bl cM_atan2s__Fff
/* 80546684  B0 7F 07 58 */	sth r3, 0x758(r31)
/* 80546688  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8054668C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80546690  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80546694  EC 00 00 32 */	fmuls f0, f0, f0
/* 80546698  EC 21 00 2A */	fadds f1, f1, f0
/* 8054669C  48 00 41 71 */	bl JMAFastSqrt__Ff
/* 805466A0  FC 40 08 90 */	fmr f2, f1
/* 805466A4  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 805466A8  4B D2 0F CD */	bl cM_atan2s__Fff
/* 805466AC  7C 03 00 D0 */	neg r0, r3
/* 805466B0  B0 1F 07 5C */	sth r0, 0x75c(r31)
/* 805466B4  38 61 00 78 */	addi r3, r1, 0x78
/* 805466B8  48 00 3F 05 */	bl abs__4cXyzCFv
/* 805466BC  D0 3F 07 C4 */	stfs f1, 0x7c4(r31)
lbl_805466C0:
/* 805466C0  38 7F 07 60 */	addi r3, r31, 0x760
/* 805466C4  38 99 00 D8 */	addi r4, r25, 0xd8
/* 805466C8  48 00 41 0D */	bl __as__4cXyzFRC4cXyz
/* 805466CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805466D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805466D4  80 63 00 00 */	lwz r3, 0(r3)
/* 805466D8  A8 9F 07 58 */	lha r4, 0x758(r31)
/* 805466DC  48 00 40 7D */	bl cMtx_YrotS__FPA4_fs
/* 805466E0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805466E4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805466E8  80 63 00 00 */	lwz r3, 0(r3)
/* 805466EC  A8 9F 07 5C */	lha r4, 0x75c(r31)
/* 805466F0  48 00 3E AD */	bl cMtx_XrotM__FPA4_fs
/* 805466F4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805466F8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805466FC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80546700  C0 1F 07 C4 */	lfs f0, 0x7c4(r31)
/* 80546704  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80546708  38 61 00 78 */	addi r3, r1, 0x78
/* 8054670C  38 9F 07 6C */	addi r4, r31, 0x76c
/* 80546710  4B D2 A7 DD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80546714  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80546718  38 9F 07 60 */	addi r4, r31, 0x760
/* 8054671C  48 00 40 09 */	bl __apl__4cXyzFRC3Vec
/* 80546720  38 61 00 3C */	addi r3, r1, 0x3c
/* 80546724  38 9F 07 A8 */	addi r4, r31, 0x7a8
/* 80546728  38 B9 00 D8 */	addi r5, r25, 0xd8
/* 8054672C  4B D2 04 09 */	bl __mi__4cXyzCFRC3Vec
/* 80546730  38 61 00 78 */	addi r3, r1, 0x78
/* 80546734  38 81 00 3C */	addi r4, r1, 0x3c
/* 80546738  48 00 40 9D */	bl __as__4cXyzFRC4cXyz
/* 8054673C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80546740  38 80 FF FF */	li r4, -1
/* 80546744  4B FF CD 7D */	bl __dt__4cXyzFv
/* 80546748  88 1F 07 B4 */	lbz r0, 0x7b4(r31)
/* 8054674C  28 00 00 08 */	cmplwi r0, 8
/* 80546750  41 82 00 68 */	beq lbl_805467B8
/* 80546754  28 00 00 07 */	cmplwi r0, 7
/* 80546758  41 82 00 60 */	beq lbl_805467B8
/* 8054675C  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80546760  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 80546764  4B D2 0F 11 */	bl cM_atan2s__Fff
/* 80546768  7C 64 1B 78 */	mr r4, r3
/* 8054676C  38 7F 07 58 */	addi r3, r31, 0x758
/* 80546770  38 A0 00 08 */	li r5, 8
/* 80546774  38 C0 08 00 */	li r6, 0x800
/* 80546778  4B D2 9E 91 */	bl cLib_addCalcAngleS2__FPssss
/* 8054677C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80546780  EC 20 00 32 */	fmuls f1, f0, f0
/* 80546784  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80546788  EC 00 00 32 */	fmuls f0, f0, f0
/* 8054678C  EC 21 00 2A */	fadds f1, f1, f0
/* 80546790  48 00 40 7D */	bl JMAFastSqrt__Ff
/* 80546794  FC 40 08 90 */	fmr f2, f1
/* 80546798  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8054679C  4B D2 0E D9 */	bl cM_atan2s__Fff
/* 805467A0  7C 03 00 D0 */	neg r0, r3
/* 805467A4  7C 04 07 34 */	extsh r4, r0
/* 805467A8  38 7F 07 5C */	addi r3, r31, 0x75c
/* 805467AC  38 A0 00 08 */	li r5, 8
/* 805467B0  38 C0 08 00 */	li r6, 0x800
/* 805467B4  4B D2 9E 55 */	bl cLib_addCalcAngleS2__FPssss
lbl_805467B8:
/* 805467B8  88 1F 07 B4 */	lbz r0, 0x7b4(r31)
/* 805467BC  28 00 00 08 */	cmplwi r0, 8
/* 805467C0  41 82 00 84 */	beq lbl_80546844
/* 805467C4  28 00 00 07 */	cmplwi r0, 7
/* 805467C8  41 82 00 7C */	beq lbl_80546844
/* 805467CC  28 00 00 06 */	cmplwi r0, 6
/* 805467D0  41 82 00 74 */	beq lbl_80546844
/* 805467D4  28 00 00 02 */	cmplwi r0, 2
/* 805467D8  41 82 00 6C */	beq lbl_80546844
/* 805467DC  28 00 00 04 */	cmplwi r0, 4
/* 805467E0  41 82 00 64 */	beq lbl_80546844
/* 805467E4  28 00 00 00 */	cmplwi r0, 0
/* 805467E8  41 82 00 5C */	beq lbl_80546844
/* 805467EC  38 61 00 78 */	addi r3, r1, 0x78
/* 805467F0  48 00 3D CD */	bl abs__4cXyzCFv
/* 805467F4  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 805467F8  EC 40 08 28 */	fsubs f2, f0, f1
/* 805467FC  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 80546800  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 80546804  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80546808  EC 21 00 2A */	fadds f1, f1, f0
/* 8054680C  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 80546810  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80546814  40 81 00 0C */	ble lbl_80546820
/* 80546818  FC 20 00 90 */	fmr f1, f0
/* 8054681C  48 00 00 14 */	b lbl_80546830
lbl_80546820:
/* 80546820  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80546824  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80546828  40 80 00 08 */	bge lbl_80546830
/* 8054682C  FC 20 00 90 */	fmr f1, f0
lbl_80546830:
/* 80546830  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 80546834  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 80546838  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 8054683C  4B D2 92 01 */	bl cLib_addCalc2__FPffff
/* 80546840  48 00 00 54 */	b lbl_80546894
lbl_80546844:
/* 80546844  38 61 00 78 */	addi r3, r1, 0x78
/* 80546848  48 00 3D 75 */	bl abs__4cXyzCFv
/* 8054684C  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80546850  EC 20 08 28 */	fsubs f1, f0, f1
/* 80546854  C0 5E 01 34 */	lfs f2, 0x134(r30)
/* 80546858  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 8054685C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80546860  EC 22 00 2A */	fadds f1, f2, f0
/* 80546864  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 80546868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054686C  40 81 00 0C */	ble lbl_80546878
/* 80546870  FC 20 00 90 */	fmr f1, f0
/* 80546874  48 00 00 10 */	b lbl_80546884
lbl_80546878:
/* 80546878  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8054687C  40 80 00 08 */	bge lbl_80546884
/* 80546880  FC 20 10 90 */	fmr f1, f2
lbl_80546884:
/* 80546884  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 80546888  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 8054688C  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80546890  4B D2 91 AD */	bl cLib_addCalc2__FPffff
lbl_80546894:
/* 80546894  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80546898  2C 00 00 0F */	cmpwi r0, 0xf
/* 8054689C  41 80 19 AC */	blt lbl_80548248
/* 805468A0  40 82 04 28 */	bne lbl_80546CC8
/* 805468A4  3B 20 00 00 */	li r25, 0
/* 805468A8  88 1F 07 B4 */	lbz r0, 0x7b4(r31)
/* 805468AC  28 00 00 13 */	cmplwi r0, 0x13
/* 805468B0  41 81 04 18 */	bgt lbl_80546CC8
/* 805468B4  3C 60 80 55 */	lis r3, lit_5825@ha /* 0x8054AD1C@ha */
/* 805468B8  38 63 AD 1C */	addi r3, r3, lit_5825@l /* 0x8054AD1C@l */
/* 805468BC  54 00 10 3A */	slwi r0, r0, 2
/* 805468C0  7C 03 00 2E */	lwzx r0, r3, r0
/* 805468C4  7C 09 03 A6 */	mtctr r0
/* 805468C8  4E 80 04 20 */	bctr 
lbl_805468CC:
/* 805468CC  3A A0 00 00 */	li r21, 0
/* 805468D0  3B 00 00 00 */	li r24, 0
/* 805468D4  3C 60 80 55 */	lis r3, check_kind@ha /* 0x8054ACA8@ha */
/* 805468D8  3A C3 AC A8 */	addi r22, r3, check_kind@l /* 0x8054ACA8@l */
/* 805468DC  3C 60 80 55 */	lis r3, check_size@ha /* 0x8054AD14@ha */
/* 805468E0  3A E3 AD 14 */	addi r23, r3, check_size@l /* 0x8054AD14@l */
lbl_805468E4:
/* 805468E4  7C 76 C2 2E */	lhzx r3, r22, r24
/* 805468E8  48 00 3F 41 */	bl dComIfGs_getEventReg__FUs
/* 805468EC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805468F0  7C 17 C2 2E */	lhzx r0, r23, r24
/* 805468F4  7C 03 00 00 */	cmpw r3, r0
/* 805468F8  41 80 00 08 */	blt lbl_80546900
/* 805468FC  3B 39 00 01 */	addi r25, r25, 1
lbl_80546900:
/* 80546900  3A B5 00 01 */	addi r21, r21, 1
/* 80546904  2C 15 00 03 */	cmpwi r21, 3
/* 80546908  3B 18 00 02 */	addi r24, r24, 2
/* 8054690C  40 81 FF D8 */	ble lbl_805468E4
/* 80546910  2C 19 00 00 */	cmpwi r25, 0
/* 80546914  40 82 00 20 */	bne lbl_80546934
/* 80546918  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8054691C  7F E4 FB 78 */	mr r4, r31
/* 80546920  38 A0 03 33 */	li r5, 0x333
/* 80546924  38 C0 00 00 */	li r6, 0
/* 80546928  38 E0 00 00 */	li r7, 0
/* 8054692C  4B D0 36 65 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546930  48 00 03 98 */	b lbl_80546CC8
lbl_80546934:
/* 80546934  2C 19 00 04 */	cmpwi r25, 4
/* 80546938  41 80 00 20 */	blt lbl_80546958
/* 8054693C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546940  7F E4 FB 78 */	mr r4, r31
/* 80546944  38 A0 03 36 */	li r5, 0x336
/* 80546948  38 C0 00 00 */	li r6, 0
/* 8054694C  38 E0 00 00 */	li r7, 0
/* 80546950  4B D0 36 41 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546954  48 00 03 74 */	b lbl_80546CC8
lbl_80546958:
/* 80546958  3C 60 80 55 */	lis r3, check_kind@ha /* 0x8054ACA8@ha */
/* 8054695C  38 63 AC A8 */	addi r3, r3, check_kind@l /* 0x8054ACA8@l */
/* 80546960  A0 63 00 02 */	lhz r3, 2(r3)
/* 80546964  48 00 3E C5 */	bl dComIfGs_getEventReg__FUs
/* 80546968  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8054696C  28 00 00 0A */	cmplwi r0, 0xa
/* 80546970  41 80 00 20 */	blt lbl_80546990
/* 80546974  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546978  7F E4 FB 78 */	mr r4, r31
/* 8054697C  38 A0 03 35 */	li r5, 0x335
/* 80546980  38 C0 00 00 */	li r6, 0
/* 80546984  38 E0 00 00 */	li r7, 0
/* 80546988  4B D0 36 09 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8054698C  48 00 03 3C */	b lbl_80546CC8
lbl_80546990:
/* 80546990  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546994  7F E4 FB 78 */	mr r4, r31
/* 80546998  38 A0 03 34 */	li r5, 0x334
/* 8054699C  38 C0 00 00 */	li r6, 0
/* 805469A0  38 E0 00 00 */	li r7, 0
/* 805469A4  4B D0 35 ED */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805469A8  48 00 03 20 */	b lbl_80546CC8
lbl_805469AC:
/* 805469AC  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 805469B0  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 805469B4  A0 63 03 AA */	lhz r3, 0x3aa(r3)
/* 805469B8  48 00 3E A1 */	bl dComIfGs_isEventBit__FUs
/* 805469BC  2C 03 00 00 */	cmpwi r3, 0
/* 805469C0  41 82 00 20 */	beq lbl_805469E0
/* 805469C4  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805469C8  7F E4 FB 78 */	mr r4, r31
/* 805469CC  38 A0 03 38 */	li r5, 0x338
/* 805469D0  38 C0 00 00 */	li r6, 0
/* 805469D4  38 E0 00 00 */	li r7, 0
/* 805469D8  4B D0 35 B9 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805469DC  48 00 02 EC */	b lbl_80546CC8
lbl_805469E0:
/* 805469E0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805469E4  7F E4 FB 78 */	mr r4, r31
/* 805469E8  38 A0 03 37 */	li r5, 0x337
/* 805469EC  38 C0 00 00 */	li r6, 0
/* 805469F0  38 E0 00 00 */	li r7, 0
/* 805469F4  4B D0 35 9D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805469F8  48 00 02 D0 */	b lbl_80546CC8
lbl_805469FC:
/* 805469FC  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546A00  7F E4 FB 78 */	mr r4, r31
/* 80546A04  38 A0 03 39 */	li r5, 0x339
/* 80546A08  38 C0 00 00 */	li r6, 0
/* 80546A0C  38 E0 00 00 */	li r7, 0
/* 80546A10  4B D0 35 81 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546A14  48 00 02 B4 */	b lbl_80546CC8
lbl_80546A18:
/* 80546A18  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546A1C  7F E4 FB 78 */	mr r4, r31
/* 80546A20  38 A0 03 3A */	li r5, 0x33a
/* 80546A24  38 C0 00 00 */	li r6, 0
/* 80546A28  38 E0 00 00 */	li r7, 0
/* 80546A2C  4B D0 35 65 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546A30  48 00 02 98 */	b lbl_80546CC8
lbl_80546A34:
/* 80546A34  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546A38  7F E4 FB 78 */	mr r4, r31
/* 80546A3C  38 A0 03 3B */	li r5, 0x33b
/* 80546A40  38 C0 00 00 */	li r6, 0
/* 80546A44  38 E0 00 00 */	li r7, 0
/* 80546A48  4B D0 35 49 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546A4C  3C 60 80 45 */	lis r3, cDmr_SkipInfo+0x1@ha /* 0x80450C9D@ha */
/* 80546A50  8C 03 0C 9D */	lbzu r0, cDmr_SkipInfo+0x1@l(r3)  /* 0x80450C9D@l */
/* 80546A54  60 00 00 80 */	ori r0, r0, 0x80
/* 80546A58  98 03 00 00 */	stb r0, 0(r3)
/* 80546A5C  48 00 02 6C */	b lbl_80546CC8
lbl_80546A60:
/* 80546A60  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546A64  7F E4 FB 78 */	mr r4, r31
/* 80546A68  38 A0 03 3D */	li r5, 0x33d
/* 80546A6C  38 C0 00 00 */	li r6, 0
/* 80546A70  38 E0 00 00 */	li r7, 0
/* 80546A74  4B D0 35 1D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546A78  48 00 02 50 */	b lbl_80546CC8
lbl_80546A7C:
/* 80546A7C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546A80  7F E4 FB 78 */	mr r4, r31
/* 80546A84  38 A0 03 3E */	li r5, 0x33e
/* 80546A88  38 C0 00 00 */	li r6, 0
/* 80546A8C  38 E0 00 00 */	li r7, 0
/* 80546A90  4B D0 35 01 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546A94  48 00 02 34 */	b lbl_80546CC8
lbl_80546A98:
/* 80546A98  48 00 3A F9 */	bl dKy_getEnvlight__Fv
/* 80546A9C  80 03 0E 80 */	lwz r0, 0xe80(r3)
/* 80546AA0  2C 00 00 00 */	cmpwi r0, 0
/* 80546AA4  40 82 00 64 */	bne lbl_80546B08
/* 80546AA8  C0 23 12 44 */	lfs f1, 0x1244(r3)
/* 80546AAC  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 80546AB0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80546AB4  FC 00 00 1E */	fctiwz f0, f0
/* 80546AB8  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 80546ABC  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80546AC0  2C 00 00 08 */	cmpwi r0, 8
/* 80546AC4  41 80 00 0C */	blt lbl_80546AD0
/* 80546AC8  2C 00 00 10 */	cmpwi r0, 0x10
/* 80546ACC  40 81 00 20 */	ble lbl_80546AEC
lbl_80546AD0:
/* 80546AD0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546AD4  7F E4 FB 78 */	mr r4, r31
/* 80546AD8  38 A0 03 71 */	li r5, 0x371
/* 80546ADC  38 C0 00 00 */	li r6, 0
/* 80546AE0  38 E0 00 00 */	li r7, 0
/* 80546AE4  4B D0 34 AD */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546AE8  48 00 01 E0 */	b lbl_80546CC8
lbl_80546AEC:
/* 80546AEC  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546AF0  7F E4 FB 78 */	mr r4, r31
/* 80546AF4  38 A0 03 46 */	li r5, 0x346
/* 80546AF8  38 C0 00 00 */	li r6, 0
/* 80546AFC  38 E0 00 00 */	li r7, 0
/* 80546B00  4B D0 34 91 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546B04  48 00 01 C4 */	b lbl_80546CC8
lbl_80546B08:
/* 80546B08  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546B0C  7F E4 FB 78 */	mr r4, r31
/* 80546B10  38 A0 03 47 */	li r5, 0x347
/* 80546B14  38 C0 00 00 */	li r6, 0
/* 80546B18  38 E0 00 00 */	li r7, 0
/* 80546B1C  4B D0 34 75 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546B20  48 00 01 A8 */	b lbl_80546CC8
lbl_80546B24:
/* 80546B24  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546B28  7F E4 FB 78 */	mr r4, r31
/* 80546B2C  38 A0 03 5F */	li r5, 0x35f
/* 80546B30  38 C0 00 00 */	li r6, 0
/* 80546B34  38 E0 00 00 */	li r7, 0
/* 80546B38  4B D0 34 59 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546B3C  48 00 01 8C */	b lbl_80546CC8
lbl_80546B40:
/* 80546B40  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546B44  7F E4 FB 78 */	mr r4, r31
/* 80546B48  38 A0 03 44 */	li r5, 0x344
/* 80546B4C  38 C0 00 00 */	li r6, 0
/* 80546B50  38 E0 00 00 */	li r7, 0
/* 80546B54  4B D0 34 3D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546B58  48 00 01 70 */	b lbl_80546CC8
lbl_80546B5C:
/* 80546B5C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546B60  7F E4 FB 78 */	mr r4, r31
/* 80546B64  38 A0 03 42 */	li r5, 0x342
/* 80546B68  38 C0 00 00 */	li r6, 0
/* 80546B6C  38 E0 00 00 */	li r7, 0
/* 80546B70  4B D0 34 21 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546B74  48 00 01 54 */	b lbl_80546CC8
lbl_80546B78:
/* 80546B78  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546B7C  7F E4 FB 78 */	mr r4, r31
/* 80546B80  38 A0 03 43 */	li r5, 0x343
/* 80546B84  38 C0 00 00 */	li r6, 0
/* 80546B88  38 E0 00 00 */	li r7, 0
/* 80546B8C  4B D0 34 05 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546B90  48 00 01 38 */	b lbl_80546CC8
lbl_80546B94:
/* 80546B94  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546B98  7F E4 FB 78 */	mr r4, r31
/* 80546B9C  38 A0 03 41 */	li r5, 0x341
/* 80546BA0  38 C0 00 00 */	li r6, 0
/* 80546BA4  38 E0 00 00 */	li r7, 0
/* 80546BA8  4B D0 33 E9 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546BAC  48 00 01 1C */	b lbl_80546CC8
lbl_80546BB0:
/* 80546BB0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546BB4  7F E4 FB 78 */	mr r4, r31
/* 80546BB8  38 A0 03 40 */	li r5, 0x340
/* 80546BBC  38 C0 00 00 */	li r6, 0
/* 80546BC0  38 E0 00 00 */	li r7, 0
/* 80546BC4  4B D0 33 CD */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546BC8  48 00 01 00 */	b lbl_80546CC8
lbl_80546BCC:
/* 80546BCC  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546BD0  7F E4 FB 78 */	mr r4, r31
/* 80546BD4  38 A0 03 3F */	li r5, 0x33f
/* 80546BD8  38 C0 00 00 */	li r6, 0
/* 80546BDC  38 E0 00 00 */	li r7, 0
/* 80546BE0  4B D0 33 B1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546BE4  48 00 00 E4 */	b lbl_80546CC8
lbl_80546BE8:
/* 80546BE8  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546BEC  7F E4 FB 78 */	mr r4, r31
/* 80546BF0  38 A0 03 3C */	li r5, 0x33c
/* 80546BF4  38 C0 00 00 */	li r6, 0
/* 80546BF8  38 E0 00 00 */	li r7, 0
/* 80546BFC  4B D0 33 95 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546C00  48 00 00 C8 */	b lbl_80546CC8
lbl_80546C04:
/* 80546C04  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80546C08  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80546C0C  A0 63 06 6A */	lhz r3, 0x66a(r3)
/* 80546C10  48 00 3C 49 */	bl dComIfGs_isEventBit__FUs
/* 80546C14  2C 03 00 00 */	cmpwi r3, 0
/* 80546C18  41 82 00 20 */	beq lbl_80546C38
/* 80546C1C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546C20  7F E4 FB 78 */	mr r4, r31
/* 80546C24  38 A0 03 66 */	li r5, 0x366
/* 80546C28  38 C0 00 00 */	li r6, 0
/* 80546C2C  38 E0 00 00 */	li r7, 0
/* 80546C30  4B D0 33 61 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546C34  48 00 00 94 */	b lbl_80546CC8
lbl_80546C38:
/* 80546C38  38 60 00 80 */	li r3, 0x80
/* 80546C3C  48 00 39 3D */	bl dComIfGp_event_offHindFlag__FUs
/* 80546C40  88 1D 00 89 */	lbz r0, 0x89(r29)
/* 80546C44  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 80546C48  7C 00 1E 70 */	srawi r0, r0, 3
/* 80546C4C  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80546C50  7C 03 02 14 */	add r0, r3, r0
/* 80546C54  7C 03 07 34 */	extsh r3, r0
/* 80546C58  38 03 00 0B */	addi r0, r3, 0xb
/* 80546C5C  7C 03 07 34 */	extsh r3, r0
/* 80546C60  48 00 39 09 */	bl dComIfGp_setMessageCountNumber__Fl
/* 80546C64  88 1D 00 89 */	lbz r0, 0x89(r29)
/* 80546C68  28 00 00 00 */	cmplwi r0, 0
/* 80546C6C  40 82 00 20 */	bne lbl_80546C8C
/* 80546C70  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546C74  7F E4 FB 78 */	mr r4, r31
/* 80546C78  38 A0 03 48 */	li r5, 0x348
/* 80546C7C  38 C0 00 00 */	li r6, 0
/* 80546C80  38 E0 00 00 */	li r7, 0
/* 80546C84  4B D0 33 0D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546C88  48 00 00 40 */	b lbl_80546CC8
lbl_80546C8C:
/* 80546C8C  28 00 00 3F */	cmplwi r0, 0x3f
/* 80546C90  40 82 00 20 */	bne lbl_80546CB0
/* 80546C94  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546C98  7F E4 FB 78 */	mr r4, r31
/* 80546C9C  38 A0 03 70 */	li r5, 0x370
/* 80546CA0  38 C0 00 00 */	li r6, 0
/* 80546CA4  38 E0 00 00 */	li r7, 0
/* 80546CA8  4B D0 32 E9 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546CAC  48 00 00 1C */	b lbl_80546CC8
lbl_80546CB0:
/* 80546CB0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546CB4  7F E4 FB 78 */	mr r4, r31
/* 80546CB8  38 A0 03 4B */	li r5, 0x34b
/* 80546CBC  38 C0 00 00 */	li r6, 0
/* 80546CC0  38 E0 00 00 */	li r7, 0
/* 80546CC4  4B D0 32 CD */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80546CC8:
/* 80546CC8  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546CCC  7F E4 FB 78 */	mr r4, r31
/* 80546CD0  38 A0 00 00 */	li r5, 0
/* 80546CD4  38 C0 00 00 */	li r6, 0
/* 80546CD8  4B D0 36 01 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80546CDC  2C 03 00 00 */	cmpwi r3, 0
/* 80546CE0  41 82 15 68 */	beq lbl_80548248
/* 80546CE4  88 1F 07 B4 */	lbz r0, 0x7b4(r31)
/* 80546CE8  28 00 00 13 */	cmplwi r0, 0x13
/* 80546CEC  40 82 00 C0 */	bne lbl_80546DAC
/* 80546CF0  48 00 3C 05 */	bl dMsgObject_getSelectCursorPos__Fv
/* 80546CF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80546CF8  40 82 00 A0 */	bne lbl_80546D98
/* 80546CFC  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80546D00  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80546D04  A0 63 06 6A */	lhz r3, 0x66a(r3)
/* 80546D08  48 00 3B 51 */	bl dComIfGs_isEventBit__FUs
/* 80546D0C  2C 03 00 00 */	cmpwi r3, 0
/* 80546D10  41 82 00 30 */	beq lbl_80546D40
/* 80546D14  38 00 00 4D */	li r0, 0x4d
/* 80546D18  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546D1C  38 00 00 00 */	li r0, 0
/* 80546D20  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80546D24  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80546D28  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 80546D2C  38 63 06 04 */	addi r3, r3, g_blackColor@l /* 0x80450604@l */
/* 80546D30  4B AC 12 A9 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 80546D34  38 00 00 00 */	li r0, 0
/* 80546D38  90 1D 02 6C */	stw r0, 0x26c(r29)
/* 80546D3C  48 00 15 0C */	b lbl_80548248
lbl_80546D40:
/* 80546D40  48 00 39 B9 */	bl dComIfGs_getRupee__Fv
/* 80546D44  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80546D48  28 00 00 05 */	cmplwi r0, 5
/* 80546D4C  41 80 00 38 */	blt lbl_80546D84
/* 80546D50  38 00 00 46 */	li r0, 0x46
/* 80546D54  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546D58  38 00 00 00 */	li r0, 0
/* 80546D5C  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80546D60  38 60 FF FB */	li r3, -5
/* 80546D64  48 00 39 7D */	bl dComIfGp_setItemRupeeCount__Fl
/* 80546D68  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80546D6C  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 80546D70  38 63 06 04 */	addi r3, r3, g_blackColor@l /* 0x80450604@l */
/* 80546D74  4B AC 12 65 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 80546D78  38 00 00 00 */	li r0, 0
/* 80546D7C  90 1D 02 6C */	stw r0, 0x26c(r29)
/* 80546D80  48 00 14 C8 */	b lbl_80548248
lbl_80546D84:
/* 80546D84  38 00 00 00 */	li r0, 0
/* 80546D88  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80546D8C  38 00 00 2A */	li r0, 0x2a
/* 80546D90  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546D94  48 00 14 B4 */	b lbl_80548248
lbl_80546D98:
/* 80546D98  38 00 00 00 */	li r0, 0
/* 80546D9C  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80546DA0  38 00 00 2B */	li r0, 0x2b
/* 80546DA4  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546DA8  48 00 14 A0 */	b lbl_80548248
lbl_80546DAC:
/* 80546DAC  38 00 00 65 */	li r0, 0x65
/* 80546DB0  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546DB4  48 00 39 ED */	bl daPy_getPlayerActorClass__Fv
/* 80546DB8  48 00 37 A1 */	bl offPlayerNoDraw__9daPy_py_cFv
/* 80546DBC  A8 7F 05 BC */	lha r3, 0x5bc(r31)
/* 80546DC0  38 03 00 01 */	addi r0, r3, 1
/* 80546DC4  B0 1F 05 BC */	sth r0, 0x5bc(r31)
/* 80546DC8  88 1F 07 B4 */	lbz r0, 0x7b4(r31)
/* 80546DCC  28 00 00 10 */	cmplwi r0, 0x10
/* 80546DD0  40 82 14 78 */	bne lbl_80548248
/* 80546DD4  38 00 00 0A */	li r0, 0xa
/* 80546DD8  B0 1F 06 A4 */	sth r0, 0x6a4(r31)
/* 80546DDC  38 00 00 01 */	li r0, 1
/* 80546DE0  98 1F 07 08 */	stb r0, 0x708(r31)
/* 80546DE4  48 00 14 64 */	b lbl_80548248
lbl_80546DE8:
/* 80546DE8  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80546DEC  2C 00 00 01 */	cmpwi r0, 1
/* 80546DF0  40 82 00 1C */	bne lbl_80546E0C
/* 80546DF4  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546DF8  7F E4 FB 78 */	mr r4, r31
/* 80546DFC  38 A0 03 49 */	li r5, 0x349
/* 80546E00  38 C0 00 00 */	li r6, 0
/* 80546E04  38 E0 00 00 */	li r7, 0
/* 80546E08  4B D0 31 89 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80546E0C:
/* 80546E0C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546E10  7F E4 FB 78 */	mr r4, r31
/* 80546E14  38 A0 00 00 */	li r5, 0
/* 80546E18  38 C0 00 00 */	li r6, 0
/* 80546E1C  4B D0 34 BD */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80546E20  2C 03 00 00 */	cmpwi r3, 0
/* 80546E24  41 82 14 24 */	beq lbl_80548248
/* 80546E28  38 00 00 4B */	li r0, 0x4b
/* 80546E2C  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546E30  A8 7F 05 BC */	lha r3, 0x5bc(r31)
/* 80546E34  38 03 00 01 */	addi r0, r3, 1
/* 80546E38  B0 1F 05 BC */	sth r0, 0x5bc(r31)
/* 80546E3C  48 00 14 0C */	b lbl_80548248
lbl_80546E40:
/* 80546E40  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80546E44  2C 00 00 01 */	cmpwi r0, 1
/* 80546E48  40 82 14 00 */	bne lbl_80548248
/* 80546E4C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80546E50  7F E4 FB 78 */	mr r4, r31
/* 80546E54  38 A0 03 4A */	li r5, 0x34a
/* 80546E58  38 C0 00 00 */	li r6, 0
/* 80546E5C  38 E0 00 00 */	li r7, 0
/* 80546E60  4B D0 31 31 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80546E64  38 00 00 2A */	li r0, 0x2a
/* 80546E68  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546E6C  48 00 13 DC */	b lbl_80548248
lbl_80546E70:
/* 80546E70  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80546E74  48 00 39 4D */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80546E78  2C 03 00 00 */	cmpwi r3, 0
/* 80546E7C  40 82 00 60 */	bne lbl_80546EDC
/* 80546E80  7F E3 FB 78 */	mr r3, r31
/* 80546E84  38 80 00 02 */	li r4, 2
/* 80546E88  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80546E8C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80546E90  38 C0 00 00 */	li r6, 0
/* 80546E94  4B AD 4A 75 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80546E98  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80546E9C  38 80 00 02 */	li r4, 2
/* 80546EA0  48 00 39 11 */	bl onCondition__11dEvt_info_cFUs
/* 80546EA4  48 00 36 89 */	bl dComIfGp_event_reset__Fv
/* 80546EA8  38 61 00 54 */	addi r3, r1, 0x54
/* 80546EAC  38 80 FF FF */	li r4, -1
/* 80546EB0  4B FF C6 11 */	bl __dt__4cXyzFv
/* 80546EB4  38 61 00 60 */	addi r3, r1, 0x60
/* 80546EB8  38 80 FF FF */	li r4, -1
/* 80546EBC  4B FF C6 05 */	bl __dt__4cXyzFv
/* 80546EC0  38 61 00 6C */	addi r3, r1, 0x6c
/* 80546EC4  38 80 FF FF */	li r4, -1
/* 80546EC8  4B FF C5 F9 */	bl __dt__4cXyzFv
/* 80546ECC  38 61 00 78 */	addi r3, r1, 0x78
/* 80546ED0  38 80 FF FF */	li r4, -1
/* 80546ED4  4B FF C5 ED */	bl __dt__4cXyzFv
/* 80546ED8  48 00 15 04 */	b lbl_805483DC
lbl_80546EDC:
/* 80546EDC  38 7C 02 48 */	addi r3, r28, 0x248
/* 80546EE0  4B C1 A5 F1 */	bl Stop__9dCamera_cFv
/* 80546EE4  38 00 00 33 */	li r0, 0x33
/* 80546EE8  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80546EEC  38 00 00 00 */	li r0, 0
/* 80546EF0  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80546EF4  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80546EF8  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 80546EFC  38 7C 02 48 */	addi r3, r28, 0x248
/* 80546F00  38 80 00 01 */	li r4, 1
/* 80546F04  4B C1 C1 09 */	bl SetTrimSize__9dCamera_cFl
/* 80546F08  48 00 38 99 */	bl daPy_getPlayerActorClass__Fv
/* 80546F0C  48 00 38 81 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80546F10  48 00 38 91 */	bl daPy_getPlayerActorClass__Fv
/* 80546F14  38 80 00 01 */	li r4, 1
/* 80546F18  38 A0 00 00 */	li r5, 0
/* 80546F1C  38 C0 00 00 */	li r6, 0
/* 80546F20  38 E0 00 00 */	li r7, 0
/* 80546F24  48 00 38 55 */	bl changeDemoMode__9daPy_py_cFUliis
/* 80546F28  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80546F2C  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 80546F30  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80546F34  C0 3E 01 80 */	lfs f1, 0x180(r30)
/* 80546F38  C0 5E 01 70 */	lfs f2, 0x170(r30)
/* 80546F3C  C0 7E 01 84 */	lfs f3, 0x184(r30)
/* 80546F40  48 00 37 D5 */	bl set__4cXyzFfff
/* 80546F44  38 7F 07 60 */	addi r3, r31, 0x760
/* 80546F48  C0 3E 01 88 */	lfs f1, 0x188(r30)
/* 80546F4C  C0 5E 01 8C */	lfs f2, 0x18c(r30)
/* 80546F50  C0 7E 01 90 */	lfs f3, 0x190(r30)
/* 80546F54  48 00 37 C1 */	bl set__4cXyzFfff
/* 80546F58  38 7F 07 84 */	addi r3, r31, 0x784
/* 80546F5C  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 80546F60  C0 5E 01 70 */	lfs f2, 0x170(r30)
/* 80546F64  C0 7E 01 98 */	lfs f3, 0x198(r30)
/* 80546F68  48 00 37 AD */	bl set__4cXyzFfff
/* 80546F6C  38 7F 07 78 */	addi r3, r31, 0x778
/* 80546F70  C0 3E 01 88 */	lfs f1, 0x188(r30)
/* 80546F74  C0 5E 01 8C */	lfs f2, 0x18c(r30)
/* 80546F78  C0 7E 01 90 */	lfs f3, 0x190(r30)
/* 80546F7C  48 00 37 99 */	bl set__4cXyzFfff
/* 80546F80  C0 3F 07 78 */	lfs f1, 0x778(r31)
/* 80546F84  C0 1F 07 60 */	lfs f0, 0x760(r31)
/* 80546F88  EC 21 00 28 */	fsubs f1, f1, f0
/* 80546F8C  48 00 37 7D */	bl fabsf__3stdFf
/* 80546F90  D0 3F 07 90 */	stfs f1, 0x790(r31)
/* 80546F94  C0 3F 07 7C */	lfs f1, 0x77c(r31)
/* 80546F98  C0 1F 07 64 */	lfs f0, 0x764(r31)
/* 80546F9C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80546FA0  48 00 37 69 */	bl fabsf__3stdFf
/* 80546FA4  D0 3F 07 94 */	stfs f1, 0x794(r31)
/* 80546FA8  C0 3F 07 80 */	lfs f1, 0x780(r31)
/* 80546FAC  C0 1F 07 68 */	lfs f0, 0x768(r31)
/* 80546FB0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80546FB4  48 00 37 55 */	bl fabsf__3stdFf
/* 80546FB8  D0 3F 07 98 */	stfs f1, 0x798(r31)
/* 80546FBC  C0 3F 07 84 */	lfs f1, 0x784(r31)
/* 80546FC0  C0 1F 07 6C */	lfs f0, 0x76c(r31)
/* 80546FC4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80546FC8  48 00 37 41 */	bl fabsf__3stdFf
/* 80546FCC  D0 3F 07 9C */	stfs f1, 0x79c(r31)
/* 80546FD0  C0 3F 07 88 */	lfs f1, 0x788(r31)
/* 80546FD4  C0 1F 07 70 */	lfs f0, 0x770(r31)
/* 80546FD8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80546FDC  48 00 37 2D */	bl fabsf__3stdFf
/* 80546FE0  D0 3F 07 A0 */	stfs f1, 0x7a0(r31)
/* 80546FE4  C0 3F 07 8C */	lfs f1, 0x78c(r31)
/* 80546FE8  C0 1F 07 74 */	lfs f0, 0x774(r31)
/* 80546FEC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80546FF0  48 00 37 19 */	bl fabsf__3stdFf
/* 80546FF4  D0 3F 07 A4 */	stfs f1, 0x7a4(r31)
lbl_80546FF8:
/* 80546FF8  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80546FFC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80547000  41 80 12 48 */	blt lbl_80548248
/* 80547004  40 82 00 E0 */	bne lbl_805470E4
/* 80547008  3C 60 80 45 */	lis r3, struct_80450C98+0x2@ha /* 0x80450C9A@ha */
/* 8054700C  88 03 0C 9A */	lbz r0, struct_80450C98+0x2@l(r3)  /* 0x80450C9A@l */
/* 80547010  28 00 00 00 */	cmplwi r0, 0
/* 80547014  40 82 00 20 */	bne lbl_80547034
/* 80547018  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8054701C  7F E4 FB 78 */	mr r4, r31
/* 80547020  38 A0 03 28 */	li r5, 0x328
/* 80547024  38 C0 00 00 */	li r6, 0
/* 80547028  38 E0 00 00 */	li r7, 0
/* 8054702C  4B D0 2F 65 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80547030  48 00 00 B4 */	b lbl_805470E4
lbl_80547034:
/* 80547034  3C 60 80 45 */	lis r3, struct_80450C98+0x3@ha /* 0x80450C9B@ha */
/* 80547038  88 03 0C 9B */	lbz r0, struct_80450C98+0x3@l(r3)  /* 0x80450C9B@l */
/* 8054703C  28 00 00 02 */	cmplwi r0, 2
/* 80547040  40 82 00 20 */	bne lbl_80547060
/* 80547044  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547048  7F E4 FB 78 */	mr r4, r31
/* 8054704C  38 A0 03 29 */	li r5, 0x329
/* 80547050  38 C0 00 00 */	li r6, 0
/* 80547054  38 E0 00 00 */	li r7, 0
/* 80547058  4B D0 2F 39 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8054705C  48 00 00 88 */	b lbl_805470E4
lbl_80547060:
/* 80547060  28 00 00 03 */	cmplwi r0, 3
/* 80547064  40 82 00 20 */	bne lbl_80547084
/* 80547068  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8054706C  7F E4 FB 78 */	mr r4, r31
/* 80547070  38 A0 03 2A */	li r5, 0x32a
/* 80547074  38 C0 00 00 */	li r6, 0
/* 80547078  38 E0 00 00 */	li r7, 0
/* 8054707C  4B D0 2F 15 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80547080  48 00 00 64 */	b lbl_805470E4
lbl_80547084:
/* 80547084  28 00 00 04 */	cmplwi r0, 4
/* 80547088  40 82 00 20 */	bne lbl_805470A8
/* 8054708C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547090  7F E4 FB 78 */	mr r4, r31
/* 80547094  38 A0 03 2B */	li r5, 0x32b
/* 80547098  38 C0 00 00 */	li r6, 0
/* 8054709C  38 E0 00 00 */	li r7, 0
/* 805470A0  4B D0 2E F1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805470A4  48 00 00 40 */	b lbl_805470E4
lbl_805470A8:
/* 805470A8  28 00 00 01 */	cmplwi r0, 1
/* 805470AC  40 82 00 20 */	bne lbl_805470CC
/* 805470B0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805470B4  7F E4 FB 78 */	mr r4, r31
/* 805470B8  38 A0 03 2D */	li r5, 0x32d
/* 805470BC  38 C0 00 00 */	li r6, 0
/* 805470C0  38 E0 00 00 */	li r7, 0
/* 805470C4  4B D0 2E CD */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805470C8  48 00 00 1C */	b lbl_805470E4
lbl_805470CC:
/* 805470CC  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805470D0  7F E4 FB 78 */	mr r4, r31
/* 805470D4  38 A0 03 2C */	li r5, 0x32c
/* 805470D8  38 C0 00 00 */	li r6, 0
/* 805470DC  38 E0 00 00 */	li r7, 0
/* 805470E0  4B D0 2E B1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_805470E4:
/* 805470E4  3C 60 80 45 */	lis r3, struct_80450C98+0x3@ha /* 0x80450C9B@ha */
/* 805470E8  88 03 0C 9B */	lbz r0, struct_80450C98+0x3@l(r3)  /* 0x80450C9B@l */
/* 805470EC  28 00 00 02 */	cmplwi r0, 2
/* 805470F0  41 80 00 38 */	blt lbl_80547128
/* 805470F4  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805470F8  7F E4 FB 78 */	mr r4, r31
/* 805470FC  38 A0 00 00 */	li r5, 0
/* 80547100  38 C0 00 00 */	li r6, 0
/* 80547104  4B D0 31 D5 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80547108  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 8054710C  2C 00 00 32 */	cmpwi r0, 0x32
/* 80547110  40 81 11 38 */	ble lbl_80548248
/* 80547114  38 00 00 34 */	li r0, 0x34
/* 80547118  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 8054711C  38 00 00 00 */	li r0, 0
/* 80547120  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80547124  48 00 11 24 */	b lbl_80548248
lbl_80547128:
/* 80547128  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8054712C  7F E4 FB 78 */	mr r4, r31
/* 80547130  38 A0 00 00 */	li r5, 0
/* 80547134  38 C0 00 00 */	li r6, 0
/* 80547138  4B D0 31 A1 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8054713C  2C 03 00 00 */	cmpwi r3, 0
/* 80547140  41 82 11 08 */	beq lbl_80548248
/* 80547144  38 00 00 64 */	li r0, 0x64
/* 80547148  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 8054714C  48 00 10 FC */	b lbl_80548248
lbl_80547150:
/* 80547150  38 60 00 00 */	li r3, 0
/* 80547154  48 00 33 BD */	bl getTrigA__8mDoCPd_cFUl
/* 80547158  28 03 00 00 */	cmplwi r3, 0
/* 8054715C  41 82 00 18 */	beq lbl_80547174
/* 80547160  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547164  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80547168  40 80 00 0C */	bge lbl_80547174
/* 8054716C  38 00 00 1E */	li r0, 0x1e
/* 80547170  B0 1F 07 54 */	sth r0, 0x754(r31)
lbl_80547174:
/* 80547174  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547178  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8054717C  41 80 00 44 */	blt lbl_805471C0
/* 80547180  7F E3 FB 78 */	mr r3, r31
/* 80547184  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 80547188  4B FF DF 21 */	bl cam_3d_morf__FP15npc_henna_classf
/* 8054718C  38 7F 07 C0 */	addi r3, r31, 0x7c0
/* 80547190  C0 3E 01 A0 */	lfs f1, 0x1a0(r30)
/* 80547194  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80547198  C0 7E 01 A4 */	lfs f3, 0x1a4(r30)
/* 8054719C  4B D2 88 A1 */	bl cLib_addCalc2__FPffff
/* 805471A0  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 805471A4  2C 00 00 32 */	cmpwi r0, 0x32
/* 805471A8  40 81 00 18 */	ble lbl_805471C0
/* 805471AC  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 805471B0  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 805471B4  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 805471B8  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805471BC  4B D2 88 81 */	bl cLib_addCalc2__FPffff
lbl_805471C0:
/* 805471C0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805471C4  7F E4 FB 78 */	mr r4, r31
/* 805471C8  38 A0 00 00 */	li r5, 0
/* 805471CC  38 C0 00 00 */	li r6, 0
/* 805471D0  4B D0 31 09 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 805471D4  2C 03 00 00 */	cmpwi r3, 0
/* 805471D8  41 82 10 70 */	beq lbl_80548248
/* 805471DC  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 805471E0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 805471E4  40 81 10 64 */	ble lbl_80548248
/* 805471E8  48 00 35 B9 */	bl daPy_getPlayerActorClass__Fv
/* 805471EC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805471F0  38 A0 B0 1C */	li r5, -20452
/* 805471F4  38 C0 00 00 */	li r6, 0
/* 805471F8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805471FC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80547200  7D 89 03 A6 */	mtctr r12
/* 80547204  4E 80 04 21 */	bctrl 
/* 80547208  38 00 00 35 */	li r0, 0x35
/* 8054720C  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80547210  38 00 00 00 */	li r0, 0
/* 80547214  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80547218  48 00 10 30 */	b lbl_80548248
lbl_8054721C:
/* 8054721C  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547220  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80547224  40 81 10 24 */	ble lbl_80548248
/* 80547228  38 00 00 64 */	li r0, 0x64
/* 8054722C  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80547230  48 00 10 18 */	b lbl_80548248
lbl_80547234:
/* 80547234  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80547238  48 00 35 89 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 8054723C  2C 03 00 00 */	cmpwi r3, 0
/* 80547240  40 82 00 5C */	bne lbl_8054729C
/* 80547244  7F E3 FB 78 */	mr r3, r31
/* 80547248  38 80 00 02 */	li r4, 2
/* 8054724C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80547250  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80547254  38 C0 00 00 */	li r6, 0
/* 80547258  4B AD 46 B1 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8054725C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80547260  38 80 00 02 */	li r4, 2
/* 80547264  48 00 35 4D */	bl onCondition__11dEvt_info_cFUs
/* 80547268  38 61 00 54 */	addi r3, r1, 0x54
/* 8054726C  38 80 FF FF */	li r4, -1
/* 80547270  4B FF C2 51 */	bl __dt__4cXyzFv
/* 80547274  38 61 00 60 */	addi r3, r1, 0x60
/* 80547278  38 80 FF FF */	li r4, -1
/* 8054727C  4B FF C2 45 */	bl __dt__4cXyzFv
/* 80547280  38 61 00 6C */	addi r3, r1, 0x6c
/* 80547284  38 80 FF FF */	li r4, -1
/* 80547288  4B FF C2 39 */	bl __dt__4cXyzFv
/* 8054728C  38 61 00 78 */	addi r3, r1, 0x78
/* 80547290  38 80 FF FF */	li r4, -1
/* 80547294  4B FF C2 2D */	bl __dt__4cXyzFv
/* 80547298  48 00 11 44 */	b lbl_805483DC
lbl_8054729C:
/* 8054729C  38 7C 02 48 */	addi r3, r28, 0x248
/* 805472A0  4B C1 A2 31 */	bl Stop__9dCamera_cFv
/* 805472A4  38 00 00 3D */	li r0, 0x3d
/* 805472A8  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 805472AC  38 00 00 00 */	li r0, 0
/* 805472B0  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 805472B4  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 805472B8  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 805472BC  38 7C 02 48 */	addi r3, r28, 0x248
/* 805472C0  38 80 00 01 */	li r4, 1
/* 805472C4  4B C1 BD 49 */	bl SetTrimSize__9dCamera_cFl
/* 805472C8  48 00 34 D9 */	bl daPy_getPlayerActorClass__Fv
/* 805472CC  48 00 34 C1 */	bl changeOriginalDemo__9daPy_py_cFv
/* 805472D0  48 00 34 D1 */	bl daPy_getPlayerActorClass__Fv
/* 805472D4  38 80 00 01 */	li r4, 1
/* 805472D8  38 A0 00 00 */	li r5, 0
/* 805472DC  38 C0 00 00 */	li r6, 0
/* 805472E0  38 E0 00 00 */	li r7, 0
/* 805472E4  48 00 34 95 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805472E8:
/* 805472E8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805472EC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805472F0  80 63 00 00 */	lwz r3, 0(r3)
/* 805472F4  A8 9F 06 20 */	lha r4, 0x620(r31)
/* 805472F8  48 00 34 61 */	bl cMtx_YrotS__FPA4_fs
/* 805472FC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80547300  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80547304  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 80547308  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8054730C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80547310  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80547314  38 61 00 78 */	addi r3, r1, 0x78
/* 80547318  38 9F 07 60 */	addi r4, r31, 0x760
/* 8054731C  4B D2 9B D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80547320  38 7F 07 60 */	addi r3, r31, 0x760
/* 80547324  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80547328  48 00 33 FD */	bl __apl__4cXyzFRC3Vec
/* 8054732C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80547330  D0 1F 07 6C */	stfs f0, 0x76c(r31)
/* 80547334  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80547338  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8054733C  EC 01 00 2A */	fadds f0, f1, f0
/* 80547340  D0 1F 07 70 */	stfs f0, 0x770(r31)
/* 80547344  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80547348  D0 1F 07 74 */	stfs f0, 0x774(r31)
/* 8054734C  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 80547350  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80547354  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80547358  C0 7E 00 90 */	lfs f3, 0x90(r30)
/* 8054735C  4B D2 86 E1 */	bl cLib_addCalc2__FPffff
/* 80547360  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547364  2C 00 00 00 */	cmpwi r0, 0
/* 80547368  40 82 00 3C */	bne lbl_805473A4
/* 8054736C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547370  7F E4 FB 78 */	mr r4, r31
/* 80547374  38 A0 03 55 */	li r5, 0x355
/* 80547378  38 C0 00 00 */	li r6, 0
/* 8054737C  38 E0 00 00 */	li r7, 0
/* 80547380  4B D0 2C 11 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80547384  7F E3 FB 78 */	mr r3, r31
/* 80547388  38 80 00 12 */	li r4, 0x12
/* 8054738C  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 80547390  38 A0 00 02 */	li r5, 2
/* 80547394  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80547398  4B FF BC 01 */	bl anm_init__FP15npc_henna_classifUcf
/* 8054739C  38 00 00 02 */	li r0, 2
/* 805473A0  90 1F 06 88 */	stw r0, 0x688(r31)
lbl_805473A4:
/* 805473A4  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805473A8  7F E4 FB 78 */	mr r4, r31
/* 805473AC  38 A0 00 00 */	li r5, 0
/* 805473B0  38 C0 00 00 */	li r6, 0
/* 805473B4  4B D0 2F 25 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 805473B8  2C 03 00 00 */	cmpwi r3, 0
/* 805473BC  41 82 0E 8C */	beq lbl_80548248
/* 805473C0  38 00 00 00 */	li r0, 0
/* 805473C4  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 805473C8  38 00 00 3E */	li r0, 0x3e
/* 805473CC  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 805473D0  7F E3 FB 78 */	mr r3, r31
/* 805473D4  38 80 00 20 */	li r4, 0x20
/* 805473D8  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 805473DC  38 A0 00 02 */	li r5, 2
/* 805473E0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805473E4  4B FF BB B5 */	bl anm_init__FP15npc_henna_classifUcf
/* 805473E8  48 00 0E 60 */	b lbl_80548248
lbl_805473EC:
/* 805473EC  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 805473F0  2C 00 00 01 */	cmpwi r0, 1
/* 805473F4  41 80 0E 54 */	blt lbl_80548248
/* 805473F8  40 82 00 1C */	bne lbl_80547414
/* 805473FC  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547400  7F E4 FB 78 */	mr r4, r31
/* 80547404  38 A0 03 56 */	li r5, 0x356
/* 80547408  38 C0 00 00 */	li r6, 0
/* 8054740C  38 E0 00 00 */	li r7, 0
/* 80547410  4B D0 2B 81 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80547414:
/* 80547414  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547418  2C 00 00 05 */	cmpwi r0, 5
/* 8054741C  40 82 00 0C */	bne lbl_80547428
/* 80547420  38 00 00 02 */	li r0, 2
/* 80547424  90 1F 06 88 */	stw r0, 0x688(r31)
lbl_80547428:
/* 80547428  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8054742C  7F E4 FB 78 */	mr r4, r31
/* 80547430  38 A0 00 00 */	li r5, 0
/* 80547434  38 C0 00 00 */	li r6, 0
/* 80547438  4B D0 2E A1 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8054743C  2C 03 00 00 */	cmpwi r3, 0
/* 80547440  41 82 0E 08 */	beq lbl_80548248
/* 80547444  38 00 00 00 */	li r0, 0
/* 80547448  90 1F 06 88 */	stw r0, 0x688(r31)
/* 8054744C  38 00 00 64 */	li r0, 0x64
/* 80547450  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80547454  48 00 0D F4 */	b lbl_80548248
lbl_80547458:
/* 80547458  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 8054745C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80547460  40 82 00 6C */	bne lbl_805474CC
/* 80547464  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 80547468  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 8054746C  7F E4 FB 78 */	mr r4, r31
/* 80547470  48 00 30 81 */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547474  28 03 00 00 */	cmplwi r3, 0
/* 80547478  41 82 00 0C */	beq lbl_80547484
/* 8054747C  38 00 00 01 */	li r0, 1
/* 80547480  B0 03 40 10 */	sth r0, 0x4010(r3)
lbl_80547484:
/* 80547484  38 61 00 6C */	addi r3, r1, 0x6c
/* 80547488  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 8054748C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80547490  C0 7E 01 AC */	lfs f3, 0x1ac(r30)
/* 80547494  48 00 32 81 */	bl set__4cXyzFfff
/* 80547498  48 00 33 09 */	bl daPy_getPlayerActorClass__Fv
/* 8054749C  38 81 00 6C */	addi r4, r1, 0x6c
/* 805474A0  38 A0 40 00 */	li r5, 0x4000
/* 805474A4  38 C0 00 00 */	li r6, 0
/* 805474A8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805474AC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805474B0  7D 89 03 A6 */	mtctr r12
/* 805474B4  4E 80 04 21 */	bctrl 
/* 805474B8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 805474BC  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 805474C0  38 7C 02 48 */	addi r3, r28, 0x248
/* 805474C4  38 80 00 01 */	li r4, 1
/* 805474C8  4B C1 BB 45 */	bl SetTrimSize__9dCamera_cFl
lbl_805474CC:
/* 805474CC  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 805474D0  2C 00 00 0B */	cmpwi r0, 0xb
/* 805474D4  40 82 00 50 */	bne lbl_80547524
/* 805474D8  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 805474DC  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 805474E0  7F E4 FB 78 */	mr r4, r31
/* 805474E4  48 00 30 0D */	bl fpcM_Search__FPFPvPv_PvPv
/* 805474E8  7C 78 1B 78 */	mr r24, r3
/* 805474EC  38 7F 07 6C */	addi r3, r31, 0x76c
/* 805474F0  38 98 40 14 */	addi r4, r24, 0x4014
/* 805474F4  48 00 32 E1 */	bl __as__4cXyzFRC4cXyz
/* 805474F8  38 7F 07 60 */	addi r3, r31, 0x760
/* 805474FC  38 98 40 14 */	addi r4, r24, 0x4014
/* 80547500  48 00 32 D5 */	bl __as__4cXyzFRC4cXyz
/* 80547504  C0 3F 07 60 */	lfs f1, 0x760(r31)
/* 80547508  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 8054750C  EC 01 00 2A */	fadds f0, f1, f0
/* 80547510  D0 1F 07 60 */	stfs f0, 0x760(r31)
/* 80547514  C0 3F 07 64 */	lfs f1, 0x764(r31)
/* 80547518  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 8054751C  EC 01 00 2A */	fadds f0, f1, f0
/* 80547520  D0 1F 07 64 */	stfs f0, 0x764(r31)
lbl_80547524:
/* 80547524  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547528  2C 00 00 12 */	cmpwi r0, 0x12
/* 8054752C  40 82 00 24 */	bne lbl_80547550
/* 80547530  3C 60 80 54 */	lis r3, s_koro2ball_sub__FPvPv@ha /* 0x805437E8@ha */
/* 80547534  38 63 37 E8 */	addi r3, r3, s_koro2ball_sub__FPvPv@l /* 0x805437E8@l */
/* 80547538  7F E4 FB 78 */	mr r4, r31
/* 8054753C  48 00 2F B5 */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547540  28 03 00 00 */	cmplwi r3, 0
/* 80547544  41 82 00 0C */	beq lbl_80547550
/* 80547548  38 00 00 01 */	li r0, 1
/* 8054754C  B0 03 05 72 */	sth r0, 0x572(r3)
lbl_80547550:
/* 80547550  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547554  2C 00 00 14 */	cmpwi r0, 0x14
/* 80547558  40 82 0C F0 */	bne lbl_80548248
/* 8054755C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80547560  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 80547564  38 63 06 04 */	addi r3, r3, g_blackColor@l /* 0x80450604@l */
/* 80547568  48 00 2F 65 */	bl fadeIn__13mDoGph_gInf_cFfR8_GXColor
/* 8054756C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547570  7F E4 FB 78 */	mr r4, r31
/* 80547574  38 A0 03 4C */	li r5, 0x34c
/* 80547578  38 C0 00 00 */	li r6, 0
/* 8054757C  38 E0 00 00 */	li r7, 0
/* 80547580  4B D0 2A 11 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80547584  38 00 00 47 */	li r0, 0x47
/* 80547588  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 8054758C  38 00 00 00 */	li r0, 0
/* 80547590  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80547594  38 00 00 C8 */	li r0, 0xc8
/* 80547598  B0 1F 07 56 */	sth r0, 0x756(r31)
/* 8054759C  48 00 0C AC */	b lbl_80548248
lbl_805475A0:
/* 805475A0  38 00 00 00 */	li r0, 0
/* 805475A4  98 1F 07 B9 */	stb r0, 0x7b9(r31)
/* 805475A8  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 805475AC  2C 00 00 02 */	cmpwi r0, 2
/* 805475B0  41 80 0C 98 */	blt lbl_80548248
/* 805475B4  40 82 00 5C */	bne lbl_80547610
/* 805475B8  38 A1 00 80 */	addi r5, r1, 0x80
/* 805475BC  38 9E 00 F4 */	addi r4, r30, 0xf4
/* 805475C0  38 00 00 04 */	li r0, 4
/* 805475C4  7C 09 03 A6 */	mtctr r0
lbl_805475C8:
/* 805475C8  80 64 00 04 */	lwz r3, 4(r4)
/* 805475CC  84 04 00 08 */	lwzu r0, 8(r4)
/* 805475D0  90 65 00 04 */	stw r3, 4(r5)
/* 805475D4  94 05 00 08 */	stwu r0, 8(r5)
/* 805475D8  42 00 FF F0 */	bdnz lbl_805475C8
/* 805475DC  38 60 00 06 */	li r3, 6
/* 805475E0  88 1D 00 89 */	lbz r0, 0x89(r29)
/* 805475E4  7C 00 1E 70 */	srawi r0, r0, 3
/* 805475E8  54 00 10 3A */	slwi r0, r0, 2
/* 805475EC  38 81 00 84 */	addi r4, r1, 0x84
/* 805475F0  7C 84 00 2E */	lwzx r4, r4, r0
/* 805475F4  38 A0 00 01 */	li r5, 1
/* 805475F8  38 C0 00 00 */	li r6, 0
/* 805475FC  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80547600  C0 5E 01 BC */	lfs f2, 0x1bc(r30)
/* 80547604  C0 7E 01 C0 */	lfs f3, 0x1c0(r30)
/* 80547608  C0 9E 01 C4 */	lfs f4, 0x1c4(r30)
/* 8054760C  4B D1 99 81 */	bl dTimer_createTimer__FlUlUcUcffff
lbl_80547610:
/* 80547610  48 00 2E 91 */	bl dComIfG_getTimerPtr__Fv
/* 80547614  28 03 00 00 */	cmplwi r3, 0
/* 80547618  41 82 0C 30 */	beq lbl_80548248
/* 8054761C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547620  7F E4 FB 78 */	mr r4, r31
/* 80547624  38 A0 00 00 */	li r5, 0
/* 80547628  38 C0 00 00 */	li r6, 0
/* 8054762C  4B D0 2C AD */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80547630  2C 03 00 00 */	cmpwi r3, 0
/* 80547634  41 82 0C 14 */	beq lbl_80548248
/* 80547638  38 00 00 48 */	li r0, 0x48
/* 8054763C  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80547640  38 60 00 06 */	li r3, 6
/* 80547644  38 80 00 00 */	li r4, 0
/* 80547648  4B AE 7E E5 */	bl dComIfG_TimerStart__Fis
/* 8054764C  48 00 2E 45 */	bl Z2GetAudioMgr__Fv
/* 80547650  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000091@ha */
/* 80547654  38 84 00 91 */	addi r4, r4, 0x0091 /* 0x01000091@l */
/* 80547658  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8054765C  4B D6 7E 41 */	bl subBgmStart__8Z2SeqMgrFUl
/* 80547660  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 80547664  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 80547668  7F E4 FB 78 */	mr r4, r31
/* 8054766C  48 00 2E 85 */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547670  38 00 00 00 */	li r0, 0
/* 80547674  B0 03 40 62 */	sth r0, 0x4062(r3)
/* 80547678  B0 03 40 60 */	sth r0, 0x4060(r3)
/* 8054767C  3C 60 80 54 */	lis r3, s_koro2ball_sub__FPvPv@ha /* 0x805437E8@ha */
/* 80547680  38 63 37 E8 */	addi r3, r3, s_koro2ball_sub__FPvPv@l /* 0x805437E8@l */
/* 80547684  7F E4 FB 78 */	mr r4, r31
/* 80547688  48 00 2E 69 */	bl fpcM_Search__FPFPvPv_PvPv
/* 8054768C  28 03 00 00 */	cmplwi r3, 0
/* 80547690  41 82 0B B8 */	beq lbl_80548248
/* 80547694  38 00 00 01 */	li r0, 1
/* 80547698  B0 03 05 72 */	sth r0, 0x572(r3)
/* 8054769C  48 00 0B AC */	b lbl_80548248
lbl_805476A0:
/* 805476A0  88 1F 07 B9 */	lbz r0, 0x7b9(r31)
/* 805476A4  28 00 00 00 */	cmplwi r0, 0
/* 805476A8  40 82 00 84 */	bne lbl_8054772C
/* 805476AC  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 805476B0  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 805476B4  7F E4 FB 78 */	mr r4, r31
/* 805476B8  48 00 2E 39 */	bl fpcM_Search__FPFPvPv_PvPv
/* 805476BC  7C 78 1B 79 */	or. r24, r3, r3
/* 805476C0  41 82 00 6C */	beq lbl_8054772C
/* 805476C4  4B D1 9B 2D */	bl dTimer_isStart__Fv
/* 805476C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805476CC  41 82 00 60 */	beq lbl_8054772C
/* 805476D0  38 00 00 02 */	li r0, 2
/* 805476D4  B0 18 40 10 */	sth r0, 0x4010(r24)
/* 805476D8  38 80 00 01 */	li r4, 1
/* 805476DC  98 9F 07 B9 */	stb r4, 0x7b9(r31)
/* 805476E0  38 60 00 00 */	li r3, 0
/* 805476E4  38 00 00 64 */	li r0, 0x64
/* 805476E8  7C 09 03 A6 */	mtctr r0
lbl_805476EC:
/* 805476EC  80 18 40 08 */	lwz r0, 0x4008(r24)
/* 805476F0  7C C0 1A 14 */	add r6, r0, r3
/* 805476F4  88 A6 42 C4 */	lbz r5, 0x42c4(r6)
/* 805476F8  7C A0 07 74 */	extsb r0, r5
/* 805476FC  2C 00 00 02 */	cmpwi r0, 2
/* 80547700  41 80 00 0C */	blt lbl_8054770C
/* 80547704  2C 00 00 05 */	cmpwi r0, 5
/* 80547708  40 81 00 18 */	ble lbl_80547720
lbl_8054770C:
/* 8054770C  7C A0 07 74 */	extsb r0, r5
/* 80547710  2C 00 00 08 */	cmpwi r0, 8
/* 80547714  41 80 00 10 */	blt lbl_80547724
/* 80547718  2C 00 00 0B */	cmpwi r0, 0xb
/* 8054771C  41 81 00 08 */	bgt lbl_80547724
lbl_80547720:
/* 80547720  98 86 42 F0 */	stb r4, 0x42f0(r6)
lbl_80547724:
/* 80547724  38 63 00 68 */	addi r3, r3, 0x68
/* 80547728  42 00 FF C4 */	bdnz lbl_805476EC
lbl_8054772C:
/* 8054772C  3C 60 80 54 */	lis r3, s_koro2ball_sub__FPvPv@ha /* 0x805437E8@ha */
/* 80547730  38 63 37 E8 */	addi r3, r3, s_koro2ball_sub__FPvPv@l /* 0x805437E8@l */
/* 80547734  7F E4 FB 78 */	mr r4, r31
/* 80547738  48 00 2D B9 */	bl fpcM_Search__FPFPvPv_PvPv
/* 8054773C  7C 78 1B 78 */	mr r24, r3
/* 80547740  38 61 00 54 */	addi r3, r1, 0x54
/* 80547744  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 80547748  48 00 30 8D */	bl __as__4cXyzFRC4cXyz
/* 8054774C  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 80547750  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 80547754  7F E4 FB 78 */	mr r4, r31
/* 80547758  48 00 2D 99 */	bl fpcM_Search__FPFPvPv_PvPv
/* 8054775C  7C 64 1B 78 */	mr r4, r3
/* 80547760  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80547764  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80547768  80 63 00 00 */	lwz r3, 0(r3)
/* 8054776C  A8 84 40 60 */	lha r4, 0x4060(r4)
/* 80547770  48 00 2F E9 */	bl cMtx_YrotS__FPA4_fs
/* 80547774  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 80547778  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8054777C  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 80547780  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80547784  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80547788  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8054778C  38 61 00 78 */	addi r3, r1, 0x78
/* 80547790  38 81 00 60 */	addi r4, r1, 0x60
/* 80547794  4B D2 97 59 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80547798  38 61 00 60 */	addi r3, r1, 0x60
/* 8054779C  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 805477A0  48 00 2F 85 */	bl __apl__4cXyzFRC3Vec
/* 805477A4  80 1D 02 6C */	lwz r0, 0x26c(r29)
/* 805477A8  2C 00 00 00 */	cmpwi r0, 0
/* 805477AC  41 82 00 28 */	beq lbl_805477D4
/* 805477B0  38 00 00 00 */	li r0, 0
/* 805477B4  90 1D 02 6C */	stw r0, 0x26c(r29)
/* 805477B8  38 7F 07 6C */	addi r3, r31, 0x76c
/* 805477BC  38 81 00 54 */	addi r4, r1, 0x54
/* 805477C0  48 00 30 15 */	bl __as__4cXyzFRC4cXyz
/* 805477C4  38 7F 07 60 */	addi r3, r31, 0x760
/* 805477C8  38 81 00 60 */	addi r4, r1, 0x60
/* 805477CC  48 00 30 09 */	bl __as__4cXyzFRC4cXyz
/* 805477D0  48 00 00 7C */	b lbl_8054784C
lbl_805477D4:
/* 805477D4  38 7F 07 6C */	addi r3, r31, 0x76c
/* 805477D8  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 805477DC  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 805477E0  C0 7E 00 C8 */	lfs f3, 0xc8(r30)
/* 805477E4  4B D2 82 59 */	bl cLib_addCalc2__FPffff
/* 805477E8  38 7F 07 70 */	addi r3, r31, 0x770
/* 805477EC  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 805477F0  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 805477F4  C0 7E 00 C8 */	lfs f3, 0xc8(r30)
/* 805477F8  4B D2 82 45 */	bl cLib_addCalc2__FPffff
/* 805477FC  38 7F 07 74 */	addi r3, r31, 0x774
/* 80547800  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80547804  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 80547808  C0 7E 00 C8 */	lfs f3, 0xc8(r30)
/* 8054780C  4B D2 82 31 */	bl cLib_addCalc2__FPffff
/* 80547810  38 7F 07 60 */	addi r3, r31, 0x760
/* 80547814  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80547818  C0 5E 01 9C */	lfs f2, 0x19c(r30)
/* 8054781C  C0 7E 01 28 */	lfs f3, 0x128(r30)
/* 80547820  4B D2 82 1D */	bl cLib_addCalc2__FPffff
/* 80547824  38 7F 07 64 */	addi r3, r31, 0x764
/* 80547828  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8054782C  C0 5E 01 9C */	lfs f2, 0x19c(r30)
/* 80547830  C0 7E 01 28 */	lfs f3, 0x128(r30)
/* 80547834  4B D2 82 09 */	bl cLib_addCalc2__FPffff
/* 80547838  38 7F 07 68 */	addi r3, r31, 0x768
/* 8054783C  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80547840  C0 5E 01 9C */	lfs f2, 0x19c(r30)
/* 80547844  C0 7E 01 28 */	lfs f3, 0x128(r30)
/* 80547848  4B D2 81 F5 */	bl cLib_addCalc2__FPffff
lbl_8054784C:
/* 8054784C  A8 1F 07 52 */	lha r0, 0x752(r31)
/* 80547850  2C 00 00 49 */	cmpwi r0, 0x49
/* 80547854  40 82 09 F4 */	bne lbl_80548248
/* 80547858  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 8054785C  2C 00 00 02 */	cmpwi r0, 2
/* 80547860  40 82 00 38 */	bne lbl_80547898
/* 80547864  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 80547868  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 8054786C  7F E4 FB 78 */	mr r4, r31
/* 80547870  48 00 2C 81 */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547874  28 03 00 00 */	cmplwi r3, 0
/* 80547878  41 82 00 0C */	beq lbl_80547884
/* 8054787C  38 00 00 01 */	li r0, 1
/* 80547880  B0 03 40 10 */	sth r0, 0x4010(r3)
lbl_80547884:
/* 80547884  38 60 00 06 */	li r3, 6
/* 80547888  4B AE 7F 15 */	bl dComIfG_TimerDeleteRequest__Fi
/* 8054788C  48 00 2C 05 */	bl Z2GetAudioMgr__Fv
/* 80547890  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80547894  4B D6 7F F1 */	bl subBgmStop__8Z2SeqMgrFv
lbl_80547898:
/* 80547898  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 8054789C  2C 00 00 0A */	cmpwi r0, 0xa
/* 805478A0  40 82 09 A8 */	bne lbl_80548248
/* 805478A4  A8 7F 05 62 */	lha r3, 0x562(r31)
/* 805478A8  7C 60 07 35 */	extsh. r0, r3
/* 805478AC  40 82 00 20 */	bne lbl_805478CC
/* 805478B0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805478B4  7F E4 FB 78 */	mr r4, r31
/* 805478B8  38 A0 03 4D */	li r5, 0x34d
/* 805478BC  38 C0 00 00 */	li r6, 0
/* 805478C0  38 E0 00 00 */	li r7, 0
/* 805478C4  4B D0 26 CD */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805478C8  48 00 00 64 */	b lbl_8054792C
lbl_805478CC:
/* 805478CC  2C 03 00 01 */	cmpwi r3, 1
/* 805478D0  40 82 00 20 */	bne lbl_805478F0
/* 805478D4  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805478D8  7F E4 FB 78 */	mr r4, r31
/* 805478DC  38 A0 03 64 */	li r5, 0x364
/* 805478E0  38 C0 00 00 */	li r6, 0
/* 805478E4  38 E0 00 00 */	li r7, 0
/* 805478E8  4B D0 26 A9 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805478EC  48 00 00 40 */	b lbl_8054792C
lbl_805478F0:
/* 805478F0  2C 03 00 02 */	cmpwi r3, 2
/* 805478F4  40 82 00 20 */	bne lbl_80547914
/* 805478F8  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805478FC  7F E4 FB 78 */	mr r4, r31
/* 80547900  38 A0 03 60 */	li r5, 0x360
/* 80547904  38 C0 00 00 */	li r6, 0
/* 80547908  38 E0 00 00 */	li r7, 0
/* 8054790C  4B D0 26 85 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80547910  48 00 00 1C */	b lbl_8054792C
lbl_80547914:
/* 80547914  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547918  7F E4 FB 78 */	mr r4, r31
/* 8054791C  38 A0 03 63 */	li r5, 0x363
/* 80547920  38 C0 00 00 */	li r6, 0
/* 80547924  38 E0 00 00 */	li r7, 0
/* 80547928  4B D0 26 69 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_8054792C:
/* 8054792C  38 00 00 4A */	li r0, 0x4a
/* 80547930  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80547934  48 00 2B 5D */	bl Z2GetAudioMgr__Fv
/* 80547938  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000043@ha */
/* 8054793C  38 84 00 43 */	addi r4, r4, 0x0043 /* 0x01000043@l */
/* 80547940  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80547944  4B D6 7B 59 */	bl subBgmStart__8Z2SeqMgrFUl
/* 80547948  48 00 09 00 */	b lbl_80548248
lbl_8054794C:
/* 8054794C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547950  7F E4 FB 78 */	mr r4, r31
/* 80547954  38 A0 00 00 */	li r5, 0
/* 80547958  38 C0 00 00 */	li r6, 0
/* 8054795C  4B D0 29 7D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80547960  2C 03 00 00 */	cmpwi r3, 0
/* 80547964  41 82 08 E4 */	beq lbl_80548248
/* 80547968  48 00 2F 8D */	bl dMsgObject_getSelectCursorPos__Fv
/* 8054796C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80547970  40 82 00 AC */	bne lbl_80547A1C
/* 80547974  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80547978  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8054797C  A0 63 06 6A */	lhz r3, 0x66a(r3)
/* 80547980  48 00 2E D9 */	bl dComIfGs_isEventBit__FUs
/* 80547984  2C 03 00 00 */	cmpwi r3, 0
/* 80547988  41 82 00 28 */	beq lbl_805479B0
/* 8054798C  38 00 00 00 */	li r0, 0
/* 80547990  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80547994  38 00 00 4D */	li r0, 0x4d
/* 80547998  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 8054799C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 805479A0  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 805479A4  38 63 06 04 */	addi r3, r3, g_blackColor@l /* 0x80450604@l */
/* 805479A8  4B AC 06 31 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 805479AC  48 00 08 9C */	b lbl_80548248
lbl_805479B0:
/* 805479B0  48 00 2D 49 */	bl dComIfGs_getRupee__Fv
/* 805479B4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805479B8  28 00 00 05 */	cmplwi r0, 5
/* 805479BC  41 80 00 4C */	blt lbl_80547A08
/* 805479C0  38 60 FF FB */	li r3, -5
/* 805479C4  48 00 2D 1D */	bl dComIfGp_setItemRupeeCount__Fl
/* 805479C8  38 00 00 47 */	li r0, 0x47
/* 805479CC  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 805479D0  38 00 00 00 */	li r0, 0
/* 805479D4  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 805479D8  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 805479DC  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 805479E0  7F E4 FB 78 */	mr r4, r31
/* 805479E4  48 00 2B 0D */	bl fpcM_Search__FPFPvPv_PvPv
/* 805479E8  28 03 00 00 */	cmplwi r3, 0
/* 805479EC  41 82 00 10 */	beq lbl_805479FC
/* 805479F0  38 00 00 00 */	li r0, 0
/* 805479F4  B0 03 40 24 */	sth r0, 0x4024(r3)
/* 805479F8  B0 03 40 20 */	sth r0, 0x4020(r3)
lbl_805479FC:
/* 805479FC  38 00 00 01 */	li r0, 1
/* 80547A00  90 1D 02 6C */	stw r0, 0x26c(r29)
/* 80547A04  48 00 08 44 */	b lbl_80548248
lbl_80547A08:
/* 80547A08  38 00 00 00 */	li r0, 0
/* 80547A0C  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80547A10  38 00 00 2A */	li r0, 0x2a
/* 80547A14  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80547A18  48 00 08 30 */	b lbl_80548248
lbl_80547A1C:
/* 80547A1C  38 00 00 00 */	li r0, 0
/* 80547A20  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80547A24  38 00 00 2B */	li r0, 0x2b
/* 80547A28  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80547A2C  48 00 08 1C */	b lbl_80548248
lbl_80547A30:
/* 80547A30  38 00 00 64 */	li r0, 0x64
/* 80547A34  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80547A38  48 00 2D 69 */	bl daPy_getPlayerActorClass__Fv
/* 80547A3C  48 00 2B 1D */	bl offPlayerNoDraw__9daPy_py_cFv
/* 80547A40  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 80547A44  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 80547A48  7F E4 FB 78 */	mr r4, r31
/* 80547A4C  48 00 2A A5 */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547A50  7C 78 1B 79 */	or. r24, r3, r3
/* 80547A54  41 82 00 2C */	beq lbl_80547A80
/* 80547A58  38 00 00 00 */	li r0, 0
/* 80547A5C  B0 18 40 10 */	sth r0, 0x4010(r24)
/* 80547A60  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80547A64  4B D1 FF 29 */	bl cM_rndFX__Ff
/* 80547A68  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 80547A6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80547A70  FC 00 00 1E */	fctiwz f0, f0
/* 80547A74  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 80547A78  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80547A7C  B0 18 40 22 */	sth r0, 0x4022(r24)
lbl_80547A80:
/* 80547A80  3C 60 80 54 */	lis r3, s_koro2ball_sub__FPvPv@ha /* 0x805437E8@ha */
/* 80547A84  38 63 37 E8 */	addi r3, r3, s_koro2ball_sub__FPvPv@l /* 0x805437E8@l */
/* 80547A88  7F E4 FB 78 */	mr r4, r31
/* 80547A8C  48 00 2A 65 */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547A90  28 03 00 00 */	cmplwi r3, 0
/* 80547A94  41 82 07 B4 */	beq lbl_80548248
/* 80547A98  38 00 00 00 */	li r0, 0
/* 80547A9C  B0 03 05 72 */	sth r0, 0x572(r3)
/* 80547AA0  48 00 07 A8 */	b lbl_80548248
lbl_80547AA4:
/* 80547AA4  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547AA8  2C 00 00 02 */	cmpwi r0, 2
/* 80547AAC  40 82 00 38 */	bne lbl_80547AE4
/* 80547AB0  38 60 00 06 */	li r3, 6
/* 80547AB4  4B AE 7C E9 */	bl dComIfG_TimerDeleteRequest__Fi
/* 80547AB8  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 80547ABC  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 80547AC0  7F E4 FB 78 */	mr r4, r31
/* 80547AC4  48 00 2A 2D */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547AC8  28 03 00 00 */	cmplwi r3, 0
/* 80547ACC  41 82 00 0C */	beq lbl_80547AD8
/* 80547AD0  38 00 00 01 */	li r0, 1
/* 80547AD4  B0 03 40 10 */	sth r0, 0x4010(r3)
lbl_80547AD8:
/* 80547AD8  48 00 29 B9 */	bl Z2GetAudioMgr__Fv
/* 80547ADC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80547AE0  4B D6 7D A5 */	bl subBgmStop__8Z2SeqMgrFv
lbl_80547AE4:
/* 80547AE4  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547AE8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80547AEC  40 82 01 40 */	bne lbl_80547C2C
/* 80547AF0  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80547AF4  3B 03 72 88 */	addi r24, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80547AF8  A0 78 06 6A */	lhz r3, 0x66a(r24)
/* 80547AFC  48 00 2D 5D */	bl dComIfGs_isEventBit__FUs
/* 80547B00  2C 03 00 00 */	cmpwi r3, 0
/* 80547B04  41 82 00 20 */	beq lbl_80547B24
/* 80547B08  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547B0C  7F E4 FB 78 */	mr r4, r31
/* 80547B10  38 A0 03 6F */	li r5, 0x36f
/* 80547B14  38 C0 00 00 */	li r6, 0
/* 80547B18  38 E0 00 00 */	li r7, 0
/* 80547B1C  4B D0 24 75 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80547B20  48 00 00 F8 */	b lbl_80547C18
lbl_80547B24:
/* 80547B24  88 7D 00 89 */	lbz r3, 0x89(r29)
/* 80547B28  54 60 07 7E */	clrlwi r0, r3, 0x1d
/* 80547B2C  2C 00 00 07 */	cmpwi r0, 7
/* 80547B30  40 82 00 90 */	bne lbl_80547BC0
/* 80547B34  28 03 00 3F */	cmplwi r3, 0x3f
/* 80547B38  40 82 00 30 */	bne lbl_80547B68
/* 80547B3C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547B40  7F E4 FB 78 */	mr r4, r31
/* 80547B44  38 A0 03 65 */	li r5, 0x365
/* 80547B48  38 C0 00 00 */	li r6, 0
/* 80547B4C  38 E0 00 00 */	li r7, 0
/* 80547B50  4B D0 24 41 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80547B54  A0 78 06 6A */	lhz r3, 0x66a(r24)
/* 80547B58  48 00 2D C9 */	bl dComIfGs_onEventBit__FUs
/* 80547B5C  38 60 03 E8 */	li r3, 0x3e8
/* 80547B60  48 00 2B 81 */	bl dComIfGp_setItemRupeeCount__Fl
/* 80547B64  48 00 00 7C */	b lbl_80547BE0
lbl_80547B68:
/* 80547B68  54 60 06 B9 */	rlwinm. r0, r3, 0, 0x1a, 0x1c
/* 80547B6C  40 82 00 30 */	bne lbl_80547B9C
/* 80547B70  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547B74  7F E4 FB 78 */	mr r4, r31
/* 80547B78  38 A0 03 4F */	li r5, 0x34f
/* 80547B7C  38 C0 00 00 */	li r6, 0
/* 80547B80  38 E0 00 00 */	li r7, 0
/* 80547B84  4B D0 24 0D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80547B88  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80547B8C  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80547B90  A0 63 03 AA */	lhz r3, 0x3aa(r3)
/* 80547B94  48 00 2D 8D */	bl dComIfGs_onEventBit__FUs
/* 80547B98  48 00 00 48 */	b lbl_80547BE0
lbl_80547B9C:
/* 80547B9C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547BA0  7F E4 FB 78 */	mr r4, r31
/* 80547BA4  38 A0 03 4F */	li r5, 0x34f
/* 80547BA8  38 C0 00 00 */	li r6, 0
/* 80547BAC  38 E0 00 00 */	li r7, 0
/* 80547BB0  4B D0 23 E1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80547BB4  38 60 00 0A */	li r3, 0xa
/* 80547BB8  48 00 2B 29 */	bl dComIfGp_setItemRupeeCount__Fl
/* 80547BBC  48 00 00 24 */	b lbl_80547BE0
lbl_80547BC0:
/* 80547BC0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547BC4  7F E4 FB 78 */	mr r4, r31
/* 80547BC8  38 A0 03 4E */	li r5, 0x34e
/* 80547BCC  38 C0 00 00 */	li r6, 0
/* 80547BD0  38 E0 00 00 */	li r7, 0
/* 80547BD4  4B D0 23 BD */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80547BD8  38 60 00 0A */	li r3, 0xa
/* 80547BDC  48 00 2B 05 */	bl dComIfGp_setItemRupeeCount__Fl
lbl_80547BE0:
/* 80547BE0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F63F@ha */
/* 80547BE4  38 63 F6 3F */	addi r3, r3, 0xF63F /* 0x0000F63F@l */
/* 80547BE8  48 00 2C 41 */	bl dComIfGs_getEventReg__FUs
/* 80547BEC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80547BF0  88 9D 00 89 */	lbz r4, 0x89(r29)
/* 80547BF4  7C 04 00 40 */	cmplw r4, r0
/* 80547BF8  40 82 00 20 */	bne lbl_80547C18
/* 80547BFC  28 04 00 3F */	cmplwi r4, 0x3f
/* 80547C00  40 80 00 18 */	bge lbl_80547C18
/* 80547C04  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F63F@ha */
/* 80547C08  38 63 F6 3F */	addi r3, r3, 0xF63F /* 0x0000F63F@l */
/* 80547C0C  38 04 00 01 */	addi r0, r4, 1
/* 80547C10  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80547C14  48 00 28 45 */	bl dComIfGs_setEventReg__FUsUc
lbl_80547C18:
/* 80547C18  48 00 28 79 */	bl Z2GetAudioMgr__Fv
/* 80547C1C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000044@ha */
/* 80547C20  38 84 00 44 */	addi r4, r4, 0x0044 /* 0x01000044@l */
/* 80547C24  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80547C28  4B D6 78 75 */	bl subBgmStart__8Z2SeqMgrFUl
lbl_80547C2C:
/* 80547C2C  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547C30  2C 00 00 0A */	cmpwi r0, 0xa
/* 80547C34  41 80 06 14 */	blt lbl_80548248
/* 80547C38  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547C3C  7F E4 FB 78 */	mr r4, r31
/* 80547C40  38 A0 00 00 */	li r5, 0
/* 80547C44  38 C0 00 00 */	li r6, 0
/* 80547C48  4B D0 26 91 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80547C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80547C50  41 82 05 F8 */	beq lbl_80548248
/* 80547C54  38 00 00 4B */	li r0, 0x4b
/* 80547C58  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80547C5C  38 60 00 06 */	li r3, 6
/* 80547C60  4B AE 7B 3D */	bl dComIfG_TimerDeleteRequest__Fi
/* 80547C64  48 00 05 E4 */	b lbl_80548248
lbl_80547C68:
/* 80547C68  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547C6C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80547C70  40 82 00 6C */	bne lbl_80547CDC
/* 80547C74  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 80547C78  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 80547C7C  7F E4 FB 78 */	mr r4, r31
/* 80547C80  48 00 28 71 */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547C84  28 03 00 00 */	cmplwi r3, 0
/* 80547C88  41 82 00 0C */	beq lbl_80547C94
/* 80547C8C  38 00 00 01 */	li r0, 1
/* 80547C90  B0 03 40 10 */	sth r0, 0x4010(r3)
lbl_80547C94:
/* 80547C94  38 61 00 6C */	addi r3, r1, 0x6c
/* 80547C98  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 80547C9C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80547CA0  C0 7E 01 AC */	lfs f3, 0x1ac(r30)
/* 80547CA4  48 00 2A 71 */	bl set__4cXyzFfff
/* 80547CA8  48 00 2A F9 */	bl daPy_getPlayerActorClass__Fv
/* 80547CAC  38 81 00 6C */	addi r4, r1, 0x6c
/* 80547CB0  38 A0 40 00 */	li r5, 0x4000
/* 80547CB4  38 C0 00 00 */	li r6, 0
/* 80547CB8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80547CBC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80547CC0  7D 89 03 A6 */	mtctr r12
/* 80547CC4  4E 80 04 21 */	bctrl 
/* 80547CC8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80547CCC  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 80547CD0  38 7C 02 48 */	addi r3, r28, 0x248
/* 80547CD4  38 80 00 01 */	li r4, 1
/* 80547CD8  4B C1 B3 35 */	bl SetTrimSize__9dCamera_cFl
lbl_80547CDC:
/* 80547CDC  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547CE0  2C 00 00 0B */	cmpwi r0, 0xb
/* 80547CE4  40 82 00 50 */	bne lbl_80547D34
/* 80547CE8  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 80547CEC  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 80547CF0  7F E4 FB 78 */	mr r4, r31
/* 80547CF4  48 00 27 FD */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547CF8  7C 78 1B 78 */	mr r24, r3
/* 80547CFC  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80547D00  38 98 40 14 */	addi r4, r24, 0x4014
/* 80547D04  48 00 2A D1 */	bl __as__4cXyzFRC4cXyz
/* 80547D08  38 7F 07 60 */	addi r3, r31, 0x760
/* 80547D0C  38 98 40 14 */	addi r4, r24, 0x4014
/* 80547D10  48 00 2A C5 */	bl __as__4cXyzFRC4cXyz
/* 80547D14  C0 3F 07 60 */	lfs f1, 0x760(r31)
/* 80547D18  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 80547D1C  EC 01 00 2A */	fadds f0, f1, f0
/* 80547D20  D0 1F 07 60 */	stfs f0, 0x760(r31)
/* 80547D24  C0 3F 07 64 */	lfs f1, 0x764(r31)
/* 80547D28  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 80547D2C  EC 01 00 2A */	fadds f0, f1, f0
/* 80547D30  D0 1F 07 64 */	stfs f0, 0x764(r31)
lbl_80547D34:
/* 80547D34  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547D38  2C 00 00 12 */	cmpwi r0, 0x12
/* 80547D3C  40 82 00 24 */	bne lbl_80547D60
/* 80547D40  3C 60 80 54 */	lis r3, s_koro2ball_sub__FPvPv@ha /* 0x805437E8@ha */
/* 80547D44  38 63 37 E8 */	addi r3, r3, s_koro2ball_sub__FPvPv@l /* 0x805437E8@l */
/* 80547D48  7F E4 FB 78 */	mr r4, r31
/* 80547D4C  48 00 27 A5 */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547D50  28 03 00 00 */	cmplwi r3, 0
/* 80547D54  41 82 00 0C */	beq lbl_80547D60
/* 80547D58  38 00 00 01 */	li r0, 1
/* 80547D5C  B0 03 05 72 */	sth r0, 0x572(r3)
lbl_80547D60:
/* 80547D60  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547D64  2C 00 00 14 */	cmpwi r0, 0x14
/* 80547D68  40 82 04 E0 */	bne lbl_80548248
/* 80547D6C  38 00 00 4E */	li r0, 0x4e
/* 80547D70  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80547D74  38 00 00 00 */	li r0, 0
/* 80547D78  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80547D7C  38 00 00 C8 */	li r0, 0xc8
/* 80547D80  B0 1F 07 56 */	sth r0, 0x756(r31)
/* 80547D84  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 80547D88  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 80547D8C  7F E4 FB 78 */	mr r4, r31
/* 80547D90  48 00 27 61 */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547D94  88 1D 02 70 */	lbz r0, 0x270(r29)
/* 80547D98  98 03 40 0C */	stb r0, 0x400c(r3)
/* 80547D9C  48 00 04 AC */	b lbl_80548248
lbl_80547DA0:
/* 80547DA0  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547DA4  2C 00 00 01 */	cmpwi r0, 1
/* 80547DA8  40 82 00 14 */	bne lbl_80547DBC
/* 80547DAC  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80547DB0  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 80547DB4  38 63 06 04 */	addi r3, r3, g_blackColor@l /* 0x80450604@l */
/* 80547DB8  48 00 27 15 */	bl fadeIn__13mDoGph_gInf_cFfR8_GXColor
lbl_80547DBC:
/* 80547DBC  38 60 00 22 */	li r3, 0x22
/* 80547DC0  38 80 00 00 */	li r4, 0
/* 80547DC4  48 00 26 81 */	bl dComIfGp_setDoStatusForce__FUcUc
/* 80547DC8  88 1D 02 78 */	lbz r0, 0x278(r29)
/* 80547DCC  7C 00 07 75 */	extsb. r0, r0
/* 80547DD0  40 82 00 14 */	bne lbl_80547DE4
/* 80547DD4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80547DD8  D0 1D 02 74 */	stfs f0, 0x274(r29)
/* 80547DDC  38 00 00 01 */	li r0, 1
/* 80547DE0  98 1D 02 78 */	stb r0, 0x278(r29)
lbl_80547DE4:
/* 80547DE4  88 1D 02 80 */	lbz r0, 0x280(r29)
/* 80547DE8  7C 00 07 75 */	extsb. r0, r0
/* 80547DEC  40 82 00 14 */	bne lbl_80547E00
/* 80547DF0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80547DF4  D0 1D 02 7C */	stfs f0, 0x27c(r29)
/* 80547DF8  38 00 00 01 */	li r0, 1
/* 80547DFC  98 1D 02 80 */	stb r0, 0x280(r29)
lbl_80547E00:
/* 80547E00  38 60 00 00 */	li r3, 0
/* 80547E04  48 00 26 2D */	bl getStickX3D__8mDoCPd_cFUl
/* 80547E08  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80547E0C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80547E10  4C 41 13 82 */	cror 2, 1, 2
/* 80547E14  40 82 00 10 */	bne lbl_80547E24
/* 80547E18  C0 1D 02 74 */	lfs f0, 0x274(r29)
/* 80547E1C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80547E20  41 80 00 70 */	blt lbl_80547E90
lbl_80547E24:
/* 80547E24  38 60 00 00 */	li r3, 0
/* 80547E28  48 00 26 09 */	bl getStickX3D__8mDoCPd_cFUl
/* 80547E2C  C0 5E 01 D4 */	lfs f2, 0x1d4(r30)
/* 80547E30  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80547E34  4C 40 13 82 */	cror 2, 0, 2
/* 80547E38  40 82 00 10 */	bne lbl_80547E48
/* 80547E3C  C0 1D 02 74 */	lfs f0, 0x274(r29)
/* 80547E40  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80547E44  41 81 00 4C */	bgt lbl_80547E90
lbl_80547E48:
/* 80547E48  38 60 00 00 */	li r3, 0
/* 80547E4C  48 00 25 CD */	bl getSubStickX__8mDoCPd_cFUl
/* 80547E50  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80547E54  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80547E58  4C 41 13 82 */	cror 2, 1, 2
/* 80547E5C  40 82 00 10 */	bne lbl_80547E6C
/* 80547E60  C0 1D 02 7C */	lfs f0, 0x27c(r29)
/* 80547E64  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80547E68  41 80 00 28 */	blt lbl_80547E90
lbl_80547E6C:
/* 80547E6C  38 60 00 00 */	li r3, 0
/* 80547E70  48 00 25 A9 */	bl getSubStickX__8mDoCPd_cFUl
/* 80547E74  C0 5E 01 D4 */	lfs f2, 0x1d4(r30)
/* 80547E78  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80547E7C  4C 40 13 82 */	cror 2, 0, 2
/* 80547E80  40 82 00 98 */	bne lbl_80547F18
/* 80547E84  C0 1D 02 7C */	lfs f0, 0x27c(r29)
/* 80547E88  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80547E8C  40 81 00 8C */	ble lbl_80547F18
lbl_80547E90:
/* 80547E90  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547E94  2C 00 00 0F */	cmpwi r0, 0xf
/* 80547E98  41 80 00 80 */	blt lbl_80547F18
/* 80547E9C  38 60 00 00 */	li r3, 0
/* 80547EA0  48 00 25 91 */	bl getStickX3D__8mDoCPd_cFUl
/* 80547EA4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80547EA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80547EAC  4C 41 13 82 */	cror 2, 1, 2
/* 80547EB0  41 82 00 1C */	beq lbl_80547ECC
/* 80547EB4  38 60 00 00 */	li r3, 0
/* 80547EB8  48 00 25 61 */	bl getSubStickX__8mDoCPd_cFUl
/* 80547EBC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80547EC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80547EC4  4C 41 13 82 */	cror 2, 1, 2
/* 80547EC8  40 82 00 14 */	bne lbl_80547EDC
lbl_80547ECC:
/* 80547ECC  88 7D 02 70 */	lbz r3, 0x270(r29)
/* 80547ED0  38 03 00 01 */	addi r0, r3, 1
/* 80547ED4  98 1D 02 70 */	stb r0, 0x270(r29)
/* 80547ED8  48 00 00 10 */	b lbl_80547EE8
lbl_80547EDC:
/* 80547EDC  88 7D 02 70 */	lbz r3, 0x270(r29)
/* 80547EE0  38 03 FF FF */	addi r0, r3, -1
/* 80547EE4  98 1D 02 70 */	stb r0, 0x270(r29)
lbl_80547EE8:
/* 80547EE8  88 1D 02 70 */	lbz r0, 0x270(r29)
/* 80547EEC  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 80547EF0  98 1D 02 70 */	stb r0, 0x270(r29)
/* 80547EF4  38 60 00 4E */	li r3, 0x4e
/* 80547EF8  38 80 00 00 */	li r4, 0
/* 80547EFC  38 A0 00 00 */	li r5, 0
/* 80547F00  38 C0 00 00 */	li r6, 0
/* 80547F04  48 00 24 B1 */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 80547F08  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547F0C  4B D0 25 B9 */	bl remove__10dMsgFlow_cFv
/* 80547F10  38 00 00 01 */	li r0, 1
/* 80547F14  B0 1F 07 54 */	sth r0, 0x754(r31)
lbl_80547F18:
/* 80547F18  38 60 00 00 */	li r3, 0
/* 80547F1C  48 00 25 15 */	bl getStickX3D__8mDoCPd_cFUl
/* 80547F20  D0 3D 02 74 */	stfs f1, 0x274(r29)
/* 80547F24  38 60 00 00 */	li r3, 0
/* 80547F28  48 00 24 F1 */	bl getSubStickX__8mDoCPd_cFUl
/* 80547F2C  D0 3D 02 7C */	stfs f1, 0x27c(r29)
/* 80547F30  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 80547F34  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 80547F38  7F E4 FB 78 */	mr r4, r31
/* 80547F3C  48 00 25 B5 */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547F40  88 1D 02 70 */	lbz r0, 0x270(r29)
/* 80547F44  98 03 40 0C */	stb r0, 0x400c(r3)
/* 80547F48  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547F4C  2C 00 00 02 */	cmpwi r0, 2
/* 80547F50  41 80 00 64 */	blt lbl_80547FB4
/* 80547F54  40 82 00 20 */	bne lbl_80547F74
/* 80547F58  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547F5C  7F E4 FB 78 */	mr r4, r31
/* 80547F60  88 BD 02 70 */	lbz r5, 0x270(r29)
/* 80547F64  38 A5 03 67 */	addi r5, r5, 0x367
/* 80547F68  38 C0 00 00 */	li r6, 0
/* 80547F6C  38 E0 00 00 */	li r7, 0
/* 80547F70  4B D0 20 21 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80547F74:
/* 80547F74  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547F78  7F E4 FB 78 */	mr r4, r31
/* 80547F7C  38 A0 00 00 */	li r5, 0
/* 80547F80  38 C0 00 00 */	li r6, 0
/* 80547F84  4B D0 23 55 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80547F88  2C 03 00 00 */	cmpwi r3, 0
/* 80547F8C  41 82 00 28 */	beq lbl_80547FB4
/* 80547F90  38 60 00 4F */	li r3, 0x4f
/* 80547F94  38 80 00 00 */	li r4, 0
/* 80547F98  38 A0 00 00 */	li r5, 0
/* 80547F9C  38 C0 00 00 */	li r6, 0
/* 80547FA0  48 00 24 15 */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 80547FA4  38 00 00 4F */	li r0, 0x4f
/* 80547FA8  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80547FAC  38 00 00 00 */	li r0, 0
/* 80547FB0  B0 1F 07 54 */	sth r0, 0x754(r31)
lbl_80547FB4:
/* 80547FB4  3C 60 80 54 */	lis r3, s_koro2ball_sub__FPvPv@ha /* 0x805437E8@ha */
/* 80547FB8  38 63 37 E8 */	addi r3, r3, s_koro2ball_sub__FPvPv@l /* 0x805437E8@l */
/* 80547FBC  7F E4 FB 78 */	mr r4, r31
/* 80547FC0  48 00 25 31 */	bl fpcM_Search__FPFPvPv_PvPv
/* 80547FC4  28 03 00 00 */	cmplwi r3, 0
/* 80547FC8  41 82 02 80 */	beq lbl_80548248
/* 80547FCC  38 00 00 01 */	li r0, 1
/* 80547FD0  B0 03 05 72 */	sth r0, 0x572(r3)
/* 80547FD4  48 00 02 74 */	b lbl_80548248
lbl_80547FD8:
/* 80547FD8  38 00 00 00 */	li r0, 0
/* 80547FDC  98 1F 07 B9 */	stb r0, 0x7b9(r31)
/* 80547FE0  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 80547FE4  2C 00 00 02 */	cmpwi r0, 2
/* 80547FE8  41 80 02 60 */	blt lbl_80548248
/* 80547FEC  40 82 00 44 */	bne lbl_80548030
/* 80547FF0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80547FF4  7F E4 FB 78 */	mr r4, r31
/* 80547FF8  38 A0 03 4C */	li r5, 0x34c
/* 80547FFC  38 C0 00 00 */	li r6, 0
/* 80548000  38 E0 00 00 */	li r7, 0
/* 80548004  4B D0 1F 8D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80548008  80 9E 01 18 */	lwz r4, 0x118(r30)
/* 8054800C  90 81 00 08 */	stw r4, 8(r1)
/* 80548010  38 60 00 06 */	li r3, 6
/* 80548014  38 A0 00 01 */	li r5, 1
/* 80548018  38 C0 00 00 */	li r6, 0
/* 8054801C  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80548020  C0 5E 01 BC */	lfs f2, 0x1bc(r30)
/* 80548024  C0 7E 01 C0 */	lfs f3, 0x1c0(r30)
/* 80548028  C0 9E 01 C4 */	lfs f4, 0x1c4(r30)
/* 8054802C  4B D1 8F 61 */	bl dTimer_createTimer__FlUlUcUcffff
lbl_80548030:
/* 80548030  48 00 24 71 */	bl dComIfG_getTimerPtr__Fv
/* 80548034  28 03 00 00 */	cmplwi r3, 0
/* 80548038  41 82 02 10 */	beq lbl_80548248
/* 8054803C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80548040  7F E4 FB 78 */	mr r4, r31
/* 80548044  38 A0 00 00 */	li r5, 0
/* 80548048  38 C0 00 00 */	li r6, 0
/* 8054804C  4B D0 22 8D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80548050  2C 03 00 00 */	cmpwi r3, 0
/* 80548054  41 82 01 F4 */	beq lbl_80548248
/* 80548058  38 00 00 48 */	li r0, 0x48
/* 8054805C  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80548060  38 60 00 06 */	li r3, 6
/* 80548064  38 80 00 00 */	li r4, 0
/* 80548068  4B AE 74 C5 */	bl dComIfG_TimerStart__Fis
/* 8054806C  48 00 24 25 */	bl Z2GetAudioMgr__Fv
/* 80548070  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000091@ha */
/* 80548074  38 84 00 91 */	addi r4, r4, 0x0091 /* 0x01000091@l */
/* 80548078  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8054807C  4B D6 74 21 */	bl subBgmStart__8Z2SeqMgrFUl
/* 80548080  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha /* 0x8054378C@ha */
/* 80548084  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l /* 0x8054378C@l */
/* 80548088  7F E4 FB 78 */	mr r4, r31
/* 8054808C  48 00 24 65 */	bl fpcM_Search__FPFPvPv_PvPv
/* 80548090  38 00 00 00 */	li r0, 0
/* 80548094  B0 03 40 62 */	sth r0, 0x4062(r3)
/* 80548098  B0 03 40 60 */	sth r0, 0x4060(r3)
/* 8054809C  3C 60 80 54 */	lis r3, s_koro2ball_sub__FPvPv@ha /* 0x805437E8@ha */
/* 805480A0  38 63 37 E8 */	addi r3, r3, s_koro2ball_sub__FPvPv@l /* 0x805437E8@l */
/* 805480A4  7F E4 FB 78 */	mr r4, r31
/* 805480A8  48 00 24 49 */	bl fpcM_Search__FPFPvPv_PvPv
/* 805480AC  28 03 00 00 */	cmplwi r3, 0
/* 805480B0  41 82 01 98 */	beq lbl_80548248
/* 805480B4  38 00 00 01 */	li r0, 1
/* 805480B8  B0 03 05 72 */	sth r0, 0x572(r3)
/* 805480BC  48 00 01 8C */	b lbl_80548248
lbl_805480C0:
/* 805480C0  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805480C4  48 00 26 FD */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 805480C8  2C 03 00 00 */	cmpwi r3, 0
/* 805480CC  40 82 00 5C */	bne lbl_80548128
/* 805480D0  7F E3 FB 78 */	mr r3, r31
/* 805480D4  38 80 00 02 */	li r4, 2
/* 805480D8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805480DC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805480E0  38 C0 00 00 */	li r6, 0
/* 805480E4  4B AD 38 25 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805480E8  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805480EC  38 80 00 02 */	li r4, 2
/* 805480F0  48 00 26 C1 */	bl onCondition__11dEvt_info_cFUs
/* 805480F4  38 61 00 54 */	addi r3, r1, 0x54
/* 805480F8  38 80 FF FF */	li r4, -1
/* 805480FC  4B FF B3 C5 */	bl __dt__4cXyzFv
/* 80548100  38 61 00 60 */	addi r3, r1, 0x60
/* 80548104  38 80 FF FF */	li r4, -1
/* 80548108  4B FF B3 B9 */	bl __dt__4cXyzFv
/* 8054810C  38 61 00 6C */	addi r3, r1, 0x6c
/* 80548110  38 80 FF FF */	li r4, -1
/* 80548114  4B FF B3 AD */	bl __dt__4cXyzFv
/* 80548118  38 61 00 78 */	addi r3, r1, 0x78
/* 8054811C  38 80 FF FF */	li r4, -1
/* 80548120  4B FF B3 A1 */	bl __dt__4cXyzFv
/* 80548124  48 00 02 B8 */	b lbl_805483DC
lbl_80548128:
/* 80548128  38 7C 02 48 */	addi r3, r28, 0x248
/* 8054812C  4B C1 93 A5 */	bl Stop__9dCamera_cFv
/* 80548130  38 00 00 51 */	li r0, 0x51
/* 80548134  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80548138  38 00 00 00 */	li r0, 0
/* 8054813C  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80548140  38 7C 02 48 */	addi r3, r28, 0x248
/* 80548144  38 80 00 01 */	li r4, 1
/* 80548148  4B C1 AE C5 */	bl SetTrimSize__9dCamera_cFl
/* 8054814C  48 00 26 55 */	bl daPy_getPlayerActorClass__Fv
/* 80548150  48 00 26 3D */	bl changeOriginalDemo__9daPy_py_cFv
/* 80548154  48 00 26 4D */	bl daPy_getPlayerActorClass__Fv
/* 80548158  38 80 00 01 */	li r4, 1
/* 8054815C  38 A0 00 00 */	li r5, 0
/* 80548160  38 C0 00 00 */	li r6, 0
/* 80548164  38 E0 00 00 */	li r7, 0
/* 80548168  48 00 26 11 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8054816C  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80548170  C0 3E 01 D8 */	lfs f1, 0x1d8(r30)
/* 80548174  C0 5E 01 DC */	lfs f2, 0x1dc(r30)
/* 80548178  C0 7E 01 40 */	lfs f3, 0x140(r30)
/* 8054817C  48 00 25 99 */	bl set__4cXyzFfff
/* 80548180  38 7F 07 60 */	addi r3, r31, 0x760
/* 80548184  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 80548188  C0 5E 01 E4 */	lfs f2, 0x1e4(r30)
/* 8054818C  C0 7E 01 E8 */	lfs f3, 0x1e8(r30)
/* 80548190  48 00 25 85 */	bl set__4cXyzFfff
/* 80548194  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80548198  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
lbl_8054819C:
/* 8054819C  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 805481A0  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 805481A4  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 805481A8  C0 7E 01 30 */	lfs f3, 0x130(r30)
/* 805481AC  4B D2 78 91 */	bl cLib_addCalc2__FPffff
/* 805481B0  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 805481B4  2C 00 00 01 */	cmpwi r0, 1
/* 805481B8  41 80 00 90 */	blt lbl_80548248
/* 805481BC  40 82 00 1C */	bne lbl_805481D8
/* 805481C0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805481C4  7F E4 FB 78 */	mr r4, r31
/* 805481C8  38 A0 03 62 */	li r5, 0x362
/* 805481CC  38 C0 00 00 */	li r6, 0
/* 805481D0  38 E0 00 00 */	li r7, 0
/* 805481D4  4B D0 1D BD */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_805481D8:
/* 805481D8  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 805481DC  2C 00 00 0F */	cmpwi r0, 0xf
/* 805481E0  40 82 00 24 */	bne lbl_80548204
/* 805481E4  38 00 00 02 */	li r0, 2
/* 805481E8  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805481EC  7F E3 FB 78 */	mr r3, r31
/* 805481F0  38 80 00 12 */	li r4, 0x12
/* 805481F4  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 805481F8  38 A0 00 02 */	li r5, 2
/* 805481FC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80548200  4B FF AD 99 */	bl anm_init__FP15npc_henna_classifUcf
lbl_80548204:
/* 80548204  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80548208  7F E4 FB 78 */	mr r4, r31
/* 8054820C  38 A0 00 00 */	li r5, 0
/* 80548210  38 C0 00 00 */	li r6, 0
/* 80548214  4B D0 20 C5 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80548218  2C 03 00 00 */	cmpwi r3, 0
/* 8054821C  41 82 00 2C */	beq lbl_80548248
/* 80548220  38 00 00 00 */	li r0, 0
/* 80548224  90 1F 06 88 */	stw r0, 0x688(r31)
/* 80548228  38 00 00 64 */	li r0, 0x64
/* 8054822C  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80548230  7F E3 FB 78 */	mr r3, r31
/* 80548234  38 80 00 20 */	li r4, 0x20
/* 80548238  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 8054823C  38 A0 00 02 */	li r5, 2
/* 80548240  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80548244  4B FF AD 55 */	bl anm_init__FP15npc_henna_classifUcf
lbl_80548248:
/* 80548248  A8 1F 07 52 */	lha r0, 0x752(r31)
/* 8054824C  2C 00 00 64 */	cmpwi r0, 0x64
/* 80548250  41 80 00 E0 */	blt lbl_80548330
/* 80548254  40 82 00 AC */	bne lbl_80548300
/* 80548258  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8054825C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80548260  80 63 00 00 */	lwz r3, 0(r3)
/* 80548264  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80548268  48 00 24 F1 */	bl cMtx_YrotS__FPA4_fs
/* 8054826C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80548270  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80548274  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80548278  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8054827C  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 80548280  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80548284  38 61 00 78 */	addi r3, r1, 0x78
/* 80548288  38 9F 07 60 */	addi r4, r31, 0x760
/* 8054828C  4B D2 8C 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80548290  38 7F 07 60 */	addi r3, r31, 0x760
/* 80548294  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80548298  48 00 24 8D */	bl __apl__4cXyzFRC3Vec
/* 8054829C  38 7F 07 6C */	addi r3, r31, 0x76c
/* 805482A0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805482A4  48 00 25 31 */	bl __as__4cXyzFRC4cXyz
/* 805482A8  C0 3F 07 70 */	lfs f1, 0x770(r31)
/* 805482AC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805482B0  EC 01 00 2A */	fadds f0, f1, f0
/* 805482B4  D0 1F 07 70 */	stfs f0, 0x770(r31)
/* 805482B8  38 61 00 30 */	addi r3, r1, 0x30
/* 805482BC  38 9F 07 6C */	addi r4, r31, 0x76c
/* 805482C0  48 00 20 D9 */	bl __ct__4cXyzFRC4cXyz
/* 805482C4  38 61 00 24 */	addi r3, r1, 0x24
/* 805482C8  38 9F 07 60 */	addi r4, r31, 0x760
/* 805482CC  48 00 20 CD */	bl __ct__4cXyzFRC4cXyz
/* 805482D0  38 7C 02 48 */	addi r3, r28, 0x248
/* 805482D4  38 81 00 30 */	addi r4, r1, 0x30
/* 805482D8  38 A1 00 24 */	addi r5, r1, 0x24
/* 805482DC  C0 3F 07 BC */	lfs f1, 0x7bc(r31)
/* 805482E0  38 C0 00 00 */	li r6, 0
/* 805482E4  4B C3 88 BD */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 805482E8  38 61 00 24 */	addi r3, r1, 0x24
/* 805482EC  38 80 FF FF */	li r4, -1
/* 805482F0  4B FF B1 D1 */	bl __dt__4cXyzFv
/* 805482F4  38 61 00 30 */	addi r3, r1, 0x30
/* 805482F8  38 80 FF FF */	li r4, -1
/* 805482FC  4B FF B1 C5 */	bl __dt__4cXyzFv
lbl_80548300:
/* 80548300  38 7C 02 48 */	addi r3, r28, 0x248
/* 80548304  4B C1 91 A9 */	bl Start__9dCamera_cFv
/* 80548308  38 7C 02 48 */	addi r3, r28, 0x248
/* 8054830C  38 80 00 00 */	li r4, 0
/* 80548310  4B C1 AC FD */	bl SetTrimSize__9dCamera_cFl
/* 80548314  48 00 22 19 */	bl dComIfGp_event_reset__Fv
/* 80548318  48 00 24 89 */	bl daPy_getPlayerActorClass__Fv
/* 8054831C  48 00 20 69 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 80548320  38 00 00 00 */	li r0, 0
/* 80548324  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80548328  38 00 00 14 */	li r0, 0x14
/* 8054832C  B0 1F 07 50 */	sth r0, 0x750(r31)
lbl_80548330:
/* 80548330  A8 1F 07 52 */	lha r0, 0x752(r31)
/* 80548334  2C 00 00 00 */	cmpwi r0, 0
/* 80548338  41 82 00 74 */	beq lbl_805483AC
/* 8054833C  A8 7F 07 54 */	lha r3, 0x754(r31)
/* 80548340  38 03 00 01 */	addi r0, r3, 1
/* 80548344  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80548348  A8 1F 07 54 */	lha r0, 0x754(r31)
/* 8054834C  2C 00 27 10 */	cmpwi r0, 0x2710
/* 80548350  40 81 00 0C */	ble lbl_8054835C
/* 80548354  38 00 27 10 */	li r0, 0x2710
/* 80548358  B0 1F 07 54 */	sth r0, 0x754(r31)
lbl_8054835C:
/* 8054835C  7F 40 07 75 */	extsb. r0, r26
/* 80548360  40 82 00 4C */	bne lbl_805483AC
/* 80548364  38 61 00 18 */	addi r3, r1, 0x18
/* 80548368  38 9F 07 6C */	addi r4, r31, 0x76c
/* 8054836C  48 00 20 2D */	bl __ct__4cXyzFRC4cXyz
/* 80548370  38 61 00 0C */	addi r3, r1, 0xc
/* 80548374  38 9F 07 60 */	addi r4, r31, 0x760
/* 80548378  48 00 20 21 */	bl __ct__4cXyzFRC4cXyz
/* 8054837C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80548380  38 81 00 18 */	addi r4, r1, 0x18
/* 80548384  38 A1 00 0C */	addi r5, r1, 0xc
/* 80548388  C0 3F 07 BC */	lfs f1, 0x7bc(r31)
/* 8054838C  38 C0 00 00 */	li r6, 0
/* 80548390  4B C3 87 51 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80548394  38 61 00 0C */	addi r3, r1, 0xc
/* 80548398  38 80 FF FF */	li r4, -1
/* 8054839C  4B FF B1 25 */	bl __dt__4cXyzFv
/* 805483A0  38 61 00 18 */	addi r3, r1, 0x18
/* 805483A4  38 80 FF FF */	li r4, -1
/* 805483A8  4B FF B1 19 */	bl __dt__4cXyzFv
lbl_805483AC:
/* 805483AC  38 61 00 54 */	addi r3, r1, 0x54
/* 805483B0  38 80 FF FF */	li r4, -1
/* 805483B4  4B FF B1 0D */	bl __dt__4cXyzFv
/* 805483B8  38 61 00 60 */	addi r3, r1, 0x60
/* 805483BC  38 80 FF FF */	li r4, -1
/* 805483C0  4B FF B1 01 */	bl __dt__4cXyzFv
/* 805483C4  38 61 00 6C */	addi r3, r1, 0x6c
/* 805483C8  38 80 FF FF */	li r4, -1
/* 805483CC  4B FF B0 F5 */	bl __dt__4cXyzFv
/* 805483D0  38 61 00 78 */	addi r3, r1, 0x78
/* 805483D4  38 80 FF FF */	li r4, -1
/* 805483D8  4B FF B0 E9 */	bl __dt__4cXyzFv
lbl_805483DC:
/* 805483DC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 805483E0  4B E1 9E 29 */	bl _restgpr_21
/* 805483E4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 805483E8  7C 08 03 A6 */	mtlr r0
/* 805483EC  38 21 00 E0 */	addi r1, r1, 0xe0
/* 805483F0  4E 80 00 20 */	blr 
