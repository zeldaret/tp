lbl_8069B000:
/* 8069B000  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8069B004  7C 08 02 A6 */	mflr r0
/* 8069B008  90 01 00 54 */	stw r0, 0x54(r1)
/* 8069B00C  39 61 00 50 */	addi r11, r1, 0x50
/* 8069B010  4B CC 71 BD */	bl _savegpr_25
/* 8069B014  7C 7E 1B 78 */	mr r30, r3
/* 8069B018  3C 60 80 6A */	lis r3, lit_3902@ha /* 0x806A190C@ha */
/* 8069B01C  3B E3 19 0C */	addi r31, r3, lit_3902@l /* 0x806A190C@l */
/* 8069B020  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069B024  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069B028  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8069B02C  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 8069B030  2C 00 00 00 */	cmpwi r0, 0
/* 8069B034  40 82 04 1C */	bne lbl_8069B450
/* 8069B038  38 7E 08 84 */	addi r3, r30, 0x884
/* 8069B03C  4B 9E 87 F5 */	bl Move__10dCcD_GSttsFv
/* 8069B040  80 1E 0A 38 */	lwz r0, 0xa38(r30)
/* 8069B044  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069B048  41 82 00 98 */	beq lbl_8069B0E0
/* 8069B04C  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 8069B050  2C 00 00 14 */	cmpwi r0, 0x14
/* 8069B054  40 82 00 30 */	bne lbl_8069B084
/* 8069B058  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8069B05C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8069B060  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8069B064  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8069B068  38 00 00 00 */	li r0, 0
/* 8069B06C  B0 1E 08 60 */	sth r0, 0x860(r30)
/* 8069B070  38 00 F0 00 */	li r0, -4096
/* 8069B074  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8069B078  38 00 00 05 */	li r0, 5
/* 8069B07C  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 8069B080  48 00 00 2C */	b lbl_8069B0AC
lbl_8069B084:
/* 8069B084  38 00 00 06 */	li r0, 6
/* 8069B088  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 8069B08C  38 00 00 07 */	li r0, 7
/* 8069B090  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069B094  38 00 00 00 */	li r0, 0
/* 8069B098  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069B09C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8069B0A0  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8069B0A4  38 00 00 0A */	li r0, 0xa
/* 8069B0A8  98 1E 12 38 */	stb r0, 0x1238(r30)
lbl_8069B0AC:
/* 8069B0AC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8069B0B0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8069B0B4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8069B0B8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8069B0BC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8069B0C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069B0C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069B0C8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8069B0CC  38 80 00 04 */	li r4, 4
/* 8069B0D0  38 A0 00 1F */	li r5, 0x1f
/* 8069B0D4  38 C1 00 24 */	addi r6, r1, 0x24
/* 8069B0D8  4B 9D 49 4D */	bl StartShock__12dVibration_cFii4cXyz
/* 8069B0DC  48 00 03 74 */	b lbl_8069B450
lbl_8069B0E0:
/* 8069B0E0  3B 80 00 00 */	li r28, 0
/* 8069B0E4  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 8069B0E8  2C 00 00 14 */	cmpwi r0, 0x14
/* 8069B0EC  40 80 00 C4 */	bge lbl_8069B1B0
/* 8069B0F0  3B 20 00 00 */	li r25, 0
/* 8069B0F4  3B 60 00 00 */	li r27, 0
lbl_8069B0F8:
/* 8069B0F8  3B 5B 0B 18 */	addi r26, r27, 0xb18
/* 8069B0FC  7F 5E D2 14 */	add r26, r30, r26
/* 8069B100  7F 43 D3 78 */	mr r3, r26
/* 8069B104  4B 9E 93 5D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8069B108  28 03 00 00 */	cmplwi r3, 0
/* 8069B10C  41 82 00 94 */	beq lbl_8069B1A0
/* 8069B110  38 00 00 0A */	li r0, 0xa
/* 8069B114  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 8069B118  7F 43 D3 78 */	mr r3, r26
/* 8069B11C  4B 9E 93 DD */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8069B120  90 7E 0F F8 */	stw r3, 0xff8(r30)
/* 8069B124  80 7E 0F F8 */	lwz r3, 0xff8(r30)
/* 8069B128  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8069B12C  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8069B130  41 82 00 0C */	beq lbl_8069B13C
/* 8069B134  3B 80 00 01 */	li r28, 1
/* 8069B138  48 00 00 78 */	b lbl_8069B1B0
lbl_8069B13C:
/* 8069B13C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8069B140  41 82 00 50 */	beq lbl_8069B190
/* 8069B144  38 00 00 15 */	li r0, 0x15
/* 8069B148  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069B14C  80 7E 0F F8 */	lwz r3, 0xff8(r30)
/* 8069B150  4B BC 88 F9 */	bl GetAc__8cCcD_ObjFv
/* 8069B154  90 7E 0F FC */	stw r3, 0xffc(r30)
/* 8069B158  80 7E 0F FC */	lwz r3, 0xffc(r30)
/* 8069B15C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8069B160  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8069B164  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069B168  FC 20 00 50 */	fneg f1, f0
/* 8069B16C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8069B170  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8069B174  EC 02 00 28 */	fsubs f0, f2, f0
/* 8069B178  FC 40 00 50 */	fneg f2, f0
/* 8069B17C  4B BC C4 F9 */	bl cM_atan2s__Fff
/* 8069B180  B0 7E 06 80 */	sth r3, 0x680(r30)
/* 8069B184  38 00 00 00 */	li r0, 0
/* 8069B188  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069B18C  48 00 02 C4 */	b lbl_8069B450
lbl_8069B190:
/* 8069B190  38 7E 0F F8 */	addi r3, r30, 0xff8
/* 8069B194  4B 9E C8 C5 */	bl at_power_check__FP11dCcU_AtInfo
/* 8069B198  3B 80 00 01 */	li r28, 1
/* 8069B19C  48 00 00 14 */	b lbl_8069B1B0
lbl_8069B1A0:
/* 8069B1A0  3B 39 00 01 */	addi r25, r25, 1
/* 8069B1A4  2C 19 00 04 */	cmpwi r25, 4
/* 8069B1A8  3B 7B 01 38 */	addi r27, r27, 0x138
/* 8069B1AC  41 80 FF 4C */	blt lbl_8069B0F8
lbl_8069B1B0:
/* 8069B1B0  38 7E 08 A4 */	addi r3, r30, 0x8a4
/* 8069B1B4  4B 9E 92 AD */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8069B1B8  28 03 00 00 */	cmplwi r3, 0
/* 8069B1BC  41 82 01 30 */	beq lbl_8069B2EC
/* 8069B1C0  38 00 00 0A */	li r0, 0xa
/* 8069B1C4  98 1E 12 38 */	stb r0, 0x1238(r30)
/* 8069B1C8  38 7E 08 A4 */	addi r3, r30, 0x8a4
/* 8069B1CC  4B 9E 93 2D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8069B1D0  90 7E 0F F8 */	stw r3, 0xff8(r30)
/* 8069B1D4  7F C3 F3 78 */	mr r3, r30
/* 8069B1D8  38 9E 0F F8 */	addi r4, r30, 0xff8
/* 8069B1DC  4B 9E CA 29 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8069B1E0  38 00 00 06 */	li r0, 6
/* 8069B1E4  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 8069B1E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069B1EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069B1F0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8069B1F4  28 00 00 00 */	cmplwi r0, 0
/* 8069B1F8  40 82 00 10 */	bne lbl_8069B208
/* 8069B1FC  88 1E 08 50 */	lbz r0, 0x850(r30)
/* 8069B200  7C 00 07 75 */	extsb. r0, r0
/* 8069B204  41 82 00 24 */	beq lbl_8069B228
lbl_8069B208:
/* 8069B208  80 7E 0F F8 */	lwz r3, 0xff8(r30)
/* 8069B20C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8069B210  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010040@ha */
/* 8069B214  38 03 00 40 */	addi r0, r3, 0x0040 /* 0x00010040@l */
/* 8069B218  7C 80 00 39 */	and. r0, r4, r0
/* 8069B21C  41 82 00 0C */	beq lbl_8069B228
/* 8069B220  3B 80 00 01 */	li r28, 1
/* 8069B224  48 00 00 C8 */	b lbl_8069B2EC
lbl_8069B228:
/* 8069B228  88 1E 10 18 */	lbz r0, 0x1018(r30)
/* 8069B22C  28 00 00 10 */	cmplwi r0, 0x10
/* 8069B230  40 82 00 48 */	bne lbl_8069B278
/* 8069B234  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 8069B238  2C 00 00 14 */	cmpwi r0, 0x14
/* 8069B23C  40 82 00 20 */	bne lbl_8069B25C
/* 8069B240  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8069B244  D0 1E 08 58 */	stfs f0, 0x858(r30)
/* 8069B248  A8 1E 10 06 */	lha r0, 0x1006(r30)
/* 8069B24C  B0 1E 08 5C */	sth r0, 0x85c(r30)
/* 8069B250  38 00 00 0A */	li r0, 0xa
/* 8069B254  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069B258  48 00 00 94 */	b lbl_8069B2EC
lbl_8069B25C:
/* 8069B25C  38 00 00 07 */	li r0, 7
/* 8069B260  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069B264  38 00 00 00 */	li r0, 0
/* 8069B268  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069B26C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8069B270  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8069B274  48 00 00 78 */	b lbl_8069B2EC
lbl_8069B278:
/* 8069B278  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 8069B27C  2C 00 00 14 */	cmpwi r0, 0x14
/* 8069B280  40 80 00 28 */	bge lbl_8069B2A8
/* 8069B284  38 00 00 07 */	li r0, 7
/* 8069B288  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069B28C  38 00 00 00 */	li r0, 0
/* 8069B290  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069B294  A8 1E 10 06 */	lha r0, 0x1006(r30)
/* 8069B298  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8069B29C  38 00 00 1E */	li r0, 0x1e
/* 8069B2A0  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8069B2A4  48 00 00 48 */	b lbl_8069B2EC
lbl_8069B2A8:
/* 8069B2A8  40 82 00 44 */	bne lbl_8069B2EC
/* 8069B2AC  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8069B2B0  2C 00 00 00 */	cmpwi r0, 0
/* 8069B2B4  41 81 00 20 */	bgt lbl_8069B2D4
/* 8069B2B8  A8 1E 10 06 */	lha r0, 0x1006(r30)
/* 8069B2BC  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8069B2C0  38 00 00 00 */	li r0, 0
/* 8069B2C4  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069B2C8  38 00 00 15 */	li r0, 0x15
/* 8069B2CC  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069B2D0  48 00 01 80 */	b lbl_8069B450
lbl_8069B2D4:
/* 8069B2D4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8069B2D8  D0 1E 08 58 */	stfs f0, 0x858(r30)
/* 8069B2DC  A8 1E 10 06 */	lha r0, 0x1006(r30)
/* 8069B2E0  B0 1E 08 5C */	sth r0, 0x85c(r30)
/* 8069B2E4  38 00 00 0A */	li r0, 0xa
/* 8069B2E8  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_8069B2EC:
/* 8069B2EC  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8069B2F0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8069B2F4  41 81 00 14 */	bgt lbl_8069B308
/* 8069B2F8  38 00 00 00 */	li r0, 0
/* 8069B2FC  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8069B300  38 00 00 03 */	li r0, 3
/* 8069B304  98 1E 09 5E */	stb r0, 0x95e(r30)
lbl_8069B308:
/* 8069B308  7F 80 07 75 */	extsb. r0, r28
/* 8069B30C  41 82 01 44 */	beq lbl_8069B450
/* 8069B310  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 8069B314  2C 00 00 14 */	cmpwi r0, 0x14
/* 8069B318  40 82 00 2C */	bne lbl_8069B344
/* 8069B31C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8069B320  D0 1E 08 58 */	stfs f0, 0x858(r30)
/* 8069B324  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8069B328  7C 00 00 D0 */	neg r0, r0
/* 8069B32C  B0 1E 08 5C */	sth r0, 0x85c(r30)
/* 8069B330  38 00 00 0A */	li r0, 0xa
/* 8069B334  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069B338  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8069B33C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8069B340  48 00 01 10 */	b lbl_8069B450
lbl_8069B344:
/* 8069B344  38 00 00 14 */	li r0, 0x14
/* 8069B348  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069B34C  38 80 00 00 */	li r4, 0
/* 8069B350  B0 9E 06 6C */	sth r4, 0x66c(r30)
/* 8069B354  38 00 13 88 */	li r0, 0x1388
/* 8069B358  B0 1E 08 4E */	sth r0, 0x84e(r30)
/* 8069B35C  98 9E 08 50 */	stb r4, 0x850(r30)
/* 8069B360  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069B364  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8069B368  38 00 00 2D */	li r0, 0x2d
/* 8069B36C  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 8069B370  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069B374  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069B378  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8069B37C  90 81 00 08 */	stw r4, 8(r1)
/* 8069B380  38 00 FF FF */	li r0, -1
/* 8069B384  90 01 00 0C */	stw r0, 0xc(r1)
/* 8069B388  90 81 00 10 */	stw r4, 0x10(r1)
/* 8069B38C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8069B390  90 81 00 18 */	stw r4, 0x18(r1)
/* 8069B394  38 80 00 00 */	li r4, 0
/* 8069B398  3C A0 00 01 */	lis r5, 0x0001 /* 0x000081C1@ha */
/* 8069B39C  38 A5 81 C1 */	addi r5, r5, 0x81C1 /* 0x000081C1@l */
/* 8069B3A0  38 DE 06 CC */	addi r6, r30, 0x6cc
/* 8069B3A4  38 E0 00 00 */	li r7, 0
/* 8069B3A8  39 00 00 00 */	li r8, 0
/* 8069B3AC  39 20 00 00 */	li r9, 0
/* 8069B3B0  39 40 00 FF */	li r10, 0xff
/* 8069B3B4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069B3B8  4B 9B 16 D9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8069B3BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008A@ha */
/* 8069B3C0  38 03 00 8A */	addi r0, r3, 0x008A /* 0x0007008A@l */
/* 8069B3C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8069B3C8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8069B3CC  38 81 00 20 */	addi r4, r1, 0x20
/* 8069B3D0  38 A0 FF FF */	li r5, -1
/* 8069B3D4  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8069B3D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069B3DC  7D 89 03 A6 */	mtctr r12
/* 8069B3E0  4E 80 04 21 */	bctrl 
/* 8069B3E4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8069B3E8  80 9E 0F F8 */	lwz r4, 0xff8(r30)
/* 8069B3EC  38 A0 00 21 */	li r5, 0x21
/* 8069B3F0  38 C0 00 00 */	li r6, 0
/* 8069B3F4  4B 9E C1 21 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 8069B3F8  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 8069B3FC  28 00 00 01 */	cmplwi r0, 1
/* 8069B400  40 82 00 24 */	bne lbl_8069B424
/* 8069B404  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8069B408  D0 1E 08 64 */	stfs f0, 0x864(r30)
/* 8069B40C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8069B410  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8069B414  38 00 00 0A */	li r0, 0xa
/* 8069B418  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 8069B41C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8069B420  48 00 00 30 */	b lbl_8069B450
lbl_8069B424:
/* 8069B424  28 00 00 02 */	cmplwi r0, 2
/* 8069B428  40 82 00 18 */	bne lbl_8069B440
/* 8069B42C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8069B430  D0 1E 08 64 */	stfs f0, 0x864(r30)
/* 8069B434  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8069B438  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8069B43C  48 00 00 14 */	b lbl_8069B450
lbl_8069B440:
/* 8069B440  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8069B444  D0 1E 08 64 */	stfs f0, 0x864(r30)
/* 8069B448  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8069B44C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_8069B450:
/* 8069B450  39 61 00 50 */	addi r11, r1, 0x50
/* 8069B454  4B CC 6D C5 */	bl _restgpr_25
/* 8069B458  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8069B45C  7C 08 03 A6 */	mtlr r0
/* 8069B460  38 21 00 50 */	addi r1, r1, 0x50
/* 8069B464  4E 80 00 20 */	blr 
