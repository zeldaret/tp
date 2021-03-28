lbl_806EE978:
/* 806EE978  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806EE97C  7C 08 02 A6 */	mflr r0
/* 806EE980  90 01 00 44 */	stw r0, 0x44(r1)
/* 806EE984  39 61 00 40 */	addi r11, r1, 0x40
/* 806EE988  4B C7 38 48 */	b _savegpr_26
/* 806EE98C  7C 7C 1B 78 */	mr r28, r3
/* 806EE990  80 03 06 C0 */	lwz r0, 0x6c0(r3)
/* 806EE994  2C 00 00 01 */	cmpwi r0, 1
/* 806EE998  40 82 00 10 */	bne lbl_806EE9A8
/* 806EE99C  80 1C 06 C8 */	lwz r0, 0x6c8(r28)
/* 806EE9A0  2C 00 00 04 */	cmpwi r0, 4
/* 806EE9A4  40 80 04 54 */	bge lbl_806EEDF8
lbl_806EE9A8:
/* 806EE9A8  38 7C 0D 0C */	addi r3, r28, 0xd0c
/* 806EE9AC  4B 99 5A B4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806EE9B0  28 03 00 00 */	cmplwi r3, 0
/* 806EE9B4  41 82 00 84 */	beq lbl_806EEA38
/* 806EE9B8  38 7C 0D 0C */	addi r3, r28, 0xd0c
/* 806EE9BC  4B 99 5B 3C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806EE9C0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806EE9C4  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 806EE9C8  41 82 00 70 */	beq lbl_806EEA38
/* 806EE9CC  38 7C 0D 0C */	addi r3, r28, 0xd0c
/* 806EE9D0  81 9C 0D 48 */	lwz r12, 0xd48(r28)
/* 806EE9D4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806EE9D8  7D 89 03 A6 */	mtctr r12
/* 806EE9DC  4E 80 04 21 */	bctrl 
/* 806EE9E0  80 1C 06 C0 */	lwz r0, 0x6c0(r28)
/* 806EE9E4  2C 00 00 07 */	cmpwi r0, 7
/* 806EE9E8  40 82 00 14 */	bne lbl_806EE9FC
/* 806EE9EC  7F 83 E3 78 */	mr r3, r28
/* 806EE9F0  38 80 00 08 */	li r4, 8
/* 806EE9F4  4B FF C0 E9 */	bl setActionMode__8daE_HZ_cFi
/* 806EE9F8  48 00 00 28 */	b lbl_806EEA20
lbl_806EE9FC:
/* 806EE9FC  2C 00 00 03 */	cmpwi r0, 3
/* 806EEA00  40 82 00 14 */	bne lbl_806EEA14
/* 806EEA04  7F 83 E3 78 */	mr r3, r28
/* 806EEA08  38 80 00 09 */	li r4, 9
/* 806EEA0C  4B FF C0 D1 */	bl setActionMode__8daE_HZ_cFi
/* 806EEA10  48 00 00 10 */	b lbl_806EEA20
lbl_806EEA14:
/* 806EEA14  7F 83 E3 78 */	mr r3, r28
/* 806EEA18  38 80 00 04 */	li r4, 4
/* 806EEA1C  4B FF C0 C1 */	bl setActionMode__8daE_HZ_cFi
lbl_806EEA20:
/* 806EEA20  7F 83 E3 78 */	mr r3, r28
/* 806EEA24  38 80 00 00 */	li r4, 0
/* 806EEA28  4B FF C6 7D */	bl setTgSetBit__8daE_HZ_cFi
/* 806EEA2C  38 00 00 0A */	li r0, 0xa
/* 806EEA30  B0 1C 06 D4 */	sth r0, 0x6d4(r28)
/* 806EEA34  48 00 03 C4 */	b lbl_806EEDF8
lbl_806EEA38:
/* 806EEA38  A8 1C 06 D4 */	lha r0, 0x6d4(r28)
/* 806EEA3C  2C 00 00 00 */	cmpwi r0, 0
/* 806EEA40  40 82 03 B8 */	bne lbl_806EEDF8
/* 806EEA44  38 7C 0C EC */	addi r3, r28, 0xcec
/* 806EEA48  4B 99 4D E8 */	b Move__10dCcD_GSttsFv
/* 806EEA4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806EEA50  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806EEA54  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806EEA58  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806EEA5C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806EEA60  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806EEA64  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806EEA68  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806EEA6C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806EEA70  3B C0 00 00 */	li r30, 0
/* 806EEA74  3B A0 00 01 */	li r29, 1
/* 806EEA78  3B 60 01 38 */	li r27, 0x138
lbl_806EEA7C:
/* 806EEA7C  3B 5B 0D 0C */	addi r26, r27, 0xd0c
/* 806EEA80  7F 5C D2 14 */	add r26, r28, r26
/* 806EEA84  7F 43 D3 78 */	mr r3, r26
/* 806EEA88  4B 99 59 D8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806EEA8C  28 03 00 00 */	cmplwi r3, 0
/* 806EEA90  41 82 03 58 */	beq lbl_806EEDE8
/* 806EEA94  7F 43 D3 78 */	mr r3, r26
/* 806EEA98  4B 99 5A 60 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806EEA9C  90 7C 11 EC */	stw r3, 0x11ec(r28)
/* 806EEAA0  80 1C 06 C0 */	lwz r0, 0x6c0(r28)
/* 806EEAA4  2C 00 00 02 */	cmpwi r0, 2
/* 806EEAA8  40 82 00 1C */	bne lbl_806EEAC4
/* 806EEAAC  38 00 00 2A */	li r0, 0x2a
/* 806EEAB0  90 1C 12 04 */	stw r0, 0x1204(r28)
/* 806EEAB4  38 00 00 00 */	li r0, 0
/* 806EEAB8  80 7C 11 EC */	lwz r3, 0x11ec(r28)
/* 806EEABC  98 03 00 14 */	stb r0, 0x14(r3)
/* 806EEAC0  48 00 00 0C */	b lbl_806EEACC
lbl_806EEAC4:
/* 806EEAC4  38 00 00 00 */	li r0, 0
/* 806EEAC8  90 1C 12 04 */	stw r0, 0x1204(r28)
lbl_806EEACC:
/* 806EEACC  80 7C 11 EC */	lwz r3, 0x11ec(r28)
/* 806EEAD0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 806EEAD4  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 806EEAD8  41 82 00 34 */	beq lbl_806EEB0C
/* 806EEADC  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040018@ha */
/* 806EEAE0  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00040018@l */
/* 806EEAE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806EEAE8  38 7C 05 C8 */	addi r3, r28, 0x5c8
/* 806EEAEC  38 81 00 0C */	addi r4, r1, 0xc
/* 806EEAF0  38 A0 00 2D */	li r5, 0x2d
/* 806EEAF4  38 C0 FF FF */	li r6, -1
/* 806EEAF8  81 9C 05 C8 */	lwz r12, 0x5c8(r28)
/* 806EEAFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EEB00  7D 89 03 A6 */	mtctr r12
/* 806EEB04  4E 80 04 21 */	bctrl 
/* 806EEB08  48 00 02 F0 */	b lbl_806EEDF8
lbl_806EEB0C:
/* 806EEB0C  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 806EEB10  41 82 00 10 */	beq lbl_806EEB20
/* 806EEB14  3B C0 00 01 */	li r30, 1
/* 806EEB18  38 00 00 00 */	li r0, 0
/* 806EEB1C  B0 1C 05 62 */	sth r0, 0x562(r28)
lbl_806EEB20:
/* 806EEB20  7F 83 E3 78 */	mr r3, r28
/* 806EEB24  38 9C 11 EC */	addi r4, r28, 0x11ec
/* 806EEB28  4B 99 90 DC */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806EEB2C  80 7C 11 EC */	lwz r3, 0x11ec(r28)
/* 806EEB30  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806EEB34  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 806EEB38  41 82 00 10 */	beq lbl_806EEB48
/* 806EEB3C  38 00 00 14 */	li r0, 0x14
/* 806EEB40  B0 1C 06 D4 */	sth r0, 0x6d4(r28)
/* 806EEB44  48 00 00 28 */	b lbl_806EEB6C
lbl_806EEB48:
/* 806EEB48  4B 99 88 8C */	b cc_pl_cut_bit_get__Fv
/* 806EEB4C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 806EEB50  28 00 00 80 */	cmplwi r0, 0x80
/* 806EEB54  40 82 00 10 */	bne lbl_806EEB64
/* 806EEB58  38 00 00 14 */	li r0, 0x14
/* 806EEB5C  B0 1C 06 D4 */	sth r0, 0x6d4(r28)
/* 806EEB60  48 00 00 0C */	b lbl_806EEB6C
lbl_806EEB64:
/* 806EEB64  38 00 00 0A */	li r0, 0xa
/* 806EEB68  B0 1C 06 D4 */	sth r0, 0x6d4(r28)
lbl_806EEB6C:
/* 806EEB6C  A0 1C 12 08 */	lhz r0, 0x1208(r28)
/* 806EEB70  28 00 00 01 */	cmplwi r0, 1
/* 806EEB74  41 81 00 0C */	bgt lbl_806EEB80
/* 806EEB78  38 00 00 0A */	li r0, 0xa
/* 806EEB7C  B0 1C 06 D4 */	sth r0, 0x6d4(r28)
lbl_806EEB80:
/* 806EEB80  38 7C 0E 44 */	addi r3, r28, 0xe44
/* 806EEB84  81 9C 0E 80 */	lwz r12, 0xe80(r28)
/* 806EEB88  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806EEB8C  7D 89 03 A6 */	mtctr r12
/* 806EEB90  4E 80 04 21 */	bctrl 
/* 806EEB94  38 7C 0F 7C */	addi r3, r28, 0xf7c
/* 806EEB98  81 9C 0F B8 */	lwz r12, 0xfb8(r28)
/* 806EEB9C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806EEBA0  7D 89 03 A6 */	mtctr r12
/* 806EEBA4  4E 80 04 21 */	bctrl 
/* 806EEBA8  38 7C 10 B4 */	addi r3, r28, 0x10b4
/* 806EEBAC  81 9C 10 F0 */	lwz r12, 0x10f0(r28)
/* 806EEBB0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806EEBB4  7D 89 03 A6 */	mtctr r12
/* 806EEBB8  4E 80 04 21 */	bctrl 
/* 806EEBBC  80 9C 06 C0 */	lwz r4, 0x6c0(r28)
/* 806EEBC0  2C 04 00 02 */	cmpwi r4, 2
/* 806EEBC4  40 82 00 14 */	bne lbl_806EEBD8
/* 806EEBC8  7F 83 E3 78 */	mr r3, r28
/* 806EEBCC  38 80 00 01 */	li r4, 1
/* 806EEBD0  4B FF BF 0D */	bl setActionMode__8daE_HZ_cFi
/* 806EEBD4  48 00 02 24 */	b lbl_806EEDF8
lbl_806EEBD8:
/* 806EEBD8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806EEBDC  88 03 05 69 */	lbz r0, 0x569(r3)
/* 806EEBE0  28 00 00 04 */	cmplwi r0, 4
/* 806EEBE4  40 80 00 14 */	bge lbl_806EEBF8
/* 806EEBE8  80 7C 11 EC */	lwz r3, 0x11ec(r28)
/* 806EEBEC  88 03 00 77 */	lbz r0, 0x77(r3)
/* 806EEBF0  2C 00 00 01 */	cmpwi r0, 1
/* 806EEBF4  40 82 00 08 */	bne lbl_806EEBFC
lbl_806EEBF8:
/* 806EEBF8  3B C0 00 01 */	li r30, 1
lbl_806EEBFC:
/* 806EEBFC  A8 1C 05 62 */	lha r0, 0x562(r28)
/* 806EEC00  2C 00 00 01 */	cmpwi r0, 1
/* 806EEC04  40 80 00 44 */	bge lbl_806EEC48
/* 806EEC08  38 00 00 00 */	li r0, 0
/* 806EEC0C  90 1C 06 CC */	stw r0, 0x6cc(r28)
/* 806EEC10  2C 1E 00 00 */	cmpwi r30, 0
/* 806EEC14  41 82 00 0C */	beq lbl_806EEC20
/* 806EEC18  38 00 00 01 */	li r0, 1
/* 806EEC1C  90 1C 06 CC */	stw r0, 0x6cc(r28)
lbl_806EEC20:
/* 806EEC20  80 1C 06 C0 */	lwz r0, 0x6c0(r28)
/* 806EEC24  2C 00 00 03 */	cmpwi r0, 3
/* 806EEC28  40 82 00 10 */	bne lbl_806EEC38
/* 806EEC2C  80 7C 06 CC */	lwz r3, 0x6cc(r28)
/* 806EEC30  38 03 00 02 */	addi r0, r3, 2
/* 806EEC34  90 1C 06 CC */	stw r0, 0x6cc(r28)
lbl_806EEC38:
/* 806EEC38  7F 83 E3 78 */	mr r3, r28
/* 806EEC3C  38 80 00 06 */	li r4, 6
/* 806EEC40  4B FF BE 9D */	bl setActionMode__8daE_HZ_cFi
/* 806EEC44  48 00 01 B4 */	b lbl_806EEDF8
lbl_806EEC48:
/* 806EEC48  2C 04 00 03 */	cmpwi r4, 3
/* 806EEC4C  40 82 01 58 */	bne lbl_806EEDA4
/* 806EEC50  2C 1E 00 00 */	cmpwi r30, 0
/* 806EEC54  41 82 00 1C */	beq lbl_806EEC70
/* 806EEC58  38 00 00 01 */	li r0, 1
/* 806EEC5C  90 1C 06 CC */	stw r0, 0x6cc(r28)
/* 806EEC60  7F 83 E3 78 */	mr r3, r28
/* 806EEC64  38 80 00 05 */	li r4, 5
/* 806EEC68  4B FF BE 75 */	bl setActionMode__8daE_HZ_cFi
/* 806EEC6C  48 00 01 8C */	b lbl_806EEDF8
lbl_806EEC70:
/* 806EEC70  38 7C 0F 48 */	addi r3, r28, 0xf48
/* 806EEC74  81 9C 0F 64 */	lwz r12, 0xf64(r28)
/* 806EEC78  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 806EEC7C  7D 89 03 A6 */	mtctr r12
/* 806EEC80  4E 80 04 21 */	bctrl 
/* 806EEC84  38 81 00 10 */	addi r4, r1, 0x10
/* 806EEC88  4B B8 1F 7C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806EEC8C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806EEC90  7C 00 18 50 */	subf r0, r0, r3
/* 806EEC94  7C 1F 07 34 */	extsh r31, r0
/* 806EEC98  2C 1D 00 01 */	cmpwi r29, 1
/* 806EEC9C  40 82 00 90 */	bne lbl_806EED2C
/* 806EECA0  7F E3 FB 78 */	mr r3, r31
/* 806EECA4  4B C7 64 2C */	b abs
/* 806EECA8  2C 03 40 00 */	cmpwi r3, 0x4000
/* 806EECAC  41 80 00 34 */	blt lbl_806EECE0
/* 806EECB0  2C 1E 00 00 */	cmpwi r30, 0
/* 806EECB4  41 82 00 20 */	beq lbl_806EECD4
/* 806EECB8  38 00 50 00 */	li r0, 0x5000
/* 806EECBC  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 806EECC0  38 00 C0 00 */	li r0, -16384
/* 806EECC4  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 806EECC8  38 00 00 00 */	li r0, 0
/* 806EECCC  B0 1C 06 A0 */	sth r0, 0x6a0(r28)
/* 806EECD0  48 00 00 4C */	b lbl_806EED1C
lbl_806EECD4:
/* 806EECD4  38 00 30 00 */	li r0, 0x3000
/* 806EECD8  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 806EECDC  48 00 00 40 */	b lbl_806EED1C
lbl_806EECE0:
/* 806EECE0  2C 1E 00 00 */	cmpwi r30, 0
/* 806EECE4  41 82 00 20 */	beq lbl_806EED04
/* 806EECE8  38 00 D0 00 */	li r0, -12288
/* 806EECEC  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 806EECF0  38 00 E0 00 */	li r0, -8192
/* 806EECF4  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 806EECF8  38 00 F0 00 */	li r0, -4096
/* 806EECFC  B0 1C 06 A0 */	sth r0, 0x6a0(r28)
/* 806EED00  48 00 00 1C */	b lbl_806EED1C
lbl_806EED04:
/* 806EED04  38 00 E0 00 */	li r0, -8192
/* 806EED08  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 806EED0C  38 00 F0 00 */	li r0, -4096
/* 806EED10  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 806EED14  38 00 F8 00 */	li r0, -2048
/* 806EED18  B0 1C 06 A0 */	sth r0, 0x6a0(r28)
lbl_806EED1C:
/* 806EED1C  3C 60 80 6F */	lis r3, lit_3967@ha
/* 806EED20  C0 03 08 64 */	lfs f0, lit_3967@l(r3)
/* 806EED24  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806EED28  48 00 00 30 */	b lbl_806EED58
lbl_806EED2C:
/* 806EED2C  2C 1E 00 00 */	cmpwi r30, 0
/* 806EED30  41 82 00 20 */	beq lbl_806EED50
/* 806EED34  38 00 50 00 */	li r0, 0x5000
/* 806EED38  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 806EED3C  38 00 C0 00 */	li r0, -16384
/* 806EED40  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 806EED44  38 00 00 00 */	li r0, 0
/* 806EED48  B0 1C 06 A0 */	sth r0, 0x6a0(r28)
/* 806EED4C  48 00 00 0C */	b lbl_806EED58
lbl_806EED50:
/* 806EED50  38 00 30 00 */	li r0, 0x3000
/* 806EED54  B0 1C 06 94 */	sth r0, 0x694(r28)
lbl_806EED58:
/* 806EED58  2C 1F D8 00 */	cmpwi r31, -10240
/* 806EED5C  40 80 00 08 */	bge lbl_806EED64
/* 806EED60  3B E0 D8 00 */	li r31, -10240
lbl_806EED64:
/* 806EED64  7F E0 07 34 */	extsh r0, r31
/* 806EED68  2C 00 28 00 */	cmpwi r0, 0x2800
/* 806EED6C  40 81 00 08 */	ble lbl_806EED74
/* 806EED70  3B E0 28 00 */	li r31, 0x2800
lbl_806EED74:
/* 806EED74  B3 FC 06 92 */	sth r31, 0x692(r28)
/* 806EED78  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070211@ha */
/* 806EED7C  38 03 02 11 */	addi r0, r3, 0x0211 /* 0x00070211@l */
/* 806EED80  90 01 00 08 */	stw r0, 8(r1)
/* 806EED84  38 7C 05 C8 */	addi r3, r28, 0x5c8
/* 806EED88  38 81 00 08 */	addi r4, r1, 8
/* 806EED8C  38 A0 FF FF */	li r5, -1
/* 806EED90  81 9C 05 C8 */	lwz r12, 0x5c8(r28)
/* 806EED94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EED98  7D 89 03 A6 */	mtctr r12
/* 806EED9C  4E 80 04 21 */	bctrl 
/* 806EEDA0  48 00 00 58 */	b lbl_806EEDF8
lbl_806EEDA4:
/* 806EEDA4  2C 1E 00 00 */	cmpwi r30, 0
/* 806EEDA8  41 82 00 10 */	beq lbl_806EEDB8
/* 806EEDAC  38 00 00 01 */	li r0, 1
/* 806EEDB0  90 1C 06 CC */	stw r0, 0x6cc(r28)
/* 806EEDB4  48 00 00 24 */	b lbl_806EEDD8
lbl_806EEDB8:
/* 806EEDB8  38 00 00 00 */	li r0, 0
/* 806EEDBC  90 1C 06 CC */	stw r0, 0x6cc(r28)
/* 806EEDC0  80 7C 11 EC */	lwz r3, 0x11ec(r28)
/* 806EEDC4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806EEDC8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806EEDCC  41 82 00 0C */	beq lbl_806EEDD8
/* 806EEDD0  38 00 00 02 */	li r0, 2
/* 806EEDD4  90 1C 06 CC */	stw r0, 0x6cc(r28)
lbl_806EEDD8:
/* 806EEDD8  7F 83 E3 78 */	mr r3, r28
/* 806EEDDC  38 80 00 05 */	li r4, 5
/* 806EEDE0  4B FF BC FD */	bl setActionMode__8daE_HZ_cFi
/* 806EEDE4  48 00 00 14 */	b lbl_806EEDF8
lbl_806EEDE8:
/* 806EEDE8  3B BD 00 01 */	addi r29, r29, 1
/* 806EEDEC  2C 1D 00 02 */	cmpwi r29, 2
/* 806EEDF0  3B 7B 01 38 */	addi r27, r27, 0x138
/* 806EEDF4  40 81 FC 88 */	ble lbl_806EEA7C
lbl_806EEDF8:
/* 806EEDF8  39 61 00 40 */	addi r11, r1, 0x40
/* 806EEDFC  4B C7 34 20 */	b _restgpr_26
/* 806EEE00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806EEE04  7C 08 03 A6 */	mtlr r0
/* 806EEE08  38 21 00 40 */	addi r1, r1, 0x40
/* 806EEE0C  4E 80 00 20 */	blr 
