lbl_804FC118:
/* 804FC118  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804FC11C  7C 08 02 A6 */	mflr r0
/* 804FC120  90 01 00 74 */	stw r0, 0x74(r1)
/* 804FC124  39 61 00 70 */	addi r11, r1, 0x70
/* 804FC128  4B E6 60 A4 */	b _savegpr_25
/* 804FC12C  7C 7C 1B 78 */	mr r28, r3
/* 804FC130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804FC134  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 804FC138  83 DF 5D AC */	lwz r30, 0x5dac(r31)
/* 804FC13C  A8 1C 06 9E */	lha r0, 0x69e(r28)
/* 804FC140  2C 00 00 00 */	cmpwi r0, 0
/* 804FC144  40 82 03 A8 */	bne lbl_804FC4EC
/* 804FC148  38 7C 08 7C */	addi r3, r28, 0x87c
/* 804FC14C  4B B8 76 E4 */	b Move__10dCcD_GSttsFv
/* 804FC150  80 1C 0A 30 */	lwz r0, 0xa30(r28)
/* 804FC154  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804FC158  41 82 00 74 */	beq lbl_804FC1CC
/* 804FC15C  38 00 00 06 */	li r0, 6
/* 804FC160  B0 1C 06 9E */	sth r0, 0x69e(r28)
/* 804FC164  38 00 00 07 */	li r0, 7
/* 804FC168  B0 1C 06 6A */	sth r0, 0x66a(r28)
/* 804FC16C  38 00 00 00 */	li r0, 0
/* 804FC170  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 804FC174  38 60 00 0A */	li r3, 0xa
/* 804FC178  B0 7C 06 98 */	sth r3, 0x698(r28)
/* 804FC17C  38 00 00 64 */	li r0, 0x64
/* 804FC180  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 804FC184  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804FC188  B0 1C 06 80 */	sth r0, 0x680(r28)
/* 804FC18C  98 7C 12 30 */	stb r3, 0x1230(r28)
/* 804FC190  3C 60 80 50 */	lis r3, lit_3789@ha
/* 804FC194  C0 23 0B 08 */	lfs f1, lit_3789@l(r3)
/* 804FC198  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804FC19C  3C 60 80 50 */	lis r3, lit_3790@ha
/* 804FC1A0  C0 03 0B 0C */	lfs f0, lit_3790@l(r3)
/* 804FC1A4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804FC1A8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 804FC1AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804FC1B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804FC1B4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804FC1B8  38 80 00 04 */	li r4, 4
/* 804FC1BC  38 A0 00 1F */	li r5, 0x1f
/* 804FC1C0  38 C1 00 34 */	addi r6, r1, 0x34
/* 804FC1C4  4B B7 38 60 */	b StartShock__12dVibration_cFii4cXyz
/* 804FC1C8  48 00 03 24 */	b lbl_804FC4EC
lbl_804FC1CC:
/* 804FC1CC  3B A0 00 00 */	li r29, 0
/* 804FC1D0  3B 20 00 00 */	li r25, 0
/* 804FC1D4  3B 60 00 00 */	li r27, 0
lbl_804FC1D8:
/* 804FC1D8  3B 5B 0B 10 */	addi r26, r27, 0xb10
/* 804FC1DC  7F 5C D2 14 */	add r26, r28, r26
/* 804FC1E0  7F 43 D3 78 */	mr r3, r26
/* 804FC1E4  4B B8 82 7C */	b ChkTgHit__12dCcD_GObjInfFv
/* 804FC1E8  28 03 00 00 */	cmplwi r3, 0
/* 804FC1EC  41 82 00 B4 */	beq lbl_804FC2A0
/* 804FC1F0  38 00 00 0A */	li r0, 0xa
/* 804FC1F4  B0 1C 06 9E */	sth r0, 0x69e(r28)
/* 804FC1F8  7F 43 D3 78 */	mr r3, r26
/* 804FC1FC  4B B8 82 FC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 804FC200  90 7C 0F F0 */	stw r3, 0xff0(r28)
/* 804FC204  80 7C 0F F0 */	lwz r3, 0xff0(r28)
/* 804FC208  80 63 00 10 */	lwz r3, 0x10(r3)
/* 804FC20C  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 804FC210  41 82 00 0C */	beq lbl_804FC21C
/* 804FC214  3B A0 00 02 */	li r29, 2
/* 804FC218  48 00 00 98 */	b lbl_804FC2B0
lbl_804FC21C:
/* 804FC21C  54 60 06 75 */	rlwinm. r0, r3, 0, 0x19, 0x1a
/* 804FC220  40 82 00 10 */	bne lbl_804FC230
/* 804FC224  A8 1C 06 6A */	lha r0, 0x66a(r28)
/* 804FC228  2C 00 00 06 */	cmpwi r0, 6
/* 804FC22C  40 82 00 2C */	bne lbl_804FC258
lbl_804FC230:
/* 804FC230  38 7C 0F F0 */	addi r3, r28, 0xff0
/* 804FC234  4B B8 B8 24 */	b at_power_check__FP11dCcU_AtInfo
/* 804FC238  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804FC23C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 804FC240  28 00 00 00 */	cmplwi r0, 0
/* 804FC244  41 82 00 0C */	beq lbl_804FC250
/* 804FC248  3B A0 00 01 */	li r29, 1
/* 804FC24C  48 00 00 64 */	b lbl_804FC2B0
lbl_804FC250:
/* 804FC250  3B A0 00 02 */	li r29, 2
/* 804FC254  48 00 00 5C */	b lbl_804FC2B0
lbl_804FC258:
/* 804FC258  38 00 00 07 */	li r0, 7
/* 804FC25C  B0 1C 06 6A */	sth r0, 0x66a(r28)
/* 804FC260  38 00 00 00 */	li r0, 0
/* 804FC264  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 804FC268  38 00 00 0A */	li r0, 0xa
/* 804FC26C  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 804FC270  38 00 00 64 */	li r0, 0x64
/* 804FC274  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 804FC278  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804FC27C  B0 1C 06 80 */	sth r0, 0x680(r28)
/* 804FC280  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 804FC284  80 9C 0F F0 */	lwz r4, 0xff0(r28)
/* 804FC288  38 A0 00 2D */	li r5, 0x2d
/* 804FC28C  38 C0 00 00 */	li r6, 0
/* 804FC290  4B B8 B2 84 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 804FC294  38 00 00 0A */	li r0, 0xa
/* 804FC298  98 1C 12 30 */	stb r0, 0x1230(r28)
/* 804FC29C  48 00 00 14 */	b lbl_804FC2B0
lbl_804FC2A0:
/* 804FC2A0  3B 39 00 01 */	addi r25, r25, 1
/* 804FC2A4  2C 19 00 04 */	cmpwi r25, 4
/* 804FC2A8  3B 7B 01 38 */	addi r27, r27, 0x138
/* 804FC2AC  41 80 FF 2C */	blt lbl_804FC1D8
lbl_804FC2B0:
/* 804FC2B0  7F A0 07 75 */	extsb. r0, r29
/* 804FC2B4  40 82 00 98 */	bne lbl_804FC34C
/* 804FC2B8  38 7C 08 9C */	addi r3, r28, 0x89c
/* 804FC2BC  4B B8 81 A4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 804FC2C0  28 03 00 00 */	cmplwi r3, 0
/* 804FC2C4  41 82 00 88 */	beq lbl_804FC34C
/* 804FC2C8  38 7C 08 9C */	addi r3, r28, 0x89c
/* 804FC2CC  4B B8 82 2C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 804FC2D0  90 7C 0F F0 */	stw r3, 0xff0(r28)
/* 804FC2D4  80 7C 0F F0 */	lwz r3, 0xff0(r28)
/* 804FC2D8  4B D6 77 70 */	b GetAc__8cCcD_ObjFv
/* 804FC2DC  80 7C 0F F0 */	lwz r3, 0xff0(r28)
/* 804FC2E0  80 83 00 10 */	lwz r4, 0x10(r3)
/* 804FC2E4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010060@ha */
/* 804FC2E8  38 03 00 60 */	addi r0, r3, 0x0060 /* 0x00010060@l */
/* 804FC2EC  7C 80 00 39 */	and. r0, r4, r0
/* 804FC2F0  41 82 00 08 */	beq lbl_804FC2F8
/* 804FC2F4  3B A0 00 02 */	li r29, 2
lbl_804FC2F8:
/* 804FC2F8  88 1C 08 50 */	lbz r0, 0x850(r28)
/* 804FC2FC  7C 00 07 75 */	extsb. r0, r0
/* 804FC300  40 82 00 4C */	bne lbl_804FC34C
/* 804FC304  38 00 00 06 */	li r0, 6
/* 804FC308  B0 1C 06 9E */	sth r0, 0x69e(r28)
/* 804FC30C  38 00 00 07 */	li r0, 7
/* 804FC310  B0 1C 06 6A */	sth r0, 0x66a(r28)
/* 804FC314  38 00 00 00 */	li r0, 0
/* 804FC318  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 804FC31C  38 60 00 0A */	li r3, 0xa
/* 804FC320  B0 7C 06 98 */	sth r3, 0x698(r28)
/* 804FC324  38 00 00 64 */	li r0, 0x64
/* 804FC328  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 804FC32C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804FC330  B0 1C 06 80 */	sth r0, 0x680(r28)
/* 804FC334  98 7C 12 30 */	stb r3, 0x1230(r28)
/* 804FC338  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 804FC33C  80 9C 0F F0 */	lwz r4, 0xff0(r28)
/* 804FC340  38 A0 00 2D */	li r5, 0x2d
/* 804FC344  38 C0 00 00 */	li r6, 0
/* 804FC348  4B B8 B1 CC */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
lbl_804FC34C:
/* 804FC34C  7F A0 07 75 */	extsb. r0, r29
/* 804FC350  41 82 01 9C */	beq lbl_804FC4EC
/* 804FC354  8B 3C 05 65 */	lbz r25, 0x565(r28)
/* 804FC358  2C 19 00 FF */	cmpwi r25, 0xff
/* 804FC35C  40 82 00 08 */	bne lbl_804FC364
/* 804FC360  3B 20 FF FF */	li r25, -1
lbl_804FC364:
/* 804FC364  8B 5C 05 64 */	lbz r26, 0x564(r28)
/* 804FC368  2C 1A 00 FF */	cmpwi r26, 0xff
/* 804FC36C  40 82 00 08 */	bne lbl_804FC374
/* 804FC370  3B 40 FF FF */	li r26, -1
lbl_804FC374:
/* 804FC374  3C 60 80 50 */	lis r3, lit_3789@ha
/* 804FC378  C0 03 0B 08 */	lfs f0, lit_3789@l(r3)
/* 804FC37C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804FC380  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804FC384  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804FC388  80 7C 0F F0 */	lwz r3, 0xff0(r28)
/* 804FC38C  4B D6 76 BC */	b GetAc__8cCcD_ObjFv
/* 804FC390  7C 65 1B 79 */	or. r5, r3, r3
/* 804FC394  41 82 00 2C */	beq lbl_804FC3C0
/* 804FC398  38 61 00 28 */	addi r3, r1, 0x28
/* 804FC39C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804FC3A0  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 804FC3A4  4B D6 A7 90 */	b __mi__4cXyzCFRC3Vec
/* 804FC3A8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804FC3AC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804FC3B0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804FC3B4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804FC3B8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804FC3BC  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_804FC3C0:
/* 804FC3C0  80 1C 12 2C */	lwz r0, 0x122c(r28)
/* 804FC3C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 804FC3C8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804FC3CC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804FC3D0  38 81 00 20 */	addi r4, r1, 0x20
/* 804FC3D4  4B B1 D4 24 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804FC3D8  7C 7B 1B 79 */	or. r27, r3, r3
/* 804FC3DC  41 82 00 40 */	beq lbl_804FC41C
/* 804FC3E0  A0 7C 04 94 */	lhz r3, 0x494(r28)
/* 804FC3E4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804FC3E8  7F 25 CB 78 */	mr r5, r25
/* 804FC3EC  7F 46 D3 78 */	mr r6, r26
/* 804FC3F0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 804FC3F4  7C 07 07 74 */	extsb r7, r0
/* 804FC3F8  39 01 00 40 */	addi r8, r1, 0x40
/* 804FC3FC  39 20 00 00 */	li r9, 0
/* 804FC400  39 40 00 00 */	li r10, 0
/* 804FC404  4B B2 04 6C */	b fopAcM_createBokkuri__FUsPC4cXyziiiPC4cXyzii
/* 804FC408  90 7B 05 BC */	stw r3, 0x5bc(r27)
/* 804FC40C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804FC410  80 03 05 88 */	lwz r0, 0x588(r3)
/* 804FC414  64 00 01 00 */	oris r0, r0, 0x100
/* 804FC418  90 03 05 88 */	stw r0, 0x588(r3)
lbl_804FC41C:
/* 804FC41C  3C 60 80 50 */	lis r3, lit_3789@ha
/* 804FC420  C0 03 0B 08 */	lfs f0, lit_3789@l(r3)
/* 804FC424  D0 1C 12 4C */	stfs f0, 0x124c(r28)
/* 804FC428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804FC42C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804FC430  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804FC434  38 80 00 00 */	li r4, 0
/* 804FC438  90 81 00 08 */	stw r4, 8(r1)
/* 804FC43C  38 00 FF FF */	li r0, -1
/* 804FC440  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FC444  90 81 00 10 */	stw r4, 0x10(r1)
/* 804FC448  90 81 00 14 */	stw r4, 0x14(r1)
/* 804FC44C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804FC450  38 80 00 00 */	li r4, 0
/* 804FC454  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008335@ha */
/* 804FC458  38 A5 83 35 */	addi r5, r5, 0x8335 /* 0x00008335@l */
/* 804FC45C  38 DC 06 D0 */	addi r6, r28, 0x6d0
/* 804FC460  38 E0 00 00 */	li r7, 0
/* 804FC464  39 00 00 00 */	li r8, 0
/* 804FC468  39 20 00 00 */	li r9, 0
/* 804FC46C  39 40 00 FF */	li r10, 0xff
/* 804FC470  3D 60 80 50 */	lis r11, lit_3790@ha
/* 804FC474  C0 2B 0B 0C */	lfs f1, lit_3790@l(r11)
/* 804FC478  4B B5 06 18 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804FC47C  38 00 00 03 */	li r0, 3
/* 804FC480  98 1C 08 50 */	stb r0, 0x850(r28)
/* 804FC484  38 00 00 0A */	li r0, 0xa
/* 804FC488  98 1C 12 30 */	stb r0, 0x1230(r28)
/* 804FC48C  38 00 00 00 */	li r0, 0
/* 804FC490  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 804FC494  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 804FC498  80 9C 0F F0 */	lwz r4, 0xff0(r28)
/* 804FC49C  38 A0 00 21 */	li r5, 0x21
/* 804FC4A0  38 C0 00 00 */	li r6, 0
/* 804FC4A4  4B B8 B0 70 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 804FC4A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070120@ha */
/* 804FC4AC  38 03 01 20 */	addi r0, r3, 0x0120 /* 0x00070120@l */
/* 804FC4B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FC4B4  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 804FC4B8  38 81 00 24 */	addi r4, r1, 0x24
/* 804FC4BC  38 A0 00 00 */	li r5, 0
/* 804FC4C0  38 C0 FF FF */	li r6, -1
/* 804FC4C4  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 804FC4C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804FC4CC  7D 89 03 A6 */	mtctr r12
/* 804FC4D0  4E 80 04 21 */	bctrl 
/* 804FC4D4  7F A0 07 74 */	extsb r0, r29
/* 804FC4D8  2C 00 00 01 */	cmpwi r0, 1
/* 804FC4DC  40 82 00 10 */	bne lbl_804FC4EC
/* 804FC4E0  38 00 00 04 */	li r0, 4
/* 804FC4E4  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 804FC4E8  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)
lbl_804FC4EC:
/* 804FC4EC  39 61 00 70 */	addi r11, r1, 0x70
/* 804FC4F0  4B E6 5D 28 */	b _restgpr_25
/* 804FC4F4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804FC4F8  7C 08 03 A6 */	mtlr r0
/* 804FC4FC  38 21 00 70 */	addi r1, r1, 0x70
/* 804FC500  4E 80 00 20 */	blr 
