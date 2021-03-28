lbl_8073CA44:
/* 8073CA44  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8073CA48  7C 08 02 A6 */	mflr r0
/* 8073CA4C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8073CA50  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8073CA54  4B C2 57 60 */	b _savegpr_19
/* 8073CA58  7C 7E 1B 78 */	mr r30, r3
/* 8073CA5C  7C 9A 23 78 */	mr r26, r4
/* 8073CA60  7C BB 2B 78 */	mr r27, r5
/* 8073CA64  7C DC 33 78 */	mr r28, r6
/* 8073CA68  3C 60 80 74 */	lis r3, cNullVec__6Z2Calc@ha
/* 8073CA6C  3A E3 CF 74 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 8073CA70  3C 60 80 74 */	lis r3, lit_3910@ha
/* 8073CA74  3B E3 CE A8 */	addi r31, r3, lit_3910@l
/* 8073CA78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073CA7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8073CA80  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8073CA84  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 8073CA88  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 8073CA8C  28 00 00 00 */	cmplwi r0, 0
/* 8073CA90  41 82 03 A4 */	beq lbl_8073CE34
/* 8073CA94  7F C4 F3 78 */	mr r4, r30
/* 8073CA98  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8073CA9C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8073CAA0  7D 89 03 A6 */	mtctr r12
/* 8073CAA4  4E 80 04 21 */	bctrl 
/* 8073CAA8  2C 03 00 00 */	cmpwi r3, 0
/* 8073CAAC  41 82 03 88 */	beq lbl_8073CE34
/* 8073CAB0  4B A6 FA CC */	b dKy_darkworld_check__Fv
/* 8073CAB4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8073CAB8  30 03 FF FF */	addic r0, r3, -1
/* 8073CABC  7F A0 19 10 */	subfe r29, r0, r3
/* 8073CAC0  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 8073CAC4  28 00 00 00 */	cmplwi r0, 0
/* 8073CAC8  40 82 02 A0 */	bne lbl_8073CD68
/* 8073CACC  38 00 00 01 */	li r0, 1
/* 8073CAD0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8073CAD4  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 8073CAD8  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 8073CADC  80 63 00 00 */	lwz r3, 0(r3)
/* 8073CAE0  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8073CAE4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8073CAE8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8073CAEC  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8073CAF0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8073CAF4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8073CAF8  4B C0 99 B8 */	b PSMTXCopy
/* 8073CAFC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073CB00  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8073CB04  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8073CB08  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8073CB0C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8073CB10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8073CB14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8073CB18  38 81 00 4C */	addi r4, r1, 0x4c
/* 8073CB1C  38 A1 00 58 */	addi r5, r1, 0x58
/* 8073CB20  4B C0 A2 4C */	b PSMTXMultVec
/* 8073CB24  38 61 00 34 */	addi r3, r1, 0x34
/* 8073CB28  38 81 00 58 */	addi r4, r1, 0x58
/* 8073CB2C  7F 65 DB 78 */	mr r5, r27
/* 8073CB30  4B B2 A0 04 */	b __mi__4cXyzCFRC3Vec
/* 8073CB34  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8073CB38  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8073CB3C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8073CB40  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8073CB44  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8073CB48  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8073CB4C  4B B2 AB 28 */	b cM_atan2s__Fff
/* 8073CB50  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 8073CB54  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8073CB58  EC 20 00 32 */	fmuls f1, f0, f0
/* 8073CB5C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8073CB60  EC 00 00 32 */	fmuls f0, f0, f0
/* 8073CB64  EC 41 00 2A */	fadds f2, f1, f0
/* 8073CB68  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8073CB6C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8073CB70  40 81 00 0C */	ble lbl_8073CB7C
/* 8073CB74  FC 00 10 34 */	frsqrte f0, f2
/* 8073CB78  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8073CB7C:
/* 8073CB7C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8073CB80  4B B2 AA F4 */	b cM_atan2s__Fff
/* 8073CB84  7C 03 00 D0 */	neg r0, r3
/* 8073CB88  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8073CB8C  38 80 00 00 */	li r4, 0
/* 8073CB90  B0 81 00 30 */	sth r4, 0x30(r1)
/* 8073CB94  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8073CB98  7C 00 07 74 */	extsb r0, r0
/* 8073CB9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073CBA0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 8073CBA4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8073CBA8  57 A5 10 3A */	slwi r5, r29, 2
/* 8073CBAC  90 81 00 08 */	stw r4, 8(r1)
/* 8073CBB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8073CBB4  3A B7 00 20 */	addi r21, r23, 0x20
/* 8073CBB8  7E B5 2A 14 */	add r21, r21, r5
/* 8073CBBC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8073CBC0  3A D7 00 28 */	addi r22, r23, 0x28
/* 8073CBC4  7E D6 2A 14 */	add r22, r22, r5
/* 8073CBC8  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8073CBCC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8073CBD0  38 80 00 00 */	li r4, 0
/* 8073CBD4  38 A0 02 9B */	li r5, 0x29b
/* 8073CBD8  7F 66 DB 78 */	mr r6, r27
/* 8073CBDC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8073CBE0  39 01 00 2C */	addi r8, r1, 0x2c
/* 8073CBE4  7F 89 E3 78 */	mr r9, r28
/* 8073CBE8  39 40 00 FF */	li r10, 0xff
/* 8073CBEC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8073CBF0  4B 90 FE A0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8073CBF4  7C 79 1B 79 */	or. r25, r3, r3
/* 8073CBF8  41 82 00 FC */	beq lbl_8073CCF4
/* 8073CBFC  38 61 00 40 */	addi r3, r1, 0x40
/* 8073CC00  4B C0 A5 38 */	b PSVECSquareMag
/* 8073CC04  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8073CC08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073CC0C  40 81 00 58 */	ble lbl_8073CC64
/* 8073CC10  FC 00 08 34 */	frsqrte f0, f1
/* 8073CC14  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8073CC18  FC 44 00 32 */	fmul f2, f4, f0
/* 8073CC1C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8073CC20  FC 00 00 32 */	fmul f0, f0, f0
/* 8073CC24  FC 01 00 32 */	fmul f0, f1, f0
/* 8073CC28  FC 03 00 28 */	fsub f0, f3, f0
/* 8073CC2C  FC 02 00 32 */	fmul f0, f2, f0
/* 8073CC30  FC 44 00 32 */	fmul f2, f4, f0
/* 8073CC34  FC 00 00 32 */	fmul f0, f0, f0
/* 8073CC38  FC 01 00 32 */	fmul f0, f1, f0
/* 8073CC3C  FC 03 00 28 */	fsub f0, f3, f0
/* 8073CC40  FC 02 00 32 */	fmul f0, f2, f0
/* 8073CC44  FC 44 00 32 */	fmul f2, f4, f0
/* 8073CC48  FC 00 00 32 */	fmul f0, f0, f0
/* 8073CC4C  FC 01 00 32 */	fmul f0, f1, f0
/* 8073CC50  FC 03 00 28 */	fsub f0, f3, f0
/* 8073CC54  FC 02 00 32 */	fmul f0, f2, f0
/* 8073CC58  FC 21 00 32 */	fmul f1, f1, f0
/* 8073CC5C  FC 20 08 18 */	frsp f1, f1
/* 8073CC60  48 00 00 88 */	b lbl_8073CCE8
lbl_8073CC64:
/* 8073CC64  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8073CC68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073CC6C  40 80 00 10 */	bge lbl_8073CC7C
/* 8073CC70  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8073CC74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8073CC78  48 00 00 70 */	b lbl_8073CCE8
lbl_8073CC7C:
/* 8073CC7C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8073CC80  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8073CC84  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8073CC88  3C 00 7F 80 */	lis r0, 0x7f80
/* 8073CC8C  7C 03 00 00 */	cmpw r3, r0
/* 8073CC90  41 82 00 14 */	beq lbl_8073CCA4
/* 8073CC94  40 80 00 40 */	bge lbl_8073CCD4
/* 8073CC98  2C 03 00 00 */	cmpwi r3, 0
/* 8073CC9C  41 82 00 20 */	beq lbl_8073CCBC
/* 8073CCA0  48 00 00 34 */	b lbl_8073CCD4
lbl_8073CCA4:
/* 8073CCA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073CCA8  41 82 00 0C */	beq lbl_8073CCB4
/* 8073CCAC  38 00 00 01 */	li r0, 1
/* 8073CCB0  48 00 00 28 */	b lbl_8073CCD8
lbl_8073CCB4:
/* 8073CCB4  38 00 00 02 */	li r0, 2
/* 8073CCB8  48 00 00 20 */	b lbl_8073CCD8
lbl_8073CCBC:
/* 8073CCBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073CCC0  41 82 00 0C */	beq lbl_8073CCCC
/* 8073CCC4  38 00 00 05 */	li r0, 5
/* 8073CCC8  48 00 00 10 */	b lbl_8073CCD8
lbl_8073CCCC:
/* 8073CCCC  38 00 00 03 */	li r0, 3
/* 8073CCD0  48 00 00 08 */	b lbl_8073CCD8
lbl_8073CCD4:
/* 8073CCD4  38 00 00 04 */	li r0, 4
lbl_8073CCD8:
/* 8073CCD8  2C 00 00 01 */	cmpwi r0, 1
/* 8073CCDC  40 82 00 0C */	bne lbl_8073CCE8
/* 8073CCE0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8073CCE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8073CCE8:
/* 8073CCE8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8073CCEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8073CCF0  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_8073CCF4:
/* 8073CCF4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8073CCF8  7C 04 07 74 */	extsb r4, r0
/* 8073CCFC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8073CD00  38 00 00 00 */	li r0, 0
/* 8073CD04  90 01 00 08 */	stw r0, 8(r1)
/* 8073CD08  90 81 00 0C */	stw r4, 0xc(r1)
/* 8073CD0C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8073CD10  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8073CD14  90 01 00 18 */	stw r0, 0x18(r1)
/* 8073CD18  38 80 00 00 */	li r4, 0
/* 8073CD1C  38 A0 02 9C */	li r5, 0x29c
/* 8073CD20  7F 66 DB 78 */	mr r6, r27
/* 8073CD24  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8073CD28  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8073CD2C  7F 89 E3 78 */	mr r9, r28
/* 8073CD30  39 40 00 FF */	li r10, 0xff
/* 8073CD34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8073CD38  4B 90 FD 58 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8073CD3C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 8073CD40  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 8073CD44  90 01 00 28 */	stw r0, 0x28(r1)
/* 8073CD48  7F 43 D3 78 */	mr r3, r26
/* 8073CD4C  38 81 00 28 */	addi r4, r1, 0x28
/* 8073CD50  38 A0 00 00 */	li r5, 0
/* 8073CD54  38 C0 FF FF */	li r6, -1
/* 8073CD58  81 9A 00 00 */	lwz r12, 0(r26)
/* 8073CD5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8073CD60  7D 89 03 A6 */	mtctr r12
/* 8073CD64  4E 80 04 21 */	bctrl 
lbl_8073CD68:
/* 8073CD68  3A A0 00 00 */	li r21, 0
/* 8073CD6C  3A C0 00 00 */	li r22, 0
/* 8073CD70  3A 80 00 00 */	li r20, 0
/* 8073CD74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073CD78  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 8073CD7C  57 A0 10 3A */	slwi r0, r29, 2
/* 8073CD80  3B 17 00 28 */	addi r24, r23, 0x28
/* 8073CD84  7F 18 02 14 */	add r24, r24, r0
/* 8073CD88  3B B7 00 20 */	addi r29, r23, 0x20
/* 8073CD8C  7F BD 02 14 */	add r29, r29, r0
/* 8073CD90  3A 77 00 30 */	addi r19, r23, 0x30
lbl_8073CD94:
/* 8073CD94  3A F4 05 9C */	addi r23, r20, 0x59c
/* 8073CD98  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8073CD9C  7C 05 07 74 */	extsb r5, r0
/* 8073CDA0  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8073CDA4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8073CDA8  38 00 00 FF */	li r0, 0xff
/* 8073CDAC  90 01 00 08 */	stw r0, 8(r1)
/* 8073CDB0  38 00 00 00 */	li r0, 0
/* 8073CDB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8073CDB8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8073CDBC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8073CDC0  93 01 00 18 */	stw r24, 0x18(r1)
/* 8073CDC4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8073CDC8  38 A0 00 00 */	li r5, 0
/* 8073CDCC  7C D3 B2 2E */	lhzx r6, r19, r22
/* 8073CDD0  7F 67 DB 78 */	mr r7, r27
/* 8073CDD4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8073CDD8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8073CDDC  7F 8A E3 78 */	mr r10, r28
/* 8073CDE0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8073CDE4  4B 91 06 E8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8073CDE8  7C 7E B9 2E */	stwx r3, r30, r23
/* 8073CDEC  3A B5 00 01 */	addi r21, r21, 1
/* 8073CDF0  2C 15 00 03 */	cmpwi r21, 3
/* 8073CDF4  3A D6 00 02 */	addi r22, r22, 2
/* 8073CDF8  3A 94 00 04 */	addi r20, r20, 4
/* 8073CDFC  41 80 FF 98 */	blt lbl_8073CD94
/* 8073CE00  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 8073CE04  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 8073CE08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073CE0C  7F 43 D3 78 */	mr r3, r26
/* 8073CE10  38 81 00 24 */	addi r4, r1, 0x24
/* 8073CE14  38 A0 00 00 */	li r5, 0
/* 8073CE18  38 C0 FF FF */	li r6, -1
/* 8073CE1C  81 9A 00 00 */	lwz r12, 0(r26)
/* 8073CE20  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8073CE24  7D 89 03 A6 */	mtctr r12
/* 8073CE28  4E 80 04 21 */	bctrl 
/* 8073CE2C  38 60 00 01 */	li r3, 1
/* 8073CE30  48 00 00 10 */	b lbl_8073CE40
lbl_8073CE34:
/* 8073CE34  38 00 00 00 */	li r0, 0
/* 8073CE38  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8073CE3C  38 60 00 00 */	li r3, 0
lbl_8073CE40:
/* 8073CE40  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8073CE44  4B C2 53 BC */	b _restgpr_19
/* 8073CE48  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8073CE4C  7C 08 03 A6 */	mtlr r0
/* 8073CE50  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8073CE54  4E 80 00 20 */	blr 
