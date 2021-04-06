lbl_807AF01C:
/* 807AF01C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 807AF020  7C 08 02 A6 */	mflr r0
/* 807AF024  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 807AF028  39 61 00 E0 */	addi r11, r1, 0xe0
/* 807AF02C  4B BB 31 B1 */	bl _savegpr_29
/* 807AF030  7C 7E 1B 78 */	mr r30, r3
/* 807AF034  3C 80 80 7B */	lis r4, lit_3909@ha /* 0x807AFD2C@ha */
/* 807AF038  3B E4 FD 2C */	addi r31, r4, lit_3909@l /* 0x807AFD2C@l */
/* 807AF03C  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807AF040  2C 00 00 00 */	cmpwi r0, 0
/* 807AF044  41 82 00 20 */	beq lbl_807AF064
/* 807AF048  40 80 00 10 */	bge lbl_807AF058
/* 807AF04C  2C 00 FF FF */	cmpwi r0, -1
/* 807AF050  40 80 02 14 */	bge lbl_807AF264
/* 807AF054  48 00 04 00 */	b lbl_807AF454
lbl_807AF058:
/* 807AF058  2C 00 00 02 */	cmpwi r0, 2
/* 807AF05C  40 80 03 F8 */	bge lbl_807AF454
/* 807AF060  48 00 01 7C */	b lbl_807AF1DC
lbl_807AF064:
/* 807AF064  38 00 00 00 */	li r0, 0
/* 807AF068  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 807AF06C  98 1E 06 E5 */	stb r0, 0x6e5(r30)
/* 807AF070  90 1E 09 B4 */	stw r0, 0x9b4(r30)
/* 807AF074  38 80 00 09 */	li r4, 9
/* 807AF078  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807AF07C  38 A0 00 02 */	li r5, 2
/* 807AF080  FC 40 08 90 */	fmr f2, f1
/* 807AF084  4B FF 83 DD */	bl bckSet__8daE_SW_cFifUcf
/* 807AF088  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AF08C  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 807AF090  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807AF094  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AF098  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807AF09C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807AF0A0  D0 1E 06 68 */	stfs f0, 0x668(r30)
/* 807AF0A4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807AF0A8  D0 1E 06 6C */	stfs f0, 0x66c(r30)
/* 807AF0AC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807AF0B0  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 807AF0B4  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 807AF0B8  38 03 00 01 */	addi r0, r3, 1
/* 807AF0BC  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AF0C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070360@ha */
/* 807AF0C4  38 03 03 60 */	addi r0, r3, 0x0360 /* 0x00070360@l */
/* 807AF0C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807AF0CC  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807AF0D0  38 81 00 0C */	addi r4, r1, 0xc
/* 807AF0D4  38 A0 FF FF */	li r5, -1
/* 807AF0D8  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807AF0DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807AF0E0  7D 89 03 A6 */	mtctr r12
/* 807AF0E4  4E 80 04 21 */	bctrl 
/* 807AF0E8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807AF0EC  A8 1E 06 CC */	lha r0, 0x6cc(r30)
/* 807AF0F0  7C 03 00 50 */	subf r0, r3, r0
/* 807AF0F4  7C 00 07 35 */	extsh. r0, r0
/* 807AF0F8  40 80 00 10 */	bge lbl_807AF108
/* 807AF0FC  38 00 C0 00 */	li r0, -16384
/* 807AF100  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 807AF104  48 00 00 0C */	b lbl_807AF110
lbl_807AF108:
/* 807AF108  38 00 40 00 */	li r0, 0x4000
/* 807AF10C  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
lbl_807AF110:
/* 807AF110  A8 7E 06 CC */	lha r3, 0x6cc(r30)
/* 807AF114  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 807AF118  7C 03 02 14 */	add r0, r3, r0
/* 807AF11C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807AF120  88 1E 06 E8 */	lbz r0, 0x6e8(r30)
/* 807AF124  28 00 00 01 */	cmplwi r0, 1
/* 807AF128  41 80 00 68 */	blt lbl_807AF190
/* 807AF12C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807AF130  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807AF134  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807AF138  4B 85 D2 A5 */	bl mDoMtx_YrotS__FPA4_fs
/* 807AF13C  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 807AF140  2C 00 00 00 */	cmpwi r0, 0
/* 807AF144  40 80 00 18 */	bge lbl_807AF15C
/* 807AF148  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807AF14C  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807AF150  C0 7F 00 04 */	lfs f3, 4(r31)
/* 807AF154  4B 85 DC 49 */	bl transM__14mDoMtx_stack_cFfff
/* 807AF158  48 00 00 14 */	b lbl_807AF16C
lbl_807AF15C:
/* 807AF15C  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 807AF160  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807AF164  C0 7F 00 04 */	lfs f3, 4(r31)
/* 807AF168  4B 85 DC 35 */	bl transM__14mDoMtx_stack_cFfff
lbl_807AF16C:
/* 807AF16C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807AF170  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807AF174  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807AF178  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807AF17C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807AF180  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807AF184  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807AF188  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807AF18C  48 00 00 18 */	b lbl_807AF1A4
lbl_807AF190:
/* 807AF190  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AF194  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807AF198  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807AF19C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807AF1A0  D0 21 00 48 */	stfs f1, 0x48(r1)
lbl_807AF1A4:
/* 807AF1A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807AF1A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807AF1AC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807AF1B0  28 1E 00 00 */	cmplwi r30, 0
/* 807AF1B4  41 82 00 0C */	beq lbl_807AF1C0
/* 807AF1B8  80 9E 00 04 */	lwz r4, 4(r30)
/* 807AF1BC  48 00 00 08 */	b lbl_807AF1C4
lbl_807AF1C0:
/* 807AF1C0  38 80 FF FF */	li r4, -1
lbl_807AF1C4:
/* 807AF1C4  38 A1 00 40 */	addi r5, r1, 0x40
/* 807AF1C8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807AF1CC  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 807AF1D0  7D 89 03 A6 */	mtctr r12
/* 807AF1D4  4E 80 04 21 */	bctrl 
/* 807AF1D8  48 00 02 7C */	b lbl_807AF454
lbl_807AF1DC:
/* 807AF1DC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807AF1E0  A8 9E 06 CC */	lha r4, 0x6cc(r30)
/* 807AF1E4  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 807AF1E8  7C 04 02 14 */	add r0, r4, r0
/* 807AF1EC  7C 04 07 34 */	extsh r4, r0
/* 807AF1F0  38 A0 00 04 */	li r5, 4
/* 807AF1F4  38 C0 10 00 */	li r6, 0x1000
/* 807AF1F8  38 E0 01 00 */	li r7, 0x100
/* 807AF1FC  4B AC 13 45 */	bl cLib_addCalcAngleS__FPsssss
/* 807AF200  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807AF204  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807AF208  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 807AF20C  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 807AF210  40 82 02 44 */	bne lbl_807AF454
/* 807AF214  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 807AF218  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807AF21C  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 807AF220  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AF224  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807AF228  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807AF22C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AF230  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 807AF234  3C 60 80 7B */	lis r3, lit_7081@ha /* 0x807B012C@ha */
/* 807AF238  38 83 01 2C */	addi r4, r3, lit_7081@l /* 0x807B012C@l */
/* 807AF23C  80 64 00 00 */	lwz r3, 0(r4)
/* 807AF240  80 04 00 04 */	lwz r0, 4(r4)
/* 807AF244  90 61 00 28 */	stw r3, 0x28(r1)
/* 807AF248  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807AF24C  80 04 00 08 */	lwz r0, 8(r4)
/* 807AF250  90 01 00 30 */	stw r0, 0x30(r1)
/* 807AF254  7F C3 F3 78 */	mr r3, r30
/* 807AF258  38 81 00 28 */	addi r4, r1, 0x28
/* 807AF25C  4B FF D7 E5 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807AF260  48 00 01 F4 */	b lbl_807AF454
lbl_807AF264:
/* 807AF264  C0 5E 06 70 */	lfs f2, 0x670(r30)
/* 807AF268  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 807AF26C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807AF270  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AF274  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807AF278  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 807AF27C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807AF280  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807AF284  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807AF288  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807AF28C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 807AF290  38 61 00 10 */	addi r3, r1, 0x10
/* 807AF294  38 81 00 1C */	addi r4, r1, 0x1c
/* 807AF298  4B B9 81 05 */	bl PSVECSquareDistance
/* 807AF29C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AF2A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AF2A4  40 81 00 58 */	ble lbl_807AF2FC
/* 807AF2A8  FC 00 08 34 */	frsqrte f0, f1
/* 807AF2AC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807AF2B0  FC 44 00 32 */	fmul f2, f4, f0
/* 807AF2B4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807AF2B8  FC 00 00 32 */	fmul f0, f0, f0
/* 807AF2BC  FC 01 00 32 */	fmul f0, f1, f0
/* 807AF2C0  FC 03 00 28 */	fsub f0, f3, f0
/* 807AF2C4  FC 02 00 32 */	fmul f0, f2, f0
/* 807AF2C8  FC 44 00 32 */	fmul f2, f4, f0
/* 807AF2CC  FC 00 00 32 */	fmul f0, f0, f0
/* 807AF2D0  FC 01 00 32 */	fmul f0, f1, f0
/* 807AF2D4  FC 03 00 28 */	fsub f0, f3, f0
/* 807AF2D8  FC 02 00 32 */	fmul f0, f2, f0
/* 807AF2DC  FC 44 00 32 */	fmul f2, f4, f0
/* 807AF2E0  FC 00 00 32 */	fmul f0, f0, f0
/* 807AF2E4  FC 01 00 32 */	fmul f0, f1, f0
/* 807AF2E8  FC 03 00 28 */	fsub f0, f3, f0
/* 807AF2EC  FC 02 00 32 */	fmul f0, f2, f0
/* 807AF2F0  FC 21 00 32 */	fmul f1, f1, f0
/* 807AF2F4  FC 20 08 18 */	frsp f1, f1
/* 807AF2F8  48 00 00 88 */	b lbl_807AF380
lbl_807AF2FC:
/* 807AF2FC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807AF300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AF304  40 80 00 10 */	bge lbl_807AF314
/* 807AF308  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807AF30C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807AF310  48 00 00 70 */	b lbl_807AF380
lbl_807AF314:
/* 807AF314  D0 21 00 08 */	stfs f1, 8(r1)
/* 807AF318  80 81 00 08 */	lwz r4, 8(r1)
/* 807AF31C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807AF320  3C 00 7F 80 */	lis r0, 0x7f80
/* 807AF324  7C 03 00 00 */	cmpw r3, r0
/* 807AF328  41 82 00 14 */	beq lbl_807AF33C
/* 807AF32C  40 80 00 40 */	bge lbl_807AF36C
/* 807AF330  2C 03 00 00 */	cmpwi r3, 0
/* 807AF334  41 82 00 20 */	beq lbl_807AF354
/* 807AF338  48 00 00 34 */	b lbl_807AF36C
lbl_807AF33C:
/* 807AF33C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AF340  41 82 00 0C */	beq lbl_807AF34C
/* 807AF344  38 00 00 01 */	li r0, 1
/* 807AF348  48 00 00 28 */	b lbl_807AF370
lbl_807AF34C:
/* 807AF34C  38 00 00 02 */	li r0, 2
/* 807AF350  48 00 00 20 */	b lbl_807AF370
lbl_807AF354:
/* 807AF354  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AF358  41 82 00 0C */	beq lbl_807AF364
/* 807AF35C  38 00 00 05 */	li r0, 5
/* 807AF360  48 00 00 10 */	b lbl_807AF370
lbl_807AF364:
/* 807AF364  38 00 00 03 */	li r0, 3
/* 807AF368  48 00 00 08 */	b lbl_807AF370
lbl_807AF36C:
/* 807AF36C  38 00 00 04 */	li r0, 4
lbl_807AF370:
/* 807AF370  2C 00 00 01 */	cmpwi r0, 1
/* 807AF374  40 82 00 0C */	bne lbl_807AF380
/* 807AF378  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807AF37C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807AF380:
/* 807AF380  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807AF384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AF388  40 80 00 CC */	bge lbl_807AF454
/* 807AF38C  38 61 00 60 */	addi r3, r1, 0x60
/* 807AF390  4B 8C 88 D9 */	bl __ct__11dBgS_LinChkFv
/* 807AF394  38 61 00 60 */	addi r3, r1, 0x60
/* 807AF398  38 9E 06 68 */	addi r4, r30, 0x668
/* 807AF39C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807AF3A0  38 C0 00 00 */	li r6, 0
/* 807AF3A4  4B 8C 89 C1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807AF3A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807AF3AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807AF3B0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 807AF3B4  7F A3 EB 78 */	mr r3, r29
/* 807AF3B8  38 81 00 60 */	addi r4, r1, 0x60
/* 807AF3BC  4B 8C 4F F9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807AF3C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807AF3C4  41 82 00 84 */	beq lbl_807AF448
/* 807AF3C8  3C 60 80 7B */	lis r3, __vt__8cM3dGPla@ha /* 0x807B0138@ha */
/* 807AF3CC  38 03 01 38 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x807B0138@l */
/* 807AF3D0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 807AF3D4  7F A3 EB 78 */	mr r3, r29
/* 807AF3D8  38 81 00 74 */	addi r4, r1, 0x74
/* 807AF3DC  38 A1 00 4C */	addi r5, r1, 0x4c
/* 807AF3E0  4B 8C 53 65 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 807AF3E4  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 807AF3E8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 807AF3EC  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 807AF3F0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807AF3F4  C0 81 00 98 */	lfs f4, 0x98(r1)
/* 807AF3F8  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 807AF3FC  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 807AF400  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807AF404  EC 03 00 32 */	fmuls f0, f3, f0
/* 807AF408  EC 42 00 2A */	fadds f2, f2, f0
/* 807AF40C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 807AF410  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807AF414  EC 03 00 32 */	fmuls f0, f3, f0
/* 807AF418  EC 21 00 2A */	fadds f1, f1, f0
/* 807AF41C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807AF420  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807AF424  EC 03 00 32 */	fmuls f0, f3, f0
/* 807AF428  EC 04 00 2A */	fadds f0, f4, f0
/* 807AF42C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807AF430  D0 5E 04 D0 */	stfs f2, 0x4d0(r30)
/* 807AF434  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 807AF438  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 807AF43C  3C 60 80 7B */	lis r3, __vt__8cM3dGPla@ha /* 0x807B0138@ha */
/* 807AF440  38 03 01 38 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x807B0138@l */
/* 807AF444  90 01 00 5C */	stw r0, 0x5c(r1)
lbl_807AF448:
/* 807AF448  38 61 00 60 */	addi r3, r1, 0x60
/* 807AF44C  38 80 FF FF */	li r4, -1
/* 807AF450  4B 8C 88 8D */	bl __dt__11dBgS_LinChkFv
lbl_807AF454:
/* 807AF454  39 61 00 E0 */	addi r11, r1, 0xe0
/* 807AF458  4B BB 2D D1 */	bl _restgpr_29
/* 807AF45C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 807AF460  7C 08 03 A6 */	mtlr r0
/* 807AF464  38 21 00 E0 */	addi r1, r1, 0xe0
/* 807AF468  4E 80 00 20 */	blr 
