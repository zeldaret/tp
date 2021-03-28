lbl_8070F08C:
/* 8070F08C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8070F090  7C 08 02 A6 */	mflr r0
/* 8070F094  90 01 00 74 */	stw r0, 0x74(r1)
/* 8070F098  39 61 00 70 */	addi r11, r1, 0x70
/* 8070F09C  4B C5 31 38 */	b _savegpr_27
/* 8070F0A0  7C 7D 1B 78 */	mr r29, r3
/* 8070F0A4  3C 60 80 71 */	lis r3, lit_3828@ha
/* 8070F0A8  3B C3 39 74 */	addi r30, r3, lit_3828@l
/* 8070F0AC  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8070F0B0  2C 00 00 00 */	cmpwi r0, 0
/* 8070F0B4  41 81 00 18 */	bgt lbl_8070F0CC
/* 8070F0B8  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8070F0BC  54 00 00 3E */	slwi r0, r0, 0
/* 8070F0C0  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8070F0C4  38 00 00 00 */	li r0, 0
/* 8070F0C8  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_8070F0CC:
/* 8070F0CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070F0D0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8070F0D4  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8070F0D8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8070F0DC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8070F0E0  41 82 00 78 */	beq lbl_8070F158
/* 8070F0E4  88 1D 06 D3 */	lbz r0, 0x6d3(r29)
/* 8070F0E8  7C 00 07 75 */	extsb. r0, r0
/* 8070F0EC  40 82 01 10 */	bne lbl_8070F1FC
/* 8070F0F0  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8070F0F4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8070F0F8  41 82 01 04 */	beq lbl_8070F1FC
/* 8070F0FC  A8 1D 06 C0 */	lha r0, 0x6c0(r29)
/* 8070F100  2C 00 00 28 */	cmpwi r0, 0x28
/* 8070F104  40 81 00 10 */	ble lbl_8070F114
/* 8070F108  38 00 00 5A */	li r0, 0x5a
/* 8070F10C  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 8070F110  48 00 00 20 */	b lbl_8070F130
lbl_8070F114:
/* 8070F114  2C 00 00 14 */	cmpwi r0, 0x14
/* 8070F118  40 81 00 10 */	ble lbl_8070F128
/* 8070F11C  38 00 00 46 */	li r0, 0x46
/* 8070F120  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 8070F124  48 00 00 0C */	b lbl_8070F130
lbl_8070F128:
/* 8070F128  38 00 00 32 */	li r0, 0x32
/* 8070F12C  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
lbl_8070F130:
/* 8070F130  38 00 00 1E */	li r0, 0x1e
/* 8070F134  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8070F138  38 00 00 01 */	li r0, 1
/* 8070F13C  98 1D 06 D3 */	stb r0, 0x6d3(r29)
/* 8070F140  3C 60 80 71 */	lis r3, l_HIO@ha
/* 8070F144  38 63 3F 74 */	addi r3, r3, l_HIO@l
/* 8070F148  A8 63 00 20 */	lha r3, 0x20(r3)
/* 8070F14C  38 03 00 01 */	addi r0, r3, 1
/* 8070F150  B0 1D 06 C2 */	sth r0, 0x6c2(r29)
/* 8070F154  48 00 00 A8 */	b lbl_8070F1FC
lbl_8070F158:
/* 8070F158  28 1D 00 00 */	cmplwi r29, 0
/* 8070F15C  41 82 00 A0 */	beq lbl_8070F1FC
/* 8070F160  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8070F164  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8070F168  41 82 00 94 */	beq lbl_8070F1FC
/* 8070F16C  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8070F170  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8070F174  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8070F178  38 00 00 03 */	li r0, 3
/* 8070F17C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8070F180  38 80 00 00 */	li r4, 0
/* 8070F184  B0 9D 05 62 */	sth r4, 0x562(r29)
/* 8070F188  38 00 00 64 */	li r0, 0x64
/* 8070F18C  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 8070F190  38 00 00 2E */	li r0, 0x2e
/* 8070F194  B0 1D 06 C2 */	sth r0, 0x6c2(r29)
/* 8070F198  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 8070F19C  38 00 FF E8 */	li r0, -24
/* 8070F1A0  7C 60 00 38 */	and r0, r3, r0
/* 8070F1A4  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8070F1A8  B0 9D 05 62 */	sth r4, 0x562(r29)
/* 8070F1AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703CA@ha */
/* 8070F1B0  38 03 03 CA */	addi r0, r3, 0x03CA /* 0x000703CA@l */
/* 8070F1B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8070F1B8  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 8070F1BC  38 81 00 1C */	addi r4, r1, 0x1c
/* 8070F1C0  38 A0 FF FF */	li r5, -1
/* 8070F1C4  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 8070F1C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070F1CC  7D 89 03 A6 */	mtctr r12
/* 8070F1D0  4E 80 04 21 */	bctrl 
/* 8070F1D4  38 00 00 01 */	li r0, 1
/* 8070F1D8  98 1D 06 A4 */	stb r0, 0x6a4(r29)
/* 8070F1DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070F1E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070F1E4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8070F1E8  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8070F1EC  64 00 01 00 */	oris r0, r0, 0x100
/* 8070F1F0  90 03 05 88 */	stw r0, 0x588(r3)
/* 8070F1F4  38 00 00 0F */	li r0, 0xf
/* 8070F1F8  B0 1D 07 EC */	sth r0, 0x7ec(r29)
lbl_8070F1FC:
/* 8070F1FC  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8070F200  28 00 00 1F */	cmplwi r0, 0x1f
/* 8070F204  41 81 09 50 */	bgt lbl_8070FB54
/* 8070F208  3C 60 80 71 */	lis r3, lit_6010@ha
/* 8070F20C  38 63 3B D0 */	addi r3, r3, lit_6010@l
/* 8070F210  54 00 10 3A */	slwi r0, r0, 2
/* 8070F214  7C 03 00 2E */	lwzx r0, r3, r0
/* 8070F218  7C 09 03 A6 */	mtctr r0
/* 8070F21C  4E 80 04 20 */	bctr 
lbl_8070F220:
/* 8070F220  7F A3 EB 78 */	mr r3, r29
/* 8070F224  38 80 00 09 */	li r4, 9
/* 8070F228  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8070F22C  38 A0 00 00 */	li r5, 0
/* 8070F230  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8070F234  4B FF B5 F9 */	bl anm_init__FP10e_mf_classifUcf
/* 8070F238  38 00 00 01 */	li r0, 1
/* 8070F23C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8070F240  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8070F244  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8070F248  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 8070F24C  D0 1D 07 C8 */	stfs f0, 0x7c8(r29)
/* 8070F250  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8070F254  2C 00 00 00 */	cmpwi r0, 0
/* 8070F258  41 81 00 50 */	bgt lbl_8070F2A8
/* 8070F25C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703CA@ha */
/* 8070F260  38 03 03 CA */	addi r0, r3, 0x03CA /* 0x000703CA@l */
/* 8070F264  90 01 00 18 */	stw r0, 0x18(r1)
/* 8070F268  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 8070F26C  38 81 00 18 */	addi r4, r1, 0x18
/* 8070F270  38 A0 FF FF */	li r5, -1
/* 8070F274  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 8070F278  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070F27C  7D 89 03 A6 */	mtctr r12
/* 8070F280  4E 80 04 21 */	bctrl 
/* 8070F284  38 00 00 01 */	li r0, 1
/* 8070F288  98 1D 06 A4 */	stb r0, 0x6a4(r29)
/* 8070F28C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070F290  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070F294  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8070F298  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8070F29C  64 00 01 00 */	oris r0, r0, 0x100
/* 8070F2A0  90 03 05 88 */	stw r0, 0x588(r3)
/* 8070F2A4  48 00 00 2C */	b lbl_8070F2D0
lbl_8070F2A8:
/* 8070F2A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703CC@ha */
/* 8070F2AC  38 03 03 CC */	addi r0, r3, 0x03CC /* 0x000703CC@l */
/* 8070F2B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070F2B4  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 8070F2B8  38 81 00 14 */	addi r4, r1, 0x14
/* 8070F2BC  38 A0 FF FF */	li r5, -1
/* 8070F2C0  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 8070F2C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070F2C8  7D 89 03 A6 */	mtctr r12
/* 8070F2CC  4E 80 04 21 */	bctrl 
lbl_8070F2D0:
/* 8070F2D0  38 00 00 00 */	li r0, 0
/* 8070F2D4  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 8070F2D8  48 00 08 7C */	b lbl_8070FB54
lbl_8070F2DC:
/* 8070F2DC  80 1D 08 90 */	lwz r0, 0x890(r29)
/* 8070F2E0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8070F2E4  41 82 00 DC */	beq lbl_8070F3C0
/* 8070F2E8  A8 1D 06 C0 */	lha r0, 0x6c0(r29)
/* 8070F2EC  2C 00 00 00 */	cmpwi r0, 0
/* 8070F2F0  40 82 00 D0 */	bne lbl_8070F3C0
/* 8070F2F4  7F A3 EB 78 */	mr r3, r29
/* 8070F2F8  4B FF FA 19 */	bl kado_check__FP10e_mf_class
/* 8070F2FC  2C 03 00 00 */	cmpwi r3, 0
/* 8070F300  41 82 00 60 */	beq lbl_8070F360
/* 8070F304  2C 03 00 02 */	cmpwi r3, 2
/* 8070F308  40 82 00 1C */	bne lbl_8070F324
/* 8070F30C  38 00 0C 00 */	li r0, 0xc00
/* 8070F310  B0 1D 06 EE */	sth r0, 0x6ee(r29)
/* 8070F314  A8 7D 07 06 */	lha r3, 0x706(r29)
/* 8070F318  38 03 E4 A8 */	addi r0, r3, -7000
/* 8070F31C  B0 1D 07 06 */	sth r0, 0x706(r29)
/* 8070F320  48 00 00 18 */	b lbl_8070F338
lbl_8070F324:
/* 8070F324  38 00 F4 00 */	li r0, -3072
/* 8070F328  B0 1D 06 EE */	sth r0, 0x6ee(r29)
/* 8070F32C  A8 7D 07 06 */	lha r3, 0x706(r29)
/* 8070F330  38 03 1B 58 */	addi r0, r3, 0x1b58
/* 8070F334  B0 1D 07 06 */	sth r0, 0x706(r29)
lbl_8070F338:
/* 8070F338  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 8070F33C  D0 1D 07 C8 */	stfs f0, 0x7c8(r29)
/* 8070F340  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8070F344  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8070F348  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 8070F34C  38 00 00 28 */	li r0, 0x28
/* 8070F350  B0 1D 08 08 */	sth r0, 0x808(r29)
/* 8070F354  38 00 00 3C */	li r0, 0x3c
/* 8070F358  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 8070F35C  48 00 07 F8 */	b lbl_8070FB54
lbl_8070F360:
/* 8070F360  38 00 00 0A */	li r0, 0xa
/* 8070F364  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8070F368  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8070F36C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8070F370  C0 3D 06 E4 */	lfs f1, 0x6e4(r29)
/* 8070F374  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 8070F378  EC 01 00 32 */	fmuls f0, f1, f0
/* 8070F37C  D0 1D 06 E4 */	stfs f0, 0x6e4(r29)
/* 8070F380  A8 7D 07 06 */	lha r3, 0x706(r29)
/* 8070F384  3C 63 00 01 */	addis r3, r3, 1
/* 8070F388  38 03 80 00 */	addi r0, r3, -32768
/* 8070F38C  B0 1D 07 06 */	sth r0, 0x706(r29)
/* 8070F390  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 8070F394  D0 1D 07 C8 */	stfs f0, 0x7c8(r29)
/* 8070F398  38 00 00 05 */	li r0, 5
/* 8070F39C  B0 1D 08 20 */	sth r0, 0x820(r29)
/* 8070F3A0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8070F3A4  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8070F3A8  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 8070F3AC  38 00 00 28 */	li r0, 0x28
/* 8070F3B0  B0 1D 08 08 */	sth r0, 0x808(r29)
/* 8070F3B4  38 00 00 00 */	li r0, 0
/* 8070F3B8  B0 1D 06 EE */	sth r0, 0x6ee(r29)
/* 8070F3BC  48 00 07 98 */	b lbl_8070FB54
lbl_8070F3C0:
/* 8070F3C0  38 7D 07 04 */	addi r3, r29, 0x704
/* 8070F3C4  38 80 C0 00 */	li r4, -16384
/* 8070F3C8  38 A0 00 01 */	li r5, 1
/* 8070F3CC  38 C0 03 00 */	li r6, 0x300
/* 8070F3D0  4B B6 12 38 */	b cLib_addCalcAngleS2__FPssss
/* 8070F3D4  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8070F3D8  A8 1D 06 EE */	lha r0, 0x6ee(r29)
/* 8070F3DC  7C 03 02 14 */	add r0, r3, r0
/* 8070F3E0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8070F3E4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8070F3E8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8070F3EC  A8 1D 07 04 */	lha r0, 0x704(r29)
/* 8070F3F0  2C 00 D0 00 */	cmpwi r0, -12288
/* 8070F3F4  41 81 07 60 */	bgt lbl_8070FB54
/* 8070F3F8  80 1D 08 90 */	lwz r0, 0x890(r29)
/* 8070F3FC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8070F400  41 82 07 54 */	beq lbl_8070FB54
/* 8070F404  38 00 00 02 */	li r0, 2
/* 8070F408  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8070F40C  38 00 00 0A */	li r0, 0xa
/* 8070F410  98 1D 07 16 */	stb r0, 0x716(r29)
/* 8070F414  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002D@ha */
/* 8070F418  38 03 00 2D */	addi r0, r3, 0x002D /* 0x0006002D@l */
/* 8070F41C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8070F420  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 8070F424  38 81 00 10 */	addi r4, r1, 0x10
/* 8070F428  38 A0 00 00 */	li r5, 0
/* 8070F42C  38 C0 FF FF */	li r6, -1
/* 8070F430  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 8070F434  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8070F438  7D 89 03 A6 */	mtctr r12
/* 8070F43C  4E 80 04 21 */	bctrl 
/* 8070F440  88 1D 07 17 */	lbz r0, 0x717(r29)
/* 8070F444  7C 00 07 75 */	extsb. r0, r0
/* 8070F448  40 82 00 20 */	bne lbl_8070F468
/* 8070F44C  7F A3 EB 78 */	mr r3, r29
/* 8070F450  38 80 00 0D */	li r4, 0xd
/* 8070F454  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 8070F458  38 A0 00 00 */	li r5, 0
/* 8070F45C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8070F460  4B FF B3 CD */	bl anm_init__FP10e_mf_classifUcf
/* 8070F464  48 00 00 1C */	b lbl_8070F480
lbl_8070F468:
/* 8070F468  7F A3 EB 78 */	mr r3, r29
/* 8070F46C  38 80 00 0F */	li r4, 0xf
/* 8070F470  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 8070F474  38 A0 00 00 */	li r5, 0
/* 8070F478  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8070F47C  4B FF B3 B1 */	bl anm_init__FP10e_mf_classifUcf
lbl_8070F480:
/* 8070F480  88 1D 06 F0 */	lbz r0, 0x6f0(r29)
/* 8070F484  7C 00 07 75 */	extsb. r0, r0
/* 8070F488  41 82 00 18 */	beq lbl_8070F4A0
/* 8070F48C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8070F490  D0 1D 06 E4 */	stfs f0, 0x6e4(r29)
/* 8070F494  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8070F498  D0 1D 07 C8 */	stfs f0, 0x7c8(r29)
/* 8070F49C  48 00 06 B8 */	b lbl_8070FB54
lbl_8070F4A0:
/* 8070F4A0  88 1D 07 17 */	lbz r0, 0x717(r29)
/* 8070F4A4  7C 00 07 75 */	extsb. r0, r0
/* 8070F4A8  40 82 00 14 */	bne lbl_8070F4BC
/* 8070F4AC  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8070F4B0  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8070F4B4  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 8070F4B8  48 00 00 10 */	b lbl_8070F4C8
lbl_8070F4BC:
/* 8070F4BC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8070F4C0  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8070F4C4  D0 1D 07 3C */	stfs f0, 0x73c(r29)
lbl_8070F4C8:
/* 8070F4C8  38 00 B0 00 */	li r0, -20480
/* 8070F4CC  B0 1D 07 38 */	sth r0, 0x738(r29)
/* 8070F4D0  38 00 C0 00 */	li r0, -16384
/* 8070F4D4  B0 1D 07 40 */	sth r0, 0x740(r29)
/* 8070F4D8  38 00 00 28 */	li r0, 0x28
/* 8070F4DC  B0 1D 08 08 */	sth r0, 0x808(r29)
/* 8070F4E0  C0 3D 06 E4 */	lfs f1, 0x6e4(r29)
/* 8070F4E4  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8070F4E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8070F4EC  D0 1D 06 E4 */	stfs f0, 0x6e4(r29)
/* 8070F4F0  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 8070F4F4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8070F4F8  A8 1D 06 EE */	lha r0, 0x6ee(r29)
/* 8070F4FC  7C 00 0E 70 */	srawi r0, r0, 1
/* 8070F500  7C 00 01 94 */	addze r0, r0
/* 8070F504  B0 1D 06 EE */	sth r0, 0x6ee(r29)
/* 8070F508  A8 1D 07 06 */	lha r0, 0x706(r29)
/* 8070F50C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8070F510  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 8070F514  D0 1D 07 C8 */	stfs f0, 0x7c8(r29)
/* 8070F518  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 8070F51C  80 63 00 04 */	lwz r3, 4(r3)
/* 8070F520  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8070F524  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8070F528  38 63 00 60 */	addi r3, r3, 0x60
/* 8070F52C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8070F530  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8070F534  80 84 00 00 */	lwz r4, 0(r4)
/* 8070F538  4B C3 6F 78 */	b PSMTXCopy
/* 8070F53C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8070F540  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8070F544  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8070F548  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8070F54C  38 61 00 38 */	addi r3, r1, 0x38
/* 8070F550  38 81 00 2C */	addi r4, r1, 0x2c
/* 8070F554  4B B6 19 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 8070F558  38 7D 10 BC */	addi r3, r29, 0x10bc
/* 8070F55C  38 9D 10 C0 */	addi r4, r29, 0x10c0
/* 8070F560  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8070F564  38 C0 00 00 */	li r6, 0
/* 8070F568  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 8070F56C  38 FD 01 0C */	addi r7, r29, 0x10c
/* 8070F570  39 00 00 01 */	li r8, 1
/* 8070F574  4B 90 DA AC */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 8070F578  48 00 05 DC */	b lbl_8070FB54
lbl_8070F57C:
/* 8070F57C  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8070F580  A8 1D 06 EE */	lha r0, 0x6ee(r29)
/* 8070F584  7C 03 02 14 */	add r0, r3, r0
/* 8070F588  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8070F58C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8070F590  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8070F594  38 7D 07 04 */	addi r3, r29, 0x704
/* 8070F598  38 80 C0 00 */	li r4, -16384
/* 8070F59C  38 A0 00 01 */	li r5, 1
/* 8070F5A0  38 C0 03 00 */	li r6, 0x300
/* 8070F5A4  4B B6 10 64 */	b cLib_addCalcAngleS2__FPssss
/* 8070F5A8  80 1D 08 90 */	lwz r0, 0x890(r29)
/* 8070F5AC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8070F5B0  41 82 05 A4 */	beq lbl_8070FB54
/* 8070F5B4  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8070F5B8  2C 00 00 00 */	cmpwi r0, 0
/* 8070F5BC  40 81 00 20 */	ble lbl_8070F5DC
/* 8070F5C0  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8070F5C4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8070F5C8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8070F5CC  40 82 00 10 */	bne lbl_8070F5DC
/* 8070F5D0  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8070F5D4  60 00 00 01 */	ori r0, r0, 1
/* 8070F5D8  B0 1D 05 8E */	sth r0, 0x58e(r29)
lbl_8070F5DC:
/* 8070F5DC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8070F5E0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8070F5E4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8070F5E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8070F5EC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8070F5F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8070F5F4  38 61 00 20 */	addi r3, r1, 0x20
/* 8070F5F8  38 80 00 64 */	li r4, 0x64
/* 8070F5FC  28 1D 00 00 */	cmplwi r29, 0
/* 8070F600  41 82 00 0C */	beq lbl_8070F60C
/* 8070F604  80 BD 00 04 */	lwz r5, 4(r29)
/* 8070F608  48 00 00 08 */	b lbl_8070F610
lbl_8070F60C:
/* 8070F60C  38 A0 FF FF */	li r5, -1
lbl_8070F610:
/* 8070F610  38 C0 00 05 */	li r6, 5
/* 8070F614  4B A9 8B AC */	b dKy_Sound_set__F4cXyziUii
/* 8070F618  38 00 00 0A */	li r0, 0xa
/* 8070F61C  98 1D 07 16 */	stb r0, 0x716(r29)
/* 8070F620  88 1D 07 17 */	lbz r0, 0x717(r29)
/* 8070F624  7C 00 07 75 */	extsb. r0, r0
/* 8070F628  40 82 00 20 */	bne lbl_8070F648
/* 8070F62C  7F A3 EB 78 */	mr r3, r29
/* 8070F630  38 80 00 0D */	li r4, 0xd
/* 8070F634  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8070F638  38 A0 00 00 */	li r5, 0
/* 8070F63C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8070F640  4B FF B1 ED */	bl anm_init__FP10e_mf_classifUcf
/* 8070F644  48 00 00 1C */	b lbl_8070F660
lbl_8070F648:
/* 8070F648  7F A3 EB 78 */	mr r3, r29
/* 8070F64C  38 80 00 0F */	li r4, 0xf
/* 8070F650  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8070F654  38 A0 00 00 */	li r5, 0
/* 8070F658  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8070F65C  4B FF B1 D1 */	bl anm_init__FP10e_mf_classifUcf
lbl_8070F660:
/* 8070F660  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8070F664  D0 1D 06 E4 */	stfs f0, 0x6e4(r29)
/* 8070F668  38 00 C0 00 */	li r0, -16384
/* 8070F66C  B0 1D 07 04 */	sth r0, 0x704(r29)
/* 8070F670  3B 60 00 00 */	li r27, 0
/* 8070F674  3B 80 00 00 */	li r28, 0
lbl_8070F678:
/* 8070F678  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8070F67C  4B B5 82 D8 */	b cM_rndF__Ff
/* 8070F680  FC 00 08 1E */	fctiwz f0, f1
/* 8070F684  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8070F688  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 8070F68C  38 1C 07 E2 */	addi r0, r28, 0x7e2
/* 8070F690  7C 7D 03 2E */	sthx r3, r29, r0
/* 8070F694  3B 7B 00 01 */	addi r27, r27, 1
/* 8070F698  2C 1B 00 04 */	cmpwi r27, 4
/* 8070F69C  3B 9C 00 02 */	addi r28, r28, 2
/* 8070F6A0  41 80 FF D8 */	blt lbl_8070F678
/* 8070F6A4  A8 1D 07 06 */	lha r0, 0x706(r29)
/* 8070F6A8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8070F6AC  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8070F6B0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8070F6B4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8070F6B8  41 82 00 18 */	beq lbl_8070F6D0
/* 8070F6BC  38 00 00 50 */	li r0, 0x50
/* 8070F6C0  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 8070F6C4  38 00 00 37 */	li r0, 0x37
/* 8070F6C8  B0 1D 06 C2 */	sth r0, 0x6c2(r29)
/* 8070F6CC  48 00 00 2C */	b lbl_8070F6F8
lbl_8070F6D0:
/* 8070F6D0  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8070F6D4  2C 00 00 00 */	cmpwi r0, 0
/* 8070F6D8  41 81 00 10 */	bgt lbl_8070F6E8
/* 8070F6DC  38 00 00 3C */	li r0, 0x3c
/* 8070F6E0  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 8070F6E4  48 00 00 0C */	b lbl_8070F6F0
lbl_8070F6E8:
/* 8070F6E8  38 00 00 05 */	li r0, 5
/* 8070F6EC  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
lbl_8070F6F0:
/* 8070F6F0  38 00 00 23 */	li r0, 0x23
/* 8070F6F4  B0 1D 06 C2 */	sth r0, 0x6c2(r29)
lbl_8070F6F8:
/* 8070F6F8  38 00 00 03 */	li r0, 3
/* 8070F6FC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8070F700  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8070F704  D0 1D 07 C8 */	stfs f0, 0x7c8(r29)
/* 8070F708  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 8070F70C  80 63 00 04 */	lwz r3, 4(r3)
/* 8070F710  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8070F714  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8070F718  38 63 00 60 */	addi r3, r3, 0x60
/* 8070F71C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8070F720  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8070F724  80 84 00 00 */	lwz r4, 0(r4)
/* 8070F728  4B C3 6D 88 */	b PSMTXCopy
/* 8070F72C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8070F730  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8070F734  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8070F738  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8070F73C  38 61 00 38 */	addi r3, r1, 0x38
/* 8070F740  38 81 00 2C */	addi r4, r1, 0x2c
/* 8070F744  4B B6 17 A8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8070F748  38 7D 10 BC */	addi r3, r29, 0x10bc
/* 8070F74C  38 9D 10 C0 */	addi r4, r29, 0x10c0
/* 8070F750  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8070F754  38 C0 00 00 */	li r6, 0
/* 8070F758  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8070F75C  38 FD 01 0C */	addi r7, r29, 0x10c
/* 8070F760  39 00 00 01 */	li r8, 1
/* 8070F764  4B 90 D8 BC */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 8070F768  48 00 03 EC */	b lbl_8070FB54
lbl_8070F76C:
/* 8070F76C  7F A3 EB 78 */	mr r3, r29
/* 8070F770  4B FF F7 55 */	bl body_gake__FP10e_mf_class
/* 8070F774  2C 03 00 00 */	cmpwi r3, 0
/* 8070F778  41 82 00 18 */	beq lbl_8070F790
/* 8070F77C  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 8070F780  D0 1D 06 E4 */	stfs f0, 0x6e4(r29)
/* 8070F784  A8 7D 07 04 */	lha r3, 0x704(r29)
/* 8070F788  38 03 FD 00 */	addi r0, r3, -768
/* 8070F78C  B0 1D 07 04 */	sth r0, 0x704(r29)
lbl_8070F790:
/* 8070F790  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8070F794  2C 00 00 00 */	cmpwi r0, 0
/* 8070F798  41 81 00 64 */	bgt lbl_8070F7FC
/* 8070F79C  A8 1D 06 C2 */	lha r0, 0x6c2(r29)
/* 8070F7A0  2C 00 00 00 */	cmpwi r0, 0
/* 8070F7A4  40 82 00 58 */	bne lbl_8070F7FC
/* 8070F7A8  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 8070F7AC  80 63 00 04 */	lwz r3, 4(r3)
/* 8070F7B0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8070F7B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8070F7B8  38 63 00 60 */	addi r3, r3, 0x60
/* 8070F7BC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8070F7C0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8070F7C4  80 84 00 00 */	lwz r4, 0(r4)
/* 8070F7C8  4B C3 6C E8 */	b PSMTXCopy
/* 8070F7CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8070F7D0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8070F7D4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8070F7D8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8070F7DC  38 61 00 38 */	addi r3, r1, 0x38
/* 8070F7E0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8070F7E4  4B B6 17 08 */	b MtxPosition__FP4cXyzP4cXyz
/* 8070F7E8  7F A3 EB 78 */	mr r3, r29
/* 8070F7EC  4B FF AF 91 */	bl mf_disappear__FP10e_mf_class
/* 8070F7F0  7F A3 EB 78 */	mr r3, r29
/* 8070F7F4  4B 90 A4 88 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8070F7F8  48 00 03 DC */	b lbl_8070FBD4
lbl_8070F7FC:
/* 8070F7FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070F800  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070F804  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8070F808  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8070F80C  28 00 00 27 */	cmplwi r0, 0x27
/* 8070F810  41 82 03 44 */	beq lbl_8070FB54
/* 8070F814  A8 1D 06 C0 */	lha r0, 0x6c0(r29)
/* 8070F818  2C 00 00 00 */	cmpwi r0, 0
/* 8070F81C  40 82 03 38 */	bne lbl_8070FB54
/* 8070F820  38 00 00 14 */	li r0, 0x14
/* 8070F824  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8070F828  88 1D 07 17 */	lbz r0, 0x717(r29)
/* 8070F82C  7C 00 07 75 */	extsb. r0, r0
/* 8070F830  40 82 00 20 */	bne lbl_8070F850
/* 8070F834  7F A3 EB 78 */	mr r3, r29
/* 8070F838  38 80 00 0E */	li r4, 0xe
/* 8070F83C  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8070F840  38 A0 00 00 */	li r5, 0
/* 8070F844  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8070F848  4B FF AF E5 */	bl anm_init__FP10e_mf_classifUcf
/* 8070F84C  48 00 00 1C */	b lbl_8070F868
lbl_8070F850:
/* 8070F850  7F A3 EB 78 */	mr r3, r29
/* 8070F854  38 80 00 10 */	li r4, 0x10
/* 8070F858  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8070F85C  38 A0 00 00 */	li r5, 0
/* 8070F860  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8070F864  4B FF AF C9 */	bl anm_init__FP10e_mf_classifUcf
lbl_8070F868:
/* 8070F868  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D3@ha */
/* 8070F86C  38 03 03 D3 */	addi r0, r3, 0x03D3 /* 0x000703D3@l */
/* 8070F870  90 01 00 0C */	stw r0, 0xc(r1)
/* 8070F874  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 8070F878  38 81 00 0C */	addi r4, r1, 0xc
/* 8070F87C  38 A0 FF FF */	li r5, -1
/* 8070F880  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 8070F884  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070F888  7D 89 03 A6 */	mtctr r12
/* 8070F88C  4E 80 04 21 */	bctrl 
/* 8070F890  28 1D 00 00 */	cmplwi r29, 0
/* 8070F894  41 82 02 C0 */	beq lbl_8070FB54
/* 8070F898  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 8070F89C  38 00 FF E8 */	li r0, -24
/* 8070F8A0  7C 60 00 38 */	and r0, r3, r0
/* 8070F8A4  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8070F8A8  48 00 02 AC */	b lbl_8070FB54
lbl_8070F8AC:
/* 8070F8AC  A8 1D 08 20 */	lha r0, 0x820(r29)
/* 8070F8B0  2C 00 00 00 */	cmpwi r0, 0
/* 8070F8B4  41 82 00 1C */	beq lbl_8070F8D0
/* 8070F8B8  38 7D 07 04 */	addi r3, r29, 0x704
/* 8070F8BC  38 80 00 00 */	li r4, 0
/* 8070F8C0  38 A0 00 01 */	li r5, 1
/* 8070F8C4  38 C0 03 00 */	li r6, 0x300
/* 8070F8C8  4B B6 0D 40 */	b cLib_addCalcAngleS2__FPssss
/* 8070F8CC  48 00 02 88 */	b lbl_8070FB54
lbl_8070F8D0:
/* 8070F8D0  38 7D 07 04 */	addi r3, r29, 0x704
/* 8070F8D4  38 80 C0 00 */	li r4, -16384
/* 8070F8D8  38 A0 00 01 */	li r5, 1
/* 8070F8DC  38 C0 08 00 */	li r6, 0x800
/* 8070F8E0  4B B6 0D 28 */	b cLib_addCalcAngleS2__FPssss
/* 8070F8E4  80 1D 08 90 */	lwz r0, 0x890(r29)
/* 8070F8E8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8070F8EC  41 82 02 68 */	beq lbl_8070FB54
/* 8070F8F0  38 00 00 02 */	li r0, 2
/* 8070F8F4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8070F8F8  88 1D 07 17 */	lbz r0, 0x717(r29)
/* 8070F8FC  7C 00 07 75 */	extsb. r0, r0
/* 8070F900  40 82 00 14 */	bne lbl_8070F914
/* 8070F904  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8070F908  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8070F90C  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 8070F910  48 00 00 10 */	b lbl_8070F920
lbl_8070F914:
/* 8070F914  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8070F918  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8070F91C  D0 1D 07 3C */	stfs f0, 0x73c(r29)
lbl_8070F920:
/* 8070F920  38 00 B0 00 */	li r0, -20480
/* 8070F924  B0 1D 07 38 */	sth r0, 0x738(r29)
/* 8070F928  38 00 C0 00 */	li r0, -16384
/* 8070F92C  B0 1D 07 40 */	sth r0, 0x740(r29)
/* 8070F930  C0 3D 06 E4 */	lfs f1, 0x6e4(r29)
/* 8070F934  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8070F938  EC 01 00 32 */	fmuls f0, f1, f0
/* 8070F93C  D0 1D 06 E4 */	stfs f0, 0x6e4(r29)
/* 8070F940  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 8070F944  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8070F948  A8 1D 07 06 */	lha r0, 0x706(r29)
/* 8070F94C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8070F950  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 8070F954  D0 1D 07 C8 */	stfs f0, 0x7c8(r29)
/* 8070F958  48 00 01 FC */	b lbl_8070FB54
lbl_8070F95C:
/* 8070F95C  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 8070F960  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8070F964  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8070F968  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070F96C  4C 41 13 82 */	cror 2, 1, 2
/* 8070F970  40 82 00 10 */	bne lbl_8070F980
/* 8070F974  38 00 00 00 */	li r0, 0
/* 8070F978  B0 1D 07 14 */	sth r0, 0x714(r29)
/* 8070F97C  B0 1D 07 10 */	sth r0, 0x710(r29)
lbl_8070F980:
/* 8070F980  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 8070F984  38 80 00 01 */	li r4, 1
/* 8070F988  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070F98C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070F990  40 82 00 18 */	bne lbl_8070F9A8
/* 8070F994  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8070F998  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070F99C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070F9A0  41 82 00 08 */	beq lbl_8070F9A8
/* 8070F9A4  38 80 00 00 */	li r4, 0
lbl_8070F9A8:
/* 8070F9A8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070F9AC  41 82 01 A8 */	beq lbl_8070FB54
/* 8070F9B0  38 00 00 00 */	li r0, 0
/* 8070F9B4  B0 1D 07 06 */	sth r0, 0x706(r29)
/* 8070F9B8  B0 1D 07 04 */	sth r0, 0x704(r29)
/* 8070F9BC  7F A3 EB 78 */	mr r3, r29
/* 8070F9C0  38 80 00 1F */	li r4, 0x1f
/* 8070F9C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8070F9C8  38 A0 00 02 */	li r5, 2
/* 8070F9CC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8070F9D0  4B FF AE 5D */	bl anm_init__FP10e_mf_classifUcf
/* 8070F9D4  38 00 00 05 */	li r0, 5
/* 8070F9D8  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 8070F9DC  38 00 00 15 */	li r0, 0x15
/* 8070F9E0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8070F9E4  28 1D 00 00 */	cmplwi r29, 0
/* 8070F9E8  41 82 01 6C */	beq lbl_8070FB54
/* 8070F9EC  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 8070F9F0  38 00 FF E8 */	li r0, -24
/* 8070F9F4  7C 60 00 38 */	and r0, r3, r0
/* 8070F9F8  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8070F9FC  48 00 01 58 */	b lbl_8070FB54
lbl_8070FA00:
/* 8070FA00  38 60 00 00 */	li r3, 0
/* 8070FA04  B0 7D 06 C8 */	sth r3, 0x6c8(r29)
/* 8070FA08  A8 1D 06 C0 */	lha r0, 0x6c0(r29)
/* 8070FA0C  2C 00 00 00 */	cmpwi r0, 0
/* 8070FA10  40 82 01 44 */	bne lbl_8070FB54
/* 8070FA14  C0 3D 06 B0 */	lfs f1, 0x6b0(r29)
/* 8070FA18  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8070FA1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070FA20  40 80 00 14 */	bge lbl_8070FA34
/* 8070FA24  38 00 00 06 */	li r0, 6
/* 8070FA28  B0 1D 06 AE */	sth r0, 0x6ae(r29)
/* 8070FA2C  B0 7D 05 B4 */	sth r3, 0x5b4(r29)
/* 8070FA30  48 00 01 24 */	b lbl_8070FB54
lbl_8070FA34:
/* 8070FA34  38 00 00 03 */	li r0, 3
/* 8070FA38  B0 1D 06 AE */	sth r0, 0x6ae(r29)
/* 8070FA3C  B0 7D 05 B4 */	sth r3, 0x5b4(r29)
/* 8070FA40  48 00 01 14 */	b lbl_8070FB54
lbl_8070FA44:
/* 8070FA44  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8070FA48  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8070FA4C  40 82 00 0C */	bne lbl_8070FA58
/* 8070FA50  38 00 00 00 */	li r0, 0
/* 8070FA54  B0 1D 06 C2 */	sth r0, 0x6c2(r29)
lbl_8070FA58:
/* 8070FA58  A8 1D 06 C0 */	lha r0, 0x6c0(r29)
/* 8070FA5C  2C 00 00 00 */	cmpwi r0, 0
/* 8070FA60  40 82 00 80 */	bne lbl_8070FAE0
/* 8070FA64  38 00 00 1F */	li r0, 0x1f
/* 8070FA68  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8070FA6C  88 1D 07 17 */	lbz r0, 0x717(r29)
/* 8070FA70  7C 00 07 75 */	extsb. r0, r0
/* 8070FA74  40 82 00 20 */	bne lbl_8070FA94
/* 8070FA78  7F A3 EB 78 */	mr r3, r29
/* 8070FA7C  38 80 00 0A */	li r4, 0xa
/* 8070FA80  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8070FA84  38 A0 00 00 */	li r5, 0
/* 8070FA88  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8070FA8C  4B FF AD A1 */	bl anm_init__FP10e_mf_classifUcf
/* 8070FA90  48 00 00 1C */	b lbl_8070FAAC
lbl_8070FA94:
/* 8070FA94  7F A3 EB 78 */	mr r3, r29
/* 8070FA98  38 80 00 0B */	li r4, 0xb
/* 8070FA9C  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8070FAA0  38 A0 00 00 */	li r5, 0
/* 8070FAA4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8070FAA8  4B FF AD 85 */	bl anm_init__FP10e_mf_classifUcf
lbl_8070FAAC:
/* 8070FAAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D3@ha */
/* 8070FAB0  38 03 03 D3 */	addi r0, r3, 0x03D3 /* 0x000703D3@l */
/* 8070FAB4  90 01 00 08 */	stw r0, 8(r1)
/* 8070FAB8  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 8070FABC  38 81 00 08 */	addi r4, r1, 8
/* 8070FAC0  38 A0 FF FF */	li r5, -1
/* 8070FAC4  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 8070FAC8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070FACC  7D 89 03 A6 */	mtctr r12
/* 8070FAD0  4E 80 04 21 */	bctrl 
/* 8070FAD4  38 00 00 0A */	li r0, 0xa
/* 8070FAD8  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 8070FADC  48 00 00 78 */	b lbl_8070FB54
lbl_8070FAE0:
/* 8070FAE0  A8 1D 06 C2 */	lha r0, 0x6c2(r29)
/* 8070FAE4  2C 00 00 01 */	cmpwi r0, 1
/* 8070FAE8  40 82 00 6C */	bne lbl_8070FB54
/* 8070FAEC  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8070FAF0  60 00 00 20 */	ori r0, r0, 0x20
/* 8070FAF4  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8070FAF8  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8070FAFC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8070FB00  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8070FB04  38 00 00 00 */	li r0, 0
/* 8070FB08  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 8070FB0C  38 00 03 E8 */	li r0, 0x3e8
/* 8070FB10  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 8070FB14  38 00 00 23 */	li r0, 0x23
/* 8070FB18  B0 1D 06 C2 */	sth r0, 0x6c2(r29)
/* 8070FB1C  38 00 00 03 */	li r0, 3
/* 8070FB20  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8070FB24  48 00 00 30 */	b lbl_8070FB54
lbl_8070FB28:
/* 8070FB28  A8 1D 06 C0 */	lha r0, 0x6c0(r29)
/* 8070FB2C  2C 00 00 00 */	cmpwi r0, 0
/* 8070FB30  40 82 00 24 */	bne lbl_8070FB54
/* 8070FB34  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 8070FB38  38 00 FF E8 */	li r0, -24
/* 8070FB3C  7C 60 00 38 */	and r0, r3, r0
/* 8070FB40  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8070FB44  38 00 00 14 */	li r0, 0x14
/* 8070FB48  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8070FB4C  38 00 00 00 */	li r0, 0
/* 8070FB50  98 1D 06 D3 */	stb r0, 0x6d3(r29)
lbl_8070FB54:
/* 8070FB54  28 1D 00 00 */	cmplwi r29, 0
/* 8070FB58  41 82 00 18 */	beq lbl_8070FB70
/* 8070FB5C  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8070FB60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070FB64  41 82 00 0C */	beq lbl_8070FB70
/* 8070FB68  38 00 00 00 */	li r0, 0
/* 8070FB6C  98 1D 06 D2 */	stb r0, 0x6d2(r29)
lbl_8070FB70:
/* 8070FB70  A8 7D 07 EC */	lha r3, 0x7ec(r29)
/* 8070FB74  2C 03 00 00 */	cmpwi r3, 0
/* 8070FB78  41 82 00 5C */	beq lbl_8070FBD4
/* 8070FB7C  38 03 FF FF */	addi r0, r3, -1
/* 8070FB80  B0 1D 07 EC */	sth r0, 0x7ec(r29)
/* 8070FB84  A8 9D 07 EC */	lha r4, 0x7ec(r29)
/* 8070FB88  1C 04 38 00 */	mulli r0, r4, 0x3800
/* 8070FB8C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8070FB90  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8070FB94  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8070FB98  7C 63 04 2E */	lfsx f3, r3, r0
/* 8070FB9C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8070FBA0  C8 3E 00 88 */	lfd f1, 0x88(r30)
/* 8070FBA4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8070FBA8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8070FBAC  3C 00 43 30 */	lis r0, 0x4330
/* 8070FBB0  90 01 00 48 */	stw r0, 0x48(r1)
/* 8070FBB4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8070FBB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8070FBBC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8070FBC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8070FBC4  FC 00 00 1E */	fctiwz f0, f0
/* 8070FBC8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8070FBCC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8070FBD0  B0 1D 07 EA */	sth r0, 0x7ea(r29)
lbl_8070FBD4:
/* 8070FBD4  39 61 00 70 */	addi r11, r1, 0x70
/* 8070FBD8  4B C5 26 48 */	b _restgpr_27
/* 8070FBDC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8070FBE0  7C 08 03 A6 */	mtlr r0
/* 8070FBE4  38 21 00 70 */	addi r1, r1, 0x70
/* 8070FBE8  4E 80 00 20 */	blr 
