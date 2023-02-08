lbl_807D6058:
/* 807D6058  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 807D605C  7C 08 02 A6 */	mflr r0
/* 807D6060  90 01 01 04 */	stw r0, 0x104(r1)
/* 807D6064  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 807D6068  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 807D606C  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 807D6070  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 807D6074  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 807D6078  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 807D607C  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 807D6080  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 807D6084  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 807D6088  F3 61 00 B8 */	psq_st f27, 184(r1), 0, 0 /* qr0 */
/* 807D608C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807D6090  4B B8 C1 39 */	bl _savegpr_24
/* 807D6094  7C 7C 1B 78 */	mr r28, r3
/* 807D6098  3C 80 80 7E */	lis r4, lit_1109@ha /* 0x807E3578@ha */
/* 807D609C  3B A4 35 78 */	addi r29, r4, lit_1109@l /* 0x807E3578@l */
/* 807D60A0  3C 80 80 7E */	lis r4, lit_3882@ha /* 0x807E298C@ha */
/* 807D60A4  3B C4 29 8C */	addi r30, r4, lit_3882@l /* 0x807E298C@l */
/* 807D60A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D60AC  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D60B0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807D60B4  4B 84 48 B1 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D60B8  FF A0 08 90 */	fmr f29, f1
/* 807D60BC  C3 7E 00 48 */	lfs f27, 0x48(r30)
/* 807D60C0  C3 FE 00 60 */	lfs f31, 0x60(r30)
/* 807D60C4  A0 1C 06 BE */	lhz r0, 0x6be(r28)
/* 807D60C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D60CC  40 82 00 18 */	bne lbl_807D60E4
/* 807D60D0  38 00 00 07 */	li r0, 7
/* 807D60D4  B0 1C 06 90 */	sth r0, 0x690(r28)
/* 807D60D8  38 00 00 00 */	li r0, 0
/* 807D60DC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807D60E0  48 00 0B 0C */	b lbl_807D6BEC
lbl_807D60E4:
/* 807D60E4  3B 60 00 00 */	li r27, 0
/* 807D60E8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807D60EC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807D60F0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807D60F4  7D 89 03 A6 */	mtctr r12
/* 807D60F8  4E 80 04 21 */	bctrl 
/* 807D60FC  28 03 00 00 */	cmplwi r3, 0
/* 807D6100  41 82 00 28 */	beq lbl_807D6128
/* 807D6104  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D6108  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D610C  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 807D6110  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 807D6114  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807D6118  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D611C  4C 41 13 82 */	cror 2, 1, 2
/* 807D6120  40 82 00 08 */	bne lbl_807D6128
/* 807D6124  3B 60 00 01 */	li r27, 1
lbl_807D6128:
/* 807D6128  AB 5C 04 DE */	lha r26, 0x4de(r28)
/* 807D612C  C3 DE 00 60 */	lfs f30, 0x60(r30)
/* 807D6130  3B 20 00 00 */	li r25, 0
/* 807D6134  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 807D6138  28 00 00 0A */	cmplwi r0, 0xa
/* 807D613C  41 81 08 90 */	bgt lbl_807D69CC
/* 807D6140  3C 60 80 7E */	lis r3, lit_6252@ha /* 0x807E2FB0@ha */
/* 807D6144  38 63 2F B0 */	addi r3, r3, lit_6252@l /* 0x807E2FB0@l */
/* 807D6148  54 00 10 3A */	slwi r0, r0, 2
/* 807D614C  7C 03 00 2E */	lwzx r0, r3, r0
/* 807D6150  7C 09 03 A6 */	mtctr r0
/* 807D6154  4E 80 04 20 */	bctr 
lbl_807D6158:
/* 807D6158  A0 1C 06 BE */	lhz r0, 0x6be(r28)
/* 807D615C  60 00 00 08 */	ori r0, r0, 8
/* 807D6160  B0 1C 06 BE */	sth r0, 0x6be(r28)
lbl_807D6164:
/* 807D6164  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807D6168  D0 1C 16 84 */	stfs f0, 0x1684(r28)
/* 807D616C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D6170  D0 5C 05 E4 */	stfs f2, 0x5e4(r28)
/* 807D6174  7F 83 E3 78 */	mr r3, r28
/* 807D6178  38 80 00 20 */	li r4, 0x20
/* 807D617C  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 807D6180  38 A0 00 02 */	li r5, 2
/* 807D6184  4B FF C3 C5 */	bl anm_init__FP10e_wb_classifUcf
/* 807D6188  38 00 00 02 */	li r0, 2
/* 807D618C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807D6190  A0 1C 06 BE */	lhz r0, 0x6be(r28)
/* 807D6194  60 00 00 10 */	ori r0, r0, 0x10
/* 807D6198  B0 1C 06 BE */	sth r0, 0x6be(r28)
/* 807D619C  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003002A@ha */
/* 807D61A0  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0003002A@l */
/* 807D61A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D61A8  38 7C 05 EC */	addi r3, r28, 0x5ec
/* 807D61AC  38 81 00 14 */	addi r4, r1, 0x14
/* 807D61B0  38 A0 00 00 */	li r5, 0
/* 807D61B4  38 C0 FF FF */	li r6, -1
/* 807D61B8  81 9C 05 EC */	lwz r12, 0x5ec(r28)
/* 807D61BC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807D61C0  7D 89 03 A6 */	mtctr r12
/* 807D61C4  4E 80 04 21 */	bctrl 
/* 807D61C8  88 1C 06 8C */	lbz r0, 0x68c(r28)
/* 807D61CC  7C 00 07 75 */	extsb. r0, r0
/* 807D61D0  41 82 02 6C */	beq lbl_807D643C
/* 807D61D4  3B 60 00 00 */	li r27, 0
/* 807D61D8  3B E0 00 01 */	li r31, 1
/* 807D61DC  3B 00 00 0C */	li r24, 0xc
/* 807D61E0  C3 BE 00 48 */	lfs f29, 0x48(r30)
lbl_807D61E4:
/* 807D61E4  38 61 00 48 */	addi r3, r1, 0x48
/* 807D61E8  1C 1B 00 0C */	mulli r0, r27, 0xc
/* 807D61EC  38 9D 00 B8 */	addi r4, r29, 0xb8
/* 807D61F0  7C 84 02 14 */	add r4, r4, r0
/* 807D61F4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 807D61F8  4B A9 09 3D */	bl __mi__4cXyzCFRC3Vec
/* 807D61FC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807D6200  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807D6204  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807D6208  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807D620C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807D6210  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807D6214  38 61 00 3C */	addi r3, r1, 0x3c
/* 807D6218  38 9D 00 B8 */	addi r4, r29, 0xb8
/* 807D621C  7C 84 C2 14 */	add r4, r4, r24
/* 807D6220  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 807D6224  4B A9 09 11 */	bl __mi__4cXyzCFRC3Vec
/* 807D6228  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807D622C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807D6230  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807D6234  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807D6238  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807D623C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807D6240  38 61 00 60 */	addi r3, r1, 0x60
/* 807D6244  4B B7 0E F5 */	bl PSVECSquareMag
/* 807D6248  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 807D624C  40 81 00 58 */	ble lbl_807D62A4
/* 807D6250  FC 00 08 34 */	frsqrte f0, f1
/* 807D6254  C8 9E 00 90 */	lfd f4, 0x90(r30)
/* 807D6258  FC 44 00 32 */	fmul f2, f4, f0
/* 807D625C  C8 7E 00 98 */	lfd f3, 0x98(r30)
/* 807D6260  FC 00 00 32 */	fmul f0, f0, f0
/* 807D6264  FC 01 00 32 */	fmul f0, f1, f0
/* 807D6268  FC 03 00 28 */	fsub f0, f3, f0
/* 807D626C  FC 02 00 32 */	fmul f0, f2, f0
/* 807D6270  FC 44 00 32 */	fmul f2, f4, f0
/* 807D6274  FC 00 00 32 */	fmul f0, f0, f0
/* 807D6278  FC 01 00 32 */	fmul f0, f1, f0
/* 807D627C  FC 03 00 28 */	fsub f0, f3, f0
/* 807D6280  FC 02 00 32 */	fmul f0, f2, f0
/* 807D6284  FC 44 00 32 */	fmul f2, f4, f0
/* 807D6288  FC 00 00 32 */	fmul f0, f0, f0
/* 807D628C  FC 01 00 32 */	fmul f0, f1, f0
/* 807D6290  FC 03 00 28 */	fsub f0, f3, f0
/* 807D6294  FC 02 00 32 */	fmul f0, f2, f0
/* 807D6298  FF 81 00 32 */	fmul f28, f1, f0
/* 807D629C  FF 80 E0 18 */	frsp f28, f28
/* 807D62A0  48 00 00 90 */	b lbl_807D6330
lbl_807D62A4:
/* 807D62A4  C8 1E 00 A0 */	lfd f0, 0xa0(r30)
/* 807D62A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D62AC  40 80 00 10 */	bge lbl_807D62BC
/* 807D62B0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D62B4  C3 83 0A E0 */	lfs f28, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807D62B8  48 00 00 78 */	b lbl_807D6330
lbl_807D62BC:
/* 807D62BC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807D62C0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 807D62C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807D62C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 807D62CC  7C 03 00 00 */	cmpw r3, r0
/* 807D62D0  41 82 00 14 */	beq lbl_807D62E4
/* 807D62D4  40 80 00 40 */	bge lbl_807D6314
/* 807D62D8  2C 03 00 00 */	cmpwi r3, 0
/* 807D62DC  41 82 00 20 */	beq lbl_807D62FC
/* 807D62E0  48 00 00 34 */	b lbl_807D6314
lbl_807D62E4:
/* 807D62E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D62E8  41 82 00 0C */	beq lbl_807D62F4
/* 807D62EC  38 00 00 01 */	li r0, 1
/* 807D62F0  48 00 00 28 */	b lbl_807D6318
lbl_807D62F4:
/* 807D62F4  38 00 00 02 */	li r0, 2
/* 807D62F8  48 00 00 20 */	b lbl_807D6318
lbl_807D62FC:
/* 807D62FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D6300  41 82 00 0C */	beq lbl_807D630C
/* 807D6304  38 00 00 05 */	li r0, 5
/* 807D6308  48 00 00 10 */	b lbl_807D6318
lbl_807D630C:
/* 807D630C  38 00 00 03 */	li r0, 3
/* 807D6310  48 00 00 08 */	b lbl_807D6318
lbl_807D6314:
/* 807D6314  38 00 00 04 */	li r0, 4
lbl_807D6318:
/* 807D6318  2C 00 00 01 */	cmpwi r0, 1
/* 807D631C  40 82 00 10 */	bne lbl_807D632C
/* 807D6320  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D6324  C3 83 0A E0 */	lfs f28, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807D6328  48 00 00 08 */	b lbl_807D6330
lbl_807D632C:
/* 807D632C  FF 80 08 90 */	fmr f28, f1
lbl_807D6330:
/* 807D6330  38 61 00 54 */	addi r3, r1, 0x54
/* 807D6334  4B B7 0E 05 */	bl PSVECSquareMag
/* 807D6338  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 807D633C  40 81 00 58 */	ble lbl_807D6394
/* 807D6340  FC 00 08 34 */	frsqrte f0, f1
/* 807D6344  C8 9E 00 90 */	lfd f4, 0x90(r30)
/* 807D6348  FC 44 00 32 */	fmul f2, f4, f0
/* 807D634C  C8 7E 00 98 */	lfd f3, 0x98(r30)
/* 807D6350  FC 00 00 32 */	fmul f0, f0, f0
/* 807D6354  FC 01 00 32 */	fmul f0, f1, f0
/* 807D6358  FC 03 00 28 */	fsub f0, f3, f0
/* 807D635C  FC 02 00 32 */	fmul f0, f2, f0
/* 807D6360  FC 44 00 32 */	fmul f2, f4, f0
/* 807D6364  FC 00 00 32 */	fmul f0, f0, f0
/* 807D6368  FC 01 00 32 */	fmul f0, f1, f0
/* 807D636C  FC 03 00 28 */	fsub f0, f3, f0
/* 807D6370  FC 02 00 32 */	fmul f0, f2, f0
/* 807D6374  FC 44 00 32 */	fmul f2, f4, f0
/* 807D6378  FC 00 00 32 */	fmul f0, f0, f0
/* 807D637C  FC 01 00 32 */	fmul f0, f1, f0
/* 807D6380  FC 03 00 28 */	fsub f0, f3, f0
/* 807D6384  FC 02 00 32 */	fmul f0, f2, f0
/* 807D6388  FC 21 00 32 */	fmul f1, f1, f0
/* 807D638C  FC 20 08 18 */	frsp f1, f1
/* 807D6390  48 00 00 88 */	b lbl_807D6418
lbl_807D6394:
/* 807D6394  C8 1E 00 A0 */	lfd f0, 0xa0(r30)
/* 807D6398  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D639C  40 80 00 10 */	bge lbl_807D63AC
/* 807D63A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D63A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807D63A8  48 00 00 70 */	b lbl_807D6418
lbl_807D63AC:
/* 807D63AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807D63B0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807D63B4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807D63B8  3C 00 7F 80 */	lis r0, 0x7f80
/* 807D63BC  7C 03 00 00 */	cmpw r3, r0
/* 807D63C0  41 82 00 14 */	beq lbl_807D63D4
/* 807D63C4  40 80 00 40 */	bge lbl_807D6404
/* 807D63C8  2C 03 00 00 */	cmpwi r3, 0
/* 807D63CC  41 82 00 20 */	beq lbl_807D63EC
/* 807D63D0  48 00 00 34 */	b lbl_807D6404
lbl_807D63D4:
/* 807D63D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D63D8  41 82 00 0C */	beq lbl_807D63E4
/* 807D63DC  38 00 00 01 */	li r0, 1
/* 807D63E0  48 00 00 28 */	b lbl_807D6408
lbl_807D63E4:
/* 807D63E4  38 00 00 02 */	li r0, 2
/* 807D63E8  48 00 00 20 */	b lbl_807D6408
lbl_807D63EC:
/* 807D63EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D63F0  41 82 00 0C */	beq lbl_807D63FC
/* 807D63F4  38 00 00 05 */	li r0, 5
/* 807D63F8  48 00 00 10 */	b lbl_807D6408
lbl_807D63FC:
/* 807D63FC  38 00 00 03 */	li r0, 3
/* 807D6400  48 00 00 08 */	b lbl_807D6408
lbl_807D6404:
/* 807D6404  38 00 00 04 */	li r0, 4
lbl_807D6408:
/* 807D6408  2C 00 00 01 */	cmpwi r0, 1
/* 807D640C  40 82 00 0C */	bne lbl_807D6418
/* 807D6410  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D6414  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807D6418:
/* 807D6418  FC 1C 08 40 */	fcmpo cr0, f28, f1
/* 807D641C  40 81 00 08 */	ble lbl_807D6424
/* 807D6420  7F FB FB 78 */	mr r27, r31
lbl_807D6424:
/* 807D6424  3B FF 00 01 */	addi r31, r31, 1
/* 807D6428  2C 1F 00 08 */	cmpwi r31, 8
/* 807D642C  3B 18 00 0C */	addi r24, r24, 0xc
/* 807D6430  41 80 FD B4 */	blt lbl_807D61E4
/* 807D6434  93 7C 06 C8 */	stw r27, 0x6c8(r28)
/* 807D6438  48 00 05 94 */	b lbl_807D69CC
lbl_807D643C:
/* 807D643C  88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 807D6440  2C 00 00 01 */	cmpwi r0, 1
/* 807D6444  40 82 00 10 */	bne lbl_807D6454
/* 807D6448  38 00 00 06 */	li r0, 6
/* 807D644C  90 1C 06 C8 */	stw r0, 0x6c8(r28)
/* 807D6450  48 00 00 0C */	b lbl_807D645C
lbl_807D6454:
/* 807D6454  38 00 00 02 */	li r0, 2
/* 807D6458  90 1C 06 C8 */	stw r0, 0x6c8(r28)
lbl_807D645C:
/* 807D645C  38 00 00 01 */	li r0, 1
/* 807D6460  90 1C 06 CC */	stw r0, 0x6cc(r28)
/* 807D6464  98 1C 06 8C */	stb r0, 0x68c(r28)
/* 807D6468  48 00 05 64 */	b lbl_807D69CC
lbl_807D646C:
/* 807D646C  38 00 00 01 */	li r0, 1
/* 807D6470  98 1C 06 BD */	stb r0, 0x6bd(r28)
/* 807D6474  38 61 00 30 */	addi r3, r1, 0x30
/* 807D6478  80 1C 06 C8 */	lwz r0, 0x6c8(r28)
/* 807D647C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807D6480  38 9D 00 B8 */	addi r4, r29, 0xb8
/* 807D6484  7C 84 02 14 */	add r4, r4, r0
/* 807D6488  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 807D648C  4B A9 06 A9 */	bl __mi__4cXyzCFRC3Vec
/* 807D6490  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807D6494  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807D6498  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807D649C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807D64A0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807D64A4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807D64A8  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D64AC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807D64B0  38 61 00 78 */	addi r3, r1, 0x78
/* 807D64B4  4B B7 0C 85 */	bl PSVECSquareMag
/* 807D64B8  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D64BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D64C0  40 81 00 58 */	ble lbl_807D6518
/* 807D64C4  FC 00 08 34 */	frsqrte f0, f1
/* 807D64C8  C8 9E 00 90 */	lfd f4, 0x90(r30)
/* 807D64CC  FC 44 00 32 */	fmul f2, f4, f0
/* 807D64D0  C8 7E 00 98 */	lfd f3, 0x98(r30)
/* 807D64D4  FC 00 00 32 */	fmul f0, f0, f0
/* 807D64D8  FC 01 00 32 */	fmul f0, f1, f0
/* 807D64DC  FC 03 00 28 */	fsub f0, f3, f0
/* 807D64E0  FC 02 00 32 */	fmul f0, f2, f0
/* 807D64E4  FC 44 00 32 */	fmul f2, f4, f0
/* 807D64E8  FC 00 00 32 */	fmul f0, f0, f0
/* 807D64EC  FC 01 00 32 */	fmul f0, f1, f0
/* 807D64F0  FC 03 00 28 */	fsub f0, f3, f0
/* 807D64F4  FC 02 00 32 */	fmul f0, f2, f0
/* 807D64F8  FC 44 00 32 */	fmul f2, f4, f0
/* 807D64FC  FC 00 00 32 */	fmul f0, f0, f0
/* 807D6500  FC 01 00 32 */	fmul f0, f1, f0
/* 807D6504  FC 03 00 28 */	fsub f0, f3, f0
/* 807D6508  FC 02 00 32 */	fmul f0, f2, f0
/* 807D650C  FC 21 00 32 */	fmul f1, f1, f0
/* 807D6510  FC 20 08 18 */	frsp f1, f1
/* 807D6514  48 00 00 88 */	b lbl_807D659C
lbl_807D6518:
/* 807D6518  C8 1E 00 A0 */	lfd f0, 0xa0(r30)
/* 807D651C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D6520  40 80 00 10 */	bge lbl_807D6530
/* 807D6524  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D6528  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807D652C  48 00 00 70 */	b lbl_807D659C
lbl_807D6530:
/* 807D6530  D0 21 00 08 */	stfs f1, 8(r1)
/* 807D6534  80 81 00 08 */	lwz r4, 8(r1)
/* 807D6538  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807D653C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807D6540  7C 03 00 00 */	cmpw r3, r0
/* 807D6544  41 82 00 14 */	beq lbl_807D6558
/* 807D6548  40 80 00 40 */	bge lbl_807D6588
/* 807D654C  2C 03 00 00 */	cmpwi r3, 0
/* 807D6550  41 82 00 20 */	beq lbl_807D6570
/* 807D6554  48 00 00 34 */	b lbl_807D6588
lbl_807D6558:
/* 807D6558  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D655C  41 82 00 0C */	beq lbl_807D6568
/* 807D6560  38 00 00 01 */	li r0, 1
/* 807D6564  48 00 00 28 */	b lbl_807D658C
lbl_807D6568:
/* 807D6568  38 00 00 02 */	li r0, 2
/* 807D656C  48 00 00 20 */	b lbl_807D658C
lbl_807D6570:
/* 807D6570  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D6574  41 82 00 0C */	beq lbl_807D6580
/* 807D6578  38 00 00 05 */	li r0, 5
/* 807D657C  48 00 00 10 */	b lbl_807D658C
lbl_807D6580:
/* 807D6580  38 00 00 03 */	li r0, 3
/* 807D6584  48 00 00 08 */	b lbl_807D658C
lbl_807D6588:
/* 807D6588  38 00 00 04 */	li r0, 4
lbl_807D658C:
/* 807D658C  2C 00 00 01 */	cmpwi r0, 1
/* 807D6590  40 82 00 0C */	bne lbl_807D659C
/* 807D6594  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D6598  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807D659C:
/* 807D659C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 807D65A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D65A4  40 80 00 E4 */	bge lbl_807D6688
/* 807D65A8  88 1C 07 9E */	lbz r0, 0x79e(r28)
/* 807D65AC  7C 00 07 74 */	extsb r0, r0
/* 807D65B0  2C 00 00 04 */	cmpwi r0, 4
/* 807D65B4  41 80 00 38 */	blt lbl_807D65EC
/* 807D65B8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807D65BC  4B A9 13 99 */	bl cM_rndF__Ff
/* 807D65C0  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 807D65C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D65C8  40 80 00 24 */	bge lbl_807D65EC
/* 807D65CC  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 807D65D0  4B A9 13 85 */	bl cM_rndF__Ff
/* 807D65D4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807D65D8  EC 00 08 2A */	fadds f0, f0, f1
/* 807D65DC  FC 00 00 1E */	fctiwz f0, f0
/* 807D65E0  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 807D65E4  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 807D65E8  90 1C 06 CC */	stw r0, 0x6cc(r28)
lbl_807D65EC:
/* 807D65EC  38 61 00 24 */	addi r3, r1, 0x24
/* 807D65F0  80 9C 06 C8 */	lwz r4, 0x6c8(r28)
/* 807D65F4  38 04 00 01 */	addi r0, r4, 1
/* 807D65F8  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 807D65FC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807D6600  38 9D 00 B8 */	addi r4, r29, 0xb8
/* 807D6604  7C 84 02 14 */	add r4, r4, r0
/* 807D6608  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 807D660C  4B A9 05 29 */	bl __mi__4cXyzCFRC3Vec
/* 807D6610  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 807D6614  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 807D6618  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807D661C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807D6620  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 807D6624  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 807D6628  4B A9 10 4D */	bl cM_atan2s__Fff
/* 807D662C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 807D6630  7C 03 00 50 */	subf r0, r3, r0
/* 807D6634  7C 00 07 34 */	extsh r0, r0
/* 807D6638  2C 00 40 00 */	cmpwi r0, 0x4000
/* 807D663C  40 80 00 18 */	bge lbl_807D6654
/* 807D6640  2C 00 C0 00 */	cmpwi r0, -16384
/* 807D6644  40 81 00 10 */	ble lbl_807D6654
/* 807D6648  38 00 00 01 */	li r0, 1
/* 807D664C  90 1C 06 CC */	stw r0, 0x6cc(r28)
/* 807D6650  48 00 00 0C */	b lbl_807D665C
lbl_807D6654:
/* 807D6654  38 00 FF FF */	li r0, -1
/* 807D6658  90 1C 06 CC */	stw r0, 0x6cc(r28)
lbl_807D665C:
/* 807D665C  80 7C 06 C8 */	lwz r3, 0x6c8(r28)
/* 807D6660  80 1C 06 CC */	lwz r0, 0x6cc(r28)
/* 807D6664  7C 03 02 14 */	add r0, r3, r0
/* 807D6668  90 1C 06 C8 */	stw r0, 0x6c8(r28)
/* 807D666C  80 1C 06 C8 */	lwz r0, 0x6c8(r28)
/* 807D6670  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 807D6674  90 1C 06 C8 */	stw r0, 0x6c8(r28)
/* 807D6678  3B 20 00 01 */	li r25, 1
/* 807D667C  38 00 00 00 */	li r0, 0
/* 807D6680  B0 1C 06 D2 */	sth r0, 0x6d2(r28)
/* 807D6684  48 00 00 5C */	b lbl_807D66E0
lbl_807D6688:
/* 807D6688  88 1C 07 9F */	lbz r0, 0x79f(r28)
/* 807D668C  7C 00 07 74 */	extsb r0, r0
/* 807D6690  2C 00 00 03 */	cmpwi r0, 3
/* 807D6694  41 80 00 4C */	blt lbl_807D66E0
/* 807D6698  38 00 00 00 */	li r0, 0
/* 807D669C  98 1C 07 9F */	stb r0, 0x79f(r28)
/* 807D66A0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807D66A4  4B A9 12 B1 */	bl cM_rndF__Ff
/* 807D66A8  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 807D66AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D66B0  40 80 00 14 */	bge lbl_807D66C4
/* 807D66B4  80 7C 06 C8 */	lwz r3, 0x6c8(r28)
/* 807D66B8  38 03 00 03 */	addi r0, r3, 3
/* 807D66BC  90 1C 06 C8 */	stw r0, 0x6c8(r28)
/* 807D66C0  48 00 00 10 */	b lbl_807D66D0
lbl_807D66C4:
/* 807D66C4  80 7C 06 C8 */	lwz r3, 0x6c8(r28)
/* 807D66C8  38 03 FF FD */	addi r0, r3, -3
/* 807D66CC  90 1C 06 C8 */	stw r0, 0x6c8(r28)
lbl_807D66D0:
/* 807D66D0  80 1C 06 C8 */	lwz r0, 0x6c8(r28)
/* 807D66D4  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 807D66D8  90 1C 06 C8 */	stw r0, 0x6c8(r28)
/* 807D66DC  3B 20 00 01 */	li r25, 1
lbl_807D66E0:
/* 807D66E0  38 61 00 18 */	addi r3, r1, 0x18
/* 807D66E4  80 1C 06 C8 */	lwz r0, 0x6c8(r28)
/* 807D66E8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807D66EC  38 9D 00 B8 */	addi r4, r29, 0xb8
/* 807D66F0  7C 84 02 14 */	add r4, r4, r0
/* 807D66F4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 807D66F8  4B A9 04 3D */	bl __mi__4cXyzCFRC3Vec
/* 807D66FC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 807D6700  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 807D6704  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807D6708  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807D670C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 807D6710  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 807D6714  4B A9 0F 61 */	bl cM_atan2s__Fff
/* 807D6718  B0 7C 05 DC */	sth r3, 0x5dc(r28)
/* 807D671C  38 7C 04 DE */	addi r3, r28, 0x4de
/* 807D6720  A8 9C 05 DC */	lha r4, 0x5dc(r28)
/* 807D6724  38 A0 00 08 */	li r5, 8
/* 807D6728  A8 DC 06 D2 */	lha r6, 0x6d2(r28)
/* 807D672C  4B A9 9E DD */	bl cLib_addCalcAngleS2__FPssss
/* 807D6730  38 7C 06 D2 */	addi r3, r28, 0x6d2
/* 807D6734  38 80 04 00 */	li r4, 0x400
/* 807D6738  38 A0 00 01 */	li r5, 1
/* 807D673C  38 C0 00 10 */	li r6, 0x10
/* 807D6740  4B A9 9E C9 */	bl cLib_addCalcAngleS2__FPssss
/* 807D6744  7F 60 07 75 */	extsb. r0, r27
/* 807D6748  41 82 00 AC */	beq lbl_807D67F4
/* 807D674C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D6750  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D6754  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 807D6758  C3 63 05 2C */	lfs f27, 0x52c(r3)
/* 807D675C  38 7D 00 50 */	addi r3, r29, 0x50
/* 807D6760  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 807D6764  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 807D6768  40 81 00 0C */	ble lbl_807D6774
/* 807D676C  FF 60 00 90 */	fmr f27, f0
/* 807D6770  48 00 00 14 */	b lbl_807D6784
lbl_807D6774:
/* 807D6774  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807D6778  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 807D677C  40 80 00 08 */	bge lbl_807D6784
/* 807D6780  FF 60 00 90 */	fmr f27, f0
lbl_807D6784:
/* 807D6784  7F 83 E3 78 */	mr r3, r28
/* 807D6788  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807D678C  4B 84 41 D9 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D6790  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 807D6794  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D6798  40 80 00 2C */	bge lbl_807D67C4
/* 807D679C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807D67A0  EF 7B 00 32 */	fmuls f27, f27, f0
/* 807D67A4  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D67A8  38 7D 00 50 */	addi r3, r29, 0x50
/* 807D67AC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807D67B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D67B4  40 80 00 0C */	bge lbl_807D67C0
/* 807D67B8  C3 FE 00 E8 */	lfs f31, 0xe8(r30)
/* 807D67BC  48 00 00 08 */	b lbl_807D67C4
lbl_807D67C0:
/* 807D67C0  C3 FE 00 FC */	lfs f31, 0xfc(r30)
lbl_807D67C4:
/* 807D67C4  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D67C8  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 807D67CC  EF C1 00 24 */	fdivs f30, f1, f0
/* 807D67D0  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807D67D4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 807D67D8  40 80 00 08 */	bge lbl_807D67E0
/* 807D67DC  FF C0 00 90 */	fmr f30, f0
lbl_807D67E0:
/* 807D67E0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807D67E4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 807D67E8  40 81 00 18 */	ble lbl_807D6800
/* 807D67EC  FF C0 00 90 */	fmr f30, f0
/* 807D67F0  48 00 00 10 */	b lbl_807D6800
lbl_807D67F4:
/* 807D67F4  C3 FE 00 D8 */	lfs f31, 0xd8(r30)
/* 807D67F8  38 7D 00 50 */	addi r3, r29, 0x50
/* 807D67FC  C3 63 00 2C */	lfs f27, 0x2c(r3)
lbl_807D6800:
/* 807D6800  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 807D6804  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 807D6808  40 81 00 14 */	ble lbl_807D681C
/* 807D680C  38 00 00 03 */	li r0, 3
/* 807D6810  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807D6814  38 00 00 0D */	li r0, 0xd
/* 807D6818  B0 1C 06 98 */	sth r0, 0x698(r28)
lbl_807D681C:
/* 807D681C  38 00 00 01 */	li r0, 1
/* 807D6820  98 1C 14 2C */	stb r0, 0x142c(r28)
/* 807D6824  48 00 01 A8 */	b lbl_807D69CC
lbl_807D6828:
/* 807D6828  38 00 00 01 */	li r0, 1
/* 807D682C  98 1C 06 BD */	stb r0, 0x6bd(r28)
/* 807D6830  38 7D 00 50 */	addi r3, r29, 0x50
/* 807D6834  C3 63 00 14 */	lfs f27, 0x14(r3)
/* 807D6838  C3 FE 00 D8 */	lfs f31, 0xd8(r30)
/* 807D683C  A8 1C 06 98 */	lha r0, 0x698(r28)
/* 807D6840  2C 00 00 0A */	cmpwi r0, 0xa
/* 807D6844  40 82 00 10 */	bne lbl_807D6854
/* 807D6848  A0 1C 06 BE */	lhz r0, 0x6be(r28)
/* 807D684C  60 00 00 20 */	ori r0, r0, 0x20
/* 807D6850  B0 1C 06 BE */	sth r0, 0x6be(r28)
lbl_807D6854:
/* 807D6854  A8 1C 06 98 */	lha r0, 0x698(r28)
/* 807D6858  2C 00 00 00 */	cmpwi r0, 0
/* 807D685C  40 82 00 24 */	bne lbl_807D6880
/* 807D6860  38 00 00 04 */	li r0, 4
/* 807D6864  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807D6868  7F 83 E3 78 */	mr r3, r28
/* 807D686C  38 80 00 25 */	li r4, 0x25
/* 807D6870  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 807D6874  38 A0 00 02 */	li r5, 2
/* 807D6878  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D687C  4B FF BC CD */	bl anm_init__FP10e_wb_classifUcf
lbl_807D6880:
/* 807D6880  38 00 00 01 */	li r0, 1
/* 807D6884  98 1C 14 2C */	stb r0, 0x142c(r28)
/* 807D6888  48 00 01 44 */	b lbl_807D69CC
lbl_807D688C:
/* 807D688C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D6890  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 807D6894  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D6898  40 81 00 0C */	ble lbl_807D68A4
/* 807D689C  38 00 00 02 */	li r0, 2
/* 807D68A0  98 1C 14 2C */	stb r0, 0x142c(r28)
lbl_807D68A4:
/* 807D68A4  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D68A8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807D68AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D68B0  40 80 01 1C */	bge lbl_807D69CC
/* 807D68B4  38 00 00 09 */	li r0, 9
/* 807D68B8  B0 1C 06 90 */	sth r0, 0x690(r28)
/* 807D68BC  38 00 00 00 */	li r0, 0
/* 807D68C0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807D68C4  48 00 01 08 */	b lbl_807D69CC
lbl_807D68C8:
/* 807D68C8  38 7D 00 50 */	addi r3, r29, 0x50
/* 807D68CC  C3 63 00 14 */	lfs f27, 0x14(r3)
/* 807D68D0  C3 FE 00 D8 */	lfs f31, 0xd8(r30)
/* 807D68D4  80 1C 05 E8 */	lwz r0, 0x5e8(r28)
/* 807D68D8  2C 00 00 18 */	cmpwi r0, 0x18
/* 807D68DC  40 82 00 2C */	bne lbl_807D6908
/* 807D68E0  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 807D68E4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 807D68E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807D68EC  40 80 00 E0 */	bge lbl_807D69CC
/* 807D68F0  7F 83 E3 78 */	mr r3, r28
/* 807D68F4  38 80 00 19 */	li r4, 0x19
/* 807D68F8  38 A0 00 00 */	li r5, 0
/* 807D68FC  FC 40 F0 90 */	fmr f2, f30
/* 807D6900  4B FF BC 49 */	bl anm_init__FP10e_wb_classifUcf
/* 807D6904  48 00 00 C8 */	b lbl_807D69CC
lbl_807D6908:
/* 807D6908  2C 00 00 19 */	cmpwi r0, 0x19
/* 807D690C  40 82 00 5C */	bne lbl_807D6968
/* 807D6910  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 807D6914  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 807D6918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D691C  41 80 00 10 */	blt lbl_807D692C
/* 807D6920  80 1C 08 18 */	lwz r0, 0x818(r28)
/* 807D6924  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807D6928  41 82 00 A4 */	beq lbl_807D69CC
lbl_807D692C:
/* 807D692C  7F 83 E3 78 */	mr r3, r28
/* 807D6930  38 80 00 1A */	li r4, 0x1a
/* 807D6934  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 807D6938  38 A0 00 00 */	li r5, 0
/* 807D693C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D6940  4B FF BC 09 */	bl anm_init__FP10e_wb_classifUcf
/* 807D6944  88 1C 14 2D */	lbz r0, 0x142d(r28)
/* 807D6948  60 00 00 0C */	ori r0, r0, 0xc
/* 807D694C  98 1C 14 2D */	stb r0, 0x142d(r28)
/* 807D6950  38 00 00 01 */	li r0, 1
/* 807D6954  98 1C 14 2E */	stb r0, 0x142e(r28)
/* 807D6958  A0 1C 06 BE */	lhz r0, 0x6be(r28)
/* 807D695C  60 00 02 00 */	ori r0, r0, 0x200
/* 807D6960  B0 1C 06 BE */	sth r0, 0x6be(r28)
/* 807D6964  48 00 00 68 */	b lbl_807D69CC
lbl_807D6968:
/* 807D6968  2C 00 00 1A */	cmpwi r0, 0x1a
/* 807D696C  40 82 00 60 */	bne lbl_807D69CC
/* 807D6970  38 80 00 01 */	li r4, 1
/* 807D6974  98 9C 14 2C */	stb r4, 0x142c(r28)
/* 807D6978  80 7C 05 E0 */	lwz r3, 0x5e0(r28)
/* 807D697C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D6980  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D6984  40 82 00 18 */	bne lbl_807D699C
/* 807D6988  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807D698C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D6990  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D6994  41 82 00 08 */	beq lbl_807D699C
/* 807D6998  38 80 00 00 */	li r4, 0
lbl_807D699C:
/* 807D699C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D69A0  41 82 00 2C */	beq lbl_807D69CC
/* 807D69A4  7F 83 E3 78 */	mr r3, r28
/* 807D69A8  38 80 00 20 */	li r4, 0x20
/* 807D69AC  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 807D69B0  38 A0 00 02 */	li r5, 2
/* 807D69B4  C0 5C 05 E4 */	lfs f2, 0x5e4(r28)
/* 807D69B8  4B FF BB 91 */	bl anm_init__FP10e_wb_classifUcf
/* 807D69BC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807D69C0  D0 1C 16 84 */	stfs f0, 0x1684(r28)
/* 807D69C4  38 00 00 02 */	li r0, 2
/* 807D69C8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_807D69CC:
/* 807D69CC  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 807D69D0  2C 00 00 0A */	cmpwi r0, 0xa
/* 807D69D4  40 80 00 C8 */	bge lbl_807D6A9C
/* 807D69D8  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807D69DC  FC 20 D8 90 */	fmr f1, f27
/* 807D69E0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D69E4  FC 60 F8 90 */	fmr f3, f31
/* 807D69E8  4B A9 90 55 */	bl cLib_addCalc2__FPffff
/* 807D69EC  38 7C 07 9A */	addi r3, r28, 0x79a
/* 807D69F0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 807D69F4  7C 1A 00 50 */	subf r0, r26, r0
/* 807D69F8  54 00 10 3A */	slwi r0, r0, 2
/* 807D69FC  7C 00 00 D0 */	neg r0, r0
/* 807D6A00  7C 04 07 34 */	extsh r4, r0
/* 807D6A04  38 A0 00 08 */	li r5, 8
/* 807D6A08  38 C0 02 00 */	li r6, 0x200
/* 807D6A0C  4B A9 9B FD */	bl cLib_addCalcAngleS2__FPssss
/* 807D6A10  C0 1C 05 E4 */	lfs f0, 0x5e4(r28)
/* 807D6A14  80 7C 05 E0 */	lwz r3, 0x5e0(r28)
/* 807D6A18  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807D6A1C  38 7C 05 E4 */	addi r3, r28, 0x5e4
/* 807D6A20  FC 20 F0 90 */	fmr f1, f30
/* 807D6A24  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D6A28  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 807D6A2C  4B A9 90 11 */	bl cLib_addCalc2__FPffff
/* 807D6A30  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D6A34  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807D6A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D6A3C  4C 41 13 82 */	cror 2, 1, 2
/* 807D6A40  40 82 00 5C */	bne lbl_807D6A9C
/* 807D6A44  80 7C 08 18 */	lwz r3, 0x818(r28)
/* 807D6A48  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 807D6A4C  41 82 00 50 */	beq lbl_807D6A9C
/* 807D6A50  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 807D6A54  40 82 00 14 */	bne lbl_807D6A68
/* 807D6A58  7F 83 E3 78 */	mr r3, r28
/* 807D6A5C  4B FF D1 39 */	bl e_wb_saku_jump_check__FP10e_wb_class
/* 807D6A60  2C 03 00 00 */	cmpwi r3, 0
/* 807D6A64  41 82 00 38 */	beq lbl_807D6A9C
lbl_807D6A68:
/* 807D6A68  38 00 00 0A */	li r0, 0xa
/* 807D6A6C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807D6A70  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807D6A74  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 807D6A78  7F 83 E3 78 */	mr r3, r28
/* 807D6A7C  38 80 00 18 */	li r4, 0x18
/* 807D6A80  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 807D6A84  38 A0 00 00 */	li r5, 0
/* 807D6A88  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D6A8C  4B FF BA BD */	bl anm_init__FP10e_wb_classifUcf
/* 807D6A90  A0 1C 06 BE */	lhz r0, 0x6be(r28)
/* 807D6A94  60 00 01 00 */	ori r0, r0, 0x100
/* 807D6A98  B0 1C 06 BE */	sth r0, 0x6be(r28)
lbl_807D6A9C:
/* 807D6A9C  7F 20 07 75 */	extsb. r0, r25
/* 807D6AA0  41 82 01 2C */	beq lbl_807D6BCC
/* 807D6AA4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D6AA8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807D6AAC  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 807D6AB0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807D6AB4  3B 60 00 00 */	li r27, 0
/* 807D6AB8  3B 20 00 00 */	li r25, 0
/* 807D6ABC  3B 40 00 00 */	li r26, 0
/* 807D6AC0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807D6AC4  3B 03 07 68 */	addi r24, r3, calc_mtx@l /* 0x80450768@l */
lbl_807D6AC8:
/* 807D6AC8  80 78 00 00 */	lwz r3, 0(r24)
/* 807D6ACC  7F 44 07 34 */	extsh r4, r26
/* 807D6AD0  4B 83 59 0D */	bl mDoMtx_YrotS__FPA4_fs
/* 807D6AD4  88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 807D6AD8  2C 00 00 01 */	cmpwi r0, 1
/* 807D6ADC  40 82 00 28 */	bne lbl_807D6B04
/* 807D6AE0  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 807D6AE4  4B A9 0E 71 */	bl cM_rndF__Ff
/* 807D6AE8  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 807D6AEC  EC 00 08 2A */	fadds f0, f0, f1
/* 807D6AF0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807D6AF4  38 61 00 78 */	addi r3, r1, 0x78
/* 807D6AF8  38 81 00 6C */	addi r4, r1, 0x6c
/* 807D6AFC  4B A9 A3 F1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807D6B00  48 00 00 98 */	b lbl_807D6B98
lbl_807D6B04:
/* 807D6B04  88 1C 07 9E */	lbz r0, 0x79e(r28)
/* 807D6B08  7C 00 07 74 */	extsb r0, r0
/* 807D6B0C  2C 00 00 04 */	cmpwi r0, 4
/* 807D6B10  41 80 00 48 */	blt lbl_807D6B58
/* 807D6B14  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 807D6B18  4B A9 0E 3D */	bl cM_rndF__Ff
/* 807D6B1C  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 807D6B20  EC 00 08 2A */	fadds f0, f0, f1
/* 807D6B24  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807D6B28  38 61 00 78 */	addi r3, r1, 0x78
/* 807D6B2C  38 81 00 6C */	addi r4, r1, 0x6c
/* 807D6B30  4B A9 A3 BD */	bl MtxPosition__FP4cXyzP4cXyz
/* 807D6B34  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 807D6B38  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 807D6B3C  EC 01 00 2A */	fadds f0, f1, f0
/* 807D6B40  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807D6B44  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 807D6B48  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 807D6B4C  EC 01 00 2A */	fadds f0, f1, f0
/* 807D6B50  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807D6B54  48 00 00 44 */	b lbl_807D6B98
lbl_807D6B58:
/* 807D6B58  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 807D6B5C  4B A9 0D F9 */	bl cM_rndF__Ff
/* 807D6B60  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 807D6B64  EC 00 08 2A */	fadds f0, f0, f1
/* 807D6B68  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807D6B6C  38 61 00 78 */	addi r3, r1, 0x78
/* 807D6B70  38 81 00 6C */	addi r4, r1, 0x6c
/* 807D6B74  4B A9 A3 79 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807D6B78  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 807D6B7C  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 807D6B80  EC 01 00 2A */	fadds f0, f1, f0
/* 807D6B84  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807D6B88  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 807D6B8C  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 807D6B90  EC 01 00 2A */	fadds f0, f1, f0
/* 807D6B94  D0 01 00 74 */	stfs f0, 0x74(r1)
lbl_807D6B98:
/* 807D6B98  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 807D6B9C  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 807D6BA0  7C 63 CA 14 */	add r3, r3, r25
/* 807D6BA4  D0 03 00 00 */	stfs f0, 0(r3)
/* 807D6BA8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 807D6BAC  D0 03 00 04 */	stfs f0, 4(r3)
/* 807D6BB0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 807D6BB4  D0 03 00 08 */	stfs f0, 8(r3)
/* 807D6BB8  3B 7B 00 01 */	addi r27, r27, 1
/* 807D6BBC  2C 1B 00 08 */	cmpwi r27, 8
/* 807D6BC0  3B 39 00 0C */	addi r25, r25, 0xc
/* 807D6BC4  3B 5A 20 00 */	addi r26, r26, 0x2000
/* 807D6BC8  41 80 FF 00 */	blt lbl_807D6AC8
lbl_807D6BCC:
/* 807D6BCC  88 1C 14 2F */	lbz r0, 0x142f(r28)
/* 807D6BD0  7C 00 07 75 */	extsb. r0, r0
/* 807D6BD4  40 81 00 18 */	ble lbl_807D6BEC
/* 807D6BD8  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D6BDC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807D6BE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D6BE4  40 81 00 08 */	ble lbl_807D6BEC
/* 807D6BE8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_807D6BEC:
/* 807D6BEC  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 807D6BF0  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 807D6BF4  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 807D6BF8  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 807D6BFC  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 807D6C00  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 807D6C04  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 807D6C08  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 807D6C0C  E3 61 00 B8 */	psq_l f27, 184(r1), 0, 0 /* qr0 */
/* 807D6C10  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 807D6C14  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807D6C18  4B B8 B5 FD */	bl _restgpr_24
/* 807D6C1C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 807D6C20  7C 08 03 A6 */	mtlr r0
/* 807D6C24  38 21 01 00 */	addi r1, r1, 0x100
/* 807D6C28  4E 80 00 20 */	blr 
