lbl_807C2898:
/* 807C2898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C289C  7C 08 02 A6 */	mflr r0
/* 807C28A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C28A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C28A8  93 C1 00 08 */	stw r30, 8(r1)
/* 807C28AC  7C 7E 1B 78 */	mr r30, r3
/* 807C28B0  88 03 13 91 */	lbz r0, 0x1391(r3)
/* 807C28B4  28 00 00 00 */	cmplwi r0, 0
/* 807C28B8  41 82 01 2C */	beq lbl_807C29E4
/* 807C28BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C28C0  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C28C4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807C28C8  4B 85 7E 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C28CC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807C28D0  7C 00 18 50 */	subf r0, r0, r3
/* 807C28D4  7C 04 07 34 */	extsh r4, r0
/* 807C28D8  2C 04 30 00 */	cmpwi r4, 0x3000
/* 807C28DC  40 81 00 08 */	ble lbl_807C28E4
/* 807C28E0  38 80 30 00 */	li r4, 0x3000
lbl_807C28E4:
/* 807C28E4  7C 80 07 34 */	extsh r0, r4
/* 807C28E8  2C 00 D0 00 */	cmpwi r0, -12288
/* 807C28EC  40 80 00 08 */	bge lbl_807C28F4
/* 807C28F0  38 80 D0 00 */	li r4, -12288
lbl_807C28F4:
/* 807C28F4  38 7E 13 94 */	addi r3, r30, 0x1394
/* 807C28F8  38 A0 00 08 */	li r5, 8
/* 807C28FC  38 C0 08 00 */	li r6, 0x800
/* 807C2900  38 E0 00 40 */	li r7, 0x40
/* 807C2904  4B AA DC 3D */	bl cLib_addCalcAngleS__FPsssss
/* 807C2908  7F C3 F3 78 */	mr r3, r30
/* 807C290C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807C2910  4B 85 7E 29 */	bl fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C2914  20 03 14 00 */	subfic r0, r3, 0x1400
/* 807C2918  7C 04 07 34 */	extsh r4, r0
/* 807C291C  2C 04 30 00 */	cmpwi r4, 0x3000
/* 807C2920  40 81 00 08 */	ble lbl_807C2928
/* 807C2924  38 80 30 00 */	li r4, 0x3000
lbl_807C2928:
/* 807C2928  7C 80 07 34 */	extsh r0, r4
/* 807C292C  2C 00 D0 00 */	cmpwi r0, -12288
/* 807C2930  40 80 00 08 */	bge lbl_807C2938
/* 807C2934  38 80 D0 00 */	li r4, -12288
lbl_807C2938:
/* 807C2938  38 7E 13 96 */	addi r3, r30, 0x1396
/* 807C293C  38 A0 00 08 */	li r5, 8
/* 807C2940  38 C0 08 00 */	li r6, 0x800
/* 807C2944  38 E0 00 40 */	li r7, 0x40
/* 807C2948  4B AA DB F9 */	bl cLib_addCalcAngleS__FPsssss
/* 807C294C  7F C3 F3 78 */	mr r3, r30
/* 807C2950  38 80 00 1F */	li r4, 0x1f
/* 807C2954  48 00 0F 69 */	bl checkBck__8daE_VA_cFi
/* 807C2958  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C295C  40 82 00 18 */	bne lbl_807C2974
/* 807C2960  7F C3 F3 78 */	mr r3, r30
/* 807C2964  38 80 00 20 */	li r4, 0x20
/* 807C2968  48 00 0F 55 */	bl checkBck__8daE_VA_cFi
/* 807C296C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C2970  41 82 00 20 */	beq lbl_807C2990
lbl_807C2974:
/* 807C2974  38 7E 13 98 */	addi r3, r30, 0x1398
/* 807C2978  38 80 F8 00 */	li r4, -2048
/* 807C297C  38 A0 00 08 */	li r5, 8
/* 807C2980  38 C0 00 80 */	li r6, 0x80
/* 807C2984  38 E0 00 40 */	li r7, 0x40
/* 807C2988  4B AA DB B9 */	bl cLib_addCalcAngleS__FPsssss
/* 807C298C  48 00 00 4C */	b lbl_807C29D8
lbl_807C2990:
/* 807C2990  7F C3 F3 78 */	mr r3, r30
/* 807C2994  38 80 00 21 */	li r4, 0x21
/* 807C2998  48 00 0F 25 */	bl checkBck__8daE_VA_cFi
/* 807C299C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C29A0  41 82 00 20 */	beq lbl_807C29C0
/* 807C29A4  38 7E 13 98 */	addi r3, r30, 0x1398
/* 807C29A8  38 80 E8 00 */	li r4, -6144
/* 807C29AC  38 A0 00 08 */	li r5, 8
/* 807C29B0  38 C0 00 80 */	li r6, 0x80
/* 807C29B4  38 E0 00 40 */	li r7, 0x40
/* 807C29B8  4B AA DB 89 */	bl cLib_addCalcAngleS__FPsssss
/* 807C29BC  48 00 00 1C */	b lbl_807C29D8
lbl_807C29C0:
/* 807C29C0  38 7E 13 98 */	addi r3, r30, 0x1398
/* 807C29C4  38 80 E8 00 */	li r4, -6144
/* 807C29C8  38 A0 00 08 */	li r5, 8
/* 807C29CC  38 C0 01 00 */	li r6, 0x100
/* 807C29D0  38 E0 00 40 */	li r7, 0x40
/* 807C29D4  4B AA DB 6D */	bl cLib_addCalcAngleS__FPsssss
lbl_807C29D8:
/* 807C29D8  88 1E 13 91 */	lbz r0, 0x1391(r30)
/* 807C29DC  98 1E 13 92 */	stb r0, 0x1392(r30)
/* 807C29E0  48 00 00 54 */	b lbl_807C2A34
lbl_807C29E4:
/* 807C29E4  88 1E 13 92 */	lbz r0, 0x1392(r30)
/* 807C29E8  98 1E 13 91 */	stb r0, 0x1391(r30)
/* 807C29EC  38 7E 13 94 */	addi r3, r30, 0x1394
/* 807C29F0  38 80 00 00 */	li r4, 0
/* 807C29F4  38 A0 00 08 */	li r5, 8
/* 807C29F8  38 C0 01 00 */	li r6, 0x100
/* 807C29FC  38 E0 00 40 */	li r7, 0x40
/* 807C2A00  4B AA DB 41 */	bl cLib_addCalcAngleS__FPsssss
/* 807C2A04  38 7E 13 96 */	addi r3, r30, 0x1396
/* 807C2A08  38 80 00 00 */	li r4, 0
/* 807C2A0C  38 A0 00 08 */	li r5, 8
/* 807C2A10  38 C0 01 00 */	li r6, 0x100
/* 807C2A14  38 E0 00 40 */	li r7, 0x40
/* 807C2A18  4B AA DB 29 */	bl cLib_addCalcAngleS__FPsssss
/* 807C2A1C  38 7E 13 98 */	addi r3, r30, 0x1398
/* 807C2A20  38 80 00 00 */	li r4, 0
/* 807C2A24  38 A0 00 08 */	li r5, 8
/* 807C2A28  38 C0 01 00 */	li r6, 0x100
/* 807C2A2C  38 E0 00 40 */	li r7, 0x40
/* 807C2A30  4B AA DB 11 */	bl cLib_addCalcAngleS__FPsssss
lbl_807C2A34:
/* 807C2A34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C2A38  83 C1 00 08 */	lwz r30, 8(r1)
/* 807C2A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C2A40  7C 08 03 A6 */	mtlr r0
/* 807C2A44  38 21 00 10 */	addi r1, r1, 0x10
/* 807C2A48  4E 80 00 20 */	blr 
