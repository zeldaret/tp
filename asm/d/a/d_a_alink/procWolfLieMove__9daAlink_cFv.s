lbl_801377F0:
/* 801377F0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801377F4  7C 08 02 A6 */	mflr r0
/* 801377F8  90 01 00 94 */	stw r0, 0x94(r1)
/* 801377FC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80137800  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80137804  39 61 00 80 */	addi r11, r1, 0x80
/* 80137808  48 22 A9 C1 */	bl _savegpr_24
/* 8013780C  7C 79 1B 78 */	mr r25, r3
/* 80137810  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 80137814  3B 84 D6 58 */	addi r28, r4, lit_3757@l /* 0x8038D658@l */
/* 80137818  3B 79 1F D0 */	addi r27, r25, 0x1fd0
/* 8013781C  38 00 00 0D */	li r0, 0xd
/* 80137820  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 80137824  4B FC 10 D5 */	bl decideCrawlDoStatus__9daAlink_cFv
/* 80137828  80 79 06 50 */	lwz r3, 0x650(r25)
/* 8013782C  38 63 00 24 */	addi r3, r3, 0x24
/* 80137830  38 9C 24 5C */	addi r4, r28, 0x245c
/* 80137834  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80137838  48 20 F5 35 */	bl PSMTXMultVec
/* 8013783C  80 79 06 50 */	lwz r3, 0x650(r25)
/* 80137840  38 63 00 24 */	addi r3, r3, 0x24
/* 80137844  38 9C 24 2C */	addi r4, r28, 0x242c
/* 80137848  38 A1 00 38 */	addi r5, r1, 0x38
/* 8013784C  48 20 F5 21 */	bl PSMTXMultVec
/* 80137850  80 79 06 50 */	lwz r3, 0x650(r25)
/* 80137854  38 63 00 24 */	addi r3, r3, 0x24
/* 80137858  38 9C 24 44 */	addi r4, r28, 0x2444
/* 8013785C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80137860  48 20 F5 0D */	bl PSMTXMultVec
/* 80137864  80 79 06 50 */	lwz r3, 0x650(r25)
/* 80137868  38 63 00 24 */	addi r3, r3, 0x24
/* 8013786C  38 9C 24 C8 */	addi r4, r28, 0x24c8
/* 80137870  38 A1 00 14 */	addi r5, r1, 0x14
/* 80137874  48 20 F5 D9 */	bl PSMTXMultVecSR
/* 80137878  7F 23 CB 78 */	mr r3, r25
/* 8013787C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80137880  4B FC 11 61 */	bl checkNotCrawlStand__9daAlink_cFP4cXyz
/* 80137884  7C 7D 1B 78 */	mr r29, r3
/* 80137888  7F 23 CB 78 */	mr r3, r25
/* 8013788C  38 81 00 38 */	addi r4, r1, 0x38
/* 80137890  4B FC 11 51 */	bl checkNotCrawlStand__9daAlink_cFP4cXyz
/* 80137894  7C 7E 1B 78 */	mr r30, r3
/* 80137898  7F 23 CB 78 */	mr r3, r25
/* 8013789C  38 81 00 20 */	addi r4, r1, 0x20
/* 801378A0  4B FC 11 41 */	bl checkNotCrawlStand__9daAlink_cFP4cXyz
/* 801378A4  7C 7F 1B 78 */	mr r31, r3
/* 801378A8  2C 1D 00 00 */	cmpwi r29, 0
/* 801378AC  40 82 00 68 */	bne lbl_80137914
/* 801378B0  2C 1E 00 00 */	cmpwi r30, 0
/* 801378B4  40 82 00 60 */	bne lbl_80137914
/* 801378B8  2C 1F 00 00 */	cmpwi r31, 0
/* 801378BC  40 82 00 58 */	bne lbl_80137914
/* 801378C0  80 19 06 14 */	lwz r0, 0x614(r25)
/* 801378C4  28 00 00 2C */	cmplwi r0, 0x2c
/* 801378C8  41 82 00 4C */	beq lbl_80137914
/* 801378CC  7F 23 CB 78 */	mr r3, r25
/* 801378D0  38 81 00 38 */	addi r4, r1, 0x38
/* 801378D4  38 A1 00 14 */	addi r5, r1, 0x14
/* 801378D8  4B FC 11 79 */	bl checkNotCrawlStand__9daAlink_cFP4cXyzP4cXyz
/* 801378DC  2C 03 00 00 */	cmpwi r3, 0
/* 801378E0  40 82 00 34 */	bne lbl_80137914
/* 801378E4  7F 23 CB 78 */	mr r3, r25
/* 801378E8  38 81 00 20 */	addi r4, r1, 0x20
/* 801378EC  38 A1 00 14 */	addi r5, r1, 0x14
/* 801378F0  4B FC 11 61 */	bl checkNotCrawlStand__9daAlink_cFP4cXyzP4cXyz
/* 801378F4  2C 03 00 00 */	cmpwi r3, 0
/* 801378F8  40 82 00 1C */	bne lbl_80137914
/* 801378FC  7F 23 CB 78 */	mr r3, r25
/* 80137900  38 81 00 2C */	addi r4, r1, 0x2c
/* 80137904  38 A1 00 14 */	addi r5, r1, 0x14
/* 80137908  4B FC 11 49 */	bl checkNotCrawlStand__9daAlink_cFP4cXyzP4cXyz
/* 8013790C  2C 03 00 00 */	cmpwi r3, 0
/* 80137910  41 82 00 18 */	beq lbl_80137928
lbl_80137914:
/* 80137914  3B 40 00 00 */	li r26, 0
/* 80137918  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 8013791C  64 00 04 00 */	oris r0, r0, 0x400
/* 80137920  90 19 31 A0 */	stw r0, 0x31a0(r25)
/* 80137924  48 00 00 14 */	b lbl_80137938
lbl_80137928:
/* 80137928  3B 40 00 01 */	li r26, 1
/* 8013792C  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 80137930  54 00 01 88 */	rlwinm r0, r0, 0, 6, 4
/* 80137934  90 19 31 A0 */	stw r0, 0x31a0(r25)
lbl_80137938:
/* 80137938  80 19 06 14 */	lwz r0, 0x614(r25)
/* 8013793C  28 00 00 2C */	cmplwi r0, 0x2c
/* 80137940  40 82 00 18 */	bne lbl_80137958
/* 80137944  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80137948  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013794C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80137950  80 99 31 84 */	lwz r4, 0x3184(r25)
/* 80137954  4B F1 08 29 */	bl cutEnd__16dEvent_manager_cFi
lbl_80137958:
/* 80137958  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8013795C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80137960  90 01 00 54 */	stw r0, 0x54(r1)
/* 80137964  7F 23 CB 78 */	mr r3, r25
/* 80137968  38 80 00 00 */	li r4, 0
/* 8013796C  2C 1A 00 00 */	cmpwi r26, 0
/* 80137970  41 82 00 1C */	beq lbl_8013798C
/* 80137974  A8 19 30 0E */	lha r0, 0x300e(r25)
/* 80137978  2C 00 00 00 */	cmpwi r0, 0
/* 8013797C  40 82 00 10 */	bne lbl_8013798C
/* 80137980  A8 19 30 10 */	lha r0, 0x3010(r25)
/* 80137984  2C 00 00 00 */	cmpwi r0, 0
/* 80137988  41 82 00 08 */	beq lbl_80137990
lbl_8013798C:
/* 8013798C  38 80 00 01 */	li r4, 1
lbl_80137990:
/* 80137990  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80137994  4B FF F8 69 */	bl checkWolfLieContinue__9daAlink_cFi
/* 80137998  2C 03 00 00 */	cmpwi r3, 0
/* 8013799C  40 82 00 10 */	bne lbl_801379AC
/* 801379A0  7F 23 CB 78 */	mr r3, r25
/* 801379A4  4B FF F9 11 */	bl checkNextActionWolfFromLie__9daAlink_cFv
/* 801379A8  48 00 02 B8 */	b lbl_80137C60
lbl_801379AC:
/* 801379AC  38 00 00 00 */	li r0, 0
/* 801379B0  B0 19 30 10 */	sth r0, 0x3010(r25)
/* 801379B4  3B 00 00 00 */	li r24, 0
/* 801379B8  7F 23 CB 78 */	mr r3, r25
/* 801379BC  4B FF F7 29 */	bl getWolfLieMoveAnmSpeed__9daAlink_cFv
/* 801379C0  FF E0 08 90 */	fmr f31, f1
/* 801379C4  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 801379C8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801379CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801379D0  40 81 00 0C */	ble lbl_801379DC
/* 801379D4  D3 FB 00 0C */	stfs f31, 0xc(r27)
/* 801379D8  48 00 00 18 */	b lbl_801379F0
lbl_801379DC:
/* 801379DC  40 80 00 10 */	bge lbl_801379EC
/* 801379E0  FC 00 F8 50 */	fneg f0, f31
/* 801379E4  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 801379E8  48 00 00 08 */	b lbl_801379F0
lbl_801379EC:
/* 801379EC  3B 00 00 01 */	li r24, 1
lbl_801379F0:
/* 801379F0  2C 18 00 01 */	cmpwi r24, 1
/* 801379F4  41 82 00 2C */	beq lbl_80137A20
/* 801379F8  7F 63 DB 78 */	mr r3, r27
/* 801379FC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80137A00  48 1F 0A 2D */	bl checkPass__12J3DFrameCtrlFf
/* 80137A04  2C 03 00 00 */	cmpwi r3, 0
/* 80137A08  40 82 00 18 */	bne lbl_80137A20
/* 80137A0C  7F 63 DB 78 */	mr r3, r27
/* 80137A10  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 80137A14  48 1F 0A 19 */	bl checkPass__12J3DFrameCtrlFf
/* 80137A18  2C 03 00 00 */	cmpwi r3, 0
/* 80137A1C  41 82 00 94 */	beq lbl_80137AB0
lbl_80137A20:
/* 80137A20  A8 79 30 0E */	lha r3, 0x300e(r25)
/* 80137A24  2C 03 00 00 */	cmpwi r3, 0
/* 80137A28  41 82 00 1C */	beq lbl_80137A44
/* 80137A2C  38 03 FF FF */	addi r0, r3, -1
/* 80137A30  B0 19 30 0E */	sth r0, 0x300e(r25)
/* 80137A34  D3 FB 00 0C */	stfs f31, 0xc(r27)
/* 80137A38  38 00 00 00 */	li r0, 0
/* 80137A3C  B0 1B 00 0A */	sth r0, 0xa(r27)
/* 80137A40  48 00 00 70 */	b lbl_80137AB0
lbl_80137A44:
/* 80137A44  C0 39 33 AC */	lfs f1, 0x33ac(r25)
/* 80137A48  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80137A4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137A50  40 81 00 4C */	ble lbl_80137A9C
/* 80137A54  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 80137A58  A8 19 2F E2 */	lha r0, 0x2fe2(r25)
/* 80137A5C  7C 03 00 50 */	subf r0, r3, r0
/* 80137A60  7C 03 07 34 */	extsh r3, r0
/* 80137A64  4B F7 BA 31 */	bl getDirectionFromAngle__9daAlink_cFs
/* 80137A68  2C 03 00 01 */	cmpwi r3, 1
/* 80137A6C  41 82 00 14 */	beq lbl_80137A80
/* 80137A70  D3 FB 00 0C */	stfs f31, 0xc(r27)
/* 80137A74  38 00 00 00 */	li r0, 0
/* 80137A78  B0 1B 00 0A */	sth r0, 0xa(r27)
/* 80137A7C  48 00 00 14 */	b lbl_80137A90
lbl_80137A80:
/* 80137A80  FC 00 F8 50 */	fneg f0, f31
/* 80137A84  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 80137A88  A8 1B 00 08 */	lha r0, 8(r27)
/* 80137A8C  B0 1B 00 0A */	sth r0, 0xa(r27)
lbl_80137A90:
/* 80137A90  7F 23 CB 78 */	mr r3, r25
/* 80137A94  4B F8 78 E9 */	bl initBasAnime__9daAlink_cFv
/* 80137A98  48 00 00 18 */	b lbl_80137AB0
lbl_80137A9C:
/* 80137A9C  2C 18 00 00 */	cmpwi r24, 0
/* 80137AA0  40 82 00 10 */	bne lbl_80137AB0
/* 80137AA4  7F 23 CB 78 */	mr r3, r25
/* 80137AA8  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 80137AAC  4B FC 14 5D */	bl stopHalfMoveAnime__9daAlink_cFf
lbl_80137AB0:
/* 80137AB0  7F 23 CB 78 */	mr r3, r25
/* 80137AB4  38 80 00 01 */	li r4, 1
/* 80137AB8  4B FF F8 79 */	bl setWolfLieMoveVoice__9daAlink_cFi
/* 80137ABC  83 19 31 98 */	lwz r24, 0x3198(r25)
/* 80137AC0  38 00 00 00 */	li r0, 0
/* 80137AC4  90 19 31 98 */	stw r0, 0x3198(r25)
/* 80137AC8  7F 23 CB 78 */	mr r3, r25
/* 80137ACC  38 81 00 38 */	addi r4, r1, 0x38
/* 80137AD0  38 A1 00 20 */	addi r5, r1, 0x20
/* 80137AD4  38 C1 00 08 */	addi r6, r1, 8
/* 80137AD8  7F 47 D3 78 */	mr r7, r26
/* 80137ADC  4B FC 10 25 */	bl checkCrawlInHoll__9daAlink_cFP4cXyzP4cXyzP4cXyzi
/* 80137AE0  2C 03 00 00 */	cmpwi r3, 0
/* 80137AE4  41 82 00 10 */	beq lbl_80137AF4
/* 80137AE8  7F 23 CB 78 */	mr r3, r25
/* 80137AEC  4B FC 12 19 */	bl setCrawlMoveHoll__9daAlink_cFv
/* 80137AF0  48 00 00 B8 */	b lbl_80137BA8
lbl_80137AF4:
/* 80137AF4  2C 18 00 00 */	cmpwi r24, 0
/* 80137AF8  41 82 00 4C */	beq lbl_80137B44
/* 80137AFC  2C 1D 00 00 */	cmpwi r29, 0
/* 80137B00  41 82 00 44 */	beq lbl_80137B44
/* 80137B04  2C 1E 00 00 */	cmpwi r30, 0
/* 80137B08  41 82 00 3C */	beq lbl_80137B44
/* 80137B0C  2C 1F 00 00 */	cmpwi r31, 0
/* 80137B10  41 82 00 34 */	beq lbl_80137B44
/* 80137B14  2C 1A 00 00 */	cmpwi r26, 0
/* 80137B18  40 82 00 2C */	bne lbl_80137B44
/* 80137B1C  7F 23 CB 78 */	mr r3, r25
/* 80137B20  38 81 00 08 */	addi r4, r1, 8
/* 80137B24  4B FC 03 25 */	bl changeCrawlAutoMoveProc__9daAlink_cFP4cXyz
/* 80137B28  2C 03 00 00 */	cmpwi r3, 0
/* 80137B2C  41 82 00 18 */	beq lbl_80137B44
/* 80137B30  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80137B34  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80137B38  90 01 00 54 */	stw r0, 0x54(r1)
/* 80137B3C  38 60 00 01 */	li r3, 1
/* 80137B40  48 00 01 30 */	b lbl_80137C70
lbl_80137B44:
/* 80137B44  A8 19 30 0E */	lha r0, 0x300e(r25)
/* 80137B48  2C 00 00 00 */	cmpwi r0, 0
/* 80137B4C  40 82 00 5C */	bne lbl_80137BA8
/* 80137B50  C0 39 33 AC */	lfs f1, 0x33ac(r25)
/* 80137B54  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80137B58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137B5C  40 81 00 4C */	ble lbl_80137BA8
/* 80137B60  7F 23 CB 78 */	mr r3, r25
/* 80137B64  4B FF F5 C9 */	bl getWolfLieMoveSpeed__9daAlink_cFv
/* 80137B68  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80137B6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137B70  4C 41 13 82 */	cror 2, 1, 2
/* 80137B74  40 82 00 0C */	bne lbl_80137B80
/* 80137B78  A8 99 2F E2 */	lha r4, 0x2fe2(r25)
/* 80137B7C  48 00 00 14 */	b lbl_80137B90
lbl_80137B80:
/* 80137B80  A8 79 2F E2 */	lha r3, 0x2fe2(r25)
/* 80137B84  3C 63 00 01 */	addis r3, r3, 1
/* 80137B88  38 03 80 00 */	addi r0, r3, -32768
/* 80137B8C  7C 04 07 34 */	extsh r4, r0
lbl_80137B90:
/* 80137B90  38 79 04 E6 */	addi r3, r25, 0x4e6
/* 80137B94  38 FC 1A E0 */	addi r7, r28, 0x1ae0
/* 80137B98  A8 A7 00 28 */	lha r5, 0x28(r7)
/* 80137B9C  A8 C7 00 2A */	lha r6, 0x2a(r7)
/* 80137BA0  A8 E7 00 2C */	lha r7, 0x2c(r7)
/* 80137BA4  48 13 89 9D */	bl cLib_addCalcAngleS__FPsssss
lbl_80137BA8:
/* 80137BA8  7F 23 CB 78 */	mr r3, r25
/* 80137BAC  4B FF F5 81 */	bl getWolfLieMoveSpeed__9daAlink_cFv
/* 80137BB0  D0 39 33 98 */	stfs f1, 0x3398(r25)
/* 80137BB4  C0 39 33 98 */	lfs f1, 0x3398(r25)
/* 80137BB8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80137BBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137BC0  40 80 00 24 */	bge lbl_80137BE4
/* 80137BC4  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80137BC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80137BCC  D0 19 33 98 */	stfs f0, 0x3398(r25)
/* 80137BD0  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 80137BD4  3C 63 00 01 */	addis r3, r3, 1
/* 80137BD8  38 03 80 00 */	addi r0, r3, -32768
/* 80137BDC  B0 19 04 DE */	sth r0, 0x4de(r25)
/* 80137BE0  48 00 00 0C */	b lbl_80137BEC
lbl_80137BE4:
/* 80137BE4  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 80137BE8  B0 19 04 DE */	sth r0, 0x4de(r25)
lbl_80137BEC:
/* 80137BEC  80 19 31 98 */	lwz r0, 0x3198(r25)
/* 80137BF0  2C 00 00 00 */	cmpwi r0, 0
/* 80137BF4  41 82 00 14 */	beq lbl_80137C08
/* 80137BF8  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 80137BFC  60 00 60 00 */	ori r0, r0, 0x6000
/* 80137C00  90 19 31 A0 */	stw r0, 0x31a0(r25)
/* 80137C04  48 00 00 10 */	b lbl_80137C14
lbl_80137C08:
/* 80137C08  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 80137C0C  54 00 04 E0 */	rlwinm r0, r0, 0, 0x13, 0x10
/* 80137C10  90 19 31 A0 */	stw r0, 0x31a0(r25)
lbl_80137C14:
/* 80137C14  83 59 27 E0 */	lwz r26, 0x27e0(r25)
/* 80137C18  3B 60 00 01 */	li r27, 1
/* 80137C1C  7F 43 D3 78 */	mr r3, r26
/* 80137C20  4B F3 BB C5 */	bl LockonTruth__12dAttention_cFv
/* 80137C24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80137C28  40 82 00 14 */	bne lbl_80137C3C
/* 80137C2C  80 1A 03 34 */	lwz r0, 0x334(r26)
/* 80137C30  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80137C34  40 82 00 08 */	bne lbl_80137C3C
/* 80137C38  3B 60 00 00 */	li r27, 0
lbl_80137C3C:
/* 80137C3C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80137C40  41 82 00 0C */	beq lbl_80137C4C
/* 80137C44  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 80137C48  B0 19 2F E4 */	sth r0, 0x2fe4(r25)
lbl_80137C4C:
/* 80137C4C  7F 23 CB 78 */	mr r3, r25
/* 80137C50  4B F7 CD B9 */	bl setTalkStatus__9daAlink_cFv
/* 80137C54  7F 23 CB 78 */	mr r3, r25
/* 80137C58  38 80 00 01 */	li r4, 1
/* 80137C5C  4B F7 FF 9D */	bl orderTalk__9daAlink_cFi
lbl_80137C60:
/* 80137C60  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80137C64  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80137C68  90 01 00 54 */	stw r0, 0x54(r1)
/* 80137C6C  38 60 00 01 */	li r3, 1
lbl_80137C70:
/* 80137C70  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80137C74  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80137C78  39 61 00 80 */	addi r11, r1, 0x80
/* 80137C7C  48 22 A5 99 */	bl _restgpr_24
/* 80137C80  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80137C84  7C 08 03 A6 */	mtlr r0
/* 80137C88  38 21 00 90 */	addi r1, r1, 0x90
/* 80137C8C  4E 80 00 20 */	blr 
