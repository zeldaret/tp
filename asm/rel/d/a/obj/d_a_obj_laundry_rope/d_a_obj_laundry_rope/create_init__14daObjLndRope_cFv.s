lbl_80C521F8:
/* 80C521F8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C521FC  7C 08 02 A6 */	mflr r0
/* 80C52200  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C52204  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C52208  4B 70 FF C8 */	b _savegpr_26
/* 80C5220C  7C 7E 1B 78 */	mr r30, r3
/* 80C52210  3C 60 80 C5 */	lis r3, M_attr__14daObjLndRope_c@ha
/* 80C52214  3B E3 33 04 */	addi r31, r3, M_attr__14daObjLndRope_c@l
/* 80C52218  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C5221C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80C52220  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C52224  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80C52228  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C5222C  7C 04 07 74 */	extsb r4, r0
/* 80C52230  4B 3F F5 BC */	b dPath_GetRoomPath__Fii
/* 80C52234  80 63 00 08 */	lwz r3, 8(r3)
/* 80C52238  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C5223C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80C52240  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C52244  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80C52248  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C5224C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80C52250  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80C52254  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C52258  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80C5225C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C52260  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C52264  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C52268  38 61 00 6C */	addi r3, r1, 0x6c
/* 80C5226C  38 81 00 90 */	addi r4, r1, 0x90
/* 80C52270  38 A1 00 84 */	addi r5, r1, 0x84
/* 80C52274  4B 61 48 70 */	b __pl__4cXyzCFRC3Vec
/* 80C52278  38 61 00 60 */	addi r3, r1, 0x60
/* 80C5227C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C52280  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80C52284  4B 61 49 00 */	b __ml__4cXyzCFf
/* 80C52288  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80C5228C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C52290  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80C52294  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C52298  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80C5229C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C522A0  38 61 00 54 */	addi r3, r1, 0x54
/* 80C522A4  38 81 00 84 */	addi r4, r1, 0x84
/* 80C522A8  38 A1 00 90 */	addi r5, r1, 0x90
/* 80C522AC  4B 61 48 88 */	b __mi__4cXyzCFRC3Vec
/* 80C522B0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80C522B4  D0 1E 17 5C */	stfs f0, 0x175c(r30)
/* 80C522B8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80C522BC  D0 1E 17 60 */	stfs f0, 0x1760(r30)
/* 80C522C0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80C522C4  D0 1E 17 64 */	stfs f0, 0x1764(r30)
/* 80C522C8  C0 5E 17 64 */	lfs f2, 0x1764(r30)
/* 80C522CC  FC 00 12 10 */	fabs f0, f2
/* 80C522D0  FC 00 00 18 */	frsp f0, f0
/* 80C522D4  C0 3E 17 5C */	lfs f1, 0x175c(r30)
/* 80C522D8  FC 60 0A 10 */	fabs f3, f1
/* 80C522DC  FC 60 18 18 */	frsp f3, f3
/* 80C522E0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80C522E4  40 81 00 1C */	ble lbl_80C52300
/* 80C522E8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C522EC  EC 00 08 24 */	fdivs f0, f0, f1
/* 80C522F0  D0 1E 17 68 */	stfs f0, 0x1768(r30)
/* 80C522F4  38 00 00 01 */	li r0, 1
/* 80C522F8  98 1E 17 70 */	stb r0, 0x1770(r30)
/* 80C522FC  48 00 00 18 */	b lbl_80C52314
lbl_80C52300:
/* 80C52300  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C52304  EC 00 10 24 */	fdivs f0, f0, f2
/* 80C52308  D0 1E 17 68 */	stfs f0, 0x1768(r30)
/* 80C5230C  38 00 00 00 */	li r0, 0
/* 80C52310  98 1E 17 70 */	stb r0, 0x1770(r30)
lbl_80C52314:
/* 80C52314  C0 3E 17 5C */	lfs f1, 0x175c(r30)
/* 80C52318  C0 5E 17 64 */	lfs f2, 0x1764(r30)
/* 80C5231C  4B 61 53 58 */	b cM_atan2s__Fff
/* 80C52320  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 80C52324  C0 3E 17 64 */	lfs f1, 0x1764(r30)
/* 80C52328  C0 1E 17 5C */	lfs f0, 0x175c(r30)
/* 80C5232C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C52330  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C52334  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C52338  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C5233C  38 61 00 30 */	addi r3, r1, 0x30
/* 80C52340  4B 6F 4D F8 */	b PSVECSquareMag
/* 80C52344  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C52348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C5234C  40 81 00 58 */	ble lbl_80C523A4
/* 80C52350  FC 00 08 34 */	frsqrte f0, f1
/* 80C52354  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80C52358  FC 44 00 32 */	fmul f2, f4, f0
/* 80C5235C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80C52360  FC 00 00 32 */	fmul f0, f0, f0
/* 80C52364  FC 01 00 32 */	fmul f0, f1, f0
/* 80C52368  FC 03 00 28 */	fsub f0, f3, f0
/* 80C5236C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C52370  FC 44 00 32 */	fmul f2, f4, f0
/* 80C52374  FC 00 00 32 */	fmul f0, f0, f0
/* 80C52378  FC 01 00 32 */	fmul f0, f1, f0
/* 80C5237C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C52380  FC 02 00 32 */	fmul f0, f2, f0
/* 80C52384  FC 44 00 32 */	fmul f2, f4, f0
/* 80C52388  FC 00 00 32 */	fmul f0, f0, f0
/* 80C5238C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C52390  FC 03 00 28 */	fsub f0, f3, f0
/* 80C52394  FC 02 00 32 */	fmul f0, f2, f0
/* 80C52398  FC 41 00 32 */	fmul f2, f1, f0
/* 80C5239C  FC 40 10 18 */	frsp f2, f2
/* 80C523A0  48 00 00 90 */	b lbl_80C52430
lbl_80C523A4:
/* 80C523A4  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80C523A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C523AC  40 80 00 10 */	bge lbl_80C523BC
/* 80C523B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C523B4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C523B8  48 00 00 78 */	b lbl_80C52430
lbl_80C523BC:
/* 80C523BC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C523C0  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80C523C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C523C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C523CC  7C 03 00 00 */	cmpw r3, r0
/* 80C523D0  41 82 00 14 */	beq lbl_80C523E4
/* 80C523D4  40 80 00 40 */	bge lbl_80C52414
/* 80C523D8  2C 03 00 00 */	cmpwi r3, 0
/* 80C523DC  41 82 00 20 */	beq lbl_80C523FC
/* 80C523E0  48 00 00 34 */	b lbl_80C52414
lbl_80C523E4:
/* 80C523E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C523E8  41 82 00 0C */	beq lbl_80C523F4
/* 80C523EC  38 00 00 01 */	li r0, 1
/* 80C523F0  48 00 00 28 */	b lbl_80C52418
lbl_80C523F4:
/* 80C523F4  38 00 00 02 */	li r0, 2
/* 80C523F8  48 00 00 20 */	b lbl_80C52418
lbl_80C523FC:
/* 80C523FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C52400  41 82 00 0C */	beq lbl_80C5240C
/* 80C52404  38 00 00 05 */	li r0, 5
/* 80C52408  48 00 00 10 */	b lbl_80C52418
lbl_80C5240C:
/* 80C5240C  38 00 00 03 */	li r0, 3
/* 80C52410  48 00 00 08 */	b lbl_80C52418
lbl_80C52414:
/* 80C52414  38 00 00 04 */	li r0, 4
lbl_80C52418:
/* 80C52418  2C 00 00 01 */	cmpwi r0, 1
/* 80C5241C  40 82 00 10 */	bne lbl_80C5242C
/* 80C52420  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C52424  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C52428  48 00 00 08 */	b lbl_80C52430
lbl_80C5242C:
/* 80C5242C  FC 40 08 90 */	fmr f2, f1
lbl_80C52430:
/* 80C52430  C0 1E 17 60 */	lfs f0, 0x1760(r30)
/* 80C52434  FC 20 00 50 */	fneg f1, f0
/* 80C52438  4B 61 52 3C */	b cM_atan2s__Fff
/* 80C5243C  B0 7E 04 E4 */	sth r3, 0x4e4(r30)
/* 80C52440  C0 3E 17 64 */	lfs f1, 0x1764(r30)
/* 80C52444  C0 1E 17 5C */	lfs f0, 0x175c(r30)
/* 80C52448  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C5244C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C52450  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C52454  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80C52458  38 61 00 24 */	addi r3, r1, 0x24
/* 80C5245C  4B 6F 4C DC */	b PSVECSquareMag
/* 80C52460  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C52464  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C52468  40 81 00 58 */	ble lbl_80C524C0
/* 80C5246C  FC 00 08 34 */	frsqrte f0, f1
/* 80C52470  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80C52474  FC 44 00 32 */	fmul f2, f4, f0
/* 80C52478  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80C5247C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C52480  FC 01 00 32 */	fmul f0, f1, f0
/* 80C52484  FC 03 00 28 */	fsub f0, f3, f0
/* 80C52488  FC 02 00 32 */	fmul f0, f2, f0
/* 80C5248C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C52490  FC 00 00 32 */	fmul f0, f0, f0
/* 80C52494  FC 01 00 32 */	fmul f0, f1, f0
/* 80C52498  FC 03 00 28 */	fsub f0, f3, f0
/* 80C5249C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C524A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C524A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C524A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C524AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C524B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C524B4  FC 21 00 32 */	fmul f1, f1, f0
/* 80C524B8  FC 20 08 18 */	frsp f1, f1
/* 80C524BC  48 00 00 88 */	b lbl_80C52544
lbl_80C524C0:
/* 80C524C0  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80C524C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C524C8  40 80 00 10 */	bge lbl_80C524D8
/* 80C524CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C524D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C524D4  48 00 00 70 */	b lbl_80C52544
lbl_80C524D8:
/* 80C524D8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C524DC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C524E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C524E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C524E8  7C 03 00 00 */	cmpw r3, r0
/* 80C524EC  41 82 00 14 */	beq lbl_80C52500
/* 80C524F0  40 80 00 40 */	bge lbl_80C52530
/* 80C524F4  2C 03 00 00 */	cmpwi r3, 0
/* 80C524F8  41 82 00 20 */	beq lbl_80C52518
/* 80C524FC  48 00 00 34 */	b lbl_80C52530
lbl_80C52500:
/* 80C52500  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C52504  41 82 00 0C */	beq lbl_80C52510
/* 80C52508  38 00 00 01 */	li r0, 1
/* 80C5250C  48 00 00 28 */	b lbl_80C52534
lbl_80C52510:
/* 80C52510  38 00 00 02 */	li r0, 2
/* 80C52514  48 00 00 20 */	b lbl_80C52534
lbl_80C52518:
/* 80C52518  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C5251C  41 82 00 0C */	beq lbl_80C52528
/* 80C52520  38 00 00 05 */	li r0, 5
/* 80C52524  48 00 00 10 */	b lbl_80C52534
lbl_80C52528:
/* 80C52528  38 00 00 03 */	li r0, 3
/* 80C5252C  48 00 00 08 */	b lbl_80C52534
lbl_80C52530:
/* 80C52530  38 00 00 04 */	li r0, 4
lbl_80C52534:
/* 80C52534  2C 00 00 01 */	cmpwi r0, 1
/* 80C52538  40 82 00 0C */	bne lbl_80C52544
/* 80C5253C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C52540  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C52544:
/* 80C52544  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80C52548  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80C5254C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C52550  EC C2 00 2A */	fadds f6, f2, f0
/* 80C52554  7F C3 F3 78 */	mr r3, r30
/* 80C52558  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C5255C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80C52560  FC 60 30 50 */	fneg f3, f6
/* 80C52564  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80C52568  C0 BF 00 58 */	lfs f5, 0x58(r31)
/* 80C5256C  4B 3C 7F DC */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C52570  38 7E 17 5C */	addi r3, r30, 0x175c
/* 80C52574  4B 6F 4B C4 */	b PSVECSquareMag
/* 80C52578  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C5257C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C52580  40 81 00 58 */	ble lbl_80C525D8
/* 80C52584  FC 00 08 34 */	frsqrte f0, f1
/* 80C52588  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80C5258C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C52590  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80C52594  FC 00 00 32 */	fmul f0, f0, f0
/* 80C52598  FC 01 00 32 */	fmul f0, f1, f0
/* 80C5259C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C525A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C525A4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C525A8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C525AC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C525B0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C525B4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C525B8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C525BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C525C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C525C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C525C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C525CC  FC 21 00 32 */	fmul f1, f1, f0
/* 80C525D0  FC 20 08 18 */	frsp f1, f1
/* 80C525D4  48 00 00 88 */	b lbl_80C5265C
lbl_80C525D8:
/* 80C525D8  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80C525DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C525E0  40 80 00 10 */	bge lbl_80C525F0
/* 80C525E4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C525E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C525EC  48 00 00 70 */	b lbl_80C5265C
lbl_80C525F0:
/* 80C525F0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C525F4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C525F8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C525FC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C52600  7C 03 00 00 */	cmpw r3, r0
/* 80C52604  41 82 00 14 */	beq lbl_80C52618
/* 80C52608  40 80 00 40 */	bge lbl_80C52648
/* 80C5260C  2C 03 00 00 */	cmpwi r3, 0
/* 80C52610  41 82 00 20 */	beq lbl_80C52630
/* 80C52614  48 00 00 34 */	b lbl_80C52648
lbl_80C52618:
/* 80C52618  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C5261C  41 82 00 0C */	beq lbl_80C52628
/* 80C52620  38 00 00 01 */	li r0, 1
/* 80C52624  48 00 00 28 */	b lbl_80C5264C
lbl_80C52628:
/* 80C52628  38 00 00 02 */	li r0, 2
/* 80C5262C  48 00 00 20 */	b lbl_80C5264C
lbl_80C52630:
/* 80C52630  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C52634  41 82 00 0C */	beq lbl_80C52640
/* 80C52638  38 00 00 05 */	li r0, 5
/* 80C5263C  48 00 00 10 */	b lbl_80C5264C
lbl_80C52640:
/* 80C52640  38 00 00 03 */	li r0, 3
/* 80C52644  48 00 00 08 */	b lbl_80C5264C
lbl_80C52648:
/* 80C52648  38 00 00 04 */	li r0, 4
lbl_80C5264C:
/* 80C5264C  2C 00 00 01 */	cmpwi r0, 1
/* 80C52650  40 82 00 0C */	bne lbl_80C5265C
/* 80C52654  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C52658  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C5265C:
/* 80C5265C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C52660  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C52664  D0 1E 17 6C */	stfs f0, 0x176c(r30)
/* 80C52668  38 61 00 48 */	addi r3, r1, 0x48
/* 80C5266C  38 9E 17 5C */	addi r4, r30, 0x175c
/* 80C52670  C0 1E 17 6C */	lfs f0, 0x176c(r30)
/* 80C52674  EC 20 08 24 */	fdivs f1, f0, f1
/* 80C52678  4B 61 45 0C */	b __ml__4cXyzCFf
/* 80C5267C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C52680  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C52684  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80C52688  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C5268C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80C52690  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C52694  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80C52698  80 63 00 00 */	lwz r3, 0(r3)
/* 80C5269C  3B 9E 16 8C */	addi r28, r30, 0x168c
/* 80C526A0  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80C526A4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C526A8  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80C526AC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C526B0  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80C526B4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C526B8  3B 60 00 01 */	li r27, 1
/* 80C526BC  3B A3 00 0C */	addi r29, r3, 0xc
lbl_80C526C0:
/* 80C526C0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80C526C4  38 9D FF F4 */	addi r4, r29, -12
/* 80C526C8  38 A1 00 78 */	addi r5, r1, 0x78
/* 80C526CC  4B 61 44 18 */	b __pl__4cXyzCFRC3Vec
/* 80C526D0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80C526D4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80C526D8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C526DC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80C526E0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C526E4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80C526E8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80C526EC  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80C526F0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80C526F4  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80C526F8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80C526FC  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80C52700  3B 7B 00 01 */	addi r27, r27, 1
/* 80C52704  2C 1B 00 0E */	cmpwi r27, 0xe
/* 80C52708  3B BD 00 0C */	addi r29, r29, 0xc
/* 80C5270C  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80C52710  41 80 FF B0 */	blt lbl_80C526C0
/* 80C52714  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80C52718  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80C5271C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80C52720  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80C52724  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80C52728  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80C5272C  7F C3 F3 78 */	mr r3, r30
/* 80C52730  48 00 01 B1 */	bl setNormalRopePos__14daObjLndRope_cFv
/* 80C52734  7F C3 F3 78 */	mr r3, r30
/* 80C52738  48 00 01 25 */	bl initBaseMtx__14daObjLndRope_cFv
/* 80C5273C  3B 7E 17 28 */	addi r27, r30, 0x1728
/* 80C52740  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80C52744  80 63 00 00 */	lwz r3, 0(r3)
/* 80C52748  3B A3 00 0C */	addi r29, r3, 0xc
/* 80C5274C  3B 9F 00 14 */	addi r28, r31, 0x14
/* 80C52750  3B 40 00 01 */	li r26, 1
lbl_80C52754:
/* 80C52754  88 1C 00 00 */	lbz r0, 0(r28)
/* 80C52758  7C 00 07 74 */	extsb r0, r0
/* 80C5275C  2C 00 FF FF */	cmpwi r0, -1
/* 80C52760  40 82 00 10 */	bne lbl_80C52770
/* 80C52764  38 00 FF FF */	li r0, -1
/* 80C52768  90 1B 00 00 */	stw r0, 0(r27)
/* 80C5276C  48 00 00 84 */	b lbl_80C527F0
lbl_80C52770:
/* 80C52770  7F A3 EB 78 */	mr r3, r29
/* 80C52774  38 9D 00 0C */	addi r4, r29, 0xc
/* 80C52778  4B 61 E4 FC */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80C5277C  7C 03 00 D0 */	neg r0, r3
/* 80C52780  7C 1F 07 34 */	extsh r31, r0
/* 80C52784  7F A3 EB 78 */	mr r3, r29
/* 80C52788  38 9D 00 0C */	addi r4, r29, 0xc
/* 80C5278C  4B 61 E4 78 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C52790  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C52794  7C 05 07 34 */	extsh r5, r0
/* 80C52798  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C5279C  38 80 00 00 */	li r4, 0
/* 80C527A0  7F E6 FB 78 */	mr r6, r31
/* 80C527A4  4B 61 4C 50 */	b __ct__5csXyzFsss
/* 80C527A8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C527AC  7C 07 07 74 */	extsb r7, r0
/* 80C527B0  38 00 00 00 */	li r0, 0
/* 80C527B4  90 01 00 08 */	stw r0, 8(r1)
/* 80C527B8  38 60 01 55 */	li r3, 0x155
/* 80C527BC  28 1E 00 00 */	cmplwi r30, 0
/* 80C527C0  41 82 00 0C */	beq lbl_80C527CC
/* 80C527C4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C527C8  48 00 00 08 */	b lbl_80C527D0
lbl_80C527CC:
/* 80C527CC  38 80 FF FF */	li r4, -1
lbl_80C527D0:
/* 80C527D0  88 BC 00 00 */	lbz r5, 0(r28)
/* 80C527D4  7C A5 07 74 */	extsb r5, r5
/* 80C527D8  7F A6 EB 78 */	mr r6, r29
/* 80C527DC  39 01 00 1C */	addi r8, r1, 0x1c
/* 80C527E0  39 20 00 00 */	li r9, 0
/* 80C527E4  39 40 FF FF */	li r10, -1
/* 80C527E8  4B 3C 77 08 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80C527EC  90 7B 00 00 */	stw r3, 0(r27)
lbl_80C527F0:
/* 80C527F0  3B 5A 00 01 */	addi r26, r26, 1
/* 80C527F4  2C 1A 00 0E */	cmpwi r26, 0xe
/* 80C527F8  3B BD 00 0C */	addi r29, r29, 0xc
/* 80C527FC  3B 7B 00 04 */	addi r27, r27, 4
/* 80C52800  3B 9C 00 01 */	addi r28, r28, 1
/* 80C52804  41 80 FF 50 */	blt lbl_80C52754
/* 80C52808  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C5280C  4B 70 FA 10 */	b _restgpr_26
/* 80C52810  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C52814  7C 08 03 A6 */	mtlr r0
/* 80C52818  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C5281C  4E 80 00 20 */	blr 
