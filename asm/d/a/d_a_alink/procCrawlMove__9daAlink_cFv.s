lbl_800F95B8:
/* 800F95B8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800F95BC  7C 08 02 A6 */	mflr r0
/* 800F95C0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800F95C4  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 800F95C8  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 800F95CC  39 61 00 90 */	addi r11, r1, 0x90
/* 800F95D0  48 26 8B F9 */	bl _savegpr_24
/* 800F95D4  7C 79 1B 78 */	mr r25, r3
/* 800F95D8  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800F95DC  3B 84 D6 58 */	addi r28, r4, lit_3757@l /* 0x8038D658@l */
/* 800F95E0  3B 79 1F D0 */	addi r27, r25, 0x1fd0
/* 800F95E4  38 00 00 0C */	li r0, 0xc
/* 800F95E8  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 800F95EC  4B FF F3 0D */	bl decideCrawlDoStatus__9daAlink_cFv
/* 800F95F0  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800F95F4  38 63 00 24 */	addi r3, r3, 0x24
/* 800F95F8  38 9C 24 50 */	addi r4, r28, 0x2450
/* 800F95FC  38 A1 00 38 */	addi r5, r1, 0x38
/* 800F9600  48 24 D7 6D */	bl PSMTXMultVec
/* 800F9604  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800F9608  38 63 00 24 */	addi r3, r3, 0x24
/* 800F960C  38 9C 24 20 */	addi r4, r28, 0x2420
/* 800F9610  38 A1 00 44 */	addi r5, r1, 0x44
/* 800F9614  48 24 D7 59 */	bl PSMTXMultVec
/* 800F9618  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800F961C  38 63 00 24 */	addi r3, r3, 0x24
/* 800F9620  38 9C 24 38 */	addi r4, r28, 0x2438
/* 800F9624  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800F9628  48 24 D7 45 */	bl PSMTXMultVec
/* 800F962C  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800F9630  38 63 00 24 */	addi r3, r3, 0x24
/* 800F9634  38 9C 24 C8 */	addi r4, r28, 0x24c8
/* 800F9638  38 A1 00 20 */	addi r5, r1, 0x20
/* 800F963C  48 24 D8 11 */	bl PSMTXMultVecSR
/* 800F9640  7F 23 CB 78 */	mr r3, r25
/* 800F9644  38 81 00 38 */	addi r4, r1, 0x38
/* 800F9648  4B FF F3 99 */	bl checkNotCrawlStand__9daAlink_cFP4cXyz
/* 800F964C  7C 7D 1B 78 */	mr r29, r3
/* 800F9650  7F 23 CB 78 */	mr r3, r25
/* 800F9654  38 81 00 44 */	addi r4, r1, 0x44
/* 800F9658  4B FF F3 89 */	bl checkNotCrawlStand__9daAlink_cFP4cXyz
/* 800F965C  7C 7E 1B 78 */	mr r30, r3
/* 800F9660  7F 23 CB 78 */	mr r3, r25
/* 800F9664  38 81 00 2C */	addi r4, r1, 0x2c
/* 800F9668  4B FF F3 79 */	bl checkNotCrawlStand__9daAlink_cFP4cXyz
/* 800F966C  7C 7F 1B 78 */	mr r31, r3
/* 800F9670  2C 1D 00 00 */	cmpwi r29, 0
/* 800F9674  40 82 00 5C */	bne lbl_800F96D0
/* 800F9678  2C 1E 00 00 */	cmpwi r30, 0
/* 800F967C  40 82 00 54 */	bne lbl_800F96D0
/* 800F9680  2C 1F 00 00 */	cmpwi r31, 0
/* 800F9684  40 82 00 4C */	bne lbl_800F96D0
/* 800F9688  7F 23 CB 78 */	mr r3, r25
/* 800F968C  38 81 00 44 */	addi r4, r1, 0x44
/* 800F9690  38 A1 00 20 */	addi r5, r1, 0x20
/* 800F9694  4B FF F3 BD */	bl checkNotCrawlStand__9daAlink_cFP4cXyzP4cXyz
/* 800F9698  2C 03 00 00 */	cmpwi r3, 0
/* 800F969C  40 82 00 34 */	bne lbl_800F96D0
/* 800F96A0  7F 23 CB 78 */	mr r3, r25
/* 800F96A4  38 81 00 2C */	addi r4, r1, 0x2c
/* 800F96A8  38 A1 00 20 */	addi r5, r1, 0x20
/* 800F96AC  4B FF F3 A5 */	bl checkNotCrawlStand__9daAlink_cFP4cXyzP4cXyz
/* 800F96B0  2C 03 00 00 */	cmpwi r3, 0
/* 800F96B4  40 82 00 1C */	bne lbl_800F96D0
/* 800F96B8  7F 23 CB 78 */	mr r3, r25
/* 800F96BC  38 81 00 38 */	addi r4, r1, 0x38
/* 800F96C0  38 A1 00 20 */	addi r5, r1, 0x20
/* 800F96C4  4B FF F3 8D */	bl checkNotCrawlStand__9daAlink_cFP4cXyzP4cXyz
/* 800F96C8  2C 03 00 00 */	cmpwi r3, 0
/* 800F96CC  41 82 00 18 */	beq lbl_800F96E4
lbl_800F96D0:
/* 800F96D0  3B 40 00 00 */	li r26, 0
/* 800F96D4  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800F96D8  64 00 04 00 */	oris r0, r0, 0x400
/* 800F96DC  90 19 31 A0 */	stw r0, 0x31a0(r25)
/* 800F96E0  48 00 00 14 */	b lbl_800F96F4
lbl_800F96E4:
/* 800F96E4  3B 40 00 01 */	li r26, 1
/* 800F96E8  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800F96EC  54 00 01 88 */	rlwinm r0, r0, 0, 6, 4
/* 800F96F0  90 19 31 A0 */	stw r0, 0x31a0(r25)
lbl_800F96F4:
/* 800F96F4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800F96F8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800F96FC  90 01 00 60 */	stw r0, 0x60(r1)
/* 800F9700  2C 1A 00 00 */	cmpwi r26, 0
/* 800F9704  41 82 00 10 */	beq lbl_800F9714
/* 800F9708  A8 19 30 0E */	lha r0, 0x300e(r25)
/* 800F970C  2C 00 00 00 */	cmpwi r0, 0
/* 800F9710  41 82 00 30 */	beq lbl_800F9740
lbl_800F9714:
/* 800F9714  7F 23 CB 78 */	mr r3, r25
/* 800F9718  38 81 00 50 */	addi r4, r1, 0x50
/* 800F971C  4B FB 88 BD */	bl getSlidePolygon__9daAlink_cFP8cM3dGPla
/* 800F9720  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F9724  40 82 00 1C */	bne lbl_800F9740
/* 800F9728  C0 59 33 B4 */	lfs f2, 0x33b4(r25)
/* 800F972C  C0 22 95 44 */	lfs f1, lit_23155(r2)
/* 800F9730  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 800F9734  EC 01 00 2A */	fadds f0, f1, f0
/* 800F9738  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800F973C  40 81 00 1C */	ble lbl_800F9758
lbl_800F9740:
/* 800F9740  7F 23 CB 78 */	mr r3, r25
/* 800F9744  38 80 00 01 */	li r4, 1
/* 800F9748  A8 B9 04 E4 */	lha r5, 0x4e4(r25)
/* 800F974C  A8 D9 04 E8 */	lha r6, 0x4e8(r25)
/* 800F9750  48 00 06 2D */	bl procCrawlEndInit__9daAlink_cFiss
/* 800F9754  48 00 02 78 */	b lbl_800F99CC
lbl_800F9758:
/* 800F9758  3B 00 00 00 */	li r24, 0
/* 800F975C  7F 23 CB 78 */	mr r3, r25
/* 800F9760  4B FF E4 F1 */	bl getCrawlMoveAnmSpeed__9daAlink_cFv
/* 800F9764  FF E0 08 90 */	fmr f31, f1
/* 800F9768  C0 5B 00 0C */	lfs f2, 0xc(r27)
/* 800F976C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F9770  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800F9774  40 81 00 14 */	ble lbl_800F9788
/* 800F9778  7F 23 CB 78 */	mr r3, r25
/* 800F977C  7F 64 DB 78 */	mr r4, r27
/* 800F9780  48 00 85 75 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 800F9784  48 00 00 20 */	b lbl_800F97A4
lbl_800F9788:
/* 800F9788  40 80 00 18 */	bge lbl_800F97A0
/* 800F978C  7F 23 CB 78 */	mr r3, r25
/* 800F9790  7F 64 DB 78 */	mr r4, r27
/* 800F9794  FC 20 F8 50 */	fneg f1, f31
/* 800F9798  48 00 85 5D */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 800F979C  48 00 00 08 */	b lbl_800F97A4
lbl_800F97A0:
/* 800F97A0  3B 00 00 01 */	li r24, 1
lbl_800F97A4:
/* 800F97A4  2C 18 00 01 */	cmpwi r24, 1
/* 800F97A8  41 82 00 2C */	beq lbl_800F97D4
/* 800F97AC  7F 63 DB 78 */	mr r3, r27
/* 800F97B0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F97B4  48 22 EC 79 */	bl checkPass__12J3DFrameCtrlFf
/* 800F97B8  2C 03 00 00 */	cmpwi r3, 0
/* 800F97BC  40 82 00 18 */	bne lbl_800F97D4
/* 800F97C0  7F 63 DB 78 */	mr r3, r27
/* 800F97C4  C0 22 94 94 */	lfs f1, lit_16210(r2)
/* 800F97C8  48 22 EC 65 */	bl checkPass__12J3DFrameCtrlFf
/* 800F97CC  2C 03 00 00 */	cmpwi r3, 0
/* 800F97D0  41 82 00 B4 */	beq lbl_800F9884
lbl_800F97D4:
/* 800F97D4  A8 79 30 0E */	lha r3, 0x300e(r25)
/* 800F97D8  2C 03 00 00 */	cmpwi r3, 0
/* 800F97DC  41 82 00 28 */	beq lbl_800F9804
/* 800F97E0  38 03 FF FF */	addi r0, r3, -1
/* 800F97E4  B0 19 30 0E */	sth r0, 0x300e(r25)
/* 800F97E8  7F 23 CB 78 */	mr r3, r25
/* 800F97EC  7F 64 DB 78 */	mr r4, r27
/* 800F97F0  FC 20 F8 90 */	fmr f1, f31
/* 800F97F4  48 00 85 01 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 800F97F8  38 00 00 00 */	li r0, 0
/* 800F97FC  B0 1B 00 0A */	sth r0, 0xa(r27)
/* 800F9800  48 00 00 84 */	b lbl_800F9884
lbl_800F9804:
/* 800F9804  C0 39 33 AC */	lfs f1, 0x33ac(r25)
/* 800F9808  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F980C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F9810  40 81 00 60 */	ble lbl_800F9870
/* 800F9814  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 800F9818  A8 19 2F E2 */	lha r0, 0x2fe2(r25)
/* 800F981C  7C 03 00 50 */	subf r0, r3, r0
/* 800F9820  7C 03 07 34 */	extsh r3, r0
/* 800F9824  4B FB 9C 71 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800F9828  2C 03 00 01 */	cmpwi r3, 1
/* 800F982C  41 82 00 20 */	beq lbl_800F984C
/* 800F9830  7F 23 CB 78 */	mr r3, r25
/* 800F9834  7F 64 DB 78 */	mr r4, r27
/* 800F9838  FC 20 F8 90 */	fmr f1, f31
/* 800F983C  48 00 84 B9 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 800F9840  38 00 00 00 */	li r0, 0
/* 800F9844  B0 1B 00 0A */	sth r0, 0xa(r27)
/* 800F9848  48 00 00 1C */	b lbl_800F9864
lbl_800F984C:
/* 800F984C  7F 23 CB 78 */	mr r3, r25
/* 800F9850  7F 64 DB 78 */	mr r4, r27
/* 800F9854  FC 20 F8 50 */	fneg f1, f31
/* 800F9858  48 00 84 9D */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 800F985C  A8 1B 00 08 */	lha r0, 8(r27)
/* 800F9860  B0 1B 00 0A */	sth r0, 0xa(r27)
lbl_800F9864:
/* 800F9864  7F 23 CB 78 */	mr r3, r25
/* 800F9868  4B FC 5B 15 */	bl initBasAnime__9daAlink_cFv
/* 800F986C  48 00 00 18 */	b lbl_800F9884
lbl_800F9870:
/* 800F9870  2C 18 00 00 */	cmpwi r24, 0
/* 800F9874  40 82 00 10 */	bne lbl_800F9884
/* 800F9878  7F 23 CB 78 */	mr r3, r25
/* 800F987C  C0 22 94 94 */	lfs f1, lit_16210(r2)
/* 800F9880  4B FF F6 89 */	bl stopHalfMoveAnime__9daAlink_cFf
lbl_800F9884:
/* 800F9884  83 19 31 98 */	lwz r24, 0x3198(r25)
/* 800F9888  38 00 00 00 */	li r0, 0
/* 800F988C  90 19 31 98 */	stw r0, 0x3198(r25)
/* 800F9890  7F 23 CB 78 */	mr r3, r25
/* 800F9894  38 81 00 44 */	addi r4, r1, 0x44
/* 800F9898  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800F989C  38 C1 00 14 */	addi r6, r1, 0x14
/* 800F98A0  7F 47 D3 78 */	mr r7, r26
/* 800F98A4  4B FF F2 5D */	bl checkCrawlInHoll__9daAlink_cFP4cXyzP4cXyzP4cXyzi
/* 800F98A8  2C 03 00 00 */	cmpwi r3, 0
/* 800F98AC  41 82 00 10 */	beq lbl_800F98BC
/* 800F98B0  7F 23 CB 78 */	mr r3, r25
/* 800F98B4  4B FF F4 51 */	bl setCrawlMoveHoll__9daAlink_cFv
/* 800F98B8  48 00 00 88 */	b lbl_800F9940
lbl_800F98BC:
/* 800F98BC  2C 18 00 00 */	cmpwi r24, 0
/* 800F98C0  41 82 00 4C */	beq lbl_800F990C
/* 800F98C4  2C 1D 00 00 */	cmpwi r29, 0
/* 800F98C8  41 82 00 44 */	beq lbl_800F990C
/* 800F98CC  2C 1E 00 00 */	cmpwi r30, 0
/* 800F98D0  41 82 00 3C */	beq lbl_800F990C
/* 800F98D4  2C 1F 00 00 */	cmpwi r31, 0
/* 800F98D8  41 82 00 34 */	beq lbl_800F990C
/* 800F98DC  2C 1A 00 00 */	cmpwi r26, 0
/* 800F98E0  40 82 00 2C */	bne lbl_800F990C
/* 800F98E4  7F 23 CB 78 */	mr r3, r25
/* 800F98E8  38 81 00 14 */	addi r4, r1, 0x14
/* 800F98EC  4B FF E5 5D */	bl changeCrawlAutoMoveProc__9daAlink_cFP4cXyz
/* 800F98F0  2C 03 00 00 */	cmpwi r3, 0
/* 800F98F4  41 82 00 18 */	beq lbl_800F990C
/* 800F98F8  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800F98FC  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800F9900  90 01 00 60 */	stw r0, 0x60(r1)
/* 800F9904  38 60 00 01 */	li r3, 1
/* 800F9908  48 00 00 D4 */	b lbl_800F99DC
lbl_800F990C:
/* 800F990C  A8 19 30 0E */	lha r0, 0x300e(r25)
/* 800F9910  2C 00 00 00 */	cmpwi r0, 0
/* 800F9914  40 82 00 2C */	bne lbl_800F9940
/* 800F9918  C0 39 33 AC */	lfs f1, 0x33ac(r25)
/* 800F991C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F9920  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F9924  40 81 00 1C */	ble lbl_800F9940
/* 800F9928  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 800F992C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F9930  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F9934  40 81 00 0C */	ble lbl_800F9940
/* 800F9938  7F 23 CB 78 */	mr r3, r25
/* 800F993C  4B FF F4 81 */	bl setCrawlMoveAngle__9daAlink_cFv
lbl_800F9940:
/* 800F9940  7F 23 CB 78 */	mr r3, r25
/* 800F9944  4B FF E3 31 */	bl getCrawlMoveSpeed__9daAlink_cFv
/* 800F9948  D0 39 33 98 */	stfs f1, 0x3398(r25)
/* 800F994C  C0 39 33 98 */	lfs f1, 0x3398(r25)
/* 800F9950  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F9954  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F9958  40 80 00 4C */	bge lbl_800F99A4
/* 800F995C  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800F9960  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F9964  D0 19 33 98 */	stfs f0, 0x3398(r25)
/* 800F9968  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 800F996C  3C 63 00 01 */	addis r3, r3, 1
/* 800F9970  38 03 80 00 */	addi r0, r3, -32768
/* 800F9974  B0 19 04 DE */	sth r0, 0x4de(r25)
/* 800F9978  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800F997C  38 63 00 24 */	addi r3, r3, 0x24
/* 800F9980  38 9C 24 08 */	addi r4, r28, 0x2408
/* 800F9984  38 A1 00 08 */	addi r5, r1, 8
/* 800F9988  48 24 D3 E5 */	bl PSMTXMultVec
/* 800F998C  7F 23 CB 78 */	mr r3, r25
/* 800F9990  38 81 00 08 */	addi r4, r1, 8
/* 800F9994  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800F9998  38 C0 00 01 */	li r6, 1
/* 800F999C  4B FF EC 25 */	bl crawlBgCheck__9daAlink_cFP4cXyzP4cXyzi
/* 800F99A0  48 00 00 2C */	b lbl_800F99CC
lbl_800F99A4:
/* 800F99A4  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800F99A8  38 63 00 24 */	addi r3, r3, 0x24
/* 800F99AC  38 9C 23 FC */	addi r4, r28, 0x23fc
/* 800F99B0  38 A1 00 08 */	addi r5, r1, 8
/* 800F99B4  48 24 D3 B9 */	bl PSMTXMultVec
/* 800F99B8  7F 23 CB 78 */	mr r3, r25
/* 800F99BC  38 81 00 08 */	addi r4, r1, 8
/* 800F99C0  38 A1 00 44 */	addi r5, r1, 0x44
/* 800F99C4  38 C0 00 01 */	li r6, 1
/* 800F99C8  4B FF EB F9 */	bl crawlBgCheck__9daAlink_cFP4cXyzP4cXyzi
lbl_800F99CC:
/* 800F99CC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800F99D0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800F99D4  90 01 00 60 */	stw r0, 0x60(r1)
/* 800F99D8  38 60 00 01 */	li r3, 1
lbl_800F99DC:
/* 800F99DC  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 800F99E0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 800F99E4  39 61 00 90 */	addi r11, r1, 0x90
/* 800F99E8  48 26 88 2D */	bl _restgpr_24
/* 800F99EC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800F99F0  7C 08 03 A6 */	mtlr r0
/* 800F99F4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800F99F8  4E 80 00 20 */	blr 
