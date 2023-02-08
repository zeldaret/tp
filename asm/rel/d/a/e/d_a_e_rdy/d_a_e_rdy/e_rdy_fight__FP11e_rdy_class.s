lbl_8076E06C:
/* 8076E06C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8076E070  7C 08 02 A6 */	mflr r0
/* 8076E074  90 01 00 44 */	stw r0, 0x44(r1)
/* 8076E078  39 61 00 40 */	addi r11, r1, 0x40
/* 8076E07C  4B BF 41 5D */	bl _savegpr_28
/* 8076E080  7C 7E 1B 78 */	mr r30, r3
/* 8076E084  3C 80 80 78 */	lis r4, lit_4018@ha /* 0x80779DFC@ha */
/* 8076E088  3B E4 9D FC */	addi r31, r4, lit_4018@l /* 0x80779DFC@l */
/* 8076E08C  80 83 05 CC */	lwz r4, 0x5cc(r3)
/* 8076E090  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8076E094  FC 00 00 1E */	fctiwz f0, f0
/* 8076E098  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8076E09C  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 8076E0A0  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8076E0A4  2C 00 00 03 */	cmpwi r0, 3
/* 8076E0A8  41 82 02 5C */	beq lbl_8076E304
/* 8076E0AC  40 80 00 1C */	bge lbl_8076E0C8
/* 8076E0B0  2C 00 00 01 */	cmpwi r0, 1
/* 8076E0B4  41 82 00 B4 */	beq lbl_8076E168
/* 8076E0B8  40 80 01 2C */	bge lbl_8076E1E4
/* 8076E0BC  2C 00 00 00 */	cmpwi r0, 0
/* 8076E0C0  40 80 00 14 */	bge lbl_8076E0D4
/* 8076E0C4  48 00 02 5C */	b lbl_8076E320
lbl_8076E0C8:
/* 8076E0C8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8076E0CC  41 82 02 38 */	beq lbl_8076E304
/* 8076E0D0  48 00 02 50 */	b lbl_8076E320
lbl_8076E0D4:
/* 8076E0D4  38 80 00 05 */	li r4, 5
/* 8076E0D8  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 8076E0DC  38 A0 00 00 */	li r5, 0
/* 8076E0E0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076E0E4  4B FF DD 9D */	bl anm_init__FP11e_rdy_classifUcf
/* 8076E0E8  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 8076E0EC  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 8076E0F0  88 03 00 38 */	lbz r0, 0x38(r3)
/* 8076E0F4  28 00 00 00 */	cmplwi r0, 0
/* 8076E0F8  40 82 00 10 */	bne lbl_8076E108
/* 8076E0FC  38 00 00 19 */	li r0, 0x19
/* 8076E100  B0 1E 0A 60 */	sth r0, 0xa60(r30)
/* 8076E104  48 00 00 28 */	b lbl_8076E12C
lbl_8076E108:
/* 8076E108  28 00 00 01 */	cmplwi r0, 1
/* 8076E10C  40 82 00 10 */	bne lbl_8076E11C
/* 8076E110  38 00 00 0F */	li r0, 0xf
/* 8076E114  B0 1E 0A 60 */	sth r0, 0xa60(r30)
/* 8076E118  48 00 00 14 */	b lbl_8076E12C
lbl_8076E11C:
/* 8076E11C  28 00 00 02 */	cmplwi r0, 2
/* 8076E120  40 82 00 0C */	bne lbl_8076E12C
/* 8076E124  38 00 00 0A */	li r0, 0xa
/* 8076E128  B0 1E 0A 60 */	sth r0, 0xa60(r30)
lbl_8076E12C:
/* 8076E12C  38 00 00 01 */	li r0, 1
/* 8076E130  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8076E134  38 00 00 05 */	li r0, 5
/* 8076E138  B0 1E 0A 62 */	sth r0, 0xa62(r30)
/* 8076E13C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070034@ha */
/* 8076E140  38 03 00 34 */	addi r0, r3, 0x0034 /* 0x00070034@l */
/* 8076E144  90 01 00 0C */	stw r0, 0xc(r1)
/* 8076E148  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8076E14C  38 81 00 0C */	addi r4, r1, 0xc
/* 8076E150  38 A0 FF FF */	li r5, -1
/* 8076E154  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 8076E158  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8076E15C  7D 89 03 A6 */	mtctr r12
/* 8076E160  4E 80 04 21 */	bctrl 
/* 8076E164  48 00 01 BC */	b lbl_8076E320
lbl_8076E168:
/* 8076E168  A8 1E 0A 62 */	lha r0, 0xa62(r30)
/* 8076E16C  2C 00 00 00 */	cmpwi r0, 0
/* 8076E170  41 82 00 18 */	beq lbl_8076E188
/* 8076E174  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8076E178  A8 9E 0A 4C */	lha r4, 0xa4c(r30)
/* 8076E17C  38 A0 00 04 */	li r5, 4
/* 8076E180  38 C0 08 00 */	li r6, 0x800
/* 8076E184  4B B0 24 85 */	bl cLib_addCalcAngleS2__FPssss
lbl_8076E188:
/* 8076E188  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 8076E18C  40 82 00 14 */	bne lbl_8076E1A0
/* 8076E190  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8076E194  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8076E198  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8076E19C  48 00 01 84 */	b lbl_8076E320
lbl_8076E1A0:
/* 8076E1A0  A8 1E 0A 60 */	lha r0, 0xa60(r30)
/* 8076E1A4  2C 00 00 00 */	cmpwi r0, 0
/* 8076E1A8  40 82 01 78 */	bne lbl_8076E320
/* 8076E1AC  7F C3 F3 78 */	mr r3, r30
/* 8076E1B0  38 80 00 05 */	li r4, 5
/* 8076E1B4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8076E1B8  38 A0 00 00 */	li r5, 0
/* 8076E1BC  3C C0 80 78 */	lis r6, l_HIO@ha /* 0x8077A884@ha */
/* 8076E1C0  38 C6 A8 84 */	addi r6, r6, l_HIO@l /* 0x8077A884@l */
/* 8076E1C4  C0 46 00 20 */	lfs f2, 0x20(r6)
/* 8076E1C8  4B FF DC B9 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076E1CC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8076E1D0  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8076E1D4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8076E1D8  38 00 00 02 */	li r0, 2
/* 8076E1DC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8076E1E0  48 00 01 40 */	b lbl_8076E320
lbl_8076E1E4:
/* 8076E1E4  2C 1D 00 2C */	cmpwi r29, 0x2c
/* 8076E1E8  41 80 00 14 */	blt lbl_8076E1FC
/* 8076E1EC  2C 1D 00 2F */	cmpwi r29, 0x2f
/* 8076E1F0  41 81 00 0C */	bgt lbl_8076E1FC
/* 8076E1F4  38 00 00 01 */	li r0, 1
/* 8076E1F8  98 1E 0A 7B */	stb r0, 0xa7b(r30)
lbl_8076E1FC:
/* 8076E1FC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8076E200  38 63 00 0C */	addi r3, r3, 0xc
/* 8076E204  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 8076E208  4B BB A2 25 */	bl checkPass__12J3DFrameCtrlFf
/* 8076E20C  2C 03 00 00 */	cmpwi r3, 0
/* 8076E210  41 82 00 30 */	beq lbl_8076E240
/* 8076E214  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070012@ha */
/* 8076E218  38 03 00 12 */	addi r0, r3, 0x0012 /* 0x00070012@l */
/* 8076E21C  90 01 00 08 */	stw r0, 8(r1)
/* 8076E220  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8076E224  38 81 00 08 */	addi r4, r1, 8
/* 8076E228  38 A0 00 00 */	li r5, 0
/* 8076E22C  38 C0 FF FF */	li r6, -1
/* 8076E230  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 8076E234  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8076E238  7D 89 03 A6 */	mtctr r12
/* 8076E23C  4E 80 04 21 */	bctrl 
lbl_8076E240:
/* 8076E240  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8076E244  38 63 00 0C */	addi r3, r3, 0xc
/* 8076E248  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8076E24C  4B BB A1 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 8076E250  2C 03 00 00 */	cmpwi r3, 0
/* 8076E254  41 82 00 10 */	beq lbl_8076E264
/* 8076E258  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8076E25C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8076E260  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_8076E264:
/* 8076E264  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 8076E268  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 8076E26C  88 03 00 38 */	lbz r0, 0x38(r3)
/* 8076E270  28 00 00 00 */	cmplwi r0, 0
/* 8076E274  40 82 00 0C */	bne lbl_8076E280
/* 8076E278  3B 80 00 40 */	li r28, 0x40
/* 8076E27C  48 00 00 20 */	b lbl_8076E29C
lbl_8076E280:
/* 8076E280  28 00 00 01 */	cmplwi r0, 1
/* 8076E284  40 82 00 0C */	bne lbl_8076E290
/* 8076E288  3B 80 00 36 */	li r28, 0x36
/* 8076E28C  48 00 00 10 */	b lbl_8076E29C
lbl_8076E290:
/* 8076E290  28 00 00 02 */	cmplwi r0, 2
/* 8076E294  40 82 00 08 */	bne lbl_8076E29C
/* 8076E298  3B 80 00 2C */	li r28, 0x2c
lbl_8076E29C:
/* 8076E29C  7C 1D E0 00 */	cmpw r29, r28
/* 8076E2A0  41 80 00 80 */	blt lbl_8076E320
/* 8076E2A4  38 00 00 03 */	li r0, 3
/* 8076E2A8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8076E2AC  88 03 00 38 */	lbz r0, 0x38(r3)
/* 8076E2B0  28 00 00 00 */	cmplwi r0, 0
/* 8076E2B4  40 82 00 10 */	bne lbl_8076E2C4
/* 8076E2B8  38 00 00 14 */	li r0, 0x14
/* 8076E2BC  B0 1E 0A 60 */	sth r0, 0xa60(r30)
/* 8076E2C0  48 00 00 28 */	b lbl_8076E2E8
lbl_8076E2C4:
/* 8076E2C4  28 00 00 01 */	cmplwi r0, 1
/* 8076E2C8  40 82 00 10 */	bne lbl_8076E2D8
/* 8076E2CC  38 00 00 0F */	li r0, 0xf
/* 8076E2D0  B0 1E 0A 60 */	sth r0, 0xa60(r30)
/* 8076E2D4  48 00 00 14 */	b lbl_8076E2E8
lbl_8076E2D8:
/* 8076E2D8  28 00 00 02 */	cmplwi r0, 2
/* 8076E2DC  40 82 00 0C */	bne lbl_8076E2E8
/* 8076E2E0  38 00 00 0A */	li r0, 0xa
/* 8076E2E4  B0 1E 0A 60 */	sth r0, 0xa60(r30)
lbl_8076E2E8:
/* 8076E2E8  7F C3 F3 78 */	mr r3, r30
/* 8076E2EC  38 80 00 1C */	li r4, 0x1c
/* 8076E2F0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076E2F4  38 A0 00 02 */	li r5, 2
/* 8076E2F8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076E2FC  4B FF DB 85 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076E300  48 00 00 20 */	b lbl_8076E320
lbl_8076E304:
/* 8076E304  A8 1E 0A 60 */	lha r0, 0xa60(r30)
/* 8076E308  2C 00 00 00 */	cmpwi r0, 0
/* 8076E30C  40 82 00 14 */	bne lbl_8076E320
/* 8076E310  38 00 00 03 */	li r0, 3
/* 8076E314  B0 1E 0A 42 */	sth r0, 0xa42(r30)
/* 8076E318  38 00 00 00 */	li r0, 0
/* 8076E31C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8076E320:
/* 8076E320  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8076E324  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076E328  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 8076E32C  4B B0 17 55 */	bl cLib_addCalc0__FPfff
/* 8076E330  88 1E 0A 7B */	lbz r0, 0xa7b(r30)
/* 8076E334  7C 00 07 75 */	extsb. r0, r0
/* 8076E338  41 82 00 C8 */	beq lbl_8076E400
/* 8076E33C  7F C3 F3 78 */	mr r3, r30
/* 8076E340  4B FF FC CD */	bl at_hit_check__FP11e_rdy_class
/* 8076E344  28 03 00 00 */	cmplwi r3, 0
/* 8076E348  41 82 00 B8 */	beq lbl_8076E400
/* 8076E34C  A8 03 00 08 */	lha r0, 8(r3)
/* 8076E350  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8076E354  40 82 00 AC */	bne lbl_8076E400
/* 8076E358  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076E35C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076E360  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8076E364  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8076E368  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8076E36C  7D 89 03 A6 */	mtctr r12
/* 8076E370  4E 80 04 21 */	bctrl 
/* 8076E374  2C 03 00 00 */	cmpwi r3, 0
/* 8076E378  41 82 00 88 */	beq lbl_8076E400
/* 8076E37C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8076E380  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8076E384  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8076E388  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8076E38C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8076E390  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8076E394  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8076E398  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8076E39C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076E3A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076E3A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8076E3A8  38 80 00 04 */	li r4, 4
/* 8076E3AC  38 A0 00 1F */	li r5, 0x1f
/* 8076E3B0  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8076E3B4  4B 90 16 71 */	bl StartShock__12dVibration_cFii4cXyz
/* 8076E3B8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8076E3BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8076E3C0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8076E3C4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8076E3C8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8076E3CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8076E3D0  38 61 00 10 */	addi r3, r1, 0x10
/* 8076E3D4  38 80 00 64 */	li r4, 0x64
/* 8076E3D8  28 1E 00 00 */	cmplwi r30, 0
/* 8076E3DC  41 82 00 0C */	beq lbl_8076E3E8
/* 8076E3E0  80 BE 00 04 */	lwz r5, 4(r30)
/* 8076E3E4  48 00 00 08 */	b lbl_8076E3EC
lbl_8076E3E8:
/* 8076E3E8  38 A0 FF FF */	li r5, -1
lbl_8076E3EC:
/* 8076E3EC  38 C0 00 05 */	li r6, 5
/* 8076E3F0  4B A3 9D D1 */	bl dKy_Sound_set__F4cXyziUii
/* 8076E3F4  38 00 00 0A */	li r0, 0xa
/* 8076E3F8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8076E3FC  B0 1E 0A 60 */	sth r0, 0xa60(r30)
lbl_8076E400:
/* 8076E400  39 61 00 40 */	addi r11, r1, 0x40
/* 8076E404  4B BF 3E 21 */	bl _restgpr_28
/* 8076E408  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8076E40C  7C 08 03 A6 */	mtlr r0
/* 8076E410  38 21 00 40 */	addi r1, r1, 0x40
/* 8076E414  4E 80 00 20 */	blr 
