lbl_806B78A0:
/* 806B78A0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806B78A4  7C 08 02 A6 */	mflr r0
/* 806B78A8  90 01 00 94 */	stw r0, 0x94(r1)
/* 806B78AC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 806B78B0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 806B78B4  39 61 00 80 */	addi r11, r1, 0x80
/* 806B78B8  4B CA A9 0C */	b _savegpr_23
/* 806B78BC  7C 7B 1B 78 */	mr r27, r3
/* 806B78C0  3C 60 80 6C */	lis r3, lit_3662@ha
/* 806B78C4  3B C3 8F 8C */	addi r30, r3, lit_3662@l
/* 806B78C8  C0 1B 06 84 */	lfs f0, 0x684(r27)
/* 806B78CC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806B78D0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806B78D4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806B78D8  80 1B 06 6C */	lwz r0, 0x66c(r27)
/* 806B78DC  2C 00 00 01 */	cmpwi r0, 1
/* 806B78E0  41 82 02 30 */	beq lbl_806B7B10
/* 806B78E4  40 80 02 7C */	bge lbl_806B7B60
/* 806B78E8  2C 00 00 00 */	cmpwi r0, 0
/* 806B78EC  40 80 00 08 */	bge lbl_806B78F4
/* 806B78F0  48 00 02 70 */	b lbl_806B7B60
lbl_806B78F4:
/* 806B78F4  3B 80 00 00 */	li r28, 0
/* 806B78F8  3B 40 00 00 */	li r26, 0
/* 806B78FC  3B 20 00 00 */	li r25, 0
/* 806B7900  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B7904  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806B7908  3B A1 00 28 */	addi r29, r1, 0x28
/* 806B790C  3C 60 80 6C */	lis r3, d_eff_id_4275@ha
/* 806B7910  3A E3 90 BC */	addi r23, r3, d_eff_id_4275@l
lbl_806B7914:
/* 806B7914  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806B7918  38 00 00 FF */	li r0, 0xff
/* 806B791C  90 01 00 08 */	stw r0, 8(r1)
/* 806B7920  38 80 00 00 */	li r4, 0
/* 806B7924  90 81 00 0C */	stw r4, 0xc(r1)
/* 806B7928  38 00 FF FF */	li r0, -1
/* 806B792C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B7930  90 81 00 14 */	stw r4, 0x14(r1)
/* 806B7934  90 81 00 18 */	stw r4, 0x18(r1)
/* 806B7938  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806B793C  7C 9D C8 2E */	lwzx r4, r29, r25
/* 806B7940  38 A0 00 00 */	li r5, 0
/* 806B7944  7C D7 D2 2E */	lhzx r6, r23, r26
/* 806B7948  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 806B794C  39 00 00 00 */	li r8, 0
/* 806B7950  39 3B 04 E4 */	addi r9, r27, 0x4e4
/* 806B7954  39 41 00 3C */	addi r10, r1, 0x3c
/* 806B7958  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B795C  4B 99 5B 70 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806B7960  7C 7D C9 2E */	stwx r3, r29, r25
/* 806B7964  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806B7968  38 63 02 10 */	addi r3, r3, 0x210
/* 806B796C  7C 9D C8 2E */	lwzx r4, r29, r25
/* 806B7970  4B 99 3F A8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806B7974  7C 78 1B 79 */	or. r24, r3, r3
/* 806B7978  41 82 00 38 */	beq lbl_806B79B0
/* 806B797C  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 806B7980  80 63 00 04 */	lwz r3, 4(r3)
/* 806B7984  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B7988  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B798C  38 63 00 30 */	addi r3, r3, 0x30
/* 806B7990  38 98 00 68 */	addi r4, r24, 0x68
/* 806B7994  38 B8 00 98 */	addi r5, r24, 0x98
/* 806B7998  38 D8 00 A4 */	addi r6, r24, 0xa4
/* 806B799C  4B BC 8E 6C */	b func_80280808
/* 806B79A0  C0 38 00 9C */	lfs f1, 0x9c(r24)
/* 806B79A4  C0 18 00 98 */	lfs f0, 0x98(r24)
/* 806B79A8  D0 18 00 B0 */	stfs f0, 0xb0(r24)
/* 806B79AC  D0 38 00 B4 */	stfs f1, 0xb4(r24)
lbl_806B79B0:
/* 806B79B0  3B 9C 00 01 */	addi r28, r28, 1
/* 806B79B4  2C 1C 00 02 */	cmpwi r28, 2
/* 806B79B8  3B 5A 00 02 */	addi r26, r26, 2
/* 806B79BC  3B 39 00 04 */	addi r25, r25, 4
/* 806B79C0  41 80 FF 54 */	blt lbl_806B7914
/* 806B79C4  88 1B 06 8E */	lbz r0, 0x68e(r27)
/* 806B79C8  28 00 00 02 */	cmplwi r0, 2
/* 806B79CC  41 81 00 28 */	bgt lbl_806B79F4
/* 806B79D0  7F 63 DB 78 */	mr r3, r27
/* 806B79D4  38 80 00 07 */	li r4, 7
/* 806B79D8  38 A0 00 00 */	li r5, 0
/* 806B79DC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806B79E0  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 806B79E4  4B FF ED FD */	bl setBck__8daE_FB_cFiUcff
/* 806B79E8  38 00 00 01 */	li r0, 1
/* 806B79EC  90 1B 06 6C */	stw r0, 0x66c(r27)
/* 806B79F0  48 00 01 70 */	b lbl_806B7B60
lbl_806B79F4:
/* 806B79F4  3A E0 00 00 */	li r23, 0
/* 806B79F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B79FC  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 806B7A00  C3 FE 00 1C */	lfs f31, 0x1c(r30)
lbl_806B7A04:
/* 806B7A04  A8 1B 04 E4 */	lha r0, 0x4e4(r27)
/* 806B7A08  B0 01 00 20 */	sth r0, 0x20(r1)
/* 806B7A0C  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 806B7A10  B0 01 00 22 */	sth r0, 0x22(r1)
/* 806B7A14  A8 1B 04 E8 */	lha r0, 0x4e8(r27)
/* 806B7A18  B0 01 00 24 */	sth r0, 0x24(r1)
/* 806B7A1C  7F 63 DB 78 */	mr r3, r27
/* 806B7A20  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 806B7A24  4B 96 2C EC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B7A28  3C 63 00 01 */	addis r3, r3, 1
/* 806B7A2C  38 03 80 00 */	addi r0, r3, -32768
/* 806B7A30  B0 01 00 22 */	sth r0, 0x22(r1)
/* 806B7A34  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 806B7A38  4B BA FF 54 */	b cM_rndFX__Ff
/* 806B7A3C  FC 00 08 1E */	fctiwz f0, f1
/* 806B7A40  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806B7A44  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 806B7A48  A8 01 00 22 */	lha r0, 0x22(r1)
/* 806B7A4C  7C 00 1A 14 */	add r0, r0, r3
/* 806B7A50  B0 01 00 22 */	sth r0, 0x22(r1)
/* 806B7A54  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 806B7A58  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806B7A5C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 806B7A60  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806B7A64  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 806B7A68  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806B7A6C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B7A70  4B BA FE E4 */	b cM_rndF__Ff
/* 806B7A74  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806B7A78  EC 00 08 2A */	fadds f0, f0, f1
/* 806B7A7C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806B7A80  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806B7A84  4B BA FE D0 */	b cM_rndF__Ff
/* 806B7A88  EC 3F 08 2A */	fadds f1, f31, f1
/* 806B7A8C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806B7A90  EC 00 08 2A */	fadds f0, f0, f1
/* 806B7A94  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806B7A98  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B7A9C  4B BA FE B8 */	b cM_rndF__Ff
/* 806B7AA0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806B7AA4  EC 00 08 2A */	fadds f0, f0, f1
/* 806B7AA8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806B7AAC  38 60 01 DE */	li r3, 0x1de
/* 806B7AB0  38 80 00 01 */	li r4, 1
/* 806B7AB4  38 A1 00 30 */	addi r5, r1, 0x30
/* 806B7AB8  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 806B7ABC  7C 06 07 74 */	extsb r6, r0
/* 806B7AC0  38 E1 00 20 */	addi r7, r1, 0x20
/* 806B7AC4  39 00 00 00 */	li r8, 0
/* 806B7AC8  39 20 FF FF */	li r9, -1
/* 806B7ACC  4B 96 22 CC */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 806B7AD0  3A F7 00 01 */	addi r23, r23, 1
/* 806B7AD4  2C 17 00 04 */	cmpwi r23, 4
/* 806B7AD8  41 80 FF 2C */	blt lbl_806B7A04
/* 806B7ADC  7F 63 DB 78 */	mr r3, r27
/* 806B7AE0  48 00 09 11 */	bl dead_eff_set__8daE_FB_cFv
/* 806B7AE4  88 9B 06 91 */	lbz r4, 0x691(r27)
/* 806B7AE8  28 04 00 FF */	cmplwi r4, 0xff
/* 806B7AEC  41 82 00 18 */	beq lbl_806B7B04
/* 806B7AF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B7AF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B7AF8  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 806B7AFC  7C 05 07 74 */	extsb r5, r0
/* 806B7B00  4B 97 D7 00 */	b onSwitch__10dSv_info_cFii
lbl_806B7B04:
/* 806B7B04  7F 63 DB 78 */	mr r3, r27
/* 806B7B08  4B 96 21 74 */	b fopAcM_delete__FP10fopAc_ac_c
/* 806B7B0C  48 00 00 54 */	b lbl_806B7B60
lbl_806B7B10:
/* 806B7B10  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 806B7B14  38 80 00 01 */	li r4, 1
/* 806B7B18  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B7B1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B7B20  40 82 00 18 */	bne lbl_806B7B38
/* 806B7B24  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 806B7B28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B7B2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B7B30  41 82 00 08 */	beq lbl_806B7B38
/* 806B7B34  38 80 00 00 */	li r4, 0
lbl_806B7B38:
/* 806B7B38  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B7B3C  41 82 00 24 */	beq lbl_806B7B60
/* 806B7B40  7F 63 DB 78 */	mr r3, r27
/* 806B7B44  38 80 00 00 */	li r4, 0
/* 806B7B48  38 A0 00 00 */	li r5, 0
/* 806B7B4C  4B FF ED 41 */	bl setActionMode__8daE_FB_cFii
/* 806B7B50  38 00 00 02 */	li r0, 2
/* 806B7B54  90 1B 06 6C */	stw r0, 0x66c(r27)
/* 806B7B58  38 00 00 00 */	li r0, 0
/* 806B7B5C  B0 1B 06 80 */	sth r0, 0x680(r27)
lbl_806B7B60:
/* 806B7B60  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 806B7B64  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 806B7B68  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 806B7B6C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 806B7B70  39 61 00 80 */	addi r11, r1, 0x80
/* 806B7B74  4B CA A6 9C */	b _restgpr_23
/* 806B7B78  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806B7B7C  7C 08 03 A6 */	mtlr r0
/* 806B7B80  38 21 00 90 */	addi r1, r1, 0x90
/* 806B7B84  4E 80 00 20 */	blr 
