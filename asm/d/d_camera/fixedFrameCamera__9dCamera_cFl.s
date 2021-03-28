lbl_8017DFAC:
/* 8017DFAC  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 8017DFB0  7C 08 02 A6 */	mflr r0
/* 8017DFB4  90 01 02 14 */	stw r0, 0x214(r1)
/* 8017DFB8  DB E1 02 00 */	stfd f31, 0x200(r1)
/* 8017DFBC  F3 E1 02 08 */	psq_st f31, 520(r1), 0, 0 /* qr0 */
/* 8017DFC0  DB C1 01 F0 */	stfd f30, 0x1f0(r1)
/* 8017DFC4  F3 C1 01 F8 */	psq_st f30, 504(r1), 0, 0 /* qr0 */
/* 8017DFC8  93 E1 01 EC */	stw r31, 0x1ec(r1)
/* 8017DFCC  93 C1 01 E8 */	stw r30, 0x1e8(r1)
/* 8017DFD0  7C 7F 1B 78 */	mr r31, r3
/* 8017DFD4  80 63 0A F4 */	lwz r3, 0xaf4(r3)
/* 8017DFD8  1C 04 00 78 */	mulli r0, r4, 0x78
/* 8017DFDC  7C 63 02 14 */	add r3, r3, r0
/* 8017DFE0  C3 E3 00 68 */	lfs f31, 0x68(r3)
/* 8017DFE4  C3 C3 00 4C */	lfs f30, 0x4c(r3)
/* 8017DFE8  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8017DFEC  28 00 00 00 */	cmplwi r0, 0
/* 8017DFF0  40 82 00 14 */	bne lbl_8017E004
/* 8017DFF4  38 00 00 FF */	li r0, 0xff
/* 8017DFF8  90 1F 04 10 */	stw r0, 0x410(r31)
/* 8017DFFC  38 00 00 00 */	li r0, 0
/* 8017E000  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_8017E004:
/* 8017E004  80 7F 07 D8 */	lwz r3, 0x7d8(r31)
/* 8017E008  2C 03 00 FF */	cmpwi r3, 0xff
/* 8017E00C  40 82 00 0C */	bne lbl_8017E018
/* 8017E010  38 60 00 00 */	li r3, 0
/* 8017E014  48 00 06 F4 */	b lbl_8017E708
lbl_8017E018:
/* 8017E018  80 1F 04 10 */	lwz r0, 0x410(r31)
/* 8017E01C  7C 00 18 00 */	cmpw r0, r3
/* 8017E020  41 82 00 18 */	beq lbl_8017E038
/* 8017E024  38 60 00 00 */	li r3, 0
/* 8017E028  90 7F 01 74 */	stw r3, 0x174(r31)
/* 8017E02C  80 1F 07 D8 */	lwz r0, 0x7d8(r31)
/* 8017E030  90 1F 04 10 */	stw r0, 0x410(r31)
/* 8017E034  98 7F 01 58 */	stb r3, 0x158(r31)
lbl_8017E038:
/* 8017E038  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8017E03C  28 00 00 00 */	cmplwi r0, 0
/* 8017E040  40 82 05 38 */	bne lbl_8017E578
/* 8017E044  3C 60 46 49 */	lis r3, 0x4649 /* 0x46495846@ha */
/* 8017E048  38 03 58 46 */	addi r0, r3, 0x5846 /* 0x46495846@l */
/* 8017E04C  90 1F 03 E8 */	stw r0, 0x3e8(r31)
/* 8017E050  C0 5F 07 CC */	lfs f2, 0x7cc(r31)
/* 8017E054  C0 3F 07 C8 */	lfs f1, 0x7c8(r31)
/* 8017E058  C0 1F 07 C4 */	lfs f0, 0x7c4(r31)
/* 8017E05C  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 8017E060  D0 21 01 0C */	stfs f1, 0x10c(r1)
/* 8017E064  D0 41 01 10 */	stfs f2, 0x110(r1)
/* 8017E068  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 8017E06C  D0 3F 03 F0 */	stfs f1, 0x3f0(r31)
/* 8017E070  D0 5F 03 F4 */	stfs f2, 0x3f4(r31)
/* 8017E074  38 61 00 34 */	addi r3, r1, 0x34
/* 8017E078  C0 22 9D B0 */	lfs f1, lit_10567(r2)
/* 8017E07C  A8 1F 07 D0 */	lha r0, 0x7d0(r31)
/* 8017E080  7C 00 00 D0 */	neg r0, r0
/* 8017E084  7C 04 07 34 */	extsh r4, r0
/* 8017E088  A8 BF 07 D2 */	lha r5, 0x7d2(r31)
/* 8017E08C  48 0F 37 95 */	bl __ct__7cSGlobeFfss
/* 8017E090  38 61 00 FC */	addi r3, r1, 0xfc
/* 8017E094  38 81 00 34 */	addi r4, r1, 0x34
/* 8017E098  48 0F 3A 1D */	bl Xyz__7cSGlobeCFv
/* 8017E09C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8017E0A0  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8017E0A4  38 A1 00 FC */	addi r5, r1, 0xfc
/* 8017E0A8  48 0E 8A 3D */	bl __pl__4cXyzCFRC3Vec
/* 8017E0AC  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 8017E0B0  D0 1F 04 20 */	stfs f0, 0x420(r31)
/* 8017E0B4  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 8017E0B8  D0 1F 04 24 */	stfs f0, 0x424(r31)
/* 8017E0BC  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 8017E0C0  D0 1F 04 28 */	stfs f0, 0x428(r31)
/* 8017E0C4  C0 1F 04 20 */	lfs f0, 0x420(r31)
/* 8017E0C8  D0 1F 04 14 */	stfs f0, 0x414(r31)
/* 8017E0CC  C0 1F 04 24 */	lfs f0, 0x424(r31)
/* 8017E0D0  D0 1F 04 18 */	stfs f0, 0x418(r31)
/* 8017E0D4  C0 1F 04 28 */	lfs f0, 0x428(r31)
/* 8017E0D8  D0 1F 04 1C */	stfs f0, 0x41c(r31)
/* 8017E0DC  38 61 01 4C */	addi r3, r1, 0x14c
/* 8017E0E0  38 9F 04 14 */	addi r4, r31, 0x414
/* 8017E0E4  38 BF 03 EC */	addi r5, r31, 0x3ec
/* 8017E0E8  48 0F 11 C1 */	bl __ct__8cM3dGLinFRC4cXyzRC4cXyz
/* 8017E0EC  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8017E0F0  7F E4 FB 78 */	mr r4, r31
/* 8017E0F4  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8017E0F8  4B F1 96 25 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017E0FC  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 8017E100  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 8017E104  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 8017E108  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 8017E10C  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 8017E110  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 8017E114  38 61 01 4C */	addi r3, r1, 0x14c
/* 8017E118  38 81 01 2C */	addi r4, r1, 0x12c
/* 8017E11C  38 A1 01 20 */	addi r5, r1, 0x120
/* 8017E120  38 C1 00 30 */	addi r6, r1, 0x30
/* 8017E124  48 0E A5 ED */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 8017E128  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017E12C  41 82 00 20 */	beq lbl_8017E14C
/* 8017E130  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 8017E134  D0 1F 04 14 */	stfs f0, 0x414(r31)
/* 8017E138  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 8017E13C  D0 1F 04 18 */	stfs f0, 0x418(r31)
/* 8017E140  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 8017E144  D0 1F 04 1C */	stfs f0, 0x41c(r31)
/* 8017E148  48 00 01 74 */	b lbl_8017E2BC
lbl_8017E14C:
/* 8017E14C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8017E150  7F E4 FB 78 */	mr r4, r31
/* 8017E154  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8017E158  4B F1 95 C5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017E15C  38 61 00 CC */	addi r3, r1, 0xcc
/* 8017E160  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8017E164  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 8017E168  48 0E 89 CD */	bl __mi__4cXyzCFRC3Vec
/* 8017E16C  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 8017E170  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8017E174  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8017E178  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8017E17C  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8017E180  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8017E184  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8017E188  48 1C 8F B1 */	bl PSVECSquareMag
/* 8017E18C  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017E190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017E194  40 81 00 58 */	ble lbl_8017E1EC
/* 8017E198  FC 00 08 34 */	frsqrte f0, f1
/* 8017E19C  C8 82 9C C8 */	lfd f4, lit_6177(r2)
/* 8017E1A0  FC 44 00 32 */	fmul f2, f4, f0
/* 8017E1A4  C8 62 9C D0 */	lfd f3, lit_6178(r2)
/* 8017E1A8  FC 00 00 32 */	fmul f0, f0, f0
/* 8017E1AC  FC 01 00 32 */	fmul f0, f1, f0
/* 8017E1B0  FC 03 00 28 */	fsub f0, f3, f0
/* 8017E1B4  FC 02 00 32 */	fmul f0, f2, f0
/* 8017E1B8  FC 44 00 32 */	fmul f2, f4, f0
/* 8017E1BC  FC 00 00 32 */	fmul f0, f0, f0
/* 8017E1C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8017E1C4  FC 03 00 28 */	fsub f0, f3, f0
/* 8017E1C8  FC 02 00 32 */	fmul f0, f2, f0
/* 8017E1CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8017E1D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8017E1D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8017E1D8  FC 03 00 28 */	fsub f0, f3, f0
/* 8017E1DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8017E1E0  FC 21 00 32 */	fmul f1, f1, f0
/* 8017E1E4  FC 20 08 18 */	frsp f1, f1
/* 8017E1E8  48 00 00 88 */	b lbl_8017E270
lbl_8017E1EC:
/* 8017E1EC  C8 02 9C D8 */	lfd f0, lit_6179(r2)
/* 8017E1F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017E1F4  40 80 00 10 */	bge lbl_8017E204
/* 8017E1F8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8017E1FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8017E200  48 00 00 70 */	b lbl_8017E270
lbl_8017E204:
/* 8017E204  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8017E208  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8017E20C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8017E210  3C 00 7F 80 */	lis r0, 0x7f80
/* 8017E214  7C 03 00 00 */	cmpw r3, r0
/* 8017E218  41 82 00 14 */	beq lbl_8017E22C
/* 8017E21C  40 80 00 40 */	bge lbl_8017E25C
/* 8017E220  2C 03 00 00 */	cmpwi r3, 0
/* 8017E224  41 82 00 20 */	beq lbl_8017E244
/* 8017E228  48 00 00 34 */	b lbl_8017E25C
lbl_8017E22C:
/* 8017E22C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8017E230  41 82 00 0C */	beq lbl_8017E23C
/* 8017E234  38 00 00 01 */	li r0, 1
/* 8017E238  48 00 00 28 */	b lbl_8017E260
lbl_8017E23C:
/* 8017E23C  38 00 00 02 */	li r0, 2
/* 8017E240  48 00 00 20 */	b lbl_8017E260
lbl_8017E244:
/* 8017E244  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8017E248  41 82 00 0C */	beq lbl_8017E254
/* 8017E24C  38 00 00 05 */	li r0, 5
/* 8017E250  48 00 00 10 */	b lbl_8017E260
lbl_8017E254:
/* 8017E254  38 00 00 03 */	li r0, 3
/* 8017E258  48 00 00 08 */	b lbl_8017E260
lbl_8017E25C:
/* 8017E25C  38 00 00 04 */	li r0, 4
lbl_8017E260:
/* 8017E260  2C 00 00 01 */	cmpwi r0, 1
/* 8017E264  40 82 00 0C */	bne lbl_8017E270
/* 8017E268  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8017E26C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8017E270:
/* 8017E270  38 61 00 34 */	addi r3, r1, 0x34
/* 8017E274  A8 1F 07 D0 */	lha r0, 0x7d0(r31)
/* 8017E278  7C 00 00 D0 */	neg r0, r0
/* 8017E27C  7C 04 07 34 */	extsh r4, r0
/* 8017E280  A8 BF 07 D2 */	lha r5, 0x7d2(r31)
/* 8017E284  48 0F 37 21 */	bl Val__7cSGlobeFfss
/* 8017E288  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8017E28C  38 81 00 34 */	addi r4, r1, 0x34
/* 8017E290  48 0F 38 25 */	bl Xyz__7cSGlobeCFv
/* 8017E294  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8017E298  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8017E29C  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 8017E2A0  48 0E 88 45 */	bl __pl__4cXyzCFRC3Vec
/* 8017E2A4  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8017E2A8  D0 1F 04 14 */	stfs f0, 0x414(r31)
/* 8017E2AC  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8017E2B0  D0 1F 04 18 */	stfs f0, 0x418(r31)
/* 8017E2B4  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8017E2B8  D0 1F 04 1C */	stfs f0, 0x41c(r31)
lbl_8017E2BC:
/* 8017E2BC  38 61 01 68 */	addi r3, r1, 0x168
/* 8017E2C0  4B EF 9A E5 */	bl __ct__14dBgS_CamLinChkFv
/* 8017E2C4  7F E3 FB 78 */	mr r3, r31
/* 8017E2C8  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8017E2CC  38 BF 04 14 */	addi r5, r31, 0x414
/* 8017E2D0  38 C1 01 68 */	addi r6, r1, 0x168
/* 8017E2D4  38 E0 40 B7 */	li r7, 0x40b7
/* 8017E2D8  4B FE 75 E9 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 8017E2DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017E2E0  41 82 00 84 */	beq lbl_8017E364
/* 8017E2E4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8017E2E8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8017E2EC  90 01 01 48 */	stw r0, 0x148(r1)
/* 8017E2F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8017E2F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8017E2F8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8017E2FC  38 81 01 7C */	addi r4, r1, 0x17c
/* 8017E300  38 A1 01 38 */	addi r5, r1, 0x138
/* 8017E304  4B EF 64 41 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8017E308  C0 01 01 98 */	lfs f0, 0x198(r1)
/* 8017E30C  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 8017E310  C0 01 01 9C */	lfs f0, 0x19c(r1)
/* 8017E314  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 8017E318  C0 01 01 A0 */	lfs f0, 0x1a0(r1)
/* 8017E31C  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 8017E320  38 61 00 9C */	addi r3, r1, 0x9c
/* 8017E324  38 81 01 38 */	addi r4, r1, 0x138
/* 8017E328  C0 22 9D 50 */	lfs f1, lit_9405(r2)
/* 8017E32C  48 0E 88 59 */	bl __ml__4cXyzCFf
/* 8017E330  38 61 00 90 */	addi r3, r1, 0x90
/* 8017E334  38 81 01 14 */	addi r4, r1, 0x114
/* 8017E338  38 A1 00 9C */	addi r5, r1, 0x9c
/* 8017E33C  48 0E 87 F9 */	bl __mi__4cXyzCFRC3Vec
/* 8017E340  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8017E344  D0 1F 04 14 */	stfs f0, 0x414(r31)
/* 8017E348  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8017E34C  D0 1F 04 18 */	stfs f0, 0x418(r31)
/* 8017E350  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8017E354  D0 1F 04 1C */	stfs f0, 0x41c(r31)
/* 8017E358  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8017E35C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8017E360  90 01 01 48 */	stw r0, 0x148(r1)
lbl_8017E364:
/* 8017E364  38 61 00 84 */	addi r3, r1, 0x84
/* 8017E368  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8017E36C  38 BF 04 14 */	addi r5, r31, 0x414
/* 8017E370  48 0E 87 C5 */	bl __mi__4cXyzCFRC3Vec
/* 8017E374  38 7F 03 F8 */	addi r3, r31, 0x3f8
/* 8017E378  38 81 00 84 */	addi r4, r1, 0x84
/* 8017E37C  48 0F 36 F5 */	bl Val__7cSGlobeFRC4cXyz
/* 8017E380  88 1F 07 BD */	lbz r0, 0x7bd(r31)
/* 8017E384  28 00 00 FF */	cmplwi r0, 0xff
/* 8017E388  40 82 00 08 */	bne lbl_8017E390
/* 8017E38C  48 00 00 1C */	b lbl_8017E3A8
lbl_8017E390:
/* 8017E390  C8 22 9D 60 */	lfd f1, lit_9410(r2)
/* 8017E394  90 01 01 DC */	stw r0, 0x1dc(r1)
/* 8017E398  3C 00 43 30 */	lis r0, 0x4330
/* 8017E39C  90 01 01 D8 */	stw r0, 0x1d8(r1)
/* 8017E3A0  C8 01 01 D8 */	lfd f0, 0x1d8(r1)
/* 8017E3A4  EF C0 08 28 */	fsubs f30, f0, f1
lbl_8017E3A8:
/* 8017E3A8  D3 DF 04 0C */	stfs f30, 0x40c(r31)
/* 8017E3AC  88 7F 07 BF */	lbz r3, 0x7bf(r31)
/* 8017E3B0  28 03 00 FF */	cmplwi r3, 0xff
/* 8017E3B4  38 00 FF FF */	li r0, -1
/* 8017E3B8  41 82 00 08 */	beq lbl_8017E3C0
/* 8017E3BC  7C 60 1B 78 */	mr r0, r3
lbl_8017E3C0:
/* 8017E3C0  2C 00 FF FF */	cmpwi r0, -1
/* 8017E3C4  40 82 01 68 */	bne lbl_8017E52C
/* 8017E3C8  38 61 00 78 */	addi r3, r1, 0x78
/* 8017E3CC  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8017E3D0  38 BF 00 3C */	addi r5, r31, 0x3c
/* 8017E3D4  48 0E 87 61 */	bl __mi__4cXyzCFRC3Vec
/* 8017E3D8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8017E3DC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8017E3E0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8017E3E4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8017E3E8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8017E3EC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8017E3F0  38 61 00 6C */	addi r3, r1, 0x6c
/* 8017E3F4  48 1C 8D 45 */	bl PSVECSquareMag
/* 8017E3F8  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017E3FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017E400  40 81 00 58 */	ble lbl_8017E458
/* 8017E404  FC 00 08 34 */	frsqrte f0, f1
/* 8017E408  C8 82 9C C8 */	lfd f4, lit_6177(r2)
/* 8017E40C  FC 44 00 32 */	fmul f2, f4, f0
/* 8017E410  C8 62 9C D0 */	lfd f3, lit_6178(r2)
/* 8017E414  FC 00 00 32 */	fmul f0, f0, f0
/* 8017E418  FC 01 00 32 */	fmul f0, f1, f0
/* 8017E41C  FC 03 00 28 */	fsub f0, f3, f0
/* 8017E420  FC 02 00 32 */	fmul f0, f2, f0
/* 8017E424  FC 44 00 32 */	fmul f2, f4, f0
/* 8017E428  FC 00 00 32 */	fmul f0, f0, f0
/* 8017E42C  FC 01 00 32 */	fmul f0, f1, f0
/* 8017E430  FC 03 00 28 */	fsub f0, f3, f0
/* 8017E434  FC 02 00 32 */	fmul f0, f2, f0
/* 8017E438  FC 44 00 32 */	fmul f2, f4, f0
/* 8017E43C  FC 00 00 32 */	fmul f0, f0, f0
/* 8017E440  FC 01 00 32 */	fmul f0, f1, f0
/* 8017E444  FC 03 00 28 */	fsub f0, f3, f0
/* 8017E448  FC 02 00 32 */	fmul f0, f2, f0
/* 8017E44C  FF C1 00 32 */	fmul f30, f1, f0
/* 8017E450  FF C0 F0 18 */	frsp f30, f30
/* 8017E454  48 00 00 90 */	b lbl_8017E4E4
lbl_8017E458:
/* 8017E458  C8 02 9C D8 */	lfd f0, lit_6179(r2)
/* 8017E45C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017E460  40 80 00 10 */	bge lbl_8017E470
/* 8017E464  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8017E468  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 8017E46C  48 00 00 78 */	b lbl_8017E4E4
lbl_8017E470:
/* 8017E470  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8017E474  80 81 00 28 */	lwz r4, 0x28(r1)
/* 8017E478  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8017E47C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8017E480  7C 03 00 00 */	cmpw r3, r0
/* 8017E484  41 82 00 14 */	beq lbl_8017E498
/* 8017E488  40 80 00 40 */	bge lbl_8017E4C8
/* 8017E48C  2C 03 00 00 */	cmpwi r3, 0
/* 8017E490  41 82 00 20 */	beq lbl_8017E4B0
/* 8017E494  48 00 00 34 */	b lbl_8017E4C8
lbl_8017E498:
/* 8017E498  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8017E49C  41 82 00 0C */	beq lbl_8017E4A8
/* 8017E4A0  38 00 00 01 */	li r0, 1
/* 8017E4A4  48 00 00 28 */	b lbl_8017E4CC
lbl_8017E4A8:
/* 8017E4A8  38 00 00 02 */	li r0, 2
/* 8017E4AC  48 00 00 20 */	b lbl_8017E4CC
lbl_8017E4B0:
/* 8017E4B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8017E4B4  41 82 00 0C */	beq lbl_8017E4C0
/* 8017E4B8  38 00 00 05 */	li r0, 5
/* 8017E4BC  48 00 00 10 */	b lbl_8017E4CC
lbl_8017E4C0:
/* 8017E4C0  38 00 00 03 */	li r0, 3
/* 8017E4C4  48 00 00 08 */	b lbl_8017E4CC
lbl_8017E4C8:
/* 8017E4C8  38 00 00 04 */	li r0, 4
lbl_8017E4CC:
/* 8017E4CC  2C 00 00 01 */	cmpwi r0, 1
/* 8017E4D0  40 82 00 10 */	bne lbl_8017E4E0
/* 8017E4D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8017E4D8  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 8017E4DC  48 00 00 08 */	b lbl_8017E4E4
lbl_8017E4E0:
/* 8017E4E0  FF C0 08 90 */	fmr f30, f1
lbl_8017E4E4:
/* 8017E4E4  7F E3 FB 78 */	mr r3, r31
/* 8017E4E8  80 9F 01 80 */	lwz r4, 0x180(r31)
/* 8017E4EC  4B FE 68 41 */	bl heightOf__9dCamera_cFP10fopAc_ac_c
/* 8017E4F0  EC 3E 08 24 */	fdivs f1, f30, f1
/* 8017E4F4  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017E4F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017E4FC  40 81 00 10 */	ble lbl_8017E50C
/* 8017E500  FC 00 08 34 */	frsqrte f0, f1
/* 8017E504  EC 00 00 72 */	fmuls f0, f0, f1
/* 8017E508  48 00 00 08 */	b lbl_8017E510
lbl_8017E50C:
/* 8017E50C  FC 00 08 90 */	fmr f0, f1
lbl_8017E510:
/* 8017E510  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8017E514  FC 00 00 1E */	fctiwz f0, f0
/* 8017E518  D8 01 01 D8 */	stfd f0, 0x1d8(r1)
/* 8017E51C  80 61 01 DC */	lwz r3, 0x1dc(r1)
/* 8017E520  38 03 00 01 */	addi r0, r3, 1
/* 8017E524  90 1F 04 00 */	stw r0, 0x400(r31)
/* 8017E528  48 00 00 08 */	b lbl_8017E530
lbl_8017E52C:
/* 8017E52C  90 1F 04 00 */	stw r0, 0x400(r31)
lbl_8017E530:
/* 8017E530  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8017E534  38 03 00 01 */	addi r0, r3, 1
/* 8017E538  7C 03 01 D6 */	mullw r0, r3, r0
/* 8017E53C  7C 00 0E 70 */	srawi r0, r0, 1
/* 8017E540  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017E544  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017E548  90 01 01 DC */	stw r0, 0x1dc(r1)
/* 8017E54C  3C 00 43 30 */	lis r0, 0x4330
/* 8017E550  90 01 01 D8 */	stw r0, 0x1d8(r1)
/* 8017E554  C8 01 01 D8 */	lfd f0, 0x1d8(r1)
/* 8017E558  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017E55C  D0 1F 04 04 */	stfs f0, 0x404(r31)
/* 8017E560  38 61 01 68 */	addi r3, r1, 0x168
/* 8017E564  38 80 FF FF */	li r4, -1
/* 8017E568  4B EF 98 99 */	bl __dt__14dBgS_CamLinChkFv
/* 8017E56C  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 8017E570  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 8017E574  90 01 01 64 */	stw r0, 0x164(r1)
lbl_8017E578:
/* 8017E578  88 1F 01 58 */	lbz r0, 0x158(r31)
/* 8017E57C  28 00 00 00 */	cmplwi r0, 0
/* 8017E580  40 82 01 84 */	bne lbl_8017E704
/* 8017E584  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 8017E588  80 1F 04 00 */	lwz r0, 0x400(r31)
/* 8017E58C  7C 03 00 50 */	subf r0, r3, r0
/* 8017E590  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017E594  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017E598  90 01 01 DC */	stw r0, 0x1dc(r1)
/* 8017E59C  3C 00 43 30 */	lis r0, 0x4330
/* 8017E5A0  90 01 01 D8 */	stw r0, 0x1d8(r1)
/* 8017E5A4  C8 01 01 D8 */	lfd f0, 0x1d8(r1)
/* 8017E5A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017E5AC  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 8017E5B0  C0 3F 04 08 */	lfs f1, 0x408(r31)
/* 8017E5B4  C0 1F 04 04 */	lfs f0, 0x404(r31)
/* 8017E5B8  EF C1 00 24 */	fdivs f30, f1, f0
/* 8017E5BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017E5C0  D0 1F 04 04 */	stfs f0, 0x404(r31)
/* 8017E5C4  38 61 00 60 */	addi r3, r1, 0x60
/* 8017E5C8  38 9F 04 14 */	addi r4, r31, 0x414
/* 8017E5CC  38 BF 00 64 */	addi r5, r31, 0x64
/* 8017E5D0  48 0E 85 65 */	bl __mi__4cXyzCFRC3Vec
/* 8017E5D4  38 61 00 54 */	addi r3, r1, 0x54
/* 8017E5D8  38 81 00 60 */	addi r4, r1, 0x60
/* 8017E5DC  FC 20 F0 90 */	fmr f1, f30
/* 8017E5E0  48 0E 85 A5 */	bl __ml__4cXyzCFf
/* 8017E5E4  38 7F 00 64 */	addi r3, r31, 0x64
/* 8017E5E8  38 81 00 54 */	addi r4, r1, 0x54
/* 8017E5EC  7C 65 1B 78 */	mr r5, r3
/* 8017E5F0  48 1C 8A A1 */	bl PSVECAdd
/* 8017E5F4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8017E5F8  C0 1F 03 F8 */	lfs f0, 0x3f8(r31)
/* 8017E5FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017E600  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8017E604  EC 01 00 2A */	fadds f0, f1, f0
/* 8017E608  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8017E60C  38 61 00 24 */	addi r3, r1, 0x24
/* 8017E610  38 9F 03 FC */	addi r4, r31, 0x3fc
/* 8017E614  3B DF 00 60 */	addi r30, r31, 0x60
/* 8017E618  7F C5 F3 78 */	mr r5, r30
/* 8017E61C  48 0F 2B 89 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017E620  38 61 00 20 */	addi r3, r1, 0x20
/* 8017E624  38 81 00 24 */	addi r4, r1, 0x24
/* 8017E628  FC 20 F0 90 */	fmr f1, f30
/* 8017E62C  48 0F 2C 39 */	bl __ml__7cSAngleCFf
/* 8017E630  38 61 00 1C */	addi r3, r1, 0x1c
/* 8017E634  7F C4 F3 78 */	mr r4, r30
/* 8017E638  38 A1 00 20 */	addi r5, r1, 0x20
/* 8017E63C  48 0F 2B 39 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017E640  38 61 00 0C */	addi r3, r1, 0xc
/* 8017E644  A8 81 00 1C */	lha r4, 0x1c(r1)
/* 8017E648  48 0F 29 51 */	bl __ct__7cSAngleFs
/* 8017E64C  A8 01 00 0C */	lha r0, 0xc(r1)
/* 8017E650  B0 1F 00 60 */	sth r0, 0x60(r31)
/* 8017E654  38 61 00 18 */	addi r3, r1, 0x18
/* 8017E658  38 9F 03 FE */	addi r4, r31, 0x3fe
/* 8017E65C  3B DF 00 62 */	addi r30, r31, 0x62
/* 8017E660  7F C5 F3 78 */	mr r5, r30
/* 8017E664  48 0F 2B 41 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017E668  38 61 00 14 */	addi r3, r1, 0x14
/* 8017E66C  38 81 00 18 */	addi r4, r1, 0x18
/* 8017E670  FC 20 F0 90 */	fmr f1, f30
/* 8017E674  48 0F 2B F1 */	bl __ml__7cSAngleCFf
/* 8017E678  38 61 00 10 */	addi r3, r1, 0x10
/* 8017E67C  7F C4 F3 78 */	mr r4, r30
/* 8017E680  38 A1 00 14 */	addi r5, r1, 0x14
/* 8017E684  48 0F 2A F1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017E688  38 61 00 08 */	addi r3, r1, 8
/* 8017E68C  A8 81 00 10 */	lha r4, 0x10(r1)
/* 8017E690  48 0F 29 09 */	bl __ct__7cSAngleFs
/* 8017E694  A8 01 00 08 */	lha r0, 8(r1)
/* 8017E698  B0 1F 00 62 */	sth r0, 0x62(r31)
/* 8017E69C  38 61 00 48 */	addi r3, r1, 0x48
/* 8017E6A0  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8017E6A4  48 0F 34 11 */	bl Xyz__7cSGlobeCFv
/* 8017E6A8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8017E6AC  38 9F 00 64 */	addi r4, r31, 0x64
/* 8017E6B0  38 A1 00 48 */	addi r5, r1, 0x48
/* 8017E6B4  48 0E 84 31 */	bl __pl__4cXyzCFRC3Vec
/* 8017E6B8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8017E6BC  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 8017E6C0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8017E6C4  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8017E6C8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8017E6CC  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8017E6D0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8017E6D4  C0 1F 04 0C */	lfs f0, 0x40c(r31)
/* 8017E6D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017E6DC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8017E6E0  EC 01 00 2A */	fadds f0, f1, f0
/* 8017E6E4  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8017E6E8  80 9F 01 74 */	lwz r4, 0x174(r31)
/* 8017E6EC  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8017E6F0  38 03 FF FF */	addi r0, r3, -1
/* 8017E6F4  7C 04 00 40 */	cmplw r4, r0
/* 8017E6F8  41 80 00 0C */	blt lbl_8017E704
/* 8017E6FC  38 00 00 01 */	li r0, 1
/* 8017E700  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_8017E704:
/* 8017E704  38 60 00 01 */	li r3, 1
lbl_8017E708:
/* 8017E708  E3 E1 02 08 */	psq_l f31, 520(r1), 0, 0 /* qr0 */
/* 8017E70C  CB E1 02 00 */	lfd f31, 0x200(r1)
/* 8017E710  E3 C1 01 F8 */	psq_l f30, 504(r1), 0, 0 /* qr0 */
/* 8017E714  CB C1 01 F0 */	lfd f30, 0x1f0(r1)
/* 8017E718  83 E1 01 EC */	lwz r31, 0x1ec(r1)
/* 8017E71C  83 C1 01 E8 */	lwz r30, 0x1e8(r1)
/* 8017E720  80 01 02 14 */	lwz r0, 0x214(r1)
/* 8017E724  7C 08 03 A6 */	mtlr r0
/* 8017E728  38 21 02 10 */	addi r1, r1, 0x210
/* 8017E72C  4E 80 00 20 */	blr 
