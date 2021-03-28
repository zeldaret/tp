lbl_80475238:
/* 80475238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047523C  7C 08 02 A6 */	mflr r0
/* 80475240  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475248  7C 7F 1B 78 */	mr r31, r3
/* 8047524C  38 7F 05 74 */	addi r3, r31, 0x574
/* 80475250  4B C0 21 54 */	b ClrMoveBGOnly__9dBgS_AcchFv
/* 80475254  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80475258  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8047525C  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80475260  80 1F 07 C8 */	lwz r0, 0x7c8(r31)
/* 80475264  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80475268  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 8047526C  80 1F 07 E0 */	lwz r0, 0x7e0(r31)
/* 80475270  60 00 00 01 */	ori r0, r0, 1
/* 80475274  90 1F 07 E0 */	stw r0, 0x7e0(r31)
/* 80475278  80 1F 07 F4 */	lwz r0, 0x7f4(r31)
/* 8047527C  60 00 00 01 */	ori r0, r0, 1
/* 80475280  90 1F 07 F4 */	stw r0, 0x7f4(r31)
/* 80475284  80 1F 07 F4 */	lwz r0, 0x7f4(r31)
/* 80475288  60 00 00 10 */	ori r0, r0, 0x10
/* 8047528C  90 1F 07 F4 */	stw r0, 0x7f4(r31)
/* 80475290  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80475294  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80475298  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8047529C  38 00 00 00 */	li r0, 0
/* 804752A0  98 1F 0D B5 */	stb r0, 0xdb5(r31)
/* 804752A4  7F E3 FB 78 */	mr r3, r31
/* 804752A8  4B FF DB B5 */	bl calc_gravity__12daObjCarry_cFv
/* 804752AC  D0 3F 05 30 */	stfs f1, 0x530(r31)
/* 804752B0  3C 60 80 48 */	lis r3, lit_6043@ha
/* 804752B4  C0 03 A4 34 */	lfs f0, lit_6043@l(r3)
/* 804752B8  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 804752BC  7F E3 FB 78 */	mr r3, r31
/* 804752C0  4B FF A3 E5 */	bl data__12daObjCarry_cFv
/* 804752C4  88 03 00 36 */	lbz r0, 0x36(r3)
/* 804752C8  98 1F 07 A0 */	stb r0, 0x7a0(r31)
/* 804752CC  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 804752D0  4B C0 F2 78 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 804752D4  38 7F 0D 28 */	addi r3, r31, 0xd28
/* 804752D8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804752DC  4B CE 92 D4 */	b initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 804752E0  88 7F 0C F0 */	lbz r3, 0xcf0(r31)
/* 804752E4  2C 03 00 03 */	cmpwi r3, 3
/* 804752E8  40 82 00 10 */	bne lbl_804752F8
/* 804752EC  38 7F 05 88 */	addi r3, r31, 0x588
/* 804752F0  4B C0 3C B0 */	b ClrIronBall__16dBgS_PolyPassChkFv
/* 804752F4  48 00 00 44 */	b lbl_80475338
lbl_804752F8:
/* 804752F8  38 00 00 00 */	li r0, 0
/* 804752FC  2C 03 00 08 */	cmpwi r3, 8
/* 80475300  41 82 00 0C */	beq lbl_8047530C
/* 80475304  2C 03 00 09 */	cmpwi r3, 9
/* 80475308  40 82 00 08 */	bne lbl_80475310
lbl_8047530C:
/* 8047530C  38 00 00 01 */	li r0, 1
lbl_80475310:
/* 80475310  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80475314  40 82 00 0C */	bne lbl_80475320
/* 80475318  28 03 00 0B */	cmplwi r3, 0xb
/* 8047531C  40 82 00 1C */	bne lbl_80475338
lbl_80475320:
/* 80475320  38 7F 0D 88 */	addi r3, r31, 0xd88
/* 80475324  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040009@ha */
/* 80475328  38 84 00 09 */	addi r4, r4, 0x0009 /* 0x00040009@l */
/* 8047532C  38 A0 00 00 */	li r5, 0
/* 80475330  38 C0 00 00 */	li r6, 0
/* 80475334  4B E4 91 70 */	b startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_80475338:
/* 80475338  38 00 00 0C */	li r0, 0xc
/* 8047533C  98 1F 0C F1 */	stb r0, 0xcf1(r31)
/* 80475340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475348  7C 08 03 A6 */	mtlr r0
/* 8047534C  38 21 00 10 */	addi r1, r1, 0x10
/* 80475350  4E 80 00 20 */	blr 
