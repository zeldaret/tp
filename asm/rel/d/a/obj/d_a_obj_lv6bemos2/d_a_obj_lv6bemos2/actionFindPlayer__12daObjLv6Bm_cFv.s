lbl_80C80538:
/* 80C80538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8053C  7C 08 02 A6 */	mflr r0
/* 80C80540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C80544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C80548  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8054C  7C 7F 1B 78 */	mr r31, r3
/* 80C80550  88 03 0A 16 */	lbz r0, 0xa16(r3)
/* 80C80554  2C 00 00 01 */	cmpwi r0, 1
/* 80C80558  41 82 00 B8 */	beq lbl_80C80610
/* 80C8055C  40 80 00 10 */	bge lbl_80C8056C
/* 80C80560  2C 00 00 00 */	cmpwi r0, 0
/* 80C80564  40 80 00 14 */	bge lbl_80C80578
/* 80C80568  48 00 01 04 */	b lbl_80C8066C
lbl_80C8056C:
/* 80C8056C  2C 00 00 03 */	cmpwi r0, 3
/* 80C80570  40 80 00 FC */	bge lbl_80C8066C
/* 80C80574  48 00 00 C8 */	b lbl_80C8063C
lbl_80C80578:
/* 80C80578  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8057C  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C80580  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80C80584  4B 39 A1 8D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C80588  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80C8058C  7C 00 18 50 */	subf r0, r0, r3
/* 80C80590  B0 1F 09 C4 */	sth r0, 0x9c4(r31)
/* 80C80594  A8 7F 09 DA */	lha r3, 0x9da(r31)
/* 80C80598  A8 1F 09 C6 */	lha r0, 0x9c6(r31)
/* 80C8059C  7C 03 00 50 */	subf r0, r3, r0
/* 80C805A0  B0 1F 09 C8 */	sth r0, 0x9c8(r31)
/* 80C805A4  A8 7F 09 CA */	lha r3, 0x9ca(r31)
/* 80C805A8  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80C805AC  7C 03 02 14 */	add r0, r3, r0
/* 80C805B0  B0 1F 09 CC */	sth r0, 0x9cc(r31)
/* 80C805B4  A8 7F 09 CE */	lha r3, 0x9ce(r31)
/* 80C805B8  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80C805BC  7C 03 02 14 */	add r0, r3, r0
/* 80C805C0  B0 1F 09 D0 */	sth r0, 0x9d0(r31)
/* 80C805C4  A8 7F 09 D2 */	lha r3, 0x9d2(r31)
/* 80C805C8  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80C805CC  7C 03 02 14 */	add r0, r3, r0
/* 80C805D0  B0 1F 09 D4 */	sth r0, 0x9d4(r31)
/* 80C805D4  7F E3 FB 78 */	mr r3, r31
/* 80C805D8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80C805DC  4B 39 A1 35 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C805E0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80C805E4  A8 1F 09 C2 */	lha r0, 0x9c2(r31)
/* 80C805E8  7C 00 18 50 */	subf r0, r0, r3
/* 80C805EC  7C 04 00 50 */	subf r0, r4, r0
/* 80C805F0  7C 03 07 34 */	extsh r3, r0
/* 80C805F4  4B 6E 4A DD */	bl abs
/* 80C805F8  7C 60 07 34 */	extsh r0, r3
/* 80C805FC  2C 00 07 D0 */	cmpwi r0, 0x7d0
/* 80C80600  40 80 00 6C */	bge lbl_80C8066C
/* 80C80604  38 00 00 01 */	li r0, 1
/* 80C80608  98 1F 0A 16 */	stb r0, 0xa16(r31)
/* 80C8060C  48 00 00 60 */	b lbl_80C8066C
lbl_80C80610:
/* 80C80610  A8 1F 09 C2 */	lha r0, 0x9c2(r31)
/* 80C80614  B0 1F 09 C4 */	sth r0, 0x9c4(r31)
/* 80C80618  38 00 00 00 */	li r0, 0
/* 80C8061C  B0 1F 09 D8 */	sth r0, 0x9d8(r31)
/* 80C80620  B0 1F 09 D6 */	sth r0, 0x9d6(r31)
/* 80C80624  3C 60 80 C8 */	lis r3, lit_4277@ha /* 0x80C81C70@ha */
/* 80C80628  C0 03 1C 70 */	lfs f0, lit_4277@l(r3)  /* 0x80C81C70@l */
/* 80C8062C  D0 1F 0A 28 */	stfs f0, 0xa28(r31)
/* 80C80630  38 00 00 02 */	li r0, 2
/* 80C80634  98 1F 0A 16 */	stb r0, 0xa16(r31)
/* 80C80638  48 00 00 34 */	b lbl_80C8066C
lbl_80C8063C:
/* 80C8063C  A8 1F 09 C2 */	lha r0, 0x9c2(r31)
/* 80C80640  B0 1F 09 C4 */	sth r0, 0x9c4(r31)
/* 80C80644  38 00 00 00 */	li r0, 0
/* 80C80648  B0 1F 09 D8 */	sth r0, 0x9d8(r31)
/* 80C8064C  B0 1F 09 D6 */	sth r0, 0x9d6(r31)
/* 80C80650  3C 80 80 C8 */	lis r4, lit_4173@ha /* 0x80C81C54@ha */
/* 80C80654  C0 24 1C 54 */	lfs f1, lit_4173@l(r4)  /* 0x80C81C54@l */
/* 80C80658  C0 1F 0A 28 */	lfs f0, 0xa28(r31)
/* 80C8065C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C80660  40 82 00 0C */	bne lbl_80C8066C
/* 80C80664  98 1F 0A 11 */	stb r0, 0xa11(r31)
/* 80C80668  48 00 00 1D */	bl initActionAttack__12daObjLv6Bm_cFv
lbl_80C8066C:
/* 80C8066C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C80670  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C80674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C80678  7C 08 03 A6 */	mtlr r0
/* 80C8067C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C80680  4E 80 00 20 */	blr 
