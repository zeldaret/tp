lbl_800C77F4:
/* 800C77F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800C77F8  7C 08 02 A6 */	mflr r0
/* 800C77FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 800C7800  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800C7804  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 800C7808  39 61 00 50 */	addi r11, r1, 0x50
/* 800C780C  48 29 A9 C9 */	bl _savegpr_27
/* 800C7810  7C 7E 1B 78 */	mr r30, r3
/* 800C7814  3B A0 00 00 */	li r29, 0
/* 800C7818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C781C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C7820  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 800C7824  38 7F 3F 90 */	addi r3, r31, 0x3f90
/* 800C7828  38 00 00 00 */	li r0, 0
/* 800C782C  88 9F 40 75 */	lbz r4, 0x4075(r31)
/* 800C7830  28 04 00 00 */	cmplwi r4, 0
/* 800C7834  41 82 00 0C */	beq lbl_800C7840
/* 800C7838  28 04 00 02 */	cmplwi r4, 2
/* 800C783C  40 82 00 08 */	bne lbl_800C7844
lbl_800C7840:
/* 800C7840  38 00 00 01 */	li r0, 1
lbl_800C7844:
/* 800C7844  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800C7848  41 82 00 3C */	beq lbl_800C7884
/* 800C784C  7F C4 F3 78 */	mr r4, r30
/* 800C7850  38 A0 00 00 */	li r5, 0
/* 800C7854  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800C7858  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800C785C  4B F7 B9 11 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800C7860  2C 03 00 00 */	cmpwi r3, 0
/* 800C7864  40 82 00 0C */	bne lbl_800C7870
/* 800C7868  38 60 00 00 */	li r3, 0
/* 800C786C  48 00 03 D8 */	b lbl_800C7C44
lbl_800C7870:
/* 800C7870  38 00 00 05 */	li r0, 5
/* 800C7874  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 800C7878  38 00 00 00 */	li r0, 0
/* 800C787C  B0 1E 05 6C */	sth r0, 0x56c(r30)
/* 800C7880  3B A0 00 01 */	li r29, 1
lbl_800C7884:
/* 800C7884  7F C3 F3 78 */	mr r3, r30
/* 800C7888  38 80 01 4D */	li r4, 0x14d
/* 800C788C  4B FF B5 19 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C7890  2C 03 00 00 */	cmpwi r3, 0
/* 800C7894  40 82 00 0C */	bne lbl_800C78A0
/* 800C7898  38 60 00 01 */	li r3, 1
/* 800C789C  48 00 03 A8 */	b lbl_800C7C44
lbl_800C78A0:
/* 800C78A0  93 BE 31 98 */	stw r29, 0x3198(r30)
/* 800C78A4  38 00 00 00 */	li r0, 0
/* 800C78A8  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800C78AC  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800C78B0  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800C78B4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800C78B8  D0 1E 34 7C */	stfs f0, 0x347c(r30)
/* 800C78BC  B0 1E 30 14 */	sth r0, 0x3014(r30)
/* 800C78C0  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800C78C4  54 03 01 8D */	rlwinm. r3, r0, 0, 6, 6
/* 800C78C8  41 82 00 10 */	beq lbl_800C78D8
/* 800C78CC  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800C78D0  28 00 00 39 */	cmplwi r0, 0x39
/* 800C78D4  41 82 00 18 */	beq lbl_800C78EC
lbl_800C78D8:
/* 800C78D8  28 03 00 00 */	cmplwi r3, 0
/* 800C78DC  40 82 00 3C */	bne lbl_800C7918
/* 800C78E0  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800C78E4  28 00 00 3A */	cmplwi r0, 0x3a
/* 800C78E8  40 82 00 30 */	bne lbl_800C7918
lbl_800C78EC:
/* 800C78EC  38 00 00 01 */	li r0, 1
/* 800C78F0  B0 1E 30 0A */	sth r0, 0x300a(r30)
/* 800C78F4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C78F8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800C78FC  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C7900  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800C7904  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C7908  41 82 03 30 */	beq lbl_800C7C38
/* 800C790C  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 800C7910  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800C7914  48 00 03 24 */	b lbl_800C7C38
lbl_800C7918:
/* 800C7918  7F C3 F3 78 */	mr r3, r30
/* 800C791C  38 80 00 00 */	li r4, 0
/* 800C7920  38 A0 00 01 */	li r5, 1
/* 800C7924  4B FF 99 B9 */	bl deleteEquipItem__9daAlink_cFii
/* 800C7928  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800C792C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800C7930  41 82 00 24 */	beq lbl_800C7954
/* 800C7934  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C7938  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C793C  38 63 01 70 */	addi r3, r3, 0x170
/* 800C7940  4B FD 61 21 */	bl checkStageName__9daAlink_cFPCc
/* 800C7944  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C7948  41 82 00 0C */	beq lbl_800C7954
/* 800C794C  38 00 00 01 */	li r0, 1
/* 800C7950  B0 1E 30 10 */	sth r0, 0x3010(r30)
lbl_800C7954:
/* 800C7954  38 00 00 00 */	li r0, 0
/* 800C7958  B0 1E 30 0A */	sth r0, 0x300a(r30)
/* 800C795C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800C7960  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C7964  41 82 00 B8 */	beq lbl_800C7A1C
/* 800C7968  7F C3 F3 78 */	mr r3, r30
/* 800C796C  38 80 00 70 */	li r4, 0x70
/* 800C7970  48 06 1D 09 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 800C7974  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 800C7978  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 800C797C  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 800C7980  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C7984  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 800C7988  C0 03 00 08 */	lfs f0, 8(r3)
/* 800C798C  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 800C7990  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800C7994  D0 1E 34 7C */	stfs f0, 0x347c(r30)
/* 800C7998  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800C799C  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800C79A0  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800C79A4  D0 1E 34 80 */	stfs f0, 0x3480(r30)
/* 800C79A8  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 800C79AC  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800C79B0  83 ED 8A 98 */	lwz r31, m_midnaActor__9daPy_py_c(r13)
/* 800C79B4  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800C79B8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800C79BC  41 82 02 68 */	beq lbl_800C7C24
/* 800C79C0  3B A0 00 01 */	li r29, 1
/* 800C79C4  48 0E 4B B9 */	bl dKy_darkworld_check__Fv
/* 800C79C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800C79CC  28 00 00 01 */	cmplwi r0, 1
/* 800C79D0  41 82 00 24 */	beq lbl_800C79F4
/* 800C79D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C79D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C79DC  38 63 00 28 */	addi r3, r3, 0x28
/* 800C79E0  38 80 00 03 */	li r4, 3
/* 800C79E4  4B F6 B2 09 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 800C79E8  2C 03 00 00 */	cmpwi r3, 0
/* 800C79EC  40 82 00 08 */	bne lbl_800C79F4
/* 800C79F0  3B A0 00 00 */	li r29, 0
lbl_800C79F4:
/* 800C79F4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800C79F8  41 82 02 2C */	beq lbl_800C7C24
/* 800C79FC  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 800C7A00  28 00 00 00 */	cmplwi r0, 0
/* 800C7A04  40 82 02 20 */	bne lbl_800C7C24
/* 800C7A08  38 00 00 03 */	li r0, 3
/* 800C7A0C  98 1F 08 4F */	stb r0, 0x84f(r31)
/* 800C7A10  38 00 00 0F */	li r0, 0xf
/* 800C7A14  90 1F 08 C0 */	stw r0, 0x8c0(r31)
/* 800C7A18  48 00 02 0C */	b lbl_800C7C24
lbl_800C7A1C:
/* 800C7A1C  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800C7A20  28 00 00 39 */	cmplwi r0, 0x39
/* 800C7A24  40 82 00 2C */	bne lbl_800C7A50
/* 800C7A28  80 1E 06 10 */	lwz r0, 0x610(r30)
/* 800C7A2C  2C 00 00 01 */	cmpwi r0, 1
/* 800C7A30  40 82 00 20 */	bne lbl_800C7A50
/* 800C7A34  7F C3 F3 78 */	mr r3, r30
/* 800C7A38  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100AD@ha */
/* 800C7A3C  38 84 00 AD */	addi r4, r4, 0x00AD /* 0x000100AD@l */
/* 800C7A40  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800C7A44  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800C7A48  7D 89 03 A6 */	mtctr r12
/* 800C7A4C  4E 80 04 21 */	bctrl 
lbl_800C7A50:
/* 800C7A50  7F C3 F3 78 */	mr r3, r30
/* 800C7A54  38 80 00 FD */	li r4, 0xfd
/* 800C7A58  4B FE 55 29 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800C7A5C  7F C3 F3 78 */	mr r3, r30
/* 800C7A60  38 80 00 01 */	li r4, 1
/* 800C7A64  4B FF 7D 39 */	bl setMetamorphoseModel__9daAlink_cFi
/* 800C7A68  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 800C7A6C  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)  /* 0x80425514@l */
/* 800C7A70  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 800C7A74  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C7A78  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 800C7A7C  C0 03 00 08 */	lfs f0, 8(r3)
/* 800C7A80  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 800C7A84  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800C7A88  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800C7A8C  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800C7A90  D0 1E 34 80 */	stfs f0, 0x3480(r30)
/* 800C7A94  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800C7A98  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800C7A9C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800C7AA0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C7AA4  7C 64 02 14 */	add r3, r4, r0
/* 800C7AA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C7AAC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800C7AB0  C0 42 93 50 */	lfs f2, lit_8247(r2)
/* 800C7AB4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C7AB8  EC 81 00 2A */	fadds f4, f1, f0
/* 800C7ABC  C0 22 92 D0 */	lfs f1, lit_6238(r2)
/* 800C7AC0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800C7AC4  EC 61 00 2A */	fadds f3, f1, f0
/* 800C7AC8  7C 04 04 2E */	lfsx f0, r4, r0
/* 800C7ACC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800C7AD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C7AD4  EC 01 00 2A */	fadds f0, f1, f0
/* 800C7AD8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800C7ADC  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 800C7AE0  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 800C7AE4  38 7E 1D 08 */	addi r3, r30, 0x1d08
/* 800C7AE8  38 81 00 20 */	addi r4, r1, 0x20
/* 800C7AEC  48 1A 02 3D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800C7AF0  7F E3 FB 78 */	mr r3, r31
/* 800C7AF4  38 9E 1D 08 */	addi r4, r30, 0x1d08
/* 800C7AF8  4B FA C9 A9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800C7AFC  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 800C7B00  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 800C7B04  41 82 01 18 */	beq lbl_800C7C1C
/* 800C7B08  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800C7B0C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800C7B10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800C7B14  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800C7B18  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800C7B1C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800C7B20  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800C7B24  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800C7B28  D0 01 00 08 */	stfs f0, 8(r1)
/* 800C7B2C  FC 00 08 18 */	frsp f0, f1
/* 800C7B30  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800C7B34  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800C7B38  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800C7B3C  3B 80 00 00 */	li r28, 0
/* 800C7B40  3B 60 00 00 */	li r27, 0
/* 800C7B44  3B A0 00 00 */	li r29, 0
/* 800C7B48  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800C7B4C  EF E0 08 2A */	fadds f31, f0, f1
lbl_800C7B50:
/* 800C7B50  2C 1B 00 03 */	cmpwi r27, 3
/* 800C7B54  40 82 00 0C */	bne lbl_800C7B60
/* 800C7B58  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 800C7B5C  48 00 00 18 */	b lbl_800C7B74
lbl_800C7B60:
/* 800C7B60  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800C7B64  38 1D 18 E0 */	addi r0, r29, 0x18e0
/* 800C7B68  7C 1E 04 2E */	lfsx f0, r30, r0
/* 800C7B6C  EC 01 00 2A */	fadds f0, f1, f0
/* 800C7B70  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_800C7B74:
/* 800C7B74  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800C7B78  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800C7B7C  7F C3 F3 78 */	mr r3, r30
/* 800C7B80  38 81 00 14 */	addi r4, r1, 0x14
/* 800C7B84  38 A1 00 08 */	addi r5, r1, 8
/* 800C7B88  4B FD A6 11 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800C7B8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C7B90  41 82 00 30 */	beq lbl_800C7BC0
/* 800C7B94  38 7E 1B 5C */	addi r3, r30, 0x1b5c
/* 800C7B98  4B FA E1 75 */	bl dBgS_CheckBWallPoly__FRC13cBgS_PolyInfo
/* 800C7B9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C7BA0  41 82 00 20 */	beq lbl_800C7BC0
/* 800C7BA4  7F E3 FB 78 */	mr r3, r31
/* 800C7BA8  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800C7BAC  4B FA D2 55 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800C7BB0  2C 03 00 07 */	cmpwi r3, 7
/* 800C7BB4  41 82 00 0C */	beq lbl_800C7BC0
/* 800C7BB8  3B 80 00 01 */	li r28, 1
/* 800C7BBC  48 00 00 14 */	b lbl_800C7BD0
lbl_800C7BC0:
/* 800C7BC0  3B 7B 00 01 */	addi r27, r27, 1
/* 800C7BC4  2C 1B 00 04 */	cmpwi r27, 4
/* 800C7BC8  3B BD 00 40 */	addi r29, r29, 0x40
/* 800C7BCC  41 80 FF 84 */	blt lbl_800C7B50
lbl_800C7BD0:
/* 800C7BD0  2C 1C 00 00 */	cmpwi r28, 0
/* 800C7BD4  41 82 00 10 */	beq lbl_800C7BE4
/* 800C7BD8  A8 1E 2F F0 */	lha r0, 0x2ff0(r30)
/* 800C7BDC  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800C7BE0  48 00 00 44 */	b lbl_800C7C24
lbl_800C7BE4:
/* 800C7BE4  38 61 00 20 */	addi r3, r1, 0x20
/* 800C7BE8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800C7BEC  7C 65 1B 78 */	mr r5, r3
/* 800C7BF0  48 27 F4 C5 */	bl PSVECSubtract
/* 800C7BF4  38 61 00 20 */	addi r3, r1, 0x20
/* 800C7BF8  48 19 F5 59 */	bl atan2sY_XZ__4cXyzCFv
/* 800C7BFC  B0 7E 30 0C */	sth r3, 0x300c(r30)
/* 800C7C00  A8 7E 30 0C */	lha r3, 0x300c(r30)
/* 800C7C04  48 29 D4 CD */	bl abs
/* 800C7C08  2C 03 31 C7 */	cmpwi r3, 0x31c7
/* 800C7C0C  40 81 00 18 */	ble lbl_800C7C24
/* 800C7C10  A8 1E 2F F0 */	lha r0, 0x2ff0(r30)
/* 800C7C14  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800C7C18  48 00 00 0C */	b lbl_800C7C24
lbl_800C7C1C:
/* 800C7C1C  38 00 00 00 */	li r0, 0
/* 800C7C20  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_800C7C24:
/* 800C7C24  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C7C28  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800C7C2C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C7C30  38 00 00 00 */	li r0, 0
/* 800C7C34  B0 1E 30 12 */	sth r0, 0x3012(r30)
lbl_800C7C38:
/* 800C7C38  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800C7C3C  D0 1E 34 84 */	stfs f0, 0x3484(r30)
/* 800C7C40  38 60 00 01 */	li r3, 1
lbl_800C7C44:
/* 800C7C44  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 800C7C48  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800C7C4C  39 61 00 50 */	addi r11, r1, 0x50
/* 800C7C50  48 29 A5 D1 */	bl _restgpr_27
/* 800C7C54  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800C7C58  7C 08 03 A6 */	mtlr r0
/* 800C7C5C  38 21 00 60 */	addi r1, r1, 0x60
/* 800C7C60  4E 80 00 20 */	blr 
