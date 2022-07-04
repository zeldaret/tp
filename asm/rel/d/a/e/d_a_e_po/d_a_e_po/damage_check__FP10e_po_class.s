lbl_8074E168:
/* 8074E168  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8074E16C  7C 08 02 A6 */	mflr r0
/* 8074E170  90 01 00 44 */	stw r0, 0x44(r1)
/* 8074E174  39 61 00 40 */	addi r11, r1, 0x40
/* 8074E178  4B C1 40 65 */	bl _savegpr_29
/* 8074E17C  7C 7E 1B 78 */	mr r30, r3
/* 8074E180  3C 60 80 75 */	lis r3, lit_3917@ha /* 0x807576FC@ha */
/* 8074E184  3B E3 76 FC */	addi r31, r3, lit_3917@l /* 0x807576FC@l */
/* 8074E188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074E18C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074E190  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8074E194  A8 1E 07 54 */	lha r0, 0x754(r30)
/* 8074E198  2C 00 00 00 */	cmpwi r0, 0
/* 8074E19C  40 82 03 38 */	bne lbl_8074E4D4
/* 8074E1A0  88 1E 07 57 */	lbz r0, 0x757(r30)
/* 8074E1A4  7C 00 07 75 */	extsb. r0, r0
/* 8074E1A8  40 82 00 08 */	bne lbl_8074E1B0
/* 8074E1AC  48 00 03 28 */	b lbl_8074E4D4
lbl_8074E1B0:
/* 8074E1B0  A8 1E 07 42 */	lha r0, 0x742(r30)
/* 8074E1B4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8074E1B8  41 82 03 1C */	beq lbl_8074E4D4
/* 8074E1BC  2C 00 00 01 */	cmpwi r0, 1
/* 8074E1C0  41 82 03 14 */	beq lbl_8074E4D4
/* 8074E1C4  2C 00 00 02 */	cmpwi r0, 2
/* 8074E1C8  41 82 03 0C */	beq lbl_8074E4D4
/* 8074E1CC  2C 00 00 14 */	cmpwi r0, 0x14
/* 8074E1D0  41 82 03 04 */	beq lbl_8074E4D4
/* 8074E1D4  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8074E1D8  2C 00 00 01 */	cmpwi r0, 1
/* 8074E1DC  41 81 00 08 */	bgt lbl_8074E1E4
/* 8074E1E0  48 00 02 F4 */	b lbl_8074E4D4
lbl_8074E1E4:
/* 8074E1E4  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8074E1E8  80 63 00 04 */	lwz r3, 4(r3)
/* 8074E1EC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8074E1F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8074E1F4  38 63 00 30 */	addi r3, r3, 0x30
/* 8074E1F8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8074E1FC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8074E200  4B BF 82 B1 */	bl PSMTXCopy
/* 8074E204  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8074E208  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8074E20C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8074E210  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8074E214  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8074E218  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8074E21C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8074E220  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8074E224  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x80757E5C@ha */
/* 8074E228  38 63 7E 5C */	addi r3, r3, l_HIO@l /* 0x80757E5C@l */
/* 8074E22C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8074E230  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8074E234  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 8074E238  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 8074E23C  7F C3 F3 78 */	mr r3, r30
/* 8074E240  38 9E 05 F8 */	addi r4, r30, 0x5f8
/* 8074E244  38 A1 00 18 */	addi r5, r1, 0x18
/* 8074E248  38 DE 04 EC */	addi r6, r30, 0x4ec
/* 8074E24C  48 00 8C 31 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8074E250  38 00 00 01 */	li r0, 1
/* 8074E254  98 1E 07 DC */	stb r0, 0x7dc(r30)
/* 8074E258  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074E25C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074E260  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8074E264  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8074E268  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8074E26C  41 82 00 40 */	beq lbl_8074E2AC
/* 8074E270  A8 1E 07 42 */	lha r0, 0x742(r30)
/* 8074E274  2C 00 00 04 */	cmpwi r0, 4
/* 8074E278  40 82 00 14 */	bne lbl_8074E28C
/* 8074E27C  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 8074E280  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8074E284  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074E288  41 81 00 1C */	bgt lbl_8074E2A4
lbl_8074E28C:
/* 8074E28C  2C 00 00 06 */	cmpwi r0, 6
/* 8074E290  40 82 00 1C */	bne lbl_8074E2AC
/* 8074E294  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 8074E298  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8074E29C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074E2A0  40 81 00 0C */	ble lbl_8074E2AC
lbl_8074E2A4:
/* 8074E2A4  38 00 00 00 */	li r0, 0
/* 8074E2A8  98 1E 07 DC */	stb r0, 0x7dc(r30)
lbl_8074E2AC:
/* 8074E2AC  38 7E 0A 88 */	addi r3, r30, 0xa88
/* 8074E2B0  4B 93 55 81 */	bl Move__10dCcD_GSttsFv
/* 8074E2B4  38 7E 0A A8 */	addi r3, r30, 0xaa8
/* 8074E2B8  4B 93 61 A9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8074E2BC  28 03 00 00 */	cmplwi r3, 0
/* 8074E2C0  41 82 02 14 */	beq lbl_8074E4D4
/* 8074E2C4  88 1E 07 DC */	lbz r0, 0x7dc(r30)
/* 8074E2C8  28 00 00 01 */	cmplwi r0, 1
/* 8074E2CC  40 82 00 3C */	bne lbl_8074E308
/* 8074E2D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8074E2D4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8074E2D8  38 7E 0A A8 */	addi r3, r30, 0xaa8
/* 8074E2DC  81 9E 0A E4 */	lwz r12, 0xae4(r30)
/* 8074E2E0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8074E2E4  7D 89 03 A6 */	mtctr r12
/* 8074E2E8  4E 80 04 21 */	bctrl 
/* 8074E2EC  38 00 00 01 */	li r0, 1
/* 8074E2F0  B0 1E 07 42 */	sth r0, 0x742(r30)
/* 8074E2F4  38 00 00 00 */	li r0, 0
/* 8074E2F8  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8074E2FC  38 00 00 14 */	li r0, 0x14
/* 8074E300  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 8074E304  48 00 01 D0 */	b lbl_8074E4D4
lbl_8074E308:
/* 8074E308  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8074E30C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8074E310  38 7E 0A A8 */	addi r3, r30, 0xaa8
/* 8074E314  4B 93 61 E5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8074E318  90 7E 0E 54 */	stw r3, 0xe54(r30)
/* 8074E31C  38 00 00 1F */	li r0, 0x1f
/* 8074E320  90 1E 0E 6C */	stw r0, 0xe6c(r30)
/* 8074E324  7F C3 F3 78 */	mr r3, r30
/* 8074E328  38 9E 0E 54 */	addi r4, r30, 0xe54
/* 8074E32C  4B 93 98 D9 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8074E330  7F C3 F3 78 */	mr r3, r30
/* 8074E334  38 80 00 FF */	li r4, 0xff
/* 8074E338  4B FF E2 B5 */	bl mArg0Check__FP10e_po_classs
/* 8074E33C  2C 03 00 02 */	cmpwi r3, 2
/* 8074E340  40 82 00 10 */	bne lbl_8074E350
/* 8074E344  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8074E348  3C 60 80 75 */	lis r3, mRollHp@ha /* 0x80757AE0@ha */
/* 8074E34C  B0 03 7A E0 */	sth r0, mRollHp@l(r3)  /* 0x80757AE0@l */
lbl_8074E350:
/* 8074E350  38 00 00 14 */	li r0, 0x14
/* 8074E354  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 8074E358  C0 1E 0B 7C */	lfs f0, 0xb7c(r30)
/* 8074E35C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8074E360  C0 1E 0B 80 */	lfs f0, 0xb80(r30)
/* 8074E364  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8074E368  C0 1E 0B 84 */	lfs f0, 0xb84(r30)
/* 8074E36C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8074E370  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 8074E374  28 00 00 2C */	cmplwi r0, 0x2c
/* 8074E378  41 82 00 94 */	beq lbl_8074E40C
/* 8074E37C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8074E380  28 00 00 2D */	cmplwi r0, 0x2d
/* 8074E384  41 82 00 88 */	beq lbl_8074E40C
/* 8074E388  80 7E 0E 54 */	lwz r3, 0xe54(r30)
/* 8074E38C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8074E390  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8074E394  41 82 00 78 */	beq lbl_8074E40C
/* 8074E398  7F A3 EB 78 */	mr r3, r29
/* 8074E39C  7F C4 F3 78 */	mr r4, r30
/* 8074E3A0  38 A0 00 40 */	li r5, 0x40
/* 8074E3A4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8074E3A8  81 8C 01 DC */	lwz r12, 0x1dc(r12)
/* 8074E3AC  7D 89 03 A6 */	mtctr r12
/* 8074E3B0  4E 80 04 21 */	bctrl 
/* 8074E3B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8074E3B8  41 82 00 54 */	beq lbl_8074E40C
/* 8074E3BC  38 00 00 00 */	li r0, 0
/* 8074E3C0  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 8074E3C4  98 03 11 25 */	stb r0, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
/* 8074E3C8  38 DE 05 68 */	addi r6, r30, 0x568
/* 8074E3CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074E3D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074E3D4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8074E3D8  38 80 00 03 */	li r4, 3
/* 8074E3DC  7F C5 F3 78 */	mr r5, r30
/* 8074E3E0  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 8074E3E4  39 00 00 00 */	li r8, 0
/* 8074E3E8  39 20 00 00 */	li r9, 0
/* 8074E3EC  4B 8F DE 2D */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8074E3F0  38 00 00 0B */	li r0, 0xb
/* 8074E3F4  B0 1E 07 42 */	sth r0, 0x742(r30)
/* 8074E3F8  38 00 00 00 */	li r0, 0
/* 8074E3FC  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8074E400  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8074E404  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8074E408  48 00 00 CC */	b lbl_8074E4D4
lbl_8074E40C:
/* 8074E40C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074E410  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074E414  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8074E418  38 80 00 03 */	li r4, 3
/* 8074E41C  7F C5 F3 78 */	mr r5, r30
/* 8074E420  38 C1 00 0C */	addi r6, r1, 0xc
/* 8074E424  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 8074E428  39 00 00 00 */	li r8, 0
/* 8074E42C  39 20 00 00 */	li r9, 0
/* 8074E430  4B 8F DD E9 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8074E434  38 60 00 00 */	li r3, 0
/* 8074E438  90 7E 05 B4 */	stw r3, 0x5b4(r30)
/* 8074E43C  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8074E440  2C 00 00 01 */	cmpwi r0, 1
/* 8074E444  41 81 00 50 */	bgt lbl_8074E494
/* 8074E448  B0 7E 05 62 */	sth r3, 0x562(r30)
/* 8074E44C  7F C3 F3 78 */	mr r3, r30
/* 8074E450  38 80 00 FF */	li r4, 0xff
/* 8074E454  4B FF E1 99 */	bl mArg0Check__FP10e_po_classs
/* 8074E458  2C 03 00 02 */	cmpwi r3, 2
/* 8074E45C  40 82 00 10 */	bne lbl_8074E46C
/* 8074E460  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8074E464  3C 60 80 75 */	lis r3, mRollHp@ha /* 0x80757AE0@ha */
/* 8074E468  B0 03 7A E0 */	sth r0, mRollHp@l(r3)  /* 0x80757AE0@l */
lbl_8074E46C:
/* 8074E46C  38 00 00 0C */	li r0, 0xc
/* 8074E470  B0 1E 07 42 */	sth r0, 0x742(r30)
/* 8074E474  38 00 00 03 */	li r0, 3
/* 8074E478  98 1E 0B 62 */	stb r0, 0xb62(r30)
/* 8074E47C  38 00 00 05 */	li r0, 5
/* 8074E480  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 8074E484  98 03 11 25 */	stb r0, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
/* 8074E488  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8074E48C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8074E490  48 00 00 44 */	b lbl_8074E4D4
lbl_8074E494:
/* 8074E494  38 00 00 0A */	li r0, 0xa
/* 8074E498  B0 1E 07 42 */	sth r0, 0x742(r30)
/* 8074E49C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700CF@ha */
/* 8074E4A0  38 03 00 CF */	addi r0, r3, 0x00CF /* 0x000700CF@l */
/* 8074E4A4  90 01 00 08 */	stw r0, 8(r1)
/* 8074E4A8  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 8074E4AC  38 81 00 08 */	addi r4, r1, 8
/* 8074E4B0  38 A0 FF FF */	li r5, -1
/* 8074E4B4  81 9E 05 F8 */	lwz r12, 0x5f8(r30)
/* 8074E4B8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074E4BC  7D 89 03 A6 */	mtctr r12
/* 8074E4C0  4E 80 04 21 */	bctrl 
/* 8074E4C4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8074E4C8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8074E4CC  A8 1E 0E 62 */	lha r0, 0xe62(r30)
/* 8074E4D0  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8074E4D4:
/* 8074E4D4  39 61 00 40 */	addi r11, r1, 0x40
/* 8074E4D8  4B C1 3D 51 */	bl _restgpr_29
/* 8074E4DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8074E4E0  7C 08 03 A6 */	mtlr r0
/* 8074E4E4  38 21 00 40 */	addi r1, r1, 0x40
/* 8074E4E8  4E 80 00 20 */	blr 
