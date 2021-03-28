lbl_80809FC4:
/* 80809FC4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80809FC8  7C 08 02 A6 */	mflr r0
/* 80809FCC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80809FD0  39 61 00 50 */	addi r11, r1, 0x50
/* 80809FD4  4B B5 82 08 */	b _savegpr_29
/* 80809FD8  7C 7E 1B 78 */	mr r30, r3
/* 80809FDC  3C 60 80 81 */	lis r3, lit_3925@ha
/* 80809FE0  3B E3 59 94 */	addi r31, r3, lit_3925@l
/* 80809FE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80809FE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80809FEC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80809FF0  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 80809FF4  28 00 00 02 */	cmplwi r0, 2
/* 80809FF8  41 82 00 30 */	beq lbl_8080A028
/* 80809FFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700EA@ha */
/* 8080A000  38 03 00 EA */	addi r0, r3, 0x00EA /* 0x000700EA@l */
/* 8080A004  90 01 00 0C */	stw r0, 0xc(r1)
/* 8080A008  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080A00C  38 81 00 0C */	addi r4, r1, 0xc
/* 8080A010  38 A0 00 00 */	li r5, 0
/* 8080A014  38 C0 FF FF */	li r6, -1
/* 8080A018  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080A01C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080A020  7D 89 03 A6 */	mtctr r12
/* 8080A024  4E 80 04 21 */	bctrl 
lbl_8080A028:
/* 8080A028  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 8080A02C  28 00 00 01 */	cmplwi r0, 1
/* 8080A030  41 82 00 14 */	beq lbl_8080A044
/* 8080A034  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8080A038  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8080A03C  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 8080A040  4B A6 67 00 */	b cLib_chaseF__FPfff
lbl_8080A044:
/* 8080A044  88 1E 06 A1 */	lbz r0, 0x6a1(r30)
/* 8080A048  28 00 00 01 */	cmplwi r0, 1
/* 8080A04C  40 82 00 28 */	bne lbl_8080A074
/* 8080A050  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 8080A054  2C 00 00 00 */	cmpwi r0, 0
/* 8080A058  41 82 00 1C */	beq lbl_8080A074
/* 8080A05C  A8 1E 06 F2 */	lha r0, 0x6f2(r30)
/* 8080A060  2C 00 00 00 */	cmpwi r0, 0
/* 8080A064  40 82 00 10 */	bne lbl_8080A074
/* 8080A068  38 00 00 00 */	li r0, 0
/* 8080A06C  98 1E 06 C9 */	stb r0, 0x6c9(r30)
/* 8080A070  B0 1E 07 08 */	sth r0, 0x708(r30)
lbl_8080A074:
/* 8080A074  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 8080A078  2C 00 00 04 */	cmpwi r0, 4
/* 8080A07C  41 82 04 60 */	beq lbl_8080A4DC
/* 8080A080  40 80 00 28 */	bge lbl_8080A0A8
/* 8080A084  2C 00 00 01 */	cmpwi r0, 1
/* 8080A088  41 82 01 DC */	beq lbl_8080A264
/* 8080A08C  40 80 00 10 */	bge lbl_8080A09C
/* 8080A090  2C 00 00 00 */	cmpwi r0, 0
/* 8080A094  40 80 00 9C */	bge lbl_8080A130
/* 8080A098  48 00 04 C4 */	b lbl_8080A55C
lbl_8080A09C:
/* 8080A09C  2C 00 00 03 */	cmpwi r0, 3
/* 8080A0A0  40 80 04 20 */	bge lbl_8080A4C0
/* 8080A0A4  48 00 02 0C */	b lbl_8080A2B0
lbl_8080A0A8:
/* 8080A0A8  2C 00 00 65 */	cmpwi r0, 0x65
/* 8080A0AC  41 82 00 24 */	beq lbl_8080A0D0
/* 8080A0B0  40 80 04 AC */	bge lbl_8080A55C
/* 8080A0B4  2C 00 00 64 */	cmpwi r0, 0x64
/* 8080A0B8  40 80 00 08 */	bge lbl_8080A0C0
/* 8080A0BC  48 00 04 A0 */	b lbl_8080A55C
lbl_8080A0C0:
/* 8080A0C0  38 00 00 1E */	li r0, 0x1e
/* 8080A0C4  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 8080A0C8  38 00 00 65 */	li r0, 0x65
/* 8080A0CC  90 1E 06 98 */	stw r0, 0x698(r30)
lbl_8080A0D0:
/* 8080A0D0  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8080A0D4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8080A0D8  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8080A0DC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8080A0E0  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8080A0E4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8080A0E8  7F C3 F3 78 */	mr r3, r30
/* 8080A0EC  48 00 AA 05 */	bl setHideType__8daE_YM_cFv
/* 8080A0F0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8080A0F4  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 8080A0F8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8080A0FC  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8080A100  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8080A104  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8080A108  88 1E 06 A6 */	lbz r0, 0x6a6(r30)
/* 8080A10C  28 00 00 01 */	cmplwi r0, 1
/* 8080A110  41 82 00 10 */	beq lbl_8080A120
/* 8080A114  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 8080A118  2C 00 00 00 */	cmpwi r0, 0
/* 8080A11C  40 82 04 40 */	bne lbl_8080A55C
lbl_8080A120:
/* 8080A120  38 00 00 00 */	li r0, 0
/* 8080A124  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 8080A128  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080A12C  48 00 04 30 */	b lbl_8080A55C
lbl_8080A130:
/* 8080A130  38 00 00 1E */	li r0, 0x1e
/* 8080A134  B0 1E 06 F2 */	sth r0, 0x6f2(r30)
/* 8080A138  7F C3 F3 78 */	mr r3, r30
/* 8080A13C  48 00 A6 1D */	bl checkWall__8daE_YM_cFv
/* 8080A140  7F C3 F3 78 */	mr r3, r30
/* 8080A144  38 80 00 0F */	li r4, 0xf
/* 8080A148  38 A0 00 02 */	li r5, 2
/* 8080A14C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080A150  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080A154  4B FF E0 8D */	bl bckSet__8daE_YM_cFiUcff
/* 8080A158  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 8080A15C  28 00 00 02 */	cmplwi r0, 2
/* 8080A160  40 82 00 2C */	bne lbl_8080A18C
/* 8080A164  38 00 00 02 */	li r0, 2
/* 8080A168  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080A16C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8080A170  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 8080A174  38 60 00 00 */	li r3, 0
/* 8080A178  90 7E 07 14 */	stw r3, 0x714(r30)
/* 8080A17C  38 00 00 05 */	li r0, 5
/* 8080A180  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 8080A184  98 7E 06 A5 */	stb r3, 0x6a5(r30)
/* 8080A188  48 00 03 D4 */	b lbl_8080A55C
lbl_8080A18C:
/* 8080A18C  28 00 00 01 */	cmplwi r0, 1
/* 8080A190  40 82 00 A0 */	bne lbl_8080A230
/* 8080A194  88 9E 06 A3 */	lbz r4, 0x6a3(r30)
/* 8080A198  28 04 00 FF */	cmplwi r4, 0xff
/* 8080A19C  41 82 00 2C */	beq lbl_8080A1C8
/* 8080A1A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8080A1A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8080A1A8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8080A1AC  7C 05 07 74 */	extsb r5, r0
/* 8080A1B0  4B 82 B1 B0 */	b isSwitch__10dSv_info_cCFii
/* 8080A1B4  2C 03 00 00 */	cmpwi r3, 0
/* 8080A1B8  40 82 00 10 */	bne lbl_8080A1C8
/* 8080A1BC  38 00 00 04 */	li r0, 4
/* 8080A1C0  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080A1C4  48 00 03 98 */	b lbl_8080A55C
lbl_8080A1C8:
/* 8080A1C8  7F C3 F3 78 */	mr r3, r30
/* 8080A1CC  4B FF FB A1 */	bl setNormalCc__8daE_YM_cFv
/* 8080A1D0  38 00 00 01 */	li r0, 1
/* 8080A1D4  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080A1D8  C0 3E 06 D8 */	lfs f1, 0x6d8(r30)
/* 8080A1DC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8080A1E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080A1E4  40 80 00 28 */	bge lbl_8080A20C
/* 8080A1E8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8080A1EC  4B A5 D7 A0 */	b cM_rndFX__Ff
/* 8080A1F0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8080A1F4  EC 00 08 2A */	fadds f0, f0, f1
/* 8080A1F8  FC 00 00 1E */	fctiwz f0, f0
/* 8080A1FC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8080A200  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8080A204  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 8080A208  48 00 03 54 */	b lbl_8080A55C
lbl_8080A20C:
/* 8080A20C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8080A210  4B A5 D7 7C */	b cM_rndFX__Ff
/* 8080A214  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8080A218  EC 00 08 2A */	fadds f0, f0, f1
/* 8080A21C  FC 00 00 1E */	fctiwz f0, f0
/* 8080A220  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8080A224  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8080A228  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 8080A22C  48 00 03 30 */	b lbl_8080A55C
lbl_8080A230:
/* 8080A230  7F C3 F3 78 */	mr r3, r30
/* 8080A234  4B FF FB 39 */	bl setNormalCc__8daE_YM_cFv
/* 8080A238  38 00 00 01 */	li r0, 1
/* 8080A23C  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080A240  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8080A244  4B A5 D7 48 */	b cM_rndFX__Ff
/* 8080A248  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8080A24C  EC 00 08 2A */	fadds f0, f0, f1
/* 8080A250  FC 00 00 1E */	fctiwz f0, f0
/* 8080A254  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8080A258  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8080A25C  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 8080A260  48 00 02 FC */	b lbl_8080A55C
lbl_8080A264:
/* 8080A264  7F C3 F3 78 */	mr r3, r30
/* 8080A268  4B FF F4 85 */	bl checkSurpriseNear__8daE_YM_cFv
/* 8080A26C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080A270  40 82 02 F4 */	bne lbl_8080A564
/* 8080A274  7F C3 F3 78 */	mr r3, r30
/* 8080A278  4B FF ED 89 */	bl checkWolfBark__8daE_YM_cFv
/* 8080A27C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080A280  40 82 02 E4 */	bne lbl_8080A564
/* 8080A284  7F C3 F3 78 */	mr r3, r30
/* 8080A288  4B FF EB AD */	bl checkWallCrash__8daE_YM_cFv
/* 8080A28C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080A290  40 82 02 D4 */	bne lbl_8080A564
/* 8080A294  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 8080A298  2C 00 00 00 */	cmpwi r0, 0
/* 8080A29C  40 82 02 C0 */	bne lbl_8080A55C
/* 8080A2A0  7F C3 F3 78 */	mr r3, r30
/* 8080A2A4  38 80 00 01 */	li r4, 1
/* 8080A2A8  4B FF FC F5 */	bl setActionMode__8daE_YM_cFi
/* 8080A2AC  48 00 02 B8 */	b lbl_8080A564
lbl_8080A2B0:
/* 8080A2B0  7F C3 F3 78 */	mr r3, r30
/* 8080A2B4  48 00 8D 19 */	bl checkFrinedSamePos__8daE_YM_cFv
/* 8080A2B8  88 1E 06 A6 */	lbz r0, 0x6a6(r30)
/* 8080A2BC  2C 00 00 02 */	cmpwi r0, 2
/* 8080A2C0  41 82 02 9C */	beq lbl_8080A55C
/* 8080A2C4  40 80 00 8C */	bge lbl_8080A350
/* 8080A2C8  2C 00 00 01 */	cmpwi r0, 1
/* 8080A2CC  40 80 00 08 */	bge lbl_8080A2D4
/* 8080A2D0  48 00 00 80 */	b lbl_8080A350
lbl_8080A2D4:
/* 8080A2D4  38 00 00 01 */	li r0, 1
/* 8080A2D8  90 1E 07 18 */	stw r0, 0x718(r30)
/* 8080A2DC  C0 3E 06 D4 */	lfs f1, 0x6d4(r30)
/* 8080A2E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080A2E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080A2E8  41 82 00 10 */	beq lbl_8080A2F8
/* 8080A2EC  38 00 00 04 */	li r0, 4
/* 8080A2F0  90 1E 07 14 */	stw r0, 0x714(r30)
/* 8080A2F4  48 00 00 0C */	b lbl_8080A300
lbl_8080A2F8:
/* 8080A2F8  38 00 00 00 */	li r0, 0
/* 8080A2FC  90 1E 07 14 */	stw r0, 0x714(r30)
lbl_8080A300:
/* 8080A300  38 00 00 00 */	li r0, 0
/* 8080A304  3C 60 80 81 */	lis r3, m_near_obj@ha
/* 8080A308  90 03 5D 5C */	stw r0, m_near_obj@l(r3)
/* 8080A30C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8080A310  3C 60 80 81 */	lis r3, m_obj_dist@ha
/* 8080A314  D0 03 5D 60 */	stfs f0, m_obj_dist@l(r3)
/* 8080A318  3C 60 80 81 */	lis r3, s_obj_sub__FPvPv@ha
/* 8080A31C  38 63 86 98 */	addi r3, r3, s_obj_sub__FPvPv@l
/* 8080A320  7F C4 F3 78 */	mr r4, r30
/* 8080A324  4B 81 70 14 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8080A328  3C 60 80 81 */	lis r3, m_near_obj@ha
/* 8080A32C  80 03 5D 5C */	lwz r0, m_near_obj@l(r3)
/* 8080A330  28 00 00 00 */	cmplwi r0, 0
/* 8080A334  40 82 02 28 */	bne lbl_8080A55C
/* 8080A338  7F C3 F3 78 */	mr r3, r30
/* 8080A33C  38 80 00 02 */	li r4, 2
/* 8080A340  4B FF FC 5D */	bl setActionMode__8daE_YM_cFi
/* 8080A344  38 00 00 00 */	li r0, 0
/* 8080A348  90 1E 07 18 */	stw r0, 0x718(r30)
/* 8080A34C  48 00 02 10 */	b lbl_8080A55C
lbl_8080A350:
/* 8080A350  7F A3 EB 78 */	mr r3, r29
/* 8080A354  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8080A358  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 8080A35C  7D 89 03 A6 */	mtctr r12
/* 8080A360  4E 80 04 21 */	bctrl 
/* 8080A364  2C 03 00 00 */	cmpwi r3, 0
/* 8080A368  41 82 01 F4 */	beq lbl_8080A55C
/* 8080A36C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8080A370  7F A4 EB 78 */	mr r4, r29
/* 8080A374  48 00 B5 C9 */	bl getLeftHandPos__9daPy_py_cCFv
/* 8080A378  38 61 00 10 */	addi r3, r1, 0x10
/* 8080A37C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8080A380  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8080A384  4B A5 C7 B0 */	b __mi__4cXyzCFRC3Vec
/* 8080A388  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8080A38C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8080A390  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8080A394  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8080A398  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8080A39C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8080A3A0  38 61 00 28 */	addi r3, r1, 0x28
/* 8080A3A4  4B B3 CD 94 */	b PSVECSquareMag
/* 8080A3A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080A3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080A3B0  40 81 00 58 */	ble lbl_8080A408
/* 8080A3B4  FC 00 08 34 */	frsqrte f0, f1
/* 8080A3B8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8080A3BC  FC 44 00 32 */	fmul f2, f4, f0
/* 8080A3C0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8080A3C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8080A3C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8080A3CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8080A3D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8080A3D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8080A3D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8080A3DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8080A3E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8080A3E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8080A3E8  FC 44 00 32 */	fmul f2, f4, f0
/* 8080A3EC  FC 00 00 32 */	fmul f0, f0, f0
/* 8080A3F0  FC 01 00 32 */	fmul f0, f1, f0
/* 8080A3F4  FC 03 00 28 */	fsub f0, f3, f0
/* 8080A3F8  FC 02 00 32 */	fmul f0, f2, f0
/* 8080A3FC  FC 21 00 32 */	fmul f1, f1, f0
/* 8080A400  FC 20 08 18 */	frsp f1, f1
/* 8080A404  48 00 00 88 */	b lbl_8080A48C
lbl_8080A408:
/* 8080A408  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8080A40C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080A410  40 80 00 10 */	bge lbl_8080A420
/* 8080A414  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080A418  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8080A41C  48 00 00 70 */	b lbl_8080A48C
lbl_8080A420:
/* 8080A420  D0 21 00 08 */	stfs f1, 8(r1)
/* 8080A424  80 81 00 08 */	lwz r4, 8(r1)
/* 8080A428  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080A42C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080A430  7C 03 00 00 */	cmpw r3, r0
/* 8080A434  41 82 00 14 */	beq lbl_8080A448
/* 8080A438  40 80 00 40 */	bge lbl_8080A478
/* 8080A43C  2C 03 00 00 */	cmpwi r3, 0
/* 8080A440  41 82 00 20 */	beq lbl_8080A460
/* 8080A444  48 00 00 34 */	b lbl_8080A478
lbl_8080A448:
/* 8080A448  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080A44C  41 82 00 0C */	beq lbl_8080A458
/* 8080A450  38 00 00 01 */	li r0, 1
/* 8080A454  48 00 00 28 */	b lbl_8080A47C
lbl_8080A458:
/* 8080A458  38 00 00 02 */	li r0, 2
/* 8080A45C  48 00 00 20 */	b lbl_8080A47C
lbl_8080A460:
/* 8080A460  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080A464  41 82 00 0C */	beq lbl_8080A470
/* 8080A468  38 00 00 05 */	li r0, 5
/* 8080A46C  48 00 00 10 */	b lbl_8080A47C
lbl_8080A470:
/* 8080A470  38 00 00 03 */	li r0, 3
/* 8080A474  48 00 00 08 */	b lbl_8080A47C
lbl_8080A478:
/* 8080A478  38 00 00 04 */	li r0, 4
lbl_8080A47C:
/* 8080A47C  2C 00 00 01 */	cmpwi r0, 1
/* 8080A480  40 82 00 0C */	bne lbl_8080A48C
/* 8080A484  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080A488  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8080A48C:
/* 8080A48C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8080A490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080A494  40 80 00 C8 */	bge lbl_8080A55C
/* 8080A498  38 00 00 14 */	li r0, 0x14
/* 8080A49C  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 8080A4A0  38 00 00 03 */	li r0, 3
/* 8080A4A4  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080A4A8  38 00 00 00 */	li r0, 0
/* 8080A4AC  98 1E 06 A6 */	stb r0, 0x6a6(r30)
/* 8080A4B0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8080A4B4  60 00 40 00 */	ori r0, r0, 0x4000
/* 8080A4B8  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8080A4BC  48 00 00 A0 */	b lbl_8080A55C
lbl_8080A4C0:
/* 8080A4C0  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 8080A4C4  2C 00 00 00 */	cmpwi r0, 0
/* 8080A4C8  40 82 00 94 */	bne lbl_8080A55C
/* 8080A4CC  7F C3 F3 78 */	mr r3, r30
/* 8080A4D0  38 80 00 02 */	li r4, 2
/* 8080A4D4  4B FF FA C9 */	bl setActionMode__8daE_YM_cFi
/* 8080A4D8  48 00 00 84 */	b lbl_8080A55C
lbl_8080A4DC:
/* 8080A4DC  C0 3E 06 D4 */	lfs f1, 0x6d4(r30)
/* 8080A4E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080A4E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080A4E8  41 82 00 10 */	beq lbl_8080A4F8
/* 8080A4EC  38 00 00 04 */	li r0, 4
/* 8080A4F0  90 1E 07 14 */	stw r0, 0x714(r30)
/* 8080A4F4  48 00 00 0C */	b lbl_8080A500
lbl_8080A4F8:
/* 8080A4F8  38 00 00 00 */	li r0, 0
/* 8080A4FC  90 1E 07 14 */	stw r0, 0x714(r30)
lbl_8080A500:
/* 8080A500  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8080A504  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8080A508  88 9E 06 A3 */	lbz r4, 0x6a3(r30)
/* 8080A50C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8080A510  7C 05 07 74 */	extsb r5, r0
/* 8080A514  4B 82 AE 4C */	b isSwitch__10dSv_info_cCFii
/* 8080A518  2C 03 00 00 */	cmpwi r3, 0
/* 8080A51C  41 82 00 40 */	beq lbl_8080A55C
/* 8080A520  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 8080A524  28 00 00 01 */	cmplwi r0, 1
/* 8080A528  40 82 00 34 */	bne lbl_8080A55C
/* 8080A52C  38 00 00 04 */	li r0, 4
/* 8080A530  90 1E 07 14 */	stw r0, 0x714(r30)
/* 8080A534  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 8080A538  28 00 00 00 */	cmplwi r0, 0
/* 8080A53C  41 82 00 14 */	beq lbl_8080A550
/* 8080A540  7F C3 F3 78 */	mr r3, r30
/* 8080A544  38 80 00 0B */	li r4, 0xb
/* 8080A548  4B FF FA 55 */	bl setActionMode__8daE_YM_cFi
/* 8080A54C  48 00 00 10 */	b lbl_8080A55C
lbl_8080A550:
/* 8080A550  7F C3 F3 78 */	mr r3, r30
/* 8080A554  38 80 00 07 */	li r4, 7
/* 8080A558  4B FF FA 45 */	bl setActionMode__8daE_YM_cFi
lbl_8080A55C:
/* 8080A55C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8080A560  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8080A564:
/* 8080A564  39 61 00 50 */	addi r11, r1, 0x50
/* 8080A568  4B B5 7C C0 */	b _restgpr_29
/* 8080A56C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8080A570  7C 08 03 A6 */	mtlr r0
/* 8080A574  38 21 00 50 */	addi r1, r1, 0x50
/* 8080A578  4E 80 00 20 */	blr 
