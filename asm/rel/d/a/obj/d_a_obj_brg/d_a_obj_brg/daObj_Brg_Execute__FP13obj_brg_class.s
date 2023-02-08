lbl_80BBF21C:
/* 80BBF21C  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 80BBF220  7C 08 02 A6 */	mflr r0
/* 80BBF224  90 01 02 24 */	stw r0, 0x224(r1)
/* 80BBF228  DB E1 02 10 */	stfd f31, 0x210(r1)
/* 80BBF22C  F3 E1 02 18 */	psq_st f31, 536(r1), 0, 0 /* qr0 */
/* 80BBF230  DB C1 02 00 */	stfd f30, 0x200(r1)
/* 80BBF234  F3 C1 02 08 */	psq_st f30, 520(r1), 0, 0 /* qr0 */
/* 80BBF238  DB A1 01 F0 */	stfd f29, 0x1f0(r1)
/* 80BBF23C  F3 A1 01 F8 */	psq_st f29, 504(r1), 0, 0 /* qr0 */
/* 80BBF240  DB 81 01 E0 */	stfd f28, 0x1e0(r1)
/* 80BBF244  F3 81 01 E8 */	psq_st f28, 488(r1), 0, 0 /* qr0 */
/* 80BBF248  DB 61 01 D0 */	stfd f27, 0x1d0(r1)
/* 80BBF24C  F3 61 01 D8 */	psq_st f27, 472(r1), 0, 0 /* qr0 */
/* 80BBF250  DB 41 01 C0 */	stfd f26, 0x1c0(r1)
/* 80BBF254  F3 41 01 C8 */	psq_st f26, 456(r1), 0, 0 /* qr0 */
/* 80BBF258  DB 21 01 B0 */	stfd f25, 0x1b0(r1)
/* 80BBF25C  F3 21 01 B8 */	psq_st f25, 440(r1), 0, 0 /* qr0 */
/* 80BBF260  DB 01 01 A0 */	stfd f24, 0x1a0(r1)
/* 80BBF264  F3 01 01 A8 */	psq_st f24, 424(r1), 0, 0 /* qr0 */
/* 80BBF268  DA E1 01 90 */	stfd f23, 0x190(r1)
/* 80BBF26C  F2 E1 01 98 */	psq_st f23, 408(r1), 0, 0 /* qr0 */
/* 80BBF270  39 61 01 90 */	addi r11, r1, 0x190
/* 80BBF274  4B 7A 2F 45 */	bl _savegpr_20
/* 80BBF278  7C 7E 1B 78 */	mr r30, r3
/* 80BBF27C  3C 60 80 BC */	lis r3, lit_3896@ha /* 0x80BC2148@ha */
/* 80BBF280  3B E3 21 48 */	addi r31, r3, lit_3896@l /* 0x80BC2148@l */
/* 80BBF284  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBF288  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBF28C  82 A3 5D AC */	lwz r21, 0x5dac(r3)
/* 80BBF290  82 C3 5D 74 */	lwz r22, 0x5d74(r3)
/* 80BBF294  38 61 00 88 */	addi r3, r1, 0x88
/* 80BBF298  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BBF29C  38 B6 00 D8 */	addi r5, r22, 0xd8
/* 80BBF2A0  4B 6A 78 95 */	bl __mi__4cXyzCFRC3Vec
/* 80BBF2A4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80BBF2A8  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80BBF2AC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80BBF2B0  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 80BBF2B4  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80BBF2B8  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80BBF2BC  3C 9E 00 01 */	addis r4, r30, 1
/* 80BBF2C0  88 64 B1 EF */	lbz r3, -0x4e11(r4)
/* 80BBF2C4  7C 60 07 75 */	extsb. r0, r3
/* 80BBF2C8  41 82 00 0C */	beq lbl_80BBF2D4
/* 80BBF2CC  38 03 FF FF */	addi r0, r3, -1
/* 80BBF2D0  98 04 B1 EF */	stb r0, -0x4e11(r4)
lbl_80BBF2D4:
/* 80BBF2D4  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBF2D8  88 03 B1 ED */	lbz r0, -0x4e13(r3)
/* 80BBF2DC  7C 00 07 74 */	extsb r0, r0
/* 80BBF2E0  2C 00 00 02 */	cmpwi r0, 2
/* 80BBF2E4  40 82 00 0C */	bne lbl_80BBF2F0
/* 80BBF2E8  C3 5F 01 0C */	lfs f26, 0x10c(r31)
/* 80BBF2EC  48 00 00 18 */	b lbl_80BBF304
lbl_80BBF2F0:
/* 80BBF2F0  2C 00 00 01 */	cmpwi r0, 1
/* 80BBF2F4  40 82 00 0C */	bne lbl_80BBF300
/* 80BBF2F8  C3 5F 00 F0 */	lfs f26, 0xf0(r31)
/* 80BBF2FC  48 00 00 08 */	b lbl_80BBF304
lbl_80BBF300:
/* 80BBF300  C3 5F 01 10 */	lfs f26, 0x110(r31)
lbl_80BBF304:
/* 80BBF304  38 61 01 18 */	addi r3, r1, 0x118
/* 80BBF308  4B 78 7E 31 */	bl PSVECSquareMag
/* 80BBF30C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BBF310  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BBF314  40 81 00 58 */	ble lbl_80BBF36C
/* 80BBF318  FC 00 08 34 */	frsqrte f0, f1
/* 80BBF31C  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BBF320  FC 44 00 32 */	fmul f2, f4, f0
/* 80BBF324  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BBF328  FC 00 00 32 */	fmul f0, f0, f0
/* 80BBF32C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BBF330  FC 03 00 28 */	fsub f0, f3, f0
/* 80BBF334  FC 02 00 32 */	fmul f0, f2, f0
/* 80BBF338  FC 44 00 32 */	fmul f2, f4, f0
/* 80BBF33C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BBF340  FC 01 00 32 */	fmul f0, f1, f0
/* 80BBF344  FC 03 00 28 */	fsub f0, f3, f0
/* 80BBF348  FC 02 00 32 */	fmul f0, f2, f0
/* 80BBF34C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BBF350  FC 00 00 32 */	fmul f0, f0, f0
/* 80BBF354  FC 01 00 32 */	fmul f0, f1, f0
/* 80BBF358  FC 03 00 28 */	fsub f0, f3, f0
/* 80BBF35C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BBF360  FC 21 00 32 */	fmul f1, f1, f0
/* 80BBF364  FC 20 08 18 */	frsp f1, f1
/* 80BBF368  48 00 00 88 */	b lbl_80BBF3F0
lbl_80BBF36C:
/* 80BBF36C  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BBF370  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BBF374  40 80 00 10 */	bge lbl_80BBF384
/* 80BBF378  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BBF37C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BBF380  48 00 00 70 */	b lbl_80BBF3F0
lbl_80BBF384:
/* 80BBF384  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BBF388  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80BBF38C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BBF390  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BBF394  7C 03 00 00 */	cmpw r3, r0
/* 80BBF398  41 82 00 14 */	beq lbl_80BBF3AC
/* 80BBF39C  40 80 00 40 */	bge lbl_80BBF3DC
/* 80BBF3A0  2C 03 00 00 */	cmpwi r3, 0
/* 80BBF3A4  41 82 00 20 */	beq lbl_80BBF3C4
/* 80BBF3A8  48 00 00 34 */	b lbl_80BBF3DC
lbl_80BBF3AC:
/* 80BBF3AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BBF3B0  41 82 00 0C */	beq lbl_80BBF3BC
/* 80BBF3B4  38 00 00 01 */	li r0, 1
/* 80BBF3B8  48 00 00 28 */	b lbl_80BBF3E0
lbl_80BBF3BC:
/* 80BBF3BC  38 00 00 02 */	li r0, 2
/* 80BBF3C0  48 00 00 20 */	b lbl_80BBF3E0
lbl_80BBF3C4:
/* 80BBF3C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BBF3C8  41 82 00 0C */	beq lbl_80BBF3D4
/* 80BBF3CC  38 00 00 05 */	li r0, 5
/* 80BBF3D0  48 00 00 10 */	b lbl_80BBF3E0
lbl_80BBF3D4:
/* 80BBF3D4  38 00 00 03 */	li r0, 3
/* 80BBF3D8  48 00 00 08 */	b lbl_80BBF3E0
lbl_80BBF3DC:
/* 80BBF3DC  38 00 00 04 */	li r0, 4
lbl_80BBF3E0:
/* 80BBF3E0  2C 00 00 01 */	cmpwi r0, 1
/* 80BBF3E4  40 82 00 0C */	bne lbl_80BBF3F0
/* 80BBF3E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BBF3EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BBF3F0:
/* 80BBF3F0  FC 01 D0 40 */	fcmpo cr0, f1, f26
/* 80BBF3F4  40 81 00 7C */	ble lbl_80BBF470
/* 80BBF3F8  38 61 00 7C */	addi r3, r1, 0x7c
/* 80BBF3FC  38 96 00 E4 */	addi r4, r22, 0xe4
/* 80BBF400  38 B6 00 D8 */	addi r5, r22, 0xd8
/* 80BBF404  4B 6A 77 31 */	bl __mi__4cXyzCFRC3Vec
/* 80BBF408  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80BBF40C  D0 21 01 0C */	stfs f1, 0x10c(r1)
/* 80BBF410  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80BBF414  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80BBF418  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 80BBF41C  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 80BBF420  4B 6A 82 55 */	bl cM_atan2s__Fff
/* 80BBF424  7C 60 1B 78 */	mr r0, r3
/* 80BBF428  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBF42C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBF430  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBF434  7C 00 00 D0 */	neg r0, r0
/* 80BBF438  7C 04 07 34 */	extsh r4, r0
/* 80BBF43C  4B 44 CF A1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBF440  38 61 01 18 */	addi r3, r1, 0x118
/* 80BBF444  38 81 01 0C */	addi r4, r1, 0x10c
/* 80BBF448  4B 6B 1A A5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBF44C  C0 21 01 14 */	lfs f1, 0x114(r1)
/* 80BBF450  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BBF454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BBF458  40 80 00 18 */	bge lbl_80BBF470
/* 80BBF45C  38 00 00 01 */	li r0, 1
/* 80BBF460  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBF464  98 03 B1 F0 */	stb r0, -0x4e10(r3)
/* 80BBF468  38 60 00 01 */	li r3, 1
/* 80BBF46C  48 00 13 68 */	b lbl_80BC07D4
lbl_80BBF470:
/* 80BBF470  38 00 00 00 */	li r0, 0
/* 80BBF474  3C 9E 00 01 */	addis r4, r30, 1
/* 80BBF478  98 04 B1 F0 */	stb r0, -0x4e10(r4)
/* 80BBF47C  38 61 00 70 */	addi r3, r1, 0x70
/* 80BBF480  38 84 AE F8 */	addi r4, r4, -20744
/* 80BBF484  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BBF488  4B 6A 76 AD */	bl __mi__4cXyzCFRC3Vec
/* 80BBF48C  38 61 00 64 */	addi r3, r1, 0x64
/* 80BBF490  38 81 00 70 */	addi r4, r1, 0x70
/* 80BBF494  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80BBF498  4B 6A 76 ED */	bl __ml__4cXyzCFf
/* 80BBF49C  38 61 00 58 */	addi r3, r1, 0x58
/* 80BBF4A0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BBF4A4  38 A1 00 64 */	addi r5, r1, 0x64
/* 80BBF4A8  4B 6A 76 3D */	bl __pl__4cXyzCFRC3Vec
/* 80BBF4AC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80BBF4B0  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80BBF4B4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80BBF4B8  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80BBF4BC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80BBF4C0  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80BBF4C4  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80BBF4C8  38 81 01 00 */	addi r4, r1, 0x100
/* 80BBF4CC  38 A1 00 24 */	addi r5, r1, 0x24
/* 80BBF4D0  4B 49 BE 29 */	bl dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 80BBF4D4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80BBF4D8  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80BBF4DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BBF4E0  40 81 00 08 */	ble lbl_80BBF4E8
/* 80BBF4E4  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_80BBF4E8:
/* 80BBF4E8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BBF4EC  EC 20 00 32 */	fmuls f1, f0, f0
/* 80BBF4F0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80BBF4F4  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBF4F8  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80BBF4FC  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80BBF500  38 63 AF 30 */	addi r3, r3, -20688
/* 80BBF504  4B 6B 05 39 */	bl cLib_addCalc2__FPffff
/* 80BBF508  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 80BBF50C  C0 41 01 08 */	lfs f2, 0x108(r1)
/* 80BBF510  4B 6A 81 65 */	bl cM_atan2s__Fff
/* 80BBF514  3C 80 80 BC */	lis r4, struct_80BC2524+0x2@ha /* 0x80BC2526@ha */
/* 80BBF518  B0 64 25 26 */	sth r3, struct_80BC2524+0x2@l(r4)  /* 0x80BC2526@l */
/* 80BBF51C  3C 9E 00 01 */	addis r4, r30, 1
/* 80BBF520  A8 64 AF 20 */	lha r3, -0x50e0(r4)
/* 80BBF524  38 03 00 01 */	addi r0, r3, 1
/* 80BBF528  B0 04 AF 20 */	sth r0, -0x50e0(r4)
/* 80BBF52C  7F C3 F3 78 */	mr r3, r30
/* 80BBF530  4B FF F0 49 */	bl obj_brg_move__FP13obj_brg_class
/* 80BBF534  38 00 00 00 */	li r0, 0
/* 80BBF538  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBF53C  90 03 AE D8 */	stw r0, -0x5128(r3)
/* 80BBF540  3B BE 05 70 */	addi r29, r30, 0x570
/* 80BBF544  3B 20 00 00 */	li r25, 0
/* 80BBF548  7E A3 AB 78 */	mr r3, r21
/* 80BBF54C  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80BBF550  81 95 06 28 */	lwz r12, 0x628(r21)
/* 80BBF554  81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 80BBF558  7D 89 03 A6 */	mtctr r12
/* 80BBF55C  4E 80 04 21 */	bctrl 
/* 80BBF560  2C 03 00 00 */	cmpwi r3, 0
/* 80BBF564  41 82 00 08 */	beq lbl_80BBF56C
/* 80BBF568  3B 20 00 01 */	li r25, 1
lbl_80BBF56C:
/* 80BBF56C  C3 1F 00 00 */	lfs f24, 0(r31)
/* 80BBF570  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBF574  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BBF578  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BBF57C  41 82 00 0C */	beq lbl_80BBF588
/* 80BBF580  C3 3F 01 18 */	lfs f25, 0x118(r31)
/* 80BBF584  48 00 00 30 */	b lbl_80BBF5B4
lbl_80BBF588:
/* 80BBF588  88 03 B1 ED */	lbz r0, -0x4e13(r3)
/* 80BBF58C  7C 00 07 74 */	extsb r0, r0
/* 80BBF590  2C 00 00 01 */	cmpwi r0, 1
/* 80BBF594  40 82 00 0C */	bne lbl_80BBF5A0
/* 80BBF598  C3 3F 01 1C */	lfs f25, 0x11c(r31)
/* 80BBF59C  48 00 00 18 */	b lbl_80BBF5B4
lbl_80BBF5A0:
/* 80BBF5A0  2C 00 00 02 */	cmpwi r0, 2
/* 80BBF5A4  40 82 00 0C */	bne lbl_80BBF5B0
/* 80BBF5A8  C3 3F 01 20 */	lfs f25, 0x120(r31)
/* 80BBF5AC  48 00 00 08 */	b lbl_80BBF5B4
lbl_80BBF5B0:
/* 80BBF5B0  C3 3F 01 24 */	lfs f25, 0x124(r31)
lbl_80BBF5B4:
/* 80BBF5B4  3B 60 00 00 */	li r27, 0
/* 80BBF5B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBF5BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBF5C0  3B 03 23 3C */	addi r24, r3, 0x233c
/* 80BBF5C4  3F 9E 00 01 */	addis r28, r30, 1
/* 80BBF5C8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBF5CC  3B 43 07 68 */	addi r26, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBF5D0  C3 5F 01 30 */	lfs f26, 0x130(r31)
/* 80BBF5D4  C3 7F 00 5C */	lfs f27, 0x5c(r31)
/* 80BBF5D8  C3 9F 00 00 */	lfs f28, 0(r31)
/* 80BBF5DC  C3 BF 00 A4 */	lfs f29, 0xa4(r31)
/* 80BBF5E0  C3 DF 00 D8 */	lfs f30, 0xd8(r31)
/* 80BBF5E4  C3 FF 01 44 */	lfs f31, 0x144(r31)
/* 80BBF5E8  48 00 0F B0 */	b lbl_80BC0598
lbl_80BBF5EC:
/* 80BBF5EC  88 1C B1 ED */	lbz r0, -0x4e13(r28)
/* 80BBF5F0  7C 00 07 74 */	extsb r0, r0
/* 80BBF5F4  2C 00 00 02 */	cmpwi r0, 2
/* 80BBF5F8  40 82 00 58 */	bne lbl_80BBF650
/* 80BBF5FC  C0 7F 00 C8 */	lfs f3, 0xc8(r31)
/* 80BBF600  C8 5F 00 B0 */	lfd f2, 0xb0(r31)
/* 80BBF604  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 80BBF608  90 01 01 4C */	stw r0, 0x14c(r1)
/* 80BBF60C  3C 60 43 30 */	lis r3, 0x4330
/* 80BBF610  90 61 01 48 */	stw r3, 0x148(r1)
/* 80BBF614  C8 01 01 48 */	lfd f0, 0x148(r1)
/* 80BBF618  EC 20 10 28 */	fsubs f1, f0, f2
/* 80BBF61C  38 04 FF FF */	addi r0, r4, -1
/* 80BBF620  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BBF624  90 01 01 54 */	stw r0, 0x154(r1)
/* 80BBF628  90 61 01 50 */	stw r3, 0x150(r1)
/* 80BBF62C  C8 01 01 50 */	lfd f0, 0x150(r1)
/* 80BBF630  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BBF634  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BBF638  EC 23 00 32 */	fmuls f1, f3, f0
/* 80BBF63C  4B 7A CF 55 */	bl sin
/* 80BBF640  FC 20 08 18 */	frsp f1, f1
/* 80BBF644  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 80BBF648  EF 00 00 72 */	fmuls f24, f0, f1
/* 80BBF64C  48 00 00 5C */	b lbl_80BBF6A8
lbl_80BBF650:
/* 80BBF650  2C 00 00 01 */	cmpwi r0, 1
/* 80BBF654  40 82 00 54 */	bne lbl_80BBF6A8
/* 80BBF658  C0 7F 00 C8 */	lfs f3, 0xc8(r31)
/* 80BBF65C  C8 5F 00 B0 */	lfd f2, 0xb0(r31)
/* 80BBF660  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 80BBF664  90 01 01 54 */	stw r0, 0x154(r1)
/* 80BBF668  3C 60 43 30 */	lis r3, 0x4330
/* 80BBF66C  90 61 01 50 */	stw r3, 0x150(r1)
/* 80BBF670  C8 01 01 50 */	lfd f0, 0x150(r1)
/* 80BBF674  EC 20 10 28 */	fsubs f1, f0, f2
/* 80BBF678  38 04 FF FF */	addi r0, r4, -1
/* 80BBF67C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BBF680  90 01 01 4C */	stw r0, 0x14c(r1)
/* 80BBF684  90 61 01 48 */	stw r3, 0x148(r1)
/* 80BBF688  C8 01 01 48 */	lfd f0, 0x148(r1)
/* 80BBF68C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BBF690  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BBF694  EC 23 00 32 */	fmuls f1, f3, f0
/* 80BBF698  4B 7A CE F9 */	bl sin
/* 80BBF69C  FC 20 08 18 */	frsp f1, f1
/* 80BBF6A0  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80BBF6A4  EF 00 00 72 */	fmuls f24, f0, f1
lbl_80BBF6A8:
/* 80BBF6A8  C0 3D 00 BC */	lfs f1, 0xbc(r29)
/* 80BBF6AC  C0 5D 00 C0 */	lfs f2, 0xc0(r29)
/* 80BBF6B0  C0 7D 00 C4 */	lfs f3, 0xc4(r29)
/* 80BBF6B4  38 60 00 00 */	li r3, 0
/* 80BBF6B8  4B 6B 17 A5 */	bl MtxTrans__FfffUc
/* 80BBF6BC  80 7A 00 00 */	lwz r3, 0(r26)
/* 80BBF6C0  A8 9D 00 D6 */	lha r4, 0xd6(r29)
/* 80BBF6C4  4B 44 CD 71 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BBF6C8  80 7A 00 00 */	lwz r3, 0(r26)
/* 80BBF6CC  A8 9D 00 D4 */	lha r4, 0xd4(r29)
/* 80BBF6D0  4B 44 CC CD */	bl mDoMtx_XrotM__FPA4_fs
/* 80BBF6D4  80 7A 00 00 */	lwz r3, 0(r26)
/* 80BBF6D8  A8 9D 00 D8 */	lha r4, 0xd8(r29)
/* 80BBF6DC  4B 44 CD F1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80BBF6E0  80 1C AE D0 */	lwz r0, -0x5130(r28)
/* 80BBF6E4  2C 00 00 00 */	cmpwi r0, 0
/* 80BBF6E8  41 82 00 28 */	beq lbl_80BBF710
/* 80BBF6EC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BBF6F0  FC 40 08 90 */	fmr f2, f1
/* 80BBF6F4  7C 1B 00 00 */	cmpw r27, r0
/* 80BBF6F8  40 81 00 0C */	ble lbl_80BBF704
/* 80BBF6FC  C0 7F 00 C0 */	lfs f3, 0xc0(r31)
/* 80BBF700  48 00 00 08 */	b lbl_80BBF708
lbl_80BBF704:
/* 80BBF704  C0 7F 00 D8 */	lfs f3, 0xd8(r31)
lbl_80BBF708:
/* 80BBF708  38 60 00 01 */	li r3, 1
/* 80BBF70C  4B 6B 17 51 */	bl MtxTrans__FfffUc
lbl_80BBF710:
/* 80BBF710  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80BBF714  EC 1A 00 32 */	fmuls f0, f26, f0
/* 80BBF718  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80BBF71C  D3 61 01 1C */	stfs f27, 0x11c(r1)
/* 80BBF720  D3 81 01 20 */	stfs f28, 0x120(r1)
/* 80BBF724  38 61 01 18 */	addi r3, r1, 0x118
/* 80BBF728  38 9D 00 80 */	addi r4, r29, 0x80
/* 80BBF72C  4B 6B 17 C1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBF730  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 80BBF734  EC 00 07 72 */	fmuls f0, f0, f29
/* 80BBF738  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80BBF73C  38 61 01 18 */	addi r3, r1, 0x118
/* 80BBF740  38 9D 00 5C */	addi r4, r29, 0x5c
/* 80BBF744  4B 6B 17 A9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBF748  D3 C1 01 1C */	stfs f30, 0x11c(r1)
/* 80BBF74C  38 61 01 18 */	addi r3, r1, 0x118
/* 80BBF750  38 9D 00 68 */	addi r4, r29, 0x68
/* 80BBF754  4B 6B 17 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBF758  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 80BBF75C  EC 00 07 72 */	fmuls f0, f0, f29
/* 80BBF760  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80BBF764  38 61 01 18 */	addi r3, r1, 0x118
/* 80BBF768  38 9D 00 8C */	addi r4, r29, 0x8c
/* 80BBF76C  4B 6B 17 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBF770  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BBF774  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80BBF778  41 82 09 BC */	beq lbl_80BC0134
/* 80BBF77C  A8 7D 00 F8 */	lha r3, 0xf8(r29)
/* 80BBF780  7C 60 07 35 */	extsh. r0, r3
/* 80BBF784  41 82 01 FC */	beq lbl_80BBF980
/* 80BBF788  7C 60 07 35 */	extsh. r0, r3
/* 80BBF78C  40 81 00 0C */	ble lbl_80BBF798
/* 80BBF790  38 03 FF FF */	addi r0, r3, -1
/* 80BBF794  B0 1D 00 F8 */	sth r0, 0xf8(r29)
lbl_80BBF798:
/* 80BBF798  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 80BBF79C  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBF7A0  C0 03 AE DC */	lfs f0, -0x5124(r3)
/* 80BBF7A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBF7A8  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80BBF7AC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BBF7B0  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 80BBF7B4  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80BBF7B8  38 61 01 18 */	addi r3, r1, 0x118
/* 80BBF7BC  38 9D 00 74 */	addi r4, r29, 0x74
/* 80BBF7C0  4B 6B 17 2D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBF7C4  C0 21 01 18 */	lfs f1, 0x118(r1)
/* 80BBF7C8  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80BBF7CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBF7D0  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80BBF7D4  38 61 01 18 */	addi r3, r1, 0x118
/* 80BBF7D8  38 9D 00 50 */	addi r4, r29, 0x50
/* 80BBF7DC  4B 6B 17 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBF7E0  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80BBF7E4  EC 39 C0 2A */	fadds f1, f25, f24
/* 80BBF7E8  EC 00 08 2A */	fadds f0, f0, f1
/* 80BBF7EC  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 80BBF7F0  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 80BBF7F4  EC 00 08 2A */	fadds f0, f0, f1
/* 80BBF7F8  D0 1D 00 54 */	stfs f0, 0x54(r29)
/* 80BBF7FC  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBF800  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BBF804  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BBF808  41 82 00 B4 */	beq lbl_80BBF8BC
/* 80BBF80C  4B 6B 17 11 */	bl MtxPush__Fv
/* 80BBF810  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 80BBF814  C0 5D 00 78 */	lfs f2, 0x78(r29)
/* 80BBF818  C0 7D 00 7C */	lfs f3, 0x7c(r29)
/* 80BBF81C  38 60 00 00 */	li r3, 0
/* 80BBF820  4B 6B 16 3D */	bl MtxTrans__FfffUc
/* 80BBF824  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBF828  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBF82C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBF830  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BBF834  4B 44 CC 01 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BBF838  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80BBF83C  FC 40 08 90 */	fmr f2, f1
/* 80BBF840  FC 60 08 90 */	fmr f3, f1
/* 80BBF844  38 60 00 01 */	li r3, 1
/* 80BBF848  4B 6B 16 5D */	bl MtxScale__FfffUc
/* 80BBF84C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBF850  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBF854  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBF858  80 9D 00 04 */	lwz r4, 4(r29)
/* 80BBF85C  38 84 00 24 */	addi r4, r4, 0x24
/* 80BBF860  4B 78 6C 51 */	bl PSMTXCopy
/* 80BBF864  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80BBF868  C0 5D 00 54 */	lfs f2, 0x54(r29)
/* 80BBF86C  C0 7D 00 58 */	lfs f3, 0x58(r29)
/* 80BBF870  38 60 00 00 */	li r3, 0
/* 80BBF874  4B 6B 15 E9 */	bl MtxTrans__FfffUc
/* 80BBF878  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBF87C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBF880  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBF884  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BBF888  4B 44 CB AD */	bl mDoMtx_YrotM__FPA4_fs
/* 80BBF88C  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80BBF890  FC 40 08 90 */	fmr f2, f1
/* 80BBF894  FC 60 08 90 */	fmr f3, f1
/* 80BBF898  38 60 00 01 */	li r3, 1
/* 80BBF89C  4B 6B 16 09 */	bl MtxScale__FfffUc
/* 80BBF8A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBF8A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBF8A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBF8AC  80 9D 00 08 */	lwz r4, 8(r29)
/* 80BBF8B0  38 84 00 24 */	addi r4, r4, 0x24
/* 80BBF8B4  4B 78 6B FD */	bl PSMTXCopy
/* 80BBF8B8  4B 6B 16 A1 */	bl MtxPull__Fv
lbl_80BBF8BC:
/* 80BBF8BC  2C 1B 00 01 */	cmpwi r27, 1
/* 80BBF8C0  41 80 00 6C */	blt lbl_80BBF92C
/* 80BBF8C4  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBF8C8  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BBF8CC  7C 03 07 74 */	extsb r3, r0
/* 80BBF8D0  38 03 FF FE */	addi r0, r3, -2
/* 80BBF8D4  7C 1B 00 00 */	cmpw r27, r0
/* 80BBF8D8  41 81 00 54 */	bgt lbl_80BBF92C
/* 80BBF8DC  C0 5D 07 84 */	lfs f2, 0x784(r29)
/* 80BBF8E0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80BBF8E4  C0 1D F9 6C */	lfs f0, -0x694(r29)
/* 80BBF8E8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BBF8EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBF8F0  EC 22 00 2A */	fadds f1, f2, f0
/* 80BBF8F4  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80BBF8F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BBF8FC  40 81 00 08 */	ble lbl_80BBF904
/* 80BBF900  D0 3D 00 78 */	stfs f1, 0x78(r29)
lbl_80BBF904:
/* 80BBF904  C0 5D 07 60 */	lfs f2, 0x760(r29)
/* 80BBF908  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80BBF90C  C0 1D F9 48 */	lfs f0, -0x6b8(r29)
/* 80BBF910  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BBF914  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBF918  EC 22 00 2A */	fadds f1, f2, f0
/* 80BBF91C  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 80BBF920  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BBF924  40 81 00 08 */	ble lbl_80BBF92C
/* 80BBF928  D0 3D 00 54 */	stfs f1, 0x54(r29)
lbl_80BBF92C:
/* 80BBF92C  3C 9E 00 01 */	addis r4, r30, 1
/* 80BBF930  88 04 B1 E8 */	lbz r0, -0x4e18(r4)
/* 80BBF934  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80BBF938  41 82 00 48 */	beq lbl_80BBF980
/* 80BBF93C  88 04 B1 EB */	lbz r0, -0x4e15(r4)
/* 80BBF940  7C 03 07 74 */	extsb r3, r0
/* 80BBF944  38 03 FF FF */	addi r0, r3, -1
/* 80BBF948  7C 1B 00 00 */	cmpw r27, r0
/* 80BBF94C  40 82 00 34 */	bne lbl_80BBF980
/* 80BBF950  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80BBF954  D0 04 AF 04 */	stfs f0, -0x50fc(r4)
/* 80BBF958  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80BBF95C  D0 04 AF 08 */	stfs f0, -0x50f8(r4)
/* 80BBF960  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 80BBF964  D0 04 AF 0C */	stfs f0, -0x50f4(r4)
/* 80BBF968  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 80BBF96C  D0 04 AF 10 */	stfs f0, -0x50f0(r4)
/* 80BBF970  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 80BBF974  D0 04 AF 14 */	stfs f0, -0x50ec(r4)
/* 80BBF978  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 80BBF97C  D0 04 AF 18 */	stfs f0, -0x50e8(r4)
lbl_80BBF980:
/* 80BBF980  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBF984  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BBF988  70 00 00 09 */	andi. r0, r0, 9
/* 80BBF98C  40 82 01 E0 */	bne lbl_80BBFB6C
/* 80BBF990  80 03 AE D0 */	lwz r0, -0x5130(r3)
/* 80BBF994  2C 00 00 00 */	cmpwi r0, 0
/* 80BBF998  41 82 00 10 */	beq lbl_80BBF9A8
/* 80BBF99C  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BBF9A0  54 00 06 FA */	rlwinm r0, r0, 0, 0x1b, 0x1d
/* 80BBF9A4  98 1D 07 08 */	stb r0, 0x708(r29)
lbl_80BBF9A8:
/* 80BBF9A8  38 7D 01 04 */	addi r3, r29, 0x104
/* 80BBF9AC  4B 4C 4A B5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BBF9B0  28 03 00 00 */	cmplwi r3, 0
/* 80BBF9B4  41 82 00 E4 */	beq lbl_80BBFA98
/* 80BBF9B8  A8 1D 00 FE */	lha r0, 0xfe(r29)
/* 80BBF9BC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80BBF9C0  40 80 00 D8 */	bge lbl_80BBFA98
/* 80BBF9C4  80 1D 01 A0 */	lwz r0, 0x1a0(r29)
/* 80BBF9C8  60 00 00 02 */	ori r0, r0, 2
/* 80BBF9CC  90 1D 01 A0 */	stw r0, 0x1a0(r29)
/* 80BBF9D0  38 00 00 14 */	li r0, 0x14
/* 80BBF9D4  B0 1D 00 FE */	sth r0, 0xfe(r29)
/* 80BBF9D8  38 7D 01 04 */	addi r3, r29, 0x104
/* 80BBF9DC  4B 4C 4B 1D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80BBF9E0  90 61 01 24 */	stw r3, 0x124(r1)
/* 80BBF9E4  38 61 01 24 */	addi r3, r1, 0x124
/* 80BBF9E8  4B 4C 80 71 */	bl at_power_check__FP11dCcU_AtInfo
/* 80BBF9EC  80 61 01 24 */	lwz r3, 0x124(r1)
/* 80BBF9F0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80BBF9F4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80BBF9F8  40 82 00 0C */	bne lbl_80BBFA04
/* 80BBF9FC  38 00 00 04 */	li r0, 4
/* 80BBFA00  B0 01 01 40 */	sth r0, 0x140(r1)
lbl_80BBFA04:
/* 80BBFA04  A0 61 01 40 */	lhz r3, 0x140(r1)
/* 80BBFA08  88 1D 07 04 */	lbz r0, 0x704(r29)
/* 80BBFA0C  7C 03 00 50 */	subf r0, r3, r0
/* 80BBFA10  98 1D 07 04 */	stb r0, 0x704(r29)
/* 80BBFA14  88 1D 07 04 */	lbz r0, 0x704(r29)
/* 80BBFA18  7C 00 07 75 */	extsb. r0, r0
/* 80BBFA1C  41 81 00 7C */	bgt lbl_80BBFA98
/* 80BBFA20  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BBFA24  54 00 06 FC */	rlwinm r0, r0, 0, 0x1b, 0x1e
/* 80BBFA28  98 1D 07 08 */	stb r0, 0x708(r29)
/* 80BBFA2C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BBFA30  7C 03 07 74 */	extsb r3, r0
/* 80BBFA34  3C 80 00 04 */	lis r4, 0x0004 /* 0x0004001C@ha */
/* 80BBFA38  38 04 00 1C */	addi r0, r4, 0x001C /* 0x0004001C@l */
/* 80BBFA3C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BBFA40  3C 80 80 45 */	lis r4, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BBFA44  82 84 13 68 */	lwz r20, mAudioMgrPtr__10Z2AudioMgr@l(r4)  /* 0x80451368@l */
/* 80BBFA48  4B 46 D6 25 */	bl dComIfGp_getReverb__Fi
/* 80BBFA4C  7C 67 1B 78 */	mr r7, r3
/* 80BBFA50  7E 83 A3 78 */	mr r3, r20
/* 80BBFA54  38 81 00 20 */	addi r4, r1, 0x20
/* 80BBFA58  38 BD 00 74 */	addi r5, r29, 0x74
/* 80BBFA5C  38 C0 00 00 */	li r6, 0
/* 80BBFA60  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80BBFA64  FC 40 08 90 */	fmr f2, f1
/* 80BBFA68  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 80BBFA6C  FC 80 18 90 */	fmr f4, f3
/* 80BBFA70  39 00 00 00 */	li r8, 0
/* 80BBFA74  4B 6E BF 11 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BBFA78  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BBFA7C  2C 00 00 04 */	cmpwi r0, 4
/* 80BBFA80  40 82 00 18 */	bne lbl_80BBFA98
/* 80BBFA84  38 00 00 04 */	li r0, 4
/* 80BBFA88  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBFA8C  B0 03 AF 1C */	sth r0, -0x50e4(r3)
/* 80BBFA90  38 00 00 0A */	li r0, 0xa
/* 80BBFA94  90 03 AE D0 */	stw r0, -0x5130(r3)
lbl_80BBFA98:
/* 80BBFA98  38 7D 02 40 */	addi r3, r29, 0x240
/* 80BBFA9C  4B 4C 49 C5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BBFAA0  28 03 00 00 */	cmplwi r3, 0
/* 80BBFAA4  41 82 02 08 */	beq lbl_80BBFCAC
/* 80BBFAA8  A8 1D 01 00 */	lha r0, 0x100(r29)
/* 80BBFAAC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80BBFAB0  40 80 01 FC */	bge lbl_80BBFCAC
/* 80BBFAB4  80 1D 02 DC */	lwz r0, 0x2dc(r29)
/* 80BBFAB8  60 00 00 02 */	ori r0, r0, 2
/* 80BBFABC  90 1D 02 DC */	stw r0, 0x2dc(r29)
/* 80BBFAC0  38 00 00 14 */	li r0, 0x14
/* 80BBFAC4  B0 1D 01 00 */	sth r0, 0x100(r29)
/* 80BBFAC8  38 7D 02 40 */	addi r3, r29, 0x240
/* 80BBFACC  4B 4C 4A 2D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80BBFAD0  90 61 01 24 */	stw r3, 0x124(r1)
/* 80BBFAD4  38 61 01 24 */	addi r3, r1, 0x124
/* 80BBFAD8  4B 4C 7F 81 */	bl at_power_check__FP11dCcU_AtInfo
/* 80BBFADC  80 61 01 24 */	lwz r3, 0x124(r1)
/* 80BBFAE0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80BBFAE4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80BBFAE8  40 82 00 0C */	bne lbl_80BBFAF4
/* 80BBFAEC  38 00 00 04 */	li r0, 4
/* 80BBFAF0  B0 01 01 40 */	sth r0, 0x140(r1)
lbl_80BBFAF4:
/* 80BBFAF4  A0 61 01 40 */	lhz r3, 0x140(r1)
/* 80BBFAF8  88 1D 07 05 */	lbz r0, 0x705(r29)
/* 80BBFAFC  7C 03 00 50 */	subf r0, r3, r0
/* 80BBFB00  98 1D 07 05 */	stb r0, 0x705(r29)
/* 80BBFB04  88 1D 07 05 */	lbz r0, 0x705(r29)
/* 80BBFB08  7C 00 07 75 */	extsb. r0, r0
/* 80BBFB0C  41 81 01 A0 */	bgt lbl_80BBFCAC
/* 80BBFB10  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BBFB14  70 00 00 1D */	andi. r0, r0, 0x1d
/* 80BBFB18  98 1D 07 08 */	stb r0, 0x708(r29)
/* 80BBFB1C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BBFB20  7C 03 07 74 */	extsb r3, r0
/* 80BBFB24  3C 80 00 04 */	lis r4, 0x0004 /* 0x0004001C@ha */
/* 80BBFB28  38 04 00 1C */	addi r0, r4, 0x001C /* 0x0004001C@l */
/* 80BBFB2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BBFB30  3C 80 80 45 */	lis r4, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BBFB34  82 84 13 68 */	lwz r20, mAudioMgrPtr__10Z2AudioMgr@l(r4)  /* 0x80451368@l */
/* 80BBFB38  4B 46 D5 35 */	bl dComIfGp_getReverb__Fi
/* 80BBFB3C  7C 67 1B 78 */	mr r7, r3
/* 80BBFB40  7E 83 A3 78 */	mr r3, r20
/* 80BBFB44  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BBFB48  38 BD 00 50 */	addi r5, r29, 0x50
/* 80BBFB4C  38 C0 00 00 */	li r6, 0
/* 80BBFB50  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80BBFB54  FC 40 08 90 */	fmr f2, f1
/* 80BBFB58  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 80BBFB5C  FC 80 18 90 */	fmr f4, f3
/* 80BBFB60  39 00 00 00 */	li r8, 0
/* 80BBFB64  4B 6E BE 21 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BBFB68  48 00 01 44 */	b lbl_80BBFCAC
lbl_80BBFB6C:
/* 80BBFB6C  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80BBFB70  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80BBFB74  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80BBFB78  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80BBFB7C  38 7D 01 04 */	addi r3, r29, 0x104
/* 80BBFB80  4B 4C 48 E1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BBFB84  28 03 00 00 */	cmplwi r3, 0
/* 80BBFB88  41 82 00 8C */	beq lbl_80BBFC14
/* 80BBFB8C  A8 1D 00 FE */	lha r0, 0xfe(r29)
/* 80BBFB90  2C 00 00 0A */	cmpwi r0, 0xa
/* 80BBFB94  40 80 00 80 */	bge lbl_80BBFC14
/* 80BBFB98  80 1D 01 A0 */	lwz r0, 0x1a0(r29)
/* 80BBFB9C  60 00 00 02 */	ori r0, r0, 2
/* 80BBFBA0  90 1D 01 A0 */	stw r0, 0x1a0(r29)
/* 80BBFBA4  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBFBA8  88 03 B1 ED */	lbz r0, -0x4e13(r3)
/* 80BBFBAC  2C 00 00 02 */	cmpwi r0, 2
/* 80BBFBB0  40 82 00 10 */	bne lbl_80BBFBC0
/* 80BBFBB4  38 00 00 07 */	li r0, 7
/* 80BBFBB8  B0 1D 00 FE */	sth r0, 0xfe(r29)
/* 80BBFBBC  48 00 00 0C */	b lbl_80BBFBC8
lbl_80BBFBC0:
/* 80BBFBC0  38 00 00 0F */	li r0, 0xf
/* 80BBFBC4  B0 1D 00 FE */	sth r0, 0xfe(r29)
lbl_80BBFBC8:
/* 80BBFBC8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BBFBCC  7C 03 07 74 */	extsb r3, r0
/* 80BBFBD0  3C 80 00 06 */	lis r4, 0x0006 /* 0x00060010@ha */
/* 80BBFBD4  38 04 00 10 */	addi r0, r4, 0x0010 /* 0x00060010@l */
/* 80BBFBD8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BBFBDC  3C 80 80 45 */	lis r4, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BBFBE0  82 84 13 68 */	lwz r20, mAudioMgrPtr__10Z2AudioMgr@l(r4)  /* 0x80451368@l */
/* 80BBFBE4  4B 46 D4 89 */	bl dComIfGp_getReverb__Fi
/* 80BBFBE8  7C 67 1B 78 */	mr r7, r3
/* 80BBFBEC  7E 83 A3 78 */	mr r3, r20
/* 80BBFBF0  38 81 00 18 */	addi r4, r1, 0x18
/* 80BBFBF4  38 BD 00 74 */	addi r5, r29, 0x74
/* 80BBFBF8  38 C0 00 00 */	li r6, 0
/* 80BBFBFC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80BBFC00  FC 40 08 90 */	fmr f2, f1
/* 80BBFC04  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 80BBFC08  FC 80 18 90 */	fmr f4, f3
/* 80BBFC0C  39 00 00 00 */	li r8, 0
/* 80BBFC10  4B 6E BD 75 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BBFC14:
/* 80BBFC14  38 7D 02 40 */	addi r3, r29, 0x240
/* 80BBFC18  4B 4C 48 49 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BBFC1C  28 03 00 00 */	cmplwi r3, 0
/* 80BBFC20  41 82 00 8C */	beq lbl_80BBFCAC
/* 80BBFC24  A8 1D 01 00 */	lha r0, 0x100(r29)
/* 80BBFC28  2C 00 00 0A */	cmpwi r0, 0xa
/* 80BBFC2C  40 80 00 80 */	bge lbl_80BBFCAC
/* 80BBFC30  80 1D 02 DC */	lwz r0, 0x2dc(r29)
/* 80BBFC34  60 00 00 02 */	ori r0, r0, 2
/* 80BBFC38  90 1D 02 DC */	stw r0, 0x2dc(r29)
/* 80BBFC3C  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBFC40  88 03 B1 ED */	lbz r0, -0x4e13(r3)
/* 80BBFC44  2C 00 00 02 */	cmpwi r0, 2
/* 80BBFC48  40 82 00 10 */	bne lbl_80BBFC58
/* 80BBFC4C  38 00 00 07 */	li r0, 7
/* 80BBFC50  B0 1D 01 00 */	sth r0, 0x100(r29)
/* 80BBFC54  48 00 00 0C */	b lbl_80BBFC60
lbl_80BBFC58:
/* 80BBFC58  38 00 00 0F */	li r0, 0xf
/* 80BBFC5C  B0 1D 01 00 */	sth r0, 0x100(r29)
lbl_80BBFC60:
/* 80BBFC60  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BBFC64  7C 03 07 74 */	extsb r3, r0
/* 80BBFC68  3C 80 00 06 */	lis r4, 0x0006 /* 0x00060010@ha */
/* 80BBFC6C  38 04 00 10 */	addi r0, r4, 0x0010 /* 0x00060010@l */
/* 80BBFC70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBFC74  3C 80 80 45 */	lis r4, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BBFC78  82 84 13 68 */	lwz r20, mAudioMgrPtr__10Z2AudioMgr@l(r4)  /* 0x80451368@l */
/* 80BBFC7C  4B 46 D3 F1 */	bl dComIfGp_getReverb__Fi
/* 80BBFC80  7C 67 1B 78 */	mr r7, r3
/* 80BBFC84  7E 83 A3 78 */	mr r3, r20
/* 80BBFC88  38 81 00 14 */	addi r4, r1, 0x14
/* 80BBFC8C  38 BD 00 50 */	addi r5, r29, 0x50
/* 80BBFC90  38 C0 00 00 */	li r6, 0
/* 80BBFC94  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80BBFC98  FC 40 08 90 */	fmr f2, f1
/* 80BBFC9C  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 80BBFCA0  FC 80 18 90 */	fmr f4, f3
/* 80BBFCA4  39 00 00 00 */	li r8, 0
/* 80BBFCA8  4B 6E BC DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BBFCAC:
/* 80BBFCAC  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 80BBFCB0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80BBFCB4  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 80BBFCB8  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80BBFCBC  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 80BBFCC0  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80BBFCC4  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BBFCC8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BBFCCC  40 82 00 10 */	bne lbl_80BBFCDC
/* 80BBFCD0  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80BBFCD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BBFCD8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
lbl_80BBFCDC:
/* 80BBFCDC  38 7D 02 28 */	addi r3, r29, 0x228
/* 80BBFCE0  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80BBFCE4  4B 6A F4 F9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BBFCE8  A8 7D 00 FA */	lha r3, 0xfa(r29)
/* 80BBFCEC  2C 03 00 00 */	cmpwi r3, 0
/* 80BBFCF0  41 82 00 98 */	beq lbl_80BBFD88
/* 80BBFCF4  38 03 FF FF */	addi r0, r3, -1
/* 80BBFCF8  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80BBFCFC  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80BBFD00  28 00 00 00 */	cmplwi r0, 0
/* 80BBFD04  41 82 00 68 */	beq lbl_80BBFD6C
/* 80BBFD08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBFD0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBFD10  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 80BBFD14  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80BBFD18  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 80BBFD1C  EC 42 00 2A */	fadds f2, f2, f0
/* 80BBFD20  C0 7D 00 88 */	lfs f3, 0x88(r29)
/* 80BBFD24  4B 78 6B C5 */	bl PSMTXTrans
/* 80BBFD28  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 80BBFD2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBFD30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBFD34  38 85 00 68 */	addi r4, r5, 0x68
/* 80BBFD38  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80BBFD3C  4B 6C 0A A5 */	bl func_802807E0
/* 80BBFD40  A8 1D 00 FA */	lha r0, 0xfa(r29)
/* 80BBFD44  2C 00 00 00 */	cmpwi r0, 0
/* 80BBFD48  40 82 00 24 */	bne lbl_80BBFD6C
/* 80BBFD4C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80BBFD50  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BBFD54  60 00 00 01 */	ori r0, r0, 1
/* 80BBFD58  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BBFD5C  38 00 00 01 */	li r0, 1
/* 80BBFD60  90 03 00 24 */	stw r0, 0x24(r3)
/* 80BBFD64  38 00 00 00 */	li r0, 0
/* 80BBFD68  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_80BBFD6C:
/* 80BBFD6C  A8 1D 00 FA */	lha r0, 0xfa(r29)
/* 80BBFD70  2C 00 00 00 */	cmpwi r0, 0
/* 80BBFD74  40 82 01 70 */	bne lbl_80BBFEE4
/* 80BBFD78  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BBFD7C  54 00 06 FC */	rlwinm r0, r0, 0, 0x1b, 0x1e
/* 80BBFD80  98 1D 07 08 */	stb r0, 0x708(r29)
/* 80BBFD84  48 00 01 60 */	b lbl_80BBFEE4
lbl_80BBFD88:
/* 80BBFD88  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80BBFD8C  41 82 01 58 */	beq lbl_80BBFEE4
/* 80BBFD90  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBFD94  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BBFD98  70 00 00 09 */	andi. r0, r0, 9
/* 80BBFD9C  40 82 01 48 */	bne lbl_80BBFEE4
/* 80BBFDA0  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 80BBFDA4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BBFDA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBFDAC  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80BBFDB0  38 61 00 4C */	addi r3, r1, 0x4c
/* 80BBFDB4  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80BBFDB8  38 A1 00 E8 */	addi r5, r1, 0xe8
/* 80BBFDBC  4B 6A 6D 79 */	bl __mi__4cXyzCFRC3Vec
/* 80BBFDC0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80BBFDC4  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80BBFDC8  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80BBFDCC  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 80BBFDD0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80BBFDD4  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80BBFDD8  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80BBFDDC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBFDE0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80BBFDE4  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80BBFDE8  4B 78 73 51 */	bl PSVECSquareMag
/* 80BBFDEC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BBFDF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BBFDF4  40 81 00 58 */	ble lbl_80BBFE4C
/* 80BBFDF8  FC 00 08 34 */	frsqrte f0, f1
/* 80BBFDFC  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BBFE00  FC 44 00 32 */	fmul f2, f4, f0
/* 80BBFE04  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BBFE08  FC 00 00 32 */	fmul f0, f0, f0
/* 80BBFE0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BBFE10  FC 03 00 28 */	fsub f0, f3, f0
/* 80BBFE14  FC 02 00 32 */	fmul f0, f2, f0
/* 80BBFE18  FC 44 00 32 */	fmul f2, f4, f0
/* 80BBFE1C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BBFE20  FC 01 00 32 */	fmul f0, f1, f0
/* 80BBFE24  FC 03 00 28 */	fsub f0, f3, f0
/* 80BBFE28  FC 02 00 32 */	fmul f0, f2, f0
/* 80BBFE2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BBFE30  FC 00 00 32 */	fmul f0, f0, f0
/* 80BBFE34  FC 01 00 32 */	fmul f0, f1, f0
/* 80BBFE38  FC 03 00 28 */	fsub f0, f3, f0
/* 80BBFE3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BBFE40  FC 21 00 32 */	fmul f1, f1, f0
/* 80BBFE44  FC 20 08 18 */	frsp f1, f1
/* 80BBFE48  48 00 00 88 */	b lbl_80BBFED0
lbl_80BBFE4C:
/* 80BBFE4C  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BBFE50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BBFE54  40 80 00 10 */	bge lbl_80BBFE64
/* 80BBFE58  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BBFE5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BBFE60  48 00 00 70 */	b lbl_80BBFED0
lbl_80BBFE64:
/* 80BBFE64  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BBFE68  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BBFE6C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BBFE70  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BBFE74  7C 03 00 00 */	cmpw r3, r0
/* 80BBFE78  41 82 00 14 */	beq lbl_80BBFE8C
/* 80BBFE7C  40 80 00 40 */	bge lbl_80BBFEBC
/* 80BBFE80  2C 03 00 00 */	cmpwi r3, 0
/* 80BBFE84  41 82 00 20 */	beq lbl_80BBFEA4
/* 80BBFE88  48 00 00 34 */	b lbl_80BBFEBC
lbl_80BBFE8C:
/* 80BBFE8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BBFE90  41 82 00 0C */	beq lbl_80BBFE9C
/* 80BBFE94  38 00 00 01 */	li r0, 1
/* 80BBFE98  48 00 00 28 */	b lbl_80BBFEC0
lbl_80BBFE9C:
/* 80BBFE9C  38 00 00 02 */	li r0, 2
/* 80BBFEA0  48 00 00 20 */	b lbl_80BBFEC0
lbl_80BBFEA4:
/* 80BBFEA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BBFEA8  41 82 00 0C */	beq lbl_80BBFEB4
/* 80BBFEAC  38 00 00 05 */	li r0, 5
/* 80BBFEB0  48 00 00 10 */	b lbl_80BBFEC0
lbl_80BBFEB4:
/* 80BBFEB4  38 00 00 03 */	li r0, 3
/* 80BBFEB8  48 00 00 08 */	b lbl_80BBFEC0
lbl_80BBFEBC:
/* 80BBFEBC  38 00 00 04 */	li r0, 4
lbl_80BBFEC0:
/* 80BBFEC0  2C 00 00 01 */	cmpwi r0, 1
/* 80BBFEC4  40 82 00 0C */	bne lbl_80BBFED0
/* 80BBFEC8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BBFECC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BBFED0:
/* 80BBFED0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BBFED4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BBFED8  40 80 00 0C */	bge lbl_80BBFEE4
/* 80BBFEDC  38 00 00 1E */	li r0, 0x1e
/* 80BBFEE0  B0 1D 00 FA */	sth r0, 0xfa(r29)
lbl_80BBFEE4:
/* 80BBFEE4  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80BBFEE8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80BBFEEC  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80BBFEF0  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80BBFEF4  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 80BBFEF8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80BBFEFC  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BBFF00  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80BBFF04  40 82 00 10 */	bne lbl_80BBFF14
/* 80BBFF08  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80BBFF0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BBFF10  D0 01 00 D4 */	stfs f0, 0xd4(r1)
lbl_80BBFF14:
/* 80BBFF14  38 7D 03 64 */	addi r3, r29, 0x364
/* 80BBFF18  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80BBFF1C  4B 6A F2 C1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BBFF20  A8 7D 00 FC */	lha r3, 0xfc(r29)
/* 80BBFF24  2C 03 00 00 */	cmpwi r3, 0
/* 80BBFF28  41 82 00 98 */	beq lbl_80BBFFC0
/* 80BBFF2C  38 03 FF FF */	addi r0, r3, -1
/* 80BBFF30  B0 1D 00 FC */	sth r0, 0xfc(r29)
/* 80BBFF34  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80BBFF38  28 00 00 00 */	cmplwi r0, 0
/* 80BBFF3C  41 82 00 68 */	beq lbl_80BBFFA4
/* 80BBFF40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBFF44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBFF48  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80BBFF4C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80BBFF50  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80BBFF54  EC 42 00 2A */	fadds f2, f2, f0
/* 80BBFF58  C0 7D 00 64 */	lfs f3, 0x64(r29)
/* 80BBFF5C  4B 78 69 8D */	bl PSMTXTrans
/* 80BBFF60  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 80BBFF64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBFF68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBFF6C  38 85 00 68 */	addi r4, r5, 0x68
/* 80BBFF70  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80BBFF74  4B 6C 08 6D */	bl func_802807E0
/* 80BBFF78  A8 1D 00 FC */	lha r0, 0xfc(r29)
/* 80BBFF7C  2C 00 00 00 */	cmpwi r0, 0
/* 80BBFF80  40 82 00 24 */	bne lbl_80BBFFA4
/* 80BBFF84  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80BBFF88  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BBFF8C  60 00 00 01 */	ori r0, r0, 1
/* 80BBFF90  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BBFF94  38 00 00 01 */	li r0, 1
/* 80BBFF98  90 03 00 24 */	stw r0, 0x24(r3)
/* 80BBFF9C  38 00 00 00 */	li r0, 0
/* 80BBFFA0  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_80BBFFA4:
/* 80BBFFA4  A8 1D 00 FC */	lha r0, 0xfc(r29)
/* 80BBFFA8  2C 00 00 00 */	cmpwi r0, 0
/* 80BBFFAC  40 82 01 70 */	bne lbl_80BC011C
/* 80BBFFB0  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BBFFB4  70 00 00 1D */	andi. r0, r0, 0x1d
/* 80BBFFB8  98 1D 07 08 */	stb r0, 0x708(r29)
/* 80BBFFBC  48 00 01 60 */	b lbl_80BC011C
lbl_80BBFFC0:
/* 80BBFFC0  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80BBFFC4  41 82 01 58 */	beq lbl_80BC011C
/* 80BBFFC8  3C 7E 00 01 */	addis r3, r30, 1
/* 80BBFFCC  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BBFFD0  70 00 00 09 */	andi. r0, r0, 9
/* 80BBFFD4  40 82 01 48 */	bne lbl_80BC011C
/* 80BBFFD8  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 80BBFFDC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BBFFE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBFFE4  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80BBFFE8  38 61 00 40 */	addi r3, r1, 0x40
/* 80BBFFEC  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80BBFFF0  38 A1 00 E8 */	addi r5, r1, 0xe8
/* 80BBFFF4  4B 6A 6B 41 */	bl __mi__4cXyzCFRC3Vec
/* 80BBFFF8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80BBFFFC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80BC0000  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80BC0004  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80BC0008  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80BC000C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80BC0010  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80BC0014  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BC0018  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80BC001C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80BC0020  4B 78 71 19 */	bl PSVECSquareMag
/* 80BC0024  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC0028  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC002C  40 81 00 58 */	ble lbl_80BC0084
/* 80BC0030  FC 00 08 34 */	frsqrte f0, f1
/* 80BC0034  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BC0038  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC003C  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BC0040  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC0044  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC0048  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC004C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC0050  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC0054  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC0058  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC005C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC0060  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC0064  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC0068  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC006C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC0070  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC0074  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC0078  FC 21 00 32 */	fmul f1, f1, f0
/* 80BC007C  FC 20 08 18 */	frsp f1, f1
/* 80BC0080  48 00 00 88 */	b lbl_80BC0108
lbl_80BC0084:
/* 80BC0084  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BC0088  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC008C  40 80 00 10 */	bge lbl_80BC009C
/* 80BC0090  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BC0094  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BC0098  48 00 00 70 */	b lbl_80BC0108
lbl_80BC009C:
/* 80BC009C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BC00A0  80 81 00 08 */	lwz r4, 8(r1)
/* 80BC00A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BC00A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BC00AC  7C 03 00 00 */	cmpw r3, r0
/* 80BC00B0  41 82 00 14 */	beq lbl_80BC00C4
/* 80BC00B4  40 80 00 40 */	bge lbl_80BC00F4
/* 80BC00B8  2C 03 00 00 */	cmpwi r3, 0
/* 80BC00BC  41 82 00 20 */	beq lbl_80BC00DC
/* 80BC00C0  48 00 00 34 */	b lbl_80BC00F4
lbl_80BC00C4:
/* 80BC00C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BC00C8  41 82 00 0C */	beq lbl_80BC00D4
/* 80BC00CC  38 00 00 01 */	li r0, 1
/* 80BC00D0  48 00 00 28 */	b lbl_80BC00F8
lbl_80BC00D4:
/* 80BC00D4  38 00 00 02 */	li r0, 2
/* 80BC00D8  48 00 00 20 */	b lbl_80BC00F8
lbl_80BC00DC:
/* 80BC00DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BC00E0  41 82 00 0C */	beq lbl_80BC00EC
/* 80BC00E4  38 00 00 05 */	li r0, 5
/* 80BC00E8  48 00 00 10 */	b lbl_80BC00F8
lbl_80BC00EC:
/* 80BC00EC  38 00 00 03 */	li r0, 3
/* 80BC00F0  48 00 00 08 */	b lbl_80BC00F8
lbl_80BC00F4:
/* 80BC00F4  38 00 00 04 */	li r0, 4
lbl_80BC00F8:
/* 80BC00F8  2C 00 00 01 */	cmpwi r0, 1
/* 80BC00FC  40 82 00 0C */	bne lbl_80BC0108
/* 80BC0100  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BC0104  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BC0108:
/* 80BC0108  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BC010C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC0110  40 80 00 0C */	bge lbl_80BC011C
/* 80BC0114  38 00 00 1E */	li r0, 0x1e
/* 80BC0118  B0 1D 00 FC */	sth r0, 0xfc(r29)
lbl_80BC011C:
/* 80BC011C  7F 03 C3 78 */	mr r3, r24
/* 80BC0120  38 9D 01 04 */	addi r4, r29, 0x104
/* 80BC0124  4B 6A 4A 85 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BC0128  7F 03 C3 78 */	mr r3, r24
/* 80BC012C  38 9D 02 40 */	addi r4, r29, 0x240
/* 80BC0130  4B 6A 4A 79 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80BC0134:
/* 80BC0134  38 60 00 00 */	li r3, 0
/* 80BC0138  38 00 00 02 */	li r0, 2
/* 80BC013C  7C 09 03 A6 */	mtctr r0
lbl_80BC0140:
/* 80BC0140  38 A3 00 FE */	addi r5, r3, 0xfe
/* 80BC0144  7C 9D 2A AE */	lhax r4, r29, r5
/* 80BC0148  2C 04 00 00 */	cmpwi r4, 0
/* 80BC014C  41 82 00 0C */	beq lbl_80BC0158
/* 80BC0150  38 04 FF FF */	addi r0, r4, -1
/* 80BC0154  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_80BC0158:
/* 80BC0158  38 63 00 02 */	addi r3, r3, 2
/* 80BC015C  42 00 FF E4 */	bdnz lbl_80BC0140
/* 80BC0160  80 7A 00 00 */	lwz r3, 0(r26)
/* 80BC0164  A8 9D 00 F0 */	lha r4, 0xf0(r29)
/* 80BC0168  4B 44 C2 CD */	bl mDoMtx_YrotM__FPA4_fs
/* 80BC016C  88 1C B1 EB */	lbz r0, -0x4e15(r28)
/* 80BC0170  7C 00 07 74 */	extsb r0, r0
/* 80BC0174  7C 1B 00 00 */	cmpw r27, r0
/* 80BC0178  41 80 00 38 */	blt lbl_80BC01B0
/* 80BC017C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC0180  D0 1D 00 D0 */	stfs f0, 0xd0(r29)
/* 80BC0184  D0 1D 00 CC */	stfs f0, 0xcc(r29)
/* 80BC0188  D0 1D 00 C8 */	stfs f0, 0xc8(r29)
/* 80BC018C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80BC0190  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80BC0194  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BC0198  C0 1D 00 CC */	lfs f0, 0xcc(r29)
/* 80BC019C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BC01A0  C0 1D 00 D0 */	lfs f0, 0xd0(r29)
/* 80BC01A4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BC01A8  38 00 00 00 */	li r0, 0
/* 80BC01AC  98 1D 07 08 */	stb r0, 0x708(r29)
lbl_80BC01B0:
/* 80BC01B0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BC01B4  C0 1D 00 CC */	lfs f0, 0xcc(r29)
/* 80BC01B8  EC 5F 00 32 */	fmuls f2, f31, f0
/* 80BC01BC  FC 60 08 90 */	fmr f3, f1
/* 80BC01C0  38 60 00 01 */	li r3, 1
/* 80BC01C4  4B 6B 0C 99 */	bl MtxTrans__FfffUc
/* 80BC01C8  80 7A 00 00 */	lwz r3, 0(r26)
/* 80BC01CC  80 9D 00 00 */	lwz r4, 0(r29)
/* 80BC01D0  38 84 00 24 */	addi r4, r4, 0x24
/* 80BC01D4  4B 78 62 DD */	bl PSMTXCopy
/* 80BC01D8  88 7C B1 E8 */	lbz r3, -0x4e18(r28)
/* 80BC01DC  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80BC01E0  40 82 03 B0 */	bne lbl_80BC0590
/* 80BC01E4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80BC01E8  40 82 03 A8 */	bne lbl_80BC0590
/* 80BC01EC  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BC01F0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80BC01F4  41 82 03 9C */	beq lbl_80BC0590
/* 80BC01F8  80 7C AE C8 */	lwz r3, -0x5138(r28)
/* 80BC01FC  82 E3 00 00 */	lwz r23, 0(r3)
/* 80BC0200  82 C3 00 20 */	lwz r22, 0x20(r3)
/* 80BC0204  80 7C AE D8 */	lwz r3, -0x5128(r28)
/* 80BC0208  3A 83 00 01 */	addi r20, r3, 1
/* 80BC020C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC0210  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80BC0214  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 80BC0218  88 1C B1 E9 */	lbz r0, -0x4e17(r28)
/* 80BC021C  1C 00 05 DC */	mulli r0, r0, 0x5dc
/* 80BC0220  7C 03 07 34 */	extsh r3, r0
/* 80BC0224  C0 7C AF 30 */	lfs f3, -0x50d0(r28)
/* 80BC0228  D0 61 01 20 */	stfs f3, 0x120(r1)
/* 80BC022C  A8 1C AF 20 */	lha r0, -0x50e0(r28)
/* 80BC0230  1C 00 05 78 */	mulli r0, r0, 0x578
/* 80BC0234  7C 03 02 14 */	add r0, r3, r0
/* 80BC0238  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BC023C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BC0240  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BC0244  7C 83 04 2E */	lfsx f4, r3, r0
/* 80BC0248  C0 5F 01 48 */	lfs f2, 0x148(r31)
/* 80BC024C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80BC0250  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80BC0254  EC 00 01 32 */	fmuls f0, f0, f4
/* 80BC0258  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC025C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BC0260  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BC0264  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80BC0268  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BC026C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BC0270  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC0274  3C 80 80 BC */	lis r4, struct_80BC2524+0x2@ha /* 0x80BC2526@ha */
/* 80BC0278  38 84 25 26 */	addi r4, r4, struct_80BC2524+0x2@l /* 0x80BC2526@l */
/* 80BC027C  A8 84 00 00 */	lha r4, 0(r4)
/* 80BC0280  4B 44 C1 5D */	bl mDoMtx_YrotS__FPA4_fs
/* 80BC0284  38 61 01 18 */	addi r3, r1, 0x118
/* 80BC0288  38 81 00 AC */	addi r4, r1, 0xac
/* 80BC028C  4B 6B 0C 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BC0290  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BC0294  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BC0298  41 82 00 28 */	beq lbl_80BC02C0
/* 80BC029C  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80BC02A0  1C 14 00 0C */	mulli r0, r20, 0xc
/* 80BC02A4  7C 77 02 14 */	add r3, r23, r0
/* 80BC02A8  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BC02AC  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80BC02B0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BC02B4  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 80BC02B8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BC02BC  48 00 01 4C */	b lbl_80BC0408
lbl_80BC02C0:
/* 80BC02C0  1C 14 00 0C */	mulli r0, r20, 0xc
/* 80BC02C4  7E F7 02 14 */	add r23, r23, r0
/* 80BC02C8  38 61 00 34 */	addi r3, r1, 0x34
/* 80BC02CC  38 97 FF F4 */	addi r4, r23, -12
/* 80BC02D0  3A B7 00 0C */	addi r21, r23, 0xc
/* 80BC02D4  7E A5 AB 78 */	mr r5, r21
/* 80BC02D8  4B 6A 68 5D */	bl __mi__4cXyzCFRC3Vec
/* 80BC02DC  C0 C1 00 34 */	lfs f6, 0x34(r1)
/* 80BC02E0  D0 C1 00 A0 */	stfs f6, 0xa0(r1)
/* 80BC02E4  C0 A1 00 38 */	lfs f5, 0x38(r1)
/* 80BC02E8  D0 A1 00 A4 */	stfs f5, 0xa4(r1)
/* 80BC02EC  C0 81 00 3C */	lfs f4, 0x3c(r1)
/* 80BC02F0  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 80BC02F4  3C BE 00 01 */	addis r5, r30, 1
/* 80BC02F8  A8 05 AF 1E */	lha r0, -0x50e2(r5)
/* 80BC02FC  1C 00 00 06 */	mulli r0, r0, 6
/* 80BC0300  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BC0304  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BC0308  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BC030C  7C 43 04 2E */	lfsx f2, r3, r0
/* 80BC0310  A8 1D 00 FE */	lha r0, 0xfe(r29)
/* 80BC0314  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 80BC0318  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BC031C  90 01 01 54 */	stw r0, 0x154(r1)
/* 80BC0320  3C 00 43 30 */	lis r0, 0x4330
/* 80BC0324  90 01 01 50 */	stw r0, 0x150(r1)
/* 80BC0328  C8 01 01 50 */	lfd f0, 0x150(r1)
/* 80BC032C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BC0330  EC E0 00 B2 */	fmuls f7, f0, f2
/* 80BC0334  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 80BC0338  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80BC033C  EC 23 01 B2 */	fmuls f1, f3, f6
/* 80BC0340  C0 15 00 00 */	lfs f0, 0(r21)
/* 80BC0344  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC0348  EC 02 00 2A */	fadds f0, f2, f0
/* 80BC034C  D0 17 00 00 */	stfs f0, 0(r23)
/* 80BC0350  EC 23 01 72 */	fmuls f1, f3, f5
/* 80BC0354  C0 17 00 10 */	lfs f0, 0x10(r23)
/* 80BC0358  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC035C  EC 27 00 2A */	fadds f1, f7, f0
/* 80BC0360  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BC0364  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BC0368  D0 17 00 04 */	stfs f0, 4(r23)
/* 80BC036C  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 80BC0370  EC 23 01 32 */	fmuls f1, f3, f4
/* 80BC0374  C0 17 00 14 */	lfs f0, 0x14(r23)
/* 80BC0378  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC037C  EC 02 00 2A */	fadds f0, f2, f0
/* 80BC0380  D0 17 00 08 */	stfs f0, 8(r23)
/* 80BC0384  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 80BC0388  80 83 00 00 */	lwz r4, 0(r3)
/* 80BC038C  82 A3 00 40 */	lwz r21, 0x40(r3)
/* 80BC0390  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BC0394  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80BC0398  41 82 00 18 */	beq lbl_80BC03B0
/* 80BC039C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BC03A0  C0 5F 01 4C */	lfs f2, 0x14c(r31)
/* 80BC03A4  C0 05 AE DC */	lfs f0, -0x5124(r5)
/* 80BC03A8  EE E2 00 32 */	fmuls f23, f2, f0
/* 80BC03AC  48 00 00 14 */	b lbl_80BC03C0
lbl_80BC03B0:
/* 80BC03B0  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 80BC03B4  C0 05 AE DC */	lfs f0, -0x5124(r5)
/* 80BC03B8  EE E1 00 32 */	fmuls f23, f1, f0
/* 80BC03BC  FC 20 B8 90 */	fmr f1, f23
lbl_80BC03C0:
/* 80BC03C0  C0 17 00 00 */	lfs f0, 0(r23)
/* 80BC03C4  D0 04 00 00 */	stfs f0, 0(r4)
/* 80BC03C8  C0 17 00 04 */	lfs f0, 4(r23)
/* 80BC03CC  D0 04 00 04 */	stfs f0, 4(r4)
/* 80BC03D0  C0 17 00 08 */	lfs f0, 8(r23)
/* 80BC03D4  D0 04 00 08 */	stfs f0, 8(r4)
/* 80BC03D8  7F C3 F3 78 */	mr r3, r30
/* 80BC03DC  4B FF DF 5D */	bl himo_cut_control1__FP13obj_brg_classP4cXyzf
/* 80BC03E0  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 80BC03E4  D0 15 00 00 */	stfs f0, 0(r21)
/* 80BC03E8  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 80BC03EC  D0 15 00 04 */	stfs f0, 4(r21)
/* 80BC03F0  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 80BC03F4  D0 15 00 08 */	stfs f0, 8(r21)
/* 80BC03F8  7F C3 F3 78 */	mr r3, r30
/* 80BC03FC  7E A4 AB 78 */	mr r4, r21
/* 80BC0400  FC 20 B8 90 */	fmr f1, f23
/* 80BC0404  4B FF DF 35 */	bl himo_cut_control1__FP13obj_brg_classP4cXyzf
lbl_80BC0408:
/* 80BC0408  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BC040C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80BC0410  41 82 00 28 */	beq lbl_80BC0438
/* 80BC0414  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 80BC0418  1C 14 00 0C */	mulli r0, r20, 0xc
/* 80BC041C  7C 76 02 14 */	add r3, r22, r0
/* 80BC0420  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BC0424  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 80BC0428  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BC042C  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 80BC0430  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BC0434  48 00 01 4C */	b lbl_80BC0580
lbl_80BC0438:
/* 80BC0438  1C 14 00 0C */	mulli r0, r20, 0xc
/* 80BC043C  7E B6 02 14 */	add r21, r22, r0
/* 80BC0440  38 61 00 28 */	addi r3, r1, 0x28
/* 80BC0444  38 95 FF F4 */	addi r4, r21, -12
/* 80BC0448  3A D5 00 0C */	addi r22, r21, 0xc
/* 80BC044C  7E C5 B3 78 */	mr r5, r22
/* 80BC0450  4B 6A 66 E5 */	bl __mi__4cXyzCFRC3Vec
/* 80BC0454  C0 C1 00 28 */	lfs f6, 0x28(r1)
/* 80BC0458  D0 C1 00 94 */	stfs f6, 0x94(r1)
/* 80BC045C  C0 A1 00 2C */	lfs f5, 0x2c(r1)
/* 80BC0460  D0 A1 00 98 */	stfs f5, 0x98(r1)
/* 80BC0464  C0 81 00 30 */	lfs f4, 0x30(r1)
/* 80BC0468  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 80BC046C  3C BE 00 01 */	addis r5, r30, 1
/* 80BC0470  A8 05 AF 1E */	lha r0, -0x50e2(r5)
/* 80BC0474  1C 00 00 06 */	mulli r0, r0, 6
/* 80BC0478  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BC047C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BC0480  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BC0484  7C 43 04 2E */	lfsx f2, r3, r0
/* 80BC0488  A8 1D 01 00 */	lha r0, 0x100(r29)
/* 80BC048C  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 80BC0490  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BC0494  90 01 01 54 */	stw r0, 0x154(r1)
/* 80BC0498  3C 00 43 30 */	lis r0, 0x4330
/* 80BC049C  90 01 01 50 */	stw r0, 0x150(r1)
/* 80BC04A0  C8 01 01 50 */	lfd f0, 0x150(r1)
/* 80BC04A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BC04A8  EC E0 00 B2 */	fmuls f7, f0, f2
/* 80BC04AC  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 80BC04B0  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80BC04B4  EC 23 01 B2 */	fmuls f1, f3, f6
/* 80BC04B8  C0 16 00 00 */	lfs f0, 0(r22)
/* 80BC04BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC04C0  EC 02 00 2A */	fadds f0, f2, f0
/* 80BC04C4  D0 15 00 00 */	stfs f0, 0(r21)
/* 80BC04C8  EC 23 01 72 */	fmuls f1, f3, f5
/* 80BC04CC  C0 15 00 10 */	lfs f0, 0x10(r21)
/* 80BC04D0  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC04D4  EC 27 00 2A */	fadds f1, f7, f0
/* 80BC04D8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BC04DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BC04E0  D0 15 00 04 */	stfs f0, 4(r21)
/* 80BC04E4  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 80BC04E8  EC 23 01 32 */	fmuls f1, f3, f4
/* 80BC04EC  C0 15 00 14 */	lfs f0, 0x14(r21)
/* 80BC04F0  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC04F4  EC 02 00 2A */	fadds f0, f2, f0
/* 80BC04F8  D0 15 00 08 */	stfs f0, 8(r21)
/* 80BC04FC  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 80BC0500  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80BC0504  82 83 00 60 */	lwz r20, 0x60(r3)
/* 80BC0508  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80BC050C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80BC0510  41 82 00 18 */	beq lbl_80BC0528
/* 80BC0514  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BC0518  C0 5F 01 4C */	lfs f2, 0x14c(r31)
/* 80BC051C  C0 05 AE DC */	lfs f0, -0x5124(r5)
/* 80BC0520  EE E2 00 32 */	fmuls f23, f2, f0
/* 80BC0524  48 00 00 14 */	b lbl_80BC0538
lbl_80BC0528:
/* 80BC0528  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 80BC052C  C0 05 AE DC */	lfs f0, -0x5124(r5)
/* 80BC0530  EE E1 00 32 */	fmuls f23, f1, f0
/* 80BC0534  FC 20 B8 90 */	fmr f1, f23
lbl_80BC0538:
/* 80BC0538  C0 15 00 00 */	lfs f0, 0(r21)
/* 80BC053C  D0 04 00 00 */	stfs f0, 0(r4)
/* 80BC0540  C0 15 00 04 */	lfs f0, 4(r21)
/* 80BC0544  D0 04 00 04 */	stfs f0, 4(r4)
/* 80BC0548  C0 15 00 08 */	lfs f0, 8(r21)
/* 80BC054C  D0 04 00 08 */	stfs f0, 8(r4)
/* 80BC0550  7F C3 F3 78 */	mr r3, r30
/* 80BC0554  4B FF DD E5 */	bl himo_cut_control1__FP13obj_brg_classP4cXyzf
/* 80BC0558  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80BC055C  D0 14 00 00 */	stfs f0, 0(r20)
/* 80BC0560  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80BC0564  D0 14 00 04 */	stfs f0, 4(r20)
/* 80BC0568  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 80BC056C  D0 14 00 08 */	stfs f0, 8(r20)
/* 80BC0570  7F C3 F3 78 */	mr r3, r30
/* 80BC0574  7E 84 A3 78 */	mr r4, r20
/* 80BC0578  FC 20 B8 90 */	fmr f1, f23
/* 80BC057C  4B FF DD BD */	bl himo_cut_control1__FP13obj_brg_classP4cXyzf
lbl_80BC0580:
/* 80BC0580  3C 9E 00 01 */	addis r4, r30, 1
/* 80BC0584  80 64 AE D8 */	lwz r3, -0x5128(r4)
/* 80BC0588  38 03 00 01 */	addi r0, r3, 1
/* 80BC058C  90 04 AE D8 */	stw r0, -0x5128(r4)
lbl_80BC0590:
/* 80BC0590  3B 7B 00 01 */	addi r27, r27, 1
/* 80BC0594  3B BD 07 0C */	addi r29, r29, 0x70c
lbl_80BC0598:
/* 80BC0598  88 9C B1 EA */	lbz r4, -0x4e16(r28)
/* 80BC059C  7C 84 07 74 */	extsb r4, r4
/* 80BC05A0  7C 1B 20 00 */	cmpw r27, r4
/* 80BC05A4  41 80 F0 48 */	blt lbl_80BBF5EC
/* 80BC05A8  80 7C AE CC */	lwz r3, -0x5134(r28)
/* 80BC05AC  4B 4C 2A 75 */	bl CopyBackVtx__6dBgWSvFv
/* 80BC05B0  3F 1E 00 01 */	addis r24, r30, 1
/* 80BC05B4  80 78 AE CC */	lwz r3, -0x5134(r24)
/* 80BC05B8  82 C3 00 9C */	lwz r22, 0x9c(r3)
/* 80BC05BC  38 A0 00 00 */	li r5, 0
/* 80BC05C0  3A E0 00 00 */	li r23, 0
/* 80BC05C4  3B 20 00 00 */	li r25, 0
/* 80BC05C8  48 00 01 F0 */	b lbl_80BC07B8
lbl_80BC05CC:
/* 80BC05CC  56 E4 07 BE */	clrlwi r4, r23, 0x1e
/* 80BC05D0  7E F4 16 70 */	srawi r20, r23, 2
/* 80BC05D4  88 18 B1 EB */	lbz r0, -0x4e15(r24)
/* 80BC05D8  7C 00 07 74 */	extsb r0, r0
/* 80BC05DC  7C 14 00 00 */	cmpw r20, r0
/* 80BC05E0  40 80 01 94 */	bge lbl_80BC0774
/* 80BC05E4  1C 74 07 0C */	mulli r3, r20, 0x70c
/* 80BC05E8  3A A3 05 70 */	addi r21, r3, 0x570
/* 80BC05EC  7E BE AA 14 */	add r21, r30, r21
/* 80BC05F0  2C 04 00 02 */	cmpwi r4, 2
/* 80BC05F4  41 82 00 64 */	beq lbl_80BC0658
/* 80BC05F8  40 80 00 14 */	bge lbl_80BC060C
/* 80BC05FC  2C 04 00 00 */	cmpwi r4, 0
/* 80BC0600  41 82 00 18 */	beq lbl_80BC0618
/* 80BC0604  40 80 00 34 */	bge lbl_80BC0638
/* 80BC0608  48 00 00 8C */	b lbl_80BC0694
lbl_80BC060C:
/* 80BC060C  2C 04 00 04 */	cmpwi r4, 4
/* 80BC0610  40 80 00 84 */	bge lbl_80BC0694
/* 80BC0614  48 00 00 64 */	b lbl_80BC0678
lbl_80BC0618:
/* 80BC0618  C0 15 00 8C */	lfs f0, 0x8c(r21)
/* 80BC061C  7C 76 CA 14 */	add r3, r22, r25
/* 80BC0620  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BC0624  C0 15 00 90 */	lfs f0, 0x90(r21)
/* 80BC0628  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BC062C  C0 15 00 94 */	lfs f0, 0x94(r21)
/* 80BC0630  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BC0634  48 00 00 60 */	b lbl_80BC0694
lbl_80BC0638:
/* 80BC0638  C0 15 00 68 */	lfs f0, 0x68(r21)
/* 80BC063C  7C 76 CA 14 */	add r3, r22, r25
/* 80BC0640  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BC0644  C0 15 00 6C */	lfs f0, 0x6c(r21)
/* 80BC0648  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BC064C  C0 15 00 70 */	lfs f0, 0x70(r21)
/* 80BC0650  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BC0654  48 00 00 40 */	b lbl_80BC0694
lbl_80BC0658:
/* 80BC0658  C0 15 00 80 */	lfs f0, 0x80(r21)
/* 80BC065C  7C 76 CA 14 */	add r3, r22, r25
/* 80BC0660  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BC0664  C0 15 00 84 */	lfs f0, 0x84(r21)
/* 80BC0668  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BC066C  C0 15 00 88 */	lfs f0, 0x88(r21)
/* 80BC0670  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BC0674  48 00 00 20 */	b lbl_80BC0694
lbl_80BC0678:
/* 80BC0678  C0 15 00 5C */	lfs f0, 0x5c(r21)
/* 80BC067C  7C 76 CA 14 */	add r3, r22, r25
/* 80BC0680  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BC0684  C0 15 00 60 */	lfs f0, 0x60(r21)
/* 80BC0688  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BC068C  C0 15 00 64 */	lfs f0, 0x64(r21)
/* 80BC0690  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80BC0694:
/* 80BC0694  2C 14 00 00 */	cmpwi r20, 0
/* 80BC0698  41 82 00 1C */	beq lbl_80BC06B4
/* 80BC069C  3C 7E 00 01 */	addis r3, r30, 1
/* 80BC06A0  88 03 B1 EB */	lbz r0, -0x4e15(r3)
/* 80BC06A4  7C 03 07 74 */	extsb r3, r0
/* 80BC06A8  38 03 FF FF */	addi r0, r3, -1
/* 80BC06AC  7C 14 00 00 */	cmpw r20, r0
/* 80BC06B0  40 82 00 BC */	bne lbl_80BC076C
lbl_80BC06B4:
/* 80BC06B4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BC06B8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BC06BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC06C0  A8 95 00 D6 */	lha r4, 0xd6(r21)
/* 80BC06C4  4B 44 BD 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BC06C8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BC06CC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BC06D0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC06D4  A8 95 00 D4 */	lha r4, 0xd4(r21)
/* 80BC06D8  4B 44 BC C5 */	bl mDoMtx_XrotM__FPA4_fs
/* 80BC06DC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC06E0  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 80BC06E4  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80BC06E8  2C 14 00 00 */	cmpwi r20, 0
/* 80BC06EC  40 82 00 10 */	bne lbl_80BC06FC
/* 80BC06F0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BC06F4  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80BC06F8  48 00 00 34 */	b lbl_80BC072C
lbl_80BC06FC:
/* 80BC06FC  3C 9E 00 01 */	addis r4, r30, 1
/* 80BC0700  88 04 B1 EB */	lbz r0, -0x4e15(r4)
/* 80BC0704  7C 03 07 74 */	extsb r3, r0
/* 80BC0708  88 04 B1 EA */	lbz r0, -0x4e16(r4)
/* 80BC070C  7C 00 07 74 */	extsb r0, r0
/* 80BC0710  7C 03 00 00 */	cmpw r3, r0
/* 80BC0714  40 82 00 10 */	bne lbl_80BC0724
/* 80BC0718  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80BC071C  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80BC0720  48 00 00 0C */	b lbl_80BC072C
lbl_80BC0724:
/* 80BC0724  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 80BC0728  D0 01 01 20 */	stfs f0, 0x120(r1)
lbl_80BC072C:
/* 80BC072C  38 61 01 18 */	addi r3, r1, 0x118
/* 80BC0730  38 81 01 0C */	addi r4, r1, 0x10c
/* 80BC0734  4B 6B 07 B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BC0738  7C 76 CA 14 */	add r3, r22, r25
/* 80BC073C  C0 23 00 00 */	lfs f1, 0(r3)
/* 80BC0740  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 80BC0744  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC0748  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BC074C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80BC0750  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 80BC0754  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC0758  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BC075C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80BC0760  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80BC0764  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC0768  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80BC076C:
/* 80BC076C  7E E5 BB 78 */	mr r5, r23
/* 80BC0770  48 00 00 28 */	b lbl_80BC0798
lbl_80BC0774:
/* 80BC0774  1C 05 00 0C */	mulli r0, r5, 0xc
/* 80BC0778  7C 76 02 14 */	add r3, r22, r0
/* 80BC077C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80BC0780  7C 96 CA 14 */	add r4, r22, r25
/* 80BC0784  D0 04 00 00 */	stfs f0, 0(r4)
/* 80BC0788  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BC078C  D0 04 00 04 */	stfs f0, 4(r4)
/* 80BC0790  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BC0794  D0 04 00 08 */	stfs f0, 8(r4)
lbl_80BC0798:
/* 80BC0798  A8 18 AF 1C */	lha r0, -0x50e4(r24)
/* 80BC079C  2C 00 00 04 */	cmpwi r0, 4
/* 80BC07A0  41 80 00 10 */	blt lbl_80BC07B0
/* 80BC07A4  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80BC07A8  38 19 00 04 */	addi r0, r25, 4
/* 80BC07AC  7C 16 05 2E */	stfsx f0, r22, r0
lbl_80BC07B0:
/* 80BC07B0  3A F7 00 01 */	addi r23, r23, 1
/* 80BC07B4  3B 39 00 0C */	addi r25, r25, 0xc
lbl_80BC07B8:
/* 80BC07B8  80 78 AE CC */	lwz r3, -0x5134(r24)
/* 80BC07BC  80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 80BC07C0  80 04 00 00 */	lwz r0, 0(r4)
/* 80BC07C4  7C 17 00 00 */	cmpw r23, r0
/* 80BC07C8  41 80 FE 04 */	blt lbl_80BC05CC
/* 80BC07CC  4B 4B B1 F5 */	bl Move__4dBgWFv
/* 80BC07D0  38 60 00 01 */	li r3, 1
lbl_80BC07D4:
/* 80BC07D4  E3 E1 02 18 */	psq_l f31, 536(r1), 0, 0 /* qr0 */
/* 80BC07D8  CB E1 02 10 */	lfd f31, 0x210(r1)
/* 80BC07DC  E3 C1 02 08 */	psq_l f30, 520(r1), 0, 0 /* qr0 */
/* 80BC07E0  CB C1 02 00 */	lfd f30, 0x200(r1)
/* 80BC07E4  E3 A1 01 F8 */	psq_l f29, 504(r1), 0, 0 /* qr0 */
/* 80BC07E8  CB A1 01 F0 */	lfd f29, 0x1f0(r1)
/* 80BC07EC  E3 81 01 E8 */	psq_l f28, 488(r1), 0, 0 /* qr0 */
/* 80BC07F0  CB 81 01 E0 */	lfd f28, 0x1e0(r1)
/* 80BC07F4  E3 61 01 D8 */	psq_l f27, 472(r1), 0, 0 /* qr0 */
/* 80BC07F8  CB 61 01 D0 */	lfd f27, 0x1d0(r1)
/* 80BC07FC  E3 41 01 C8 */	psq_l f26, 456(r1), 0, 0 /* qr0 */
/* 80BC0800  CB 41 01 C0 */	lfd f26, 0x1c0(r1)
/* 80BC0804  E3 21 01 B8 */	psq_l f25, 440(r1), 0, 0 /* qr0 */
/* 80BC0808  CB 21 01 B0 */	lfd f25, 0x1b0(r1)
/* 80BC080C  E3 01 01 A8 */	psq_l f24, 424(r1), 0, 0 /* qr0 */
/* 80BC0810  CB 01 01 A0 */	lfd f24, 0x1a0(r1)
/* 80BC0814  E2 E1 01 98 */	psq_l f23, 408(r1), 0, 0 /* qr0 */
/* 80BC0818  CA E1 01 90 */	lfd f23, 0x190(r1)
/* 80BC081C  39 61 01 90 */	addi r11, r1, 0x190
/* 80BC0820  4B 7A 19 E5 */	bl _restgpr_20
/* 80BC0824  80 01 02 24 */	lwz r0, 0x224(r1)
/* 80BC0828  7C 08 03 A6 */	mtlr r0
/* 80BC082C  38 21 02 20 */	addi r1, r1, 0x220
/* 80BC0830  4E 80 00 20 */	blr 
