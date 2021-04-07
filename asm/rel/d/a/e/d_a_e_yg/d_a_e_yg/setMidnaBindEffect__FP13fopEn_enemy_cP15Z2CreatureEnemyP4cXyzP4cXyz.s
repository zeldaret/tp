lbl_807FC814:
/* 807FC814  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807FC818  7C 08 02 A6 */	mflr r0
/* 807FC81C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807FC820  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807FC824  4B B6 59 91 */	bl _savegpr_19
/* 807FC828  7C 7E 1B 78 */	mr r30, r3
/* 807FC82C  7C 9A 23 78 */	mr r26, r4
/* 807FC830  7C BB 2B 78 */	mr r27, r5
/* 807FC834  7C DC 33 78 */	mr r28, r6
/* 807FC838  3C 60 80 80 */	lis r3, cNullVec__6Z2Calc@ha /* 0x807FCDFC@ha */
/* 807FC83C  3A E3 CD FC */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x807FCDFC@l */
/* 807FC840  3C 60 80 80 */	lis r3, lit_3801@ha /* 0x807FCCB4@ha */
/* 807FC844  3B E3 CC B4 */	addi r31, r3, lit_3801@l /* 0x807FCCB4@l */
/* 807FC848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FC84C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FC850  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807FC854  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807FC858  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 807FC85C  28 00 00 00 */	cmplwi r0, 0
/* 807FC860  41 82 03 A4 */	beq lbl_807FCC04
/* 807FC864  7F C4 F3 78 */	mr r4, r30
/* 807FC868  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807FC86C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807FC870  7D 89 03 A6 */	mtctr r12
/* 807FC874  4E 80 04 21 */	bctrl 
/* 807FC878  2C 03 00 00 */	cmpwi r3, 0
/* 807FC87C  41 82 03 88 */	beq lbl_807FCC04
/* 807FC880  4B 9A FC FD */	bl dKy_darkworld_check__Fv
/* 807FC884  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807FC888  30 03 FF FF */	addic r0, r3, -1
/* 807FC88C  7F A0 19 10 */	subfe r29, r0, r3
/* 807FC890  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807FC894  28 00 00 00 */	cmplwi r0, 0
/* 807FC898  40 82 02 A0 */	bne lbl_807FCB38
/* 807FC89C  38 00 00 01 */	li r0, 1
/* 807FC8A0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807FC8A4  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807FC8A8  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 807FC8AC  80 63 00 00 */	lwz r3, 0(r3)
/* 807FC8B0  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807FC8B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807FC8B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807FC8BC  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807FC8C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807FC8C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807FC8C8  4B B4 9B E9 */	bl PSMTXCopy
/* 807FC8CC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807FC8D0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807FC8D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FC8D8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807FC8DC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807FC8E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807FC8E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807FC8E8  38 81 00 4C */	addi r4, r1, 0x4c
/* 807FC8EC  38 A1 00 58 */	addi r5, r1, 0x58
/* 807FC8F0  4B B4 A4 7D */	bl PSMTXMultVec
/* 807FC8F4  38 61 00 34 */	addi r3, r1, 0x34
/* 807FC8F8  38 81 00 58 */	addi r4, r1, 0x58
/* 807FC8FC  7F 65 DB 78 */	mr r5, r27
/* 807FC900  4B A6 A2 35 */	bl __mi__4cXyzCFRC3Vec
/* 807FC904  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807FC908  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807FC90C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807FC910  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807FC914  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 807FC918  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807FC91C  4B A6 AD 59 */	bl cM_atan2s__Fff
/* 807FC920  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 807FC924  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807FC928  EC 20 00 32 */	fmuls f1, f0, f0
/* 807FC92C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807FC930  EC 00 00 32 */	fmuls f0, f0, f0
/* 807FC934  EC 41 00 2A */	fadds f2, f1, f0
/* 807FC938  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FC93C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807FC940  40 81 00 0C */	ble lbl_807FC94C
/* 807FC944  FC 00 10 34 */	frsqrte f0, f2
/* 807FC948  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807FC94C:
/* 807FC94C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807FC950  4B A6 AD 25 */	bl cM_atan2s__Fff
/* 807FC954  7C 03 00 D0 */	neg r0, r3
/* 807FC958  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 807FC95C  38 80 00 00 */	li r4, 0
/* 807FC960  B0 81 00 30 */	sth r4, 0x30(r1)
/* 807FC964  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807FC968  7C 00 07 74 */	extsb r0, r0
/* 807FC96C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FC970  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FC974  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807FC978  57 A5 10 3A */	slwi r5, r29, 2
/* 807FC97C  90 81 00 08 */	stw r4, 8(r1)
/* 807FC980  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FC984  3A B7 00 20 */	addi r21, r23, 0x20
/* 807FC988  7E B5 2A 14 */	add r21, r21, r5
/* 807FC98C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807FC990  3A D7 00 28 */	addi r22, r23, 0x28
/* 807FC994  7E D6 2A 14 */	add r22, r22, r5
/* 807FC998  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807FC99C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807FC9A0  38 80 00 00 */	li r4, 0
/* 807FC9A4  38 A0 02 9B */	li r5, 0x29b
/* 807FC9A8  7F 66 DB 78 */	mr r6, r27
/* 807FC9AC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807FC9B0  39 01 00 2C */	addi r8, r1, 0x2c
/* 807FC9B4  7F 89 E3 78 */	mr r9, r28
/* 807FC9B8  39 40 00 FF */	li r10, 0xff
/* 807FC9BC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FC9C0  4B 85 00 D1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807FC9C4  7C 79 1B 79 */	or. r25, r3, r3
/* 807FC9C8  41 82 00 FC */	beq lbl_807FCAC4
/* 807FC9CC  38 61 00 40 */	addi r3, r1, 0x40
/* 807FC9D0  4B B4 A7 69 */	bl PSVECSquareMag
/* 807FC9D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FC9D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FC9DC  40 81 00 58 */	ble lbl_807FCA34
/* 807FC9E0  FC 00 08 34 */	frsqrte f0, f1
/* 807FC9E4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807FC9E8  FC 44 00 32 */	fmul f2, f4, f0
/* 807FC9EC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807FC9F0  FC 00 00 32 */	fmul f0, f0, f0
/* 807FC9F4  FC 01 00 32 */	fmul f0, f1, f0
/* 807FC9F8  FC 03 00 28 */	fsub f0, f3, f0
/* 807FC9FC  FC 02 00 32 */	fmul f0, f2, f0
/* 807FCA00  FC 44 00 32 */	fmul f2, f4, f0
/* 807FCA04  FC 00 00 32 */	fmul f0, f0, f0
/* 807FCA08  FC 01 00 32 */	fmul f0, f1, f0
/* 807FCA0C  FC 03 00 28 */	fsub f0, f3, f0
/* 807FCA10  FC 02 00 32 */	fmul f0, f2, f0
/* 807FCA14  FC 44 00 32 */	fmul f2, f4, f0
/* 807FCA18  FC 00 00 32 */	fmul f0, f0, f0
/* 807FCA1C  FC 01 00 32 */	fmul f0, f1, f0
/* 807FCA20  FC 03 00 28 */	fsub f0, f3, f0
/* 807FCA24  FC 02 00 32 */	fmul f0, f2, f0
/* 807FCA28  FC 21 00 32 */	fmul f1, f1, f0
/* 807FCA2C  FC 20 08 18 */	frsp f1, f1
/* 807FCA30  48 00 00 88 */	b lbl_807FCAB8
lbl_807FCA34:
/* 807FCA34  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807FCA38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FCA3C  40 80 00 10 */	bge lbl_807FCA4C
/* 807FCA40  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807FCA44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807FCA48  48 00 00 70 */	b lbl_807FCAB8
lbl_807FCA4C:
/* 807FCA4C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807FCA50  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807FCA54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807FCA58  3C 00 7F 80 */	lis r0, 0x7f80
/* 807FCA5C  7C 03 00 00 */	cmpw r3, r0
/* 807FCA60  41 82 00 14 */	beq lbl_807FCA74
/* 807FCA64  40 80 00 40 */	bge lbl_807FCAA4
/* 807FCA68  2C 03 00 00 */	cmpwi r3, 0
/* 807FCA6C  41 82 00 20 */	beq lbl_807FCA8C
/* 807FCA70  48 00 00 34 */	b lbl_807FCAA4
lbl_807FCA74:
/* 807FCA74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807FCA78  41 82 00 0C */	beq lbl_807FCA84
/* 807FCA7C  38 00 00 01 */	li r0, 1
/* 807FCA80  48 00 00 28 */	b lbl_807FCAA8
lbl_807FCA84:
/* 807FCA84  38 00 00 02 */	li r0, 2
/* 807FCA88  48 00 00 20 */	b lbl_807FCAA8
lbl_807FCA8C:
/* 807FCA8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807FCA90  41 82 00 0C */	beq lbl_807FCA9C
/* 807FCA94  38 00 00 05 */	li r0, 5
/* 807FCA98  48 00 00 10 */	b lbl_807FCAA8
lbl_807FCA9C:
/* 807FCA9C  38 00 00 03 */	li r0, 3
/* 807FCAA0  48 00 00 08 */	b lbl_807FCAA8
lbl_807FCAA4:
/* 807FCAA4  38 00 00 04 */	li r0, 4
lbl_807FCAA8:
/* 807FCAA8  2C 00 00 01 */	cmpwi r0, 1
/* 807FCAAC  40 82 00 0C */	bne lbl_807FCAB8
/* 807FCAB0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807FCAB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807FCAB8:
/* 807FCAB8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807FCABC  EC 00 00 72 */	fmuls f0, f0, f1
/* 807FCAC0  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_807FCAC4:
/* 807FCAC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807FCAC8  7C 04 07 74 */	extsb r4, r0
/* 807FCACC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807FCAD0  38 00 00 00 */	li r0, 0
/* 807FCAD4  90 01 00 08 */	stw r0, 8(r1)
/* 807FCAD8  90 81 00 0C */	stw r4, 0xc(r1)
/* 807FCADC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807FCAE0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807FCAE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 807FCAE8  38 80 00 00 */	li r4, 0
/* 807FCAEC  38 A0 02 9C */	li r5, 0x29c
/* 807FCAF0  7F 66 DB 78 */	mr r6, r27
/* 807FCAF4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807FCAF8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807FCAFC  7F 89 E3 78 */	mr r9, r28
/* 807FCB00  39 40 00 FF */	li r10, 0xff
/* 807FCB04  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FCB08  4B 84 FF 89 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807FCB0C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 807FCB10  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 807FCB14  90 01 00 28 */	stw r0, 0x28(r1)
/* 807FCB18  7F 43 D3 78 */	mr r3, r26
/* 807FCB1C  38 81 00 28 */	addi r4, r1, 0x28
/* 807FCB20  38 A0 00 00 */	li r5, 0
/* 807FCB24  38 C0 FF FF */	li r6, -1
/* 807FCB28  81 9A 00 00 */	lwz r12, 0(r26)
/* 807FCB2C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FCB30  7D 89 03 A6 */	mtctr r12
/* 807FCB34  4E 80 04 21 */	bctrl 
lbl_807FCB38:
/* 807FCB38  3A A0 00 00 */	li r21, 0
/* 807FCB3C  3A C0 00 00 */	li r22, 0
/* 807FCB40  3A 80 00 00 */	li r20, 0
/* 807FCB44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FCB48  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FCB4C  57 A0 10 3A */	slwi r0, r29, 2
/* 807FCB50  3B 17 00 28 */	addi r24, r23, 0x28
/* 807FCB54  7F 18 02 14 */	add r24, r24, r0
/* 807FCB58  3B B7 00 20 */	addi r29, r23, 0x20
/* 807FCB5C  7F BD 02 14 */	add r29, r29, r0
/* 807FCB60  3A 77 00 30 */	addi r19, r23, 0x30
lbl_807FCB64:
/* 807FCB64  3A F4 05 9C */	addi r23, r20, 0x59c
/* 807FCB68  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807FCB6C  7C 05 07 74 */	extsb r5, r0
/* 807FCB70  7C 9E B8 2E */	lwzx r4, r30, r23
/* 807FCB74  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807FCB78  38 00 00 FF */	li r0, 0xff
/* 807FCB7C  90 01 00 08 */	stw r0, 8(r1)
/* 807FCB80  38 00 00 00 */	li r0, 0
/* 807FCB84  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FCB88  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807FCB8C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 807FCB90  93 01 00 18 */	stw r24, 0x18(r1)
/* 807FCB94  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807FCB98  38 A0 00 00 */	li r5, 0
/* 807FCB9C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 807FCBA0  7F 67 DB 78 */	mr r7, r27
/* 807FCBA4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807FCBA8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807FCBAC  7F 8A E3 78 */	mr r10, r28
/* 807FCBB0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FCBB4  4B 85 09 19 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807FCBB8  7C 7E B9 2E */	stwx r3, r30, r23
/* 807FCBBC  3A B5 00 01 */	addi r21, r21, 1
/* 807FCBC0  2C 15 00 03 */	cmpwi r21, 3
/* 807FCBC4  3A D6 00 02 */	addi r22, r22, 2
/* 807FCBC8  3A 94 00 04 */	addi r20, r20, 4
/* 807FCBCC  41 80 FF 98 */	blt lbl_807FCB64
/* 807FCBD0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 807FCBD4  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 807FCBD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807FCBDC  7F 43 D3 78 */	mr r3, r26
/* 807FCBE0  38 81 00 24 */	addi r4, r1, 0x24
/* 807FCBE4  38 A0 00 00 */	li r5, 0
/* 807FCBE8  38 C0 FF FF */	li r6, -1
/* 807FCBEC  81 9A 00 00 */	lwz r12, 0(r26)
/* 807FCBF0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807FCBF4  7D 89 03 A6 */	mtctr r12
/* 807FCBF8  4E 80 04 21 */	bctrl 
/* 807FCBFC  38 60 00 01 */	li r3, 1
/* 807FCC00  48 00 00 10 */	b lbl_807FCC10
lbl_807FCC04:
/* 807FCC04  38 00 00 00 */	li r0, 0
/* 807FCC08  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807FCC0C  38 60 00 00 */	li r3, 0
lbl_807FCC10:
/* 807FCC10  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807FCC14  4B B6 55 ED */	bl _restgpr_19
/* 807FCC18  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807FCC1C  7C 08 03 A6 */	mtlr r0
/* 807FCC20  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807FCC24  4E 80 00 20 */	blr 
