lbl_805F6290:
/* 805F6290  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 805F6294  7C 08 02 A6 */	mflr r0
/* 805F6298  90 01 01 24 */	stw r0, 0x124(r1)
/* 805F629C  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 805F62A0  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 805F62A4  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 805F62A8  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 805F62AC  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 805F62B0  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, 0 /* qr0 */
/* 805F62B4  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 805F62B8  F3 81 00 E8 */	psq_st f28, 232(r1), 0, 0 /* qr0 */
/* 805F62BC  DB 61 00 D0 */	stfd f27, 0xd0(r1)
/* 805F62C0  F3 61 00 D8 */	psq_st f27, 216(r1), 0, 0 /* qr0 */
/* 805F62C4  DB 41 00 C0 */	stfd f26, 0xc0(r1)
/* 805F62C8  F3 41 00 C8 */	psq_st f26, 200(r1), 0, 0 /* qr0 */
/* 805F62CC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 805F62D0  4B D6 BE E8 */	b _savegpr_20
/* 805F62D4  7C 7C 1B 78 */	mr r28, r3
/* 805F62D8  3C 60 80 60 */	lis r3, lit_3815@ha
/* 805F62DC  3B A3 26 64 */	addi r29, r3, lit_3815@l
/* 805F62E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F62E4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 805F62E8  82 9E 5D AC */	lwz r20, 0x5dac(r30)
/* 805F62EC  C3 BC 0C 38 */	lfs f29, 0xc38(r28)
/* 805F62F0  C3 9D 00 14 */	lfs f28, 0x14(r29)
/* 805F62F4  C3 7D 00 00 */	lfs f27, 0(r29)
/* 805F62F8  3B 60 00 00 */	li r27, 0
/* 805F62FC  7E 83 A3 78 */	mr r3, r20
/* 805F6300  81 94 06 28 */	lwz r12, 0x628(r20)
/* 805F6304  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 805F6308  7D 89 03 A6 */	mtctr r12
/* 805F630C  4E 80 04 21 */	bctrl 
/* 805F6310  28 03 00 00 */	cmplwi r3, 0
/* 805F6314  41 82 00 28 */	beq lbl_805F633C
/* 805F6318  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F631C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F6320  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 805F6324  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 805F6328  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 805F632C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F6330  4C 41 13 82 */	cror 2, 1, 2
/* 805F6334  40 82 00 08 */	bne lbl_805F633C
/* 805F6338  3B 60 00 01 */	li r27, 1
lbl_805F633C:
/* 805F633C  AB 5C 04 DE */	lha r26, 0x4de(r28)
/* 805F6340  C3 5D 00 00 */	lfs f26, 0(r29)
/* 805F6344  3B 20 00 00 */	li r25, 0
/* 805F6348  A8 94 04 E6 */	lha r4, 0x4e6(r20)
/* 805F634C  A8 7C 0C 3C */	lha r3, 0xc3c(r28)
/* 805F6350  38 03 7F FF */	addi r0, r3, 0x7fff
/* 805F6354  7C 04 00 50 */	subf r0, r4, r0
/* 805F6358  7C 04 07 34 */	extsh r4, r0
/* 805F635C  2C 04 40 00 */	cmpwi r4, 0x4000
/* 805F6360  40 80 00 10 */	bge lbl_805F6370
/* 805F6364  2C 04 C0 00 */	cmpwi r4, -16384
/* 805F6368  40 81 00 08 */	ble lbl_805F6370
/* 805F636C  3B 20 00 01 */	li r25, 1
lbl_805F6370:
/* 805F6370  3B 00 00 00 */	li r24, 0
/* 805F6374  3A E0 00 80 */	li r23, 0x80
/* 805F6378  A8 1C 05 BC */	lha r0, 0x5bc(r28)
/* 805F637C  28 00 00 15 */	cmplwi r0, 0x15
/* 805F6380  41 81 07 84 */	bgt lbl_805F6B04
/* 805F6384  3C 60 80 60 */	lis r3, lit_4975@ha
/* 805F6388  38 63 2A 14 */	addi r3, r3, lit_4975@l
/* 805F638C  54 00 10 3A */	slwi r0, r0, 2
/* 805F6390  7C 03 00 2E */	lwzx r0, r3, r0
/* 805F6394  7C 09 03 A6 */	mtctr r0
/* 805F6398  4E 80 04 20 */	bctr 
lbl_805F639C:
/* 805F639C  80 1C 07 58 */	lwz r0, 0x758(r28)
/* 805F63A0  2C 00 00 49 */	cmpwi r0, 0x49
/* 805F63A4  41 82 00 3C */	beq lbl_805F63E0
/* 805F63A8  7F 83 E3 78 */	mr r3, r28
/* 805F63AC  38 80 00 49 */	li r4, 0x49
/* 805F63B0  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 805F63B4  38 A0 00 02 */	li r5, 2
/* 805F63B8  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F63BC  4B FF E6 D9 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F63C0  7F 83 E3 78 */	mr r3, r28
/* 805F63C4  38 80 00 09 */	li r4, 9
/* 805F63C8  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 805F63CC  38 A0 00 02 */	li r5, 2
/* 805F63D0  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F63D4  4B FF E7 75 */	bl h_anm_init__FP11b_gnd_classifUcf
/* 805F63D8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805F63DC  D0 1C 07 60 */	stfs f0, 0x760(r28)
lbl_805F63E0:
/* 805F63E0  38 00 00 02 */	li r0, 2
/* 805F63E4  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F63E8  38 00 00 00 */	li r0, 0
/* 805F63EC  B0 1C 0C 68 */	sth r0, 0xc68(r28)
/* 805F63F0  3A C0 00 00 */	li r22, 0
/* 805F63F4  3A A0 00 01 */	li r21, 1
/* 805F63F8  3A 80 00 0C */	li r20, 0xc
/* 805F63FC  3C 60 80 60 */	lis r3, b_path@ha
/* 805F6400  3B E3 2F F8 */	addi r31, r3, b_path@l
/* 805F6404  C3 FD 00 14 */	lfs f31, 0x14(r29)
lbl_805F6408:
/* 805F6408  38 61 00 40 */	addi r3, r1, 0x40
/* 805F640C  1C 16 00 0C */	mulli r0, r22, 0xc
/* 805F6410  7C 9F 02 14 */	add r4, r31, r0
/* 805F6414  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805F6418  4B C7 07 1C */	b __mi__4cXyzCFRC3Vec
/* 805F641C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805F6420  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805F6424  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805F6428  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805F642C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805F6430  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805F6434  38 61 00 34 */	addi r3, r1, 0x34
/* 805F6438  7C 9F A2 14 */	add r4, r31, r20
/* 805F643C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805F6440  4B C7 06 F4 */	b __mi__4cXyzCFRC3Vec
/* 805F6444  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805F6448  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805F644C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805F6450  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805F6454  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805F6458  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805F645C  38 61 00 58 */	addi r3, r1, 0x58
/* 805F6460  4B D5 0C D8 */	b PSVECSquareMag
/* 805F6464  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 805F6468  40 81 00 58 */	ble lbl_805F64C0
/* 805F646C  FC 00 08 34 */	frsqrte f0, f1
/* 805F6470  C8 9D 00 30 */	lfd f4, 0x30(r29)
/* 805F6474  FC 44 00 32 */	fmul f2, f4, f0
/* 805F6478  C8 7D 00 38 */	lfd f3, 0x38(r29)
/* 805F647C  FC 00 00 32 */	fmul f0, f0, f0
/* 805F6480  FC 01 00 32 */	fmul f0, f1, f0
/* 805F6484  FC 03 00 28 */	fsub f0, f3, f0
/* 805F6488  FC 02 00 32 */	fmul f0, f2, f0
/* 805F648C  FC 44 00 32 */	fmul f2, f4, f0
/* 805F6490  FC 00 00 32 */	fmul f0, f0, f0
/* 805F6494  FC 01 00 32 */	fmul f0, f1, f0
/* 805F6498  FC 03 00 28 */	fsub f0, f3, f0
/* 805F649C  FC 02 00 32 */	fmul f0, f2, f0
/* 805F64A0  FC 44 00 32 */	fmul f2, f4, f0
/* 805F64A4  FC 00 00 32 */	fmul f0, f0, f0
/* 805F64A8  FC 01 00 32 */	fmul f0, f1, f0
/* 805F64AC  FC 03 00 28 */	fsub f0, f3, f0
/* 805F64B0  FC 02 00 32 */	fmul f0, f2, f0
/* 805F64B4  FF C1 00 32 */	fmul f30, f1, f0
/* 805F64B8  FF C0 F0 18 */	frsp f30, f30
/* 805F64BC  48 00 00 90 */	b lbl_805F654C
lbl_805F64C0:
/* 805F64C0  C8 1D 00 40 */	lfd f0, 0x40(r29)
/* 805F64C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F64C8  40 80 00 10 */	bge lbl_805F64D8
/* 805F64CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805F64D0  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 805F64D4  48 00 00 78 */	b lbl_805F654C
lbl_805F64D8:
/* 805F64D8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805F64DC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805F64E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805F64E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 805F64E8  7C 03 00 00 */	cmpw r3, r0
/* 805F64EC  41 82 00 14 */	beq lbl_805F6500
/* 805F64F0  40 80 00 40 */	bge lbl_805F6530
/* 805F64F4  2C 03 00 00 */	cmpwi r3, 0
/* 805F64F8  41 82 00 20 */	beq lbl_805F6518
/* 805F64FC  48 00 00 34 */	b lbl_805F6530
lbl_805F6500:
/* 805F6500  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805F6504  41 82 00 0C */	beq lbl_805F6510
/* 805F6508  38 00 00 01 */	li r0, 1
/* 805F650C  48 00 00 28 */	b lbl_805F6534
lbl_805F6510:
/* 805F6510  38 00 00 02 */	li r0, 2
/* 805F6514  48 00 00 20 */	b lbl_805F6534
lbl_805F6518:
/* 805F6518  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805F651C  41 82 00 0C */	beq lbl_805F6528
/* 805F6520  38 00 00 05 */	li r0, 5
/* 805F6524  48 00 00 10 */	b lbl_805F6534
lbl_805F6528:
/* 805F6528  38 00 00 03 */	li r0, 3
/* 805F652C  48 00 00 08 */	b lbl_805F6534
lbl_805F6530:
/* 805F6530  38 00 00 04 */	li r0, 4
lbl_805F6534:
/* 805F6534  2C 00 00 01 */	cmpwi r0, 1
/* 805F6538  40 82 00 10 */	bne lbl_805F6548
/* 805F653C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805F6540  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 805F6544  48 00 00 08 */	b lbl_805F654C
lbl_805F6548:
/* 805F6548  FF C0 08 90 */	fmr f30, f1
lbl_805F654C:
/* 805F654C  38 61 00 4C */	addi r3, r1, 0x4c
/* 805F6550  4B D5 0B E8 */	b PSVECSquareMag
/* 805F6554  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 805F6558  40 81 00 58 */	ble lbl_805F65B0
/* 805F655C  FC 00 08 34 */	frsqrte f0, f1
/* 805F6560  C8 9D 00 30 */	lfd f4, 0x30(r29)
/* 805F6564  FC 44 00 32 */	fmul f2, f4, f0
/* 805F6568  C8 7D 00 38 */	lfd f3, 0x38(r29)
/* 805F656C  FC 00 00 32 */	fmul f0, f0, f0
/* 805F6570  FC 01 00 32 */	fmul f0, f1, f0
/* 805F6574  FC 03 00 28 */	fsub f0, f3, f0
/* 805F6578  FC 02 00 32 */	fmul f0, f2, f0
/* 805F657C  FC 44 00 32 */	fmul f2, f4, f0
/* 805F6580  FC 00 00 32 */	fmul f0, f0, f0
/* 805F6584  FC 01 00 32 */	fmul f0, f1, f0
/* 805F6588  FC 03 00 28 */	fsub f0, f3, f0
/* 805F658C  FC 02 00 32 */	fmul f0, f2, f0
/* 805F6590  FC 44 00 32 */	fmul f2, f4, f0
/* 805F6594  FC 00 00 32 */	fmul f0, f0, f0
/* 805F6598  FC 01 00 32 */	fmul f0, f1, f0
/* 805F659C  FC 03 00 28 */	fsub f0, f3, f0
/* 805F65A0  FC 02 00 32 */	fmul f0, f2, f0
/* 805F65A4  FC 21 00 32 */	fmul f1, f1, f0
/* 805F65A8  FC 20 08 18 */	frsp f1, f1
/* 805F65AC  48 00 00 88 */	b lbl_805F6634
lbl_805F65B0:
/* 805F65B0  C8 1D 00 40 */	lfd f0, 0x40(r29)
/* 805F65B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F65B8  40 80 00 10 */	bge lbl_805F65C8
/* 805F65BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805F65C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805F65C4  48 00 00 70 */	b lbl_805F6634
lbl_805F65C8:
/* 805F65C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 805F65CC  80 81 00 08 */	lwz r4, 8(r1)
/* 805F65D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805F65D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 805F65D8  7C 03 00 00 */	cmpw r3, r0
/* 805F65DC  41 82 00 14 */	beq lbl_805F65F0
/* 805F65E0  40 80 00 40 */	bge lbl_805F6620
/* 805F65E4  2C 03 00 00 */	cmpwi r3, 0
/* 805F65E8  41 82 00 20 */	beq lbl_805F6608
/* 805F65EC  48 00 00 34 */	b lbl_805F6620
lbl_805F65F0:
/* 805F65F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805F65F4  41 82 00 0C */	beq lbl_805F6600
/* 805F65F8  38 00 00 01 */	li r0, 1
/* 805F65FC  48 00 00 28 */	b lbl_805F6624
lbl_805F6600:
/* 805F6600  38 00 00 02 */	li r0, 2
/* 805F6604  48 00 00 20 */	b lbl_805F6624
lbl_805F6608:
/* 805F6608  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805F660C  41 82 00 0C */	beq lbl_805F6618
/* 805F6610  38 00 00 05 */	li r0, 5
/* 805F6614  48 00 00 10 */	b lbl_805F6624
lbl_805F6618:
/* 805F6618  38 00 00 03 */	li r0, 3
/* 805F661C  48 00 00 08 */	b lbl_805F6624
lbl_805F6620:
/* 805F6620  38 00 00 04 */	li r0, 4
lbl_805F6624:
/* 805F6624  2C 00 00 01 */	cmpwi r0, 1
/* 805F6628  40 82 00 0C */	bne lbl_805F6634
/* 805F662C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805F6630  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805F6634:
/* 805F6634  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 805F6638  40 81 00 08 */	ble lbl_805F6640
/* 805F663C  7E B6 AB 78 */	mr r22, r21
lbl_805F6640:
/* 805F6640  3A B5 00 01 */	addi r21, r21, 1
/* 805F6644  2C 15 00 08 */	cmpwi r21, 8
/* 805F6648  3A 94 00 0C */	addi r20, r20, 0xc
/* 805F664C  41 80 FD BC */	blt lbl_805F6408
/* 805F6650  92 DC 0C 60 */	stw r22, 0xc60(r28)
/* 805F6654  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 805F6658  4B C7 12 FC */	b cM_rndF__Ff
/* 805F665C  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 805F6660  EC 00 08 2A */	fadds f0, f0, f1
/* 805F6664  FC 00 00 1E */	fctiwz f0, f0
/* 805F6668  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 805F666C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805F6670  B0 1C 0C 48 */	sth r0, 0xc48(r28)
lbl_805F6674:
/* 805F6674  A8 1C 0C 48 */	lha r0, 0xc48(r28)
/* 805F6678  2C 00 00 00 */	cmpwi r0, 0
/* 805F667C  40 82 00 18 */	bne lbl_805F6694
/* 805F6680  7F 60 07 75 */	extsb. r0, r27
/* 805F6684  41 82 00 10 */	beq lbl_805F6694
/* 805F6688  38 00 00 03 */	li r0, 3
/* 805F668C  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F6690  48 00 00 50 */	b lbl_805F66E0
lbl_805F6694:
/* 805F6694  C0 1D 00 A0 */	lfs f0, 0xa0(r29)
/* 805F6698  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 805F669C  40 81 00 44 */	ble lbl_805F66E0
/* 805F66A0  A8 1C 0C 4A */	lha r0, 0xc4a(r28)
/* 805F66A4  2C 00 00 00 */	cmpwi r0, 0
/* 805F66A8  40 82 00 38 */	bne lbl_805F66E0
/* 805F66AC  2C 19 00 00 */	cmpwi r25, 0
/* 805F66B0  41 82 00 18 */	beq lbl_805F66C8
/* 805F66B4  38 00 00 14 */	li r0, 0x14
/* 805F66B8  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F66BC  38 00 00 0A */	li r0, 0xa
/* 805F66C0  B0 1C 0C 44 */	sth r0, 0xc44(r28)
/* 805F66C4  48 00 00 1C */	b lbl_805F66E0
lbl_805F66C8:
/* 805F66C8  38 00 00 04 */	li r0, 4
/* 805F66CC  B0 1C 0A FE */	sth r0, 0xafe(r28)
/* 805F66D0  38 00 00 00 */	li r0, 0
/* 805F66D4  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F66D8  38 00 00 64 */	li r0, 0x64
/* 805F66DC  B0 1C 0C 4A */	sth r0, 0xc4a(r28)
lbl_805F66E0:
/* 805F66E0  38 00 00 01 */	li r0, 1
/* 805F66E4  B0 1C 0C 6A */	sth r0, 0xc6a(r28)
/* 805F66E8  48 00 04 1C */	b lbl_805F6B04
lbl_805F66EC:
/* 805F66EC  7F 83 E3 78 */	mr r3, r28
/* 805F66F0  38 80 00 38 */	li r4, 0x38
/* 805F66F4  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 805F66F8  38 A0 00 00 */	li r5, 0
/* 805F66FC  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F6700  4B FF E3 95 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F6704  38 00 00 04 */	li r0, 4
/* 805F6708  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F670C  38 00 00 01 */	li r0, 1
/* 805F6710  98 1C 1E 0F */	stb r0, 0x1e0f(r28)
/* 805F6714  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805F6718  D0 1C 1E 10 */	stfs f0, 0x1e10(r28)
lbl_805F671C:
/* 805F671C  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F6720  38 80 00 01 */	li r4, 1
/* 805F6724  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F6728  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F672C  40 82 00 18 */	bne lbl_805F6744
/* 805F6730  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 805F6734  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F6738  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F673C  41 82 00 08 */	beq lbl_805F6744
/* 805F6740  38 80 00 00 */	li r4, 0
lbl_805F6744:
/* 805F6744  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F6748  41 82 03 BC */	beq lbl_805F6B04
/* 805F674C  7F 83 E3 78 */	mr r3, r28
/* 805F6750  38 80 00 39 */	li r4, 0x39
/* 805F6754  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 805F6758  38 A0 00 02 */	li r5, 2
/* 805F675C  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F6760  4B FF E3 35 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F6764  38 00 00 14 */	li r0, 0x14
/* 805F6768  B0 1C 0C 44 */	sth r0, 0xc44(r28)
/* 805F676C  38 00 00 05 */	li r0, 5
/* 805F6770  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F6774  48 00 03 90 */	b lbl_805F6B04
lbl_805F6778:
/* 805F6778  A8 1C 0C 44 */	lha r0, 0xc44(r28)
/* 805F677C  2C 00 00 00 */	cmpwi r0, 0
/* 805F6780  40 82 03 84 */	bne lbl_805F6B04
/* 805F6784  7F 83 E3 78 */	mr r3, r28
/* 805F6788  38 80 00 3A */	li r4, 0x3a
/* 805F678C  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 805F6790  38 A0 00 00 */	li r5, 0
/* 805F6794  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F6798  4B FF E2 FD */	bl anm_init__FP11b_gnd_classifUcf
/* 805F679C  38 00 00 06 */	li r0, 6
/* 805F67A0  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F67A4  38 00 00 0F */	li r0, 0xf
/* 805F67A8  B0 1C 0C 44 */	sth r0, 0xc44(r28)
/* 805F67AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007051A@ha */
/* 805F67B0  38 03 05 1A */	addi r0, r3, 0x051A /* 0x0007051A@l */
/* 805F67B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 805F67B8  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 805F67BC  38 81 00 18 */	addi r4, r1, 0x18
/* 805F67C0  38 A0 FF FF */	li r5, -1
/* 805F67C4  81 9C 05 DC */	lwz r12, 0x5dc(r28)
/* 805F67C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F67CC  7D 89 03 A6 */	mtctr r12
/* 805F67D0  4E 80 04 21 */	bctrl 
/* 805F67D4  48 00 03 30 */	b lbl_805F6B04
lbl_805F67D8:
/* 805F67D8  A8 1C 0C 44 */	lha r0, 0xc44(r28)
/* 805F67DC  2C 00 00 01 */	cmpwi r0, 1
/* 805F67E0  40 82 00 2C */	bne lbl_805F680C
/* 805F67E4  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 805F67E8  38 03 40 00 */	addi r0, r3, 0x4000
/* 805F67EC  B0 1C 1E 52 */	sth r0, 0x1e52(r28)
/* 805F67F0  38 60 00 00 */	li r3, 0
/* 805F67F4  B0 7C 1E 50 */	sth r3, 0x1e50(r28)
/* 805F67F8  38 00 00 02 */	li r0, 2
/* 805F67FC  98 1C 1E 0F */	stb r0, 0x1e0f(r28)
/* 805F6800  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 805F6804  D0 1C 1E 4C */	stfs f0, 0x1e4c(r28)
/* 805F6808  98 7C 1E 0E */	stb r3, 0x1e0e(r28)
lbl_805F680C:
/* 805F680C  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F6810  38 80 00 01 */	li r4, 1
/* 805F6814  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F6818  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F681C  40 82 00 18 */	bne lbl_805F6834
/* 805F6820  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 805F6824  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F6828  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F682C  41 82 00 08 */	beq lbl_805F6834
/* 805F6830  38 80 00 00 */	li r4, 0
lbl_805F6834:
/* 805F6834  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F6838  41 82 02 CC */	beq lbl_805F6B04
/* 805F683C  38 00 00 02 */	li r0, 2
/* 805F6840  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F6844  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 805F6848  4B C7 11 0C */	b cM_rndF__Ff
/* 805F684C  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 805F6850  EC 00 08 2A */	fadds f0, f0, f1
/* 805F6854  FC 00 00 1E */	fctiwz f0, f0
/* 805F6858  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 805F685C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805F6860  B0 1C 0C 48 */	sth r0, 0xc48(r28)
/* 805F6864  48 00 02 A0 */	b lbl_805F6B04
lbl_805F6868:
/* 805F6868  80 1C 07 5C */	lwz r0, 0x75c(r28)
/* 805F686C  2C 00 00 09 */	cmpwi r0, 9
/* 805F6870  41 82 00 1C */	beq lbl_805F688C
/* 805F6874  7F 83 E3 78 */	mr r3, r28
/* 805F6878  38 80 00 09 */	li r4, 9
/* 805F687C  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 805F6880  38 A0 00 02 */	li r5, 2
/* 805F6884  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F6888  4B FF E2 C1 */	bl h_anm_init__FP11b_gnd_classifUcf
lbl_805F688C:
/* 805F688C  7F 83 E3 78 */	mr r3, r28
/* 805F6890  38 80 00 3C */	li r4, 0x3c
/* 805F6894  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805F6898  38 A0 00 00 */	li r5, 0
/* 805F689C  FC 40 08 90 */	fmr f2, f1
/* 805F68A0  4B FF E1 F5 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F68A4  38 00 00 08 */	li r0, 8
/* 805F68A8  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F68AC  38 00 01 2C */	li r0, 0x12c
/* 805F68B0  B0 1C 0C 44 */	sth r0, 0xc44(r28)
lbl_805F68B4:
/* 805F68B4  38 00 00 0A */	li r0, 0xa
/* 805F68B8  98 1C 1E 08 */	stb r0, 0x1e08(r28)
/* 805F68BC  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F68C0  38 80 00 01 */	li r4, 1
/* 805F68C4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F68C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F68CC  40 82 00 18 */	bne lbl_805F68E4
/* 805F68D0  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 805F68D4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F68D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F68DC  41 82 00 08 */	beq lbl_805F68E4
/* 805F68E0  38 80 00 00 */	li r4, 0
lbl_805F68E4:
/* 805F68E4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F68E8  41 82 02 1C */	beq lbl_805F6B04
/* 805F68EC  7F 83 E3 78 */	mr r3, r28
/* 805F68F0  38 80 00 3D */	li r4, 0x3d
/* 805F68F4  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 805F68F8  38 A0 00 02 */	li r5, 2
/* 805F68FC  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F6900  4B FF E1 95 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F6904  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007051C@ha */
/* 805F6908  38 03 05 1C */	addi r0, r3, 0x051C /* 0x0007051C@l */
/* 805F690C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F6910  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 805F6914  38 81 00 14 */	addi r4, r1, 0x14
/* 805F6918  38 A0 FF FF */	li r5, -1
/* 805F691C  81 9C 05 DC */	lwz r12, 0x5dc(r28)
/* 805F6920  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F6924  7D 89 03 A6 */	mtctr r12
/* 805F6928  4E 80 04 21 */	bctrl 
/* 805F692C  38 00 00 09 */	li r0, 9
/* 805F6930  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F6934  48 00 01 D0 */	b lbl_805F6B04
lbl_805F6938:
/* 805F6938  38 00 00 0A */	li r0, 0xa
/* 805F693C  98 1C 1E 08 */	stb r0, 0x1e08(r28)
/* 805F6940  A8 1C 0C 44 */	lha r0, 0xc44(r28)
/* 805F6944  2C 00 00 00 */	cmpwi r0, 0
/* 805F6948  40 82 01 BC */	bne lbl_805F6B04
/* 805F694C  7F 83 E3 78 */	mr r3, r28
/* 805F6950  38 80 00 48 */	li r4, 0x48
/* 805F6954  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 805F6958  38 A0 00 00 */	li r5, 0
/* 805F695C  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F6960  4B FF E1 35 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F6964  38 00 00 0A */	li r0, 0xa
/* 805F6968  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F696C  48 00 01 98 */	b lbl_805F6B04
lbl_805F6970:
/* 805F6970  38 00 00 0A */	li r0, 0xa
/* 805F6974  B0 1C 0C 58 */	sth r0, 0xc58(r28)
/* 805F6978  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F697C  38 80 00 01 */	li r4, 1
/* 805F6980  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F6984  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F6988  40 82 00 18 */	bne lbl_805F69A0
/* 805F698C  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 805F6990  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F6994  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F6998  41 82 00 08 */	beq lbl_805F69A0
/* 805F699C  38 80 00 00 */	li r4, 0
lbl_805F69A0:
/* 805F69A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F69A4  41 82 01 60 */	beq lbl_805F6B04
/* 805F69A8  38 00 00 00 */	li r0, 0
/* 805F69AC  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F69B0  48 00 01 54 */	b lbl_805F6B04
lbl_805F69B4:
/* 805F69B4  7C 80 07 35 */	extsh. r0, r4
/* 805F69B8  40 81 00 20 */	ble lbl_805F69D8
/* 805F69BC  7F 83 E3 78 */	mr r3, r28
/* 805F69C0  38 80 00 3E */	li r4, 0x3e
/* 805F69C4  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 805F69C8  38 A0 00 00 */	li r5, 0
/* 805F69CC  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F69D0  4B FF E0 C5 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F69D4  48 00 00 1C */	b lbl_805F69F0
lbl_805F69D8:
/* 805F69D8  7F 83 E3 78 */	mr r3, r28
/* 805F69DC  38 80 00 3F */	li r4, 0x3f
/* 805F69E0  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 805F69E4  38 A0 00 00 */	li r5, 0
/* 805F69E8  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F69EC  4B FF E0 A9 */	bl anm_init__FP11b_gnd_classifUcf
lbl_805F69F0:
/* 805F69F0  38 00 00 0C */	li r0, 0xc
/* 805F69F4  B0 1C 05 BC */	sth r0, 0x5bc(r28)
lbl_805F69F8:
/* 805F69F8  38 00 00 0A */	li r0, 0xa
/* 805F69FC  B0 1C 0C 58 */	sth r0, 0xc58(r28)
/* 805F6A00  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F6A04  38 80 00 01 */	li r4, 1
/* 805F6A08  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F6A0C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F6A10  40 82 00 18 */	bne lbl_805F6A28
/* 805F6A14  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 805F6A18  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F6A1C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F6A20  41 82 00 08 */	beq lbl_805F6A28
/* 805F6A24  38 80 00 00 */	li r4, 0
lbl_805F6A28:
/* 805F6A28  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F6A2C  41 82 00 D8 */	beq lbl_805F6B04
/* 805F6A30  38 00 00 00 */	li r0, 0
/* 805F6A34  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F6A38  48 00 00 CC */	b lbl_805F6B04
lbl_805F6A3C:
/* 805F6A3C  3C 60 80 60 */	lis r3, l_HIO@ha
/* 805F6A40  38 63 2F B4 */	addi r3, r3, l_HIO@l
/* 805F6A44  C3 83 00 0C */	lfs f28, 0xc(r3)
/* 805F6A48  C3 7D 00 84 */	lfs f27, 0x84(r29)
/* 805F6A4C  A8 1C 0C 44 */	lha r0, 0xc44(r28)
/* 805F6A50  2C 00 00 00 */	cmpwi r0, 0
/* 805F6A54  40 82 00 3C */	bne lbl_805F6A90
/* 805F6A58  38 00 00 15 */	li r0, 0x15
/* 805F6A5C  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F6A60  7F 83 E3 78 */	mr r3, r28
/* 805F6A64  38 80 00 3B */	li r4, 0x3b
/* 805F6A68  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 805F6A6C  38 A0 00 00 */	li r5, 0
/* 805F6A70  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F6A74  4B FF E0 21 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F6A78  7F 83 E3 78 */	mr r3, r28
/* 805F6A7C  38 80 00 0E */	li r4, 0xe
/* 805F6A80  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 805F6A84  38 A0 00 00 */	li r5, 0
/* 805F6A88  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F6A8C  4B FF E0 BD */	bl h_anm_init__FP11b_gnd_classifUcf
lbl_805F6A90:
/* 805F6A90  38 00 00 01 */	li r0, 1
/* 805F6A94  B0 1C 0C 6A */	sth r0, 0xc6a(r28)
/* 805F6A98  48 00 00 6C */	b lbl_805F6B04
lbl_805F6A9C:
/* 805F6A9C  C3 7D 00 84 */	lfs f27, 0x84(r29)
/* 805F6AA0  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 805F6AA4  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 805F6AA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F6AAC  40 81 00 38 */	ble lbl_805F6AE4
/* 805F6AB0  38 00 00 02 */	li r0, 2
/* 805F6AB4  B0 1C 0C 6A */	sth r0, 0xc6a(r28)
/* 805F6AB8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007050C@ha */
/* 805F6ABC  38 03 05 0C */	addi r0, r3, 0x050C /* 0x0007050C@l */
/* 805F6AC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F6AC4  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 805F6AC8  38 81 00 10 */	addi r4, r1, 0x10
/* 805F6ACC  38 A0 00 00 */	li r5, 0
/* 805F6AD0  38 C0 FF FF */	li r6, -1
/* 805F6AD4  81 9C 05 DC */	lwz r12, 0x5dc(r28)
/* 805F6AD8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805F6ADC  7D 89 03 A6 */	mtctr r12
/* 805F6AE0  4E 80 04 21 */	bctrl 
lbl_805F6AE4:
/* 805F6AE4  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 805F6AE8  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 805F6AEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F6AF0  40 80 00 14 */	bge lbl_805F6B04
/* 805F6AF4  38 00 00 02 */	li r0, 2
/* 805F6AF8  B0 1C 0A FE */	sth r0, 0xafe(r28)
/* 805F6AFC  38 00 00 00 */	li r0, 0
/* 805F6B00  B0 1C 05 BC */	sth r0, 0x5bc(r28)
lbl_805F6B04:
/* 805F6B04  A8 1C 05 BC */	lha r0, 0x5bc(r28)
/* 805F6B08  2C 00 00 14 */	cmpwi r0, 0x14
/* 805F6B0C  40 80 02 F0 */	bge lbl_805F6DFC
/* 805F6B10  38 61 00 28 */	addi r3, r1, 0x28
/* 805F6B14  80 1C 0C 60 */	lwz r0, 0xc60(r28)
/* 805F6B18  1C A0 00 0C */	mulli r5, r0, 0xc
/* 805F6B1C  3C 80 80 60 */	lis r4, b_path@ha
/* 805F6B20  38 04 2F F8 */	addi r0, r4, b_path@l
/* 805F6B24  7C 80 2A 14 */	add r4, r0, r5
/* 805F6B28  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805F6B2C  4B C7 00 08 */	b __mi__4cXyzCFRC3Vec
/* 805F6B30  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 805F6B34  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 805F6B38  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805F6B3C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805F6B40  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805F6B44  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805F6B48  EC 21 00 72 */	fmuls f1, f1, f1
/* 805F6B4C  EC 00 00 32 */	fmuls f0, f0, f0
/* 805F6B50  EF 61 00 2A */	fadds f27, f1, f0
/* 805F6B54  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805F6B58  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 805F6B5C  40 81 00 0C */	ble lbl_805F6B68
/* 805F6B60  FC 00 D8 34 */	frsqrte f0, f27
/* 805F6B64  EF 60 06 F2 */	fmuls f27, f0, f27
lbl_805F6B68:
/* 805F6B68  C0 1D 00 A8 */	lfs f0, 0xa8(r29)
/* 805F6B6C  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 805F6B70  40 80 00 A0 */	bge lbl_805F6C10
/* 805F6B74  38 61 00 1C */	addi r3, r1, 0x1c
/* 805F6B78  80 9C 0C 60 */	lwz r4, 0xc60(r28)
/* 805F6B7C  38 04 00 01 */	addi r0, r4, 1
/* 805F6B80  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 805F6B84  1C A0 00 0C */	mulli r5, r0, 0xc
/* 805F6B88  3C 80 80 60 */	lis r4, b_path@ha
/* 805F6B8C  38 04 2F F8 */	addi r0, r4, b_path@l
/* 805F6B90  7C 80 2A 14 */	add r4, r0, r5
/* 805F6B94  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805F6B98  4B C6 FF 9C */	b __mi__4cXyzCFRC3Vec
/* 805F6B9C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 805F6BA0  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 805F6BA4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805F6BA8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805F6BAC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 805F6BB0  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 805F6BB4  4B C7 0A C0 */	b cM_atan2s__Fff
/* 805F6BB8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 805F6BBC  7C 03 00 50 */	subf r0, r3, r0
/* 805F6BC0  7C 00 07 34 */	extsh r0, r0
/* 805F6BC4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 805F6BC8  40 80 00 18 */	bge lbl_805F6BE0
/* 805F6BCC  2C 00 C0 00 */	cmpwi r0, -16384
/* 805F6BD0  40 81 00 10 */	ble lbl_805F6BE0
/* 805F6BD4  38 00 00 01 */	li r0, 1
/* 805F6BD8  90 1C 0C 64 */	stw r0, 0xc64(r28)
/* 805F6BDC  48 00 00 0C */	b lbl_805F6BE8
lbl_805F6BE0:
/* 805F6BE0  38 00 FF FF */	li r0, -1
/* 805F6BE4  90 1C 0C 64 */	stw r0, 0xc64(r28)
lbl_805F6BE8:
/* 805F6BE8  80 7C 0C 60 */	lwz r3, 0xc60(r28)
/* 805F6BEC  80 1C 0C 64 */	lwz r0, 0xc64(r28)
/* 805F6BF0  7C 03 02 14 */	add r0, r3, r0
/* 805F6BF4  90 1C 0C 60 */	stw r0, 0xc60(r28)
/* 805F6BF8  80 1C 0C 60 */	lwz r0, 0xc60(r28)
/* 805F6BFC  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 805F6C00  90 1C 0C 60 */	stw r0, 0xc60(r28)
/* 805F6C04  3B 00 00 01 */	li r24, 1
/* 805F6C08  38 00 00 00 */	li r0, 0
/* 805F6C0C  B0 1C 0C 68 */	sth r0, 0xc68(r28)
lbl_805F6C10:
/* 805F6C10  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 805F6C14  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 805F6C18  4B C7 0A 5C */	b cM_atan2s__Fff
/* 805F6C1C  B0 7C 05 CC */	sth r3, 0x5cc(r28)
/* 805F6C20  A0 1C 1E 0A */	lhz r0, 0x1e0a(r28)
/* 805F6C24  28 00 00 01 */	cmplwi r0, 1
/* 805F6C28  41 80 00 B0 */	blt lbl_805F6CD8
/* 805F6C2C  A8 1C 05 BC */	lha r0, 0x5bc(r28)
/* 805F6C30  2C 00 00 02 */	cmpwi r0, 2
/* 805F6C34  41 81 00 A4 */	bgt lbl_805F6CD8
/* 805F6C38  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 805F6C3C  C0 1D 00 A8 */	lfs f0, 0xa8(r29)
/* 805F6C40  EC 1B 00 28 */	fsubs f0, f27, f0
/* 805F6C44  EF 61 00 32 */	fmuls f27, f1, f0
/* 805F6C48  C0 1D 00 AC */	lfs f0, 0xac(r29)
/* 805F6C4C  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 805F6C50  40 81 00 0C */	ble lbl_805F6C5C
/* 805F6C54  FF 60 00 90 */	fmr f27, f0
/* 805F6C58  48 00 00 14 */	b lbl_805F6C6C
lbl_805F6C5C:
/* 805F6C5C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805F6C60  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 805F6C64  40 80 00 08 */	bge lbl_805F6C6C
/* 805F6C68  FF 60 00 90 */	fmr f27, f0
lbl_805F6C6C:
/* 805F6C6C  A8 7C 0C 90 */	lha r3, 0xc90(r28)
/* 805F6C70  A8 1C 0C 92 */	lha r0, 0xc92(r28)
/* 805F6C74  7C 03 02 14 */	add r0, r3, r0
/* 805F6C78  B0 1C 0C 90 */	sth r0, 0xc90(r28)
/* 805F6C7C  A8 1C 0A FC */	lha r0, 0xafc(r28)
/* 805F6C80  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 805F6C84  40 82 00 24 */	bne lbl_805F6CA8
/* 805F6C88  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 805F6C8C  4B C7 0C C8 */	b cM_rndF__Ff
/* 805F6C90  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 805F6C94  EC 00 08 2A */	fadds f0, f0, f1
/* 805F6C98  FC 00 00 1E */	fctiwz f0, f0
/* 805F6C9C  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 805F6CA0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805F6CA4  B0 1C 0C 92 */	sth r0, 0xc92(r28)
lbl_805F6CA8:
/* 805F6CA8  A8 1C 0C 90 */	lha r0, 0xc90(r28)
/* 805F6CAC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805F6CB0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805F6CB4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805F6CB8  7C 03 04 2E */	lfsx f0, r3, r0
/* 805F6CBC  A8 7C 05 CC */	lha r3, 0x5cc(r28)
/* 805F6CC0  EC 1B 00 32 */	fmuls f0, f27, f0
/* 805F6CC4  FC 00 00 1E */	fctiwz f0, f0
/* 805F6CC8  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 805F6CCC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805F6CD0  7C 03 02 14 */	add r0, r3, r0
/* 805F6CD4  B0 1C 05 CC */	sth r0, 0x5cc(r28)
lbl_805F6CD8:
/* 805F6CD8  A8 1C 0C 72 */	lha r0, 0xc72(r28)
/* 805F6CDC  2C 00 00 00 */	cmpwi r0, 0
/* 805F6CE0  41 82 00 0C */	beq lbl_805F6CEC
/* 805F6CE4  A8 1C 0C 74 */	lha r0, 0xc74(r28)
/* 805F6CE8  B0 1C 05 CC */	sth r0, 0x5cc(r28)
lbl_805F6CEC:
/* 805F6CEC  88 1C 1E 08 */	lbz r0, 0x1e08(r28)
/* 805F6CF0  28 00 00 00 */	cmplwi r0, 0
/* 805F6CF4  41 82 00 0C */	beq lbl_805F6D00
/* 805F6CF8  38 00 00 80 */	li r0, 0x80
/* 805F6CFC  B0 1C 0C 68 */	sth r0, 0xc68(r28)
lbl_805F6D00:
/* 805F6D00  38 7C 04 DE */	addi r3, r28, 0x4de
/* 805F6D04  A8 9C 05 CC */	lha r4, 0x5cc(r28)
/* 805F6D08  38 A0 00 08 */	li r5, 8
/* 805F6D0C  A8 DC 0C 68 */	lha r6, 0xc68(r28)
/* 805F6D10  4B C7 98 F8 */	b cLib_addCalcAngleS2__FPssss
/* 805F6D14  88 1C 0C 76 */	lbz r0, 0xc76(r28)
/* 805F6D18  28 00 00 00 */	cmplwi r0, 0
/* 805F6D1C  41 82 00 08 */	beq lbl_805F6D24
/* 805F6D20  3A E0 01 00 */	li r23, 0x100
lbl_805F6D24:
/* 805F6D24  38 7C 0C 68 */	addi r3, r28, 0xc68
/* 805F6D28  38 80 04 00 */	li r4, 0x400
/* 805F6D2C  38 A0 00 01 */	li r5, 1
/* 805F6D30  7E E6 BB 78 */	mr r6, r23
/* 805F6D34  4B C7 98 D4 */	b cLib_addCalcAngleS2__FPssss
/* 805F6D38  88 1C 1E 08 */	lbz r0, 0x1e08(r28)
/* 805F6D3C  28 00 00 00 */	cmplwi r0, 0
/* 805F6D40  41 82 00 18 */	beq lbl_805F6D58
/* 805F6D44  3C 60 80 60 */	lis r3, l_HIO@ha
/* 805F6D48  38 63 2F B4 */	addi r3, r3, l_HIO@l
/* 805F6D4C  C3 83 00 18 */	lfs f28, 0x18(r3)
/* 805F6D50  C3 7D 00 88 */	lfs f27, 0x88(r29)
/* 805F6D54  48 00 00 A8 */	b lbl_805F6DFC
lbl_805F6D58:
/* 805F6D58  7F 60 07 75 */	extsb. r0, r27
/* 805F6D5C  41 82 00 90 */	beq lbl_805F6DEC
/* 805F6D60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F6D64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F6D68  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 805F6D6C  C3 83 05 2C */	lfs f28, 0x52c(r3)
/* 805F6D70  3C 60 80 60 */	lis r3, l_HIO@ha
/* 805F6D74  38 63 2F B4 */	addi r3, r3, l_HIO@l
/* 805F6D78  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805F6D7C  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 805F6D80  40 81 00 0C */	ble lbl_805F6D8C
/* 805F6D84  FF 80 00 90 */	fmr f28, f0
/* 805F6D88  48 00 00 14 */	b lbl_805F6D9C
lbl_805F6D8C:
/* 805F6D8C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805F6D90  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 805F6D94  40 80 00 08 */	bge lbl_805F6D9C
/* 805F6D98  FF 80 00 90 */	fmr f28, f0
lbl_805F6D9C:
/* 805F6D9C  7F 83 E3 78 */	mr r3, r28
/* 805F6DA0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 805F6DA4  4B A2 3B C0 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805F6DA8  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 805F6DAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F6DB0  40 80 00 0C */	bge lbl_805F6DBC
/* 805F6DB4  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 805F6DB8  EF 9C 00 32 */	fmuls f28, f28, f0
lbl_805F6DBC:
/* 805F6DBC  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 805F6DC0  3C 60 80 60 */	lis r3, l_HIO@ha
/* 805F6DC4  38 63 2F B4 */	addi r3, r3, l_HIO@l
/* 805F6DC8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805F6DCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F6DD0  40 80 00 0C */	bge lbl_805F6DDC
/* 805F6DD4  C3 7D 00 BC */	lfs f27, 0xbc(r29)
/* 805F6DD8  48 00 00 08 */	b lbl_805F6DE0
lbl_805F6DDC:
/* 805F6DDC  C3 7D 00 84 */	lfs f27, 0x84(r29)
lbl_805F6DE0:
/* 805F6DE0  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 805F6DE4  EF 41 00 24 */	fdivs f26, f1, f0
/* 805F6DE8  48 00 00 14 */	b lbl_805F6DFC
lbl_805F6DEC:
/* 805F6DEC  C3 7D 00 84 */	lfs f27, 0x84(r29)
/* 805F6DF0  3C 60 80 60 */	lis r3, l_HIO@ha
/* 805F6DF4  38 63 2F B4 */	addi r3, r3, l_HIO@l
/* 805F6DF8  C3 83 00 0C */	lfs f28, 0xc(r3)
lbl_805F6DFC:
/* 805F6DFC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805F6E00  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 805F6E04  40 80 00 08 */	bge lbl_805F6E0C
/* 805F6E08  FF 40 00 90 */	fmr f26, f0
lbl_805F6E0C:
/* 805F6E0C  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 805F6E10  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 805F6E14  40 81 00 08 */	ble lbl_805F6E1C
/* 805F6E18  FF 40 00 90 */	fmr f26, f0
lbl_805F6E1C:
/* 805F6E1C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 805F6E20  FC 20 E0 90 */	fmr f1, f28
/* 805F6E24  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F6E28  FC 60 D8 90 */	fmr f3, f27
/* 805F6E2C  4B C7 8C 10 */	b cLib_addCalc2__FPffff
/* 805F6E30  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 805F6E34  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 805F6E38  40 81 00 44 */	ble lbl_805F6E7C
/* 805F6E3C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 805F6E40  7C 1A 00 50 */	subf r0, r26, r0
/* 805F6E44  54 00 18 38 */	slwi r0, r0, 3
/* 805F6E48  7C 00 00 D0 */	neg r0, r0
/* 805F6E4C  7C 04 07 34 */	extsh r4, r0
/* 805F6E50  2C 04 07 D0 */	cmpwi r4, 0x7d0
/* 805F6E54  40 81 00 0C */	ble lbl_805F6E60
/* 805F6E58  38 80 07 D0 */	li r4, 0x7d0
/* 805F6E5C  48 00 00 10 */	b lbl_805F6E6C
lbl_805F6E60:
/* 805F6E60  2C 04 F8 30 */	cmpwi r4, -2000
/* 805F6E64  40 80 00 08 */	bge lbl_805F6E6C
/* 805F6E68  38 80 F8 30 */	li r4, -2000
lbl_805F6E6C:
/* 805F6E6C  38 7C 0C 5C */	addi r3, r28, 0xc5c
/* 805F6E70  38 A0 00 04 */	li r5, 4
/* 805F6E74  38 C0 03 00 */	li r6, 0x300
/* 805F6E78  4B C7 97 90 */	b cLib_addCalcAngleS2__FPssss
lbl_805F6E7C:
/* 805F6E7C  80 1C 07 58 */	lwz r0, 0x758(r28)
/* 805F6E80  2C 00 00 49 */	cmpwi r0, 0x49
/* 805F6E84  40 82 00 1C */	bne lbl_805F6EA0
/* 805F6E88  C0 1C 07 60 */	lfs f0, 0x760(r28)
/* 805F6E8C  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F6E90  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805F6E94  C0 1C 07 60 */	lfs f0, 0x760(r28)
/* 805F6E98  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 805F6E9C  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_805F6EA0:
/* 805F6EA0  38 7C 07 60 */	addi r3, r28, 0x760
/* 805F6EA4  FC 20 D0 90 */	fmr f1, f26
/* 805F6EA8  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F6EAC  C0 7D 00 C4 */	lfs f3, 0xc4(r29)
/* 805F6EB0  4B C7 8B 8C */	b cLib_addCalc2__FPffff
/* 805F6EB4  7F 00 07 75 */	extsb. r0, r24
/* 805F6EB8  41 82 00 A4 */	beq lbl_805F6F5C
/* 805F6EBC  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805F6EC0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805F6EC4  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 805F6EC8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805F6ECC  3B 00 00 00 */	li r24, 0
/* 805F6ED0  3A A0 00 00 */	li r21, 0
/* 805F6ED4  3A C0 00 00 */	li r22, 0
/* 805F6ED8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F6EDC  3A E3 07 68 */	addi r23, r3, calc_mtx@l
/* 805F6EE0  C3 9D 00 C8 */	lfs f28, 0xc8(r29)
/* 805F6EE4  C3 7D 00 CC */	lfs f27, 0xcc(r29)
/* 805F6EE8  C3 5D 00 D0 */	lfs f26, 0xd0(r29)
/* 805F6EEC  3C 60 80 60 */	lis r3, b_path@ha
/* 805F6EF0  3A 83 2F F8 */	addi r20, r3, b_path@l
lbl_805F6EF4:
/* 805F6EF4  80 77 00 00 */	lwz r3, 0(r23)
/* 805F6EF8  7E C4 07 34 */	extsh r4, r22
/* 805F6EFC  4B A1 54 E0 */	b mDoMtx_YrotS__FPA4_fs
/* 805F6F00  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 805F6F04  4B C7 0A 50 */	b cM_rndF__Ff
/* 805F6F08  EC 1C 08 2A */	fadds f0, f28, f1
/* 805F6F0C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805F6F10  38 61 00 70 */	addi r3, r1, 0x70
/* 805F6F14  38 81 00 64 */	addi r4, r1, 0x64
/* 805F6F18  4B C7 9F D4 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F6F1C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 805F6F20  EC 40 D8 2A */	fadds f2, f0, f27
/* 805F6F24  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 805F6F28  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 805F6F2C  EC 20 D0 2A */	fadds f1, f0, f26
/* 805F6F30  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 805F6F34  7C 74 AA 14 */	add r3, r20, r21
/* 805F6F38  D0 43 00 00 */	stfs f2, 0(r3)
/* 805F6F3C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 805F6F40  D0 03 00 04 */	stfs f0, 4(r3)
/* 805F6F44  D0 23 00 08 */	stfs f1, 8(r3)
/* 805F6F48  3B 18 00 01 */	addi r24, r24, 1
/* 805F6F4C  2C 18 00 08 */	cmpwi r24, 8
/* 805F6F50  3A B5 00 0C */	addi r21, r21, 0xc
/* 805F6F54  3A D6 20 00 */	addi r22, r22, 0x2000
/* 805F6F58  41 80 FF 9C */	blt lbl_805F6EF4
lbl_805F6F5C:
/* 805F6F5C  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 805F6F60  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 805F6F64  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 805F6F68  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 805F6F6C  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, 0 /* qr0 */
/* 805F6F70  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 805F6F74  E3 81 00 E8 */	psq_l f28, 232(r1), 0, 0 /* qr0 */
/* 805F6F78  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 805F6F7C  E3 61 00 D8 */	psq_l f27, 216(r1), 0, 0 /* qr0 */
/* 805F6F80  CB 61 00 D0 */	lfd f27, 0xd0(r1)
/* 805F6F84  E3 41 00 C8 */	psq_l f26, 200(r1), 0, 0 /* qr0 */
/* 805F6F88  CB 41 00 C0 */	lfd f26, 0xc0(r1)
/* 805F6F8C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 805F6F90  4B D6 B2 74 */	b _restgpr_20
/* 805F6F94  80 01 01 24 */	lwz r0, 0x124(r1)
/* 805F6F98  7C 08 03 A6 */	mtlr r0
/* 805F6F9C  38 21 01 20 */	addi r1, r1, 0x120
/* 805F6FA0  4E 80 00 20 */	blr 
