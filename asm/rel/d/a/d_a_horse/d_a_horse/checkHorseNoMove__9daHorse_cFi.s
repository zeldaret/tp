lbl_8083BF48:
/* 8083BF48  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8083BF4C  7C 08 02 A6 */	mflr r0
/* 8083BF50  90 01 01 44 */	stw r0, 0x144(r1)
/* 8083BF54  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 8083BF58  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 8083BF5C  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 8083BF60  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 8083BF64  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 8083BF68  F3 A1 01 18 */	psq_st f29, 280(r1), 0, 0 /* qr0 */
/* 8083BF6C  DB 81 01 00 */	stfd f28, 0x100(r1)
/* 8083BF70  F3 81 01 08 */	psq_st f28, 264(r1), 0, 0 /* qr0 */
/* 8083BF74  DB 61 00 F0 */	stfd f27, 0xf0(r1)
/* 8083BF78  F3 61 00 F8 */	psq_st f27, 248(r1), 0, 0 /* qr0 */
/* 8083BF7C  DB 41 00 E0 */	stfd f26, 0xe0(r1)
/* 8083BF80  F3 41 00 E8 */	psq_st f26, 232(r1), 0, 0 /* qr0 */
/* 8083BF84  DB 21 00 D0 */	stfd f25, 0xd0(r1)
/* 8083BF88  F3 21 00 D8 */	psq_st f25, 216(r1), 0, 0 /* qr0 */
/* 8083BF8C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8083BF90  4B B2 62 24 */	b _savegpr_19
/* 8083BF94  7C 76 1B 78 */	mr r22, r3
/* 8083BF98  7C 97 23 78 */	mr r23, r4
/* 8083BF9C  3C 80 80 84 */	lis r4, lit_3894@ha
/* 8083BFA0  3B C4 54 AC */	addi r30, r4, lit_3894@l
/* 8083BFA4  80 03 17 44 */	lwz r0, 0x1744(r3)
/* 8083BFA8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8083BFAC  41 82 00 0C */	beq lbl_8083BFB8
/* 8083BFB0  38 60 00 00 */	li r3, 0
/* 8083BFB4  48 00 0A 7C */	b lbl_8083CA30
lbl_8083BFB8:
/* 8083BFB8  48 00 55 FD */	bl checkPlayerHeavy__9daHorse_cFv
/* 8083BFBC  2C 03 00 00 */	cmpwi r3, 0
/* 8083BFC0  41 82 00 0C */	beq lbl_8083BFCC
/* 8083BFC4  38 60 00 03 */	li r3, 3
/* 8083BFC8  48 00 0A 68 */	b lbl_8083CA30
lbl_8083BFCC:
/* 8083BFCC  38 76 07 AC */	addi r3, r22, 0x7ac
/* 8083BFD0  38 80 00 00 */	li r4, 0
/* 8083BFD4  4B 86 62 0C */	b getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 8083BFD8  7C 60 07 34 */	extsh r0, r3
/* 8083BFDC  2C 00 00 2C */	cmpwi r0, 0x2c
/* 8083BFE0  40 82 00 0C */	bne lbl_8083BFEC
/* 8083BFE4  3B 40 00 00 */	li r26, 0
/* 8083BFE8  48 00 00 44 */	b lbl_8083C02C
lbl_8083BFEC:
/* 8083BFEC  88 16 16 B4 */	lbz r0, 0x16b4(r22)
/* 8083BFF0  28 00 00 03 */	cmplwi r0, 3
/* 8083BFF4  40 82 00 34 */	bne lbl_8083C028
/* 8083BFF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8083BFFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083C000  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8083C004  38 96 07 AC */	addi r4, r22, 0x7ac
/* 8083C008  4B 83 86 58 */	b ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 8083C00C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083C010  41 82 00 18 */	beq lbl_8083C028
/* 8083C014  38 76 07 AC */	addi r3, r22, 0x7ac
/* 8083C018  A8 96 04 E6 */	lha r4, 0x4e6(r22)
/* 8083C01C  4B 7E 1A C8 */	b fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
/* 8083C020  7C 7A 1B 78 */	mr r26, r3
/* 8083C024  48 00 00 08 */	b lbl_8083C02C
lbl_8083C028:
/* 8083C028  AB 56 17 14 */	lha r26, 0x1714(r22)
lbl_8083C02C:
/* 8083C02C  2C 17 00 00 */	cmpwi r23, 0
/* 8083C030  41 82 01 0C */	beq lbl_8083C13C
/* 8083C034  80 16 17 4C */	lwz r0, 0x174c(r22)
/* 8083C038  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8083C03C  40 82 00 6C */	bne lbl_8083C0A8
/* 8083C040  80 16 17 44 */	lwz r0, 0x1744(r22)
/* 8083C044  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8083C048  41 82 00 68 */	beq lbl_8083C0B0
/* 8083C04C  88 16 16 B4 */	lbz r0, 0x16b4(r22)
/* 8083C050  28 00 00 01 */	cmplwi r0, 1
/* 8083C054  41 82 00 14 */	beq lbl_8083C068
/* 8083C058  28 00 00 03 */	cmplwi r0, 3
/* 8083C05C  41 82 00 0C */	beq lbl_8083C068
/* 8083C060  28 00 00 02 */	cmplwi r0, 2
/* 8083C064  40 82 00 4C */	bne lbl_8083C0B0
lbl_8083C068:
/* 8083C068  C0 36 04 D8 */	lfs f1, 0x4d8(r22)
/* 8083C06C  C0 1E 02 00 */	lfs f0, 0x200(r30)
/* 8083C070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C074  40 80 00 14 */	bge lbl_8083C088
/* 8083C078  A8 76 04 E6 */	lha r3, 0x4e6(r22)
/* 8083C07C  4B B2 90 54 */	b abs
/* 8083C080  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8083C084  41 81 00 24 */	bgt lbl_8083C0A8
lbl_8083C088:
/* 8083C088  C0 36 04 D8 */	lfs f1, 0x4d8(r22)
/* 8083C08C  C0 1E 02 04 */	lfs f0, 0x204(r30)
/* 8083C090  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C094  40 81 00 1C */	ble lbl_8083C0B0
/* 8083C098  A8 76 04 E6 */	lha r3, 0x4e6(r22)
/* 8083C09C  4B B2 90 34 */	b abs
/* 8083C0A0  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8083C0A4  40 80 00 0C */	bge lbl_8083C0B0
lbl_8083C0A8:
/* 8083C0A8  38 60 00 03 */	li r3, 3
/* 8083C0AC  48 00 09 84 */	b lbl_8083CA30
lbl_8083C0B0:
/* 8083C0B0  C0 16 05 2C */	lfs f0, 0x52c(r22)
/* 8083C0B4  FC 00 02 10 */	fabs f0, f0
/* 8083C0B8  FC 20 00 18 */	frsp f1, f0
/* 8083C0BC  C0 16 17 8C */	lfs f0, 0x178c(r22)
/* 8083C0C0  EC 41 00 24 */	fdivs f2, f1, f0
/* 8083C0C4  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 8083C0C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083C0CC  40 81 00 0C */	ble lbl_8083C0D8
/* 8083C0D0  FC 40 00 90 */	fmr f2, f0
/* 8083C0D4  48 00 00 1C */	b lbl_8083C0F0
lbl_8083C0D8:
/* 8083C0D8  88 16 16 B4 */	lbz r0, 0x16b4(r22)
/* 8083C0DC  28 00 00 00 */	cmplwi r0, 0
/* 8083C0E0  41 82 00 0C */	beq lbl_8083C0EC
/* 8083C0E4  28 00 00 02 */	cmplwi r0, 2
/* 8083C0E8  40 82 00 08 */	bne lbl_8083C0F0
lbl_8083C0EC:
/* 8083C0EC  C0 5E 01 C0 */	lfs f2, 0x1c0(r30)
lbl_8083C0F0:
/* 8083C0F0  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8083C0F4  C0 3E 01 8C */	lfs f1, 0x18c(r30)
/* 8083C0F8  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 8083C0FC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8083C100  EC 41 00 2A */	fadds f2, f1, f0
/* 8083C104  A8 16 04 DE */	lha r0, 0x4de(r22)
/* 8083C108  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8083C10C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8083C110  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8083C114  7F E3 04 2E */	lfsx f31, r3, r0
/* 8083C118  38 83 00 04 */	addi r4, r3, 4
/* 8083C11C  7F C4 04 2E */	lfsx f30, r4, r0
/* 8083C120  FC 20 10 50 */	fneg f1, f2
/* 8083C124  57 40 04 38 */	rlwinm r0, r26, 0, 0x10, 0x1c
/* 8083C128  7C 03 04 2E */	lfsx f0, r3, r0
/* 8083C12C  EF A1 00 32 */	fmuls f29, f1, f0
/* 8083C130  7C 04 04 2E */	lfsx f0, r4, r0
/* 8083C134  EF 22 00 32 */	fmuls f25, f2, f0
/* 8083C138  48 00 00 40 */	b lbl_8083C178
lbl_8083C13C:
/* 8083C13C  A8 16 04 DE */	lha r0, 0x4de(r22)
/* 8083C140  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8083C144  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8083C148  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8083C14C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8083C150  FF E0 00 50 */	fneg f31, f0
/* 8083C154  38 83 00 04 */	addi r4, r3, 4
/* 8083C158  7C 04 04 2E */	lfsx f0, r4, r0
/* 8083C15C  FF C0 00 50 */	fneg f30, f0
/* 8083C160  C0 3E 01 8C */	lfs f1, 0x18c(r30)
/* 8083C164  57 40 04 38 */	rlwinm r0, r26, 0, 0x10, 0x1c
/* 8083C168  7C 03 04 2E */	lfsx f0, r3, r0
/* 8083C16C  EF A1 00 32 */	fmuls f29, f1, f0
/* 8083C170  7C 04 04 2E */	lfsx f0, r4, r0
/* 8083C174  EF 21 00 32 */	fmuls f25, f1, f0
lbl_8083C178:
/* 8083C178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8083C17C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083C180  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 8083C184  C0 56 04 D8 */	lfs f2, 0x4d8(r22)
/* 8083C188  C0 36 04 D4 */	lfs f1, 0x4d4(r22)
/* 8083C18C  C0 16 06 2C */	lfs f0, 0x62c(r22)
/* 8083C190  EC 21 00 2A */	fadds f1, f1, f0
/* 8083C194  C0 16 04 D0 */	lfs f0, 0x4d0(r22)
/* 8083C198  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8083C19C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8083C1A0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8083C1A4  38 76 07 AC */	addi r3, r22, 0x7ac
/* 8083C1A8  38 80 00 00 */	li r4, 0
/* 8083C1AC  4B 86 60 34 */	b getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 8083C1B0  7C 60 07 34 */	extsh r0, r3
/* 8083C1B4  2C 00 00 2C */	cmpwi r0, 0x2c
/* 8083C1B8  40 82 00 14 */	bne lbl_8083C1CC
/* 8083C1BC  C0 3E 01 8C */	lfs f1, 0x18c(r30)
/* 8083C1C0  C0 16 04 D4 */	lfs f0, 0x4d4(r22)
/* 8083C1C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8083C1C8  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_8083C1CC:
/* 8083C1CC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8083C1D0  EC 19 07 F2 */	fmuls f0, f25, f31
/* 8083C1D4  EC 01 00 2A */	fadds f0, f1, f0
/* 8083C1D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8083C1DC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8083C1E0  EC 00 E8 2A */	fadds f0, f0, f29
/* 8083C1E4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8083C1E8  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8083C1EC  EC 19 07 B2 */	fmuls f0, f25, f30
/* 8083C1F0  EC 01 00 2A */	fadds f0, f1, f0
/* 8083C1F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8083C1F8  3B 20 00 00 */	li r25, 0
/* 8083C1FC  38 76 08 D0 */	addi r3, r22, 0x8d0
/* 8083C200  38 81 00 34 */	addi r4, r1, 0x34
/* 8083C204  38 A1 00 28 */	addi r5, r1, 0x28
/* 8083C208  7E C6 B3 78 */	mr r6, r22
/* 8083C20C  4B 83 BB 58 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8083C210  80 16 17 44 */	lwz r0, 0x1744(r22)
/* 8083C214  60 00 01 00 */	ori r0, r0, 0x100
/* 8083C218  90 16 17 44 */	stw r0, 0x1744(r22)
/* 8083C21C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8083C220  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083C224  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 8083C228  7F 43 D3 78 */	mr r3, r26
/* 8083C22C  38 96 08 D0 */	addi r4, r22, 0x8d0
/* 8083C230  4B 83 81 84 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8083C234  54 63 06 3F */	clrlwi. r3, r3, 0x18
/* 8083C238  80 16 17 44 */	lwz r0, 0x1744(r22)
/* 8083C23C  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 8083C240  90 16 17 44 */	stw r0, 0x1744(r22)
/* 8083C244  41 82 02 24 */	beq lbl_8083C468
/* 8083C248  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C24C  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C250  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8083C254  7F 43 D3 78 */	mr r3, r26
/* 8083C258  38 96 08 E4 */	addi r4, r22, 0x8e4
/* 8083C25C  38 A1 00 6C */	addi r5, r1, 0x6c
/* 8083C260  4B 83 84 E4 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8083C264  C0 16 09 00 */	lfs f0, 0x900(r22)
/* 8083C268  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8083C26C  C0 16 09 04 */	lfs f0, 0x904(r22)
/* 8083C270  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8083C274  C0 16 09 08 */	lfs f0, 0x908(r22)
/* 8083C278  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8083C27C  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8083C280  4B A2 BF 90 */	b cBgW_CheckBWall__Ff
/* 8083C284  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083C288  41 82 01 D4 */	beq lbl_8083C45C
/* 8083C28C  2C 17 00 00 */	cmpwi r23, 0
/* 8083C290  41 82 00 1C */	beq lbl_8083C2AC
/* 8083C294  38 61 00 6C */	addi r3, r1, 0x6c
/* 8083C298  4B A2 AE 90 */	b atan2sX_Z__4cXyzCFv
/* 8083C29C  A8 96 04 E6 */	lha r4, 0x4e6(r22)
/* 8083C2A0  4B A3 4B 84 */	b cLib_distanceAngleS__Fss
/* 8083C2A4  2C 03 60 00 */	cmpwi r3, 0x6000
/* 8083C2A8  41 81 00 24 */	bgt lbl_8083C2CC
lbl_8083C2AC:
/* 8083C2AC  2C 17 00 00 */	cmpwi r23, 0
/* 8083C2B0  40 82 01 AC */	bne lbl_8083C45C
/* 8083C2B4  38 61 00 6C */	addi r3, r1, 0x6c
/* 8083C2B8  4B A2 AE 70 */	b atan2sX_Z__4cXyzCFv
/* 8083C2BC  A8 96 04 E6 */	lha r4, 0x4e6(r22)
/* 8083C2C0  4B A3 4B 64 */	b cLib_distanceAngleS__Fss
/* 8083C2C4  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8083C2C8  40 80 01 94 */	bge lbl_8083C45C
lbl_8083C2CC:
/* 8083C2CC  38 76 08 D0 */	addi r3, r22, 0x8d0
/* 8083C2D0  38 81 00 34 */	addi r4, r1, 0x34
/* 8083C2D4  38 A1 00 28 */	addi r5, r1, 0x28
/* 8083C2D8  7E C6 B3 78 */	mr r6, r22
/* 8083C2DC  4B 83 BA 88 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8083C2E0  88 16 16 B4 */	lbz r0, 0x16b4(r22)
/* 8083C2E4  28 00 00 01 */	cmplwi r0, 1
/* 8083C2E8  40 82 00 60 */	bne lbl_8083C348
/* 8083C2EC  2C 17 00 00 */	cmpwi r23, 0
/* 8083C2F0  41 82 00 58 */	beq lbl_8083C348
/* 8083C2F4  7F 43 D3 78 */	mr r3, r26
/* 8083C2F8  38 96 08 D0 */	addi r4, r22, 0x8d0
/* 8083C2FC  4B 83 80 B8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8083C300  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083C304  40 82 00 44 */	bne lbl_8083C348
/* 8083C308  38 61 00 4C */	addi r3, r1, 0x4c
/* 8083C30C  38 81 00 34 */	addi r4, r1, 0x34
/* 8083C310  4B B0 B0 8C */	b PSVECSquareDistance
/* 8083C314  C0 1E 02 0C */	lfs f0, 0x20c(r30)
/* 8083C318  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C31C  40 80 00 18 */	bge lbl_8083C334
/* 8083C320  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C324  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C328  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8083C32C  38 60 00 04 */	li r3, 4
/* 8083C330  48 00 07 00 */	b lbl_8083CA30
lbl_8083C334:
/* 8083C334  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C338  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C33C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8083C340  38 60 00 00 */	li r3, 0
/* 8083C344  48 00 06 EC */	b lbl_8083CA30
lbl_8083C348:
/* 8083C348  38 61 00 34 */	addi r3, r1, 0x34
/* 8083C34C  38 81 00 4C */	addi r4, r1, 0x4c
/* 8083C350  4B B0 B0 4C */	b PSVECSquareDistance
/* 8083C354  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8083C358  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C35C  40 81 00 58 */	ble lbl_8083C3B4
/* 8083C360  FC 00 08 34 */	frsqrte f0, f1
/* 8083C364  C8 9E 01 60 */	lfd f4, 0x160(r30)
/* 8083C368  FC 44 00 32 */	fmul f2, f4, f0
/* 8083C36C  C8 7E 01 68 */	lfd f3, 0x168(r30)
/* 8083C370  FC 00 00 32 */	fmul f0, f0, f0
/* 8083C374  FC 01 00 32 */	fmul f0, f1, f0
/* 8083C378  FC 03 00 28 */	fsub f0, f3, f0
/* 8083C37C  FC 02 00 32 */	fmul f0, f2, f0
/* 8083C380  FC 44 00 32 */	fmul f2, f4, f0
/* 8083C384  FC 00 00 32 */	fmul f0, f0, f0
/* 8083C388  FC 01 00 32 */	fmul f0, f1, f0
/* 8083C38C  FC 03 00 28 */	fsub f0, f3, f0
/* 8083C390  FC 02 00 32 */	fmul f0, f2, f0
/* 8083C394  FC 44 00 32 */	fmul f2, f4, f0
/* 8083C398  FC 00 00 32 */	fmul f0, f0, f0
/* 8083C39C  FC 01 00 32 */	fmul f0, f1, f0
/* 8083C3A0  FC 03 00 28 */	fsub f0, f3, f0
/* 8083C3A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8083C3A8  FC 21 00 32 */	fmul f1, f1, f0
/* 8083C3AC  FC 20 08 18 */	frsp f1, f1
/* 8083C3B0  48 00 00 88 */	b lbl_8083C438
lbl_8083C3B4:
/* 8083C3B4  C8 1E 01 70 */	lfd f0, 0x170(r30)
/* 8083C3B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C3BC  40 80 00 10 */	bge lbl_8083C3CC
/* 8083C3C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8083C3C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8083C3C8  48 00 00 70 */	b lbl_8083C438
lbl_8083C3CC:
/* 8083C3CC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8083C3D0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8083C3D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8083C3D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8083C3DC  7C 03 00 00 */	cmpw r3, r0
/* 8083C3E0  41 82 00 14 */	beq lbl_8083C3F4
/* 8083C3E4  40 80 00 40 */	bge lbl_8083C424
/* 8083C3E8  2C 03 00 00 */	cmpwi r3, 0
/* 8083C3EC  41 82 00 20 */	beq lbl_8083C40C
/* 8083C3F0  48 00 00 34 */	b lbl_8083C424
lbl_8083C3F4:
/* 8083C3F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8083C3F8  41 82 00 0C */	beq lbl_8083C404
/* 8083C3FC  38 00 00 01 */	li r0, 1
/* 8083C400  48 00 00 28 */	b lbl_8083C428
lbl_8083C404:
/* 8083C404  38 00 00 02 */	li r0, 2
/* 8083C408  48 00 00 20 */	b lbl_8083C428
lbl_8083C40C:
/* 8083C40C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8083C410  41 82 00 0C */	beq lbl_8083C41C
/* 8083C414  38 00 00 05 */	li r0, 5
/* 8083C418  48 00 00 10 */	b lbl_8083C428
lbl_8083C41C:
/* 8083C41C  38 00 00 03 */	li r0, 3
/* 8083C420  48 00 00 08 */	b lbl_8083C428
lbl_8083C424:
/* 8083C424  38 00 00 04 */	li r0, 4
lbl_8083C428:
/* 8083C428  2C 00 00 01 */	cmpwi r0, 1
/* 8083C42C  40 82 00 0C */	bne lbl_8083C438
/* 8083C430  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8083C434  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8083C438:
/* 8083C438  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 8083C43C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C440  40 80 00 18 */	bge lbl_8083C458
/* 8083C444  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C448  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C44C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8083C450  38 60 00 02 */	li r3, 2
/* 8083C454  48 00 05 DC */	b lbl_8083CA30
lbl_8083C458:
/* 8083C458  3B 20 00 01 */	li r25, 1
lbl_8083C45C:
/* 8083C45C  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C460  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C464  90 01 00 7C */	stw r0, 0x7c(r1)
lbl_8083C468:
/* 8083C468  88 16 16 B4 */	lbz r0, 0x16b4(r22)
/* 8083C46C  28 00 00 03 */	cmplwi r0, 3
/* 8083C470  40 82 00 0C */	bne lbl_8083C47C
/* 8083C474  C3 BE 01 50 */	lfs f29, 0x150(r30)
/* 8083C478  48 00 00 08 */	b lbl_8083C480
lbl_8083C47C:
/* 8083C47C  C3 BE 02 10 */	lfs f29, 0x210(r30)
lbl_8083C480:
/* 8083C480  C0 3E 01 8C */	lfs f1, 0x18c(r30)
/* 8083C484  C0 16 04 D4 */	lfs f0, 0x4d4(r22)
/* 8083C488  EC 01 00 2A */	fadds f0, f1, f0
/* 8083C48C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8083C490  2C 17 00 00 */	cmpwi r23, 0
/* 8083C494  41 82 00 24 */	beq lbl_8083C4B8
/* 8083C498  C0 56 05 2C */	lfs f2, 0x52c(r22)
/* 8083C49C  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 8083C4A0  C0 16 17 8C */	lfs f0, 0x178c(r22)
/* 8083C4A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8083C4A8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083C4AC  40 81 00 0C */	ble lbl_8083C4B8
/* 8083C4B0  C3 9E 01 A8 */	lfs f28, 0x1a8(r30)
/* 8083C4B4  48 00 00 08 */	b lbl_8083C4BC
lbl_8083C4B8:
/* 8083C4B8  C3 9E 01 8C */	lfs f28, 0x18c(r30)
lbl_8083C4BC:
/* 8083C4BC  3C 60 80 3F */	lis r3, mGndCheck__11fopAcM_gc_c@ha
/* 8083C4C0  38 63 1C C4 */	addi r3, r3, mGndCheck__11fopAcM_gc_c@l
/* 8083C4C4  3B 83 00 14 */	addi r28, r3, 0x14
/* 8083C4C8  3B 7E 00 20 */	addi r27, r30, 0x20
/* 8083C4CC  3C 60 80 45 */	lis r3, m_top__12daTagHstop_c@ha
/* 8083C4D0  3A 83 0D F8 */	addi r20, r3, m_top__12daTagHstop_c@l
/* 8083C4D4  C3 5E 01 90 */	lfs f26, 0x190(r30)
/* 8083C4D8  48 00 05 4C */	b lbl_8083CA24
lbl_8083C4DC:
/* 8083C4DC  C0 36 04 D0 */	lfs f1, 0x4d0(r22)
/* 8083C4E0  EC 1D 07 F2 */	fmuls f0, f29, f31
/* 8083C4E4  EC 01 00 2A */	fadds f0, f1, f0
/* 8083C4E8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8083C4EC  C0 36 04 D8 */	lfs f1, 0x4d8(r22)
/* 8083C4F0  EC 1D 07 B2 */	fmuls f0, f29, f30
/* 8083C4F4  EC 01 00 2A */	fadds f0, f1, f0
/* 8083C4F8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8083C4FC  38 61 00 4C */	addi r3, r1, 0x4c
/* 8083C500  4B 7E 17 BC */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8083C504  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083C508  41 82 04 14 */	beq lbl_8083C91C
/* 8083C50C  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C510  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C514  90 01 00 68 */	stw r0, 0x68(r1)
/* 8083C518  7F 43 D3 78 */	mr r3, r26
/* 8083C51C  7F 84 E3 78 */	mr r4, r28
/* 8083C520  38 A1 00 58 */	addi r5, r1, 0x58
/* 8083C524  4B 83 82 20 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8083C528  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8083C52C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8083C530  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8083C534  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8083C538  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8083C53C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8083C540  38 61 00 10 */	addi r3, r1, 0x10
/* 8083C544  4B B0 AB F4 */	b PSVECSquareMag
/* 8083C548  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8083C54C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C550  40 81 00 58 */	ble lbl_8083C5A8
/* 8083C554  FC 00 08 34 */	frsqrte f0, f1
/* 8083C558  C8 9E 01 60 */	lfd f4, 0x160(r30)
/* 8083C55C  FC 44 00 32 */	fmul f2, f4, f0
/* 8083C560  C8 7E 01 68 */	lfd f3, 0x168(r30)
/* 8083C564  FC 00 00 32 */	fmul f0, f0, f0
/* 8083C568  FC 01 00 32 */	fmul f0, f1, f0
/* 8083C56C  FC 03 00 28 */	fsub f0, f3, f0
/* 8083C570  FC 02 00 32 */	fmul f0, f2, f0
/* 8083C574  FC 44 00 32 */	fmul f2, f4, f0
/* 8083C578  FC 00 00 32 */	fmul f0, f0, f0
/* 8083C57C  FC 01 00 32 */	fmul f0, f1, f0
/* 8083C580  FC 03 00 28 */	fsub f0, f3, f0
/* 8083C584  FC 02 00 32 */	fmul f0, f2, f0
/* 8083C588  FC 44 00 32 */	fmul f2, f4, f0
/* 8083C58C  FC 00 00 32 */	fmul f0, f0, f0
/* 8083C590  FC 01 00 32 */	fmul f0, f1, f0
/* 8083C594  FC 03 00 28 */	fsub f0, f3, f0
/* 8083C598  FC 02 00 32 */	fmul f0, f2, f0
/* 8083C59C  FC 21 00 32 */	fmul f1, f1, f0
/* 8083C5A0  FC 20 08 18 */	frsp f1, f1
/* 8083C5A4  48 00 00 88 */	b lbl_8083C62C
lbl_8083C5A8:
/* 8083C5A8  C8 1E 01 70 */	lfd f0, 0x170(r30)
/* 8083C5AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C5B0  40 80 00 10 */	bge lbl_8083C5C0
/* 8083C5B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8083C5B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8083C5BC  48 00 00 70 */	b lbl_8083C62C
lbl_8083C5C0:
/* 8083C5C0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8083C5C4  80 81 00 08 */	lwz r4, 8(r1)
/* 8083C5C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8083C5CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8083C5D0  7C 03 00 00 */	cmpw r3, r0
/* 8083C5D4  41 82 00 14 */	beq lbl_8083C5E8
/* 8083C5D8  40 80 00 40 */	bge lbl_8083C618
/* 8083C5DC  2C 03 00 00 */	cmpwi r3, 0
/* 8083C5E0  41 82 00 20 */	beq lbl_8083C600
/* 8083C5E4  48 00 00 34 */	b lbl_8083C618
lbl_8083C5E8:
/* 8083C5E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8083C5EC  41 82 00 0C */	beq lbl_8083C5F8
/* 8083C5F0  38 00 00 01 */	li r0, 1
/* 8083C5F4  48 00 00 28 */	b lbl_8083C61C
lbl_8083C5F8:
/* 8083C5F8  38 00 00 02 */	li r0, 2
/* 8083C5FC  48 00 00 20 */	b lbl_8083C61C
lbl_8083C600:
/* 8083C600  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8083C604  41 82 00 0C */	beq lbl_8083C610
/* 8083C608  38 00 00 05 */	li r0, 5
/* 8083C60C  48 00 00 10 */	b lbl_8083C61C
lbl_8083C610:
/* 8083C610  38 00 00 03 */	li r0, 3
/* 8083C614  48 00 00 08 */	b lbl_8083C61C
lbl_8083C618:
/* 8083C618  38 00 00 04 */	li r0, 4
lbl_8083C61C:
/* 8083C61C  2C 00 00 01 */	cmpwi r0, 1
/* 8083C620  40 82 00 0C */	bne lbl_8083C62C
/* 8083C624  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8083C628  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8083C62C:
/* 8083C62C  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 8083C630  4B A2 B0 44 */	b cM_atan2s__Fff
/* 8083C634  7C 7F 1B 78 */	mr r31, r3
/* 8083C638  C0 3E 02 14 */	lfs f1, 0x214(r30)
/* 8083C63C  C0 1B 00 D4 */	lfs f0, 0xd4(r27)
/* 8083C640  EC 01 00 32 */	fmuls f0, f1, f0
/* 8083C644  FC 00 00 1E */	fctiwz f0, f0
/* 8083C648  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 8083C64C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8083C650  7C 00 07 34 */	extsh r0, r0
/* 8083C654  C8 3E 01 80 */	lfd f1, 0x180(r30)
/* 8083C658  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083C65C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8083C660  3C 00 43 30 */	lis r0, 0x4330
/* 8083C664  90 01 00 88 */	stw r0, 0x88(r1)
/* 8083C668  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8083C66C  EF 60 08 28 */	fsubs f27, f0, f1
/* 8083C670  80 16 17 44 */	lwz r0, 0x1744(r22)
/* 8083C674  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8083C678  40 82 01 10 */	bne lbl_8083C788
/* 8083C67C  3B 00 00 00 */	li r24, 0
/* 8083C680  3A A0 00 00 */	li r21, 0
/* 8083C684  C3 3E 01 50 */	lfs f25, 0x150(r30)
/* 8083C688  48 00 00 F0 */	b lbl_8083C778
lbl_8083C68C:
/* 8083C68C  38 15 12 5C */	addi r0, r21, 0x125c
/* 8083C690  7E 76 00 2E */	lwzx r19, r22, r0
/* 8083C694  38 73 05 68 */	addi r3, r19, 0x568
/* 8083C698  38 81 00 4C */	addi r4, r1, 0x4c
/* 8083C69C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8083C6A0  4B B0 A6 CC */	b PSMTXMultVec
/* 8083C6A4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8083C6A8  FC 01 C8 40 */	fcmpo cr0, f1, f25
/* 8083C6AC  4C 41 13 82 */	cror 2, 1, 2
/* 8083C6B0  40 82 00 54 */	bne lbl_8083C704
/* 8083C6B4  C0 13 04 F0 */	lfs f0, 0x4f0(r19)
/* 8083C6B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C6BC  4C 40 13 82 */	cror 2, 0, 2
/* 8083C6C0  40 82 00 44 */	bne lbl_8083C704
/* 8083C6C4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8083C6C8  FC 00 02 10 */	fabs f0, f0
/* 8083C6CC  FC 20 00 18 */	frsp f1, f0
/* 8083C6D0  C0 13 04 EC */	lfs f0, 0x4ec(r19)
/* 8083C6D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C6D8  4C 40 13 82 */	cror 2, 0, 2
/* 8083C6DC  40 82 00 28 */	bne lbl_8083C704
/* 8083C6E0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8083C6E4  FC 00 02 10 */	fabs f0, f0
/* 8083C6E8  FC 20 00 18 */	frsp f1, f0
/* 8083C6EC  C0 13 04 F4 */	lfs f0, 0x4f4(r19)
/* 8083C6F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C6F4  4C 40 13 82 */	cror 2, 0, 2
/* 8083C6F8  40 82 00 0C */	bne lbl_8083C704
/* 8083C6FC  38 00 00 01 */	li r0, 1
/* 8083C700  48 00 00 08 */	b lbl_8083C708
lbl_8083C704:
/* 8083C704  38 00 00 00 */	li r0, 0
lbl_8083C708:
/* 8083C708  2C 00 00 00 */	cmpwi r0, 0
/* 8083C70C  41 82 00 64 */	beq lbl_8083C770
/* 8083C710  C0 1E 02 18 */	lfs f0, 0x218(r30)
/* 8083C714  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8083C718  4C 40 13 82 */	cror 2, 0, 2
/* 8083C71C  40 82 00 40 */	bne lbl_8083C75C
/* 8083C720  2C 17 00 00 */	cmpwi r23, 0
/* 8083C724  41 82 00 24 */	beq lbl_8083C748
/* 8083C728  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 8083C72C  28 00 00 3B */	cmplwi r0, 0x3b
/* 8083C730  41 82 00 18 */	beq lbl_8083C748
/* 8083C734  80 16 17 44 */	lwz r0, 0x1744(r22)
/* 8083C738  64 00 00 04 */	oris r0, r0, 4
/* 8083C73C  90 16 17 44 */	stw r0, 0x1744(r22)
/* 8083C740  38 00 00 1E */	li r0, 0x1e
/* 8083C744  B0 16 17 04 */	sth r0, 0x1704(r22)
lbl_8083C748:
/* 8083C748  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C74C  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C750  90 01 00 68 */	stw r0, 0x68(r1)
/* 8083C754  38 60 00 02 */	li r3, 2
/* 8083C758  48 00 02 D8 */	b lbl_8083CA30
lbl_8083C75C:
/* 8083C75C  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C760  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C764  90 01 00 68 */	stw r0, 0x68(r1)
/* 8083C768  38 60 00 01 */	li r3, 1
/* 8083C76C  48 00 02 C4 */	b lbl_8083CA30
lbl_8083C770:
/* 8083C770  3B 18 00 01 */	addi r24, r24, 1
/* 8083C774  3A B5 00 04 */	addi r21, r21, 4
lbl_8083C778:
/* 8083C778  88 16 16 BE */	lbz r0, 0x16be(r22)
/* 8083C77C  7C 00 07 74 */	extsb r0, r0
/* 8083C780  7C 18 00 00 */	cmpw r24, r0
/* 8083C784  41 80 FF 08 */	blt lbl_8083C68C
lbl_8083C788:
/* 8083C788  7F 43 D3 78 */	mr r3, r26
/* 8083C78C  7F 84 E3 78 */	mr r4, r28
/* 8083C790  4B 83 84 DC */	b GetHorseNoEntry__4dBgSFRC13cBgS_PolyInfo
/* 8083C794  2C 03 00 00 */	cmpwi r3, 0
/* 8083C798  40 82 00 78 */	bne lbl_8083C810
/* 8083C79C  80 16 17 44 */	lwz r0, 0x1744(r22)
/* 8083C7A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8083C7A4  40 82 00 18 */	bne lbl_8083C7BC
/* 8083C7A8  7F 43 D3 78 */	mr r3, r26
/* 8083C7AC  7F 84 E3 78 */	mr r4, r28
/* 8083C7B0  4B 83 83 E8 */	b GetExitId__4dBgSFRC13cBgS_PolyInfo
/* 8083C7B4  2C 03 00 3F */	cmpwi r3, 0x3f
/* 8083C7B8  40 82 00 58 */	bne lbl_8083C810
lbl_8083C7BC:
/* 8083C7BC  7F E0 07 34 */	extsh r0, r31
/* 8083C7C0  C8 3E 01 80 */	lfd f1, 0x180(r30)
/* 8083C7C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083C7C8  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8083C7CC  3C 00 43 30 */	lis r0, 0x4330
/* 8083C7D0  90 01 00 88 */	stw r0, 0x88(r1)
/* 8083C7D4  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8083C7D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8083C7DC  FC 00 D8 40 */	fcmpo cr0, f0, f27
/* 8083C7E0  40 81 00 AC */	ble lbl_8083C88C
/* 8083C7E4  7F 83 E3 78 */	mr r3, r28
/* 8083C7E8  38 80 00 01 */	li r4, 1
/* 8083C7EC  4B 86 59 F4 */	b getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 8083C7F0  7C 60 07 34 */	extsh r0, r3
/* 8083C7F4  2C 00 00 2C */	cmpwi r0, 0x2c
/* 8083C7F8  41 82 00 94 */	beq lbl_8083C88C
/* 8083C7FC  7F 43 D3 78 */	mr r3, r26
/* 8083C800  7F 84 E3 78 */	mr r4, r28
/* 8083C804  4B 83 84 B8 */	b GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 8083C808  2C 03 00 02 */	cmpwi r3, 2
/* 8083C80C  41 82 00 80 */	beq lbl_8083C88C
lbl_8083C810:
/* 8083C810  C0 1E 02 18 */	lfs f0, 0x218(r30)
/* 8083C814  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8083C818  4C 40 13 82 */	cror 2, 0, 2
/* 8083C81C  40 82 00 5C */	bne lbl_8083C878
/* 8083C820  7F E0 07 34 */	extsh r0, r31
/* 8083C824  C8 3E 01 80 */	lfd f1, 0x180(r30)
/* 8083C828  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083C82C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8083C830  3C 00 43 30 */	lis r0, 0x4330
/* 8083C834  90 01 00 88 */	stw r0, 0x88(r1)
/* 8083C838  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8083C83C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8083C840  FC 00 D8 40 */	fcmpo cr0, f0, f27
/* 8083C844  40 81 00 20 */	ble lbl_8083C864
/* 8083C848  2C 17 00 00 */	cmpwi r23, 0
/* 8083C84C  41 82 00 18 */	beq lbl_8083C864
/* 8083C850  80 16 17 44 */	lwz r0, 0x1744(r22)
/* 8083C854  64 00 00 04 */	oris r0, r0, 4
/* 8083C858  90 16 17 44 */	stw r0, 0x1744(r22)
/* 8083C85C  38 00 00 1E */	li r0, 0x1e
/* 8083C860  B0 16 17 04 */	sth r0, 0x1704(r22)
lbl_8083C864:
/* 8083C864  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C868  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C86C  90 01 00 68 */	stw r0, 0x68(r1)
/* 8083C870  38 60 00 02 */	li r3, 2
/* 8083C874  48 00 01 BC */	b lbl_8083CA30
lbl_8083C878:
/* 8083C878  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C87C  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C880  90 01 00 68 */	stw r0, 0x68(r1)
/* 8083C884  38 60 00 01 */	li r3, 1
/* 8083C888  48 00 01 A8 */	b lbl_8083CA30
lbl_8083C88C:
/* 8083C88C  38 61 00 4C */	addi r3, r1, 0x4c
/* 8083C890  4B 7E 14 F4 */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 8083C894  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083C898  41 82 00 78 */	beq lbl_8083C910
/* 8083C89C  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha
/* 8083C8A0  C0 23 0C D8 */	lfs f1, mWaterY__11fopAcM_wt_c@l(r3)
/* 8083C8A4  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 8083C8A8  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 8083C8AC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8083C8B0  C0 1B 00 C8 */	lfs f0, 0xc8(r27)
/* 8083C8B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C8B8  40 81 00 58 */	ble lbl_8083C910
/* 8083C8BC  C0 1E 02 18 */	lfs f0, 0x218(r30)
/* 8083C8C0  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8083C8C4  4C 40 13 82 */	cror 2, 0, 2
/* 8083C8C8  40 82 00 34 */	bne lbl_8083C8FC
/* 8083C8CC  2C 17 00 00 */	cmpwi r23, 0
/* 8083C8D0  41 82 00 18 */	beq lbl_8083C8E8
/* 8083C8D4  80 16 17 44 */	lwz r0, 0x1744(r22)
/* 8083C8D8  64 00 00 04 */	oris r0, r0, 4
/* 8083C8DC  90 16 17 44 */	stw r0, 0x1744(r22)
/* 8083C8E0  38 00 00 1E */	li r0, 0x1e
/* 8083C8E4  B0 16 17 04 */	sth r0, 0x1704(r22)
lbl_8083C8E8:
/* 8083C8E8  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C8EC  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C8F0  90 01 00 68 */	stw r0, 0x68(r1)
/* 8083C8F4  38 60 00 02 */	li r3, 2
/* 8083C8F8  48 00 01 38 */	b lbl_8083CA30
lbl_8083C8FC:
/* 8083C8FC  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C900  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C904  90 01 00 68 */	stw r0, 0x68(r1)
/* 8083C908  38 60 00 01 */	li r3, 1
/* 8083C90C  48 00 01 24 */	b lbl_8083CA30
lbl_8083C910:
/* 8083C910  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083C914  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083C918  90 01 00 68 */	stw r0, 0x68(r1)
lbl_8083C91C:
/* 8083C91C  80 14 00 00 */	lwz r0, 0(r20)
/* 8083C920  28 00 00 00 */	cmplwi r0, 0
/* 8083C924  41 82 00 FC */	beq lbl_8083CA20
/* 8083C928  7C 13 03 78 */	mr r19, r0
/* 8083C92C  48 00 00 EC */	b lbl_8083CA18
lbl_8083C930:
/* 8083C930  88 13 05 71 */	lbz r0, 0x571(r19)
/* 8083C934  28 00 00 00 */	cmplwi r0, 0
/* 8083C938  41 82 00 DC */	beq lbl_8083CA14
/* 8083C93C  7E 63 9B 78 */	mr r3, r19
/* 8083C940  38 81 00 4C */	addi r4, r1, 0x4c
/* 8083C944  38 A1 00 40 */	addi r5, r1, 0x40
/* 8083C948  4B 7E 0F B8 */	b fpoAcM_relativePos__FPC10fopAc_ac_cPC4cXyzP4cXyz
/* 8083C94C  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8083C950  C0 1E 02 1C */	lfs f0, 0x21c(r30)
/* 8083C954  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083C958  4C 41 13 82 */	cror 2, 1, 2
/* 8083C95C  40 82 00 B8 */	bne lbl_8083CA14
/* 8083C960  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 8083C964  C0 13 04 F0 */	lfs f0, 0x4f0(r19)
/* 8083C968  EC 01 00 2A */	fadds f0, f1, f0
/* 8083C96C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083C970  4C 40 13 82 */	cror 2, 0, 2
/* 8083C974  40 82 00 A0 */	bne lbl_8083CA14
/* 8083C978  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8083C97C  FC 00 02 10 */	fabs f0, f0
/* 8083C980  FC 20 00 18 */	frsp f1, f0
/* 8083C984  C0 13 04 EC */	lfs f0, 0x4ec(r19)
/* 8083C988  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C98C  4C 40 13 82 */	cror 2, 0, 2
/* 8083C990  40 82 00 84 */	bne lbl_8083CA14
/* 8083C994  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8083C998  FC 00 02 10 */	fabs f0, f0
/* 8083C99C  FC 20 00 18 */	frsp f1, f0
/* 8083C9A0  C0 13 04 F4 */	lfs f0, 0x4f4(r19)
/* 8083C9A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C9A8  4C 40 13 82 */	cror 2, 0, 2
/* 8083C9AC  40 82 00 68 */	bne lbl_8083CA14
/* 8083C9B0  2C 17 00 00 */	cmpwi r23, 0
/* 8083C9B4  41 82 00 40 */	beq lbl_8083C9F4
/* 8083C9B8  C0 36 05 2C */	lfs f1, 0x52c(r22)
/* 8083C9BC  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8083C9C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083C9C4  40 81 00 30 */	ble lbl_8083C9F4
/* 8083C9C8  88 16 16 B4 */	lbz r0, 0x16b4(r22)
/* 8083C9CC  28 00 00 01 */	cmplwi r0, 1
/* 8083C9D0  40 82 00 24 */	bne lbl_8083C9F4
/* 8083C9D4  80 16 17 44 */	lwz r0, 0x1744(r22)
/* 8083C9D8  60 00 02 00 */	ori r0, r0, 0x200
/* 8083C9DC  90 16 17 44 */	stw r0, 0x1744(r22)
/* 8083C9E0  88 13 05 73 */	lbz r0, 0x573(r19)
/* 8083C9E4  28 00 00 00 */	cmplwi r0, 0
/* 8083C9E8  40 82 00 0C */	bne lbl_8083C9F4
/* 8083C9EC  38 00 00 01 */	li r0, 1
/* 8083C9F0  98 13 05 73 */	stb r0, 0x573(r19)
lbl_8083C9F4:
/* 8083C9F4  C0 1E 02 18 */	lfs f0, 0x218(r30)
/* 8083C9F8  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8083C9FC  4C 40 13 82 */	cror 2, 0, 2
/* 8083CA00  40 82 00 0C */	bne lbl_8083CA0C
/* 8083CA04  38 60 00 02 */	li r3, 2
/* 8083CA08  48 00 00 28 */	b lbl_8083CA30
lbl_8083CA0C:
/* 8083CA0C  38 60 00 01 */	li r3, 1
/* 8083CA10  48 00 00 20 */	b lbl_8083CA30
lbl_8083CA14:
/* 8083CA14  82 73 05 68 */	lwz r19, 0x568(r19)
lbl_8083CA18:
/* 8083CA18  28 13 00 00 */	cmplwi r19, 0
/* 8083CA1C  40 82 FF 14 */	bne lbl_8083C930
lbl_8083CA20:
/* 8083CA20  EF BD D0 2A */	fadds f29, f29, f26
lbl_8083CA24:
/* 8083CA24  FC 1D E0 40 */	fcmpo cr0, f29, f28
/* 8083CA28  41 80 FA B4 */	blt lbl_8083C4DC
/* 8083CA2C  7F 23 CB 78 */	mr r3, r25
lbl_8083CA30:
/* 8083CA30  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 8083CA34  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 8083CA38  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 8083CA3C  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 8083CA40  E3 A1 01 18 */	psq_l f29, 280(r1), 0, 0 /* qr0 */
/* 8083CA44  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 8083CA48  E3 81 01 08 */	psq_l f28, 264(r1), 0, 0 /* qr0 */
/* 8083CA4C  CB 81 01 00 */	lfd f28, 0x100(r1)
/* 8083CA50  E3 61 00 F8 */	psq_l f27, 248(r1), 0, 0 /* qr0 */
/* 8083CA54  CB 61 00 F0 */	lfd f27, 0xf0(r1)
/* 8083CA58  E3 41 00 E8 */	psq_l f26, 232(r1), 0, 0 /* qr0 */
/* 8083CA5C  CB 41 00 E0 */	lfd f26, 0xe0(r1)
/* 8083CA60  E3 21 00 D8 */	psq_l f25, 216(r1), 0, 0 /* qr0 */
/* 8083CA64  CB 21 00 D0 */	lfd f25, 0xd0(r1)
/* 8083CA68  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8083CA6C  4B B2 57 94 */	b _restgpr_19
/* 8083CA70  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8083CA74  7C 08 03 A6 */	mtlr r0
/* 8083CA78  38 21 01 40 */	addi r1, r1, 0x140
/* 8083CA7C  4E 80 00 20 */	blr 
