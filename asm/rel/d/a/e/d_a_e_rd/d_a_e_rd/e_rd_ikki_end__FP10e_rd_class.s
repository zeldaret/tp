lbl_8050E214:
/* 8050E214  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050E218  7C 08 02 A6 */	mflr r0
/* 8050E21C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050E220  39 61 00 20 */	addi r11, r1, 0x20
/* 8050E224  4B E5 3F B5 */	bl _savegpr_28
/* 8050E228  7C 7D 1B 78 */	mr r29, r3
/* 8050E22C  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 8050E230  3B C3 85 84 */	addi r30, r3, lit_4208@l /* 0x80518584@l */
/* 8050E234  80 1D 09 8C */	lwz r0, 0x98c(r29)
/* 8050E238  90 01 00 08 */	stw r0, 8(r1)
/* 8050E23C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8050E240  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8050E244  38 81 00 08 */	addi r4, r1, 8
/* 8050E248  4B B0 B5 B1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8050E24C  7C 7F 1B 78 */	mr r31, r3
/* 8050E250  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8050E254  54 00 00 3E */	slwi r0, r0, 0
/* 8050E258  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8050E25C  38 00 00 00 */	li r0, 0
/* 8050E260  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8050E264  38 00 00 0A */	li r0, 0xa
/* 8050E268  B0 1D 09 98 */	sth r0, 0x998(r29)
/* 8050E26C  28 1D 00 00 */	cmplwi r29, 0
/* 8050E270  41 82 00 0C */	beq lbl_8050E27C
/* 8050E274  80 1D 00 04 */	lwz r0, 4(r29)
/* 8050E278  48 00 00 08 */	b lbl_8050E280
lbl_8050E27C:
/* 8050E27C  38 00 FF FF */	li r0, -1
lbl_8050E280:
/* 8050E280  90 1F 14 34 */	stw r0, 0x1434(r31)
/* 8050E284  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8050E288  2C 00 00 01 */	cmpwi r0, 1
/* 8050E28C  41 82 01 08 */	beq lbl_8050E394
/* 8050E290  40 80 01 88 */	bge lbl_8050E418
/* 8050E294  2C 00 00 00 */	cmpwi r0, 0
/* 8050E298  40 80 00 08 */	bge lbl_8050E2A0
/* 8050E29C  48 00 01 7C */	b lbl_8050E418
lbl_8050E2A0:
/* 8050E2A0  7F A3 EB 78 */	mr r3, r29
/* 8050E2A4  38 80 00 27 */	li r4, 0x27
/* 8050E2A8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8050E2AC  38 A0 00 00 */	li r5, 0
/* 8050E2B0  FC 40 08 90 */	fmr f2, f1
/* 8050E2B4  4B FF 69 21 */	bl anm_init__FP10e_rd_classifUcf
/* 8050E2B8  A8 7D 05 B4 */	lha r3, 0x5b4(r29)
/* 8050E2BC  38 03 00 01 */	addi r0, r3, 1
/* 8050E2C0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050E2C4  38 00 00 00 */	li r0, 0
/* 8050E2C8  98 1D 09 BC */	stb r0, 0x9bc(r29)
/* 8050E2CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050E2D0  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050E2D4  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 8050E2D8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8050E2DC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8050E2E0  7D 89 03 A6 */	mtctr r12
/* 8050E2E4  4E 80 04 21 */	bctrl 
/* 8050E2E8  28 03 00 00 */	cmplwi r3, 0
/* 8050E2EC  41 82 00 3C */	beq lbl_8050E328
/* 8050E2F0  28 1F 00 00 */	cmplwi r31, 0
/* 8050E2F4  41 82 00 34 */	beq lbl_8050E328
/* 8050E2F8  A0 7F 06 BE */	lhz r3, 0x6be(r31)
/* 8050E2FC  88 1D 09 BE */	lbz r0, 0x9be(r29)
/* 8050E300  7C 00 07 74 */	extsb r0, r0
/* 8050E304  7C 60 00 78 */	andc r0, r3, r0
/* 8050E308  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 8050E30C  38 60 00 00 */	li r3, 0
/* 8050E310  98 7D 09 BE */	stb r3, 0x9be(r29)
/* 8050E314  38 00 00 10 */	li r0, 0x10
/* 8050E318  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 8050E31C  B0 7F 05 B4 */	sth r3, 0x5b4(r31)
/* 8050E320  38 00 00 0A */	li r0, 0xa
/* 8050E324  B0 1F 16 9E */	sth r0, 0x169e(r31)
lbl_8050E328:
/* 8050E328  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8050E32C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8050E330  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 8050E334  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8050E338  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 8050E33C  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
/* 8050E340  7F A3 EB 78 */	mr r3, r29
/* 8050E344  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8050E348  4B B0 C3 C9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8050E34C  7C 60 07 35 */	extsh. r0, r3
/* 8050E350  40 80 00 10 */	bge lbl_8050E360
/* 8050E354  38 00 40 00 */	li r0, 0x4000
/* 8050E358  B0 1D 0A 0E */	sth r0, 0xa0e(r29)
/* 8050E35C  48 00 00 0C */	b lbl_8050E368
lbl_8050E360:
/* 8050E360  38 00 C0 00 */	li r0, -16384
/* 8050E364  B0 1D 0A 0E */	sth r0, 0xa0e(r29)
lbl_8050E368:
/* 8050E368  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F7@ha */
/* 8050E36C  38 03 00 F7 */	addi r0, r3, 0x00F7 /* 0x000700F7@l */
/* 8050E370  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050E374  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 8050E378  38 81 00 0C */	addi r4, r1, 0xc
/* 8050E37C  38 A0 FF FF */	li r5, -1
/* 8050E380  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 8050E384  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050E388  7D 89 03 A6 */	mtctr r12
/* 8050E38C  4E 80 04 21 */	bctrl 
/* 8050E390  48 00 00 88 */	b lbl_8050E418
lbl_8050E394:
/* 8050E394  80 1D 06 7C */	lwz r0, 0x67c(r29)
/* 8050E398  2C 00 00 27 */	cmpwi r0, 0x27
/* 8050E39C  40 82 00 4C */	bne lbl_8050E3E8
/* 8050E3A0  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8050E3A4  38 80 00 01 */	li r4, 1
/* 8050E3A8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050E3AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050E3B0  40 82 00 18 */	bne lbl_8050E3C8
/* 8050E3B4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8050E3B8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050E3BC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050E3C0  41 82 00 08 */	beq lbl_8050E3C8
/* 8050E3C4  38 80 00 00 */	li r4, 0
lbl_8050E3C8:
/* 8050E3C8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050E3CC  41 82 00 1C */	beq lbl_8050E3E8
/* 8050E3D0  7F A3 EB 78 */	mr r3, r29
/* 8050E3D4  38 80 00 18 */	li r4, 0x18
/* 8050E3D8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8050E3DC  38 A0 00 02 */	li r5, 2
/* 8050E3E0  FC 40 08 90 */	fmr f2, f1
/* 8050E3E4  4B FF 67 F1 */	bl anm_init__FP10e_rd_classifUcf
lbl_8050E3E8:
/* 8050E3E8  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 8050E3EC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8050E3F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050E3F4  40 80 00 24 */	bge lbl_8050E418
/* 8050E3F8  38 7D 09 EC */	addi r3, r29, 0x9ec
/* 8050E3FC  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 8050E400  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8050E404  4B D6 16 39 */	bl cLib_addCalc2__FPffff
/* 8050E408  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8050E40C  A8 1D 09 F6 */	lha r0, 0x9f6(r29)
/* 8050E410  7C 03 02 14 */	add r0, r3, r0
/* 8050E414  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_8050E418:
/* 8050E418  39 61 00 20 */	addi r11, r1, 0x20
/* 8050E41C  4B E5 3E 09 */	bl _restgpr_28
/* 8050E420  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050E424  7C 08 03 A6 */	mtlr r0
/* 8050E428  38 21 00 20 */	addi r1, r1, 0x20
/* 8050E42C  4E 80 00 20 */	blr 
