lbl_8077B318:
/* 8077B318  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8077B31C  7C 08 02 A6 */	mflr r0
/* 8077B320  90 01 00 94 */	stw r0, 0x94(r1)
/* 8077B324  39 61 00 90 */	addi r11, r1, 0x90
/* 8077B328  4B BE 6E 9D */	bl _savegpr_23
/* 8077B32C  7C 7B 1B 78 */	mr r27, r3
/* 8077B330  3C 60 80 78 */	lis r3, lit_1109@ha /* 0x80781340@ha */
/* 8077B334  3B A3 13 40 */	addi r29, r3, lit_1109@l /* 0x80781340@l */
/* 8077B338  3C 60 80 78 */	lis r3, lit_3903@ha /* 0x80780DC4@ha */
/* 8077B33C  3B C3 0D C4 */	addi r30, r3, lit_3903@l /* 0x80780DC4@l */
/* 8077B340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077B344  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077B348  83 5F 5D AC */	lwz r26, 0x5dac(r31)
/* 8077B34C  A8 1B 06 A8 */	lha r0, 0x6a8(r27)
/* 8077B350  2C 00 00 00 */	cmpwi r0, 0
/* 8077B354  40 82 05 BC */	bne lbl_8077B910
/* 8077B358  38 7B 08 F0 */	addi r3, r27, 0x8f0
/* 8077B35C  4B 90 84 D5 */	bl Move__10dCcD_GSttsFv
/* 8077B360  3A E0 00 00 */	li r23, 0
/* 8077B364  3B 20 00 00 */	li r25, 0
/* 8077B368  3B 9D 00 4C */	addi r28, r29, 0x4c
lbl_8077B36C:
/* 8077B36C  88 1C 00 2A */	lbz r0, 0x2a(r28)
/* 8077B370  28 00 00 00 */	cmplwi r0, 0
/* 8077B374  41 82 00 18 */	beq lbl_8077B38C
/* 8077B378  38 79 09 AC */	addi r3, r25, 0x9ac
/* 8077B37C  7C 1B 18 2E */	lwzx r0, r27, r3
/* 8077B380  60 00 00 01 */	ori r0, r0, 1
/* 8077B384  7C 1B 19 2E */	stwx r0, r27, r3
/* 8077B388  48 00 00 14 */	b lbl_8077B39C
lbl_8077B38C:
/* 8077B38C  38 79 09 AC */	addi r3, r25, 0x9ac
/* 8077B390  7C 1B 18 2E */	lwzx r0, r27, r3
/* 8077B394  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8077B398  7C 1B 19 2E */	stwx r0, r27, r3
lbl_8077B39C:
/* 8077B39C  3B 19 09 10 */	addi r24, r25, 0x910
/* 8077B3A0  7F 1B C2 14 */	add r24, r27, r24
/* 8077B3A4  7F 03 C3 78 */	mr r3, r24
/* 8077B3A8  4B 90 90 B9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8077B3AC  28 03 00 00 */	cmplwi r3, 0
/* 8077B3B0  41 82 05 24 */	beq lbl_8077B8D4
/* 8077B3B4  38 00 00 06 */	li r0, 6
/* 8077B3B8  B0 1B 06 A8 */	sth r0, 0x6a8(r27)
/* 8077B3BC  7F 03 C3 78 */	mr r3, r24
/* 8077B3C0  4B 90 91 39 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8077B3C4  90 7B 0D F0 */	stw r3, 0xdf0(r27)
/* 8077B3C8  88 1A 05 68 */	lbz r0, 0x568(r26)
/* 8077B3CC  28 00 00 2C */	cmplwi r0, 0x2c
/* 8077B3D0  41 82 00 80 */	beq lbl_8077B450
/* 8077B3D4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8077B3D8  28 00 00 2D */	cmplwi r0, 0x2d
/* 8077B3DC  41 82 00 74 */	beq lbl_8077B450
/* 8077B3E0  80 7B 0D F0 */	lwz r3, 0xdf0(r27)
/* 8077B3E4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8077B3E8  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8077B3EC  41 82 00 64 */	beq lbl_8077B450
/* 8077B3F0  7F 43 D3 78 */	mr r3, r26
/* 8077B3F4  7F 64 DB 78 */	mr r4, r27
/* 8077B3F8  38 A0 00 40 */	li r5, 0x40
/* 8077B3FC  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 8077B400  81 8C 01 DC */	lwz r12, 0x1dc(r12)
/* 8077B404  7D 89 03 A6 */	mtctr r12
/* 8077B408  4E 80 04 21 */	bctrl 
/* 8077B40C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8077B410  41 82 05 00 */	beq lbl_8077B910
/* 8077B414  38 00 00 08 */	li r0, 8
/* 8077B418  B0 1B 06 96 */	sth r0, 0x696(r27)
/* 8077B41C  38 00 00 00 */	li r0, 0
/* 8077B420  B0 1B 06 98 */	sth r0, 0x698(r27)
/* 8077B424  38 00 03 E8 */	li r0, 0x3e8
/* 8077B428  B0 1B 06 A8 */	sth r0, 0x6a8(r27)
/* 8077B42C  38 7B 05 E0 */	addi r3, r27, 0x5e0
/* 8077B430  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8077B434  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8077B438  38 A0 00 1F */	li r5, 0x1f
/* 8077B43C  81 9B 05 E0 */	lwz r12, 0x5e0(r27)
/* 8077B440  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8077B444  7D 89 03 A6 */	mtctr r12
/* 8077B448  4E 80 04 21 */	bctrl 
/* 8077B44C  48 00 04 C4 */	b lbl_8077B910
lbl_8077B450:
/* 8077B450  38 7B 0D F0 */	addi r3, r27, 0xdf0
/* 8077B454  4B 90 C6 05 */	bl at_power_check__FP11dCcU_AtInfo
/* 8077B458  80 7B 0D F0 */	lwz r3, 0xdf0(r27)
/* 8077B45C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8077B460  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8077B464  41 82 00 10 */	beq lbl_8077B474
/* 8077B468  38 00 00 1E */	li r0, 0x1e
/* 8077B46C  B0 1B 06 A6 */	sth r0, 0x6a6(r27)
/* 8077B470  48 00 00 0C */	b lbl_8077B47C
lbl_8077B474:
/* 8077B474  38 00 00 00 */	li r0, 0
/* 8077B478  B0 1B 06 A6 */	sth r0, 0x6a6(r27)
lbl_8077B47C:
/* 8077B47C  88 1C 00 2A */	lbz r0, 0x2a(r28)
/* 8077B480  28 00 00 00 */	cmplwi r0, 0
/* 8077B484  41 82 00 40 */	beq lbl_8077B4C4
/* 8077B488  38 00 00 06 */	li r0, 6
/* 8077B48C  B0 1B 06 96 */	sth r0, 0x696(r27)
/* 8077B490  A0 1B 0E 0C */	lhz r0, 0xe0c(r27)
/* 8077B494  28 00 00 14 */	cmplwi r0, 0x14
/* 8077B498  40 80 00 18 */	bge lbl_8077B4B0
/* 8077B49C  38 00 00 0F */	li r0, 0xf
/* 8077B4A0  B0 1B 06 A0 */	sth r0, 0x6a0(r27)
/* 8077B4A4  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8077B4A8  D0 1B 06 AC */	stfs f0, 0x6ac(r27)
/* 8077B4AC  48 00 03 FC */	b lbl_8077B8A8
lbl_8077B4B0:
/* 8077B4B0  38 00 00 19 */	li r0, 0x19
/* 8077B4B4  B0 1B 06 A0 */	sth r0, 0x6a0(r27)
/* 8077B4B8  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8077B4BC  D0 1B 06 AC */	stfs f0, 0x6ac(r27)
/* 8077B4C0  48 00 03 E8 */	b lbl_8077B8A8
lbl_8077B4C4:
/* 8077B4C4  A0 1B 0E 0C */	lhz r0, 0xe0c(r27)
/* 8077B4C8  28 00 00 3C */	cmplwi r0, 0x3c
/* 8077B4CC  41 80 00 28 */	blt lbl_8077B4F4
/* 8077B4D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077B4D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077B4D8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8077B4DC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8077B4E0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8077B4E4  41 82 00 10 */	beq lbl_8077B4F4
/* 8077B4E8  38 00 00 24 */	li r0, 0x24
/* 8077B4EC  90 1B 0E 08 */	stw r0, 0xe08(r27)
/* 8077B4F0  48 00 00 0C */	b lbl_8077B4FC
lbl_8077B4F4:
/* 8077B4F4  38 00 00 00 */	li r0, 0
/* 8077B4F8  90 1B 0E 08 */	stw r0, 0xe08(r27)
lbl_8077B4FC:
/* 8077B4FC  7F 63 DB 78 */	mr r3, r27
/* 8077B500  38 9B 0D F0 */	addi r4, r27, 0xdf0
/* 8077B504  4B 90 C7 01 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8077B508  80 7B 0D F0 */	lwz r3, 0xdf0(r27)
/* 8077B50C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8077B510  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8077B514  41 82 00 10 */	beq lbl_8077B524
/* 8077B518  38 00 00 14 */	li r0, 0x14
/* 8077B51C  B0 1B 06 A8 */	sth r0, 0x6a8(r27)
/* 8077B520  48 00 00 0C */	b lbl_8077B52C
lbl_8077B524:
/* 8077B524  38 00 00 0A */	li r0, 0xa
/* 8077B528  B0 1B 06 A8 */	sth r0, 0x6a8(r27)
lbl_8077B52C:
/* 8077B52C  A0 1B 0E 0C */	lhz r0, 0xe0c(r27)
/* 8077B530  28 00 00 14 */	cmplwi r0, 0x14
/* 8077B534  40 80 00 10 */	bge lbl_8077B544
/* 8077B538  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8077B53C  D0 1B 06 AC */	stfs f0, 0x6ac(r27)
/* 8077B540  48 00 01 90 */	b lbl_8077B6D0
lbl_8077B544:
/* 8077B544  28 00 00 3C */	cmplwi r0, 0x3c
/* 8077B548  41 80 01 80 */	blt lbl_8077B6C8
/* 8077B54C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077B550  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077B554  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8077B558  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8077B55C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8077B560  41 82 01 68 */	beq lbl_8077B6C8
/* 8077B564  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077B568  D0 1B 06 AC */	stfs f0, 0x6ac(r27)
/* 8077B56C  38 00 00 00 */	li r0, 0
/* 8077B570  B0 1B 05 62 */	sth r0, 0x562(r27)
/* 8077B574  80 7B 05 D4 */	lwz r3, 0x5d4(r27)
/* 8077B578  80 63 00 04 */	lwz r3, 4(r3)
/* 8077B57C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8077B580  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077B584  38 63 00 60 */	addi r3, r3, 0x60
/* 8077B588  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8077B58C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8077B590  80 84 00 00 */	lwz r4, 0(r4)
/* 8077B594  4B BC AF 1D */	bl PSMTXCopy
/* 8077B598  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077B59C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8077B5A0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8077B5A4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8077B5A8  38 61 00 58 */	addi r3, r1, 0x58
/* 8077B5AC  38 81 00 4C */	addi r4, r1, 0x4c
/* 8077B5B0  4B AF 59 3D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8077B5B4  38 7D 00 4C */	addi r3, r29, 0x4c
/* 8077B5B8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8077B5BC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8077B5C0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8077B5C4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8077B5C8  80 1A 04 E4 */	lwz r0, 0x4e4(r26)
/* 8077B5CC  90 01 00 38 */	stw r0, 0x38(r1)
/* 8077B5D0  A0 1A 04 E8 */	lhz r0, 0x4e8(r26)
/* 8077B5D4  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 8077B5D8  A8 61 00 3A */	lha r3, 0x3a(r1)
/* 8077B5DC  38 03 80 00 */	addi r0, r3, -32768
/* 8077B5E0  B0 01 00 3A */	sth r0, 0x3a(r1)
/* 8077B5E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077B5E8  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077B5EC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8077B5F0  38 80 00 00 */	li r4, 0
/* 8077B5F4  90 81 00 08 */	stw r4, 8(r1)
/* 8077B5F8  38 00 FF FF */	li r0, -1
/* 8077B5FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8077B600  90 81 00 10 */	stw r4, 0x10(r1)
/* 8077B604  90 81 00 14 */	stw r4, 0x14(r1)
/* 8077B608  90 81 00 18 */	stw r4, 0x18(r1)
/* 8077B60C  38 80 00 00 */	li r4, 0
/* 8077B610  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008248@ha */
/* 8077B614  38 A5 82 48 */	addi r5, r5, 0x8248 /* 0x00008248@l */
/* 8077B618  38 C1 00 4C */	addi r6, r1, 0x4c
/* 8077B61C  38 E0 00 00 */	li r7, 0
/* 8077B620  39 01 00 38 */	addi r8, r1, 0x38
/* 8077B624  39 21 00 40 */	addi r9, r1, 0x40
/* 8077B628  39 40 00 FF */	li r10, 0xff
/* 8077B62C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8077B630  4B 8D 14 61 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8077B634  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8077B638  38 80 00 00 */	li r4, 0
/* 8077B63C  90 81 00 08 */	stw r4, 8(r1)
/* 8077B640  38 00 FF FF */	li r0, -1
/* 8077B644  90 01 00 0C */	stw r0, 0xc(r1)
/* 8077B648  90 81 00 10 */	stw r4, 0x10(r1)
/* 8077B64C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8077B650  90 81 00 18 */	stw r4, 0x18(r1)
/* 8077B654  38 80 00 00 */	li r4, 0
/* 8077B658  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008249@ha */
/* 8077B65C  38 A5 82 49 */	addi r5, r5, 0x8249 /* 0x00008249@l */
/* 8077B660  38 C1 00 4C */	addi r6, r1, 0x4c
/* 8077B664  38 E0 00 00 */	li r7, 0
/* 8077B668  39 01 00 38 */	addi r8, r1, 0x38
/* 8077B66C  39 21 00 40 */	addi r9, r1, 0x40
/* 8077B670  39 40 00 FF */	li r10, 0xff
/* 8077B674  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8077B678  4B 8D 14 19 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8077B67C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8077B680  38 80 00 00 */	li r4, 0
/* 8077B684  90 81 00 08 */	stw r4, 8(r1)
/* 8077B688  38 00 FF FF */	li r0, -1
/* 8077B68C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8077B690  90 81 00 10 */	stw r4, 0x10(r1)
/* 8077B694  90 81 00 14 */	stw r4, 0x14(r1)
/* 8077B698  90 81 00 18 */	stw r4, 0x18(r1)
/* 8077B69C  38 80 00 00 */	li r4, 0
/* 8077B6A0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000824A@ha */
/* 8077B6A4  38 A5 82 4A */	addi r5, r5, 0x824A /* 0x0000824A@l */
/* 8077B6A8  38 DB 04 D0 */	addi r6, r27, 0x4d0
/* 8077B6AC  38 E0 00 00 */	li r7, 0
/* 8077B6B0  39 01 00 38 */	addi r8, r1, 0x38
/* 8077B6B4  39 21 00 40 */	addi r9, r1, 0x40
/* 8077B6B8  39 40 00 FF */	li r10, 0xff
/* 8077B6BC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8077B6C0  4B 8D 13 D1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8077B6C4  48 00 00 0C */	b lbl_8077B6D0
lbl_8077B6C8:
/* 8077B6C8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8077B6CC  D0 1B 06 AC */	stfs f0, 0x6ac(r27)
lbl_8077B6D0:
/* 8077B6D0  88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 8077B6D4  28 00 00 00 */	cmplwi r0, 0
/* 8077B6D8  40 82 01 60 */	bne lbl_8077B838
/* 8077B6DC  A0 1B 0E 0C */	lhz r0, 0xe0c(r27)
/* 8077B6E0  28 00 00 3C */	cmplwi r0, 0x3c
/* 8077B6E4  41 80 00 58 */	blt lbl_8077B73C
/* 8077B6E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077B6EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077B6F0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8077B6F4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8077B6F8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8077B6FC  41 82 00 40 */	beq lbl_8077B73C
/* 8077B700  38 00 00 09 */	li r0, 9
/* 8077B704  B0 1B 06 96 */	sth r0, 0x696(r27)
/* 8077B708  38 00 00 0A */	li r0, 0xa
/* 8077B70C  B0 1B 06 A8 */	sth r0, 0x6a8(r27)
/* 8077B710  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070011@ha */
/* 8077B714  38 03 00 11 */	addi r0, r3, 0x0011 /* 0x00070011@l */
/* 8077B718  90 01 00 34 */	stw r0, 0x34(r1)
/* 8077B71C  38 7B 05 E0 */	addi r3, r27, 0x5e0
/* 8077B720  38 81 00 34 */	addi r4, r1, 0x34
/* 8077B724  38 A0 FF FF */	li r5, -1
/* 8077B728  81 9B 05 E0 */	lwz r12, 0x5e0(r27)
/* 8077B72C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077B730  7D 89 03 A6 */	mtctr r12
/* 8077B734  4E 80 04 21 */	bctrl 
/* 8077B738  48 00 01 70 */	b lbl_8077B8A8
lbl_8077B73C:
/* 8077B73C  A8 1B 05 62 */	lha r0, 0x562(r27)
/* 8077B740  2C 00 00 00 */	cmpwi r0, 0
/* 8077B744  41 81 00 C0 */	bgt lbl_8077B804
/* 8077B748  80 1B 0E 04 */	lwz r0, 0xe04(r27)
/* 8077B74C  70 00 08 80 */	andi. r0, r0, 0x880
/* 8077B750  41 82 00 40 */	beq lbl_8077B790
/* 8077B754  38 00 00 09 */	li r0, 9
/* 8077B758  B0 1B 06 96 */	sth r0, 0x696(r27)
/* 8077B75C  38 00 00 0A */	li r0, 0xa
/* 8077B760  B0 1B 06 A8 */	sth r0, 0x6a8(r27)
/* 8077B764  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070011@ha */
/* 8077B768  38 03 00 11 */	addi r0, r3, 0x0011 /* 0x00070011@l */
/* 8077B76C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8077B770  38 7B 05 E0 */	addi r3, r27, 0x5e0
/* 8077B774  38 81 00 30 */	addi r4, r1, 0x30
/* 8077B778  38 A0 FF FF */	li r5, -1
/* 8077B77C  81 9B 05 E0 */	lwz r12, 0x5e0(r27)
/* 8077B780  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077B784  7D 89 03 A6 */	mtctr r12
/* 8077B788  4E 80 04 21 */	bctrl 
/* 8077B78C  48 00 01 1C */	b lbl_8077B8A8
lbl_8077B790:
/* 8077B790  38 00 00 00 */	li r0, 0
/* 8077B794  90 1D 01 7C */	stw r0, 0x17c(r29)
/* 8077B798  90 1D 01 78 */	stw r0, 0x178(r29)
/* 8077B79C  3C 60 80 78 */	lis r3, s_last_sub__FPvPv@ha /* 0x8077B274@ha */
/* 8077B7A0  38 63 B2 74 */	addi r3, r3, s_last_sub__FPvPv@l /* 0x8077B274@l */
/* 8077B7A4  7F 64 DB 78 */	mr r4, r27
/* 8077B7A8  4B 8A 5B 91 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8077B7AC  88 1B 05 B6 */	lbz r0, 0x5b6(r27)
/* 8077B7B0  28 00 00 FF */	cmplwi r0, 0xff
/* 8077B7B4  41 82 00 14 */	beq lbl_8077B7C8
/* 8077B7B8  80 7D 01 78 */	lwz r3, 0x178(r29)
/* 8077B7BC  80 1D 01 7C */	lwz r0, 0x17c(r29)
/* 8077B7C0  7C 03 00 00 */	cmpw r3, r0
/* 8077B7C4  41 82 00 E4 */	beq lbl_8077B8A8
lbl_8077B7C8:
/* 8077B7C8  38 00 00 09 */	li r0, 9
/* 8077B7CC  B0 1B 06 96 */	sth r0, 0x696(r27)
/* 8077B7D0  38 00 00 0A */	li r0, 0xa
/* 8077B7D4  B0 1B 06 A8 */	sth r0, 0x6a8(r27)
/* 8077B7D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070011@ha */
/* 8077B7DC  38 03 00 11 */	addi r0, r3, 0x0011 /* 0x00070011@l */
/* 8077B7E0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8077B7E4  38 7B 05 E0 */	addi r3, r27, 0x5e0
/* 8077B7E8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8077B7EC  38 A0 FF FF */	li r5, -1
/* 8077B7F0  81 9B 05 E0 */	lwz r12, 0x5e0(r27)
/* 8077B7F4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077B7F8  7D 89 03 A6 */	mtctr r12
/* 8077B7FC  4E 80 04 21 */	bctrl 
/* 8077B800  48 00 00 A8 */	b lbl_8077B8A8
lbl_8077B804:
/* 8077B804  38 00 00 05 */	li r0, 5
/* 8077B808  B0 1B 06 96 */	sth r0, 0x696(r27)
/* 8077B80C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070010@ha */
/* 8077B810  38 03 00 10 */	addi r0, r3, 0x0010 /* 0x00070010@l */
/* 8077B814  90 01 00 28 */	stw r0, 0x28(r1)
/* 8077B818  38 7B 05 E0 */	addi r3, r27, 0x5e0
/* 8077B81C  38 81 00 28 */	addi r4, r1, 0x28
/* 8077B820  38 A0 FF FF */	li r5, -1
/* 8077B824  81 9B 05 E0 */	lwz r12, 0x5e0(r27)
/* 8077B828  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077B82C  7D 89 03 A6 */	mtctr r12
/* 8077B830  4E 80 04 21 */	bctrl 
/* 8077B834  48 00 00 74 */	b lbl_8077B8A8
lbl_8077B838:
/* 8077B838  A8 1B 05 62 */	lha r0, 0x562(r27)
/* 8077B83C  2C 00 00 00 */	cmpwi r0, 0
/* 8077B840  41 81 00 38 */	bgt lbl_8077B878
/* 8077B844  38 00 00 0A */	li r0, 0xa
/* 8077B848  B0 1B 06 96 */	sth r0, 0x696(r27)
/* 8077B84C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070011@ha */
/* 8077B850  38 03 00 11 */	addi r0, r3, 0x0011 /* 0x00070011@l */
/* 8077B854  90 01 00 24 */	stw r0, 0x24(r1)
/* 8077B858  38 7B 05 E0 */	addi r3, r27, 0x5e0
/* 8077B85C  38 81 00 24 */	addi r4, r1, 0x24
/* 8077B860  38 A0 FF FF */	li r5, -1
/* 8077B864  81 9B 05 E0 */	lwz r12, 0x5e0(r27)
/* 8077B868  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077B86C  7D 89 03 A6 */	mtctr r12
/* 8077B870  4E 80 04 21 */	bctrl 
/* 8077B874  48 00 00 34 */	b lbl_8077B8A8
lbl_8077B878:
/* 8077B878  38 00 00 05 */	li r0, 5
/* 8077B87C  B0 1B 06 96 */	sth r0, 0x696(r27)
/* 8077B880  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070010@ha */
/* 8077B884  38 03 00 10 */	addi r0, r3, 0x0010 /* 0x00070010@l */
/* 8077B888  90 01 00 20 */	stw r0, 0x20(r1)
/* 8077B88C  38 7B 05 E0 */	addi r3, r27, 0x5e0
/* 8077B890  38 81 00 20 */	addi r4, r1, 0x20
/* 8077B894  38 A0 FF FF */	li r5, -1
/* 8077B898  81 9B 05 E0 */	lwz r12, 0x5e0(r27)
/* 8077B89C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077B8A0  7D 89 03 A6 */	mtctr r12
/* 8077B8A4  4E 80 04 21 */	bctrl 
lbl_8077B8A8:
/* 8077B8A8  38 00 00 00 */	li r0, 0
/* 8077B8AC  B0 1B 06 98 */	sth r0, 0x698(r27)
/* 8077B8B0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077B8B4  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 8077B8B8  7F 63 DB 78 */	mr r3, r27
/* 8077B8BC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8077B8C0  4B 89 EE 51 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8077B8C4  B0 7B 06 B0 */	sth r3, 0x6b0(r27)
/* 8077B8C8  38 00 00 01 */	li r0, 1
/* 8077B8CC  98 1B 06 9A */	stb r0, 0x69a(r27)
/* 8077B8D0  48 00 00 14 */	b lbl_8077B8E4
lbl_8077B8D4:
/* 8077B8D4  3A F7 00 01 */	addi r23, r23, 1
/* 8077B8D8  2C 17 00 02 */	cmpwi r23, 2
/* 8077B8DC  3B 39 01 38 */	addi r25, r25, 0x138
/* 8077B8E0  40 81 FA 8C */	ble lbl_8077B36C
lbl_8077B8E4:
/* 8077B8E4  38 60 00 00 */	li r3, 0
/* 8077B8E8  38 80 00 03 */	li r4, 3
/* 8077B8EC  38 00 00 03 */	li r0, 3
/* 8077B8F0  7C 09 03 A6 */	mtctr r0
lbl_8077B8F4:
/* 8077B8F4  A8 1B 05 62 */	lha r0, 0x562(r27)
/* 8077B8F8  2C 00 00 01 */	cmpwi r0, 1
/* 8077B8FC  41 81 00 0C */	bgt lbl_8077B908
/* 8077B900  38 03 09 CA */	addi r0, r3, 0x9ca
/* 8077B904  7C 9B 01 AE */	stbx r4, r27, r0
lbl_8077B908:
/* 8077B908  38 63 01 38 */	addi r3, r3, 0x138
/* 8077B90C  42 00 FF E8 */	bdnz lbl_8077B8F4
lbl_8077B910:
/* 8077B910  39 61 00 90 */	addi r11, r1, 0x90
/* 8077B914  4B BE 68 FD */	bl _restgpr_23
/* 8077B918  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8077B91C  7C 08 03 A6 */	mtlr r0
/* 8077B920  38 21 00 90 */	addi r1, r1, 0x90
/* 8077B924  4E 80 00 20 */	blr 
