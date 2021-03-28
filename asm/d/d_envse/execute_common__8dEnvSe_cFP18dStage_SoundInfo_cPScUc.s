lbl_80182FD8:
/* 80182FD8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80182FDC  7C 08 02 A6 */	mflr r0
/* 80182FE0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80182FE4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80182FE8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80182FEC  39 61 00 60 */	addi r11, r1, 0x60
/* 80182FF0  48 1D F1 D1 */	bl _savegpr_22
/* 80182FF4  7C 7E 1B 78 */	mr r30, r3
/* 80182FF8  7C BD 2B 78 */	mr r29, r5
/* 80182FFC  7C D6 33 78 */	mr r22, r6
/* 80183000  8B 6D 87 E4 */	lbz r27, struct_80450D64+0x0(r13)
/* 80183004  7F 7B 07 74 */	extsb r27, r27
/* 80183008  7F 7C DB 78 */	mr r28, r27
/* 8018300C  3B 20 00 00 */	li r25, 0
/* 80183010  28 04 00 00 */	cmplwi r4, 0
/* 80183014  40 82 00 0C */	bne lbl_80183020
/* 80183018  38 60 00 01 */	li r3, 1
/* 8018301C  48 00 04 44 */	b lbl_80183460
lbl_80183020:
/* 80183020  83 44 00 00 */	lwz r26, 0(r4)
/* 80183024  83 E4 00 04 */	lwz r31, 4(r4)
/* 80183028  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8018302C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80183030  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80183034  7C 00 07 74 */	extsb r0, r0
/* 80183038  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8018303C  7C 63 02 14 */	add r3, r3, r0
/* 80183040  80 83 5D 74 */	lwz r4, 0x5d74(r3)
/* 80183044  38 61 00 08 */	addi r3, r1, 8
/* 80183048  38 84 02 48 */	addi r4, r4, 0x248
/* 8018304C  4B FF EE 19 */	bl Eye__9dCamera_cFv
/* 80183050  C0 01 00 08 */	lfs f0, 8(r1)
/* 80183054  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80183058  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8018305C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80183060  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80183064  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80183068  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8018306C  40 82 00 08 */	bne lbl_80183074
/* 80183070  3B 80 FF FF */	li r28, -1
lbl_80183074:
/* 80183074  3C 60 80 39 */	lis r3, d_d_envse__stringBase0@ha
/* 80183078  3B 03 43 08 */	addi r24, r3, d_d_envse__stringBase0@l
/* 8018307C  48 00 03 D8 */	b lbl_80183454
lbl_80183080:
/* 80183080  7F E3 FB 78 */	mr r3, r31
/* 80183084  7F 04 C3 78 */	mr r4, r24
/* 80183088  38 A0 00 06 */	li r5, 6
/* 8018308C  48 1E 30 01 */	bl memcmp
/* 80183090  2C 03 00 00 */	cmpwi r3, 0
/* 80183094  40 82 00 6C */	bne lbl_80183100
/* 80183098  88 1D 00 00 */	lbz r0, 0(r29)
/* 8018309C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801830A0  40 82 00 38 */	bne lbl_801830D8
/* 801830A4  88 9F 00 17 */	lbz r4, 0x17(r31)
/* 801830A8  28 04 00 00 */	cmplwi r4, 0
/* 801830AC  41 82 00 20 */	beq lbl_801830CC
/* 801830B0  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 801830B4  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 801830B8  88 BF 00 14 */	lbz r5, 0x14(r31)
/* 801830BC  88 DF 00 19 */	lbz r6, 0x19(r31)
/* 801830C0  88 FF 00 1A */	lbz r7, 0x1a(r31)
/* 801830C4  39 1F 00 08 */	addi r8, r31, 8
/* 801830C8  48 14 3B BD */	bl initStaticEnvSe__10Z2EnvSeMgrFUcUcUcUcP3Vec
lbl_801830CC:
/* 801830CC  88 1D 00 00 */	lbz r0, 0(r29)
/* 801830D0  60 00 00 01 */	ori r0, r0, 1
/* 801830D4  98 1D 00 00 */	stb r0, 0(r29)
lbl_801830D8:
/* 801830D8  2C 19 00 00 */	cmpwi r25, 0
/* 801830DC  40 82 00 1C */	bne lbl_801830F8
/* 801830E0  7F 63 DB 78 */	mr r3, r27
/* 801830E4  4B EA 9F 89 */	bl dComIfGp_getReverb__Fi
/* 801830E8  7C 64 1B 78 */	mr r4, r3
/* 801830EC  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 801830F0  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 801830F4  48 14 3F D5 */	bl startStaticEnvSe__10Z2EnvSeMgrFSc
lbl_801830F8:
/* 801830F8  3B 20 00 01 */	li r25, 1
/* 801830FC  48 00 03 50 */	b lbl_8018344C
lbl_80183100:
/* 80183100  88 9F 00 17 */	lbz r4, 0x17(r31)
/* 80183104  28 04 00 08 */	cmplwi r4, 8
/* 80183108  40 80 00 A0 */	bge lbl_801831A8
/* 8018310C  88 1D 00 00 */	lbz r0, 0(r29)
/* 80183110  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80183114  40 82 00 28 */	bne lbl_8018313C
/* 80183118  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 8018311C  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 80183120  88 BF 00 14 */	lbz r5, 0x14(r31)
/* 80183124  88 DF 00 19 */	lbz r6, 0x19(r31)
/* 80183128  88 FF 00 1A */	lbz r7, 0x1a(r31)
/* 8018312C  48 14 4F CD */	bl initRiverSe__10Z2EnvSeMgrFUcUcUcUc
/* 80183130  88 1D 00 00 */	lbz r0, 0(r29)
/* 80183134  60 00 00 02 */	ori r0, r0, 2
/* 80183138  98 1D 00 00 */	stb r0, 0(r29)
lbl_8018313C:
/* 8018313C  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 80183140  7F 84 E3 78 */	mr r4, r28
/* 80183144  4B EC E6 A9 */	bl dPath_GetRoomPath__Fii
/* 80183148  7C 76 1B 78 */	mr r22, r3
/* 8018314C  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 80183150  3A E3 DD 70 */	addi r23, r3, g_mEnvSeMgr@l
/* 80183154  48 00 00 30 */	b lbl_80183184
lbl_80183158:
/* 80183158  38 7E 00 DC */	addi r3, r30, 0xdc
/* 8018315C  38 81 00 20 */	addi r4, r1, 0x20
/* 80183160  7E C5 B3 78 */	mr r5, r22
/* 80183164  4B FF FC 79 */	bl dEnvSe_getNearPathPos__FP4cXyzP4cXyzP5dPath
/* 80183168  7E E3 BB 78 */	mr r3, r23
/* 8018316C  38 9E 00 DC */	addi r4, r30, 0xdc
/* 80183170  48 14 50 C5 */	bl registRiverSePos__10Z2EnvSeMgrFP3Vec
/* 80183174  7E C3 B3 78 */	mr r3, r22
/* 80183178  7F 84 E3 78 */	mr r4, r28
/* 8018317C  4B EC E7 1D */	bl dPath_GetNextRoomPath__FPC5dPathi
/* 80183180  7C 76 1B 78 */	mr r22, r3
lbl_80183184:
/* 80183184  28 16 00 00 */	cmplwi r22, 0
/* 80183188  40 82 FF D0 */	bne lbl_80183158
/* 8018318C  7F 63 DB 78 */	mr r3, r27
/* 80183190  4B EA 9E DD */	bl dComIfGp_getReverb__Fi
/* 80183194  7C 64 1B 78 */	mr r4, r3
/* 80183198  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 8018319C  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 801831A0  48 14 51 61 */	bl startRiverSe__10Z2EnvSeMgrFSc
/* 801831A4  48 00 02 A8 */	b lbl_8018344C
lbl_801831A8:
/* 801831A8  28 04 00 10 */	cmplwi r4, 0x10
/* 801831AC  40 80 00 F0 */	bge lbl_8018329C
/* 801831B0  3C 60 80 45 */	lis r3, __float_max@ha
/* 801831B4  C3 E3 0A E8 */	lfs f31, __float_max@l(r3)
/* 801831B8  88 1D 00 00 */	lbz r0, 0(r29)
/* 801831BC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801831C0  40 82 00 28 */	bne lbl_801831E8
/* 801831C4  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 801831C8  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 801831CC  88 BF 00 14 */	lbz r5, 0x14(r31)
/* 801831D0  88 DF 00 19 */	lbz r6, 0x19(r31)
/* 801831D4  88 FF 00 1A */	lbz r7, 0x1a(r31)
/* 801831D8  48 14 55 59 */	bl initFallSe__10Z2EnvSeMgrFUcUcUcUc
/* 801831DC  88 1D 00 00 */	lbz r0, 0(r29)
/* 801831E0  60 00 00 04 */	ori r0, r0, 4
/* 801831E4  98 1D 00 00 */	stb r0, 0(r29)
lbl_801831E8:
/* 801831E8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801831EC  D0 1E 00 DC */	stfs f0, 0xdc(r30)
/* 801831F0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801831F4  D0 1E 00 E0 */	stfs f0, 0xe0(r30)
/* 801831F8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801831FC  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
/* 80183200  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 80183204  7F 84 E3 78 */	mr r4, r28
/* 80183208  4B EC E5 E5 */	bl dPath_GetRoomPath__Fii
/* 8018320C  7C 76 1B 78 */	mr r22, r3
/* 80183210  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 80183214  3A E3 DD 70 */	addi r23, r3, g_mEnvSeMgr@l
/* 80183218  48 00 00 60 */	b lbl_80183278
lbl_8018321C:
/* 8018321C  38 61 00 14 */	addi r3, r1, 0x14
/* 80183220  38 81 00 20 */	addi r4, r1, 0x20
/* 80183224  7E C5 B3 78 */	mr r5, r22
/* 80183228  4B FF FB B5 */	bl dEnvSe_getNearPathPos__FP4cXyzP4cXyzP5dPath
/* 8018322C  38 61 00 14 */	addi r3, r1, 0x14
/* 80183230  38 81 00 20 */	addi r4, r1, 0x20
/* 80183234  48 1C 41 69 */	bl PSVECSquareDistance
/* 80183238  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8018323C  40 80 00 20 */	bge lbl_8018325C
/* 80183240  FF E0 08 90 */	fmr f31, f1
/* 80183244  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80183248  D0 1E 00 DC */	stfs f0, 0xdc(r30)
/* 8018324C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80183250  D0 1E 00 E0 */	stfs f0, 0xe0(r30)
/* 80183254  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80183258  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
lbl_8018325C:
/* 8018325C  7E E3 BB 78 */	mr r3, r23
/* 80183260  38 81 00 14 */	addi r4, r1, 0x14
/* 80183264  48 14 56 09 */	bl registFallSePos__10Z2EnvSeMgrFP3Vec
/* 80183268  7E C3 B3 78 */	mr r3, r22
/* 8018326C  7F 84 E3 78 */	mr r4, r28
/* 80183270  4B EC E6 29 */	bl dPath_GetNextRoomPath__FPC5dPathi
/* 80183274  7C 76 1B 78 */	mr r22, r3
lbl_80183278:
/* 80183278  28 16 00 00 */	cmplwi r22, 0
/* 8018327C  40 82 FF A0 */	bne lbl_8018321C
/* 80183280  7F 63 DB 78 */	mr r3, r27
/* 80183284  4B EA 9D E9 */	bl dComIfGp_getReverb__Fi
/* 80183288  7C 64 1B 78 */	mr r4, r3
/* 8018328C  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 80183290  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 80183294  48 14 55 FD */	bl startFallSe__10Z2EnvSeMgrFSc
/* 80183298  48 00 01 B4 */	b lbl_8018344C
lbl_8018329C:
/* 8018329C  28 04 00 20 */	cmplwi r4, 0x20
/* 801832A0  40 80 00 A0 */	bge lbl_80183340
/* 801832A4  88 1D 00 00 */	lbz r0, 0(r29)
/* 801832A8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 801832AC  40 82 00 28 */	bne lbl_801832D4
/* 801832B0  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 801832B4  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 801832B8  88 BF 00 14 */	lbz r5, 0x14(r31)
/* 801832BC  88 DF 00 19 */	lbz r6, 0x19(r31)
/* 801832C0  88 FF 00 1A */	lbz r7, 0x1a(r31)
/* 801832C4  48 14 57 CD */	bl initEtcSe__10Z2EnvSeMgrFUcUcUcUc
/* 801832C8  88 1D 00 00 */	lbz r0, 0(r29)
/* 801832CC  60 00 00 08 */	ori r0, r0, 8
/* 801832D0  98 1D 00 00 */	stb r0, 0(r29)
lbl_801832D4:
/* 801832D4  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 801832D8  7F 84 E3 78 */	mr r4, r28
/* 801832DC  4B EC E5 11 */	bl dPath_GetRoomPath__Fii
/* 801832E0  7C 76 1B 78 */	mr r22, r3
/* 801832E4  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 801832E8  3A E3 DD 70 */	addi r23, r3, g_mEnvSeMgr@l
/* 801832EC  48 00 00 30 */	b lbl_8018331C
lbl_801832F0:
/* 801832F0  38 7E 00 DC */	addi r3, r30, 0xdc
/* 801832F4  38 81 00 20 */	addi r4, r1, 0x20
/* 801832F8  7E C5 B3 78 */	mr r5, r22
/* 801832FC  4B FF FA E1 */	bl dEnvSe_getNearPathPos__FP4cXyzP4cXyzP5dPath
/* 80183300  7E E3 BB 78 */	mr r3, r23
/* 80183304  38 9E 00 DC */	addi r4, r30, 0xdc
/* 80183308  48 14 59 1D */	bl registEtcSePos__10Z2EnvSeMgrFP3Vec
/* 8018330C  7E C3 B3 78 */	mr r3, r22
/* 80183310  7F 84 E3 78 */	mr r4, r28
/* 80183314  4B EC E5 85 */	bl dPath_GetNextRoomPath__FPC5dPathi
/* 80183318  7C 76 1B 78 */	mr r22, r3
lbl_8018331C:
/* 8018331C  28 16 00 00 */	cmplwi r22, 0
/* 80183320  40 82 FF D0 */	bne lbl_801832F0
/* 80183324  7F 63 DB 78 */	mr r3, r27
/* 80183328  4B EA 9D 45 */	bl dComIfGp_getReverb__Fi
/* 8018332C  7C 64 1B 78 */	mr r4, r3
/* 80183330  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 80183334  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 80183338  48 14 59 11 */	bl startEtcSe__10Z2EnvSeMgrFSc
/* 8018333C  48 00 01 10 */	b lbl_8018344C
lbl_80183340:
/* 80183340  28 04 00 40 */	cmplwi r4, 0x40
/* 80183344  40 80 00 58 */	bge lbl_8018339C
/* 80183348  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 8018334C  7F 84 E3 78 */	mr r4, r28
/* 80183350  4B EC E4 9D */	bl dPath_GetRoomPath__Fii
/* 80183354  7C 76 1B 78 */	mr r22, r3
/* 80183358  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 8018335C  3A E3 DD 70 */	addi r23, r3, g_mEnvSeMgr@l
/* 80183360  48 00 00 30 */	b lbl_80183390
lbl_80183364:
/* 80183364  38 7E 00 DC */	addi r3, r30, 0xdc
/* 80183368  38 81 00 20 */	addi r4, r1, 0x20
/* 8018336C  7E C5 B3 78 */	mr r5, r22
/* 80183370  4B FF FA 6D */	bl dEnvSe_getNearPathPos__FP4cXyzP4cXyzP5dPath
/* 80183374  7E E3 BB 78 */	mr r3, r23
/* 80183378  38 9E 00 DC */	addi r4, r30, 0xdc
/* 8018337C  48 14 44 91 */	bl registWindowPos__10Z2EnvSeMgrFP3Vec
/* 80183380  7E C3 B3 78 */	mr r3, r22
/* 80183384  7F 84 E3 78 */	mr r4, r28
/* 80183388  4B EC E5 11 */	bl dPath_GetNextRoomPath__FPC5dPathi
/* 8018338C  7C 76 1B 78 */	mr r22, r3
lbl_80183390:
/* 80183390  28 16 00 00 */	cmplwi r22, 0
/* 80183394  40 82 FF D0 */	bne lbl_80183364
/* 80183398  48 00 00 B4 */	b lbl_8018344C
lbl_8018339C:
/* 8018339C  28 04 00 64 */	cmplwi r4, 0x64
/* 801833A0  41 80 00 AC */	blt lbl_8018344C
/* 801833A4  80 1E 01 08 */	lwz r0, 0x108(r30)
/* 801833A8  7C 00 D6 30 */	sraw r0, r0, r26
/* 801833AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801833B0  40 82 00 30 */	bne lbl_801833E0
/* 801833B4  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 801833B8  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 801833BC  88 BF 00 14 */	lbz r5, 0x14(r31)
/* 801833C0  88 DF 00 19 */	lbz r6, 0x19(r31)
/* 801833C4  88 FF 00 1A */	lbz r7, 0x1a(r31)
/* 801833C8  48 14 61 45 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 801833CC  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 801833D0  38 00 00 01 */	li r0, 1
/* 801833D4  7C 00 D0 30 */	slw r0, r0, r26
/* 801833D8  7C 60 03 78 */	or r0, r3, r0
/* 801833DC  90 1E 01 08 */	stw r0, 0x108(r30)
lbl_801833E0:
/* 801833E0  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 801833E4  7F 84 E3 78 */	mr r4, r28
/* 801833E8  4B EC E4 05 */	bl dPath_GetRoomPath__Fii
/* 801833EC  7C 76 1B 78 */	mr r22, r3
/* 801833F0  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 801833F4  3A E3 DD 70 */	addi r23, r3, g_mEnvSeMgr@l
/* 801833F8  48 00 00 34 */	b lbl_8018342C
lbl_801833FC:
/* 801833FC  38 7E 00 DC */	addi r3, r30, 0xdc
/* 80183400  38 81 00 20 */	addi r4, r1, 0x20
/* 80183404  7E C5 B3 78 */	mr r5, r22
/* 80183408  4B FF F9 D5 */	bl dEnvSe_getNearPathPos__FP4cXyzP4cXyzP5dPath
/* 8018340C  7E E3 BB 78 */	mr r3, r23
/* 80183410  88 9F 00 17 */	lbz r4, 0x17(r31)
/* 80183414  38 BE 00 DC */	addi r5, r30, 0xdc
/* 80183418  48 14 6B 41 */	bl registLv3WaterSePos__10Z2EnvSeMgrFUcP3Vec
/* 8018341C  7E C3 B3 78 */	mr r3, r22
/* 80183420  7F 84 E3 78 */	mr r4, r28
/* 80183424  4B EC E4 75 */	bl dPath_GetNextRoomPath__FPC5dPathi
/* 80183428  7C 76 1B 78 */	mr r22, r3
lbl_8018342C:
/* 8018342C  28 16 00 00 */	cmplwi r22, 0
/* 80183430  40 82 FF CC */	bne lbl_801833FC
/* 80183434  7F 63 DB 78 */	mr r3, r27
/* 80183438  4B EA 9C 35 */	bl dComIfGp_getReverb__Fi
/* 8018343C  7C 64 1B 78 */	mr r4, r3
/* 80183440  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 80183444  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 80183448  48 14 73 4D */	bl startLv3WaterSe__10Z2EnvSeMgrFSc
lbl_8018344C:
/* 8018344C  3B FF 00 1C */	addi r31, r31, 0x1c
/* 80183450  3B 5A FF FF */	addi r26, r26, -1
lbl_80183454:
/* 80183454  2C 1A 00 00 */	cmpwi r26, 0
/* 80183458  40 82 FC 28 */	bne lbl_80183080
/* 8018345C  38 60 00 01 */	li r3, 1
lbl_80183460:
/* 80183460  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80183464  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80183468  39 61 00 60 */	addi r11, r1, 0x60
/* 8018346C  48 1D ED A1 */	bl _restgpr_22
/* 80183470  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80183474  7C 08 03 A6 */	mtlr r0
/* 80183478  38 21 00 70 */	addi r1, r1, 0x70
/* 8018347C  4E 80 00 20 */	blr 
