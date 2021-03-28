lbl_800AD724:
/* 800AD724  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800AD728  7C 08 02 A6 */	mflr r0
/* 800AD72C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800AD730  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800AD734  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800AD738  39 61 00 20 */	addi r11, r1, 0x20
/* 800AD73C  48 2B 4A A1 */	bl _savegpr_29
/* 800AD740  7C 7D 1B 78 */	mr r29, r3
/* 800AD744  7C 9E 23 78 */	mr r30, r4
/* 800AD748  FF E0 08 90 */	fmr f31, f1
/* 800AD74C  3B E0 00 00 */	li r31, 0
/* 800AD750  38 60 00 00 */	li r3, 0
/* 800AD754  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800AD758  28 00 00 62 */	cmplwi r0, 0x62
/* 800AD75C  41 82 00 10 */	beq lbl_800AD76C
/* 800AD760  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800AD764  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800AD768  40 82 00 08 */	bne lbl_800AD770
lbl_800AD76C:
/* 800AD76C  38 60 00 01 */	li r3, 1
lbl_800AD770:
/* 800AD770  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AD774  41 82 00 18 */	beq lbl_800AD78C
/* 800AD778  38 00 00 00 */	li r0, 0
/* 800AD77C  98 1D 2F A3 */	stb r0, 0x2fa3(r29)
/* 800AD780  38 7D 28 44 */	addi r3, r29, 0x2844
/* 800AD784  48 0B 15 79 */	bl clearData__16daPy_actorKeep_cFv
/* 800AD788  48 00 00 4C */	b lbl_800AD7D4
lbl_800AD78C:
/* 800AD78C  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800AD790  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800AD794  40 82 00 40 */	bne lbl_800AD7D4
/* 800AD798  7F A3 EB 78 */	mr r3, r29
/* 800AD79C  48 03 64 D1 */	bl checkGrabAnime__9daAlink_cCFv
/* 800AD7A0  2C 03 00 00 */	cmpwi r3, 0
/* 800AD7A4  40 82 00 2C */	bne lbl_800AD7D0
/* 800AD7A8  38 60 00 00 */	li r3, 0
/* 800AD7AC  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800AD7B0  28 00 02 DA */	cmplwi r0, 0x2da
/* 800AD7B4  41 82 00 10 */	beq lbl_800AD7C4
/* 800AD7B8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800AD7BC  28 00 02 DB */	cmplwi r0, 0x2db
/* 800AD7C0  40 82 00 08 */	bne lbl_800AD7C8
lbl_800AD7C4:
/* 800AD7C4  38 60 00 01 */	li r3, 1
lbl_800AD7C8:
/* 800AD7C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AD7CC  41 82 00 08 */	beq lbl_800AD7D4
lbl_800AD7D0:
/* 800AD7D0  3B E0 00 01 */	li r31, 1
lbl_800AD7D4:
/* 800AD7D4  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800AD7D8  28 00 02 62 */	cmplwi r0, 0x262
/* 800AD7DC  40 82 00 14 */	bne lbl_800AD7F0
/* 800AD7E0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800AD7E4  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 800AD7E8  90 1D 05 70 */	stw r0, 0x570(r29)
/* 800AD7EC  48 00 00 30 */	b lbl_800AD81C
lbl_800AD7F0:
/* 800AD7F0  38 60 00 00 */	li r3, 0
/* 800AD7F4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800AD7F8  28 00 02 BD */	cmplwi r0, 0x2bd
/* 800AD7FC  41 82 00 0C */	beq lbl_800AD808
/* 800AD800  28 00 02 BE */	cmplwi r0, 0x2be
/* 800AD804  40 82 00 08 */	bne lbl_800AD80C
lbl_800AD808:
/* 800AD808  38 60 00 01 */	li r3, 1
lbl_800AD80C:
/* 800AD80C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AD810  41 82 00 0C */	beq lbl_800AD81C
/* 800AD814  7F A3 EB 78 */	mr r3, r29
/* 800AD818  48 08 B3 ED */	bl resetWolfEnemyBiteAll__9daAlink_cFv
lbl_800AD81C:
/* 800AD81C  38 00 00 00 */	li r0, 0
/* 800AD820  57 C3 18 38 */	slwi r3, r30, 3
/* 800AD824  7C 7D 1A 14 */	add r3, r29, r3
/* 800AD828  90 03 1F 44 */	stw r0, 0x1f44(r3)
/* 800AD82C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AD830  D0 03 1F 40 */	stfs f0, 0x1f40(r3)
/* 800AD834  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 800AD838  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 800AD83C  1C 1E 00 14 */	mulli r0, r30, 0x14
/* 800AD840  7C 7D 02 14 */	add r3, r29, r0
/* 800AD844  B0 83 1F 94 */	sth r4, 0x1f94(r3)
/* 800AD848  1C 7E 00 18 */	mulli r3, r30, 0x18
/* 800AD84C  38 63 20 18 */	addi r3, r3, 0x2018
/* 800AD850  7C 7D 1A 14 */	add r3, r29, r3
/* 800AD854  38 80 00 00 */	li r4, 0
/* 800AD858  48 27 AB A5 */	bl init__12J3DFrameCtrlFs
/* 800AD85C  7F A3 EB 78 */	mr r3, r29
/* 800AD860  FC 20 F8 90 */	fmr f1, f31
/* 800AD864  4B FF FA 75 */	bl setUpperAnimeMorf__9daAlink_cFf
/* 800AD868  2C 1E 00 02 */	cmpwi r30, 2
/* 800AD86C  40 82 00 0C */	bne lbl_800AD878
/* 800AD870  7F A3 EB 78 */	mr r3, r29
/* 800AD874  48 00 24 49 */	bl resetFacePriAnime__9daAlink_cFv
lbl_800AD878:
/* 800AD878  38 00 00 FF */	li r0, 0xff
/* 800AD87C  98 1D 2F 96 */	stb r0, 0x2f96(r29)
/* 800AD880  98 1D 2F 97 */	stb r0, 0x2f97(r29)
/* 800AD884  7F A3 EB 78 */	mr r3, r29
/* 800AD888  48 03 12 5D */	bl deleteArrow__9daAlink_cFv
/* 800AD88C  7F A3 EB 78 */	mr r3, r29
/* 800AD890  48 03 23 E1 */	bl setBowNormalAnime__9daAlink_cFv
/* 800AD894  80 9D 05 74 */	lwz r4, 0x574(r29)
/* 800AD898  3C 60 EB E9 */	lis r3, 0xEBE9 /* 0xEBE8FFB5@ha */
/* 800AD89C  38 03 FF B5 */	addi r0, r3, 0xFFB5 /* 0xEBE8FFB5@l */
/* 800AD8A0  7C 80 00 38 */	and r0, r4, r0
/* 800AD8A4  90 1D 05 74 */	stw r0, 0x574(r29)
/* 800AD8A8  2C 1F 00 00 */	cmpwi r31, 0
/* 800AD8AC  41 82 00 0C */	beq lbl_800AD8B8
/* 800AD8B0  7F A3 EB 78 */	mr r3, r29
/* 800AD8B4  48 03 73 21 */	bl freeGrabItem__9daAlink_cFv
lbl_800AD8B8:
/* 800AD8B8  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800AD8BC  54 00 02 0C */	rlwinm r0, r0, 0, 8, 6
/* 800AD8C0  90 1D 05 70 */	stw r0, 0x570(r29)
/* 800AD8C4  7F A3 EB 78 */	mr r3, r29
/* 800AD8C8  38 80 00 00 */	li r4, 0
/* 800AD8CC  48 00 98 C5 */	bl cancelItemUseQuake__9daAlink_cFi
/* 800AD8D0  38 60 00 01 */	li r3, 1
/* 800AD8D4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800AD8D8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800AD8DC  39 61 00 20 */	addi r11, r1, 0x20
/* 800AD8E0  48 2B 49 49 */	bl _restgpr_29
/* 800AD8E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800AD8E8  7C 08 03 A6 */	mtlr r0
/* 800AD8EC  38 21 00 30 */	addi r1, r1, 0x30
/* 800AD8F0  4E 80 00 20 */	blr 
