lbl_80489F74:
/* 80489F74  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80489F78  7C 08 02 A6 */	mflr r0
/* 80489F7C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80489F80  39 61 00 50 */	addi r11, r1, 0x50
/* 80489F84  4B ED 82 51 */	bl _savegpr_27
/* 80489F88  7C 7D 1B 78 */	mr r29, r3
/* 80489F8C  3C 80 80 49 */	lis r4, lit_3874@ha /* 0x8048A590@ha */
/* 80489F90  3B E4 A5 90 */	addi r31, r4, lit_3874@l /* 0x8048A590@l */
/* 80489F94  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80489F98  7C 05 07 74 */	extsb r5, r0
/* 80489F9C  3C 80 80 45 */	lis r4, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80489FA0  88 04 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r4)  /* 0x80450D64@l */
/* 80489FA4  7C 00 07 74 */	extsb r0, r0
/* 80489FA8  7C 05 00 00 */	cmpw r5, r0
/* 80489FAC  41 82 00 0C */	beq lbl_80489FB8
/* 80489FB0  38 60 00 00 */	li r3, 0
/* 80489FB4  48 00 03 AC */	b lbl_8048A360
lbl_80489FB8:
/* 80489FB8  4B FF FF 5D */	bl getSwType__11daTag_Cam_cFv
/* 80489FBC  7C 7C 1B 78 */	mr r28, r3
/* 80489FC0  7F A3 EB 78 */	mr r3, r29
/* 80489FC4  4B FF FF 69 */	bl getSwBit__11daTag_Cam_cFv
/* 80489FC8  3B C0 00 00 */	li r30, 0
/* 80489FCC  3B 60 00 00 */	li r27, 0
/* 80489FD0  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80489FD4  28 04 00 FF */	cmplwi r4, 0xff
/* 80489FD8  41 82 00 48 */	beq lbl_8048A020
/* 80489FDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80489FE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80489FE4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80489FE8  7C 05 07 74 */	extsb r5, r0
/* 80489FEC  4B BA B3 75 */	bl isSwitch__10dSv_info_cCFii
/* 80489FF0  30 03 FF FF */	addic r0, r3, -1
/* 80489FF4  7C 60 19 10 */	subfe r3, r0, r3
/* 80489FF8  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80489FFC  41 82 00 0C */	beq lbl_8048A008
/* 8048A000  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8048A004  40 82 00 14 */	bne lbl_8048A018
lbl_8048A008:
/* 8048A008  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8048A00C  40 82 00 18 */	bne lbl_8048A024
/* 8048A010  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8048A014  40 82 00 10 */	bne lbl_8048A024
lbl_8048A018:
/* 8048A018  3B 60 00 01 */	li r27, 1
/* 8048A01C  48 00 00 08 */	b lbl_8048A024
lbl_8048A020:
/* 8048A020  3B 60 00 01 */	li r27, 1
lbl_8048A024:
/* 8048A024  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8048A028  41 82 02 98 */	beq lbl_8048A2C0
/* 8048A02C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048A030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048A034  80 83 5D B4 */	lwz r4, 0x5db4(r3)
/* 8048A038  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 8048A03C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8048A040  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 8048A044  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8048A048  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 8048A04C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8048A050  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8048A054  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8048A058  41 82 00 28 */	beq lbl_8048A080
/* 8048A05C  C0 04 05 50 */	lfs f0, 0x550(r4)
/* 8048A060  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8048A064  C0 24 05 54 */	lfs f1, 0x554(r4)
/* 8048A068  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8048A06C  C0 04 05 58 */	lfs f0, 0x558(r4)
/* 8048A070  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8048A074  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8048A078  EC 01 00 28 */	fsubs f0, f1, f0
/* 8048A07C  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_8048A080:
/* 8048A080  7F A3 EB 78 */	mr r3, r29
/* 8048A084  4B FF FE E5 */	bl getAreaNoChk__11daTag_Cam_cFv
/* 8048A088  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8048A08C  41 82 00 0C */	beq lbl_8048A098
/* 8048A090  3B C0 00 01 */	li r30, 1
/* 8048A094  48 00 02 2C */	b lbl_8048A2C0
lbl_8048A098:
/* 8048A098  7F A3 EB 78 */	mr r3, r29
/* 8048A09C  4B FF FE C1 */	bl getAreaType__11daTag_Cam_cFv
/* 8048A0A0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8048A0A4  40 82 00 E0 */	bne lbl_8048A184
/* 8048A0A8  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 8048A0AC  2C 00 00 00 */	cmpwi r0, 0
/* 8048A0B0  41 82 00 60 */	beq lbl_8048A110
/* 8048A0B4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8048A0B8  4B B8 2C AD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8048A0BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8048A0C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8048A0C4  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 8048A0C8  7C 00 00 D0 */	neg r0, r0
/* 8048A0CC  7C 04 07 34 */	extsh r4, r0
/* 8048A0D0  4B B8 23 65 */	bl mDoMtx_YrotM__FPA4_fs
/* 8048A0D4  38 61 00 0C */	addi r3, r1, 0xc
/* 8048A0D8  38 81 00 24 */	addi r4, r1, 0x24
/* 8048A0DC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8048A0E0  4B DD CA 55 */	bl __mi__4cXyzCFRC3Vec
/* 8048A0E4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8048A0E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8048A0EC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8048A0F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8048A0F4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8048A0F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8048A0FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8048A100  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8048A104  38 81 00 18 */	addi r4, r1, 0x18
/* 8048A108  38 A1 00 24 */	addi r5, r1, 0x24
/* 8048A10C  4B EB CC 61 */	bl PSMTXMultVec
lbl_8048A110:
/* 8048A110  C0 1D 05 74 */	lfs f0, 0x574(r29)
/* 8048A114  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8048A118  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8048A11C  4C 40 13 82 */	cror 2, 0, 2
/* 8048A120  40 82 01 A0 */	bne lbl_8048A2C0
/* 8048A124  C0 1D 05 80 */	lfs f0, 0x580(r29)
/* 8048A128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048A12C  4C 40 13 82 */	cror 2, 0, 2
/* 8048A130  40 82 01 90 */	bne lbl_8048A2C0
/* 8048A134  C0 1D 05 78 */	lfs f0, 0x578(r29)
/* 8048A138  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8048A13C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8048A140  4C 40 13 82 */	cror 2, 0, 2
/* 8048A144  40 82 01 7C */	bne lbl_8048A2C0
/* 8048A148  C0 1D 05 84 */	lfs f0, 0x584(r29)
/* 8048A14C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048A150  4C 40 13 82 */	cror 2, 0, 2
/* 8048A154  40 82 01 6C */	bne lbl_8048A2C0
/* 8048A158  C0 1D 05 7C */	lfs f0, 0x57c(r29)
/* 8048A15C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8048A160  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8048A164  4C 40 13 82 */	cror 2, 0, 2
/* 8048A168  40 82 01 58 */	bne lbl_8048A2C0
/* 8048A16C  C0 1D 05 88 */	lfs f0, 0x588(r29)
/* 8048A170  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048A174  4C 40 13 82 */	cror 2, 0, 2
/* 8048A178  40 82 01 48 */	bne lbl_8048A2C0
/* 8048A17C  3B C0 00 01 */	li r30, 1
/* 8048A180  48 00 01 40 */	b lbl_8048A2C0
lbl_8048A184:
/* 8048A184  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8048A188  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8048A18C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8048A190  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8048A194  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8048A198  EC 01 00 28 */	fsubs f0, f1, f0
/* 8048A19C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8048A1A0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8048A1A4  EC 81 00 2A */	fadds f4, f1, f0
/* 8048A1A8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8048A1AC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8048A1B0  40 81 00 58 */	ble lbl_8048A208
/* 8048A1B4  FC 00 20 34 */	frsqrte f0, f4
/* 8048A1B8  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8048A1BC  FC 23 00 32 */	fmul f1, f3, f0
/* 8048A1C0  C8 5F 00 78 */	lfd f2, 0x78(r31)
/* 8048A1C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8048A1C8  FC 04 00 32 */	fmul f0, f4, f0
/* 8048A1CC  FC 02 00 28 */	fsub f0, f2, f0
/* 8048A1D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8048A1D4  FC 23 00 32 */	fmul f1, f3, f0
/* 8048A1D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8048A1DC  FC 04 00 32 */	fmul f0, f4, f0
/* 8048A1E0  FC 02 00 28 */	fsub f0, f2, f0
/* 8048A1E4  FC 01 00 32 */	fmul f0, f1, f0
/* 8048A1E8  FC 23 00 32 */	fmul f1, f3, f0
/* 8048A1EC  FC 00 00 32 */	fmul f0, f0, f0
/* 8048A1F0  FC 04 00 32 */	fmul f0, f4, f0
/* 8048A1F4  FC 02 00 28 */	fsub f0, f2, f0
/* 8048A1F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8048A1FC  FC 84 00 32 */	fmul f4, f4, f0
/* 8048A200  FC 80 20 18 */	frsp f4, f4
/* 8048A204  48 00 00 88 */	b lbl_8048A28C
lbl_8048A208:
/* 8048A208  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 8048A20C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8048A210  40 80 00 10 */	bge lbl_8048A220
/* 8048A214  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8048A218  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8048A21C  48 00 00 70 */	b lbl_8048A28C
lbl_8048A220:
/* 8048A220  D0 81 00 08 */	stfs f4, 8(r1)
/* 8048A224  80 81 00 08 */	lwz r4, 8(r1)
/* 8048A228  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8048A22C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8048A230  7C 03 00 00 */	cmpw r3, r0
/* 8048A234  41 82 00 14 */	beq lbl_8048A248
/* 8048A238  40 80 00 40 */	bge lbl_8048A278
/* 8048A23C  2C 03 00 00 */	cmpwi r3, 0
/* 8048A240  41 82 00 20 */	beq lbl_8048A260
/* 8048A244  48 00 00 34 */	b lbl_8048A278
lbl_8048A248:
/* 8048A248  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8048A24C  41 82 00 0C */	beq lbl_8048A258
/* 8048A250  38 00 00 01 */	li r0, 1
/* 8048A254  48 00 00 28 */	b lbl_8048A27C
lbl_8048A258:
/* 8048A258  38 00 00 02 */	li r0, 2
/* 8048A25C  48 00 00 20 */	b lbl_8048A27C
lbl_8048A260:
/* 8048A260  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8048A264  41 82 00 0C */	beq lbl_8048A270
/* 8048A268  38 00 00 05 */	li r0, 5
/* 8048A26C  48 00 00 10 */	b lbl_8048A27C
lbl_8048A270:
/* 8048A270  38 00 00 03 */	li r0, 3
/* 8048A274  48 00 00 08 */	b lbl_8048A27C
lbl_8048A278:
/* 8048A278  38 00 00 04 */	li r0, 4
lbl_8048A27C:
/* 8048A27C  2C 00 00 01 */	cmpwi r0, 1
/* 8048A280  40 82 00 0C */	bne lbl_8048A28C
/* 8048A284  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8048A288  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8048A28C:
/* 8048A28C  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 8048A290  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8048A294  40 80 00 2C */	bge lbl_8048A2C0
/* 8048A298  C0 1D 05 78 */	lfs f0, 0x578(r29)
/* 8048A29C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8048A2A0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8048A2A4  4C 40 13 82 */	cror 2, 0, 2
/* 8048A2A8  40 82 00 18 */	bne lbl_8048A2C0
/* 8048A2AC  C0 1D 05 84 */	lfs f0, 0x584(r29)
/* 8048A2B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048A2B4  4C 40 13 82 */	cror 2, 0, 2
/* 8048A2B8  40 82 00 08 */	bne lbl_8048A2C0
/* 8048A2BC  3B C0 00 01 */	li r30, 1
lbl_8048A2C0:
/* 8048A2C0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8048A2C4  41 82 00 98 */	beq lbl_8048A35C
/* 8048A2C8  7F A3 EB 78 */	mr r3, r29
/* 8048A2CC  4B FF FC 55 */	bl getPrio__11daTag_Cam_cFv
/* 8048A2D0  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 8048A2D4  7F A3 EB 78 */	mr r3, r29
/* 8048A2D8  4B FF FC 61 */	bl getCondition__11daTag_Cam_cFv
/* 8048A2DC  7C 7E 1B 78 */	mr r30, r3
/* 8048A2E0  81 9D 05 70 */	lwz r12, 0x570(r29)
/* 8048A2E4  7D 89 03 A6 */	mtctr r12
/* 8048A2E8  4E 80 04 21 */	bctrl 
/* 8048A2EC  7C 7C 1B 78 */	mr r28, r3
/* 8048A2F0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8048A2F4  28 00 00 FF */	cmplwi r0, 0xff
/* 8048A2F8  40 82 00 10 */	bne lbl_8048A308
/* 8048A2FC  63 60 80 00 */	ori r0, r27, 0x8000
/* 8048A300  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 8048A304  48 00 00 20 */	b lbl_8048A324
lbl_8048A308:
/* 8048A308  28 00 00 FA */	cmplwi r0, 0xfa
/* 8048A30C  40 82 00 18 */	bne lbl_8048A324
/* 8048A310  4B CF 73 31 */	bl dCam_getBody__Fv
/* 8048A314  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 8048A318  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 8048A31C  41 82 00 08 */	beq lbl_8048A324
/* 8048A320  3B 80 00 01 */	li r28, 1
lbl_8048A324:
/* 8048A324  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8048A328  41 82 00 34 */	beq lbl_8048A35C
/* 8048A32C  7F A3 EB 78 */	mr r3, r29
/* 8048A330  4B FF FC 15 */	bl getCameraId__11daTag_Cam_cFv
/* 8048A334  7C 7E 1B 78 */	mr r30, r3
/* 8048A338  7F A3 EB 78 */	mr r3, r29
/* 8048A33C  4B FF FC 15 */	bl getRailID__11daTag_Cam_cFv
/* 8048A340  7C 7C 1B 78 */	mr r28, r3
/* 8048A344  4B CF 72 FD */	bl dCam_getBody__Fv
/* 8048A348  7F A4 EB 78 */	mr r4, r29
/* 8048A34C  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 8048A350  7F 66 DB 78 */	mr r6, r27
/* 8048A354  7F 87 E3 78 */	mr r7, r28
/* 8048A358  4B CD 92 01 */	bl SetTagData__9dCamera_cFP10fopAc_ac_clUsUc
lbl_8048A35C:
/* 8048A35C  38 60 00 01 */	li r3, 1
lbl_8048A360:
/* 8048A360  39 61 00 50 */	addi r11, r1, 0x50
/* 8048A364  4B ED 7E BD */	bl _restgpr_27
/* 8048A368  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8048A36C  7C 08 03 A6 */	mtlr r0
/* 8048A370  38 21 00 50 */	addi r1, r1, 0x50
/* 8048A374  4E 80 00 20 */	blr 
