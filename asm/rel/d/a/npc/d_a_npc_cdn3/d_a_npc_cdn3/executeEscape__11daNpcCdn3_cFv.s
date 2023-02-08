lbl_8097A028:
/* 8097A028  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8097A02C  7C 08 02 A6 */	mflr r0
/* 8097A030  90 01 00 64 */	stw r0, 0x64(r1)
/* 8097A034  39 61 00 60 */	addi r11, r1, 0x60
/* 8097A038  4B 9E 81 A5 */	bl _savegpr_29
/* 8097A03C  7C 7E 1B 78 */	mr r30, r3
/* 8097A040  3C 80 80 98 */	lis r4, lit_4037@ha /* 0x8097F540@ha */
/* 8097A044  3B E4 F5 40 */	addi r31, r4, lit_4037@l /* 0x8097F540@l */
/* 8097A048  80 03 0B 68 */	lwz r0, 0xb68(r3)
/* 8097A04C  28 00 00 00 */	cmplwi r0, 0
/* 8097A050  40 82 00 A4 */	bne lbl_8097A0F4
/* 8097A054  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 8097A058  38 80 00 01 */	li r4, 1
/* 8097A05C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8097A060  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8097A064  40 82 00 18 */	bne lbl_8097A07C
/* 8097A068  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8097A06C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8097A070  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8097A074  41 82 00 08 */	beq lbl_8097A07C
/* 8097A078  38 80 00 00 */	li r4, 0
lbl_8097A07C:
/* 8097A07C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8097A080  41 82 00 48 */	beq lbl_8097A0C8
/* 8097A084  7F C3 F3 78 */	mr r3, r30
/* 8097A088  38 80 00 04 */	li r4, 4
/* 8097A08C  80 BE 0B 58 */	lwz r5, 0xb58(r30)
/* 8097A090  4B 7D E0 61 */	bl getAnmP__10daNpcCd2_cFii
/* 8097A094  7C 64 1B 78 */	mr r4, r3
/* 8097A098  7F C3 F3 78 */	mr r3, r30
/* 8097A09C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8097A0A0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8097A0A4  38 A0 00 02 */	li r5, 2
/* 8097A0A8  38 C0 00 00 */	li r6, 0
/* 8097A0AC  38 E0 FF FF */	li r7, -1
/* 8097A0B0  4B 7D EE 51 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097A0B4  38 7E 05 94 */	addi r3, r30, 0x594
/* 8097A0B8  38 80 00 00 */	li r4, 0
/* 8097A0BC  4B 94 6D 5D */	bl playVoice__17Z2CreatureCitizenFi
/* 8097A0C0  38 00 00 01 */	li r0, 1
/* 8097A0C4  90 1E 0B 68 */	stw r0, 0xb68(r30)
lbl_8097A0C8:
/* 8097A0C8  7F C3 F3 78 */	mr r3, r30
/* 8097A0CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097A0D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097A0D4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8097A0D8  4B 6A 06 39 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8097A0DC  7C 64 1B 78 */	mr r4, r3
/* 8097A0E0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8097A0E4  38 A0 00 03 */	li r5, 3
/* 8097A0E8  38 C0 06 00 */	li r6, 0x600
/* 8097A0EC  4B 8F 65 1D */	bl cLib_addCalcAngleS2__FPssss
/* 8097A0F0  48 00 02 90 */	b lbl_8097A380
lbl_8097A0F4:
/* 8097A0F4  28 00 00 01 */	cmplwi r0, 1
/* 8097A0F8  40 82 02 88 */	bne lbl_8097A380
/* 8097A0FC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8097A100  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8097A104  41 82 00 08 */	beq lbl_8097A10C
/* 8097A108  4B 69 FB 75 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8097A10C:
/* 8097A10C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8097A110  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8097A114  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8097A118  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8097A11C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8097A120  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8097A124  38 7E 0A D0 */	addi r3, r30, 0xad0
/* 8097A128  38 81 00 18 */	addi r4, r1, 0x18
/* 8097A12C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8097A130  4B 7D FA E5 */	bl checkPoint__11PathTrace_cF4cXyzf
/* 8097A134  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8097A138  41 82 00 48 */	beq lbl_8097A180
/* 8097A13C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8097A140  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8097A144  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8097A148  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8097A14C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8097A150  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8097A154  38 7E 0A D0 */	addi r3, r30, 0xad0
/* 8097A158  38 81 00 0C */	addi r4, r1, 0xc
/* 8097A15C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8097A160  4B 7D FC 61 */	bl checkPathEnd__11PathTrace_cF4cXyzf
/* 8097A164  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8097A168  41 82 00 0C */	beq lbl_8097A174
/* 8097A16C  7F C3 F3 78 */	mr r3, r30
/* 8097A170  4B 69 FB 0D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8097A174:
/* 8097A174  38 7E 0A D0 */	addi r3, r30, 0xad0
/* 8097A178  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8097A17C  4B 7D FE 1D */	bl setNextPoint__11PathTrace_cFR4cXyz
lbl_8097A180:
/* 8097A180  38 7E 0A D0 */	addi r3, r30, 0xad0
/* 8097A184  7F C4 F3 78 */	mr r4, r30
/* 8097A188  4B 7E 01 E9 */	bl checkObstacle__11PathTrace_cFP10fopAc_ac_c
/* 8097A18C  38 7E 0A D0 */	addi r3, r30, 0xad0
/* 8097A190  38 81 00 24 */	addi r4, r1, 0x24
/* 8097A194  4B 7D FC C1 */	bl getTargetPoint__11PathTrace_cFP3Vec
/* 8097A198  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8097A19C  38 81 00 24 */	addi r4, r1, 0x24
/* 8097A1A0  4B 8F 6A 65 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8097A1A4  7C 64 1B 78 */	mr r4, r3
/* 8097A1A8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8097A1AC  38 A0 00 03 */	li r5, 3
/* 8097A1B0  38 C0 06 00 */	li r6, 0x600
/* 8097A1B4  4B 8F 64 55 */	bl cLib_addCalcAngleS2__FPssss
/* 8097A1B8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8097A1BC  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 8097A1C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8097A1C4  41 82 00 60 */	beq lbl_8097A224
/* 8097A1C8  3B A0 00 00 */	li r29, 0
/* 8097A1CC  3C 60 80 98 */	lis r3, __vt__8cM3dGPla@ha /* 0x80980738@ha */
/* 8097A1D0  38 03 07 38 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80980738@l */
/* 8097A1D4  90 01 00 40 */	stw r0, 0x40(r1)
/* 8097A1D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097A1DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097A1E0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8097A1E4  38 9E 07 28 */	addi r4, r30, 0x728
/* 8097A1E8  38 A1 00 30 */	addi r5, r1, 0x30
/* 8097A1EC  4B 6F A5 59 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8097A1F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8097A1F4  41 82 00 14 */	beq lbl_8097A208
/* 8097A1F8  38 61 00 30 */	addi r3, r1, 0x30
/* 8097A1FC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8097A200  4B 6A 39 D9 */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 8097A204  7C 7D 1B 78 */	mr r29, r3
lbl_8097A208:
/* 8097A208  7F A0 07 35 */	extsh. r0, r29
/* 8097A20C  41 82 00 0C */	beq lbl_8097A218
/* 8097A210  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8097A214  D0 1E 0B 64 */	stfs f0, 0xb64(r30)
lbl_8097A218:
/* 8097A218  3C 60 80 98 */	lis r3, __vt__8cM3dGPla@ha /* 0x80980738@ha */
/* 8097A21C  38 03 07 38 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80980738@l */
/* 8097A220  90 01 00 40 */	stw r0, 0x40(r1)
lbl_8097A224:
/* 8097A224  7F C3 F3 78 */	mr r3, r30
/* 8097A228  48 00 09 B5 */	bl setAngle__11daNpcCdn3_cFv
/* 8097A22C  7F C3 F3 78 */	mr r3, r30
/* 8097A230  48 00 09 B9 */	bl pathMoveF__11daNpcCdn3_cFv
/* 8097A234  38 7E 06 38 */	addi r3, r30, 0x638
/* 8097A238  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097A23C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097A240  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8097A244  4B 6F C8 69 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8097A248  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 8097A24C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8097A250  41 82 01 28 */	beq lbl_8097A378
/* 8097A254  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8097A258  38 9E 04 BC */	addi r4, r30, 0x4bc
/* 8097A25C  4B 9C D1 41 */	bl PSVECSquareDistance
/* 8097A260  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8097A264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8097A268  40 81 00 58 */	ble lbl_8097A2C0
/* 8097A26C  FC 00 08 34 */	frsqrte f0, f1
/* 8097A270  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8097A274  FC 44 00 32 */	fmul f2, f4, f0
/* 8097A278  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8097A27C  FC 00 00 32 */	fmul f0, f0, f0
/* 8097A280  FC 01 00 32 */	fmul f0, f1, f0
/* 8097A284  FC 03 00 28 */	fsub f0, f3, f0
/* 8097A288  FC 02 00 32 */	fmul f0, f2, f0
/* 8097A28C  FC 44 00 32 */	fmul f2, f4, f0
/* 8097A290  FC 00 00 32 */	fmul f0, f0, f0
/* 8097A294  FC 01 00 32 */	fmul f0, f1, f0
/* 8097A298  FC 03 00 28 */	fsub f0, f3, f0
/* 8097A29C  FC 02 00 32 */	fmul f0, f2, f0
/* 8097A2A0  FC 44 00 32 */	fmul f2, f4, f0
/* 8097A2A4  FC 00 00 32 */	fmul f0, f0, f0
/* 8097A2A8  FC 01 00 32 */	fmul f0, f1, f0
/* 8097A2AC  FC 03 00 28 */	fsub f0, f3, f0
/* 8097A2B0  FC 02 00 32 */	fmul f0, f2, f0
/* 8097A2B4  FC 21 00 32 */	fmul f1, f1, f0
/* 8097A2B8  FC 20 08 18 */	frsp f1, f1
/* 8097A2BC  48 00 00 88 */	b lbl_8097A344
lbl_8097A2C0:
/* 8097A2C0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8097A2C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8097A2C8  40 80 00 10 */	bge lbl_8097A2D8
/* 8097A2CC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8097A2D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8097A2D4  48 00 00 70 */	b lbl_8097A344
lbl_8097A2D8:
/* 8097A2D8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8097A2DC  80 81 00 08 */	lwz r4, 8(r1)
/* 8097A2E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8097A2E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8097A2E8  7C 03 00 00 */	cmpw r3, r0
/* 8097A2EC  41 82 00 14 */	beq lbl_8097A300
/* 8097A2F0  40 80 00 40 */	bge lbl_8097A330
/* 8097A2F4  2C 03 00 00 */	cmpwi r3, 0
/* 8097A2F8  41 82 00 20 */	beq lbl_8097A318
/* 8097A2FC  48 00 00 34 */	b lbl_8097A330
lbl_8097A300:
/* 8097A300  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8097A304  41 82 00 0C */	beq lbl_8097A310
/* 8097A308  38 00 00 01 */	li r0, 1
/* 8097A30C  48 00 00 28 */	b lbl_8097A334
lbl_8097A310:
/* 8097A310  38 00 00 02 */	li r0, 2
/* 8097A314  48 00 00 20 */	b lbl_8097A334
lbl_8097A318:
/* 8097A318  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8097A31C  41 82 00 0C */	beq lbl_8097A328
/* 8097A320  38 00 00 05 */	li r0, 5
/* 8097A324  48 00 00 10 */	b lbl_8097A334
lbl_8097A328:
/* 8097A328  38 00 00 03 */	li r0, 3
/* 8097A32C  48 00 00 08 */	b lbl_8097A334
lbl_8097A330:
/* 8097A330  38 00 00 04 */	li r0, 4
lbl_8097A334:
/* 8097A334  2C 00 00 01 */	cmpwi r0, 1
/* 8097A338  40 82 00 0C */	bne lbl_8097A344
/* 8097A33C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8097A340  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8097A344:
/* 8097A344  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8097A348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8097A34C  40 80 00 2C */	bge lbl_8097A378
/* 8097A350  88 7E 0B 99 */	lbz r3, 0xb99(r30)
/* 8097A354  38 03 00 01 */	addi r0, r3, 1
/* 8097A358  98 1E 0B 99 */	stb r0, 0xb99(r30)
/* 8097A35C  88 1E 0B 99 */	lbz r0, 0xb99(r30)
/* 8097A360  28 00 00 1E */	cmplwi r0, 0x1e
/* 8097A364  40 81 00 1C */	ble lbl_8097A380
/* 8097A368  7F C3 F3 78 */	mr r3, r30
/* 8097A36C  38 80 00 05 */	li r4, 5
/* 8097A370  4B FF EA 65 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
/* 8097A374  48 00 00 0C */	b lbl_8097A380
lbl_8097A378:
/* 8097A378  38 00 00 00 */	li r0, 0
/* 8097A37C  98 1E 0B 99 */	stb r0, 0xb99(r30)
lbl_8097A380:
/* 8097A380  39 61 00 60 */	addi r11, r1, 0x60
/* 8097A384  4B 9E 7E A5 */	bl _restgpr_29
/* 8097A388  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8097A38C  7C 08 03 A6 */	mtlr r0
/* 8097A390  38 21 00 60 */	addi r1, r1, 0x60
/* 8097A394  4E 80 00 20 */	blr 
