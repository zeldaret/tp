lbl_80D45738:
/* 80D45738  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D4573C  7C 08 02 A6 */	mflr r0
/* 80D45740  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D45744  39 61 00 40 */	addi r11, r1, 0x40
/* 80D45748  4B 61 CA 89 */	bl _savegpr_26
/* 80D4574C  7C 7E 1B 78 */	mr r30, r3
/* 80D45750  4B 46 6E 2D */	bl dKy_darkworld_check__Fv
/* 80D45754  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D45758  41 82 00 10 */	beq lbl_80D45768
/* 80D4575C  4B 45 A3 D5 */	bl dKy_getDarktime_minute__Fv
/* 80D45760  7C 7C 1B 78 */	mr r28, r3
/* 80D45764  48 00 00 0C */	b lbl_80D45770
lbl_80D45768:
/* 80D45768  4B 45 A2 D5 */	bl dKy_getdaytime_minute__Fv
/* 80D4576C  7C 7C 1B 78 */	mr r28, r3
lbl_80D45770:
/* 80D45770  4B 46 6E 0D */	bl dKy_darkworld_check__Fv
/* 80D45774  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D45778  41 82 00 0C */	beq lbl_80D45784
/* 80D4577C  4B 45 A3 79 */	bl dKy_getDarktime_hour__Fv
/* 80D45780  48 00 00 08 */	b lbl_80D45788
lbl_80D45784:
/* 80D45784  4B 45 A2 8D */	bl dKy_getdaytime_hour__Fv
lbl_80D45788:
/* 80D45788  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 80D4578C  7F FC 02 14 */	add r31, r28, r0
/* 80D45790  88 1E 05 96 */	lbz r0, 0x596(r30)
/* 80D45794  28 00 00 00 */	cmplwi r0, 0
/* 80D45798  40 82 00 1C */	bne lbl_80D457B4
/* 80D4579C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80D457A0  7C 1F 00 00 */	cmpw r31, r0
/* 80D457A4  41 80 01 BC */	blt lbl_80D45960
/* 80D457A8  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80D457AC  7C 1F 00 00 */	cmpw r31, r0
/* 80D457B0  40 80 01 B0 */	bge lbl_80D45960
lbl_80D457B4:
/* 80D457B4  4B 46 6D C9 */	bl dKy_darkworld_check__Fv
/* 80D457B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D457BC  41 82 00 10 */	beq lbl_80D457CC
/* 80D457C0  4B 45 A3 FD */	bl dKy_getDarktime_week__Fv
/* 80D457C4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80D457C8  48 00 00 08 */	b lbl_80D457D0
lbl_80D457CC:
/* 80D457CC  4B 46 33 6D */	bl dKy_get_dayofweek__Fv
lbl_80D457D0:
/* 80D457D0  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 80D457D4  7C 00 18 00 */	cmpw r0, r3
/* 80D457D8  40 82 01 88 */	bne lbl_80D45960
/* 80D457DC  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 80D457E0  7C 00 F8 00 */	cmpw r0, r31
/* 80D457E4  41 81 01 7C */	bgt lbl_80D45960
/* 80D457E8  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80D457EC  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80D457F0  3B 40 00 00 */	li r26, 0
/* 80D457F4  93 41 00 10 */	stw r26, 0x10(r1)
/* 80D457F8  7F 5B D3 78 */	mr r27, r26
/* 80D457FC  7F 5D D3 78 */	mr r29, r26
/* 80D45800  48 00 00 2C */	b lbl_80D4582C
lbl_80D45804:
/* 80D45804  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D45808  7C 63 E8 2E */	lwzx r3, r3, r29
/* 80D4580C  38 81 00 10 */	addi r4, r1, 0x10
/* 80D45810  4B 2D 41 AD */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80D45814  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80D45818  28 00 00 00 */	cmplwi r0, 0
/* 80D4581C  41 82 00 08 */	beq lbl_80D45824
/* 80D45820  3B 5A 00 01 */	addi r26, r26, 1
lbl_80D45824:
/* 80D45824  3B 7B 00 01 */	addi r27, r27, 1
/* 80D45828  3B BD 00 04 */	addi r29, r29, 4
lbl_80D4582C:
/* 80D4582C  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80D45830  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D45834  7C 1B 00 00 */	cmpw r27, r0
/* 80D45838  41 80 FF CC */	blt lbl_80D45804
/* 80D4583C  7C 1A E0 00 */	cmpw r26, r28
/* 80D45840  40 80 00 B0 */	bge lbl_80D458F0
/* 80D45844  38 61 00 14 */	addi r3, r1, 0x14
/* 80D45848  88 1E 05 96 */	lbz r0, 0x596(r30)
/* 80D4584C  28 00 00 00 */	cmplwi r0, 0
/* 80D45850  41 82 00 0C */	beq lbl_80D4585C
/* 80D45854  38 00 00 FF */	li r0, 0xff
/* 80D45858  48 00 00 08 */	b lbl_80D45860
lbl_80D4585C:
/* 80D4585C  80 1E 05 74 */	lwz r0, 0x574(r30)
lbl_80D45860:
/* 80D45860  7C 04 07 34 */	extsh r4, r0
/* 80D45864  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80D45868  38 C0 00 00 */	li r6, 0
/* 80D4586C  4B 52 1B 89 */	bl __ct__5csXyzFsss
/* 80D45870  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D45874  7C 1A 07 74 */	extsb r26, r0
/* 80D45878  28 1E 00 00 */	cmplwi r30, 0
/* 80D4587C  41 82 00 0C */	beq lbl_80D45888
/* 80D45880  83 7E 00 04 */	lwz r27, 4(r30)
/* 80D45884  48 00 00 08 */	b lbl_80D4588C
lbl_80D45888:
/* 80D45888  3B 60 FF FF */	li r27, -1
lbl_80D4588C:
/* 80D4588C  7F C3 F3 78 */	mr r3, r30
/* 80D45890  48 00 00 ED */	bl getPasserParam__13daPasserMng_cFv
/* 80D45894  7C 65 1B 78 */	mr r5, r3
/* 80D45898  38 00 00 00 */	li r0, 0
/* 80D4589C  90 01 00 08 */	stw r0, 8(r1)
/* 80D458A0  A8 7E 05 88 */	lha r3, 0x588(r30)
/* 80D458A4  7F 64 DB 78 */	mr r4, r27
/* 80D458A8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D458AC  7F 47 D3 78 */	mr r7, r26
/* 80D458B0  39 01 00 14 */	addi r8, r1, 0x14
/* 80D458B4  39 20 00 00 */	li r9, 0
/* 80D458B8  39 40 FF FF */	li r10, -1
/* 80D458BC  4B 2D 46 35 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80D458C0  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80D458C4  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 80D458C8  54 00 10 3A */	slwi r0, r0, 2
/* 80D458CC  7C 64 01 2E */	stwx r3, r4, r0
/* 80D458D0  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80D458D4  38 83 00 01 */	addi r4, r3, 1
/* 80D458D8  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80D458DC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80D458E0  7C 04 1B D6 */	divw r0, r4, r3
/* 80D458E4  7C 00 19 D6 */	mullw r0, r0, r3
/* 80D458E8  7C 00 20 50 */	subf r0, r0, r4
/* 80D458EC  90 1E 05 84 */	stw r0, 0x584(r30)
lbl_80D458F0:
/* 80D458F0  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80D458F4  7C 1F 02 14 */	add r0, r31, r0
/* 80D458F8  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 80D458FC  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80D45900  2C 03 05 A0 */	cmpwi r3, 0x5a0
/* 80D45904  40 81 00 2C */	ble lbl_80D45930
/* 80D45908  38 03 FA 60 */	addi r0, r3, -1440
/* 80D4590C  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 80D45910  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80D45914  38 83 00 01 */	addi r4, r3, 1
/* 80D45918  38 60 00 07 */	li r3, 7
/* 80D4591C  7C 04 1B D6 */	divw r0, r4, r3
/* 80D45920  7C 00 19 D6 */	mullw r0, r0, r3
/* 80D45924  7C 00 20 50 */	subf r0, r0, r4
/* 80D45928  90 1E 05 80 */	stw r0, 0x580(r30)
/* 80D4592C  48 00 00 34 */	b lbl_80D45960
lbl_80D45930:
/* 80D45930  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80D45934  7C 03 00 00 */	cmpw r3, r0
/* 80D45938  41 80 00 28 */	blt lbl_80D45960
/* 80D4593C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80D45940  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 80D45944  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80D45948  38 83 00 01 */	addi r4, r3, 1
/* 80D4594C  38 60 00 07 */	li r3, 7
/* 80D45950  7C 04 1B D6 */	divw r0, r4, r3
/* 80D45954  7C 00 19 D6 */	mullw r0, r0, r3
/* 80D45958  7C 00 20 50 */	subf r0, r0, r4
/* 80D4595C  90 1E 05 80 */	stw r0, 0x580(r30)
lbl_80D45960:
/* 80D45960  38 60 00 01 */	li r3, 1
/* 80D45964  39 61 00 40 */	addi r11, r1, 0x40
/* 80D45968  4B 61 C8 B5 */	bl _restgpr_26
/* 80D4596C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D45970  7C 08 03 A6 */	mtlr r0
/* 80D45974  38 21 00 40 */	addi r1, r1, 0x40
/* 80D45978  4E 80 00 20 */	blr 
