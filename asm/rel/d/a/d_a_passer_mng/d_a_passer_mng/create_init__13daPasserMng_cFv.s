lbl_80D467C0:
/* 80D467C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D467C4  7C 08 02 A6 */	mflr r0
/* 80D467C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D467CC  39 61 00 50 */	addi r11, r1, 0x50
/* 80D467D0  4B 61 B9 FD */	bl _savegpr_25
/* 80D467D4  7C 7F 1B 78 */	mr r31, r3
/* 80D467D8  88 03 04 99 */	lbz r0, 0x499(r3)
/* 80D467DC  28 00 00 00 */	cmplwi r0, 0
/* 80D467E0  38 00 02 90 */	li r0, 0x290
/* 80D467E4  40 82 00 08 */	bne lbl_80D467EC
/* 80D467E8  38 00 02 8F */	li r0, 0x28f
lbl_80D467EC:
/* 80D467EC  B0 1F 05 88 */	sth r0, 0x588(r31)
/* 80D467F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D467F4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80D467F8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D467FC  7C 04 07 74 */	extsb r4, r0
/* 80D46800  4B 30 AF ED */	bl dPath_GetRoomPath__Fii
/* 80D46804  90 7F 05 6C */	stw r3, 0x56c(r31)
/* 80D46808  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D4680C  38 80 00 00 */	li r4, 0
/* 80D46810  4B 30 AF A1 */	bl dPath_GetPnt__FPC5dPathi
/* 80D46814  7C 7A 1B 78 */	mr r26, r3
/* 80D46818  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D4681C  38 80 00 01 */	li r4, 1
/* 80D46820  4B 30 AF 91 */	bl dPath_GetPnt__FPC5dPathi
/* 80D46824  7C 64 1B 78 */	mr r4, r3
/* 80D46828  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80D4682C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80D46830  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80D46834  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80D46838  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80D4683C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80D46840  38 7A 00 04 */	addi r3, r26, 4
/* 80D46844  38 84 00 04 */	addi r4, r4, 4
/* 80D46848  4B 52 A3 F5 */	bl cLib_targetAngleY__FRC3VecRC3Vec
/* 80D4684C  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80D46850  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80D46854  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 80D46858  4B 58 84 6D */	bl __nwa__FUl
/* 80D4685C  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80D46860  38 00 00 00 */	li r0, 0
/* 80D46864  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80D46868  4B 46 5D 15 */	bl dKy_darkworld_check__Fv
/* 80D4686C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D46870  41 82 00 10 */	beq lbl_80D46880
/* 80D46874  4B 45 92 BD */	bl dKy_getDarktime_minute__Fv
/* 80D46878  7C 7A 1B 78 */	mr r26, r3
/* 80D4687C  48 00 00 0C */	b lbl_80D46888
lbl_80D46880:
/* 80D46880  4B 45 91 BD */	bl dKy_getdaytime_minute__Fv
/* 80D46884  7C 7A 1B 78 */	mr r26, r3
lbl_80D46888:
/* 80D46888  4B 46 5C F5 */	bl dKy_darkworld_check__Fv
/* 80D4688C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D46890  41 82 00 0C */	beq lbl_80D4689C
/* 80D46894  4B 45 92 61 */	bl dKy_getDarktime_hour__Fv
/* 80D46898  48 00 00 08 */	b lbl_80D468A0
lbl_80D4689C:
/* 80D4689C  4B 45 91 75 */	bl dKy_getdaytime_hour__Fv
lbl_80D468A0:
/* 80D468A0  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 80D468A4  7F DA 02 14 */	add r30, r26, r0
/* 80D468A8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D468AC  54 00 46 3E */	srwi r0, r0, 0x18
/* 80D468B0  1C 00 00 05 */	mulli r0, r0, 5
/* 80D468B4  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80D468B8  93 DF 05 7C */	stw r30, 0x57c(r31)
/* 80D468BC  4B 46 5C C1 */	bl dKy_darkworld_check__Fv
/* 80D468C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D468C4  41 82 00 10 */	beq lbl_80D468D4
/* 80D468C8  4B 45 92 F5 */	bl dKy_getDarktime_week__Fv
/* 80D468CC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80D468D0  48 00 00 08 */	b lbl_80D468D8
lbl_80D468D4:
/* 80D468D4  4B 46 22 65 */	bl dKy_get_dayofweek__Fv
lbl_80D468D8:
/* 80D468D8  90 7F 05 80 */	stw r3, 0x580(r31)
/* 80D468DC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D468E0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D468E4  28 04 00 FF */	cmplwi r4, 0xff
/* 80D468E8  41 82 00 AC */	beq lbl_80D46994
/* 80D468EC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D468F0  28 00 00 FF */	cmplwi r0, 0xff
/* 80D468F4  41 82 00 A0 */	beq lbl_80D46994
/* 80D468F8  38 A0 00 0A */	li r5, 0xa
/* 80D468FC  7C 04 2B D6 */	divw r0, r4, r5
/* 80D46900  1C 60 00 3C */	mulli r3, r0, 0x3c
/* 80D46904  7C 00 29 D6 */	mullw r0, r0, r5
/* 80D46908  7C 00 20 50 */	subf r0, r0, r4
/* 80D4690C  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80D46910  7C 03 02 14 */	add r0, r3, r0
/* 80D46914  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80D46918  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4691C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D46920  7C 04 2B D6 */	divw r0, r4, r5
/* 80D46924  1C 60 00 3C */	mulli r3, r0, 0x3c
/* 80D46928  7C 00 29 D6 */	mullw r0, r0, r5
/* 80D4692C  7C 00 20 50 */	subf r0, r0, r4
/* 80D46930  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80D46934  7C 03 02 14 */	add r0, r3, r0
/* 80D46938  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80D4693C  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D46940  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80D46944  7C 03 00 00 */	cmpw r3, r0
/* 80D46948  40 81 00 20 */	ble lbl_80D46968
/* 80D4694C  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80D46950  38 83 00 01 */	addi r4, r3, 1
/* 80D46954  38 60 00 07 */	li r3, 7
/* 80D46958  7C 04 1B D6 */	divw r0, r4, r3
/* 80D4695C  7C 00 19 D6 */	mullw r0, r0, r3
/* 80D46960  7C 00 20 50 */	subf r0, r0, r4
/* 80D46964  90 1F 05 80 */	stw r0, 0x580(r31)
lbl_80D46968:
/* 80D46968  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D4696C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D46970  7C 03 20 00 */	cmpw r3, r4
/* 80D46974  41 80 00 10 */	blt lbl_80D46984
/* 80D46978  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80D4697C  7C 03 00 00 */	cmpw r3, r0
/* 80D46980  40 81 00 08 */	ble lbl_80D46988
lbl_80D46984:
/* 80D46984  90 9F 05 7C */	stw r4, 0x57c(r31)
lbl_80D46988:
/* 80D46988  38 00 00 00 */	li r0, 0
/* 80D4698C  98 1F 05 96 */	stb r0, 0x596(r31)
/* 80D46990  48 00 00 0C */	b lbl_80D4699C
lbl_80D46994:
/* 80D46994  38 00 00 01 */	li r0, 1
/* 80D46998  98 1F 05 96 */	stb r0, 0x596(r31)
lbl_80D4699C:
/* 80D4699C  38 60 00 00 */	li r3, 0
/* 80D469A0  38 80 FF FF */	li r4, -1
/* 80D469A4  38 00 00 05 */	li r0, 5
/* 80D469A8  7C 09 03 A6 */	mtctr r0
lbl_80D469AC:
/* 80D469AC  38 03 05 8A */	addi r0, r3, 0x58a
/* 80D469B0  7C 9F 03 2E */	sthx r4, r31, r0
/* 80D469B4  38 63 00 02 */	addi r3, r3, 2
/* 80D469B8  42 00 FF F4 */	bdnz lbl_80D469AC
/* 80D469BC  38 00 00 00 */	li r0, 0
/* 80D469C0  98 1F 05 97 */	stb r0, 0x597(r31)
/* 80D469C4  88 1F 05 96 */	lbz r0, 0x596(r31)
/* 80D469C8  28 00 00 00 */	cmplwi r0, 0
/* 80D469CC  40 82 00 1C */	bne lbl_80D469E8
/* 80D469D0  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80D469D4  7C 00 F0 00 */	cmpw r0, r30
/* 80D469D8  40 80 01 AC */	bge lbl_80D46B84
/* 80D469DC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80D469E0  7C 00 F0 00 */	cmpw r0, r30
/* 80D469E4  40 81 01 A0 */	ble lbl_80D46B84
lbl_80D469E8:
/* 80D469E8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80D469EC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D469F0  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D469F4  A0 63 00 00 */	lhz r3, 0(r3)
/* 80D469F8  3B C3 FF FE */	addi r30, r3, -2
/* 80D469FC  7C 00 F0 00 */	cmpw r0, r30
/* 80D46A00  40 80 00 08 */	bge lbl_80D46A08
/* 80D46A04  7C 1E 03 78 */	mr r30, r0
lbl_80D46A08:
/* 80D46A08  57 C3 10 3A */	slwi r3, r30, 2
/* 80D46A0C  4B 58 82 B9 */	bl __nwa__FUl
/* 80D46A10  7C 7C 1B 78 */	mr r28, r3
/* 80D46A14  3B 20 00 00 */	li r25, 0
/* 80D46A18  3B 60 00 00 */	li r27, 0
/* 80D46A1C  48 00 00 5C */	b lbl_80D46A78
lbl_80D46A20:
/* 80D46A20  38 60 00 01 */	li r3, 1
/* 80D46A24  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 80D46A28  A0 84 00 00 */	lhz r4, 0(r4)
/* 80D46A2C  38 84 FF FE */	addi r4, r4, -2
/* 80D46A30  48 00 01 6D */	bl func_80D46B9C
/* 80D46A34  38 A0 00 01 */	li r5, 1
/* 80D46A38  38 80 00 00 */	li r4, 0
/* 80D46A3C  7F 29 03 A6 */	mtctr r25
/* 80D46A40  2C 19 00 00 */	cmpwi r25, 0
/* 80D46A44  40 81 00 20 */	ble lbl_80D46A64
lbl_80D46A48:
/* 80D46A48  7C 1C 20 2E */	lwzx r0, r28, r4
/* 80D46A4C  7C 03 00 00 */	cmpw r3, r0
/* 80D46A50  40 82 00 0C */	bne lbl_80D46A5C
/* 80D46A54  38 A0 00 00 */	li r5, 0
/* 80D46A58  48 00 00 0C */	b lbl_80D46A64
lbl_80D46A5C:
/* 80D46A5C  38 84 00 04 */	addi r4, r4, 4
/* 80D46A60  42 00 FF E8 */	bdnz lbl_80D46A48
lbl_80D46A64:
/* 80D46A64  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80D46A68  41 82 00 10 */	beq lbl_80D46A78
/* 80D46A6C  7C 7C D9 2E */	stwx r3, r28, r27
/* 80D46A70  3B 39 00 01 */	addi r25, r25, 1
/* 80D46A74  3B 7B 00 04 */	addi r27, r27, 4
lbl_80D46A78:
/* 80D46A78  7C 19 F0 00 */	cmpw r25, r30
/* 80D46A7C  41 80 FF A4 */	blt lbl_80D46A20
/* 80D46A80  3B A0 00 00 */	li r29, 0
/* 80D46A84  3B 60 00 00 */	li r27, 0
/* 80D46A88  48 00 00 EC */	b lbl_80D46B74
lbl_80D46A8C:
/* 80D46A8C  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D46A90  7C 9C D8 2E */	lwzx r4, r28, r27
/* 80D46A94  4B 30 AD 1D */	bl dPath_GetPnt__FPC5dPathi
/* 80D46A98  7C 7A 1B 78 */	mr r26, r3
/* 80D46A9C  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D46AA0  7C 9C D8 2E */	lwzx r4, r28, r27
/* 80D46AA4  38 84 00 01 */	addi r4, r4, 1
/* 80D46AA8  4B 30 AD 09 */	bl dPath_GetPnt__FPC5dPathi
/* 80D46AAC  7C 64 1B 78 */	mr r4, r3
/* 80D46AB0  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80D46AB4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D46AB8  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80D46ABC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D46AC0  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80D46AC4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D46AC8  38 61 00 18 */	addi r3, r1, 0x18
/* 80D46ACC  38 84 00 04 */	addi r4, r4, 4
/* 80D46AD0  4B 52 A1 6D */	bl cLib_targetAngleY__FRC3VecRC3Vec
/* 80D46AD4  7C 65 1B 78 */	mr r5, r3
/* 80D46AD8  38 61 00 10 */	addi r3, r1, 0x10
/* 80D46ADC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80D46AE0  7C 04 07 34 */	extsh r4, r0
/* 80D46AE4  38 C0 00 00 */	li r6, 0
/* 80D46AE8  4B 52 09 0D */	bl __ct__5csXyzFsss
/* 80D46AEC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D46AF0  7C 1A 07 74 */	extsb r26, r0
/* 80D46AF4  28 1F 00 00 */	cmplwi r31, 0
/* 80D46AF8  41 82 00 0C */	beq lbl_80D46B04
/* 80D46AFC  83 3F 00 04 */	lwz r25, 4(r31)
/* 80D46B00  48 00 00 08 */	b lbl_80D46B08
lbl_80D46B04:
/* 80D46B04  3B 20 FF FF */	li r25, -1
lbl_80D46B08:
/* 80D46B08  7F E3 FB 78 */	mr r3, r31
/* 80D46B0C  4B FF EE 71 */	bl getPasserParam__13daPasserMng_cFv
/* 80D46B10  7C 65 1B 78 */	mr r5, r3
/* 80D46B14  38 00 00 00 */	li r0, 0
/* 80D46B18  90 01 00 08 */	stw r0, 8(r1)
/* 80D46B1C  A8 7F 05 88 */	lha r3, 0x588(r31)
/* 80D46B20  7F 24 CB 78 */	mr r4, r25
/* 80D46B24  38 C1 00 18 */	addi r6, r1, 0x18
/* 80D46B28  7F 47 D3 78 */	mr r7, r26
/* 80D46B2C  39 01 00 10 */	addi r8, r1, 0x10
/* 80D46B30  39 20 00 00 */	li r9, 0
/* 80D46B34  39 40 FF FF */	li r10, -1
/* 80D46B38  4B 2D 33 B9 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80D46B3C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D46B40  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80D46B44  54 00 10 3A */	slwi r0, r0, 2
/* 80D46B48  7C 64 01 2E */	stwx r3, r4, r0
/* 80D46B4C  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80D46B50  38 83 00 01 */	addi r4, r3, 1
/* 80D46B54  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80D46B58  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80D46B5C  7C 04 1B D6 */	divw r0, r4, r3
/* 80D46B60  7C 00 19 D6 */	mullw r0, r0, r3
/* 80D46B64  7C 00 20 50 */	subf r0, r0, r4
/* 80D46B68  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80D46B6C  3B BD 00 01 */	addi r29, r29, 1
/* 80D46B70  3B 7B 00 04 */	addi r27, r27, 4
lbl_80D46B74:
/* 80D46B74  7C 1D F0 00 */	cmpw r29, r30
/* 80D46B78  41 80 FF 14 */	blt lbl_80D46A8C
/* 80D46B7C  7F 83 E3 78 */	mr r3, r28
/* 80D46B80  4B 58 81 E1 */	bl __dla__FPv
lbl_80D46B84:
/* 80D46B84  39 61 00 50 */	addi r11, r1, 0x50
/* 80D46B88  4B 61 B6 91 */	bl _restgpr_25
/* 80D46B8C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D46B90  7C 08 03 A6 */	mtlr r0
/* 80D46B94  38 21 00 50 */	addi r1, r1, 0x50
/* 80D46B98  4E 80 00 20 */	blr 
