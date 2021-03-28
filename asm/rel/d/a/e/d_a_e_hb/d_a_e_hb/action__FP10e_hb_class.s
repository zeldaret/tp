lbl_804FEC34:
/* 804FEC34  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804FEC38  7C 08 02 A6 */	mflr r0
/* 804FEC3C  90 01 00 94 */	stw r0, 0x94(r1)
/* 804FEC40  39 61 00 90 */	addi r11, r1, 0x90
/* 804FEC44  4B E6 35 80 */	b _savegpr_23
/* 804FEC48  7C 7D 1B 78 */	mr r29, r3
/* 804FEC4C  3C 80 80 50 */	lis r4, lit_3788@ha
/* 804FEC50  3B C4 0B 04 */	addi r30, r4, lit_3788@l
/* 804FEC54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804FEC58  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 804FEC5C  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 804FEC60  7F 64 DB 78 */	mr r4, r27
/* 804FEC64  4B B1 BA AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804FEC68  B0 7D 06 84 */	sth r3, 0x684(r29)
/* 804FEC6C  38 61 00 2C */	addi r3, r1, 0x2c
/* 804FEC70  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 804FEC74  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 804FEC78  4B D6 7E BC */	b __mi__4cXyzCFRC3Vec
/* 804FEC7C  38 61 00 2C */	addi r3, r1, 0x2c
/* 804FEC80  4B E4 84 B8 */	b PSVECSquareMag
/* 804FEC84  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FEC88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FEC8C  40 81 00 58 */	ble lbl_804FECE4
/* 804FEC90  FC 00 08 34 */	frsqrte f0, f1
/* 804FEC94  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 804FEC98  FC 44 00 32 */	fmul f2, f4, f0
/* 804FEC9C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 804FECA0  FC 00 00 32 */	fmul f0, f0, f0
/* 804FECA4  FC 01 00 32 */	fmul f0, f1, f0
/* 804FECA8  FC 03 00 28 */	fsub f0, f3, f0
/* 804FECAC  FC 02 00 32 */	fmul f0, f2, f0
/* 804FECB0  FC 44 00 32 */	fmul f2, f4, f0
/* 804FECB4  FC 00 00 32 */	fmul f0, f0, f0
/* 804FECB8  FC 01 00 32 */	fmul f0, f1, f0
/* 804FECBC  FC 03 00 28 */	fsub f0, f3, f0
/* 804FECC0  FC 02 00 32 */	fmul f0, f2, f0
/* 804FECC4  FC 44 00 32 */	fmul f2, f4, f0
/* 804FECC8  FC 00 00 32 */	fmul f0, f0, f0
/* 804FECCC  FC 01 00 32 */	fmul f0, f1, f0
/* 804FECD0  FC 03 00 28 */	fsub f0, f3, f0
/* 804FECD4  FC 02 00 32 */	fmul f0, f2, f0
/* 804FECD8  FC 21 00 32 */	fmul f1, f1, f0
/* 804FECDC  FC 20 08 18 */	frsp f1, f1
/* 804FECE0  48 00 00 88 */	b lbl_804FED68
lbl_804FECE4:
/* 804FECE4  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 804FECE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FECEC  40 80 00 10 */	bge lbl_804FECFC
/* 804FECF0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804FECF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804FECF8  48 00 00 70 */	b lbl_804FED68
lbl_804FECFC:
/* 804FECFC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804FED00  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804FED04  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804FED08  3C 00 7F 80 */	lis r0, 0x7f80
/* 804FED0C  7C 03 00 00 */	cmpw r3, r0
/* 804FED10  41 82 00 14 */	beq lbl_804FED24
/* 804FED14  40 80 00 40 */	bge lbl_804FED54
/* 804FED18  2C 03 00 00 */	cmpwi r3, 0
/* 804FED1C  41 82 00 20 */	beq lbl_804FED3C
/* 804FED20  48 00 00 34 */	b lbl_804FED54
lbl_804FED24:
/* 804FED24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804FED28  41 82 00 0C */	beq lbl_804FED34
/* 804FED2C  38 00 00 01 */	li r0, 1
/* 804FED30  48 00 00 28 */	b lbl_804FED58
lbl_804FED34:
/* 804FED34  38 00 00 02 */	li r0, 2
/* 804FED38  48 00 00 20 */	b lbl_804FED58
lbl_804FED3C:
/* 804FED3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804FED40  41 82 00 0C */	beq lbl_804FED4C
/* 804FED44  38 00 00 05 */	li r0, 5
/* 804FED48  48 00 00 10 */	b lbl_804FED58
lbl_804FED4C:
/* 804FED4C  38 00 00 03 */	li r0, 3
/* 804FED50  48 00 00 08 */	b lbl_804FED58
lbl_804FED54:
/* 804FED54  38 00 00 04 */	li r0, 4
lbl_804FED58:
/* 804FED58  2C 00 00 01 */	cmpwi r0, 1
/* 804FED5C  40 82 00 0C */	bne lbl_804FED68
/* 804FED60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804FED64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804FED68:
/* 804FED68  D0 3D 06 88 */	stfs f1, 0x688(r29)
/* 804FED6C  38 00 00 00 */	li r0, 0
/* 804FED70  98 1D 05 66 */	stb r0, 0x566(r29)
/* 804FED74  38 00 00 01 */	li r0, 1
/* 804FED78  98 1D 12 31 */	stb r0, 0x1231(r29)
/* 804FED7C  7F A3 EB 78 */	mr r3, r29
/* 804FED80  4B FF D3 99 */	bl damage_check__FP10e_hb_class
/* 804FED84  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 804FED88  2C 00 00 00 */	cmpwi r0, 0
/* 804FED8C  41 82 00 30 */	beq lbl_804FEDBC
/* 804FED90  88 1D 08 52 */	lbz r0, 0x852(r29)
/* 804FED94  7C 00 07 75 */	extsb. r0, r0
/* 804FED98  41 82 00 24 */	beq lbl_804FEDBC
/* 804FED9C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804FEDA0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804FEDA4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804FEDA8  90 03 05 74 */	stw r0, 0x574(r3)
/* 804FEDAC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804FEDB0  80 03 05 70 */	lwz r0, 0x570(r3)
/* 804FEDB4  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 804FEDB8  90 03 05 70 */	stw r0, 0x570(r3)
lbl_804FEDBC:
/* 804FEDBC  3B E0 00 00 */	li r31, 0
/* 804FEDC0  3B 80 00 00 */	li r28, 0
/* 804FEDC4  3B 40 00 00 */	li r26, 0
/* 804FEDC8  80 1D 08 C8 */	lwz r0, 0x8c8(r29)
/* 804FEDCC  60 00 00 01 */	ori r0, r0, 1
/* 804FEDD0  90 1D 08 C8 */	stw r0, 0x8c8(r29)
/* 804FEDD4  38 00 00 00 */	li r0, 0
/* 804FEDD8  98 1D 08 52 */	stb r0, 0x852(r29)
/* 804FEDDC  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 804FEDE0  28 00 00 08 */	cmplwi r0, 8
/* 804FEDE4  41 81 00 FC */	bgt lbl_804FEEE0
/* 804FEDE8  3C 60 80 50 */	lis r3, lit_4967@ha
/* 804FEDEC  38 63 0C 90 */	addi r3, r3, lit_4967@l
/* 804FEDF0  54 00 10 3A */	slwi r0, r0, 2
/* 804FEDF4  7C 03 00 2E */	lwzx r0, r3, r0
/* 804FEDF8  7C 09 03 A6 */	mtctr r0
/* 804FEDFC  4E 80 04 20 */	bctr 
lbl_804FEE00:
/* 804FEE00  7F A3 EB 78 */	mr r3, r29
/* 804FEE04  4B FF D7 01 */	bl e_hb_stay__FP10e_hb_class
/* 804FEE08  38 00 00 00 */	li r0, 0
/* 804FEE0C  98 1D 12 31 */	stb r0, 0x1231(r29)
/* 804FEE10  48 00 00 D0 */	b lbl_804FEEE0
lbl_804FEE14:
/* 804FEE14  7F A3 EB 78 */	mr r3, r29
/* 804FEE18  4B FF DA 45 */	bl e_hb_appear__FP10e_hb_class
/* 804FEE1C  3B E0 00 01 */	li r31, 1
/* 804FEE20  3B 80 00 01 */	li r28, 1
/* 804FEE24  38 00 00 01 */	li r0, 1
/* 804FEE28  98 1D 05 66 */	stb r0, 0x566(r29)
/* 804FEE2C  3B 40 00 01 */	li r26, 1
/* 804FEE30  48 00 00 B0 */	b lbl_804FEEE0
lbl_804FEE34:
/* 804FEE34  7F A3 EB 78 */	mr r3, r29
/* 804FEE38  4B FF DC E5 */	bl e_hb_appear_v__FP10e_hb_class
/* 804FEE3C  3B E0 00 01 */	li r31, 1
/* 804FEE40  3B 80 00 01 */	li r28, 1
/* 804FEE44  38 00 00 01 */	li r0, 1
/* 804FEE48  98 1D 05 66 */	stb r0, 0x566(r29)
/* 804FEE4C  3B 40 00 01 */	li r26, 1
/* 804FEE50  48 00 00 90 */	b lbl_804FEEE0
lbl_804FEE54:
/* 804FEE54  7F A3 EB 78 */	mr r3, r29
/* 804FEE58  4B FF DE 91 */	bl e_hb_wait__FP10e_hb_class
/* 804FEE5C  3B E0 00 01 */	li r31, 1
/* 804FEE60  3B 80 00 01 */	li r28, 1
/* 804FEE64  38 00 00 01 */	li r0, 1
/* 804FEE68  98 1D 05 66 */	stb r0, 0x566(r29)
/* 804FEE6C  3B 40 00 01 */	li r26, 1
/* 804FEE70  48 00 00 70 */	b lbl_804FEEE0
lbl_804FEE74:
/* 804FEE74  7F A3 EB 78 */	mr r3, r29
/* 804FEE78  4B FF E3 B9 */	bl e_hb_attack__FP10e_hb_class
/* 804FEE7C  3B E0 00 01 */	li r31, 1
/* 804FEE80  3B 80 00 01 */	li r28, 1
/* 804FEE84  38 00 00 01 */	li r0, 1
/* 804FEE88  98 1D 05 66 */	stb r0, 0x566(r29)
/* 804FEE8C  3B 40 00 01 */	li r26, 1
/* 804FEE90  48 00 00 50 */	b lbl_804FEEE0
lbl_804FEE94:
/* 804FEE94  7F A3 EB 78 */	mr r3, r29
/* 804FEE98  4B FF ED F9 */	bl e_hb_chance__FP10e_hb_class
/* 804FEE9C  3B E0 00 01 */	li r31, 1
/* 804FEEA0  3B 80 00 01 */	li r28, 1
/* 804FEEA4  38 00 00 01 */	li r0, 1
/* 804FEEA8  98 1D 05 66 */	stb r0, 0x566(r29)
/* 804FEEAC  3B 40 00 01 */	li r26, 1
/* 804FEEB0  48 00 00 30 */	b lbl_804FEEE0
lbl_804FEEB4:
/* 804FEEB4  7F A3 EB 78 */	mr r3, r29
/* 804FEEB8  4B FF F0 D9 */	bl e_hb_s_damage__FP10e_hb_class
/* 804FEEBC  3B E0 00 01 */	li r31, 1
/* 804FEEC0  3B 80 00 01 */	li r28, 1
/* 804FEEC4  38 00 00 01 */	li r0, 1
/* 804FEEC8  98 1D 05 66 */	stb r0, 0x566(r29)
/* 804FEECC  3B 40 00 01 */	li r26, 1
/* 804FEED0  48 00 00 10 */	b lbl_804FEEE0
lbl_804FEED4:
/* 804FEED4  7F A3 EB 78 */	mr r3, r29
/* 804FEED8  4B FF F3 11 */	bl e_hb_damage__FP10e_hb_class
/* 804FEEDC  3B E0 00 01 */	li r31, 1
lbl_804FEEE0:
/* 804FEEE0  7F 40 07 75 */	extsb. r0, r26
/* 804FEEE4  41 82 00 14 */	beq lbl_804FEEF8
/* 804FEEE8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 804FEEEC  38 80 00 01 */	li r4, 1
/* 804FEEF0  4B DC 2C 8C */	b setLinkSearch__15Z2CreatureEnemyFb
/* 804FEEF4  48 00 00 10 */	b lbl_804FEF04
lbl_804FEEF8:
/* 804FEEF8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 804FEEFC  38 80 00 00 */	li r4, 0
/* 804FEF00  4B DC 2C 7C */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_804FEF04:
/* 804FEF04  7F E0 07 75 */	extsb. r0, r31
/* 804FEF08  41 82 00 10 */	beq lbl_804FEF18
/* 804FEF0C  38 00 00 04 */	li r0, 4
/* 804FEF10  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 804FEF14  48 00 00 18 */	b lbl_804FEF2C
lbl_804FEF18:
/* 804FEF18  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 804FEF1C  54 00 00 3E */	slwi r0, r0, 0
/* 804FEF20  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 804FEF24  38 00 00 00 */	li r0, 0
/* 804FEF28  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_804FEF2C:
/* 804FEF2C  38 61 00 20 */	addi r3, r1, 0x20
/* 804FEF30  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804FEF34  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 804FEF38  4B D6 7B FC */	b __mi__4cXyzCFRC3Vec
/* 804FEF3C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804FEF40  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804FEF44  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804FEF48  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804FEF4C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804FEF50  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804FEF54  38 61 00 50 */	addi r3, r1, 0x50
/* 804FEF58  4B E4 81 E0 */	b PSVECSquareMag
/* 804FEF5C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FEF60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FEF64  40 81 00 58 */	ble lbl_804FEFBC
/* 804FEF68  FC 00 08 34 */	frsqrte f0, f1
/* 804FEF6C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 804FEF70  FC 44 00 32 */	fmul f2, f4, f0
/* 804FEF74  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 804FEF78  FC 00 00 32 */	fmul f0, f0, f0
/* 804FEF7C  FC 01 00 32 */	fmul f0, f1, f0
/* 804FEF80  FC 03 00 28 */	fsub f0, f3, f0
/* 804FEF84  FC 02 00 32 */	fmul f0, f2, f0
/* 804FEF88  FC 44 00 32 */	fmul f2, f4, f0
/* 804FEF8C  FC 00 00 32 */	fmul f0, f0, f0
/* 804FEF90  FC 01 00 32 */	fmul f0, f1, f0
/* 804FEF94  FC 03 00 28 */	fsub f0, f3, f0
/* 804FEF98  FC 02 00 32 */	fmul f0, f2, f0
/* 804FEF9C  FC 44 00 32 */	fmul f2, f4, f0
/* 804FEFA0  FC 00 00 32 */	fmul f0, f0, f0
/* 804FEFA4  FC 01 00 32 */	fmul f0, f1, f0
/* 804FEFA8  FC 03 00 28 */	fsub f0, f3, f0
/* 804FEFAC  FC 02 00 32 */	fmul f0, f2, f0
/* 804FEFB0  FC 21 00 32 */	fmul f1, f1, f0
/* 804FEFB4  FC 20 08 18 */	frsp f1, f1
/* 804FEFB8  48 00 00 88 */	b lbl_804FF040
lbl_804FEFBC:
/* 804FEFBC  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 804FEFC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FEFC4  40 80 00 10 */	bge lbl_804FEFD4
/* 804FEFC8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804FEFCC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804FEFD0  48 00 00 70 */	b lbl_804FF040
lbl_804FEFD4:
/* 804FEFD4  D0 21 00 08 */	stfs f1, 8(r1)
/* 804FEFD8  80 81 00 08 */	lwz r4, 8(r1)
/* 804FEFDC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804FEFE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 804FEFE4  7C 03 00 00 */	cmpw r3, r0
/* 804FEFE8  41 82 00 14 */	beq lbl_804FEFFC
/* 804FEFEC  40 80 00 40 */	bge lbl_804FF02C
/* 804FEFF0  2C 03 00 00 */	cmpwi r3, 0
/* 804FEFF4  41 82 00 20 */	beq lbl_804FF014
/* 804FEFF8  48 00 00 34 */	b lbl_804FF02C
lbl_804FEFFC:
/* 804FEFFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804FF000  41 82 00 0C */	beq lbl_804FF00C
/* 804FF004  38 00 00 01 */	li r0, 1
/* 804FF008  48 00 00 28 */	b lbl_804FF030
lbl_804FF00C:
/* 804FF00C  38 00 00 02 */	li r0, 2
/* 804FF010  48 00 00 20 */	b lbl_804FF030
lbl_804FF014:
/* 804FF014  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804FF018  41 82 00 0C */	beq lbl_804FF024
/* 804FF01C  38 00 00 05 */	li r0, 5
/* 804FF020  48 00 00 10 */	b lbl_804FF030
lbl_804FF024:
/* 804FF024  38 00 00 03 */	li r0, 3
/* 804FF028  48 00 00 08 */	b lbl_804FF030
lbl_804FF02C:
/* 804FF02C  38 00 00 04 */	li r0, 4
lbl_804FF030:
/* 804FF030  2C 00 00 01 */	cmpwi r0, 1
/* 804FF034  40 82 00 0C */	bne lbl_804FF040
/* 804FF038  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804FF03C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804FF040:
/* 804FF040  C0 5D 08 48 */	lfs f2, 0x848(r29)
/* 804FF044  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 804FF048  EC 00 00 72 */	fmuls f0, f0, f1
/* 804FF04C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804FF050  D0 1D 08 44 */	stfs f0, 0x844(r29)
/* 804FF054  C0 3D 08 44 */	lfs f1, 0x844(r29)
/* 804FF058  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 804FF05C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FF060  40 81 00 08 */	ble lbl_804FF068
/* 804FF064  D0 1D 08 44 */	stfs f0, 0x844(r29)
lbl_804FF068:
/* 804FF068  38 7D 08 48 */	addi r3, r29, 0x848
/* 804FF06C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804FF070  FC 40 08 90 */	fmr f2, f1
/* 804FF074  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 804FF078  4B D7 09 C4 */	b cLib_addCalc2__FPffff
/* 804FF07C  7F A3 EB 78 */	mr r3, r29
/* 804FF080  4B FF F5 49 */	bl kuki_control1__FP10e_hb_class
/* 804FF084  7F A3 EB 78 */	mr r3, r29
/* 804FF088  4B FF F8 71 */	bl kuki_control2__FP10e_hb_class
/* 804FF08C  7F A3 EB 78 */	mr r3, r29
/* 804FF090  4B FF F9 DD */	bl kuki_control3__FP10e_hb_class
/* 804FF094  7F A3 EB 78 */	mr r3, r29
/* 804FF098  4B FF FA B1 */	bl kuki_ha_set__FP10e_hb_class
/* 804FF09C  80 1D 12 2C */	lwz r0, 0x122c(r29)
/* 804FF0A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804FF0A4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804FF0A8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804FF0AC  38 81 00 10 */	addi r4, r1, 0x10
/* 804FF0B0  4B B1 A7 48 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804FF0B4  28 03 00 00 */	cmplwi r3, 0
/* 804FF0B8  41 82 00 18 */	beq lbl_804FF0D0
/* 804FF0BC  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 804FF0C0  38 80 00 00 */	li r4, 0
/* 804FF0C4  38 A0 00 00 */	li r5, 0
/* 804FF0C8  38 C0 00 00 */	li r6, 0
/* 804FF0CC  4B B1 14 FC */	b play__14mDoExt_McaMorfFP3VecUlSc
lbl_804FF0D0:
/* 804FF0D0  38 7D 08 4C */	addi r3, r29, 0x84c
/* 804FF0D4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804FF0D8  FC 40 08 90 */	fmr f2, f1
/* 804FF0DC  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 804FF0E0  4B D7 09 5C */	b cLib_addCalc2__FPffff
/* 804FF0E4  3B 3D 06 A0 */	addi r25, r29, 0x6a0
/* 804FF0E8  80 7D 08 40 */	lwz r3, 0x840(r29)
/* 804FF0EC  83 03 00 00 */	lwz r24, 0(r3)
/* 804FF0F0  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 804FF0F4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804FF0F8  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 804FF0FC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804FF100  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 804FF104  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804FF108  3B E0 00 00 */	li r31, 0
/* 804FF10C  3A E0 00 00 */	li r23, 0
/* 804FF110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804FF114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804FF118  3B 63 23 3C */	addi r27, r3, 0x233c
lbl_804FF11C:
/* 804FF11C  C0 19 00 00 */	lfs f0, 0(r25)
/* 804FF120  D0 18 00 00 */	stfs f0, 0(r24)
/* 804FF124  C0 19 00 04 */	lfs f0, 4(r25)
/* 804FF128  D0 18 00 04 */	stfs f0, 4(r24)
/* 804FF12C  C0 19 00 08 */	lfs f0, 8(r25)
/* 804FF130  D0 18 00 08 */	stfs f0, 8(r24)
/* 804FF134  2C 17 00 03 */	cmpwi r23, 3
/* 804FF138  41 82 00 1C */	beq lbl_804FF154
/* 804FF13C  2C 17 00 05 */	cmpwi r23, 5
/* 804FF140  41 82 00 14 */	beq lbl_804FF154
/* 804FF144  2C 17 00 07 */	cmpwi r23, 7
/* 804FF148  41 82 00 0C */	beq lbl_804FF154
/* 804FF14C  2C 17 00 09 */	cmpwi r23, 9
/* 804FF150  40 82 00 64 */	bne lbl_804FF1B4
lbl_804FF154:
/* 804FF154  7F 80 07 75 */	extsb. r0, r28
/* 804FF158  41 82 00 28 */	beq lbl_804FF180
/* 804FF15C  3B 5F 0C 34 */	addi r26, r31, 0xc34
/* 804FF160  7F 5D D2 14 */	add r26, r29, r26
/* 804FF164  7F 43 D3 78 */	mr r3, r26
/* 804FF168  7F 24 CB 78 */	mr r4, r25
/* 804FF16C  4B D7 04 DC */	b SetC__8cM3dGSphFRC4cXyz
/* 804FF170  7F 43 D3 78 */	mr r3, r26
/* 804FF174  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 804FF178  4B D7 05 90 */	b SetR__8cM3dGSphFf
/* 804FF17C  48 00 00 24 */	b lbl_804FF1A0
lbl_804FF180:
/* 804FF180  38 61 00 14 */	addi r3, r1, 0x14
/* 804FF184  7F 24 CB 78 */	mr r4, r25
/* 804FF188  38 A1 00 44 */	addi r5, r1, 0x44
/* 804FF18C  4B D6 79 58 */	b __pl__4cXyzCFRC3Vec
/* 804FF190  38 7F 0C 34 */	addi r3, r31, 0xc34
/* 804FF194  7C 7D 1A 14 */	add r3, r29, r3
/* 804FF198  38 81 00 14 */	addi r4, r1, 0x14
/* 804FF19C  4B D7 04 AC */	b SetC__8cM3dGSphFRC4cXyz
lbl_804FF1A0:
/* 804FF1A0  7F 63 DB 78 */	mr r3, r27
/* 804FF1A4  38 9F 0B 10 */	addi r4, r31, 0xb10
/* 804FF1A8  7C 9D 22 14 */	add r4, r29, r4
/* 804FF1AC  4B D6 59 FC */	b Set__4cCcSFP8cCcD_Obj
/* 804FF1B0  3B FF 01 38 */	addi r31, r31, 0x138
lbl_804FF1B4:
/* 804FF1B4  3A F7 00 01 */	addi r23, r23, 1
/* 804FF1B8  2C 17 00 0C */	cmpwi r23, 0xc
/* 804FF1BC  3B 18 00 0C */	addi r24, r24, 0xc
/* 804FF1C0  3B 39 00 0C */	addi r25, r25, 0xc
/* 804FF1C4  41 80 FF 58 */	blt lbl_804FF11C
/* 804FF1C8  38 7D 08 54 */	addi r3, r29, 0x854
/* 804FF1CC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804FF1D0  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 804FF1D4  4B D7 08 AC */	b cLib_addCalc0__FPfff
/* 804FF1D8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804FF1DC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804FF1E0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804FF1E4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804FF1E8  7F A3 EB 78 */	mr r3, r29
/* 804FF1EC  38 9D 05 BC */	addi r4, r29, 0x5bc
/* 804FF1F0  38 BD 05 38 */	addi r5, r29, 0x538
/* 804FF1F4  38 C1 00 38 */	addi r6, r1, 0x38
/* 804FF1F8  48 00 14 6D */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 804FF1FC  39 61 00 90 */	addi r11, r1, 0x90
/* 804FF200  4B E6 30 10 */	b _restgpr_23
/* 804FF204  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804FF208  7C 08 03 A6 */	mtlr r0
/* 804FF20C  38 21 00 90 */	addi r1, r1, 0x90
/* 804FF210  4E 80 00 20 */	blr 
