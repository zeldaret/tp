lbl_80D410E0:
/* 80D410E0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D410E4  7C 08 02 A6 */	mflr r0
/* 80D410E8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D410EC  39 61 00 50 */	addi r11, r1, 0x50
/* 80D410F0  4B 62 10 E8 */	b _savegpr_28
/* 80D410F4  7C 7E 1B 78 */	mr r30, r3
/* 80D410F8  3C 60 80 D4 */	lis r3, lit_3657@ha
/* 80D410FC  3B 83 15 9C */	addi r28, r3, lit_3657@l
/* 80D41100  C0 1E 07 60 */	lfs f0, 0x760(r30)
/* 80D41104  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D41108  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D4110C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D41110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D41114  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D41118  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D4111C  38 00 00 FF */	li r0, 0xff
/* 80D41120  90 01 00 08 */	stw r0, 8(r1)
/* 80D41124  38 80 00 00 */	li r4, 0
/* 80D41128  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D4112C  38 00 FF FF */	li r0, -1
/* 80D41130  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D41134  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D41138  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D4113C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D41140  80 9E 07 64 */	lwz r4, 0x764(r30)
/* 80D41144  38 A0 00 00 */	li r5, 0
/* 80D41148  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008A98@ha */
/* 80D4114C  38 C6 8A 98 */	addi r6, r6, 0x8A98 /* 0x00008A98@l */
/* 80D41150  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80D41154  39 00 00 00 */	li r8, 0
/* 80D41158  39 20 00 00 */	li r9, 0
/* 80D4115C  39 41 00 2C */	addi r10, r1, 0x2c
/* 80D41160  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 80D41164  4B 30 C3 68 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D41168  90 7E 07 64 */	stw r3, 0x764(r30)
/* 80D4116C  88 7E 07 2B */	lbz r3, 0x72b(r30)
/* 80D41170  28 03 00 00 */	cmplwi r3, 0
/* 80D41174  41 82 00 10 */	beq lbl_80D41184
/* 80D41178  38 03 FF FF */	addi r0, r3, -1
/* 80D4117C  98 1E 07 2B */	stb r0, 0x72b(r30)
/* 80D41180  48 00 01 08 */	b lbl_80D41288
lbl_80D41184:
/* 80D41184  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D41188  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D4118C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D41190  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80D41194  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D41198  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D4119C  C0 1C 00 58 */	lfs f0, 0x58(r28)
/* 80D411A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D411A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D411A8  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 80D411AC  4B 52 67 E0 */	b cM_rndFX__Ff
/* 80D411B0  3C 60 80 D4 */	lis r3, l_HIO@ha
/* 80D411B4  3B A3 17 8C */	addi r29, r3, l_HIO@l
/* 80D411B8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80D411BC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D411C0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D411C4  EC 00 08 2A */	fadds f0, f0, f1
/* 80D411C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D411CC  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 80D411D0  4B 52 67 BC */	b cM_rndFX__Ff
/* 80D411D4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80D411D8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D411DC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D411E0  EC 00 08 2A */	fadds f0, f0, f1
/* 80D411E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D411E8  38 60 01 88 */	li r3, 0x188
/* 80D411EC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D411F0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D411F4  38 A1 00 20 */	addi r5, r1, 0x20
/* 80D411F8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D411FC  7C 06 07 74 */	extsb r6, r0
/* 80D41200  38 E0 00 00 */	li r7, 0
/* 80D41204  39 00 00 00 */	li r8, 0
/* 80D41208  39 20 FF FF */	li r9, -1
/* 80D4120C  4B 2D 8B 8C */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80D41210  88 7E 07 68 */	lbz r3, 0x768(r30)
/* 80D41214  38 03 00 01 */	addi r0, r3, 1
/* 80D41218  98 1E 07 68 */	stb r0, 0x768(r30)
/* 80D4121C  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 80D41220  4B 52 67 34 */	b cM_rndF__Ff
/* 80D41224  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 80D41228  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D4122C  FC 00 00 1E */	fctiwz f0, f0
/* 80D41230  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80D41234  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80D41238  98 1E 07 2B */	stb r0, 0x72b(r30)
/* 80D4123C  88 9E 07 68 */	lbz r4, 0x768(r30)
/* 80D41240  3C 60 80 D4 */	lis r3, l_HIO@ha
/* 80D41244  38 63 17 8C */	addi r3, r3, l_HIO@l
/* 80D41248  88 03 00 08 */	lbz r0, 8(r3)
/* 80D4124C  7C 04 00 40 */	cmplw r4, r0
/* 80D41250  41 80 00 38 */	blt lbl_80D41288
/* 80D41254  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D41258  38 63 02 10 */	addi r3, r3, 0x210
/* 80D4125C  80 9E 07 64 */	lwz r4, 0x764(r30)
/* 80D41260  4B 30 A6 B8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80D41264  28 03 00 00 */	cmplwi r3, 0
/* 80D41268  41 82 00 18 */	beq lbl_80D41280
/* 80D4126C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D41270  60 00 00 01 */	ori r0, r0, 1
/* 80D41274  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80D41278  38 00 00 01 */	li r0, 1
/* 80D4127C  90 03 00 24 */	stw r0, 0x24(r3)
lbl_80D41280:
/* 80D41280  7F C3 F3 78 */	mr r3, r30
/* 80D41284  48 00 00 1D */	bl init_modeEnd__12daZrTurara_cFv
lbl_80D41288:
/* 80D41288  39 61 00 50 */	addi r11, r1, 0x50
/* 80D4128C  4B 62 0F 98 */	b _restgpr_28
/* 80D41290  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D41294  7C 08 03 A6 */	mtlr r0
/* 80D41298  38 21 00 50 */	addi r1, r1, 0x50
/* 80D4129C  4E 80 00 20 */	blr 
