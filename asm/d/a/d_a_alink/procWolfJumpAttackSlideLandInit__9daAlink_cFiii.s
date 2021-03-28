lbl_8013A8FC:
/* 8013A8FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013A900  7C 08 02 A6 */	mflr r0
/* 8013A904  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013A908  39 61 00 20 */	addi r11, r1, 0x20
/* 8013A90C  48 22 78 CD */	bl _savegpr_28
/* 8013A910  7C 7D 1B 78 */	mr r29, r3
/* 8013A914  7C 9C 23 78 */	mr r28, r4
/* 8013A918  7C BE 2B 78 */	mr r30, r5
/* 8013A91C  7C DF 33 78 */	mr r31, r6
/* 8013A920  38 80 01 1E */	li r4, 0x11e
/* 8013A924  4B F8 76 49 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013A928  80 7D 27 EC */	lwz r3, 0x27ec(r29)
/* 8013A92C  28 03 00 00 */	cmplwi r3, 0
/* 8013A930  41 82 00 24 */	beq lbl_8013A954
/* 8013A934  2C 1C 00 00 */	cmpwi r28, 0
/* 8013A938  41 82 00 1C */	beq lbl_8013A954
/* 8013A93C  88 03 04 96 */	lbz r0, 0x496(r3)
/* 8013A940  28 00 00 02 */	cmplwi r0, 2
/* 8013A944  40 82 00 1C */	bne lbl_8013A960
/* 8013A948  A0 03 05 8E */	lhz r0, 0x58e(r3)
/* 8013A94C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8013A950  41 82 00 10 */	beq lbl_8013A960
lbl_8013A954:
/* 8013A954  38 00 00 00 */	li r0, 0
/* 8013A958  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 8013A95C  48 00 00 0C */	b lbl_8013A968
lbl_8013A960:
/* 8013A960  38 00 00 01 */	li r0, 1
/* 8013A964  B0 1D 30 10 */	sth r0, 0x3010(r29)
lbl_8013A968:
/* 8013A968  80 9D 27 EC */	lwz r4, 0x27ec(r29)
/* 8013A96C  28 04 00 00 */	cmplwi r4, 0
/* 8013A970  41 82 00 34 */	beq lbl_8013A9A4
/* 8013A974  88 04 04 96 */	lbz r0, 0x496(r4)
/* 8013A978  28 00 00 02 */	cmplwi r0, 2
/* 8013A97C  40 82 00 28 */	bne lbl_8013A9A4
/* 8013A980  2C 1C 00 00 */	cmpwi r28, 0
/* 8013A984  41 82 00 20 */	beq lbl_8013A9A4
/* 8013A988  A0 04 05 8E */	lhz r0, 0x58e(r4)
/* 8013A98C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8013A990  40 82 00 14 */	bne lbl_8013A9A4
/* 8013A994  7F A3 EB 78 */	mr r3, r29
/* 8013A998  4B ED FE 05 */	bl fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8013A99C  2C 03 50 00 */	cmpwi r3, 0x5000
/* 8013A9A0  41 81 00 0C */	bgt lbl_8013A9AC
lbl_8013A9A4:
/* 8013A9A4  2C 1F 00 00 */	cmpwi r31, 0
/* 8013A9A8  41 82 00 60 */	beq lbl_8013AA08
lbl_8013A9AC:
/* 8013A9AC  7F A3 EB 78 */	mr r3, r29
/* 8013A9B0  38 80 00 54 */	li r4, 0x54
/* 8013A9B4  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlAtLand_c0@ha
/* 8013A9B8  38 A5 F6 18 */	addi r5, r5, m__22daAlinkHIO_wlAtLand_c0@l
/* 8013A9BC  38 A5 00 28 */	addi r5, r5, 0x28
/* 8013A9C0  4B FE EE 89 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013A9C4  38 00 00 01 */	li r0, 1
/* 8013A9C8  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 8013A9CC  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8013A9D0  38 63 56 1C */	addi r3, r3, l_wolfBaseAnime@l
/* 8013A9D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013A9D8  FC 40 00 50 */	fneg f2, f0
/* 8013A9DC  C0 23 00 04 */	lfs f1, 4(r3)
/* 8013A9E0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8013A9E4  FC 00 00 50 */	fneg f0, f0
/* 8013A9E8  D0 1D 35 88 */	stfs f0, 0x3588(r29)
/* 8013A9EC  D0 3D 35 8C */	stfs f1, 0x358c(r29)
/* 8013A9F0  D0 5D 35 90 */	stfs f2, 0x3590(r29)
/* 8013A9F4  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtLand_c0@ha
/* 8013A9F8  38 63 F6 18 */	addi r3, r3, m__22daAlinkHIO_wlAtLand_c0@l
/* 8013A9FC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8013AA00  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 8013AA04  48 00 00 50 */	b lbl_8013AA54
lbl_8013AA08:
/* 8013AA08  7F A3 EB 78 */	mr r3, r29
/* 8013AA0C  38 80 00 53 */	li r4, 0x53
/* 8013AA10  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlAtLand_c0@ha
/* 8013AA14  38 A5 F6 18 */	addi r5, r5, m__22daAlinkHIO_wlAtLand_c0@l
/* 8013AA18  38 A5 00 14 */	addi r5, r5, 0x14
/* 8013AA1C  4B FE EE 2D */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013AA20  38 00 00 00 */	li r0, 0
/* 8013AA24  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 8013AA28  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8013AA2C  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8013AA30  D0 1D 35 88 */	stfs f0, 0x3588(r29)
/* 8013AA34  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013AA38  D0 1D 35 8C */	stfs f0, 0x358c(r29)
/* 8013AA3C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013AA40  D0 1D 35 90 */	stfs f0, 0x3590(r29)
/* 8013AA44  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtLand_c0@ha
/* 8013AA48  38 63 F6 18 */	addi r3, r3, m__22daAlinkHIO_wlAtLand_c0@l
/* 8013AA4C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8013AA50  D0 1D 34 78 */	stfs f0, 0x3478(r29)
lbl_8013AA54:
/* 8013AA54  38 00 00 04 */	li r0, 4
/* 8013AA58  98 1D 2F 9D */	stb r0, 0x2f9d(r29)
/* 8013AA5C  7F A3 EB 78 */	mr r3, r29
/* 8013AA60  38 80 00 01 */	li r4, 1
/* 8013AA64  4B FE 67 5D */	bl setFootEffectProcType__9daAlink_cFi
/* 8013AA68  B3 FD 30 08 */	sth r31, 0x3008(r29)
/* 8013AA6C  C0 3D 33 98 */	lfs f1, 0x3398(r29)
/* 8013AA70  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 8013AA74  EC 01 00 32 */	fmuls f0, f1, f0
/* 8013AA78  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8013AA7C  2C 1E 00 00 */	cmpwi r30, 0
/* 8013AA80  41 82 00 0C */	beq lbl_8013AA8C
/* 8013AA84  38 00 00 04 */	li r0, 4
/* 8013AA88  98 1D 2F 99 */	stb r0, 0x2f99(r29)
lbl_8013AA8C:
/* 8013AA8C  38 80 00 00 */	li r4, 0
/* 8013AA90  B0 9D 30 12 */	sth r4, 0x3012(r29)
/* 8013AA94  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAttack_c0@ha
/* 8013AA98  38 63 F7 A4 */	addi r3, r3, m__22daAlinkHIO_wlAttack_c0@l
/* 8013AA9C  A8 03 00 16 */	lha r0, 0x16(r3)
/* 8013AAA0  B0 1D 30 7E */	sth r0, 0x307e(r29)
/* 8013AAA4  98 9D 2F 98 */	stb r4, 0x2f98(r29)
/* 8013AAA8  38 60 00 01 */	li r3, 1
/* 8013AAAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8013AAB0  48 22 77 75 */	bl _restgpr_28
/* 8013AAB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013AAB8  7C 08 03 A6 */	mtlr r0
/* 8013AABC  38 21 00 20 */	addi r1, r1, 0x20
/* 8013AAC0  4E 80 00 20 */	blr 
