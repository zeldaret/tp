lbl_80166764:
/* 80166764  94 21 F9 90 */	stwu r1, -0x670(r1)
/* 80166768  7C 08 02 A6 */	mflr r0
/* 8016676C  90 01 06 74 */	stw r0, 0x674(r1)
/* 80166770  DB E1 06 60 */	stfd f31, 0x660(r1)
/* 80166774  F3 E1 06 68 */	psq_st f31, 1640(r1), 0, 0 /* qr0 */
/* 80166778  DB C1 06 50 */	stfd f30, 0x650(r1)
/* 8016677C  F3 C1 06 58 */	psq_st f30, 1624(r1), 0, 0 /* qr0 */
/* 80166780  DB A1 06 40 */	stfd f29, 0x640(r1)
/* 80166784  F3 A1 06 48 */	psq_st f29, 1608(r1), 0, 0 /* qr0 */
/* 80166788  DB 81 06 30 */	stfd f28, 0x630(r1)
/* 8016678C  F3 81 06 38 */	psq_st f28, 1592(r1), 0, 0 /* qr0 */
/* 80166790  DB 61 06 20 */	stfd f27, 0x620(r1)
/* 80166794  F3 61 06 28 */	psq_st f27, 1576(r1), 0, 0 /* qr0 */
/* 80166798  DB 41 06 10 */	stfd f26, 0x610(r1)
/* 8016679C  F3 41 06 18 */	psq_st f26, 1560(r1), 0, 0 /* qr0 */
/* 801667A0  DB 21 06 00 */	stfd f25, 0x600(r1)
/* 801667A4  F3 21 06 08 */	psq_st f25, 1544(r1), 0, 0 /* qr0 */
/* 801667A8  39 61 06 00 */	addi r11, r1, 0x600
/* 801667AC  48 1F BA 15 */	bl _savegpr_22
/* 801667B0  7C 7C 1B 78 */	mr r28, r3
/* 801667B4  7C 9D 23 78 */	mr r29, r4
/* 801667B8  3B E0 00 00 */	li r31, 0
/* 801667BC  88 0D 8A A8 */	lbz r0, data_80451028(r13)
/* 801667C0  7C 00 07 75 */	extsb. r0, r0
/* 801667C4  40 82 00 14 */	bne lbl_801667D8
/* 801667C8  38 00 00 00 */	li r0, 0
/* 801667CC  90 0D 8A A4 */	stw r0, prev_plat1(r13)
/* 801667D0  38 00 00 01 */	li r0, 1
/* 801667D4  98 0D 8A A8 */	stb r0, data_80451028(r13)
lbl_801667D8:
/* 801667D8  88 0D 8A B0 */	lbz r0, data_80451030(r13)
/* 801667DC  7C 00 07 75 */	extsb. r0, r0
/* 801667E0  40 82 00 14 */	bne lbl_801667F4
/* 801667E4  38 00 00 00 */	li r0, 0
/* 801667E8  90 0D 8A AC */	stw r0, prev_plat2(r13)
/* 801667EC  38 00 00 01 */	li r0, 1
/* 801667F0  98 0D 8A B0 */	stb r0, data_80451030(r13)
lbl_801667F4:
/* 801667F4  3B C0 00 00 */	li r30, 0
/* 801667F8  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 801667FC  C0 1C 0A B4 */	lfs f0, 0xab4(r28)
/* 80166800  EF E1 00 2A */	fadds f31, f1, f0
/* 80166804  38 61 00 48 */	addi r3, r1, 0x48
/* 80166808  C0 3C 0A C8 */	lfs f1, 0xac8(r28)
/* 8016680C  48 10 AB 41 */	bl __ct__7cDegreeFf
/* 80166810  38 61 00 48 */	addi r3, r1, 0x48
/* 80166814  48 10 AC 05 */	bl Cos__7cDegreeCFv
/* 80166818  C3 DC 0A C0 */	lfs f30, 0xac0(r28)
/* 8016681C  38 61 03 A0 */	addi r3, r1, 0x3a0
/* 80166820  38 9C 00 64 */	addi r4, r28, 0x64
/* 80166824  4B F3 0F D1 */	bl __ct__4cXyzFRC4cXyz
/* 80166828  38 61 03 94 */	addi r3, r1, 0x394
/* 8016682C  38 9C 00 70 */	addi r4, r28, 0x70
/* 80166830  4B F3 0F C5 */	bl __ct__4cXyzFRC4cXyz
/* 80166834  38 61 00 74 */	addi r3, r1, 0x74
/* 80166838  38 9C 00 5C */	addi r4, r28, 0x5c
/* 8016683C  48 10 AF B5 */	bl __ct__7cSGlobeFRC7cSGlobe
/* 80166840  A0 1C 09 7A */	lhz r0, 0x97a(r28)
/* 80166844  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80166848  41 82 00 E8 */	beq lbl_80166930
/* 8016684C  48 04 58 F5 */	bl dKy_TeachWind_existence_chk__Fv
/* 80166850  2C 03 00 00 */	cmpwi r3, 0
/* 80166854  41 82 00 DC */	beq lbl_80166930
/* 80166858  4B EF 42 99 */	bl dKyw_get_wind_pow__Fv
/* 8016685C  FF 20 08 90 */	fmr f25, f1
/* 80166860  C0 02 9D 28 */	lfs f0, lit_9395(r2)
/* 80166864  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 80166868  40 81 00 C8 */	ble lbl_80166930
/* 8016686C  4B EF 42 75 */	bl dKyw_get_wind_vec__Fv
/* 80166870  7C 64 1B 78 */	mr r4, r3
/* 80166874  38 61 00 6C */	addi r3, r1, 0x6c
/* 80166878  48 10 B0 09 */	bl __ct__7cSGlobeFRC4cXyz
/* 8016687C  C3 7C 00 5C */	lfs f27, 0x5c(r28)
/* 80166880  C0 22 9D 2C */	lfs f1, lit_9396(r2)
/* 80166884  C0 1C 0A 08 */	lfs f0, 0xa08(r28)
/* 80166888  EC 21 00 32 */	fmuls f1, f1, f0
/* 8016688C  48 10 11 01 */	bl cM_rndFX__Ff
/* 80166890  EC 1B 00 72 */	fmuls f0, f27, f1
/* 80166894  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80166898  38 61 02 B0 */	addi r3, r1, 0x2b0
/* 8016689C  38 81 00 6C */	addi r4, r1, 0x6c
/* 801668A0  48 10 B2 15 */	bl Xyz__7cSGlobeCFv
/* 801668A4  38 61 03 A0 */	addi r3, r1, 0x3a0
/* 801668A8  38 81 02 B0 */	addi r4, r1, 0x2b0
/* 801668AC  7C 65 1B 78 */	mr r5, r3
/* 801668B0  48 1E 07 E1 */	bl PSVECAdd
/* 801668B4  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 801668B8  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 801668BC  40 81 00 08 */	ble lbl_801668C4
/* 801668C0  FF 20 00 90 */	fmr f25, f0
lbl_801668C4:
/* 801668C4  C0 02 9D 28 */	lfs f0, lit_9395(r2)
/* 801668C8  EF 39 00 28 */	fsubs f25, f25, f0
/* 801668CC  38 61 00 3C */	addi r3, r1, 0x3c
/* 801668D0  38 81 00 72 */	addi r4, r1, 0x72
/* 801668D4  38 BC 00 62 */	addi r5, r28, 0x62
/* 801668D8  48 10 A8 CD */	bl __mi__7cSAngleCFRC7cSAngle
/* 801668DC  38 61 00 40 */	addi r3, r1, 0x40
/* 801668E0  38 81 00 3C */	addi r4, r1, 0x3c
/* 801668E4  48 10 A6 85 */	bl __ct__7cSAngleFRC7cSAngle
/* 801668E8  C3 7C 0A 10 */	lfs f27, 0xa10(r28)
/* 801668EC  38 61 00 40 */	addi r3, r1, 0x40
/* 801668F0  48 10 A7 A9 */	bl Norm__7cSAngleCFv
/* 801668F4  FC 00 0A 10 */	fabs f0, f1
/* 801668F8  FF 40 00 18 */	frsp f26, f0
/* 801668FC  C0 02 9D 30 */	lfs f0, lit_9397(r2)
/* 80166900  EC 39 00 24 */	fdivs f1, f25, f0
/* 80166904  48 10 10 89 */	bl cM_rndFX__Ff
/* 80166908  EC 3B 00 72 */	fmuls f1, f27, f1
/* 8016690C  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80166910  EC 00 D0 28 */	fsubs f0, f0, f26
/* 80166914  EC 20 00 72 */	fmuls f1, f0, f1
/* 80166918  C0 1C 00 58 */	lfs f0, 0x58(r28)
/* 8016691C  EC 00 08 2A */	fadds f0, f0, f1
/* 80166920  D0 1C 00 58 */	stfs f0, 0x58(r28)
/* 80166924  38 61 00 6C */	addi r3, r1, 0x6c
/* 80166928  38 80 FF FF */	li r4, -1
/* 8016692C  4B F0 AD 51 */	bl __dt__7cSGlobeFv
lbl_80166930:
/* 80166930  80 7C 01 80 */	lwz r3, 0x180(r28)
/* 80166934  48 00 13 85 */	bl func_80167CB8
/* 80166938  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016693C  41 82 00 68 */	beq lbl_801669A4
/* 80166940  80 7C 01 80 */	lwz r3, 0x180(r28)
/* 80166944  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80166948  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 8016694C  7D 89 03 A6 */	mtctr r12
/* 80166950  4E 80 04 21 */	bctrl 
/* 80166954  3C 03 00 01 */	addis r0, r3, 1
/* 80166958  28 00 FF FF */	cmplwi r0, 0xffff
/* 8016695C  41 82 00 48 */	beq lbl_801669A4
/* 80166960  90 61 00 44 */	stw r3, 0x44(r1)
/* 80166964  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80166968  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8016696C  38 81 00 44 */	addi r4, r1, 0x44
/* 80166970  4B EB 2E 89 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80166974  28 03 00 00 */	cmplwi r3, 0
/* 80166978  41 82 00 2C */	beq lbl_801669A4
/* 8016697C  88 63 04 9A */	lbz r3, 0x49a(r3)
/* 80166980  70 60 00 28 */	andi. r0, r3, 0x28
/* 80166984  40 82 00 20 */	bne lbl_801669A4
/* 80166988  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8016698C  41 82 00 10 */	beq lbl_8016699C
/* 80166990  C0 02 9D 34 */	lfs f0, lit_9398(r2)
/* 80166994  EF DE 00 2A */	fadds f30, f30, f0
/* 80166998  48 00 00 0C */	b lbl_801669A4
lbl_8016699C:
/* 8016699C  C0 02 9D 38 */	lfs f0, lit_9399(r2)
/* 801669A0  EF DE 00 2A */	fadds f30, f30, f0
lbl_801669A4:
/* 801669A4  C3 5C 00 5C */	lfs f26, 0x5c(r28)
/* 801669A8  38 7C 00 60 */	addi r3, r28, 0x60
/* 801669AC  48 10 A7 4D */	bl Sin__7cSAngleCFv
/* 801669B0  EC 1A 00 72 */	fmuls f0, f26, f1
/* 801669B4  57 BB 06 F7 */	rlwinm. r27, r29, 0, 0x1b, 0x1b
/* 801669B8  41 82 00 14 */	beq lbl_801669CC
/* 801669BC  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 801669C0  40 81 00 18 */	ble lbl_801669D8
/* 801669C4  FF C0 00 90 */	fmr f30, f0
/* 801669C8  48 00 00 10 */	b lbl_801669D8
lbl_801669CC:
/* 801669CC  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 801669D0  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 801669D4  90 1C 06 0C */	stw r0, 0x60c(r28)
lbl_801669D8:
/* 801669D8  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 801669DC  70 00 20 02 */	andi. r0, r0, 0x2002
/* 801669E0  41 82 01 AC */	beq lbl_80166B8C
/* 801669E4  80 BC 01 88 */	lwz r5, 0x188(r28)
/* 801669E8  28 05 00 00 */	cmplwi r5, 0
/* 801669EC  41 82 00 CC */	beq lbl_80166AB8
/* 801669F0  80 DC 01 8C */	lwz r6, 0x18c(r28)
/* 801669F4  28 06 00 00 */	cmplwi r6, 0
/* 801669F8  41 82 00 C0 */	beq lbl_80166AB8
/* 801669FC  7F 83 E3 78 */	mr r3, r28
/* 80166A00  80 9C 01 80 */	lwz r4, 0x180(r28)
/* 80166A04  48 00 12 21 */	bl radiusActorInSight__9dCamera_cFP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_c
/* 80166A08  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80166A0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80166A10  40 81 01 7C */	ble lbl_80166B8C
/* 80166A14  C0 7C 01 B4 */	lfs f3, 0x1b4(r28)
/* 80166A18  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80166A1C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80166A20  41 82 00 0C */	beq lbl_80166A2C
/* 80166A24  C0 42 9D 3C */	lfs f2, lit_9400(r2)
/* 80166A28  48 00 00 08 */	b lbl_80166A30
lbl_80166A2C:
/* 80166A2C  C0 42 9D 40 */	lfs f2, lit_9401(r2)
lbl_80166A30:
/* 80166A30  C0 1C 01 B4 */	lfs f0, 0x1b4(r28)
/* 80166A34  EC 01 00 28 */	fsubs f0, f1, f0
/* 80166A38  EC 02 00 32 */	fmuls f0, f2, f0
/* 80166A3C  EC 03 00 2A */	fadds f0, f3, f0
/* 80166A40  D0 1C 01 B4 */	stfs f0, 0x1b4(r28)
/* 80166A44  63 DE 00 40 */	ori r30, r30, 0x40
/* 80166A48  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 80166A4C  80 1C 01 60 */	lwz r0, 0x160(r28)
/* 80166A50  28 00 00 0A */	cmplwi r0, 0xa
/* 80166A54  40 80 00 24 */	bge lbl_80166A78
/* 80166A58  C8 22 9D 60 */	lfd f1, lit_9410(r2)
/* 80166A5C  90 01 05 CC */	stw r0, 0x5cc(r1)
/* 80166A60  3C 00 43 30 */	lis r0, 0x4330
/* 80166A64  90 01 05 C8 */	stw r0, 0x5c8(r1)
/* 80166A68  C8 01 05 C8 */	lfd f0, 0x5c8(r1)
/* 80166A6C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80166A70  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 80166A74  EC 21 00 24 */	fdivs f1, f1, f0
lbl_80166A78:
/* 80166A78  C0 1C 01 B4 */	lfs f0, 0x1b4(r28)
/* 80166A7C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80166A80  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80166A84  EC 01 00 2A */	fadds f0, f1, f0
/* 80166A88  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80166A8C  38 61 02 A4 */	addi r3, r1, 0x2a4
/* 80166A90  38 81 00 74 */	addi r4, r1, 0x74
/* 80166A94  48 10 B0 21 */	bl Xyz__7cSGlobeCFv
/* 80166A98  38 61 02 98 */	addi r3, r1, 0x298
/* 80166A9C  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 80166AA0  38 A1 02 A4 */	addi r5, r1, 0x2a4
/* 80166AA4  48 10 00 41 */	bl __pl__4cXyzCFRC3Vec
/* 80166AA8  38 61 03 94 */	addi r3, r1, 0x394
/* 80166AAC  38 81 02 98 */	addi r4, r1, 0x298
/* 80166AB0  4B F3 0D 29 */	bl __as__4cXyzFRC4cXyz
/* 80166AB4  48 00 00 D8 */	b lbl_80166B8C
lbl_80166AB8:
/* 80166AB8  28 05 00 00 */	cmplwi r5, 0
/* 80166ABC  41 82 00 D0 */	beq lbl_80166B8C
/* 80166AC0  7F 83 E3 78 */	mr r3, r28
/* 80166AC4  80 9C 01 80 */	lwz r4, 0x180(r28)
/* 80166AC8  38 DC 00 64 */	addi r6, r28, 0x64
/* 80166ACC  38 FC 00 70 */	addi r7, r28, 0x70
/* 80166AD0  C0 3C 00 58 */	lfs f1, 0x58(r28)
/* 80166AD4  A9 1C 00 54 */	lha r8, 0x54(r28)
/* 80166AD8  C0 42 9C E8 */	lfs f2, lit_6630(r2)
/* 80166ADC  4B FF E7 5D */	bl radiusActorInSight__9dCamera_cFP10fopAc_ac_cP10fopAc_ac_cP4cXyzP4cXyzfsf
/* 80166AE0  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80166AE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80166AE8  40 81 00 A4 */	ble lbl_80166B8C
/* 80166AEC  C0 7C 01 B4 */	lfs f3, 0x1b4(r28)
/* 80166AF0  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80166AF4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80166AF8  41 82 00 0C */	beq lbl_80166B04
/* 80166AFC  C0 42 9D 3C */	lfs f2, lit_9400(r2)
/* 80166B00  48 00 00 08 */	b lbl_80166B08
lbl_80166B04:
/* 80166B04  C0 42 9D 40 */	lfs f2, lit_9401(r2)
lbl_80166B08:
/* 80166B08  C0 1C 01 B4 */	lfs f0, 0x1b4(r28)
/* 80166B0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80166B10  EC 02 00 32 */	fmuls f0, f2, f0
/* 80166B14  EC 03 00 2A */	fadds f0, f3, f0
/* 80166B18  D0 1C 01 B4 */	stfs f0, 0x1b4(r28)
/* 80166B1C  63 DE 00 40 */	ori r30, r30, 0x40
/* 80166B20  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 80166B24  80 1C 01 60 */	lwz r0, 0x160(r28)
/* 80166B28  28 00 00 0A */	cmplwi r0, 0xa
/* 80166B2C  40 80 00 24 */	bge lbl_80166B50
/* 80166B30  C8 22 9D 60 */	lfd f1, lit_9410(r2)
/* 80166B34  90 01 05 CC */	stw r0, 0x5cc(r1)
/* 80166B38  3C 00 43 30 */	lis r0, 0x4330
/* 80166B3C  90 01 05 C8 */	stw r0, 0x5c8(r1)
/* 80166B40  C8 01 05 C8 */	lfd f0, 0x5c8(r1)
/* 80166B44  EC 20 08 28 */	fsubs f1, f0, f1
/* 80166B48  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 80166B4C  EC 21 00 24 */	fdivs f1, f1, f0
lbl_80166B50:
/* 80166B50  C0 1C 01 B4 */	lfs f0, 0x1b4(r28)
/* 80166B54  EC 20 00 72 */	fmuls f1, f0, f1
/* 80166B58  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80166B5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80166B60  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80166B64  38 61 02 8C */	addi r3, r1, 0x28c
/* 80166B68  38 81 00 74 */	addi r4, r1, 0x74
/* 80166B6C  48 10 AF 49 */	bl Xyz__7cSGlobeCFv
/* 80166B70  38 61 02 80 */	addi r3, r1, 0x280
/* 80166B74  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 80166B78  38 A1 02 8C */	addi r5, r1, 0x28c
/* 80166B7C  48 0F FF 69 */	bl __pl__4cXyzCFRC3Vec
/* 80166B80  38 61 03 94 */	addi r3, r1, 0x394
/* 80166B84  38 81 02 80 */	addi r4, r1, 0x280
/* 80166B88  4B F3 0C 51 */	bl __as__4cXyzFRC4cXyz
lbl_80166B8C:
/* 80166B8C  C0 3C 01 B4 */	lfs f1, 0x1b4(r28)
/* 80166B90  C0 02 9D 0C */	lfs f0, lit_8021(r2)
/* 80166B94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80166B98  40 81 00 54 */	ble lbl_80166BEC
/* 80166B9C  57 C0 06 73 */	rlwinm. r0, r30, 0, 0x19, 0x19
/* 80166BA0  40 82 00 4C */	bne lbl_80166BEC
/* 80166BA4  C0 02 9D 40 */	lfs f0, lit_9401(r2)
/* 80166BA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80166BAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80166BB0  D0 1C 01 B4 */	stfs f0, 0x1b4(r28)
/* 80166BB4  C0 3C 01 B4 */	lfs f1, 0x1b4(r28)
/* 80166BB8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80166BBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80166BC0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80166BC4  38 61 02 74 */	addi r3, r1, 0x274
/* 80166BC8  38 81 00 74 */	addi r4, r1, 0x74
/* 80166BCC  48 10 AE E9 */	bl Xyz__7cSGlobeCFv
/* 80166BD0  38 61 02 68 */	addi r3, r1, 0x268
/* 80166BD4  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 80166BD8  38 A1 02 74 */	addi r5, r1, 0x274
/* 80166BDC  48 0F FF 09 */	bl __pl__4cXyzCFRC3Vec
/* 80166BE0  38 61 03 94 */	addi r3, r1, 0x394
/* 80166BE4  38 81 02 68 */	addi r4, r1, 0x268
/* 80166BE8  4B F3 0B F1 */	bl __as__4cXyzFRC4cXyz
lbl_80166BEC:
/* 80166BEC  57 B8 06 31 */	rlwinm. r24, r29, 0, 0x18, 0x18
/* 80166BF0  41 82 00 60 */	beq lbl_80166C50
/* 80166BF4  80 1C 03 D4 */	lwz r0, 0x3d4(r28)
/* 80166BF8  2C 00 00 00 */	cmpwi r0, 0
/* 80166BFC  41 82 00 54 */	beq lbl_80166C50
/* 80166C00  38 61 00 78 */	addi r3, r1, 0x78
/* 80166C04  48 10 A4 2D */	bl Degree__7cSAngleCFv
/* 80166C08  C0 1C 03 D8 */	lfs f0, 0x3d8(r28)
/* 80166C0C  EC 20 08 2A */	fadds f1, f0, f1
/* 80166C10  38 61 00 38 */	addi r3, r1, 0x38
/* 80166C14  48 10 A3 B5 */	bl __ct__7cSAngleFf
/* 80166C18  38 61 00 74 */	addi r3, r1, 0x74
/* 80166C1C  38 81 00 38 */	addi r4, r1, 0x38
/* 80166C20  4B F2 8E 39 */	bl V__7cSGlobeFRC7cSAngle
/* 80166C24  38 61 02 5C */	addi r3, r1, 0x25c
/* 80166C28  38 81 00 74 */	addi r4, r1, 0x74
/* 80166C2C  48 10 AE 89 */	bl Xyz__7cSGlobeCFv
/* 80166C30  38 61 02 50 */	addi r3, r1, 0x250
/* 80166C34  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 80166C38  38 A1 02 5C */	addi r5, r1, 0x25c
/* 80166C3C  48 0F FE A9 */	bl __pl__4cXyzCFRC3Vec
/* 80166C40  38 61 03 94 */	addi r3, r1, 0x394
/* 80166C44  38 81 02 50 */	addi r4, r1, 0x250
/* 80166C48  4B F3 0B 91 */	bl __as__4cXyzFRC4cXyz
/* 80166C4C  63 DE 00 20 */	ori r30, r30, 0x20
lbl_80166C50:
/* 80166C50  38 61 05 54 */	addi r3, r1, 0x554
/* 80166C54  4B F1 11 51 */	bl __ct__14dBgS_CamLinChkFv
/* 80166C58  38 61 04 E4 */	addi r3, r1, 0x4e4
/* 80166C5C  4B F1 11 49 */	bl __ct__14dBgS_CamLinChkFv
/* 80166C60  38 61 02 44 */	addi r3, r1, 0x244
/* 80166C64  38 81 03 94 */	addi r4, r1, 0x394
/* 80166C68  38 A1 03 A0 */	addi r5, r1, 0x3a0
/* 80166C6C  48 0F FE C9 */	bl __mi__4cXyzCFRC3Vec
/* 80166C70  38 61 02 38 */	addi r3, r1, 0x238
/* 80166C74  38 81 02 44 */	addi r4, r1, 0x244
/* 80166C78  4B F3 0B 7D */	bl __ct__4cXyzFRC4cXyz
/* 80166C7C  38 61 02 2C */	addi r3, r1, 0x22c
/* 80166C80  38 81 02 38 */	addi r4, r1, 0x238
/* 80166C84  48 10 00 61 */	bl norm__4cXyzCFv
/* 80166C88  38 61 03 88 */	addi r3, r1, 0x388
/* 80166C8C  38 81 02 2C */	addi r4, r1, 0x22c
/* 80166C90  4B F3 0B 65 */	bl __ct__4cXyzFRC4cXyz
/* 80166C94  38 61 02 20 */	addi r3, r1, 0x220
/* 80166C98  38 81 03 88 */	addi r4, r1, 0x388
/* 80166C9C  FC 20 F8 90 */	fmr f1, f31
/* 80166CA0  48 0F FE E5 */	bl __ml__4cXyzCFf
/* 80166CA4  38 61 02 14 */	addi r3, r1, 0x214
/* 80166CA8  38 81 03 94 */	addi r4, r1, 0x394
/* 80166CAC  38 A1 02 20 */	addi r5, r1, 0x220
/* 80166CB0  48 0F FE 35 */	bl __pl__4cXyzCFRC3Vec
/* 80166CB4  38 61 03 7C */	addi r3, r1, 0x37c
/* 80166CB8  38 81 02 14 */	addi r4, r1, 0x214
/* 80166CBC  4B F3 0B 39 */	bl __ct__4cXyzFRC4cXyz
/* 80166CC0  3B 20 00 00 */	li r25, 0
/* 80166CC4  73 B7 00 B7 */	andi. r23, r29, 0xb7
/* 80166CC8  41 82 0A 78 */	beq lbl_80167740
/* 80166CCC  7F 83 E3 78 */	mr r3, r28
/* 80166CD0  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 80166CD4  38 A1 03 7C */	addi r5, r1, 0x37c
/* 80166CD8  38 C1 05 54 */	addi r6, r1, 0x554
/* 80166CDC  7F A7 EB 78 */	mr r7, r29
/* 80166CE0  4B FF EB E1 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80166CE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80166CE8  41 82 08 A8 */	beq lbl_80167590
/* 80166CEC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80166CF0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80166CF4  90 01 04 1C */	stw r0, 0x41c(r1)
/* 80166CF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80166CFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80166D00  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 80166D04  7F 43 D3 78 */	mr r3, r26
/* 80166D08  38 81 05 68 */	addi r4, r1, 0x568
/* 80166D0C  38 A1 04 0C */	addi r5, r1, 0x40c
/* 80166D10  4B F0 DA 35 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80166D14  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80166D18  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80166D1C  90 01 04 08 */	stw r0, 0x408(r1)
/* 80166D20  3A C1 04 0C */	addi r22, r1, 0x40c
/* 80166D24  57 A0 07 FF */	clrlwi. r0, r29, 0x1f
/* 80166D28  41 82 00 20 */	beq lbl_80166D48
/* 80166D2C  C0 21 04 10 */	lfs f1, 0x410(r1)
/* 80166D30  C0 02 9D 24 */	lfs f0, lit_8530(r2)
/* 80166D34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80166D38  4C 41 13 82 */	cror 2, 1, 2
/* 80166D3C  40 82 00 0C */	bne lbl_80166D48
/* 80166D40  3B E0 00 04 */	li r31, 4
/* 80166D44  48 00 01 64 */	b lbl_80166EA8
lbl_80166D48:
/* 80166D48  57 A0 07 7B */	rlwinm. r0, r29, 0, 0x1d, 0x1d
/* 80166D4C  41 82 00 1C */	beq lbl_80166D68
/* 80166D50  C0 21 04 10 */	lfs f1, 0x410(r1)
/* 80166D54  C0 02 9D 44 */	lfs f0, lit_9402(r2)
/* 80166D58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80166D5C  40 80 00 0C */	bge lbl_80166D68
/* 80166D60  3B E0 00 03 */	li r31, 3
/* 80166D64  48 00 01 44 */	b lbl_80166EA8
lbl_80166D68:
/* 80166D68  57 A0 07 BD */	rlwinm. r0, r29, 0, 0x1e, 0x1e
/* 80166D6C  41 82 01 3C */	beq lbl_80166EA8
/* 80166D70  28 1B 00 00 */	cmplwi r27, 0
/* 80166D74  40 82 00 0C */	bne lbl_80166D80
/* 80166D78  3B E0 00 01 */	li r31, 1
/* 80166D7C  48 00 01 2C */	b lbl_80166EA8
lbl_80166D80:
/* 80166D80  57 A0 06 B5 */	rlwinm. r0, r29, 0, 0x1a, 0x1a
/* 80166D84  40 82 00 0C */	bne lbl_80166D90
/* 80166D88  3B E0 00 02 */	li r31, 2
/* 80166D8C  48 00 01 1C */	b lbl_80166EA8
lbl_80166D90:
/* 80166D90  7F 83 E3 78 */	mr r3, r28
/* 80166D94  38 81 03 7C */	addi r4, r1, 0x37c
/* 80166D98  38 A1 03 A0 */	addi r5, r1, 0x3a0
/* 80166D9C  38 C1 04 E4 */	addi r6, r1, 0x4e4
/* 80166DA0  7F A7 EB 78 */	mr r7, r29
/* 80166DA4  4B FF EB 1D */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80166DA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80166DAC  41 82 00 DC */	beq lbl_80166E88
/* 80166DB0  38 61 02 08 */	addi r3, r1, 0x208
/* 80166DB4  38 81 05 84 */	addi r4, r1, 0x584
/* 80166DB8  38 A1 05 14 */	addi r5, r1, 0x514
/* 80166DBC  48 0F FD 79 */	bl __mi__4cXyzCFRC3Vec
/* 80166DC0  38 61 01 FC */	addi r3, r1, 0x1fc
/* 80166DC4  38 81 02 08 */	addi r4, r1, 0x208
/* 80166DC8  4B F3 0A 2D */	bl __ct__4cXyzFRC4cXyz
/* 80166DCC  38 61 01 FC */	addi r3, r1, 0x1fc
/* 80166DD0  4B F2 79 C1 */	bl abs__4cXyzCFv
/* 80166DD4  7F 43 D3 78 */	mr r3, r26
/* 80166DD8  38 81 04 F8 */	addi r4, r1, 0x4f8
/* 80166DDC  38 A1 03 F8 */	addi r5, r1, 0x3f8
/* 80166DE0  4B F0 D9 65 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80166DE4  38 81 03 F8 */	addi r4, r1, 0x3f8
/* 80166DE8  7E C3 B3 78 */	mr r3, r22
/* 80166DEC  48 1E 03 A9 */	bl PSVECDotProduct
/* 80166DF0  FF 60 08 90 */	fmr f27, f1
/* 80166DF4  7E C3 B3 78 */	mr r3, r22
/* 80166DF8  38 81 03 F8 */	addi r4, r1, 0x3f8
/* 80166DFC  38 A1 03 58 */	addi r5, r1, 0x358
/* 80166E00  48 1E 03 B5 */	bl PSVECCrossProduct
/* 80166E04  38 00 00 00 */	li r0, 0
/* 80166E08  C0 02 9D 44 */	lfs f0, lit_9402(r2)
/* 80166E0C  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80166E10  4C 41 13 82 */	cror 2, 1, 2
/* 80166E14  40 82 00 18 */	bne lbl_80166E2C
/* 80166E18  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 80166E1C  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80166E20  4C 40 13 82 */	cror 2, 0, 2
/* 80166E24  40 82 00 08 */	bne lbl_80166E2C
/* 80166E28  38 00 00 01 */	li r0, 1
lbl_80166E2C:
/* 80166E2C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80166E30  41 82 00 34 */	beq lbl_80166E64
/* 80166E34  C0 01 03 5C */	lfs f0, 0x35c(r1)
/* 80166E38  FC 00 02 10 */	fabs f0, f0
/* 80166E3C  FC 20 00 18 */	frsp f1, f0
/* 80166E40  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 80166E44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80166E48  40 81 00 1C */	ble lbl_80166E64
/* 80166E4C  C0 21 03 FC */	lfs f1, 0x3fc(r1)
/* 80166E50  48 10 13 C1 */	bl cBgW_CheckBWall__Ff
/* 80166E54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80166E58  41 82 00 0C */	beq lbl_80166E64
/* 80166E5C  3B E0 00 05 */	li r31, 5
/* 80166E60  48 00 00 48 */	b lbl_80166EA8
lbl_80166E64:
/* 80166E64  80 1C 09 58 */	lwz r0, 0x958(r28)
/* 80166E68  2C 00 00 05 */	cmpwi r0, 5
/* 80166E6C  41 82 00 14 */	beq lbl_80166E80
/* 80166E70  2C 00 00 06 */	cmpwi r0, 6
/* 80166E74  41 82 00 0C */	beq lbl_80166E80
/* 80166E78  3B E0 00 07 */	li r31, 7
/* 80166E7C  48 00 00 2C */	b lbl_80166EA8
lbl_80166E80:
/* 80166E80  3B E0 00 08 */	li r31, 8
/* 80166E84  48 00 00 24 */	b lbl_80166EA8
lbl_80166E88:
/* 80166E88  80 1C 09 58 */	lwz r0, 0x958(r28)
/* 80166E8C  2C 00 00 05 */	cmpwi r0, 5
/* 80166E90  41 82 00 0C */	beq lbl_80166E9C
/* 80166E94  2C 00 00 08 */	cmpwi r0, 8
/* 80166E98  40 82 00 0C */	bne lbl_80166EA4
lbl_80166E9C:
/* 80166E9C  3B E0 00 08 */	li r31, 8
/* 80166EA0  48 00 00 08 */	b lbl_80166EA8
lbl_80166EA4:
/* 80166EA4  3B E0 00 02 */	li r31, 2
lbl_80166EA8:
/* 80166EA8  2C 1F 00 05 */	cmpwi r31, 5
/* 80166EAC  40 80 00 1C */	bge lbl_80166EC8
/* 80166EB0  2C 1F 00 02 */	cmpwi r31, 2
/* 80166EB4  41 82 03 00 */	beq lbl_801671B4
/* 80166EB8  40 80 06 48 */	bge lbl_80167500
/* 80166EBC  2C 1F 00 01 */	cmpwi r31, 1
/* 80166EC0  40 80 06 40 */	bge lbl_80167500
/* 80166EC4  48 00 06 98 */	b lbl_8016755C
lbl_80166EC8:
/* 80166EC8  2C 1F 00 09 */	cmpwi r31, 9
/* 80166ECC  40 80 06 90 */	bge lbl_8016755C
/* 80166ED0  2C 1F 00 07 */	cmpwi r31, 7
/* 80166ED4  40 80 02 E0 */	bge lbl_801671B4
/* 80166ED8  63 DE 00 02 */	ori r30, r30, 2
/* 80166EDC  38 61 03 4C */	addi r3, r1, 0x34c
/* 80166EE0  3B 21 05 84 */	addi r25, r1, 0x584
/* 80166EE4  7F 24 CB 78 */	mr r4, r25
/* 80166EE8  4B F3 09 0D */	bl __ct__4cXyzFRC4cXyz
/* 80166EEC  38 61 03 40 */	addi r3, r1, 0x340
/* 80166EF0  38 81 05 14 */	addi r4, r1, 0x514
/* 80166EF4  4B F3 09 01 */	bl __ct__4cXyzFRC4cXyz
/* 80166EF8  38 61 01 F0 */	addi r3, r1, 0x1f0
/* 80166EFC  38 81 03 4C */	addi r4, r1, 0x34c
/* 80166F00  38 A1 03 40 */	addi r5, r1, 0x340
/* 80166F04  48 0F FB E1 */	bl __pl__4cXyzCFRC3Vec
/* 80166F08  38 61 01 E4 */	addi r3, r1, 0x1e4
/* 80166F0C  38 81 01 F0 */	addi r4, r1, 0x1f0
/* 80166F10  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 80166F14  48 0F FC 71 */	bl __ml__4cXyzCFf
/* 80166F18  38 61 03 64 */	addi r3, r1, 0x364
/* 80166F1C  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 80166F20  4B F3 08 B9 */	bl __as__4cXyzFRC4cXyz
/* 80166F24  38 61 04 0C */	addi r3, r1, 0x40c
/* 80166F28  38 81 03 F8 */	addi r4, r1, 0x3f8
/* 80166F2C  38 A1 03 64 */	addi r5, r1, 0x364
/* 80166F30  38 C1 03 70 */	addi r6, r1, 0x370
/* 80166F34  48 10 7C 05 */	bl cM3d_2PlaneLinePosNearPos__FRC8cM3dGPlaRC8cM3dGPlaPC3VecP3Vec
/* 80166F38  2C 03 00 00 */	cmpwi r3, 0
/* 80166F3C  41 82 02 78 */	beq lbl_801671B4
/* 80166F40  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 80166F44  38 81 04 0C */	addi r4, r1, 0x40c
/* 80166F48  38 A1 03 F8 */	addi r5, r1, 0x3f8
/* 80166F4C  48 0F FB 99 */	bl __pl__4cXyzCFRC3Vec
/* 80166F50  38 7C 00 9C */	addi r3, r28, 0x9c
/* 80166F54  38 81 01 D8 */	addi r4, r1, 0x1d8
/* 80166F58  4B F3 08 81 */	bl __as__4cXyzFRC4cXyz
/* 80166F5C  38 7C 00 90 */	addi r3, r28, 0x90
/* 80166F60  38 81 03 70 */	addi r4, r1, 0x370
/* 80166F64  4B F3 08 75 */	bl __as__4cXyzFRC4cXyz
/* 80166F68  38 61 01 CC */	addi r3, r1, 0x1cc
/* 80166F6C  38 9C 00 9C */	addi r4, r28, 0x9c
/* 80166F70  C0 22 9C F8 */	lfs f1, lit_8016(r2)
/* 80166F74  48 0F FC 11 */	bl __ml__4cXyzCFf
/* 80166F78  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 80166F7C  38 81 03 70 */	addi r4, r1, 0x370
/* 80166F80  38 A1 01 CC */	addi r5, r1, 0x1cc
/* 80166F84  48 0F FB 61 */	bl __pl__4cXyzCFRC3Vec
/* 80166F88  38 61 03 34 */	addi r3, r1, 0x334
/* 80166F8C  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 80166F90  4B F3 08 65 */	bl __ct__4cXyzFRC4cXyz
/* 80166F94  38 61 03 4C */	addi r3, r1, 0x34c
/* 80166F98  38 81 04 0C */	addi r4, r1, 0x40c
/* 80166F9C  7C 65 1B 78 */	mr r5, r3
/* 80166FA0  48 1E 00 F1 */	bl PSVECAdd
/* 80166FA4  38 61 03 40 */	addi r3, r1, 0x340
/* 80166FA8  38 81 03 F8 */	addi r4, r1, 0x3f8
/* 80166FAC  7C 65 1B 78 */	mr r5, r3
/* 80166FB0  48 1E 00 E1 */	bl PSVECAdd
/* 80166FB4  38 61 04 74 */	addi r3, r1, 0x474
/* 80166FB8  4B F1 0D ED */	bl __ct__14dBgS_CamLinChkFv
/* 80166FBC  7F 83 E3 78 */	mr r3, r28
/* 80166FC0  38 81 03 4C */	addi r4, r1, 0x34c
/* 80166FC4  38 A1 03 34 */	addi r5, r1, 0x334
/* 80166FC8  38 C1 04 74 */	addi r6, r1, 0x474
/* 80166FCC  7F A7 EB 78 */	mr r7, r29
/* 80166FD0  48 00 0C 29 */	bl lineBGCheckBoth__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80166FD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80166FD8  40 82 01 D0 */	bne lbl_801671A8
/* 80166FDC  7F 83 E3 78 */	mr r3, r28
/* 80166FE0  38 81 03 40 */	addi r4, r1, 0x340
/* 80166FE4  38 A1 03 34 */	addi r5, r1, 0x334
/* 80166FE8  38 C1 04 74 */	addi r6, r1, 0x474
/* 80166FEC  7F A7 EB 78 */	mr r7, r29
/* 80166FF0  48 00 0C 09 */	bl lineBGCheckBoth__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80166FF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80166FF8  40 82 01 B0 */	bne lbl_801671A8
/* 80166FFC  38 61 03 7C */	addi r3, r1, 0x37c
/* 80167000  38 81 03 94 */	addi r4, r1, 0x394
/* 80167004  4B F3 07 D5 */	bl __as__4cXyzFRC4cXyz
/* 80167008  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 8016700C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80167010  41 82 01 28 */	beq lbl_80167138
/* 80167014  80 1C 09 38 */	lwz r0, 0x938(r28)
/* 80167018  2C 00 00 00 */	cmpwi r0, 0
/* 8016701C  40 82 00 70 */	bne lbl_8016708C
/* 80167020  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 80167024  38 9C 00 3C */	addi r4, r28, 0x3c
/* 80167028  38 BC 00 70 */	addi r5, r28, 0x70
/* 8016702C  48 0F FB 09 */	bl __mi__4cXyzCFRC3Vec
/* 80167030  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 80167034  38 81 01 B4 */	addi r4, r1, 0x1b4
/* 80167038  4B F3 07 BD */	bl __ct__4cXyzFRC4cXyz
/* 8016703C  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 80167040  4B F2 77 51 */	bl abs__4cXyzCFv
/* 80167044  C0 02 9C B8 */	lfs f0, lit_5662(r2)
/* 80167048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016704C  40 81 00 10 */	ble lbl_8016705C
/* 80167050  38 00 00 28 */	li r0, 0x28
/* 80167054  90 1C 09 38 */	stw r0, 0x938(r28)
/* 80167058  48 00 00 34 */	b lbl_8016708C
lbl_8016705C:
/* 8016705C  C0 02 9D 48 */	lfs f0, lit_9403(r2)
/* 80167060  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80167064  40 80 00 10 */	bge lbl_80167074
/* 80167068  38 00 00 04 */	li r0, 4
/* 8016706C  90 1C 09 38 */	stw r0, 0x938(r28)
/* 80167070  48 00 00 1C */	b lbl_8016708C
lbl_80167074:
/* 80167074  C0 02 9D 4C */	lfs f0, lit_9404(r2)
/* 80167078  EC 01 00 24 */	fdivs f0, f1, f0
/* 8016707C  FC 00 00 1E */	fctiwz f0, f0
/* 80167080  D8 01 05 C8 */	stfd f0, 0x5c8(r1)
/* 80167084  80 01 05 CC */	lwz r0, 0x5cc(r1)
/* 80167088  90 1C 09 38 */	stw r0, 0x938(r28)
lbl_8016708C:
/* 8016708C  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 80167090  80 1C 09 38 */	lwz r0, 0x938(r28)
/* 80167094  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 80167098  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016709C  90 01 05 CC */	stw r0, 0x5cc(r1)
/* 801670A0  3C 00 43 30 */	lis r0, 0x4330
/* 801670A4  90 01 05 C8 */	stw r0, 0x5c8(r1)
/* 801670A8  C8 01 05 C8 */	lfd f0, 0x5c8(r1)
/* 801670AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801670B0  EF 22 00 24 */	fdivs f25, f2, f0
/* 801670B4  38 61 00 34 */	addi r3, r1, 0x34
/* 801670B8  38 81 00 78 */	addi r4, r1, 0x78
/* 801670BC  3B 5C 00 2C */	addi r26, r28, 0x2c
/* 801670C0  7F 45 D3 78 */	mr r5, r26
/* 801670C4  48 10 A0 E1 */	bl __mi__7cSAngleCFRC7cSAngle
/* 801670C8  38 61 00 30 */	addi r3, r1, 0x30
/* 801670CC  38 81 00 34 */	addi r4, r1, 0x34
/* 801670D0  FC 20 C8 90 */	fmr f1, f25
/* 801670D4  48 10 A1 91 */	bl __ml__7cSAngleCFf
/* 801670D8  38 61 00 2C */	addi r3, r1, 0x2c
/* 801670DC  7F 44 D3 78 */	mr r4, r26
/* 801670E0  38 A1 00 30 */	addi r5, r1, 0x30
/* 801670E4  48 10 A0 91 */	bl __pl__7cSAngleCFRC7cSAngle
/* 801670E8  38 61 00 74 */	addi r3, r1, 0x74
/* 801670EC  38 81 00 2C */	addi r4, r1, 0x2c
/* 801670F0  4B F2 89 69 */	bl V__7cSGlobeFRC7cSAngle
/* 801670F4  38 61 01 9C */	addi r3, r1, 0x19c
/* 801670F8  38 81 00 74 */	addi r4, r1, 0x74
/* 801670FC  48 10 A9 B9 */	bl Xyz__7cSGlobeCFv
/* 80167100  38 61 01 90 */	addi r3, r1, 0x190
/* 80167104  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 80167108  38 A1 01 9C */	addi r5, r1, 0x19c
/* 8016710C  48 0F F9 D9 */	bl __pl__4cXyzCFRC3Vec
/* 80167110  38 61 03 7C */	addi r3, r1, 0x37c
/* 80167114  38 81 01 90 */	addi r4, r1, 0x190
/* 80167118  4B F3 06 C1 */	bl __as__4cXyzFRC4cXyz
/* 8016711C  80 7C 09 38 */	lwz r3, 0x938(r28)
/* 80167120  34 03 FF FF */	addic. r0, r3, -1
/* 80167124  90 1C 09 38 */	stw r0, 0x938(r28)
/* 80167128  40 82 00 10 */	bne lbl_80167138
/* 8016712C  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80167130  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80167134  90 1C 06 0C */	stw r0, 0x60c(r28)
lbl_80167138:
/* 80167138  7F 83 E3 78 */	mr r3, r28
/* 8016713C  38 81 03 40 */	addi r4, r1, 0x340
/* 80167140  38 A1 03 94 */	addi r5, r1, 0x394
/* 80167144  38 C1 05 54 */	addi r6, r1, 0x554
/* 80167148  7F A7 EB 78 */	mr r7, r29
/* 8016714C  4B FF E7 75 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80167150  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80167154  41 82 00 10 */	beq lbl_80167164
/* 80167158  38 61 03 7C */	addi r3, r1, 0x37c
/* 8016715C  7F 24 CB 78 */	mr r4, r25
/* 80167160  4B F3 06 79 */	bl __as__4cXyzFRC4cXyz
lbl_80167164:
/* 80167164  38 61 01 84 */	addi r3, r1, 0x184
/* 80167168  7F 84 E3 78 */	mr r4, r28
/* 8016716C  38 A1 03 7C */	addi r5, r1, 0x37c
/* 80167170  38 C1 03 A0 */	addi r6, r1, 0x3a0
/* 80167174  FC 20 F8 90 */	fmr f1, f31
/* 80167178  4B FF EB 69 */	bl compWallMargin__9dCamera_cFP4cXyzP4cXyzf
/* 8016717C  38 61 03 94 */	addi r3, r1, 0x394
/* 80167180  38 81 01 84 */	addi r4, r1, 0x184
/* 80167184  4B F3 06 55 */	bl __as__4cXyzFRC4cXyz
/* 80167188  3B 20 00 01 */	li r25, 1
/* 8016718C  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80167190  64 00 00 08 */	oris r0, r0, 8
/* 80167194  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80167198  38 61 04 74 */	addi r3, r1, 0x474
/* 8016719C  38 80 FF FF */	li r4, -1
/* 801671A0  4B F1 0C 61 */	bl __dt__14dBgS_CamLinChkFv
/* 801671A4  48 00 03 B8 */	b lbl_8016755C
lbl_801671A8:
/* 801671A8  38 61 04 74 */	addi r3, r1, 0x474
/* 801671AC  38 80 FF FF */	li r4, -1
/* 801671B0  4B F1 0C 51 */	bl __dt__14dBgS_CamLinChkFv
lbl_801671B4:
/* 801671B4  63 DE 00 01 */	ori r30, r30, 1
/* 801671B8  38 7C 00 90 */	addi r3, r28, 0x90
/* 801671BC  3B 21 05 84 */	addi r25, r1, 0x584
/* 801671C0  7F 24 CB 78 */	mr r4, r25
/* 801671C4  4B F3 06 15 */	bl __as__4cXyzFRC4cXyz
/* 801671C8  7C 64 1B 78 */	mr r4, r3
/* 801671CC  38 61 03 7C */	addi r3, r1, 0x37c
/* 801671D0  4B F3 06 09 */	bl __as__4cXyzFRC4cXyz
/* 801671D4  28 1B 00 00 */	cmplwi r27, 0
/* 801671D8  41 82 03 28 */	beq lbl_80167500
/* 801671DC  80 1C 09 58 */	lwz r0, 0x958(r28)
/* 801671E0  2C 00 00 07 */	cmpwi r0, 7
/* 801671E4  40 80 00 10 */	bge lbl_801671F4
/* 801671E8  2C 00 00 02 */	cmpwi r0, 2
/* 801671EC  41 82 00 10 */	beq lbl_801671FC
/* 801671F0  48 00 00 14 */	b lbl_80167204
lbl_801671F4:
/* 801671F4  2C 00 00 09 */	cmpwi r0, 9
/* 801671F8  40 80 00 0C */	bge lbl_80167204
lbl_801671FC:
/* 801671FC  3A C0 00 00 */	li r22, 0
/* 80167200  48 00 00 08 */	b lbl_80167208
lbl_80167204:
/* 80167204  3A C0 00 01 */	li r22, 1
lbl_80167208:
/* 80167208  C0 21 03 80 */	lfs f1, 0x380(r1)
/* 8016720C  C0 01 03 A4 */	lfs f0, 0x3a4(r1)
/* 80167210  EC 01 00 28 */	fsubs f0, f1, f0
/* 80167214  EF 3E 00 28 */	fsubs f25, f30, f0
/* 80167218  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 8016721C  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 80167220  40 80 00 08 */	bge lbl_80167228
/* 80167224  FF 20 00 90 */	fmr f25, f0
lbl_80167228:
/* 80167228  38 61 00 54 */	addi r3, r1, 0x54
/* 8016722C  38 81 04 0C */	addi r4, r1, 0x40c
/* 80167230  48 10 A6 51 */	bl __ct__7cSGlobeFRC4cXyz
/* 80167234  38 61 00 28 */	addi r3, r1, 0x28
/* 80167238  3B 61 00 58 */	addi r27, r1, 0x58
/* 8016723C  7F 64 DB 78 */	mr r4, r27
/* 80167240  38 AD 8C 10 */	la r5, _90__7cSAngle(r13) /* 80451190-_SDA_BASE_ */
/* 80167244  48 10 9F 31 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80167248  38 61 00 54 */	addi r3, r1, 0x54
/* 8016724C  38 81 00 28 */	addi r4, r1, 0x28
/* 80167250  4B F2 88 09 */	bl V__7cSGlobeFRC7cSAngle
/* 80167254  7F 63 DB 78 */	mr r3, r27
/* 80167258  48 10 9E A1 */	bl Sin__7cSAngleCFv
/* 8016725C  EC 19 00 72 */	fmuls f0, f25, f1
/* 80167260  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80167264  38 61 01 78 */	addi r3, r1, 0x178
/* 80167268  38 81 00 54 */	addi r4, r1, 0x54
/* 8016726C  48 10 A8 49 */	bl Xyz__7cSGlobeCFv
/* 80167270  38 61 01 6C */	addi r3, r1, 0x16c
/* 80167274  38 81 03 7C */	addi r4, r1, 0x37c
/* 80167278  38 A1 01 78 */	addi r5, r1, 0x178
/* 8016727C  48 0F F8 69 */	bl __pl__4cXyzCFRC3Vec
/* 80167280  38 61 03 28 */	addi r3, r1, 0x328
/* 80167284  38 81 01 6C */	addi r4, r1, 0x16c
/* 80167288  4B F3 05 6D */	bl __ct__4cXyzFRC4cXyz
/* 8016728C  38 61 03 1C */	addi r3, r1, 0x31c
/* 80167290  38 81 04 0C */	addi r4, r1, 0x40c
/* 80167294  4B F3 05 61 */	bl __ct__4cXyzFRC4cXyz
/* 80167298  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016729C  D0 01 03 20 */	stfs f0, 0x320(r1)
/* 801672A0  80 1A 42 4C */	lwz r0, 0x424c(r26)
/* 801672A4  2C 00 00 00 */	cmpwi r0, 0
/* 801672A8  40 82 00 10 */	bne lbl_801672B8
/* 801672AC  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 801672B0  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 801672B4  41 82 00 14 */	beq lbl_801672C8
lbl_801672B8:
/* 801672B8  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 801672BC  D0 1C 09 68 */	stfs f0, 0x968(r28)
/* 801672C0  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 801672C4  D0 1C 09 6C */	stfs f0, 0x96c(r28)
lbl_801672C8:
/* 801672C8  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 801672CC  41 82 00 10 */	beq lbl_801672DC
/* 801672D0  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 801672D4  D0 1C 09 6C */	stfs f0, 0x96c(r28)
/* 801672D8  48 00 00 20 */	b lbl_801672F8
lbl_801672DC:
/* 801672DC  C0 5C 09 6C */	lfs f2, 0x96c(r28)
/* 801672E0  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 801672E4  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 801672E8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801672EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801672F0  EC 02 00 2A */	fadds f0, f2, f0
/* 801672F4  D0 1C 09 6C */	stfs f0, 0x96c(r28)
lbl_801672F8:
/* 801672F8  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 801672FC  40 82 00 2C */	bne lbl_80167328
/* 80167300  C0 7C 02 AC */	lfs f3, 0x2ac(r28)
/* 80167304  C0 42 9D 50 */	lfs f2, lit_9405(r2)
/* 80167308  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8016730C  40 80 00 1C */	bge lbl_80167328
/* 80167310  C0 1C 01 D8 */	lfs f0, 0x1d8(r28)
/* 80167314  FC 00 02 10 */	fabs f0, f0
/* 80167318  FC 20 00 18 */	frsp f1, f0
/* 8016731C  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 80167320  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80167324  41 80 00 10 */	blt lbl_80167334
lbl_80167328:
/* 80167328  C0 02 9D 14 */	lfs f0, lit_8023(r2)
/* 8016732C  D0 1C 09 68 */	stfs f0, 0x968(r28)
/* 80167330  48 00 00 14 */	b lbl_80167344
lbl_80167334:
/* 80167334  C0 3C 09 68 */	lfs f1, 0x968(r28)
/* 80167338  EC 03 10 24 */	fdivs f0, f3, f2
/* 8016733C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80167340  D0 1C 09 68 */	stfs f0, 0x968(r28)
lbl_80167344:
/* 80167344  C0 3C 09 6C */	lfs f1, 0x96c(r28)
/* 80167348  80 1C 01 90 */	lwz r0, 0x190(r28)
/* 8016734C  2C 00 00 01 */	cmpwi r0, 1
/* 80167350  40 82 00 0C */	bne lbl_8016735C
/* 80167354  C0 02 9D 18 */	lfs f0, lit_8127(r2)
/* 80167358  48 00 00 08 */	b lbl_80167360
lbl_8016735C:
/* 8016735C  C0 02 9D 18 */	lfs f0, lit_8127(r2)
lbl_80167360:
/* 80167360  EF 21 00 32 */	fmuls f25, f1, f0
/* 80167364  38 61 01 60 */	addi r3, r1, 0x160
/* 80167368  38 81 03 1C */	addi r4, r1, 0x31c
/* 8016736C  48 0F F9 79 */	bl norm__4cXyzCFv
/* 80167370  7F 63 DB 78 */	mr r3, r27
/* 80167374  48 10 9D 85 */	bl Sin__7cSAngleCFv
/* 80167378  EC 39 00 72 */	fmuls f1, f25, f1
/* 8016737C  38 61 01 54 */	addi r3, r1, 0x154
/* 80167380  38 81 01 60 */	addi r4, r1, 0x160
/* 80167384  48 0F F8 01 */	bl __ml__4cXyzCFf
/* 80167388  38 61 03 A0 */	addi r3, r1, 0x3a0
/* 8016738C  38 81 01 54 */	addi r4, r1, 0x154
/* 80167390  7C 65 1B 78 */	mr r5, r3
/* 80167394  48 1D FC FD */	bl PSVECAdd
/* 80167398  38 61 01 48 */	addi r3, r1, 0x148
/* 8016739C  38 81 03 28 */	addi r4, r1, 0x328
/* 801673A0  38 A1 03 A0 */	addi r5, r1, 0x3a0
/* 801673A4  48 0F F7 91 */	bl __mi__4cXyzCFRC3Vec
/* 801673A8  38 61 00 4C */	addi r3, r1, 0x4c
/* 801673AC  38 81 01 48 */	addi r4, r1, 0x148
/* 801673B0  48 10 A4 D1 */	bl __ct__7cSGlobeFRC4cXyz
/* 801673B4  38 61 00 24 */	addi r3, r1, 0x24
/* 801673B8  38 81 00 50 */	addi r4, r1, 0x50
/* 801673BC  3B 5C 00 2C */	addi r26, r28, 0x2c
/* 801673C0  7F 45 D3 78 */	mr r5, r26
/* 801673C4  48 10 9D E1 */	bl __mi__7cSAngleCFRC7cSAngle
/* 801673C8  38 61 00 20 */	addi r3, r1, 0x20
/* 801673CC  38 81 00 24 */	addi r4, r1, 0x24
/* 801673D0  C0 3C 09 68 */	lfs f1, 0x968(r28)
/* 801673D4  48 10 9E 91 */	bl __ml__7cSAngleCFf
/* 801673D8  38 61 00 1C */	addi r3, r1, 0x1c
/* 801673DC  7F 44 D3 78 */	mr r4, r26
/* 801673E0  38 A1 00 20 */	addi r5, r1, 0x20
/* 801673E4  48 10 9D 91 */	bl __pl__7cSAngleCFRC7cSAngle
/* 801673E8  38 61 00 4C */	addi r3, r1, 0x4c
/* 801673EC  38 81 00 1C */	addi r4, r1, 0x1c
/* 801673F0  4B F2 86 69 */	bl V__7cSGlobeFRC7cSAngle
/* 801673F4  38 61 00 18 */	addi r3, r1, 0x18
/* 801673F8  C0 22 9D 54 */	lfs f1, lit_9406(r2)
/* 801673FC  48 10 9B CD */	bl __ct__7cSAngleFf
/* 80167400  A8 81 00 50 */	lha r4, 0x50(r1)
/* 80167404  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80167408  7C 80 02 78 */	xor r0, r4, r0
/* 8016740C  7C 03 0E 70 */	srawi r3, r0, 1
/* 80167410  7C 00 20 38 */	and r0, r0, r4
/* 80167414  7C 00 18 50 */	subf r0, r0, r3
/* 80167418  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8016741C  41 82 00 1C */	beq lbl_80167438
/* 80167420  38 61 00 14 */	addi r3, r1, 0x14
/* 80167424  C0 22 9D 54 */	lfs f1, lit_9406(r2)
/* 80167428  48 10 9B A1 */	bl __ct__7cSAngleFf
/* 8016742C  38 61 00 4C */	addi r3, r1, 0x4c
/* 80167430  38 81 00 14 */	addi r4, r1, 0x14
/* 80167434  4B F2 86 25 */	bl V__7cSGlobeFRC7cSAngle
lbl_80167438:
/* 80167438  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8016743C  EC 1F 00 2A */	fadds f0, f31, f0
/* 80167440  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80167444  38 61 01 3C */	addi r3, r1, 0x13c
/* 80167448  38 81 00 4C */	addi r4, r1, 0x4c
/* 8016744C  48 10 A6 69 */	bl Xyz__7cSGlobeCFv
/* 80167450  38 61 01 30 */	addi r3, r1, 0x130
/* 80167454  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 80167458  38 A1 01 3C */	addi r5, r1, 0x13c
/* 8016745C  48 0F F6 89 */	bl __pl__4cXyzCFRC3Vec
/* 80167460  38 61 03 7C */	addi r3, r1, 0x37c
/* 80167464  38 81 01 30 */	addi r4, r1, 0x130
/* 80167468  4B F3 03 71 */	bl __as__4cXyzFRC4cXyz
/* 8016746C  7F 83 E3 78 */	mr r3, r28
/* 80167470  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 80167474  38 A1 03 7C */	addi r5, r1, 0x37c
/* 80167478  38 C1 05 54 */	addi r6, r1, 0x554
/* 8016747C  7F A7 EB 78 */	mr r7, r29
/* 80167480  4B FF E4 41 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80167484  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80167488  41 82 00 10 */	beq lbl_80167498
/* 8016748C  38 61 03 7C */	addi r3, r1, 0x37c
/* 80167490  7F 24 CB 78 */	mr r4, r25
/* 80167494  4B F3 03 45 */	bl __as__4cXyzFRC4cXyz
lbl_80167498:
/* 80167498  38 61 01 24 */	addi r3, r1, 0x124
/* 8016749C  7F 84 E3 78 */	mr r4, r28
/* 801674A0  38 A1 03 7C */	addi r5, r1, 0x37c
/* 801674A4  38 C1 03 A0 */	addi r6, r1, 0x3a0
/* 801674A8  FC 20 F8 90 */	fmr f1, f31
/* 801674AC  4B FF E8 35 */	bl compWallMargin__9dCamera_cFP4cXyzP4cXyzf
/* 801674B0  38 61 03 94 */	addi r3, r1, 0x394
/* 801674B4  38 81 01 24 */	addi r4, r1, 0x124
/* 801674B8  4B F3 03 21 */	bl __as__4cXyzFRC4cXyz
/* 801674BC  7F 83 E3 78 */	mr r3, r28
/* 801674C0  38 81 03 94 */	addi r4, r1, 0x394
/* 801674C4  48 00 09 79 */	bl tooNearEscape__9dCamera_cFP4cXyz
/* 801674C8  3B 20 00 01 */	li r25, 1
/* 801674CC  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 801674D0  60 00 00 80 */	ori r0, r0, 0x80
/* 801674D4  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 801674D8  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 801674DC  60 00 40 00 */	ori r0, r0, 0x4000
/* 801674E0  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 801674E4  38 61 00 4C */	addi r3, r1, 0x4c
/* 801674E8  38 80 FF FF */	li r4, -1
/* 801674EC  4B F0 A1 91 */	bl __dt__7cSGlobeFv
/* 801674F0  38 61 00 54 */	addi r3, r1, 0x54
/* 801674F4  38 80 FF FF */	li r4, -1
/* 801674F8  4B F0 A1 85 */	bl __dt__7cSGlobeFv
/* 801674FC  48 00 00 60 */	b lbl_8016755C
lbl_80167500:
/* 80167500  63 DE 00 04 */	ori r30, r30, 4
/* 80167504  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80167508  60 00 00 80 */	ori r0, r0, 0x80
/* 8016750C  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80167510  38 7C 00 90 */	addi r3, r28, 0x90
/* 80167514  38 81 05 84 */	addi r4, r1, 0x584
/* 80167518  4B F3 02 C1 */	bl __as__4cXyzFRC4cXyz
/* 8016751C  7C 64 1B 78 */	mr r4, r3
/* 80167520  38 61 03 7C */	addi r3, r1, 0x37c
/* 80167524  4B F3 02 B5 */	bl __as__4cXyzFRC4cXyz
/* 80167528  38 61 01 18 */	addi r3, r1, 0x118
/* 8016752C  7F 84 E3 78 */	mr r4, r28
/* 80167530  38 A1 03 7C */	addi r5, r1, 0x37c
/* 80167534  38 C1 03 A0 */	addi r6, r1, 0x3a0
/* 80167538  FC 20 F8 90 */	fmr f1, f31
/* 8016753C  4B FF E7 A5 */	bl compWallMargin__9dCamera_cFP4cXyzP4cXyzf
/* 80167540  38 61 03 94 */	addi r3, r1, 0x394
/* 80167544  38 81 01 18 */	addi r4, r1, 0x118
/* 80167548  4B F3 02 91 */	bl __as__4cXyzFRC4cXyz
/* 8016754C  7F 83 E3 78 */	mr r3, r28
/* 80167550  38 81 03 94 */	addi r4, r1, 0x394
/* 80167554  48 00 08 E9 */	bl tooNearEscape__9dCamera_cFP4cXyz
/* 80167558  3B 20 00 01 */	li r25, 1
lbl_8016755C:
/* 8016755C  38 61 03 F8 */	addi r3, r1, 0x3f8
/* 80167560  38 80 FF FF */	li r4, -1
/* 80167564  4B EB 66 2D */	bl __dt__8cM3dGPlaFv
/* 80167568  38 61 04 0C */	addi r3, r1, 0x40c
/* 8016756C  38 80 FF FF */	li r4, -1
/* 80167570  4B EB 66 21 */	bl __dt__8cM3dGPlaFv
/* 80167574  38 61 00 5C */	addi r3, r1, 0x5c
/* 80167578  38 80 FF FF */	li r4, -1
/* 8016757C  4B F0 A1 01 */	bl __dt__7cSGlobeFv
/* 80167580  38 61 00 64 */	addi r3, r1, 0x64
/* 80167584  38 80 FF FF */	li r4, -1
/* 80167588  4B F0 A0 F5 */	bl __dt__7cSGlobeFv
/* 8016758C  48 00 01 B4 */	b lbl_80167740
lbl_80167590:
/* 80167590  3B E0 00 00 */	li r31, 0
/* 80167594  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80167598  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8016759C  41 82 01 70 */	beq lbl_8016770C
/* 801675A0  80 1C 09 38 */	lwz r0, 0x938(r28)
/* 801675A4  2C 00 00 00 */	cmpwi r0, 0
/* 801675A8  40 82 00 70 */	bne lbl_80167618
/* 801675AC  38 61 01 0C */	addi r3, r1, 0x10c
/* 801675B0  38 9C 00 3C */	addi r4, r28, 0x3c
/* 801675B4  38 BC 00 70 */	addi r5, r28, 0x70
/* 801675B8  48 0F F5 7D */	bl __mi__4cXyzCFRC3Vec
/* 801675BC  38 61 01 00 */	addi r3, r1, 0x100
/* 801675C0  38 81 01 0C */	addi r4, r1, 0x10c
/* 801675C4  4B F3 02 31 */	bl __ct__4cXyzFRC4cXyz
/* 801675C8  38 61 01 00 */	addi r3, r1, 0x100
/* 801675CC  4B F2 71 C5 */	bl abs__4cXyzCFv
/* 801675D0  C0 02 9C B8 */	lfs f0, lit_5662(r2)
/* 801675D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801675D8  40 81 00 10 */	ble lbl_801675E8
/* 801675DC  38 00 00 28 */	li r0, 0x28
/* 801675E0  90 1C 09 38 */	stw r0, 0x938(r28)
/* 801675E4  48 00 00 34 */	b lbl_80167618
lbl_801675E8:
/* 801675E8  C0 02 9D 48 */	lfs f0, lit_9403(r2)
/* 801675EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801675F0  40 80 00 10 */	bge lbl_80167600
/* 801675F4  38 00 00 04 */	li r0, 4
/* 801675F8  90 1C 09 38 */	stw r0, 0x938(r28)
/* 801675FC  48 00 00 1C */	b lbl_80167618
lbl_80167600:
/* 80167600  C0 02 9D 4C */	lfs f0, lit_9404(r2)
/* 80167604  EC 01 00 24 */	fdivs f0, f1, f0
/* 80167608  FC 00 00 1E */	fctiwz f0, f0
/* 8016760C  D8 01 05 C8 */	stfd f0, 0x5c8(r1)
/* 80167610  80 01 05 CC */	lwz r0, 0x5cc(r1)
/* 80167614  90 1C 09 38 */	stw r0, 0x938(r28)
lbl_80167618:
/* 80167618  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8016761C  80 1C 09 38 */	lwz r0, 0x938(r28)
/* 80167620  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 80167624  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80167628  90 01 05 CC */	stw r0, 0x5cc(r1)
/* 8016762C  3C 00 43 30 */	lis r0, 0x4330
/* 80167630  90 01 05 C8 */	stw r0, 0x5c8(r1)
/* 80167634  C8 01 05 C8 */	lfd f0, 0x5c8(r1)
/* 80167638  EC 00 08 28 */	fsubs f0, f0, f1
/* 8016763C  EF 22 00 24 */	fdivs f25, f2, f0
/* 80167640  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 80167644  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80167648  EC 00 08 28 */	fsubs f0, f0, f1
/* 8016764C  EC 19 00 32 */	fmuls f0, f25, f0
/* 80167650  EC 01 00 2A */	fadds f0, f1, f0
/* 80167654  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80167658  38 61 00 10 */	addi r3, r1, 0x10
/* 8016765C  38 81 00 78 */	addi r4, r1, 0x78
/* 80167660  3B 3C 00 2C */	addi r25, r28, 0x2c
/* 80167664  7F 25 CB 78 */	mr r5, r25
/* 80167668  48 10 9B 3D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016766C  38 61 00 0C */	addi r3, r1, 0xc
/* 80167670  38 81 00 10 */	addi r4, r1, 0x10
/* 80167674  FC 20 C8 90 */	fmr f1, f25
/* 80167678  48 10 9B ED */	bl __ml__7cSAngleCFf
/* 8016767C  38 61 00 08 */	addi r3, r1, 8
/* 80167680  7F 24 CB 78 */	mr r4, r25
/* 80167684  38 A1 00 0C */	addi r5, r1, 0xc
/* 80167688  48 10 9A ED */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016768C  38 61 00 74 */	addi r3, r1, 0x74
/* 80167690  38 81 00 08 */	addi r4, r1, 8
/* 80167694  4B F2 83 C5 */	bl V__7cSGlobeFRC7cSAngle
/* 80167698  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8016769C  38 81 00 74 */	addi r4, r1, 0x74
/* 801676A0  48 10 A4 15 */	bl Xyz__7cSGlobeCFv
/* 801676A4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 801676A8  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 801676AC  38 A1 00 F4 */	addi r5, r1, 0xf4
/* 801676B0  48 0F F4 35 */	bl __pl__4cXyzCFRC3Vec
/* 801676B4  38 61 03 7C */	addi r3, r1, 0x37c
/* 801676B8  38 81 00 E8 */	addi r4, r1, 0xe8
/* 801676BC  4B F3 01 1D */	bl __as__4cXyzFRC4cXyz
/* 801676C0  7F 83 E3 78 */	mr r3, r28
/* 801676C4  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 801676C8  38 A1 03 7C */	addi r5, r1, 0x37c
/* 801676CC  38 C1 05 54 */	addi r6, r1, 0x554
/* 801676D0  7F A7 EB 78 */	mr r7, r29
/* 801676D4  4B FF E1 ED */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 801676D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801676DC  41 82 00 10 */	beq lbl_801676EC
/* 801676E0  38 61 03 7C */	addi r3, r1, 0x37c
/* 801676E4  38 81 05 84 */	addi r4, r1, 0x584
/* 801676E8  4B F3 00 F1 */	bl __as__4cXyzFRC4cXyz
lbl_801676EC:
/* 801676EC  80 7C 09 38 */	lwz r3, 0x938(r28)
/* 801676F0  34 03 FF FF */	addic. r0, r3, -1
/* 801676F4  90 1C 09 38 */	stw r0, 0x938(r28)
/* 801676F8  40 82 00 20 */	bne lbl_80167718
/* 801676FC  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80167700  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80167704  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80167708  48 00 00 10 */	b lbl_80167718
lbl_8016770C:
/* 8016770C  38 61 03 7C */	addi r3, r1, 0x37c
/* 80167710  38 81 03 94 */	addi r4, r1, 0x394
/* 80167714  4B F3 00 C5 */	bl __as__4cXyzFRC4cXyz
lbl_80167718:
/* 80167718  38 61 00 DC */	addi r3, r1, 0xdc
/* 8016771C  7F 84 E3 78 */	mr r4, r28
/* 80167720  38 A1 03 7C */	addi r5, r1, 0x37c
/* 80167724  38 C1 03 A0 */	addi r6, r1, 0x3a0
/* 80167728  FC 20 F8 90 */	fmr f1, f31
/* 8016772C  4B FF E5 B5 */	bl compWallMargin__9dCamera_cFP4cXyzP4cXyzf
/* 80167730  38 61 03 94 */	addi r3, r1, 0x394
/* 80167734  38 81 00 DC */	addi r4, r1, 0xdc
/* 80167738  4B F3 00 A1 */	bl __as__4cXyzFRC4cXyz
/* 8016773C  3B 20 00 01 */	li r25, 1
lbl_80167740:
/* 80167740  93 FC 09 58 */	stw r31, 0x958(r28)
/* 80167744  57 A0 04 63 */	rlwinm. r0, r29, 0, 0x11, 0x11
/* 80167748  41 82 01 F4 */	beq lbl_8016793C
/* 8016774C  A0 1C 09 7A */	lhz r0, 0x97a(r28)
/* 80167750  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80167754  41 82 01 E8 */	beq lbl_8016793C
/* 80167758  3A C0 00 00 */	li r22, 0
/* 8016775C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80167760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80167764  3B 43 23 3C */	addi r26, r3, 0x233c
/* 80167768  3B 61 03 E4 */	addi r27, r1, 0x3e4
lbl_8016776C:
/* 8016776C  7F 43 D3 78 */	mr r3, r26
/* 80167770  38 81 03 94 */	addi r4, r1, 0x394
/* 80167774  38 A1 03 E0 */	addi r5, r1, 0x3e0
/* 80167778  80 DC 01 80 */	lwz r6, 0x180(r28)
/* 8016777C  38 E0 00 00 */	li r7, 0
/* 80167780  4B F1 F8 3D */	bl chkCameraPoint__4dCcSFRC4cXyzPQ214cCcD_ShapeAttr5ShapeP10fopAc_ac_cP10fopAc_ac_c
/* 80167784  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80167788  41 82 01 A8 */	beq lbl_80167930
/* 8016778C  3B A0 00 00 */	li r29, 0
/* 80167790  80 01 03 E0 */	lwz r0, 0x3e0(r1)
/* 80167794  2C 00 00 01 */	cmpwi r0, 1
/* 80167798  41 82 00 44 */	beq lbl_801677DC
/* 8016779C  40 80 00 58 */	bge lbl_801677F4
/* 801677A0  2C 00 00 00 */	cmpwi r0, 0
/* 801677A4  40 80 00 08 */	bge lbl_801677AC
/* 801677A8  48 00 00 4C */	b lbl_801677F4
lbl_801677AC:
/* 801677AC  38 61 03 10 */	addi r3, r1, 0x310
/* 801677B0  7F 64 DB 78 */	mr r4, r27
/* 801677B4  4B F3 00 25 */	bl __as__4cXyzFRC4cXyz
/* 801677B8  C0 01 03 14 */	lfs f0, 0x314(r1)
/* 801677BC  C0 21 03 F0 */	lfs f1, 0x3f0(r1)
/* 801677C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801677C4  D0 01 03 14 */	stfs f0, 0x314(r1)
/* 801677C8  FF A0 08 90 */	fmr f29, f1
/* 801677CC  C0 02 9C F8 */	lfs f0, lit_8016(r2)
/* 801677D0  EF 80 00 72 */	fmuls f28, f0, f1
/* 801677D4  3B A0 00 01 */	li r29, 1
/* 801677D8  48 00 00 1C */	b lbl_801677F4
lbl_801677DC:
/* 801677DC  38 61 03 10 */	addi r3, r1, 0x310
/* 801677E0  7F 64 DB 78 */	mr r4, r27
/* 801677E4  4B F2 FF F5 */	bl __as__4cXyzFRC4cXyz
/* 801677E8  C3 A1 03 F0 */	lfs f29, 0x3f0(r1)
/* 801677EC  C3 81 03 F4 */	lfs f28, 0x3f4(r1)
/* 801677F0  3B A0 00 01 */	li r29, 1
lbl_801677F4:
/* 801677F4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801677F8  41 82 00 68 */	beq lbl_80167860
/* 801677FC  C0 21 03 A4 */	lfs f1, 0x3a4(r1)
/* 80167800  C0 01 03 14 */	lfs f0, 0x314(r1)
/* 80167804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80167808  4C 41 13 82 */	cror 2, 1, 2
/* 8016780C  40 82 00 54 */	bne lbl_80167860
/* 80167810  EC 00 E0 2A */	fadds f0, f0, f28
/* 80167814  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80167818  4C 40 13 82 */	cror 2, 0, 2
/* 8016781C  40 82 00 44 */	bne lbl_80167860
/* 80167820  C0 21 03 10 */	lfs f1, 0x310(r1)
/* 80167824  C0 01 03 A0 */	lfs f0, 0x3a0(r1)
/* 80167828  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016782C  D0 01 03 04 */	stfs f0, 0x304(r1)
/* 80167830  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80167834  D0 01 03 08 */	stfs f0, 0x308(r1)
/* 80167838  C0 21 03 18 */	lfs f1, 0x318(r1)
/* 8016783C  C0 01 03 A8 */	lfs f0, 0x3a8(r1)
/* 80167840  EC 01 00 28 */	fsubs f0, f1, f0
/* 80167844  D0 01 03 0C */	stfs f0, 0x30c(r1)
/* 80167848  38 61 03 04 */	addi r3, r1, 0x304
/* 8016784C  4B F2 6F 45 */	bl abs__4cXyzCFv
/* 80167850  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80167854  4C 40 13 82 */	cror 2, 0, 2
/* 80167858  40 82 00 08 */	bne lbl_80167860
/* 8016785C  3B A0 00 00 */	li r29, 0
lbl_80167860:
/* 80167860  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80167864  41 82 00 C0 */	beq lbl_80167924
/* 80167868  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 8016786C  38 81 03 10 */	addi r4, r1, 0x310
/* 80167870  FC 20 E8 90 */	fmr f1, f29
/* 80167874  FC 40 E0 90 */	fmr f2, f28
/* 80167878  48 10 78 31 */	bl __ct__8cM3dGCylFPC4cXyzff
/* 8016787C  38 61 03 AC */	addi r3, r1, 0x3ac
/* 80167880  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 80167884  38 A1 03 94 */	addi r5, r1, 0x394
/* 80167888  48 10 7A 21 */	bl __ct__8cM3dGLinFRC4cXyzRC4cXyz
/* 8016788C  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 80167890  38 81 03 AC */	addi r4, r1, 0x3ac
/* 80167894  38 A1 02 F8 */	addi r5, r1, 0x2f8
/* 80167898  38 C1 02 EC */	addi r6, r1, 0x2ec
/* 8016789C  48 10 50 A9 */	bl cM3d_Cross_CylLin__FPC8cM3dGCylPC8cM3dGLinP3VecP3Vec
/* 801678A0  2C 03 00 00 */	cmpwi r3, 0
/* 801678A4  41 82 00 68 */	beq lbl_8016790C
/* 801678A8  C0 21 02 F8 */	lfs f1, 0x2f8(r1)
/* 801678AC  C0 01 03 10 */	lfs f0, 0x310(r1)
/* 801678B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801678B4  D0 01 02 E0 */	stfs f0, 0x2e0(r1)
/* 801678B8  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 801678BC  D0 01 02 E4 */	stfs f0, 0x2e4(r1)
/* 801678C0  C0 21 03 00 */	lfs f1, 0x300(r1)
/* 801678C4  C0 01 03 18 */	lfs f0, 0x318(r1)
/* 801678C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 801678CC  D0 01 02 E8 */	stfs f0, 0x2e8(r1)
/* 801678D0  38 61 00 D0 */	addi r3, r1, 0xd0
/* 801678D4  38 81 02 E0 */	addi r4, r1, 0x2e0
/* 801678D8  48 0F F6 1D */	bl normalize__4cXyzFv
/* 801678DC  38 61 00 C4 */	addi r3, r1, 0xc4
/* 801678E0  38 81 02 E0 */	addi r4, r1, 0x2e0
/* 801678E4  C0 22 9C F8 */	lfs f1, lit_8016(r2)
/* 801678E8  48 0F F2 9D */	bl __ml__4cXyzCFf
/* 801678EC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 801678F0  38 81 02 F8 */	addi r4, r1, 0x2f8
/* 801678F4  38 A1 00 C4 */	addi r5, r1, 0xc4
/* 801678F8  48 0F F1 ED */	bl __pl__4cXyzCFRC3Vec
/* 801678FC  38 61 03 94 */	addi r3, r1, 0x394
/* 80167900  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80167904  4B F2 FE D5 */	bl __as__4cXyzFRC4cXyz
/* 80167908  3B 20 00 01 */	li r25, 1
lbl_8016790C:
/* 8016790C  38 61 03 AC */	addi r3, r1, 0x3ac
/* 80167910  38 80 FF FF */	li r4, -1
/* 80167914  4B EC F1 49 */	bl __dt__8cM3dGLinFv
/* 80167918  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 8016791C  38 80 FF FF */	li r4, -1
/* 80167920  4B EC 95 1D */	bl __dt__8cM3dGCylFv
lbl_80167924:
/* 80167924  3A D6 00 01 */	addi r22, r22, 1
/* 80167928  2C 16 00 03 */	cmpwi r22, 3
/* 8016792C  41 80 FE 40 */	blt lbl_8016776C
lbl_80167930:
/* 80167930  38 61 03 E0 */	addi r3, r1, 0x3e0
/* 80167934  38 80 FF FF */	li r4, -1
/* 80167938  48 00 02 85 */	bl __dt__Q214cCcD_ShapeAttr5ShapeFv
lbl_8016793C:
/* 8016793C  28 18 00 00 */	cmplwi r24, 0
/* 80167940  41 82 01 48 */	beq lbl_80167A88
/* 80167944  38 61 04 20 */	addi r3, r1, 0x420
/* 80167948  4B F0 FC 35 */	bl __ct__11dBgS_GndChkFv
/* 8016794C  38 61 04 20 */	addi r3, r1, 0x420
/* 80167950  38 81 03 94 */	addi r4, r1, 0x394
/* 80167954  48 10 03 D5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80167958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8016795C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80167960  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80167964  38 81 04 20 */	addi r4, r1, 0x420
/* 80167968  4B F0 CB 39 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8016796C  C0 42 9D 34 */	lfs f2, lit_9398(r2)
/* 80167970  C0 1C 03 80 */	lfs f0, 0x380(r28)
/* 80167974  EC 02 00 2A */	fadds f0, f2, f0
/* 80167978  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016797C  40 80 00 50 */	bge lbl_801679CC
/* 80167980  38 61 02 D4 */	addi r3, r1, 0x2d4
/* 80167984  38 81 03 94 */	addi r4, r1, 0x394
/* 80167988  4B F2 FE 51 */	bl __as__4cXyzFRC4cXyz
/* 8016798C  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 80167990  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 80167994  4B F2 FE 45 */	bl __as__4cXyzFRC4cXyz
/* 80167998  38 61 00 AC */	addi r3, r1, 0xac
/* 8016799C  38 81 02 D4 */	addi r4, r1, 0x2d4
/* 801679A0  38 A1 02 C8 */	addi r5, r1, 0x2c8
/* 801679A4  48 0F F1 91 */	bl __mi__4cXyzCFRC3Vec
/* 801679A8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801679AC  38 81 00 AC */	addi r4, r1, 0xac
/* 801679B0  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 801679B4  48 0F F1 D1 */	bl __ml__4cXyzCFf
/* 801679B8  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 801679BC  38 81 00 A0 */	addi r4, r1, 0xa0
/* 801679C0  7C 65 1B 78 */	mr r5, r3
/* 801679C4  48 1D F6 CD */	bl PSVECAdd
/* 801679C8  48 00 00 4C */	b lbl_80167A14
lbl_801679CC:
/* 801679CC  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 801679D0  38 81 03 94 */	addi r4, r1, 0x394
/* 801679D4  4B F2 FE 05 */	bl __as__4cXyzFRC4cXyz
/* 801679D8  38 61 02 D4 */	addi r3, r1, 0x2d4
/* 801679DC  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 801679E0  4B F2 FD F9 */	bl __as__4cXyzFRC4cXyz
/* 801679E4  38 61 00 94 */	addi r3, r1, 0x94
/* 801679E8  38 81 02 C8 */	addi r4, r1, 0x2c8
/* 801679EC  38 A1 02 D4 */	addi r5, r1, 0x2d4
/* 801679F0  48 0F F1 45 */	bl __mi__4cXyzCFRC3Vec
/* 801679F4  38 61 00 88 */	addi r3, r1, 0x88
/* 801679F8  38 81 00 94 */	addi r4, r1, 0x94
/* 801679FC  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 80167A00  48 0F F1 85 */	bl __ml__4cXyzCFf
/* 80167A04  38 61 02 D4 */	addi r3, r1, 0x2d4
/* 80167A08  38 81 00 88 */	addi r4, r1, 0x88
/* 80167A0C  7C 65 1B 78 */	mr r5, r3
/* 80167A10  48 1D F6 81 */	bl PSVECAdd
lbl_80167A14:
/* 80167A14  88 1C 03 D0 */	lbz r0, 0x3d0(r28)
/* 80167A18  28 00 00 00 */	cmplwi r0, 0
/* 80167A1C  41 82 00 5C */	beq lbl_80167A78
/* 80167A20  7F 83 E3 78 */	mr r3, r28
/* 80167A24  38 81 02 D4 */	addi r4, r1, 0x2d4
/* 80167A28  38 A1 02 C8 */	addi r5, r1, 0x2c8
/* 80167A2C  4B FF E1 35 */	bl lineCollisionCheckBush__9dCamera_cFP4cXyzP4cXyz
/* 80167A30  54 60 07 7D */	rlwinm. r0, r3, 0, 0x1d, 0x1e
/* 80167A34  41 82 00 44 */	beq lbl_80167A78
/* 80167A38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80167A3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80167A40  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 80167A44  38 81 02 BC */	addi r4, r1, 0x2bc
/* 80167A48  4B F1 E4 71 */	bl GetCamTopPos__12dCcMassS_MngFP3Vec
/* 80167A4C  C0 01 03 98 */	lfs f0, 0x398(r1)
/* 80167A50  C0 41 02 C0 */	lfs f2, 0x2c0(r1)
/* 80167A54  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80167A58  40 80 00 20 */	bge lbl_80167A78
/* 80167A5C  C0 7C 00 40 */	lfs f3, 0x40(r28)
/* 80167A60  C0 22 9D 14 */	lfs f1, lit_8023(r2)
/* 80167A64  EC 02 18 28 */	fsubs f0, f2, f3
/* 80167A68  EC 01 00 32 */	fmuls f0, f1, f0
/* 80167A6C  EC 03 00 2A */	fadds f0, f3, f0
/* 80167A70  D0 01 03 98 */	stfs f0, 0x398(r1)
/* 80167A74  3B 20 00 01 */	li r25, 1
lbl_80167A78:
/* 80167A78  38 61 04 20 */	addi r3, r1, 0x420
/* 80167A7C  38 80 FF FF */	li r4, -1
/* 80167A80  4B F0 FB 71 */	bl __dt__11dBgS_GndChkFv
/* 80167A84  48 00 00 70 */	b lbl_80167AF4
lbl_80167A88:
/* 80167A88  28 17 00 00 */	cmplwi r23, 0
/* 80167A8C  41 82 00 68 */	beq lbl_80167AF4
/* 80167A90  C0 01 03 98 */	lfs f0, 0x398(r1)
/* 80167A94  C0 3C 03 24 */	lfs f1, 0x324(r28)
/* 80167A98  EC 40 08 28 */	fsubs f2, f0, f1
/* 80167A9C  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80167AA0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80167AA4  4C 41 13 82 */	cror 2, 1, 2
/* 80167AA8  40 82 00 20 */	bne lbl_80167AC8
/* 80167AAC  C0 02 9D 58 */	lfs f0, lit_9407(r2)
/* 80167AB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80167AB4  40 80 00 14 */	bge lbl_80167AC8
/* 80167AB8  EC 00 08 2A */	fadds f0, f0, f1
/* 80167ABC  D0 01 03 98 */	stfs f0, 0x398(r1)
/* 80167AC0  3B 20 00 01 */	li r25, 1
/* 80167AC4  48 00 00 30 */	b lbl_80167AF4
lbl_80167AC8:
/* 80167AC8  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80167ACC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80167AD0  4C 40 13 82 */	cror 2, 0, 2
/* 80167AD4  40 82 00 20 */	bne lbl_80167AF4
/* 80167AD8  C0 02 9D 5C */	lfs f0, lit_9408(r2)
/* 80167ADC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80167AE0  40 81 00 14 */	ble lbl_80167AF4
/* 80167AE4  C0 02 9D 58 */	lfs f0, lit_9407(r2)
/* 80167AE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80167AEC  D0 01 03 98 */	stfs f0, 0x398(r1)
/* 80167AF0  3B 20 00 01 */	li r25, 1
lbl_80167AF4:
/* 80167AF4  38 7C 00 30 */	addi r3, r28, 0x30
/* 80167AF8  38 81 03 A0 */	addi r4, r1, 0x3a0
/* 80167AFC  4B F2 FC DD */	bl __as__4cXyzFRC4cXyz
/* 80167B00  38 7C 00 3C */	addi r3, r28, 0x3c
/* 80167B04  38 81 03 94 */	addi r4, r1, 0x394
/* 80167B08  4B F2 FC D1 */	bl __as__4cXyzFRC4cXyz
/* 80167B0C  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80167B10  41 82 00 20 */	beq lbl_80167B30
/* 80167B14  38 61 00 7C */	addi r3, r1, 0x7c
/* 80167B18  38 81 03 94 */	addi r4, r1, 0x394
/* 80167B1C  38 A1 03 A0 */	addi r5, r1, 0x3a0
/* 80167B20  48 0F F0 15 */	bl __mi__4cXyzCFRC3Vec
/* 80167B24  38 61 00 74 */	addi r3, r1, 0x74
/* 80167B28  38 81 00 7C */	addi r4, r1, 0x7c
/* 80167B2C  48 10 9F 45 */	bl Val__7cSGlobeFRC4cXyz
lbl_80167B30:
/* 80167B30  38 7C 00 28 */	addi r3, r28, 0x28
/* 80167B34  38 81 00 74 */	addi r4, r1, 0x74
/* 80167B38  4B F2 6C 3D */	bl __as__7cSGlobeFRC7cSGlobe
/* 80167B3C  30 1E FF FF */	addic r0, r30, -1
/* 80167B40  7E E0 F1 10 */	subfe r23, r0, r30
/* 80167B44  38 61 04 E4 */	addi r3, r1, 0x4e4
/* 80167B48  38 80 FF FF */	li r4, -1
/* 80167B4C  4B F1 02 B5 */	bl __dt__14dBgS_CamLinChkFv
/* 80167B50  38 61 05 54 */	addi r3, r1, 0x554
/* 80167B54  38 80 FF FF */	li r4, -1
/* 80167B58  4B F1 02 A9 */	bl __dt__14dBgS_CamLinChkFv
/* 80167B5C  38 61 00 74 */	addi r3, r1, 0x74
/* 80167B60  38 80 FF FF */	li r4, -1
/* 80167B64  4B F0 9B 19 */	bl __dt__7cSGlobeFv
/* 80167B68  7E E3 BB 78 */	mr r3, r23
/* 80167B6C  E3 E1 06 68 */	psq_l f31, 1640(r1), 0, 0 /* qr0 */
/* 80167B70  CB E1 06 60 */	lfd f31, 0x660(r1)
/* 80167B74  E3 C1 06 58 */	psq_l f30, 1624(r1), 0, 0 /* qr0 */
/* 80167B78  CB C1 06 50 */	lfd f30, 0x650(r1)
/* 80167B7C  E3 A1 06 48 */	psq_l f29, 1608(r1), 0, 0 /* qr0 */
/* 80167B80  CB A1 06 40 */	lfd f29, 0x640(r1)
/* 80167B84  E3 81 06 38 */	psq_l f28, 1592(r1), 0, 0 /* qr0 */
/* 80167B88  CB 81 06 30 */	lfd f28, 0x630(r1)
/* 80167B8C  E3 61 06 28 */	psq_l f27, 1576(r1), 0, 0 /* qr0 */
/* 80167B90  CB 61 06 20 */	lfd f27, 0x620(r1)
/* 80167B94  E3 41 06 18 */	psq_l f26, 1560(r1), 0, 0 /* qr0 */
/* 80167B98  CB 41 06 10 */	lfd f26, 0x610(r1)
/* 80167B9C  E3 21 06 08 */	psq_l f25, 1544(r1), 0, 0 /* qr0 */
/* 80167BA0  CB 21 06 00 */	lfd f25, 0x600(r1)
/* 80167BA4  39 61 06 00 */	addi r11, r1, 0x600
/* 80167BA8  48 1F A6 65 */	bl _restgpr_22
/* 80167BAC  80 01 06 74 */	lwz r0, 0x674(r1)
/* 80167BB0  7C 08 03 A6 */	mtlr r0
/* 80167BB4  38 21 06 70 */	addi r1, r1, 0x670
/* 80167BB8  4E 80 00 20 */	blr 
