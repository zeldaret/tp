lbl_8095A8EC:
/* 8095A8EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8095A8F0  7C 08 02 A6 */	mflr r0
/* 8095A8F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8095A8F8  39 61 00 40 */	addi r11, r1, 0x40
/* 8095A8FC  4B A0 78 DC */	b _savegpr_28
/* 8095A900  7C 7D 1B 78 */	mr r29, r3
/* 8095A904  3C 80 80 96 */	lis r4, m__16daNpcAsh_Param_c@ha
/* 8095A908  3B E4 D6 40 */	addi r31, r4, m__16daNpcAsh_Param_c@l
/* 8095A90C  3B C0 00 00 */	li r30, 0
/* 8095A910  A0 03 0F 5C */	lhz r0, 0xf5c(r3)
/* 8095A914  2C 00 00 02 */	cmpwi r0, 2
/* 8095A918  41 82 00 B4 */	beq lbl_8095A9CC
/* 8095A91C  40 80 00 10 */	bge lbl_8095A92C
/* 8095A920  2C 00 00 00 */	cmpwi r0, 0
/* 8095A924  41 82 00 14 */	beq lbl_8095A938
/* 8095A928  48 00 03 E4 */	b lbl_8095AD0C
lbl_8095A92C:
/* 8095A92C  2C 00 00 04 */	cmpwi r0, 4
/* 8095A930  40 80 03 DC */	bge lbl_8095AD0C
/* 8095A934  48 00 03 A4 */	b lbl_8095ACD8
lbl_8095A938:
/* 8095A938  A8 9D 0F 58 */	lha r4, 0xf58(r29)
/* 8095A93C  38 A0 00 00 */	li r5, 0
/* 8095A940  4B 7F 93 DC */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 8095A944  38 00 00 00 */	li r0, 0
/* 8095A948  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 8095A94C  90 1D 09 50 */	stw r0, 0x950(r29)
/* 8095A950  A8 1D 0F 58 */	lha r0, 0xf58(r29)
/* 8095A954  2C 00 04 2D */	cmpwi r0, 0x42d
/* 8095A958  40 82 00 10 */	bne lbl_8095A968
/* 8095A95C  88 7D 0F 5F */	lbz r3, 0xf5f(r29)
/* 8095A960  38 03 00 01 */	addi r0, r3, 1
/* 8095A964  98 1D 0F 5F */	stb r0, 0xf5f(r29)
lbl_8095A968:
/* 8095A968  38 00 00 00 */	li r0, 0
/* 8095A96C  98 1D 0F 5E */	stb r0, 0xf5e(r29)
/* 8095A970  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8095A974  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8095A978  A8 1D 0F 5A */	lha r0, 0xf5a(r29)
/* 8095A97C  2C 00 00 03 */	cmpwi r0, 3
/* 8095A980  40 82 00 10 */	bne lbl_8095A990
/* 8095A984  80 1D 0C B0 */	lwz r0, 0xcb0(r29)
/* 8095A988  28 00 00 00 */	cmplwi r0, 0
/* 8095A98C  41 82 00 14 */	beq lbl_8095A9A0
lbl_8095A990:
/* 8095A990  38 00 00 03 */	li r0, 3
/* 8095A994  B0 1D 0F 5A */	sth r0, 0xf5a(r29)
/* 8095A998  38 00 00 00 */	li r0, 0
/* 8095A99C  90 1D 0C B0 */	stw r0, 0xcb0(r29)
lbl_8095A9A0:
/* 8095A9A0  7F A3 EB 78 */	mr r3, r29
/* 8095A9A4  38 80 00 00 */	li r4, 0
/* 8095A9A8  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8095A9AC  38 A0 00 00 */	li r5, 0
/* 8095A9B0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095A9B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095A9B8  7D 89 03 A6 */	mtctr r12
/* 8095A9BC  4E 80 04 21 */	bctrl 
/* 8095A9C0  38 00 00 02 */	li r0, 2
/* 8095A9C4  B0 1D 0F 5C */	sth r0, 0xf5c(r29)
/* 8095A9C8  48 00 03 44 */	b lbl_8095AD0C
lbl_8095A9CC:
/* 8095A9CC  88 1D 0F 5F */	lbz r0, 0xf5f(r29)
/* 8095A9D0  28 00 00 02 */	cmplwi r0, 2
/* 8095A9D4  40 81 00 24 */	ble lbl_8095A9F8
/* 8095A9D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8095A9DC  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 8095A9E0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095A9E4  4B 6B FD 2C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8095A9E8  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 8095A9EC  7C 60 07 34 */	extsh r0, r3
/* 8095A9F0  7C 04 00 00 */	cmpw r4, r0
/* 8095A9F4  40 82 01 64 */	bne lbl_8095AB58
lbl_8095A9F8:
/* 8095A9F8  7F A3 EB 78 */	mr r3, r29
/* 8095A9FC  38 80 00 00 */	li r4, 0
/* 8095AA00  38 A0 00 01 */	li r5, 1
/* 8095AA04  38 C0 00 00 */	li r6, 0
/* 8095AA08  4B 7F 93 7C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 8095AA0C  2C 03 00 00 */	cmpwi r3, 0
/* 8095AA10  41 82 00 B0 */	beq lbl_8095AAC0
/* 8095AA14  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 8095AA18  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8095AA1C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8095AA20  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8095AA24  4B 7F 5C 98 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 8095AA28  3C 60 80 96 */	lis r3, lit_5048@ha
/* 8095AA2C  38 83 DB C8 */	addi r4, r3, lit_5048@l
/* 8095AA30  80 64 00 00 */	lwz r3, 0(r4)
/* 8095AA34  80 04 00 04 */	lwz r0, 4(r4)
/* 8095AA38  90 61 00 10 */	stw r3, 0x10(r1)
/* 8095AA3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095AA40  80 04 00 08 */	lwz r0, 8(r4)
/* 8095AA44  90 01 00 18 */	stw r0, 0x18(r1)
/* 8095AA48  38 00 00 03 */	li r0, 3
/* 8095AA4C  B0 1D 0F 5C */	sth r0, 0xf5c(r29)
/* 8095AA50  38 7D 0F 30 */	addi r3, r29, 0xf30
/* 8095AA54  4B A0 75 C4 */	b __ptmf_test
/* 8095AA58  2C 03 00 00 */	cmpwi r3, 0
/* 8095AA5C  41 82 00 18 */	beq lbl_8095AA74
/* 8095AA60  7F A3 EB 78 */	mr r3, r29
/* 8095AA64  38 80 00 00 */	li r4, 0
/* 8095AA68  39 9D 0F 30 */	addi r12, r29, 0xf30
/* 8095AA6C  4B A0 76 18 */	b __ptmf_scall
/* 8095AA70  60 00 00 00 */	nop 
lbl_8095AA74:
/* 8095AA74  38 00 00 00 */	li r0, 0
/* 8095AA78  B0 1D 0F 5C */	sth r0, 0xf5c(r29)
/* 8095AA7C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8095AA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095AA84  90 7D 0F 30 */	stw r3, 0xf30(r29)
/* 8095AA88  90 1D 0F 34 */	stw r0, 0xf34(r29)
/* 8095AA8C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8095AA90  90 1D 0F 38 */	stw r0, 0xf38(r29)
/* 8095AA94  38 7D 0F 30 */	addi r3, r29, 0xf30
/* 8095AA98  4B A0 75 80 */	b __ptmf_test
/* 8095AA9C  2C 03 00 00 */	cmpwi r3, 0
/* 8095AAA0  41 82 00 18 */	beq lbl_8095AAB8
/* 8095AAA4  7F A3 EB 78 */	mr r3, r29
/* 8095AAA8  38 80 00 00 */	li r4, 0
/* 8095AAAC  39 9D 0F 30 */	addi r12, r29, 0xf30
/* 8095AAB0  4B A0 75 D4 */	b __ptmf_scall
/* 8095AAB4  60 00 00 00 */	nop 
lbl_8095AAB8:
/* 8095AAB8  3B C0 00 01 */	li r30, 1
/* 8095AABC  48 00 02 50 */	b lbl_8095AD0C
lbl_8095AAC0:
/* 8095AAC0  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 8095AAC4  7F A3 EB 78 */	mr r3, r29
/* 8095AAC8  38 81 00 0C */	addi r4, r1, 0xc
/* 8095AACC  38 A1 00 08 */	addi r5, r1, 8
/* 8095AAD0  7F A6 EB 78 */	mr r6, r29
/* 8095AAD4  38 E0 00 00 */	li r7, 0
/* 8095AAD8  4B 7F 8C 40 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 8095AADC  2C 03 00 00 */	cmpwi r3, 0
/* 8095AAE0  41 82 00 44 */	beq lbl_8095AB24
/* 8095AAE4  7F A3 EB 78 */	mr r3, r29
/* 8095AAE8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8095AAEC  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8095AAF0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095AAF4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095AAF8  7D 89 03 A6 */	mtctr r12
/* 8095AAFC  4E 80 04 21 */	bctrl 
/* 8095AB00  7F A3 EB 78 */	mr r3, r29
/* 8095AB04  80 81 00 08 */	lwz r4, 8(r1)
/* 8095AB08  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8095AB0C  38 A0 00 00 */	li r5, 0
/* 8095AB10  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095AB14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095AB18  7D 89 03 A6 */	mtctr r12
/* 8095AB1C  4E 80 04 21 */	bctrl 
/* 8095AB20  48 00 01 EC */	b lbl_8095AD0C
lbl_8095AB24:
/* 8095AB24  2C 1C 00 00 */	cmpwi r28, 0
/* 8095AB28  41 82 01 E4 */	beq lbl_8095AD0C
/* 8095AB2C  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 8095AB30  2C 00 00 00 */	cmpwi r0, 0
/* 8095AB34  40 82 01 D8 */	bne lbl_8095AD0C
/* 8095AB38  7F A3 EB 78 */	mr r3, r29
/* 8095AB3C  38 80 00 07 */	li r4, 7
/* 8095AB40  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8095AB44  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095AB48  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095AB4C  7D 89 03 A6 */	mtctr r12
/* 8095AB50  4E 80 04 21 */	bctrl 
/* 8095AB54  48 00 01 B8 */	b lbl_8095AD0C
lbl_8095AB58:
/* 8095AB58  7F A3 EB 78 */	mr r3, r29
/* 8095AB5C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095AB60  4B 6B FB B0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8095AB64  7C 7C 1B 78 */	mr r28, r3
/* 8095AB68  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 8095AB6C  2C 00 00 00 */	cmpwi r0, 0
/* 8095AB70  40 82 00 D4 */	bne lbl_8095AC44
/* 8095AB74  C0 5F 02 48 */	lfs f2, 0x248(r31)
/* 8095AB78  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 8095AB7C  7C 00 E0 50 */	subf r0, r0, r28
/* 8095AB80  7C 00 07 34 */	extsh r0, r0
/* 8095AB84  C8 3F 02 50 */	lfd f1, 0x250(r31)
/* 8095AB88  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8095AB8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095AB90  3C 00 43 30 */	lis r0, 0x4330
/* 8095AB94  90 01 00 20 */	stw r0, 0x20(r1)
/* 8095AB98  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8095AB9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8095ABA0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8095ABA4  FC 00 02 10 */	fabs f0, f0
/* 8095ABA8  FC 00 00 18 */	frsp f0, f0
/* 8095ABAC  FC 00 00 1E */	fctiwz f0, f0
/* 8095ABB0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8095ABB4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8095ABB8  2C 00 00 28 */	cmpwi r0, 0x28
/* 8095ABBC  40 81 00 40 */	ble lbl_8095ABFC
/* 8095ABC0  7F A3 EB 78 */	mr r3, r29
/* 8095ABC4  38 80 00 07 */	li r4, 7
/* 8095ABC8  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8095ABCC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095ABD0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095ABD4  7D 89 03 A6 */	mtctr r12
/* 8095ABD8  4E 80 04 21 */	bctrl 
/* 8095ABDC  7F A3 EB 78 */	mr r3, r29
/* 8095ABE0  38 80 00 09 */	li r4, 9
/* 8095ABE4  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8095ABE8  38 A0 00 00 */	li r5, 0
/* 8095ABEC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095ABF0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095ABF4  7D 89 03 A6 */	mtctr r12
/* 8095ABF8  4E 80 04 21 */	bctrl 
lbl_8095ABFC:
/* 8095ABFC  B3 9D 09 96 */	sth r28, 0x996(r29)
/* 8095AC00  38 00 00 00 */	li r0, 0
/* 8095AC04  90 1D 09 68 */	stw r0, 0x968(r29)
/* 8095AC08  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 8095AC0C  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 8095AC10  7C 03 00 00 */	cmpw r3, r0
/* 8095AC14  40 82 00 10 */	bne lbl_8095AC24
/* 8095AC18  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 8095AC1C  38 03 00 01 */	addi r0, r3, 1
/* 8095AC20  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_8095AC24:
/* 8095AC24  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 8095AC28  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8095AC2C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095AC30  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8095AC34  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 8095AC38  38 03 00 01 */	addi r0, r3, 1
/* 8095AC3C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 8095AC40  48 00 00 60 */	b lbl_8095ACA0
lbl_8095AC44:
/* 8095AC44  2C 00 00 01 */	cmpwi r0, 1
/* 8095AC48  40 82 00 58 */	bne lbl_8095ACA0
/* 8095AC4C  7F A3 EB 78 */	mr r3, r29
/* 8095AC50  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 8095AC54  C0 3F 02 4C */	lfs f1, 0x24c(r31)
/* 8095AC58  38 A0 00 00 */	li r5, 0
/* 8095AC5C  4B 7F 92 98 */	b turn__8daNpcF_cFsfi
/* 8095AC60  2C 03 00 00 */	cmpwi r3, 0
/* 8095AC64  41 82 00 2C */	beq lbl_8095AC90
/* 8095AC68  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095AC6C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8095AC70  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095AC74  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 8095AC78  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095AC7C  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 8095AC80  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 8095AC84  38 03 00 01 */	addi r0, r3, 1
/* 8095AC88  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 8095AC8C  48 00 00 14 */	b lbl_8095ACA0
lbl_8095AC90:
/* 8095AC90  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095AC94  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8095AC98  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095AC9C  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_8095ACA0:
/* 8095ACA0  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 8095ACA4  2C 00 00 01 */	cmpwi r0, 1
/* 8095ACA8  40 81 00 64 */	ble lbl_8095AD0C
/* 8095ACAC  7F A3 EB 78 */	mr r3, r29
/* 8095ACB0  38 80 00 00 */	li r4, 0
/* 8095ACB4  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8095ACB8  38 A0 00 00 */	li r5, 0
/* 8095ACBC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095ACC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095ACC4  7D 89 03 A6 */	mtctr r12
/* 8095ACC8  4E 80 04 21 */	bctrl 
/* 8095ACCC  38 00 00 00 */	li r0, 0
/* 8095ACD0  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 8095ACD4  48 00 00 38 */	b lbl_8095AD0C
lbl_8095ACD8:
/* 8095ACD8  38 80 00 07 */	li r4, 7
/* 8095ACDC  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8095ACE0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8095ACE4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095ACE8  7D 89 03 A6 */	mtctr r12
/* 8095ACEC  4E 80 04 21 */	bctrl 
/* 8095ACF0  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 8095ACF4  28 00 00 00 */	cmplwi r0, 0
/* 8095ACF8  40 82 00 14 */	bne lbl_8095AD0C
/* 8095ACFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8095AD00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8095AD04  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8095AD08  4B 6E 77 60 */	b reset__14dEvt_control_cFv
lbl_8095AD0C:
/* 8095AD0C  7F C3 F3 78 */	mr r3, r30
/* 8095AD10  39 61 00 40 */	addi r11, r1, 0x40
/* 8095AD14  4B A0 75 10 */	b _restgpr_28
/* 8095AD18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8095AD1C  7C 08 03 A6 */	mtlr r0
/* 8095AD20  38 21 00 40 */	addi r1, r1, 0x40
/* 8095AD24  4E 80 00 20 */	blr 
