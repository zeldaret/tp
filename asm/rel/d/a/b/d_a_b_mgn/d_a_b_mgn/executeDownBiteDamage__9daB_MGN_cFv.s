lbl_8060B028:
/* 8060B028  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8060B02C  7C 08 02 A6 */	mflr r0
/* 8060B030  90 01 00 44 */	stw r0, 0x44(r1)
/* 8060B034  39 61 00 40 */	addi r11, r1, 0x40
/* 8060B038  4B D5 71 A4 */	b _savegpr_29
/* 8060B03C  7C 7D 1B 78 */	mr r29, r3
/* 8060B040  3C 60 80 61 */	lis r3, lit_3928@ha
/* 8060B044  3B E3 FD E0 */	addi r31, r3, lit_3928@l
/* 8060B048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8060B04C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8060B050  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8060B054  88 1D 0A FA */	lbz r0, 0xafa(r29)
/* 8060B058  2C 00 00 01 */	cmpwi r0, 1
/* 8060B05C  41 82 00 E4 */	beq lbl_8060B140
/* 8060B060  40 80 03 B8 */	bge lbl_8060B418
/* 8060B064  2C 00 00 00 */	cmpwi r0, 0
/* 8060B068  40 80 00 08 */	bge lbl_8060B070
/* 8060B06C  48 00 03 AC */	b lbl_8060B418
lbl_8060B070:
/* 8060B070  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FB@ha */
/* 8060B074  38 03 04 FB */	addi r0, r3, 0x04FB /* 0x000704FB@l */
/* 8060B078  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060B07C  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 8060B080  38 81 00 10 */	addi r4, r1, 0x10
/* 8060B084  38 A0 FF FF */	li r5, -1
/* 8060B088  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 8060B08C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060B090  7D 89 03 A6 */	mtctr r12
/* 8060B094  4E 80 04 21 */	bctrl 
/* 8060B098  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 8060B09C  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8060B0A0  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8060B0A4  38 A0 00 1F */	li r5, 0x1f
/* 8060B0A8  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 8060B0AC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8060B0B0  7D 89 03 A6 */	mtctr r12
/* 8060B0B4  4E 80 04 21 */	bctrl 
/* 8060B0B8  88 1D 0A FC */	lbz r0, 0xafc(r29)
/* 8060B0BC  28 00 00 00 */	cmplwi r0, 0
/* 8060B0C0  40 82 00 20 */	bne lbl_8060B0E0
/* 8060B0C4  7F A3 EB 78 */	mr r3, r29
/* 8060B0C8  38 80 00 13 */	li r4, 0x13
/* 8060B0CC  38 A0 00 00 */	li r5, 0
/* 8060B0D0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060B0D4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060B0D8  4B FF C8 4D */	bl setBck__9daB_MGN_cFiUcff
/* 8060B0DC  48 00 00 1C */	b lbl_8060B0F8
lbl_8060B0E0:
/* 8060B0E0  7F A3 EB 78 */	mr r3, r29
/* 8060B0E4  38 80 00 0C */	li r4, 0xc
/* 8060B0E8  38 A0 00 00 */	li r5, 0
/* 8060B0EC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060B0F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060B0F4  4B FF C8 31 */	bl setBck__9daB_MGN_cFiUcff
lbl_8060B0F8:
/* 8060B0F8  38 00 00 01 */	li r0, 1
/* 8060B0FC  98 1D 0A FA */	stb r0, 0xafa(r29)
/* 8060B100  38 00 00 00 */	li r0, 0
/* 8060B104  98 1D 0B 00 */	stb r0, 0xb00(r29)
/* 8060B108  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060B10C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8060B110  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8060B114  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8060B118  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8060B11C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8060B120  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8060B124  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060B128  38 80 00 03 */	li r4, 3
/* 8060B12C  38 A0 00 1F */	li r5, 0x1f
/* 8060B130  38 C1 00 20 */	addi r6, r1, 0x20
/* 8060B134  4B A6 48 F0 */	b StartShock__12dVibration_cFii4cXyz
/* 8060B138  7F A3 EB 78 */	mr r3, r29
/* 8060B13C  4B FF CC 09 */	bl offBodyCo__9daB_MGN_cFv
lbl_8060B140:
/* 8060B140  7F C3 F3 78 */	mr r3, r30
/* 8060B144  88 1D 0A FC */	lbz r0, 0xafc(r29)
/* 8060B148  28 00 00 00 */	cmplwi r0, 0
/* 8060B14C  40 82 00 14 */	bne lbl_8060B160
/* 8060B150  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8060B154  38 04 C0 00 */	addi r0, r4, -16384
/* 8060B158  7C 04 07 34 */	extsh r4, r0
/* 8060B15C  48 00 00 10 */	b lbl_8060B16C
lbl_8060B160:
/* 8060B160  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8060B164  38 04 40 00 */	addi r0, r4, 0x4000
/* 8060B168  7C 04 07 34 */	extsh r4, r0
lbl_8060B16C:
/* 8060B16C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8060B170  81 8C 01 E4 */	lwz r12, 0x1e4(r12)
/* 8060B174  7D 89 03 A6 */	mtctr r12
/* 8060B178  4E 80 04 21 */	bctrl 
/* 8060B17C  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8060B180  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8060B184  41 82 02 1C */	beq lbl_8060B3A0
/* 8060B188  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060B18C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8060B190  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8060B194  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8060B198  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8060B19C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8060B1A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8060B1A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060B1A8  38 80 00 03 */	li r4, 3
/* 8060B1AC  38 A0 00 1F */	li r5, 0x1f
/* 8060B1B0  38 C1 00 14 */	addi r6, r1, 0x14
/* 8060B1B4  4B A6 48 70 */	b StartShock__12dVibration_cFii4cXyz
/* 8060B1B8  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8060B1BC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8060B1C0  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8060B1C4  88 7D 0B 00 */	lbz r3, 0xb00(r29)
/* 8060B1C8  38 03 00 01 */	addi r0, r3, 1
/* 8060B1CC  98 1D 0B 00 */	stb r0, 0xb00(r29)
/* 8060B1D0  88 1D 0B 00 */	lbz r0, 0xb00(r29)
/* 8060B1D4  28 00 00 05 */	cmplwi r0, 5
/* 8060B1D8  41 80 01 40 */	blt lbl_8060B318
/* 8060B1DC  38 00 00 00 */	li r0, 0
/* 8060B1E0  98 1D 0B 07 */	stb r0, 0xb07(r29)
/* 8060B1E4  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 8060B1E8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8060B1EC  90 1E 05 78 */	stw r0, 0x578(r30)
/* 8060B1F0  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 8060B1F4  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8060B1F8  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8060B1FC  38 A0 00 20 */	li r5, 0x20
/* 8060B200  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 8060B204  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8060B208  7D 89 03 A6 */	mtctr r12
/* 8060B20C  4E 80 04 21 */	bctrl 
/* 8060B210  7F A3 EB 78 */	mr r3, r29
/* 8060B214  4B FF CA F5 */	bl onBodyCo__9daB_MGN_cFv
/* 8060B218  88 1D 0A FC */	lbz r0, 0xafc(r29)
/* 8060B21C  28 00 00 00 */	cmplwi r0, 0
/* 8060B220  40 82 00 2C */	bne lbl_8060B24C
/* 8060B224  7F A3 EB 78 */	mr r3, r29
/* 8060B228  38 80 00 15 */	li r4, 0x15
/* 8060B22C  38 A0 00 00 */	li r5, 0
/* 8060B230  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060B234  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060B238  4B FF C6 ED */	bl setBck__9daB_MGN_cFiUcff
/* 8060B23C  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8060B240  38 03 C0 00 */	addi r0, r3, -16384
/* 8060B244  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8060B248  48 00 00 28 */	b lbl_8060B270
lbl_8060B24C:
/* 8060B24C  7F A3 EB 78 */	mr r3, r29
/* 8060B250  38 80 00 0F */	li r4, 0xf
/* 8060B254  38 A0 00 00 */	li r5, 0
/* 8060B258  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060B25C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060B260  4B FF C6 C5 */	bl setBck__9daB_MGN_cFiUcff
/* 8060B264  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8060B268  38 03 40 00 */	addi r0, r3, 0x4000
/* 8060B26C  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_8060B270:
/* 8060B270  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FC@ha */
/* 8060B274  38 03 04 FC */	addi r0, r3, 0x04FC /* 0x000704FC@l */
/* 8060B278  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060B27C  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 8060B280  38 81 00 0C */	addi r4, r1, 0xc
/* 8060B284  38 A0 FF FF */	li r5, -1
/* 8060B288  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 8060B28C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060B290  7D 89 03 A6 */	mtctr r12
/* 8060B294  4E 80 04 21 */	bctrl 
/* 8060B298  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8060B29C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8060B2A0  80 1D 21 0C */	lwz r0, 0x210c(r29)
/* 8060B2A4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8060B2A8  90 1D 21 0C */	stw r0, 0x210c(r29)
/* 8060B2AC  80 1D 22 44 */	lwz r0, 0x2244(r29)
/* 8060B2B0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8060B2B4  90 1D 22 44 */	stw r0, 0x2244(r29)
/* 8060B2B8  38 00 00 00 */	li r0, 0
/* 8060B2BC  98 1D 0B 01 */	stb r0, 0xb01(r29)
/* 8060B2C0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8060B2C4  88 7D 0A FF */	lbz r3, 0xaff(r29)
/* 8060B2C8  38 03 00 01 */	addi r0, r3, 1
/* 8060B2CC  98 1D 0A FF */	stb r0, 0xaff(r29)
/* 8060B2D0  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8060B2D4  2C 00 00 00 */	cmpwi r0, 0
/* 8060B2D8  41 80 00 10 */	blt lbl_8060B2E8
/* 8060B2DC  88 1D 0A FF */	lbz r0, 0xaff(r29)
/* 8060B2E0  28 00 00 06 */	cmplwi r0, 6
/* 8060B2E4  41 80 00 18 */	blt lbl_8060B2FC
lbl_8060B2E8:
/* 8060B2E8  7F A3 EB 78 */	mr r3, r29
/* 8060B2EC  38 80 00 09 */	li r4, 9
/* 8060B2F0  38 A0 00 00 */	li r5, 0
/* 8060B2F4  4B FF C7 39 */	bl setActionMode__9daB_MGN_cFii
/* 8060B2F8  48 00 00 A8 */	b lbl_8060B3A0
lbl_8060B2FC:
/* 8060B2FC  7F A3 EB 78 */	mr r3, r29
/* 8060B300  4B FF C4 8D */	bl checkDownBeforeBG__9daB_MGN_cFv
/* 8060B304  7F A3 EB 78 */	mr r3, r29
/* 8060B308  38 80 00 05 */	li r4, 5
/* 8060B30C  38 A0 00 02 */	li r5, 2
/* 8060B310  4B FF C7 1D */	bl setActionMode__9daB_MGN_cFii
/* 8060B314  48 00 00 8C */	b lbl_8060B3A0
lbl_8060B318:
/* 8060B318  88 1D 0A FC */	lbz r0, 0xafc(r29)
/* 8060B31C  28 00 00 00 */	cmplwi r0, 0
/* 8060B320  40 82 00 20 */	bne lbl_8060B340
/* 8060B324  7F A3 EB 78 */	mr r3, r29
/* 8060B328  38 80 00 13 */	li r4, 0x13
/* 8060B32C  38 A0 00 00 */	li r5, 0
/* 8060B330  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060B334  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060B338  4B FF C5 ED */	bl setBck__9daB_MGN_cFiUcff
/* 8060B33C  48 00 00 1C */	b lbl_8060B358
lbl_8060B340:
/* 8060B340  7F A3 EB 78 */	mr r3, r29
/* 8060B344  38 80 00 0C */	li r4, 0xc
/* 8060B348  38 A0 00 00 */	li r5, 0
/* 8060B34C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060B350  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060B354  4B FF C5 D1 */	bl setBck__9daB_MGN_cFiUcff
lbl_8060B358:
/* 8060B358  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 8060B35C  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8060B360  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8060B364  38 A0 00 1E */	li r5, 0x1e
/* 8060B368  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 8060B36C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8060B370  7D 89 03 A6 */	mtctr r12
/* 8060B374  4E 80 04 21 */	bctrl 
/* 8060B378  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FB@ha */
/* 8060B37C  38 03 04 FB */	addi r0, r3, 0x04FB /* 0x000704FB@l */
/* 8060B380  90 01 00 08 */	stw r0, 8(r1)
/* 8060B384  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 8060B388  38 81 00 08 */	addi r4, r1, 8
/* 8060B38C  38 A0 FF FF */	li r5, -1
/* 8060B390  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 8060B394  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060B398  7D 89 03 A6 */	mtctr r12
/* 8060B39C  4E 80 04 21 */	bctrl 
lbl_8060B3A0:
/* 8060B3A0  7F C3 F3 78 */	mr r3, r30
/* 8060B3A4  7F A4 EB 78 */	mr r4, r29
/* 8060B3A8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8060B3AC  81 8C 01 E0 */	lwz r12, 0x1e0(r12)
/* 8060B3B0  7D 89 03 A6 */	mtctr r12
/* 8060B3B4  4E 80 04 21 */	bctrl 
/* 8060B3B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8060B3BC  41 82 00 34 */	beq lbl_8060B3F0
/* 8060B3C0  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8060B3C4  38 80 00 01 */	li r4, 1
/* 8060B3C8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060B3CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060B3D0  40 82 00 18 */	bne lbl_8060B3E8
/* 8060B3D4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060B3D8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060B3DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060B3E0  41 82 00 08 */	beq lbl_8060B3E8
/* 8060B3E4  38 80 00 00 */	li r4, 0
lbl_8060B3E8:
/* 8060B3E8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060B3EC  41 82 00 2C */	beq lbl_8060B418
lbl_8060B3F0:
/* 8060B3F0  7F A3 EB 78 */	mr r3, r29
/* 8060B3F4  4B FF C9 15 */	bl onBodyCo__9daB_MGN_cFv
/* 8060B3F8  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 8060B3FC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8060B400  90 1E 05 78 */	stw r0, 0x578(r30)
/* 8060B404  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8060B408  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8060B40C  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8060B410  7F A3 EB 78 */	mr r3, r29
/* 8060B414  4B FF F2 5D */	bl setDownEnd__9daB_MGN_cFv
lbl_8060B418:
/* 8060B418  39 61 00 40 */	addi r11, r1, 0x40
/* 8060B41C  4B D5 6E 0C */	b _restgpr_29
/* 8060B420  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8060B424  7C 08 03 A6 */	mtlr r0
/* 8060B428  38 21 00 40 */	addi r1, r1, 0x40
/* 8060B42C  4E 80 00 20 */	blr 
