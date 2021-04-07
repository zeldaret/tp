lbl_80BDE0A4:
/* 80BDE0A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BDE0A8  7C 08 02 A6 */	mflr r0
/* 80BDE0AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BDE0B0  39 61 00 40 */	addi r11, r1, 0x40
/* 80BDE0B4  4B 78 41 21 */	bl _savegpr_27
/* 80BDE0B8  7C 7E 1B 78 */	mr r30, r3
/* 80BDE0BC  3C 60 80 BE */	lis r3, l_swOffset@ha /* 0x80BDF870@ha */
/* 80BDE0C0  3B E3 F8 70 */	addi r31, r3, l_swOffset@l /* 0x80BDF870@l */
/* 80BDE0C4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BDE0C8  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80BDE0CC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BDE0D0  7C 04 07 74 */	extsb r4, r0
/* 80BDE0D4  4B 47 37 19 */	bl dPath_GetRoomPath__Fii
/* 80BDE0D8  7C 7D 1B 78 */	mr r29, r3
/* 80BDE0DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDE0E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDE0E4  83 64 5D AC */	lwz r27, 0x5dac(r4)
/* 80BDE0E8  38 80 00 00 */	li r4, 0
/* 80BDE0EC  4B 47 36 C5 */	bl dPath_GetPnt__FPC5dPathi
/* 80BDE0F0  7C 7C 1B 78 */	mr r28, r3
/* 80BDE0F4  7F A3 EB 78 */	mr r3, r29
/* 80BDE0F8  38 80 00 01 */	li r4, 1
/* 80BDE0FC  4B 47 36 B5 */	bl dPath_GetPnt__FPC5dPathi
/* 80BDE100  7C 7D 1B 78 */	mr r29, r3
/* 80BDE104  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 80BDE108  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80BDE10C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BDE110  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BDE114  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BDE118  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80BDE11C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80BDE120  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BDE124  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BDE128  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BDE12C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80BDE130  38 61 00 0C */	addi r3, r1, 0xc
/* 80BDE134  38 81 00 18 */	addi r4, r1, 0x18
/* 80BDE138  4B 76 92 65 */	bl PSVECSquareDistance
/* 80BDE13C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BDE140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDE144  40 81 00 58 */	ble lbl_80BDE19C
/* 80BDE148  FC 00 08 34 */	frsqrte f0, f1
/* 80BDE14C  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BDE150  FC 44 00 32 */	fmul f2, f4, f0
/* 80BDE154  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BDE158  FC 00 00 32 */	fmul f0, f0, f0
/* 80BDE15C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BDE160  FC 03 00 28 */	fsub f0, f3, f0
/* 80BDE164  FC 02 00 32 */	fmul f0, f2, f0
/* 80BDE168  FC 44 00 32 */	fmul f2, f4, f0
/* 80BDE16C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BDE170  FC 01 00 32 */	fmul f0, f1, f0
/* 80BDE174  FC 03 00 28 */	fsub f0, f3, f0
/* 80BDE178  FC 02 00 32 */	fmul f0, f2, f0
/* 80BDE17C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BDE180  FC 00 00 32 */	fmul f0, f0, f0
/* 80BDE184  FC 01 00 32 */	fmul f0, f1, f0
/* 80BDE188  FC 03 00 28 */	fsub f0, f3, f0
/* 80BDE18C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BDE190  FC 21 00 32 */	fmul f1, f1, f0
/* 80BDE194  FC 20 08 18 */	frsp f1, f1
/* 80BDE198  48 00 00 88 */	b lbl_80BDE220
lbl_80BDE19C:
/* 80BDE19C  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BDE1A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDE1A4  40 80 00 10 */	bge lbl_80BDE1B4
/* 80BDE1A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BDE1AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BDE1B0  48 00 00 70 */	b lbl_80BDE220
lbl_80BDE1B4:
/* 80BDE1B4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BDE1B8  80 81 00 08 */	lwz r4, 8(r1)
/* 80BDE1BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BDE1C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BDE1C4  7C 03 00 00 */	cmpw r3, r0
/* 80BDE1C8  41 82 00 14 */	beq lbl_80BDE1DC
/* 80BDE1CC  40 80 00 40 */	bge lbl_80BDE20C
/* 80BDE1D0  2C 03 00 00 */	cmpwi r3, 0
/* 80BDE1D4  41 82 00 20 */	beq lbl_80BDE1F4
/* 80BDE1D8  48 00 00 34 */	b lbl_80BDE20C
lbl_80BDE1DC:
/* 80BDE1DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BDE1E0  41 82 00 0C */	beq lbl_80BDE1EC
/* 80BDE1E4  38 00 00 01 */	li r0, 1
/* 80BDE1E8  48 00 00 28 */	b lbl_80BDE210
lbl_80BDE1EC:
/* 80BDE1EC  38 00 00 02 */	li r0, 2
/* 80BDE1F0  48 00 00 20 */	b lbl_80BDE210
lbl_80BDE1F4:
/* 80BDE1F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BDE1F8  41 82 00 0C */	beq lbl_80BDE204
/* 80BDE1FC  38 00 00 05 */	li r0, 5
/* 80BDE200  48 00 00 10 */	b lbl_80BDE210
lbl_80BDE204:
/* 80BDE204  38 00 00 03 */	li r0, 3
/* 80BDE208  48 00 00 08 */	b lbl_80BDE210
lbl_80BDE20C:
/* 80BDE20C  38 00 00 04 */	li r0, 4
lbl_80BDE210:
/* 80BDE210  2C 00 00 01 */	cmpwi r0, 1
/* 80BDE214  40 82 00 0C */	bne lbl_80BDE220
/* 80BDE218  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BDE21C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BDE220:
/* 80BDE220  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80BDE224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDE228  40 80 00 40 */	bge lbl_80BDE268
/* 80BDE22C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80BDE230  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80BDE234  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80BDE238  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80BDE23C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80BDE240  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80BDE244  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80BDE248  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BDE24C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BDE250  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80BDE254  38 00 00 01 */	li r0, 1
/* 80BDE258  98 1E 05 E0 */	stb r0, 0x5e0(r30)
/* 80BDE25C  38 00 FF FF */	li r0, -1
/* 80BDE260  98 1E 05 E1 */	stb r0, 0x5e1(r30)
/* 80BDE264  48 00 00 2C */	b lbl_80BDE290
lbl_80BDE268:
/* 80BDE268  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80BDE26C  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80BDE270  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80BDE274  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80BDE278  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80BDE27C  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80BDE280  38 00 00 00 */	li r0, 0
/* 80BDE284  98 1E 05 E0 */	stb r0, 0x5e0(r30)
/* 80BDE288  38 00 00 01 */	li r0, 1
/* 80BDE28C  98 1E 05 E1 */	stb r0, 0x5e1(r30)
lbl_80BDE290:
/* 80BDE290  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80BDE294  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80BDE298  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80BDE29C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BDE2A0  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80BDE2A4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80BDE2A8  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80BDE2AC  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80BDE2B0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80BDE2B4  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80BDE2B8  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80BDE2BC  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80BDE2C0  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80BDE2C4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BDE2C8  38 A0 00 01 */	li r5, 1
/* 80BDE2CC  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 80BDE2D0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BDE2D4  7D 89 03 A6 */	mtctr r12
/* 80BDE2D8  4E 80 04 21 */	bctrl 
/* 80BDE2DC  38 60 00 01 */	li r3, 1
/* 80BDE2E0  39 61 00 40 */	addi r11, r1, 0x40
/* 80BDE2E4  4B 78 3F 3D */	bl _restgpr_27
/* 80BDE2E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BDE2EC  7C 08 03 A6 */	mtlr r0
/* 80BDE2F0  38 21 00 40 */	addi r1, r1, 0x40
/* 80BDE2F4  4E 80 00 20 */	blr 
