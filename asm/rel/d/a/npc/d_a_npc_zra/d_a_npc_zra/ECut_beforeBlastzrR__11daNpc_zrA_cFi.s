lbl_80B86FAC:
/* 80B86FAC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B86FB0  7C 08 02 A6 */	mflr r0
/* 80B86FB4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B86FB8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B86FBC  4B 7D B2 10 */	b _savegpr_25
/* 80B86FC0  7C 7C 1B 78 */	mr r28, r3
/* 80B86FC4  7C 99 23 78 */	mr r25, r4
/* 80B86FC8  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B86FCC  3B C3 C4 58 */	addi r30, r3, m__17daNpc_zrA_Param_c@l
/* 80B86FD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B86FD4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B86FD8  3B 7F 4F F8 */	addi r27, r31, 0x4ff8
/* 80B86FDC  3B A0 00 00 */	li r29, 0
/* 80B86FE0  3B 40 FF FF */	li r26, -1
/* 80B86FE4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B86FE8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B86FEC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B86FF0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B86FF4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B86FF8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B86FFC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B87000  C0 1E 08 54 */	lfs f0, 0x854(r30)
/* 80B87004  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B87008  C0 1E 08 58 */	lfs f0, 0x858(r30)
/* 80B8700C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B87010  C0 1E 08 5C */	lfs f0, 0x85c(r30)
/* 80B87014  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B87018  7F 63 DB 78 */	mr r3, r27
/* 80B8701C  3C A0 80 B9 */	lis r5, struct_80B8CD30+0x0@ha
/* 80B87020  38 A5 CD 30 */	addi r5, r5, struct_80B8CD30+0x0@l
/* 80B87024  38 A5 01 5B */	addi r5, r5, 0x15b
/* 80B87028  38 C0 00 03 */	li r6, 3
/* 80B8702C  4B 4C 10 C0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B87030  28 03 00 00 */	cmplwi r3, 0
/* 80B87034  41 82 00 08 */	beq lbl_80B8703C
/* 80B87038  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B8703C:
/* 80B8703C  7F 63 DB 78 */	mr r3, r27
/* 80B87040  7F 24 CB 78 */	mr r4, r25
/* 80B87044  4B 4C 0D 08 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B87048  2C 03 00 00 */	cmpwi r3, 0
/* 80B8704C  41 82 00 54 */	beq lbl_80B870A0
/* 80B87050  28 1A 00 14 */	cmplwi r26, 0x14
/* 80B87054  41 81 00 4C */	bgt lbl_80B870A0
/* 80B87058  3C 60 80 B9 */	lis r3, lit_9939@ha
/* 80B8705C  38 63 D8 34 */	addi r3, r3, lit_9939@l
/* 80B87060  57 40 10 3A */	slwi r0, r26, 2
/* 80B87064  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B87068  7C 09 03 A6 */	mtctr r0
/* 80B8706C  4E 80 04 20 */	bctr 
lbl_80B87070:
/* 80B87070  38 60 00 0B */	li r3, 0xb
/* 80B87074  4B 5C E6 C0 */	b daNpcF_offTmpBit__FUl
/* 80B87078  48 00 00 28 */	b lbl_80B870A0
lbl_80B8707C:
/* 80B8707C  7F 83 E3 78 */	mr r3, r28
/* 80B87080  80 9C 14 E0 */	lwz r4, 0x14e0(r28)
/* 80B87084  38 A0 00 00 */	li r5, 0
/* 80B87088  4B 5C CC 94 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B8708C  48 00 00 14 */	b lbl_80B870A0
lbl_80B87090:
/* 80B87090  7F 83 E3 78 */	mr r3, r28
/* 80B87094  80 9C 14 E0 */	lwz r4, 0x14e0(r28)
/* 80B87098  38 A0 00 00 */	li r5, 0
/* 80B8709C  4B 5C CC 80 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80B870A0:
/* 80B870A0  28 1A 00 14 */	cmplwi r26, 0x14
/* 80B870A4  41 81 02 2C */	bgt lbl_80B872D0
/* 80B870A8  3C 60 80 B9 */	lis r3, lit_9940@ha
/* 80B870AC  38 63 D7 E0 */	addi r3, r3, lit_9940@l
/* 80B870B0  57 40 10 3A */	slwi r0, r26, 2
/* 80B870B4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B870B8  7C 09 03 A6 */	mtctr r0
/* 80B870BC  4E 80 04 20 */	bctr 
lbl_80B870C0:
/* 80B870C0  7F 83 E3 78 */	mr r3, r28
/* 80B870C4  38 80 00 01 */	li r4, 1
/* 80B870C8  4B FF B5 35 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B870CC  7F 83 E3 78 */	mr r3, r28
/* 80B870D0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B870D4  4B 49 36 3C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B870D8  7C 64 1B 78 */	mr r4, r3
/* 80B870DC  38 7C 08 F2 */	addi r3, r28, 0x8f2
/* 80B870E0  38 A0 00 20 */	li r5, 0x20
/* 80B870E4  38 C0 02 00 */	li r6, 0x200
/* 80B870E8  4B 6E 95 20 */	b cLib_addCalcAngleS2__FPssss
/* 80B870EC  7F 83 E3 78 */	mr r3, r28
/* 80B870F0  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B870F4  4B 5C D1 5C */	b setAngle__8daNpcF_cFs
/* 80B870F8  3B A0 00 01 */	li r29, 1
/* 80B870FC  48 00 01 D8 */	b lbl_80B872D4
lbl_80B87100:
/* 80B87100  7F 83 E3 78 */	mr r3, r28
/* 80B87104  38 80 00 00 */	li r4, 0
/* 80B87108  38 A0 00 01 */	li r5, 1
/* 80B8710C  38 C0 00 00 */	li r6, 0
/* 80B87110  4B 5C CC 74 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B87114  2C 03 00 00 */	cmpwi r3, 0
/* 80B87118  41 82 00 08 */	beq lbl_80B87120
/* 80B8711C  3B A0 00 01 */	li r29, 1
lbl_80B87120:
/* 80B87120  3C 60 80 B8 */	lis r3, s_sub__FPvPv@ha
/* 80B87124  38 63 42 4C */	addi r3, r3, s_sub__FPvPv@l
/* 80B87128  7F 84 E3 78 */	mr r4, r28
/* 80B8712C  4B 49 A2 0C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80B87130  28 03 00 00 */	cmplwi r3, 0
/* 80B87134  41 82 00 2C */	beq lbl_80B87160
/* 80B87138  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B8713C  D0 03 14 D0 */	stfs f0, 0x14d0(r3)
/* 80B87140  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B87144  D0 03 14 D4 */	stfs f0, 0x14d4(r3)
/* 80B87148  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B8714C  D0 03 14 D8 */	stfs f0, 0x14d8(r3)
/* 80B87150  38 00 CA 18 */	li r0, -13800
/* 80B87154  B0 03 14 4A */	sth r0, 0x144a(r3)
/* 80B87158  38 00 00 01 */	li r0, 1
/* 80B8715C  98 03 14 46 */	stb r0, 0x1446(r3)
lbl_80B87160:
/* 80B87160  7F 83 E3 78 */	mr r3, r28
/* 80B87164  38 80 00 01 */	li r4, 1
/* 80B87168  4B FF B4 95 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B8716C  7F 83 E3 78 */	mr r3, r28
/* 80B87170  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B87174  4B 49 35 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B87178  7C 64 1B 78 */	mr r4, r3
/* 80B8717C  38 7C 08 F2 */	addi r3, r28, 0x8f2
/* 80B87180  38 A0 00 20 */	li r5, 0x20
/* 80B87184  38 C0 02 00 */	li r6, 0x200
/* 80B87188  4B 6E 94 80 */	b cLib_addCalcAngleS2__FPssss
/* 80B8718C  7F 83 E3 78 */	mr r3, r28
/* 80B87190  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B87194  4B 5C D0 BC */	b setAngle__8daNpcF_cFs
/* 80B87198  48 00 01 3C */	b lbl_80B872D4
lbl_80B8719C:
/* 80B8719C  3C 60 80 B8 */	lis r3, s_sub__FPvPv@ha
/* 80B871A0  38 63 42 4C */	addi r3, r3, s_sub__FPvPv@l
/* 80B871A4  7F 84 E3 78 */	mr r4, r28
/* 80B871A8  4B 49 A1 90 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80B871AC  28 03 00 00 */	cmplwi r3, 0
/* 80B871B0  41 82 00 2C */	beq lbl_80B871DC
/* 80B871B4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B871B8  D0 03 14 D0 */	stfs f0, 0x14d0(r3)
/* 80B871BC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B871C0  D0 03 14 D4 */	stfs f0, 0x14d4(r3)
/* 80B871C4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B871C8  D0 03 14 D8 */	stfs f0, 0x14d8(r3)
/* 80B871CC  38 00 CA 18 */	li r0, -13800
/* 80B871D0  B0 03 14 4A */	sth r0, 0x144a(r3)
/* 80B871D4  38 00 00 01 */	li r0, 1
/* 80B871D8  98 03 14 46 */	stb r0, 0x1446(r3)
lbl_80B871DC:
/* 80B871DC  C0 1E 08 60 */	lfs f0, 0x860(r30)
/* 80B871E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B871E4  C0 1E 08 64 */	lfs f0, 0x864(r30)
/* 80B871E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B871EC  C0 1E 08 68 */	lfs f0, 0x868(r30)
/* 80B871F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B871F4  7F 83 E3 78 */	mr r3, r28
/* 80B871F8  38 80 00 01 */	li r4, 1
/* 80B871FC  4B FF B4 01 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B87200  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B87204  38 81 00 08 */	addi r4, r1, 8
/* 80B87208  4B 6E 99 FC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B8720C  7C 7E 1B 78 */	mr r30, r3
/* 80B87210  A8 7C 08 F2 */	lha r3, 0x8f2(r28)
/* 80B87214  7F C0 07 34 */	extsh r0, r30
/* 80B87218  7C 03 00 00 */	cmpw r3, r0
/* 80B8721C  41 82 00 3C */	beq lbl_80B87258
/* 80B87220  7C 1E 18 50 */	subf r0, r30, r3
/* 80B87224  7C 03 07 34 */	extsh r3, r0
/* 80B87228  4B 7D DE A8 */	b abs
/* 80B8722C  2C 03 04 00 */	cmpwi r3, 0x400
/* 80B87230  40 81 00 14 */	ble lbl_80B87244
/* 80B87234  A8 7C 08 F2 */	lha r3, 0x8f2(r28)
/* 80B87238  38 03 FC 00 */	addi r0, r3, -1024
/* 80B8723C  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80B87240  48 00 00 08 */	b lbl_80B87248
lbl_80B87244:
/* 80B87244  B3 DC 08 F2 */	sth r30, 0x8f2(r28)
lbl_80B87248:
/* 80B87248  7F 83 E3 78 */	mr r3, r28
/* 80B8724C  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B87250  4B 5C D0 00 */	b setAngle__8daNpcF_cFs
/* 80B87254  48 00 00 80 */	b lbl_80B872D4
lbl_80B87258:
/* 80B87258  3B A0 00 01 */	li r29, 1
/* 80B8725C  48 00 00 78 */	b lbl_80B872D4
lbl_80B87260:
/* 80B87260  7F 83 E3 78 */	mr r3, r28
/* 80B87264  38 80 00 00 */	li r4, 0
/* 80B87268  38 A0 00 01 */	li r5, 1
/* 80B8726C  38 C0 00 00 */	li r6, 0
/* 80B87270  4B 5C CB 14 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B87274  2C 03 00 00 */	cmpwi r3, 0
/* 80B87278  41 82 00 08 */	beq lbl_80B87280
/* 80B8727C  3B A0 00 01 */	li r29, 1
lbl_80B87280:
/* 80B87280  3C 60 80 B8 */	lis r3, s_sub__FPvPv@ha
/* 80B87284  38 63 42 4C */	addi r3, r3, s_sub__FPvPv@l
/* 80B87288  7F 84 E3 78 */	mr r4, r28
/* 80B8728C  4B 49 A0 AC */	b fpcEx_Search__FPFPvPv_PvPv
/* 80B87290  28 03 00 00 */	cmplwi r3, 0
/* 80B87294  41 82 00 2C */	beq lbl_80B872C0
/* 80B87298  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B8729C  D0 03 14 D0 */	stfs f0, 0x14d0(r3)
/* 80B872A0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B872A4  D0 03 14 D4 */	stfs f0, 0x14d4(r3)
/* 80B872A8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B872AC  D0 03 14 D8 */	stfs f0, 0x14d8(r3)
/* 80B872B0  38 00 CA 18 */	li r0, -13800
/* 80B872B4  B0 03 14 4A */	sth r0, 0x144a(r3)
/* 80B872B8  38 00 00 01 */	li r0, 1
/* 80B872BC  98 03 14 46 */	stb r0, 0x1446(r3)
lbl_80B872C0:
/* 80B872C0  7F 83 E3 78 */	mr r3, r28
/* 80B872C4  38 80 00 01 */	li r4, 1
/* 80B872C8  4B FF B3 35 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B872CC  48 00 00 08 */	b lbl_80B872D4
lbl_80B872D0:
/* 80B872D0  3B A0 00 01 */	li r29, 1
lbl_80B872D4:
/* 80B872D4  7F A3 EB 78 */	mr r3, r29
/* 80B872D8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B872DC  4B 7D AF 3C */	b _restgpr_25
/* 80B872E0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B872E4  7C 08 03 A6 */	mtlr r0
/* 80B872E8  38 21 00 50 */	addi r1, r1, 0x50
/* 80B872EC  4E 80 00 20 */	blr 
