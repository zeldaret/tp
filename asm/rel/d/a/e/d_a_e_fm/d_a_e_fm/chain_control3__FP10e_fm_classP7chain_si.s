lbl_804F5EF4:
/* 804F5EF4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804F5EF8  7C 08 02 A6 */	mflr r0
/* 804F5EFC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804F5F00  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 804F5F04  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 804F5F08  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804F5F0C  4B E6 C2 B9 */	bl _savegpr_23
/* 804F5F10  7C 7D 1B 78 */	mr r29, r3
/* 804F5F14  7C 9A 23 78 */	mr r26, r4
/* 804F5F18  7C BB 2B 78 */	mr r27, r5
/* 804F5F1C  3C 60 80 50 */	lis r3, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F5F20  3B C3 A6 BC */	addi r30, r3, lit_3777@l /* 0x804FA6BC@l */
/* 804F5F24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F5F28  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F5F2C  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 804F5F30  80 04 61 70 */	lwz r0, 0x6170(r4)
/* 804F5F34  1C 00 00 0C */	mulli r0, r0, 0xc
/* 804F5F38  7C BA 02 14 */	add r5, r26, r0
/* 804F5F3C  38 61 00 3C */	addi r3, r1, 0x3c
/* 804F5F40  38 85 01 AC */	addi r4, r5, 0x1ac
/* 804F5F44  38 A5 00 74 */	addi r5, r5, 0x74
/* 804F5F48  4B D7 0B ED */	bl __mi__4cXyzCFRC3Vec
/* 804F5F4C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804F5F50  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804F5F54  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804F5F58  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804F5F5C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804F5F60  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804F5F64  38 61 00 54 */	addi r3, r1, 0x54
/* 804F5F68  4B E5 11 D1 */	bl PSVECSquareMag
/* 804F5F6C  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F5F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F5F74  40 81 00 58 */	ble lbl_804F5FCC
/* 804F5F78  FC 00 08 34 */	frsqrte f0, f1
/* 804F5F7C  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 804F5F80  FC 44 00 32 */	fmul f2, f4, f0
/* 804F5F84  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 804F5F88  FC 00 00 32 */	fmul f0, f0, f0
/* 804F5F8C  FC 01 00 32 */	fmul f0, f1, f0
/* 804F5F90  FC 03 00 28 */	fsub f0, f3, f0
/* 804F5F94  FC 02 00 32 */	fmul f0, f2, f0
/* 804F5F98  FC 44 00 32 */	fmul f2, f4, f0
/* 804F5F9C  FC 00 00 32 */	fmul f0, f0, f0
/* 804F5FA0  FC 01 00 32 */	fmul f0, f1, f0
/* 804F5FA4  FC 03 00 28 */	fsub f0, f3, f0
/* 804F5FA8  FC 02 00 32 */	fmul f0, f2, f0
/* 804F5FAC  FC 44 00 32 */	fmul f2, f4, f0
/* 804F5FB0  FC 00 00 32 */	fmul f0, f0, f0
/* 804F5FB4  FC 01 00 32 */	fmul f0, f1, f0
/* 804F5FB8  FC 03 00 28 */	fsub f0, f3, f0
/* 804F5FBC  FC 02 00 32 */	fmul f0, f2, f0
/* 804F5FC0  FC 21 00 32 */	fmul f1, f1, f0
/* 804F5FC4  FC 20 08 18 */	frsp f1, f1
/* 804F5FC8  48 00 00 88 */	b lbl_804F6050
lbl_804F5FCC:
/* 804F5FCC  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 804F5FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F5FD4  40 80 00 10 */	bge lbl_804F5FE4
/* 804F5FD8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804F5FDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804F5FE0  48 00 00 70 */	b lbl_804F6050
lbl_804F5FE4:
/* 804F5FE4  D0 21 00 08 */	stfs f1, 8(r1)
/* 804F5FE8  80 81 00 08 */	lwz r4, 8(r1)
/* 804F5FEC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804F5FF0  3C 00 7F 80 */	lis r0, 0x7f80
/* 804F5FF4  7C 03 00 00 */	cmpw r3, r0
/* 804F5FF8  41 82 00 14 */	beq lbl_804F600C
/* 804F5FFC  40 80 00 40 */	bge lbl_804F603C
/* 804F6000  2C 03 00 00 */	cmpwi r3, 0
/* 804F6004  41 82 00 20 */	beq lbl_804F6024
/* 804F6008  48 00 00 34 */	b lbl_804F603C
lbl_804F600C:
/* 804F600C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804F6010  41 82 00 0C */	beq lbl_804F601C
/* 804F6014  38 00 00 01 */	li r0, 1
/* 804F6018  48 00 00 28 */	b lbl_804F6040
lbl_804F601C:
/* 804F601C  38 00 00 02 */	li r0, 2
/* 804F6020  48 00 00 20 */	b lbl_804F6040
lbl_804F6024:
/* 804F6024  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804F6028  41 82 00 0C */	beq lbl_804F6034
/* 804F602C  38 00 00 05 */	li r0, 5
/* 804F6030  48 00 00 10 */	b lbl_804F6040
lbl_804F6034:
/* 804F6034  38 00 00 03 */	li r0, 3
/* 804F6038  48 00 00 08 */	b lbl_804F6040
lbl_804F603C:
/* 804F603C  38 00 00 04 */	li r0, 4
lbl_804F6040:
/* 804F6040  2C 00 00 01 */	cmpwi r0, 1
/* 804F6044  40 82 00 0C */	bne lbl_804F6050
/* 804F6048  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804F604C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804F6050:
/* 804F6050  D0 3A 61 74 */	stfs f1, 0x6174(r26)
/* 804F6054  80 1A 61 70 */	lwz r0, 0x6170(r26)
/* 804F6058  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804F605C  3B 03 00 74 */	addi r24, r3, 0x74
/* 804F6060  7F 1A C2 14 */	add r24, r26, r24
/* 804F6064  7C 17 03 78 */	mr r23, r0
/* 804F6068  CB FE 00 A0 */	lfd f31, 0xa0(r30)
/* 804F606C  3F 20 43 30 */	lis r25, 0x4330
/* 804F6070  48 00 00 60 */	b lbl_804F60D0
lbl_804F6074:
/* 804F6074  38 61 00 30 */	addi r3, r1, 0x30
/* 804F6078  38 81 00 54 */	addi r4, r1, 0x54
/* 804F607C  80 1A 61 70 */	lwz r0, 0x6170(r26)
/* 804F6080  7C 00 B8 50 */	subf r0, r0, r23
/* 804F6084  7C 00 28 50 */	subf r0, r0, r5
/* 804F6088  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804F608C  90 01 00 64 */	stw r0, 0x64(r1)
/* 804F6090  93 21 00 60 */	stw r25, 0x60(r1)
/* 804F6094  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 804F6098  EC 20 F8 28 */	fsubs f1, f0, f31
/* 804F609C  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 804F60A0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 804F60A4  93 21 00 68 */	stw r25, 0x68(r1)
/* 804F60A8  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 804F60AC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804F60B0  EC 21 00 24 */	fdivs f1, f1, f0
/* 804F60B4  4B D7 0A D1 */	bl __ml__4cXyzCFf
/* 804F60B8  7F 03 C3 78 */	mr r3, r24
/* 804F60BC  38 81 00 30 */	addi r4, r1, 0x30
/* 804F60C0  7F 05 C3 78 */	mr r5, r24
/* 804F60C4  4B E5 0F CD */	bl PSVECAdd
/* 804F60C8  3A F7 00 01 */	addi r23, r23, 1
/* 804F60CC  3B 18 00 0C */	addi r24, r24, 0xc
lbl_804F60D0:
/* 804F60D0  80 BA 61 D0 */	lwz r5, 0x61d0(r26)
/* 804F60D4  7C 17 28 00 */	cmpw r23, r5
/* 804F60D8  41 80 FF 9C */	blt lbl_804F6074
/* 804F60DC  88 1A 61 7C */	lbz r0, 0x617c(r26)
/* 804F60E0  7C 00 07 75 */	extsb. r0, r0
/* 804F60E4  41 82 01 34 */	beq lbl_804F6218
/* 804F60E8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 804F60EC  D0 1A 61 80 */	stfs f0, 0x6180(r26)
/* 804F60F0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 804F60F4  D0 1A 61 84 */	stfs f0, 0x6184(r26)
/* 804F60F8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 804F60FC  D0 1A 61 88 */	stfs f0, 0x6188(r26)
/* 804F6100  80 BA 61 D0 */	lwz r5, 0x61d0(r26)
/* 804F6104  38 61 00 24 */	addi r3, r1, 0x24
/* 804F6108  38 05 FF FE */	addi r0, r5, -2
/* 804F610C  1C 80 00 0C */	mulli r4, r0, 0xc
/* 804F6110  38 84 00 74 */	addi r4, r4, 0x74
/* 804F6114  7C 9A 22 14 */	add r4, r26, r4
/* 804F6118  38 05 FF FF */	addi r0, r5, -1
/* 804F611C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 804F6120  38 A5 00 74 */	addi r5, r5, 0x74
/* 804F6124  7C BA 2A 14 */	add r5, r26, r5
/* 804F6128  4B D7 0A 0D */	bl __mi__4cXyzCFRC3Vec
/* 804F612C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 804F6130  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 804F6134  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804F6138  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804F613C  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 804F6140  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 804F6144  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 804F6148  80 04 05 70 */	lwz r0, 0x570(r4)
/* 804F614C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804F6150  41 82 00 70 */	beq lbl_804F61C0
/* 804F6154  C0 7A 61 74 */	lfs f3, 0x6174(r26)
/* 804F6158  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804F615C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804F6160  40 81 01 90 */	ble lbl_804F62F0
/* 804F6164  4B D7 15 11 */	bl cM_atan2s__Fff
/* 804F6168  7C 64 1B 78 */	mr r4, r3
/* 804F616C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804F6170  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804F6174  80 63 00 00 */	lwz r3, 0(r3)
/* 804F6178  4B B1 62 65 */	bl mDoMtx_YrotS__FPA4_fs
/* 804F617C  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F6180  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804F6184  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804F6188  C0 5E 01 64 */	lfs f2, 0x164(r30)
/* 804F618C  C0 3A 61 74 */	lfs f1, 0x6174(r26)
/* 804F6190  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804F6194  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F6198  EC 02 00 32 */	fmuls f0, f2, f0
/* 804F619C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804F61A0  38 61 00 54 */	addi r3, r1, 0x54
/* 804F61A4  38 81 00 48 */	addi r4, r1, 0x48
/* 804F61A8  4B D7 AD 45 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F61AC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804F61B0  38 81 00 48 */	addi r4, r1, 0x48
/* 804F61B4  7C 65 1B 78 */	mr r5, r3
/* 804F61B8  4B E5 0E FD */	bl PSVECSubtract
/* 804F61BC  48 00 01 34 */	b lbl_804F62F0
lbl_804F61C0:
/* 804F61C0  C0 7A 61 74 */	lfs f3, 0x6174(r26)
/* 804F61C4  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 804F61C8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804F61CC  40 81 01 24 */	ble lbl_804F62F0
/* 804F61D0  3C 7D 00 02 */	addis r3, r29, 2
/* 804F61D4  A8 03 AF F2 */	lha r0, -0x500e(r3)
/* 804F61D8  2C 00 00 00 */	cmpwi r0, 0
/* 804F61DC  40 82 01 14 */	bne lbl_804F62F0
/* 804F61E0  7C 97 23 78 */	mr r23, r4
/* 804F61E4  EF E3 00 28 */	fsubs f31, f3, f0
/* 804F61E8  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 804F61EC  EF FF 00 32 */	fmuls f31, f31, f0
/* 804F61F0  4B D7 14 85 */	bl cM_atan2s__Fff
/* 804F61F4  7C 64 1B 78 */	mr r4, r3
/* 804F61F8  7E E3 BB 78 */	mr r3, r23
/* 804F61FC  FC 20 F8 90 */	fmr f1, f31
/* 804F6200  38 A0 00 00 */	li r5, 0
/* 804F6204  81 97 06 28 */	lwz r12, 0x628(r23)
/* 804F6208  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 804F620C  7D 89 03 A6 */	mtctr r12
/* 804F6210  4E 80 04 21 */	bctrl 
/* 804F6214  48 00 00 DC */	b lbl_804F62F0
lbl_804F6218:
/* 804F6218  88 1A 61 7E */	lbz r0, 0x617e(r26)
/* 804F621C  7C 00 07 75 */	extsb. r0, r0
/* 804F6220  40 82 00 10 */	bne lbl_804F6230
/* 804F6224  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F6228  D0 1A 61 74 */	stfs f0, 0x6174(r26)
/* 804F622C  48 00 00 C4 */	b lbl_804F62F0
lbl_804F6230:
/* 804F6230  A8 1D 07 A2 */	lha r0, 0x7a2(r29)
/* 804F6234  2C 00 00 0B */	cmpwi r0, 0xb
/* 804F6238  41 82 00 B8 */	beq lbl_804F62F0
/* 804F623C  2C 00 00 07 */	cmpwi r0, 7
/* 804F6240  40 82 00 0C */	bne lbl_804F624C
/* 804F6244  C3 FE 00 E8 */	lfs f31, 0xe8(r30)
/* 804F6248  48 00 00 08 */	b lbl_804F6250
lbl_804F624C:
/* 804F624C  C3 FE 00 BC */	lfs f31, 0xbc(r30)
lbl_804F6250:
/* 804F6250  C0 1A 61 74 */	lfs f0, 0x6174(r26)
/* 804F6254  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804F6258  40 81 00 98 */	ble lbl_804F62F0
/* 804F625C  38 61 00 18 */	addi r3, r1, 0x18
/* 804F6260  38 05 FF FE */	addi r0, r5, -2
/* 804F6264  1C 80 00 0C */	mulli r4, r0, 0xc
/* 804F6268  38 84 00 74 */	addi r4, r4, 0x74
/* 804F626C  7C 9A 22 14 */	add r4, r26, r4
/* 804F6270  38 05 FF FF */	addi r0, r5, -1
/* 804F6274  1C A0 00 0C */	mulli r5, r0, 0xc
/* 804F6278  38 A5 00 74 */	addi r5, r5, 0x74
/* 804F627C  7C BA 2A 14 */	add r5, r26, r5
/* 804F6280  4B D7 08 B5 */	bl __mi__4cXyzCFRC3Vec
/* 804F6284  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804F6288  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 804F628C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804F6290  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804F6294  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 804F6298  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 804F629C  4B D7 13 D9 */	bl cM_atan2s__Fff
/* 804F62A0  7C 64 1B 78 */	mr r4, r3
/* 804F62A4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804F62A8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804F62AC  80 63 00 00 */	lwz r3, 0(r3)
/* 804F62B0  4B B1 61 2D */	bl mDoMtx_YrotS__FPA4_fs
/* 804F62B4  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F62B8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804F62BC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804F62C0  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 804F62C4  C0 1A 61 74 */	lfs f0, 0x6174(r26)
/* 804F62C8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804F62CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804F62D0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804F62D4  38 61 00 54 */	addi r3, r1, 0x54
/* 804F62D8  38 81 00 48 */	addi r4, r1, 0x48
/* 804F62DC  4B D7 AC 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F62E0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804F62E4  38 81 00 48 */	addi r4, r1, 0x48
/* 804F62E8  7C 65 1B 78 */	mr r5, r3
/* 804F62EC  4B E5 0D C9 */	bl PSVECSubtract
lbl_804F62F0:
/* 804F62F0  2C 1B 00 02 */	cmpwi r27, 2
/* 804F62F4  41 80 01 94 */	blt lbl_804F6488
/* 804F62F8  A8 1D 07 A2 */	lha r0, 0x7a2(r29)
/* 804F62FC  2C 00 00 0C */	cmpwi r0, 0xc
/* 804F6300  41 82 01 88 */	beq lbl_804F6488
/* 804F6304  88 7A 61 7D */	lbz r3, 0x617d(r26)
/* 804F6308  7C 60 07 75 */	extsb. r0, r3
/* 804F630C  41 82 00 0C */	beq lbl_804F6318
/* 804F6310  38 03 FF FF */	addi r0, r3, -1
/* 804F6314  98 1A 61 7D */	stb r0, 0x617d(r26)
lbl_804F6318:
/* 804F6318  88 7A 61 7C */	lbz r3, 0x617c(r26)
/* 804F631C  7C 60 07 75 */	extsb. r0, r3
/* 804F6320  41 82 00 10 */	beq lbl_804F6330
/* 804F6324  88 1A 61 7E */	lbz r0, 0x617e(r26)
/* 804F6328  7C 00 07 75 */	extsb. r0, r0
/* 804F632C  41 82 00 F8 */	beq lbl_804F6424
lbl_804F6330:
/* 804F6330  80 9A 61 D0 */	lwz r4, 0x61d0(r26)
/* 804F6334  1C 04 00 0C */	mulli r0, r4, 0xc
/* 804F6338  7C 7A 02 14 */	add r3, r26, r0
/* 804F633C  C0 23 00 6C */	lfs f1, 0x6c(r3)
/* 804F6340  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F6344  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F6348  40 80 00 18 */	bge lbl_804F6360
/* 804F634C  38 04 FF FF */	addi r0, r4, -1
/* 804F6350  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804F6354  38 63 00 74 */	addi r3, r3, 0x74
/* 804F6358  7C 7A 1A 14 */	add r3, r26, r3
/* 804F635C  4B C6 91 95 */	bl setLookPos__9daPy_py_cFP4cXyz
lbl_804F6360:
/* 804F6360  88 1A 61 7D */	lbz r0, 0x617d(r26)
/* 804F6364  7C 00 07 75 */	extsb. r0, r0
/* 804F6368  40 82 01 20 */	bne lbl_804F6488
/* 804F636C  7F A3 EB 78 */	mr r3, r29
/* 804F6370  80 9A 61 D0 */	lwz r4, 0x61d0(r26)
/* 804F6374  38 04 FF FF */	addi r0, r4, -1
/* 804F6378  1C 80 00 0C */	mulli r4, r0, 0xc
/* 804F637C  38 84 00 74 */	addi r4, r4, 0x74
/* 804F6380  7C 9A 22 14 */	add r4, r26, r4
/* 804F6384  7F 65 DB 78 */	mr r5, r27
/* 804F6388  4B C6 90 F1 */	bl setFmChainPos__9daPy_py_cFP10fopAc_ac_cP4cXyzi
/* 804F638C  2C 03 00 00 */	cmpwi r3, 0
/* 804F6390  41 82 00 F8 */	beq lbl_804F6488
/* 804F6394  38 00 00 01 */	li r0, 1
/* 804F6398  98 1A 61 7C */	stb r0, 0x617c(r26)
/* 804F639C  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020013@ha */
/* 804F63A0  38 63 00 13 */	addi r3, r3, 0x0013 /* 0x00020013@l */
/* 804F63A4  4B C6 91 7D */	bl setPlayerSe__9daPy_py_cFUl
/* 804F63A8  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 804F63AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804F63B0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804F63B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804F63B8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804F63BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F63C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F63C4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F63C8  38 80 00 03 */	li r4, 3
/* 804F63CC  38 A0 00 01 */	li r5, 1
/* 804F63D0  38 C1 00 0C */	addi r6, r1, 0xc
/* 804F63D4  4B B7 96 51 */	bl StartShock__12dVibration_cFii4cXyz
/* 804F63D8  88 1A 61 7E */	lbz r0, 0x617e(r26)
/* 804F63DC  7C 00 07 75 */	extsb. r0, r0
/* 804F63E0  41 82 00 1C */	beq lbl_804F63FC
/* 804F63E4  A8 1D 07 A2 */	lha r0, 0x7a2(r29)
/* 804F63E8  2C 00 00 07 */	cmpwi r0, 7
/* 804F63EC  40 82 00 10 */	bne lbl_804F63FC
/* 804F63F0  38 00 00 00 */	li r0, 0
/* 804F63F4  B0 1D 07 A2 */	sth r0, 0x7a2(r29)
/* 804F63F8  B0 1D 07 A4 */	sth r0, 0x7a4(r29)
lbl_804F63FC:
/* 804F63FC  38 00 00 00 */	li r0, 0
/* 804F6400  98 1A 61 7E */	stb r0, 0x617e(r26)
/* 804F6404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F6408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F640C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804F6410  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 804F6414  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 804F6418  A0 84 05 3A */	lhz r4, 0x53a(r4)
/* 804F641C  4B B3 E5 71 */	bl onEventBit__11dSv_event_cFUs
/* 804F6420  48 00 00 68 */	b lbl_804F6488
lbl_804F6424:
/* 804F6424  88 1A 61 7D */	lbz r0, 0x617d(r26)
/* 804F6428  7C 00 07 75 */	extsb. r0, r0
/* 804F642C  40 82 00 3C */	bne lbl_804F6468
/* 804F6430  7C 60 07 75 */	extsb. r0, r3
/* 804F6434  41 82 00 34 */	beq lbl_804F6468
/* 804F6438  7F A3 EB 78 */	mr r3, r29
/* 804F643C  80 9A 61 D0 */	lwz r4, 0x61d0(r26)
/* 804F6440  38 04 FF FF */	addi r0, r4, -1
/* 804F6444  1C 80 00 0C */	mulli r4, r0, 0xc
/* 804F6448  38 84 00 74 */	addi r4, r4, 0x74
/* 804F644C  7C 9A 22 14 */	add r4, r26, r4
/* 804F6450  7F 65 DB 78 */	mr r5, r27
/* 804F6454  4B C6 90 25 */	bl setFmChainPos__9daPy_py_cFP10fopAc_ac_cP4cXyzi
/* 804F6458  2C 03 00 00 */	cmpwi r3, 0
/* 804F645C  40 82 00 0C */	bne lbl_804F6468
/* 804F6460  38 00 00 01 */	li r0, 1
/* 804F6464  98 1A 61 7D */	stb r0, 0x617d(r26)
lbl_804F6468:
/* 804F6468  88 1A 61 7D */	lbz r0, 0x617d(r26)
/* 804F646C  2C 00 00 01 */	cmpwi r0, 1
/* 804F6470  40 82 00 18 */	bne lbl_804F6488
/* 804F6474  38 00 00 00 */	li r0, 0
/* 804F6478  98 1A 61 7C */	stb r0, 0x617c(r26)
/* 804F647C  90 1A 61 70 */	stw r0, 0x6170(r26)
/* 804F6480  38 00 00 04 */	li r0, 4
/* 804F6484  98 1A 61 9C */	stb r0, 0x619c(r26)
lbl_804F6488:
/* 804F6488  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 804F648C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 804F6490  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804F6494  4B E6 BD 7D */	bl _restgpr_23
/* 804F6498  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 804F649C  7C 08 03 A6 */	mtlr r0
/* 804F64A0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 804F64A4  4E 80 00 20 */	blr 
