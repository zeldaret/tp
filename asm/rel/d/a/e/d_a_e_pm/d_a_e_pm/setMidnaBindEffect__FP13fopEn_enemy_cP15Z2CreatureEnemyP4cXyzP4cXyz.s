lbl_8074BB14:
/* 8074BB14  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8074BB18  7C 08 02 A6 */	mflr r0
/* 8074BB1C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8074BB20  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8074BB24  4B C1 66 90 */	b _savegpr_19
/* 8074BB28  7C 7E 1B 78 */	mr r30, r3
/* 8074BB2C  7C 9A 23 78 */	mr r26, r4
/* 8074BB30  7C BB 2B 78 */	mr r27, r5
/* 8074BB34  7C DC 33 78 */	mr r28, r6
/* 8074BB38  3C 60 80 75 */	lis r3, cNullVec__6Z2Calc@ha
/* 8074BB3C  3A E3 C1 50 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 8074BB40  3C 60 80 75 */	lis r3, lit_3910@ha
/* 8074BB44  3B E3 BF 3C */	addi r31, r3, lit_3910@l
/* 8074BB48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8074BB4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8074BB50  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8074BB54  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 8074BB58  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 8074BB5C  28 00 00 00 */	cmplwi r0, 0
/* 8074BB60  41 82 03 A4 */	beq lbl_8074BF04
/* 8074BB64  7F C4 F3 78 */	mr r4, r30
/* 8074BB68  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8074BB6C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8074BB70  7D 89 03 A6 */	mtctr r12
/* 8074BB74  4E 80 04 21 */	bctrl 
/* 8074BB78  2C 03 00 00 */	cmpwi r3, 0
/* 8074BB7C  41 82 03 88 */	beq lbl_8074BF04
/* 8074BB80  4B A6 09 FC */	b dKy_darkworld_check__Fv
/* 8074BB84  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8074BB88  30 03 FF FF */	addic r0, r3, -1
/* 8074BB8C  7F A0 19 10 */	subfe r29, r0, r3
/* 8074BB90  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 8074BB94  28 00 00 00 */	cmplwi r0, 0
/* 8074BB98  40 82 02 A0 */	bne lbl_8074BE38
/* 8074BB9C  38 00 00 01 */	li r0, 1
/* 8074BBA0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8074BBA4  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 8074BBA8  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 8074BBAC  80 63 00 00 */	lwz r3, 0(r3)
/* 8074BBB0  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8074BBB4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8074BBB8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8074BBBC  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8074BBC0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8074BBC4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8074BBC8  4B BF A8 E8 */	b PSMTXCopy
/* 8074BBCC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8074BBD0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8074BBD4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8074BBD8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8074BBDC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8074BBE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8074BBE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8074BBE8  38 81 00 4C */	addi r4, r1, 0x4c
/* 8074BBEC  38 A1 00 58 */	addi r5, r1, 0x58
/* 8074BBF0  4B BF B1 7C */	b PSMTXMultVec
/* 8074BBF4  38 61 00 34 */	addi r3, r1, 0x34
/* 8074BBF8  38 81 00 58 */	addi r4, r1, 0x58
/* 8074BBFC  7F 65 DB 78 */	mr r5, r27
/* 8074BC00  4B B1 AF 34 */	b __mi__4cXyzCFRC3Vec
/* 8074BC04  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8074BC08  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8074BC0C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8074BC10  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8074BC14  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8074BC18  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8074BC1C  4B B1 BA 58 */	b cM_atan2s__Fff
/* 8074BC20  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 8074BC24  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8074BC28  EC 20 00 32 */	fmuls f1, f0, f0
/* 8074BC2C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8074BC30  EC 00 00 32 */	fmuls f0, f0, f0
/* 8074BC34  EC 41 00 2A */	fadds f2, f1, f0
/* 8074BC38  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8074BC3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8074BC40  40 81 00 0C */	ble lbl_8074BC4C
/* 8074BC44  FC 00 10 34 */	frsqrte f0, f2
/* 8074BC48  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8074BC4C:
/* 8074BC4C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8074BC50  4B B1 BA 24 */	b cM_atan2s__Fff
/* 8074BC54  7C 03 00 D0 */	neg r0, r3
/* 8074BC58  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8074BC5C  38 80 00 00 */	li r4, 0
/* 8074BC60  B0 81 00 30 */	sth r4, 0x30(r1)
/* 8074BC64  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8074BC68  7C 00 07 74 */	extsb r0, r0
/* 8074BC6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8074BC70  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 8074BC74  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8074BC78  57 A5 10 3A */	slwi r5, r29, 2
/* 8074BC7C  90 81 00 08 */	stw r4, 8(r1)
/* 8074BC80  90 01 00 0C */	stw r0, 0xc(r1)
/* 8074BC84  3A B7 00 20 */	addi r21, r23, 0x20
/* 8074BC88  7E B5 2A 14 */	add r21, r21, r5
/* 8074BC8C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8074BC90  3A D7 00 28 */	addi r22, r23, 0x28
/* 8074BC94  7E D6 2A 14 */	add r22, r22, r5
/* 8074BC98  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8074BC9C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8074BCA0  38 80 00 00 */	li r4, 0
/* 8074BCA4  38 A0 02 9B */	li r5, 0x29b
/* 8074BCA8  7F 66 DB 78 */	mr r6, r27
/* 8074BCAC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8074BCB0  39 01 00 2C */	addi r8, r1, 0x2c
/* 8074BCB4  7F 89 E3 78 */	mr r9, r28
/* 8074BCB8  39 40 00 FF */	li r10, 0xff
/* 8074BCBC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8074BCC0  4B 90 0D D0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8074BCC4  7C 79 1B 79 */	or. r25, r3, r3
/* 8074BCC8  41 82 00 FC */	beq lbl_8074BDC4
/* 8074BCCC  38 61 00 40 */	addi r3, r1, 0x40
/* 8074BCD0  4B BF B4 68 */	b PSVECSquareMag
/* 8074BCD4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8074BCD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074BCDC  40 81 00 58 */	ble lbl_8074BD34
/* 8074BCE0  FC 00 08 34 */	frsqrte f0, f1
/* 8074BCE4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8074BCE8  FC 44 00 32 */	fmul f2, f4, f0
/* 8074BCEC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8074BCF0  FC 00 00 32 */	fmul f0, f0, f0
/* 8074BCF4  FC 01 00 32 */	fmul f0, f1, f0
/* 8074BCF8  FC 03 00 28 */	fsub f0, f3, f0
/* 8074BCFC  FC 02 00 32 */	fmul f0, f2, f0
/* 8074BD00  FC 44 00 32 */	fmul f2, f4, f0
/* 8074BD04  FC 00 00 32 */	fmul f0, f0, f0
/* 8074BD08  FC 01 00 32 */	fmul f0, f1, f0
/* 8074BD0C  FC 03 00 28 */	fsub f0, f3, f0
/* 8074BD10  FC 02 00 32 */	fmul f0, f2, f0
/* 8074BD14  FC 44 00 32 */	fmul f2, f4, f0
/* 8074BD18  FC 00 00 32 */	fmul f0, f0, f0
/* 8074BD1C  FC 01 00 32 */	fmul f0, f1, f0
/* 8074BD20  FC 03 00 28 */	fsub f0, f3, f0
/* 8074BD24  FC 02 00 32 */	fmul f0, f2, f0
/* 8074BD28  FC 21 00 32 */	fmul f1, f1, f0
/* 8074BD2C  FC 20 08 18 */	frsp f1, f1
/* 8074BD30  48 00 00 88 */	b lbl_8074BDB8
lbl_8074BD34:
/* 8074BD34  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8074BD38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074BD3C  40 80 00 10 */	bge lbl_8074BD4C
/* 8074BD40  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8074BD44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8074BD48  48 00 00 70 */	b lbl_8074BDB8
lbl_8074BD4C:
/* 8074BD4C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8074BD50  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8074BD54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8074BD58  3C 00 7F 80 */	lis r0, 0x7f80
/* 8074BD5C  7C 03 00 00 */	cmpw r3, r0
/* 8074BD60  41 82 00 14 */	beq lbl_8074BD74
/* 8074BD64  40 80 00 40 */	bge lbl_8074BDA4
/* 8074BD68  2C 03 00 00 */	cmpwi r3, 0
/* 8074BD6C  41 82 00 20 */	beq lbl_8074BD8C
/* 8074BD70  48 00 00 34 */	b lbl_8074BDA4
lbl_8074BD74:
/* 8074BD74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8074BD78  41 82 00 0C */	beq lbl_8074BD84
/* 8074BD7C  38 00 00 01 */	li r0, 1
/* 8074BD80  48 00 00 28 */	b lbl_8074BDA8
lbl_8074BD84:
/* 8074BD84  38 00 00 02 */	li r0, 2
/* 8074BD88  48 00 00 20 */	b lbl_8074BDA8
lbl_8074BD8C:
/* 8074BD8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8074BD90  41 82 00 0C */	beq lbl_8074BD9C
/* 8074BD94  38 00 00 05 */	li r0, 5
/* 8074BD98  48 00 00 10 */	b lbl_8074BDA8
lbl_8074BD9C:
/* 8074BD9C  38 00 00 03 */	li r0, 3
/* 8074BDA0  48 00 00 08 */	b lbl_8074BDA8
lbl_8074BDA4:
/* 8074BDA4  38 00 00 04 */	li r0, 4
lbl_8074BDA8:
/* 8074BDA8  2C 00 00 01 */	cmpwi r0, 1
/* 8074BDAC  40 82 00 0C */	bne lbl_8074BDB8
/* 8074BDB0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8074BDB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8074BDB8:
/* 8074BDB8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8074BDBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8074BDC0  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_8074BDC4:
/* 8074BDC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8074BDC8  7C 04 07 74 */	extsb r4, r0
/* 8074BDCC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8074BDD0  38 00 00 00 */	li r0, 0
/* 8074BDD4  90 01 00 08 */	stw r0, 8(r1)
/* 8074BDD8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8074BDDC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8074BDE0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8074BDE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8074BDE8  38 80 00 00 */	li r4, 0
/* 8074BDEC  38 A0 02 9C */	li r5, 0x29c
/* 8074BDF0  7F 66 DB 78 */	mr r6, r27
/* 8074BDF4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8074BDF8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8074BDFC  7F 89 E3 78 */	mr r9, r28
/* 8074BE00  39 40 00 FF */	li r10, 0xff
/* 8074BE04  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8074BE08  4B 90 0C 88 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8074BE0C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 8074BE10  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 8074BE14  90 01 00 28 */	stw r0, 0x28(r1)
/* 8074BE18  7F 43 D3 78 */	mr r3, r26
/* 8074BE1C  38 81 00 28 */	addi r4, r1, 0x28
/* 8074BE20  38 A0 00 00 */	li r5, 0
/* 8074BE24  38 C0 FF FF */	li r6, -1
/* 8074BE28  81 9A 00 00 */	lwz r12, 0(r26)
/* 8074BE2C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8074BE30  7D 89 03 A6 */	mtctr r12
/* 8074BE34  4E 80 04 21 */	bctrl 
lbl_8074BE38:
/* 8074BE38  3A A0 00 00 */	li r21, 0
/* 8074BE3C  3A C0 00 00 */	li r22, 0
/* 8074BE40  3A 80 00 00 */	li r20, 0
/* 8074BE44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8074BE48  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 8074BE4C  57 A0 10 3A */	slwi r0, r29, 2
/* 8074BE50  3B 17 00 28 */	addi r24, r23, 0x28
/* 8074BE54  7F 18 02 14 */	add r24, r24, r0
/* 8074BE58  3B B7 00 20 */	addi r29, r23, 0x20
/* 8074BE5C  7F BD 02 14 */	add r29, r29, r0
/* 8074BE60  3A 77 00 30 */	addi r19, r23, 0x30
lbl_8074BE64:
/* 8074BE64  3A F4 05 9C */	addi r23, r20, 0x59c
/* 8074BE68  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8074BE6C  7C 05 07 74 */	extsb r5, r0
/* 8074BE70  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8074BE74  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8074BE78  38 00 00 FF */	li r0, 0xff
/* 8074BE7C  90 01 00 08 */	stw r0, 8(r1)
/* 8074BE80  38 00 00 00 */	li r0, 0
/* 8074BE84  90 01 00 0C */	stw r0, 0xc(r1)
/* 8074BE88  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8074BE8C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8074BE90  93 01 00 18 */	stw r24, 0x18(r1)
/* 8074BE94  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8074BE98  38 A0 00 00 */	li r5, 0
/* 8074BE9C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 8074BEA0  7F 67 DB 78 */	mr r7, r27
/* 8074BEA4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8074BEA8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8074BEAC  7F 8A E3 78 */	mr r10, r28
/* 8074BEB0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8074BEB4  4B 90 16 18 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8074BEB8  7C 7E B9 2E */	stwx r3, r30, r23
/* 8074BEBC  3A B5 00 01 */	addi r21, r21, 1
/* 8074BEC0  2C 15 00 03 */	cmpwi r21, 3
/* 8074BEC4  3A D6 00 02 */	addi r22, r22, 2
/* 8074BEC8  3A 94 00 04 */	addi r20, r20, 4
/* 8074BECC  41 80 FF 98 */	blt lbl_8074BE64
/* 8074BED0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 8074BED4  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 8074BED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8074BEDC  7F 43 D3 78 */	mr r3, r26
/* 8074BEE0  38 81 00 24 */	addi r4, r1, 0x24
/* 8074BEE4  38 A0 00 00 */	li r5, 0
/* 8074BEE8  38 C0 FF FF */	li r6, -1
/* 8074BEEC  81 9A 00 00 */	lwz r12, 0(r26)
/* 8074BEF0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8074BEF4  7D 89 03 A6 */	mtctr r12
/* 8074BEF8  4E 80 04 21 */	bctrl 
/* 8074BEFC  38 60 00 01 */	li r3, 1
/* 8074BF00  48 00 00 10 */	b lbl_8074BF10
lbl_8074BF04:
/* 8074BF04  38 00 00 00 */	li r0, 0
/* 8074BF08  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8074BF0C  38 60 00 00 */	li r3, 0
lbl_8074BF10:
/* 8074BF10  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8074BF14  4B C1 62 EC */	b _restgpr_19
/* 8074BF18  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8074BF1C  7C 08 03 A6 */	mtlr r0
/* 8074BF20  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8074BF24  4E 80 00 20 */	blr 
