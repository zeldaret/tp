lbl_8004CA90:
/* 8004CA90  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8004CA94  7C 08 02 A6 */	mflr r0
/* 8004CA98  90 01 00 94 */	stw r0, 0x94(r1)
/* 8004CA9C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8004CAA0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8004CAA4  39 61 00 80 */	addi r11, r1, 0x80
/* 8004CAA8  48 31 57 11 */	bl _savegpr_20
/* 8004CAAC  98 81 00 08 */	stb r4, 8(r1)
/* 8004CAB0  7C B6 2B 78 */	mr r22, r5
/* 8004CAB4  7C D7 33 78 */	mr r23, r6
/* 8004CAB8  7C F8 3B 78 */	mr r24, r7
/* 8004CABC  7D 19 43 78 */	mr r25, r8
/* 8004CAC0  7D 3A 4B 78 */	mr r26, r9
/* 8004CAC4  7D 5B 53 78 */	mr r27, r10
/* 8004CAC8  83 81 00 98 */	lwz r28, 0x98(r1)
/* 8004CACC  8B A1 00 9F */	lbz r29, 0x9f(r1)
/* 8004CAD0  83 C1 00 A0 */	lwz r30, 0xa0(r1)
/* 8004CAD4  83 E1 00 A4 */	lwz r31, 0xa4(r1)
/* 8004CAD8  82 A1 00 A8 */	lwz r21, 0xa8(r1)
/* 8004CADC  FF E0 08 90 */	fmr f31, f1
/* 8004CAE0  7E C3 B3 78 */	mr r3, r22
/* 8004CAE4  4B FF F0 8D */	bl getRM_ID__13dPa_control_cFUs
/* 8004CAE8  7C 74 1B 78 */	mr r20, r3
/* 8004CAEC  80 6D 89 20 */	lwz r3, mEmitterMng__13dPa_control_c(r13)
/* 8004CAF0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8004CAF4  56 80 15 BA */	rlwinm r0, r20, 2, 0x16, 0x1d
/* 8004CAF8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8004CAFC  28 03 00 00 */	cmplwi r3, 0
/* 8004CB00  40 82 00 0C */	bne lbl_8004CB0C
/* 8004CB04  38 60 00 00 */	li r3, 0
/* 8004CB08  48 00 04 68 */	b lbl_8004CF70
lbl_8004CB0C:
/* 8004CB0C  7E C4 B3 78 */	mr r4, r22
/* 8004CB10  48 22 74 BD */	bl getResUserWork__18JPAResourceManagerCFUs
/* 8004CB14  90 61 00 34 */	stw r3, 0x34(r1)
/* 8004CB18  28 18 00 00 */	cmplwi r24, 0
/* 8004CB1C  41 82 00 18 */	beq lbl_8004CB34
/* 8004CB20  88 18 03 83 */	lbz r0, 0x383(r24)
/* 8004CB24  28 00 00 7C */	cmplwi r0, 0x7c
/* 8004CB28  41 82 00 0C */	beq lbl_8004CB34
/* 8004CB2C  38 60 00 00 */	li r3, 0
/* 8004CB30  48 00 04 40 */	b lbl_8004CF70
lbl_8004CB34:
/* 8004CB34  38 61 00 34 */	addi r3, r1, 0x34
/* 8004CB38  38 81 00 08 */	addi r4, r1, 8
/* 8004CB3C  4B FF CC AD */	bl dPa_group_id_change__FPUlPUc
/* 8004CB40  C0 57 00 08 */	lfs f2, 8(r23)
/* 8004CB44  C0 37 00 04 */	lfs f1, 4(r23)
/* 8004CB48  C0 17 00 00 */	lfs f0, 0(r23)
/* 8004CB4C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8004CB50  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8004CB54  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8004CB58  80 6D 89 20 */	lwz r3, mEmitterMng__13dPa_control_c(r13)
/* 8004CB5C  38 81 00 38 */	addi r4, r1, 0x38
/* 8004CB60  7E C5 B3 78 */	mr r5, r22
/* 8004CB64  88 C1 00 08 */	lbz r6, 8(r1)
/* 8004CB68  7E 87 A3 78 */	mr r7, r20
/* 8004CB6C  39 00 00 00 */	li r8, 0
/* 8004CB70  39 20 00 00 */	li r9, 0
/* 8004CB74  48 23 13 49 */	bl func_8027DEBC
/* 8004CB78  7C 76 1B 79 */	or. r22, r3, r3
/* 8004CB7C  40 82 00 0C */	bne lbl_8004CB88
/* 8004CB80  38 60 00 00 */	li r3, 0
/* 8004CB84  48 00 03 EC */	b lbl_8004CF70
lbl_8004CB88:
/* 8004CB88  28 19 00 00 */	cmplwi r25, 0
/* 8004CB8C  41 82 00 18 */	beq lbl_8004CBA4
/* 8004CB90  A8 79 00 00 */	lha r3, 0(r25)
/* 8004CB94  A8 99 00 02 */	lha r4, 2(r25)
/* 8004CB98  A8 B9 00 04 */	lha r5, 4(r25)
/* 8004CB9C  38 D6 00 68 */	addi r6, r22, 0x68
/* 8004CBA0  48 23 3B 95 */	bl JPAGetXYZRotateMtx__FsssPA4_f
lbl_8004CBA4:
/* 8004CBA4  28 1A 00 00 */	cmplwi r26, 0
/* 8004CBA8  41 82 00 24 */	beq lbl_8004CBCC
/* 8004CBAC  C0 1A 00 00 */	lfs f0, 0(r26)
/* 8004CBB0  C0 3A 00 04 */	lfs f1, 4(r26)
/* 8004CBB4  C0 5A 00 08 */	lfs f2, 8(r26)
/* 8004CBB8  D0 16 00 98 */	stfs f0, 0x98(r22)
/* 8004CBBC  D0 36 00 9C */	stfs f1, 0x9c(r22)
/* 8004CBC0  D0 56 00 A0 */	stfs f2, 0xa0(r22)
/* 8004CBC4  D0 16 00 B0 */	stfs f0, 0xb0(r22)
/* 8004CBC8  D0 36 00 B4 */	stfs f1, 0xb4(r22)
lbl_8004CBCC:
/* 8004CBCC  9B 76 00 BB */	stb r27, 0xbb(r22)
/* 8004CBD0  28 1C 00 00 */	cmplwi r28, 0
/* 8004CBD4  41 82 00 2C */	beq lbl_8004CC00
/* 8004CBD8  93 96 00 EC */	stw r28, 0xec(r22)
/* 8004CBDC  7F 83 E3 78 */	mr r3, r28
/* 8004CBE0  7E C4 B3 78 */	mr r4, r22
/* 8004CBE4  7E E5 BB 78 */	mr r5, r23
/* 8004CBE8  7F 26 CB 78 */	mr r6, r25
/* 8004CBEC  7F A7 EB 78 */	mr r7, r29
/* 8004CBF0  81 9C 00 00 */	lwz r12, 0(r28)
/* 8004CBF4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8004CBF8  7D 89 03 A6 */	mtctr r12
/* 8004CBFC  4E 80 04 21 */	bctrl 
lbl_8004CC00:
/* 8004CC00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8004CC04  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8004CC08  41 82 00 0C */	beq lbl_8004CC14
/* 8004CC0C  38 0D 89 28 */	la r0, mFsenthPcallBack__13dPa_control_c(r13) /* 80450EA8-_SDA_BASE_ */
/* 8004CC10  90 16 00 F0 */	stw r0, 0xf0(r22)
lbl_8004CC14:
/* 8004CC14  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8004CC18  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 8004CC1C  41 82 00 68 */	beq lbl_8004CC84
/* 8004CC20  38 0D 89 3C */	la r0, m_d_Light8EcallBack__13dPa_control_c(r13) /* 80450EBC-_SDA_BASE_ */
/* 8004CC24  90 16 00 EC */	stw r0, 0xec(r22)
/* 8004CC28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8004CC2C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8004CC30  41 82 00 2C */	beq lbl_8004CC5C
/* 8004CC34  38 6D 89 3C */	la r3, m_d_Light8EcallBack__13dPa_control_c(r13) /* 80450EBC-_SDA_BASE_ */
/* 8004CC38  7E C4 B3 78 */	mr r4, r22
/* 8004CC3C  7E E5 BB 78 */	mr r5, r23
/* 8004CC40  7F 26 CB 78 */	mr r6, r25
/* 8004CC44  38 E0 00 00 */	li r7, 0
/* 8004CC48  81 8D 89 3C */	lwz r12, m_d_Light8EcallBack__13dPa_control_c(r13)
/* 8004CC4C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8004CC50  7D 89 03 A6 */	mtctr r12
/* 8004CC54  4E 80 04 21 */	bctrl 
/* 8004CC58  48 00 02 FC */	b lbl_8004CF54
lbl_8004CC5C:
/* 8004CC5C  38 6D 89 3C */	la r3, m_d_Light8EcallBack__13dPa_control_c(r13) /* 80450EBC-_SDA_BASE_ */
/* 8004CC60  7E C4 B3 78 */	mr r4, r22
/* 8004CC64  7E E5 BB 78 */	mr r5, r23
/* 8004CC68  7F 26 CB 78 */	mr r6, r25
/* 8004CC6C  38 E0 00 01 */	li r7, 1
/* 8004CC70  81 8D 89 3C */	lwz r12, m_d_Light8EcallBack__13dPa_control_c(r13)
/* 8004CC74  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8004CC78  7D 89 03 A6 */	mtctr r12
/* 8004CC7C  4E 80 04 21 */	bctrl 
/* 8004CC80  48 00 02 D4 */	b lbl_8004CF54
lbl_8004CC84:
/* 8004CC84  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 8004CC88  41 82 00 68 */	beq lbl_8004CCF0
/* 8004CC8C  38 0D 89 34 */	la r0, m_b_Light8EcallBack__13dPa_control_c(r13) /* 80450EB4-_SDA_BASE_ */
/* 8004CC90  90 16 00 EC */	stw r0, 0xec(r22)
/* 8004CC94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8004CC98  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8004CC9C  41 82 00 2C */	beq lbl_8004CCC8
/* 8004CCA0  38 6D 89 34 */	la r3, m_b_Light8EcallBack__13dPa_control_c(r13) /* 80450EB4-_SDA_BASE_ */
/* 8004CCA4  7E C4 B3 78 */	mr r4, r22
/* 8004CCA8  7E E5 BB 78 */	mr r5, r23
/* 8004CCAC  7F 26 CB 78 */	mr r6, r25
/* 8004CCB0  38 E0 00 00 */	li r7, 0
/* 8004CCB4  81 8D 89 34 */	lwz r12, m_b_Light8EcallBack__13dPa_control_c(r13)
/* 8004CCB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8004CCBC  7D 89 03 A6 */	mtctr r12
/* 8004CCC0  4E 80 04 21 */	bctrl 
/* 8004CCC4  48 00 02 90 */	b lbl_8004CF54
lbl_8004CCC8:
/* 8004CCC8  38 6D 89 34 */	la r3, m_b_Light8EcallBack__13dPa_control_c(r13) /* 80450EB4-_SDA_BASE_ */
/* 8004CCCC  7E C4 B3 78 */	mr r4, r22
/* 8004CCD0  7E E5 BB 78 */	mr r5, r23
/* 8004CCD4  7F 26 CB 78 */	mr r6, r25
/* 8004CCD8  38 E0 00 01 */	li r7, 1
/* 8004CCDC  81 8D 89 34 */	lwz r12, m_b_Light8EcallBack__13dPa_control_c(r13)
/* 8004CCE0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8004CCE4  7D 89 03 A6 */	mtctr r12
/* 8004CCE8  4E 80 04 21 */	bctrl 
/* 8004CCEC  48 00 02 68 */	b lbl_8004CF54
lbl_8004CCF0:
/* 8004CCF0  74 60 00 EF */	andis. r0, r3, 0xef
/* 8004CCF4  54 00 84 3E */	srwi r0, r0, 0x10
/* 8004CCF8  28 00 00 64 */	cmplwi r0, 0x64
/* 8004CCFC  40 80 00 24 */	bge lbl_8004CD20
/* 8004CD00  C8 22 85 68 */	lfd f1, lit_4093(r2)
/* 8004CD04  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8004CD08  3C 00 43 30 */	lis r0, 0x4330
/* 8004CD0C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8004CD10  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8004CD14  EC 20 08 28 */	fsubs f1, f0, f1
/* 8004CD18  C0 02 85 84 */	lfs f0, lit_4518(r2)
/* 8004CD1C  EF E1 00 24 */	fdivs f31, f1, f0
lbl_8004CD20:
/* 8004CD20  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8004CD24  41 82 00 B8 */	beq lbl_8004CDDC
/* 8004CD28  80 02 85 B8 */	lwz r0, lit_5189(r2)
/* 8004CD2C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8004CD30  80 02 85 BC */	lwz r0, lit_5190(r2)
/* 8004CD34  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004CD38  28 1F 00 00 */	cmplwi r31, 0
/* 8004CD3C  41 82 00 24 */	beq lbl_8004CD60
/* 8004CD40  88 1F 00 00 */	lbz r0, 0(r31)
/* 8004CD44  98 01 00 28 */	stb r0, 0x28(r1)
/* 8004CD48  88 1F 00 01 */	lbz r0, 1(r31)
/* 8004CD4C  98 01 00 29 */	stb r0, 0x29(r1)
/* 8004CD50  88 1F 00 02 */	lbz r0, 2(r31)
/* 8004CD54  98 01 00 2A */	stb r0, 0x2a(r1)
/* 8004CD58  88 1F 00 03 */	lbz r0, 3(r31)
/* 8004CD5C  98 01 00 2B */	stb r0, 0x2b(r1)
lbl_8004CD60:
/* 8004CD60  28 1E 00 00 */	cmplwi r30, 0
/* 8004CD64  41 82 00 24 */	beq lbl_8004CD88
/* 8004CD68  88 1E 00 00 */	lbz r0, 0(r30)
/* 8004CD6C  98 01 00 24 */	stb r0, 0x24(r1)
/* 8004CD70  88 1E 00 01 */	lbz r0, 1(r30)
/* 8004CD74  98 01 00 25 */	stb r0, 0x25(r1)
/* 8004CD78  88 1E 00 02 */	lbz r0, 2(r30)
/* 8004CD7C  98 01 00 26 */	stb r0, 0x26(r1)
/* 8004CD80  88 1E 00 03 */	lbz r0, 3(r30)
/* 8004CD84  98 01 00 27 */	stb r0, 0x27(r1)
lbl_8004CD88:
/* 8004CD88  7E E3 BB 78 */	mr r3, r23
/* 8004CD8C  7F 04 C3 78 */	mr r4, r24
/* 8004CD90  38 A1 00 30 */	addi r5, r1, 0x30
/* 8004CD94  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8004CD98  38 E1 00 28 */	addi r7, r1, 0x28
/* 8004CD9C  39 01 00 24 */	addi r8, r1, 0x24
/* 8004CDA0  FC 20 F8 90 */	fmr f1, f31
/* 8004CDA4  48 15 CE 41 */	bl dKy_ParticleColor_get_actor__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf
/* 8004CDA8  88 81 00 32 */	lbz r4, 0x32(r1)
/* 8004CDAC  88 61 00 31 */	lbz r3, 0x31(r1)
/* 8004CDB0  88 01 00 30 */	lbz r0, 0x30(r1)
/* 8004CDB4  98 16 00 BC */	stb r0, 0xbc(r22)
/* 8004CDB8  98 76 00 BD */	stb r3, 0xbd(r22)
/* 8004CDBC  98 96 00 BE */	stb r4, 0xbe(r22)
/* 8004CDC0  88 81 00 2E */	lbz r4, 0x2e(r1)
/* 8004CDC4  88 61 00 2D */	lbz r3, 0x2d(r1)
/* 8004CDC8  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 8004CDCC  98 16 00 B8 */	stb r0, 0xb8(r22)
/* 8004CDD0  98 76 00 B9 */	stb r3, 0xb9(r22)
/* 8004CDD4  98 96 00 BA */	stb r4, 0xba(r22)
/* 8004CDD8  48 00 01 7C */	b lbl_8004CF54
lbl_8004CDDC:
/* 8004CDDC  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8004CDE0  41 82 01 34 */	beq lbl_8004CF14
/* 8004CDE4  80 02 85 C0 */	lwz r0, lit_5198(r2)
/* 8004CDE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8004CDEC  80 02 85 C4 */	lwz r0, lit_5199(r2)
/* 8004CDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004CDF4  28 1F 00 00 */	cmplwi r31, 0
/* 8004CDF8  41 82 00 24 */	beq lbl_8004CE1C
/* 8004CDFC  88 1F 00 00 */	lbz r0, 0(r31)
/* 8004CE00  98 01 00 18 */	stb r0, 0x18(r1)
/* 8004CE04  88 1F 00 01 */	lbz r0, 1(r31)
/* 8004CE08  98 01 00 19 */	stb r0, 0x19(r1)
/* 8004CE0C  88 1F 00 02 */	lbz r0, 2(r31)
/* 8004CE10  98 01 00 1A */	stb r0, 0x1a(r1)
/* 8004CE14  88 1F 00 03 */	lbz r0, 3(r31)
/* 8004CE18  98 01 00 1B */	stb r0, 0x1b(r1)
lbl_8004CE1C:
/* 8004CE1C  28 1E 00 00 */	cmplwi r30, 0
/* 8004CE20  41 82 00 24 */	beq lbl_8004CE44
/* 8004CE24  88 1E 00 00 */	lbz r0, 0(r30)
/* 8004CE28  98 01 00 14 */	stb r0, 0x14(r1)
/* 8004CE2C  88 1E 00 01 */	lbz r0, 1(r30)
/* 8004CE30  98 01 00 15 */	stb r0, 0x15(r1)
/* 8004CE34  88 1E 00 02 */	lbz r0, 2(r30)
/* 8004CE38  98 01 00 16 */	stb r0, 0x16(r1)
/* 8004CE3C  88 1E 00 03 */	lbz r0, 3(r30)
/* 8004CE40  98 01 00 17 */	stb r0, 0x17(r1)
lbl_8004CE44:
/* 8004CE44  7E E3 BB 78 */	mr r3, r23
/* 8004CE48  7F 04 C3 78 */	mr r4, r24
/* 8004CE4C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8004CE50  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8004CE54  38 E1 00 18 */	addi r7, r1, 0x18
/* 8004CE58  39 01 00 14 */	addi r8, r1, 0x14
/* 8004CE5C  FC 20 F8 90 */	fmr f1, f31
/* 8004CE60  48 15 CE 5D */	bl dKy_ParticleColor_get_bg__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf
/* 8004CE64  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8004CE68  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8004CE6C  C0 23 12 5C */	lfs f1, 0x125c(r3)
/* 8004CE70  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004CE74  EC 00 08 28 */	fsubs f0, f0, f1
/* 8004CE78  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8004CE7C  EF E1 00 2A */	fadds f31, f1, f0
/* 8004CE80  38 61 00 20 */	addi r3, r1, 0x20
/* 8004CE84  FC 20 F8 90 */	fmr f1, f31
/* 8004CE88  48 15 15 A9 */	bl dKy_light_influence_col__FP8_GXColorf
/* 8004CE8C  90 61 00 10 */	stw r3, 0x10(r1)
/* 8004CE90  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8004CE94  98 01 00 20 */	stb r0, 0x20(r1)
/* 8004CE98  88 01 00 11 */	lbz r0, 0x11(r1)
/* 8004CE9C  98 01 00 21 */	stb r0, 0x21(r1)
/* 8004CEA0  88 01 00 12 */	lbz r0, 0x12(r1)
/* 8004CEA4  98 01 00 22 */	stb r0, 0x22(r1)
/* 8004CEA8  88 01 00 13 */	lbz r0, 0x13(r1)
/* 8004CEAC  98 01 00 23 */	stb r0, 0x23(r1)
/* 8004CEB0  38 61 00 1C */	addi r3, r1, 0x1c
/* 8004CEB4  FC 20 F8 90 */	fmr f1, f31
/* 8004CEB8  48 15 15 79 */	bl dKy_light_influence_col__FP8_GXColorf
/* 8004CEBC  90 61 00 0C */	stw r3, 0xc(r1)
/* 8004CEC0  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8004CEC4  98 01 00 1C */	stb r0, 0x1c(r1)
/* 8004CEC8  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8004CECC  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8004CED0  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8004CED4  98 01 00 1E */	stb r0, 0x1e(r1)
/* 8004CED8  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8004CEDC  98 01 00 1F */	stb r0, 0x1f(r1)
/* 8004CEE0  88 81 00 22 */	lbz r4, 0x22(r1)
/* 8004CEE4  88 61 00 21 */	lbz r3, 0x21(r1)
/* 8004CEE8  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8004CEEC  98 16 00 BC */	stb r0, 0xbc(r22)
/* 8004CEF0  98 76 00 BD */	stb r3, 0xbd(r22)
/* 8004CEF4  98 96 00 BE */	stb r4, 0xbe(r22)
/* 8004CEF8  88 81 00 1E */	lbz r4, 0x1e(r1)
/* 8004CEFC  88 61 00 1D */	lbz r3, 0x1d(r1)
/* 8004CF00  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 8004CF04  98 16 00 B8 */	stb r0, 0xb8(r22)
/* 8004CF08  98 76 00 B9 */	stb r3, 0xb9(r22)
/* 8004CF0C  98 96 00 BA */	stb r4, 0xba(r22)
/* 8004CF10  48 00 00 44 */	b lbl_8004CF54
lbl_8004CF14:
/* 8004CF14  28 1E 00 00 */	cmplwi r30, 0
/* 8004CF18  41 82 00 1C */	beq lbl_8004CF34
/* 8004CF1C  88 9E 00 02 */	lbz r4, 2(r30)
/* 8004CF20  88 7E 00 01 */	lbz r3, 1(r30)
/* 8004CF24  88 1E 00 00 */	lbz r0, 0(r30)
/* 8004CF28  98 16 00 B8 */	stb r0, 0xb8(r22)
/* 8004CF2C  98 76 00 B9 */	stb r3, 0xb9(r22)
/* 8004CF30  98 96 00 BA */	stb r4, 0xba(r22)
lbl_8004CF34:
/* 8004CF34  28 1F 00 00 */	cmplwi r31, 0
/* 8004CF38  41 82 00 1C */	beq lbl_8004CF54
/* 8004CF3C  88 9F 00 02 */	lbz r4, 2(r31)
/* 8004CF40  88 7F 00 01 */	lbz r3, 1(r31)
/* 8004CF44  88 1F 00 00 */	lbz r0, 0(r31)
/* 8004CF48  98 16 00 BC */	stb r0, 0xbc(r22)
/* 8004CF4C  98 76 00 BD */	stb r3, 0xbd(r22)
/* 8004CF50  98 96 00 BE */	stb r4, 0xbe(r22)
lbl_8004CF54:
/* 8004CF54  28 15 00 00 */	cmplwi r21, 0
/* 8004CF58  41 82 00 14 */	beq lbl_8004CF6C
/* 8004CF5C  C0 35 00 04 */	lfs f1, 4(r21)
/* 8004CF60  C0 15 00 00 */	lfs f0, 0(r21)
/* 8004CF64  D0 16 00 B0 */	stfs f0, 0xb0(r22)
/* 8004CF68  D0 36 00 B4 */	stfs f1, 0xb4(r22)
lbl_8004CF6C:
/* 8004CF6C  7E C3 B3 78 */	mr r3, r22
lbl_8004CF70:
/* 8004CF70  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8004CF74  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8004CF78  39 61 00 80 */	addi r11, r1, 0x80
/* 8004CF7C  48 31 52 89 */	bl _restgpr_20
/* 8004CF80  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8004CF84  7C 08 03 A6 */	mtlr r0
/* 8004CF88  38 21 00 90 */	addi r1, r1, 0x90
/* 8004CF8C  4E 80 00 20 */	blr 
