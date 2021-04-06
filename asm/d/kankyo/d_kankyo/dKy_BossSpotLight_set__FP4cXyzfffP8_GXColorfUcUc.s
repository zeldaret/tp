lbl_801AA664:
/* 801AA664  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801AA668  7C 08 02 A6 */	mflr r0
/* 801AA66C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801AA670  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801AA674  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 801AA678  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 801AA67C  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 801AA680  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 801AA684  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 801AA688  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 801AA68C  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 801AA690  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 801AA694  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 801AA698  39 61 00 50 */	addi r11, r1, 0x50
/* 801AA69C  48 1B 7B 21 */	bl _savegpr_21
/* 801AA6A0  7C 76 1B 78 */	mr r22, r3
/* 801AA6A4  FF 60 08 90 */	fmr f27, f1
/* 801AA6A8  FF 80 10 90 */	fmr f28, f2
/* 801AA6AC  FF A0 18 90 */	fmr f29, f3
/* 801AA6B0  7C 97 23 78 */	mr r23, r4
/* 801AA6B4  FF C0 20 90 */	fmr f30, f4
/* 801AA6B8  7C B8 2B 78 */	mr r24, r5
/* 801AA6BC  7C D9 33 78 */	mr r25, r6
/* 801AA6C0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AA6C4  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AA6C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AA6CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AA6D0  83 83 5D 74 */	lwz r28, 0x5d74(r3)
/* 801AA6D4  3B 60 00 00 */	li r27, 0
/* 801AA6D8  C3 E2 A2 0C */	lfs f31, lit_4409(r2)
/* 801AA6DC  3B 40 00 FF */	li r26, 0xff
/* 801AA6E0  38 60 00 28 */	li r3, 0x28
/* 801AA6E4  38 00 00 05 */	li r0, 5
/* 801AA6E8  7C 09 03 A6 */	mtctr r0
lbl_801AA6EC:
/* 801AA6EC  38 03 0C 3E */	addi r0, r3, 0xc3e
/* 801AA6F0  7C 1F 00 AE */	lbzx r0, r31, r0
/* 801AA6F4  28 00 00 00 */	cmplwi r0, 0
/* 801AA6F8  40 82 00 78 */	bne lbl_801AA770
/* 801AA6FC  C0 16 00 00 */	lfs f0, 0(r22)
/* 801AA700  7C 7F 1A 14 */	add r3, r31, r3
/* 801AA704  D0 03 0C 18 */	stfs f0, 0xc18(r3)
/* 801AA708  C0 16 00 04 */	lfs f0, 4(r22)
/* 801AA70C  D0 03 0C 1C */	stfs f0, 0xc1c(r3)
/* 801AA710  C0 16 00 08 */	lfs f0, 8(r22)
/* 801AA714  D0 03 0C 20 */	stfs f0, 0xc20(r3)
/* 801AA718  88 17 00 00 */	lbz r0, 0(r23)
/* 801AA71C  98 03 0C 24 */	stb r0, 0xc24(r3)
/* 801AA720  88 17 00 01 */	lbz r0, 1(r23)
/* 801AA724  98 03 0C 25 */	stb r0, 0xc25(r3)
/* 801AA728  88 17 00 02 */	lbz r0, 2(r23)
/* 801AA72C  98 03 0C 26 */	stb r0, 0xc26(r3)
/* 801AA730  38 00 00 FF */	li r0, 0xff
/* 801AA734  98 03 0C 27 */	stb r0, 0xc27(r3)
/* 801AA738  D3 C3 0C 28 */	stfs f30, 0xc28(r3)
/* 801AA73C  C0 02 A2 90 */	lfs f0, lit_5191(r2)
/* 801AA740  D0 03 0C 2C */	stfs f0, 0xc2c(r3)
/* 801AA744  D3 A3 0C 30 */	stfs f29, 0xc30(r3)
/* 801AA748  D3 63 0C 34 */	stfs f27, 0xc34(r3)
/* 801AA74C  C0 02 A2 2C */	lfs f0, lit_4442(r2)
/* 801AA750  EC 00 E0 2A */	fadds f0, f0, f28
/* 801AA754  D0 03 0C 38 */	stfs f0, 0xc38(r3)
/* 801AA758  9B 03 0C 3C */	stb r24, 0xc3c(r3)
/* 801AA75C  9B 23 0C 3D */	stb r25, 0xc3d(r3)
/* 801AA760  38 00 00 01 */	li r0, 1
/* 801AA764  98 03 0C 3E */	stb r0, 0xc3e(r3)
/* 801AA768  3B 60 00 01 */	li r27, 1
/* 801AA76C  48 00 00 0C */	b lbl_801AA778
lbl_801AA770:
/* 801AA770  38 63 00 28 */	addi r3, r3, 0x28
/* 801AA774  42 00 FF 78 */	bdnz lbl_801AA6EC
lbl_801AA778:
/* 801AA778  2C 1B 00 00 */	cmpwi r27, 0
/* 801AA77C  40 82 04 9C */	bne lbl_801AAC18
/* 801AA780  3B A0 00 01 */	li r29, 1
/* 801AA784  3A A0 00 28 */	li r21, 0x28
lbl_801AA788:
/* 801AA788  7C 7F AA 14 */	add r3, r31, r21
/* 801AA78C  88 03 0C 3E */	lbz r0, 0xc3e(r3)
/* 801AA790  28 00 00 00 */	cmplwi r0, 0
/* 801AA794  41 82 01 F8 */	beq lbl_801AA98C
/* 801AA798  3B C3 0C 18 */	addi r30, r3, 0xc18
/* 801AA79C  7F C3 F3 78 */	mr r3, r30
/* 801AA7A0  38 9C 00 D8 */	addi r4, r28, 0xd8
/* 801AA7A4  48 19 CB F9 */	bl PSVECSquareDistance
/* 801AA7A8  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AA7AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA7B0  40 81 00 58 */	ble lbl_801AA808
/* 801AA7B4  FC 00 08 34 */	frsqrte f0, f1
/* 801AA7B8  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801AA7BC  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA7C0  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801AA7C4  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA7C8  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA7CC  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA7D0  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA7D4  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA7D8  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA7DC  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA7E0  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA7E4  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA7E8  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA7EC  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA7F0  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA7F4  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA7F8  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA7FC  FC 21 00 32 */	fmul f1, f1, f0
/* 801AA800  FC 20 08 18 */	frsp f1, f1
/* 801AA804  48 00 00 88 */	b lbl_801AA88C
lbl_801AA808:
/* 801AA808  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801AA80C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA810  40 80 00 10 */	bge lbl_801AA820
/* 801AA814  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA818  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801AA81C  48 00 00 70 */	b lbl_801AA88C
lbl_801AA820:
/* 801AA820  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801AA824  80 81 00 14 */	lwz r4, 0x14(r1)
/* 801AA828  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801AA82C  3C 00 7F 80 */	lis r0, 0x7f80
/* 801AA830  7C 03 00 00 */	cmpw r3, r0
/* 801AA834  41 82 00 14 */	beq lbl_801AA848
/* 801AA838  40 80 00 40 */	bge lbl_801AA878
/* 801AA83C  2C 03 00 00 */	cmpwi r3, 0
/* 801AA840  41 82 00 20 */	beq lbl_801AA860
/* 801AA844  48 00 00 34 */	b lbl_801AA878
lbl_801AA848:
/* 801AA848  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA84C  41 82 00 0C */	beq lbl_801AA858
/* 801AA850  38 00 00 01 */	li r0, 1
/* 801AA854  48 00 00 28 */	b lbl_801AA87C
lbl_801AA858:
/* 801AA858  38 00 00 02 */	li r0, 2
/* 801AA85C  48 00 00 20 */	b lbl_801AA87C
lbl_801AA860:
/* 801AA860  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA864  41 82 00 0C */	beq lbl_801AA870
/* 801AA868  38 00 00 05 */	li r0, 5
/* 801AA86C  48 00 00 10 */	b lbl_801AA87C
lbl_801AA870:
/* 801AA870  38 00 00 03 */	li r0, 3
/* 801AA874  48 00 00 08 */	b lbl_801AA87C
lbl_801AA878:
/* 801AA878  38 00 00 04 */	li r0, 4
lbl_801AA87C:
/* 801AA87C  2C 00 00 01 */	cmpwi r0, 1
/* 801AA880  40 82 00 0C */	bne lbl_801AA88C
/* 801AA884  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA888  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801AA88C:
/* 801AA88C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 801AA890  40 81 00 FC */	ble lbl_801AA98C
/* 801AA894  7F C3 F3 78 */	mr r3, r30
/* 801AA898  38 9C 00 D8 */	addi r4, r28, 0xd8
/* 801AA89C  48 19 CB 01 */	bl PSVECSquareDistance
/* 801AA8A0  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AA8A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA8A8  40 81 00 58 */	ble lbl_801AA900
/* 801AA8AC  FC 00 08 34 */	frsqrte f0, f1
/* 801AA8B0  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801AA8B4  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA8B8  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801AA8BC  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA8C0  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA8C4  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA8C8  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA8CC  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA8D0  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA8D4  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA8D8  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA8DC  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA8E0  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA8E4  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA8E8  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA8EC  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA8F0  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA8F4  FC 21 00 32 */	fmul f1, f1, f0
/* 801AA8F8  FC 20 08 18 */	frsp f1, f1
/* 801AA8FC  48 00 00 88 */	b lbl_801AA984
lbl_801AA900:
/* 801AA900  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801AA904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA908  40 80 00 10 */	bge lbl_801AA918
/* 801AA90C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA910  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801AA914  48 00 00 70 */	b lbl_801AA984
lbl_801AA918:
/* 801AA918  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801AA91C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 801AA920  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801AA924  3C 00 7F 80 */	lis r0, 0x7f80
/* 801AA928  7C 03 00 00 */	cmpw r3, r0
/* 801AA92C  41 82 00 14 */	beq lbl_801AA940
/* 801AA930  40 80 00 40 */	bge lbl_801AA970
/* 801AA934  2C 03 00 00 */	cmpwi r3, 0
/* 801AA938  41 82 00 20 */	beq lbl_801AA958
/* 801AA93C  48 00 00 34 */	b lbl_801AA970
lbl_801AA940:
/* 801AA940  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA944  41 82 00 0C */	beq lbl_801AA950
/* 801AA948  38 00 00 01 */	li r0, 1
/* 801AA94C  48 00 00 28 */	b lbl_801AA974
lbl_801AA950:
/* 801AA950  38 00 00 02 */	li r0, 2
/* 801AA954  48 00 00 20 */	b lbl_801AA974
lbl_801AA958:
/* 801AA958  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA95C  41 82 00 0C */	beq lbl_801AA968
/* 801AA960  38 00 00 05 */	li r0, 5
/* 801AA964  48 00 00 10 */	b lbl_801AA974
lbl_801AA968:
/* 801AA968  38 00 00 03 */	li r0, 3
/* 801AA96C  48 00 00 08 */	b lbl_801AA974
lbl_801AA970:
/* 801AA970  38 00 00 04 */	li r0, 4
lbl_801AA974:
/* 801AA974  2C 00 00 01 */	cmpwi r0, 1
/* 801AA978  40 82 00 0C */	bne lbl_801AA984
/* 801AA97C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA980  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801AA984:
/* 801AA984  FF E0 08 90 */	fmr f31, f1
/* 801AA988  57 BA 06 3E */	clrlwi r26, r29, 0x18
lbl_801AA98C:
/* 801AA98C  3B BD 00 01 */	addi r29, r29, 1
/* 801AA990  2C 1D 00 06 */	cmpwi r29, 6
/* 801AA994  3A B5 00 28 */	addi r21, r21, 0x28
/* 801AA998  41 80 FD F0 */	blt lbl_801AA788
/* 801AA99C  57 55 06 3E */	clrlwi r21, r26, 0x18
/* 801AA9A0  28 15 00 FF */	cmplwi r21, 0xff
/* 801AA9A4  41 82 02 74 */	beq lbl_801AAC18
/* 801AA9A8  2C 15 00 06 */	cmpwi r21, 6
/* 801AA9AC  40 80 02 6C */	bge lbl_801AAC18
/* 801AA9B0  7E C3 B3 78 */	mr r3, r22
/* 801AA9B4  38 9C 00 D8 */	addi r4, r28, 0xd8
/* 801AA9B8  48 19 C9 E5 */	bl PSVECSquareDistance
/* 801AA9BC  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AA9C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA9C4  40 81 00 58 */	ble lbl_801AAA1C
/* 801AA9C8  FC 00 08 34 */	frsqrte f0, f1
/* 801AA9CC  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801AA9D0  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA9D4  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801AA9D8  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA9DC  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA9E0  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA9E4  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA9E8  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA9EC  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA9F0  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA9F4  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA9F8  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA9FC  FC 44 00 32 */	fmul f2, f4, f0
/* 801AAA00  FC 00 00 32 */	fmul f0, f0, f0
/* 801AAA04  FC 01 00 32 */	fmul f0, f1, f0
/* 801AAA08  FC 03 00 28 */	fsub f0, f3, f0
/* 801AAA0C  FC 02 00 32 */	fmul f0, f2, f0
/* 801AAA10  FF E1 00 32 */	fmul f31, f1, f0
/* 801AAA14  FF E0 F8 18 */	frsp f31, f31
/* 801AAA18  48 00 00 90 */	b lbl_801AAAA8
lbl_801AAA1C:
/* 801AAA1C  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801AAA20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AAA24  40 80 00 10 */	bge lbl_801AAA34
/* 801AAA28  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AAA2C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801AAA30  48 00 00 78 */	b lbl_801AAAA8
lbl_801AAA34:
/* 801AAA34  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801AAA38  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801AAA3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801AAA40  3C 00 7F 80 */	lis r0, 0x7f80
/* 801AAA44  7C 03 00 00 */	cmpw r3, r0
/* 801AAA48  41 82 00 14 */	beq lbl_801AAA5C
/* 801AAA4C  40 80 00 40 */	bge lbl_801AAA8C
/* 801AAA50  2C 03 00 00 */	cmpwi r3, 0
/* 801AAA54  41 82 00 20 */	beq lbl_801AAA74
/* 801AAA58  48 00 00 34 */	b lbl_801AAA8C
lbl_801AAA5C:
/* 801AAA5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AAA60  41 82 00 0C */	beq lbl_801AAA6C
/* 801AAA64  38 00 00 01 */	li r0, 1
/* 801AAA68  48 00 00 28 */	b lbl_801AAA90
lbl_801AAA6C:
/* 801AAA6C  38 00 00 02 */	li r0, 2
/* 801AAA70  48 00 00 20 */	b lbl_801AAA90
lbl_801AAA74:
/* 801AAA74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AAA78  41 82 00 0C */	beq lbl_801AAA84
/* 801AAA7C  38 00 00 05 */	li r0, 5
/* 801AAA80  48 00 00 10 */	b lbl_801AAA90
lbl_801AAA84:
/* 801AAA84  38 00 00 03 */	li r0, 3
/* 801AAA88  48 00 00 08 */	b lbl_801AAA90
lbl_801AAA8C:
/* 801AAA8C  38 00 00 04 */	li r0, 4
lbl_801AAA90:
/* 801AAA90  2C 00 00 01 */	cmpwi r0, 1
/* 801AAA94  40 82 00 10 */	bne lbl_801AAAA4
/* 801AAA98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AAA9C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801AAAA0  48 00 00 08 */	b lbl_801AAAA8
lbl_801AAAA4:
/* 801AAAA4  FF E0 08 90 */	fmr f31, f1
lbl_801AAAA8:
/* 801AAAA8  1F D5 00 28 */	mulli r30, r21, 0x28
/* 801AAAAC  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 801AAAB0  7C 7F 1A 14 */	add r3, r31, r3
/* 801AAAB4  38 9C 00 D8 */	addi r4, r28, 0xd8
/* 801AAAB8  48 19 C8 E5 */	bl PSVECSquareDistance
/* 801AAABC  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AAAC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AAAC4  40 81 00 58 */	ble lbl_801AAB1C
/* 801AAAC8  FC 00 08 34 */	frsqrte f0, f1
/* 801AAACC  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801AAAD0  FC 44 00 32 */	fmul f2, f4, f0
/* 801AAAD4  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801AAAD8  FC 00 00 32 */	fmul f0, f0, f0
/* 801AAADC  FC 01 00 32 */	fmul f0, f1, f0
/* 801AAAE0  FC 03 00 28 */	fsub f0, f3, f0
/* 801AAAE4  FC 02 00 32 */	fmul f0, f2, f0
/* 801AAAE8  FC 44 00 32 */	fmul f2, f4, f0
/* 801AAAEC  FC 00 00 32 */	fmul f0, f0, f0
/* 801AAAF0  FC 01 00 32 */	fmul f0, f1, f0
/* 801AAAF4  FC 03 00 28 */	fsub f0, f3, f0
/* 801AAAF8  FC 02 00 32 */	fmul f0, f2, f0
/* 801AAAFC  FC 44 00 32 */	fmul f2, f4, f0
/* 801AAB00  FC 00 00 32 */	fmul f0, f0, f0
/* 801AAB04  FC 01 00 32 */	fmul f0, f1, f0
/* 801AAB08  FC 03 00 28 */	fsub f0, f3, f0
/* 801AAB0C  FC 02 00 32 */	fmul f0, f2, f0
/* 801AAB10  FC 21 00 32 */	fmul f1, f1, f0
/* 801AAB14  FC 20 08 18 */	frsp f1, f1
/* 801AAB18  48 00 00 88 */	b lbl_801AABA0
lbl_801AAB1C:
/* 801AAB1C  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801AAB20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AAB24  40 80 00 10 */	bge lbl_801AAB34
/* 801AAB28  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AAB2C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801AAB30  48 00 00 70 */	b lbl_801AABA0
lbl_801AAB34:
/* 801AAB34  D0 21 00 08 */	stfs f1, 8(r1)
/* 801AAB38  80 81 00 08 */	lwz r4, 8(r1)
/* 801AAB3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801AAB40  3C 00 7F 80 */	lis r0, 0x7f80
/* 801AAB44  7C 03 00 00 */	cmpw r3, r0
/* 801AAB48  41 82 00 14 */	beq lbl_801AAB5C
/* 801AAB4C  40 80 00 40 */	bge lbl_801AAB8C
/* 801AAB50  2C 03 00 00 */	cmpwi r3, 0
/* 801AAB54  41 82 00 20 */	beq lbl_801AAB74
/* 801AAB58  48 00 00 34 */	b lbl_801AAB8C
lbl_801AAB5C:
/* 801AAB5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AAB60  41 82 00 0C */	beq lbl_801AAB6C
/* 801AAB64  38 00 00 01 */	li r0, 1
/* 801AAB68  48 00 00 28 */	b lbl_801AAB90
lbl_801AAB6C:
/* 801AAB6C  38 00 00 02 */	li r0, 2
/* 801AAB70  48 00 00 20 */	b lbl_801AAB90
lbl_801AAB74:
/* 801AAB74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AAB78  41 82 00 0C */	beq lbl_801AAB84
/* 801AAB7C  38 00 00 05 */	li r0, 5
/* 801AAB80  48 00 00 10 */	b lbl_801AAB90
lbl_801AAB84:
/* 801AAB84  38 00 00 03 */	li r0, 3
/* 801AAB88  48 00 00 08 */	b lbl_801AAB90
lbl_801AAB8C:
/* 801AAB8C  38 00 00 04 */	li r0, 4
lbl_801AAB90:
/* 801AAB90  2C 00 00 01 */	cmpwi r0, 1
/* 801AAB94  40 82 00 0C */	bne lbl_801AABA0
/* 801AAB98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AAB9C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801AABA0:
/* 801AABA0  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 801AABA4  40 80 00 74 */	bge lbl_801AAC18
/* 801AABA8  C0 16 00 00 */	lfs f0, 0(r22)
/* 801AABAC  7C 7F F2 14 */	add r3, r31, r30
/* 801AABB0  D0 03 0C 18 */	stfs f0, 0xc18(r3)
/* 801AABB4  C0 16 00 04 */	lfs f0, 4(r22)
/* 801AABB8  D0 03 0C 1C */	stfs f0, 0xc1c(r3)
/* 801AABBC  C0 16 00 08 */	lfs f0, 8(r22)
/* 801AABC0  D0 03 0C 20 */	stfs f0, 0xc20(r3)
/* 801AABC4  88 17 00 00 */	lbz r0, 0(r23)
/* 801AABC8  98 03 0C 24 */	stb r0, 0xc24(r3)
/* 801AABCC  88 17 00 01 */	lbz r0, 1(r23)
/* 801AABD0  98 03 0C 25 */	stb r0, 0xc25(r3)
/* 801AABD4  88 17 00 02 */	lbz r0, 2(r23)
/* 801AABD8  98 03 0C 26 */	stb r0, 0xc26(r3)
/* 801AABDC  38 00 00 FF */	li r0, 0xff
/* 801AABE0  98 03 0C 27 */	stb r0, 0xc27(r3)
/* 801AABE4  D3 C3 0C 28 */	stfs f30, 0xc28(r3)
/* 801AABE8  C0 02 A2 90 */	lfs f0, lit_5191(r2)
/* 801AABEC  D0 03 0C 2C */	stfs f0, 0xc2c(r3)
/* 801AABF0  D3 A3 0C 30 */	stfs f29, 0xc30(r3)
/* 801AABF4  D3 63 0C 34 */	stfs f27, 0xc34(r3)
/* 801AABF8  C0 02 A2 2C */	lfs f0, lit_4442(r2)
/* 801AABFC  EC 00 E0 2A */	fadds f0, f0, f28
/* 801AAC00  D0 03 0C 38 */	stfs f0, 0xc38(r3)
/* 801AAC04  9B 03 0C 3C */	stb r24, 0xc3c(r3)
/* 801AAC08  9B 23 0C 3D */	stb r25, 0xc3d(r3)
/* 801AAC0C  38 00 00 01 */	li r0, 1
/* 801AAC10  98 03 0C 3E */	stb r0, 0xc3e(r3)
/* 801AAC14  3B 60 00 01 */	li r27, 1
lbl_801AAC18:
/* 801AAC18  7F 63 DB 78 */	mr r3, r27
/* 801AAC1C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 801AAC20  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801AAC24  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 801AAC28  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 801AAC2C  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 801AAC30  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 801AAC34  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 801AAC38  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 801AAC3C  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 801AAC40  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 801AAC44  39 61 00 50 */	addi r11, r1, 0x50
/* 801AAC48  48 1B 75 C1 */	bl _restgpr_21
/* 801AAC4C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801AAC50  7C 08 03 A6 */	mtlr r0
/* 801AAC54  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801AAC58  4E 80 00 20 */	blr 
