lbl_8026D114:
/* 8026D114  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8026D118  7C 08 02 A6 */	mflr r0
/* 8026D11C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8026D120  39 61 00 50 */	addi r11, r1, 0x50
/* 8026D124  48 0F 50 B9 */	bl _savegpr_29
/* 8026D128  7C 7D 1B 78 */	mr r29, r3
/* 8026D12C  7C 9E 23 78 */	mr r30, r4
/* 8026D130  7C BF 2B 78 */	mr r31, r5
/* 8026D134  38 A1 00 0C */	addi r5, r1, 0xc
/* 8026D138  38 C1 00 08 */	addi r6, r1, 8
/* 8026D13C  4B FF BB 21 */	bl cM3d_Check_LinLin__FPC8cM3dGLinPC8cM3dGLinPfPf
/* 8026D140  2C 03 00 01 */	cmpwi r3, 1
/* 8026D144  40 82 00 0C */	bne lbl_8026D150
/* 8026D148  38 60 00 00 */	li r3, 0
/* 8026D14C  48 00 02 70 */	b lbl_8026D3BC
lbl_8026D150:
/* 8026D150  2C 03 00 02 */	cmpwi r3, 2
/* 8026D154  40 82 00 98 */	bne lbl_8026D1EC
/* 8026D158  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8026D15C  C0 42 B7 18 */	lfs f2, lit_2256(r2)
/* 8026D160  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026D164  40 81 02 54 */	ble lbl_8026D3B8
/* 8026D168  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026D16C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D170  40 80 02 48 */	bge lbl_8026D3B8
/* 8026D174  C0 61 00 08 */	lfs f3, 8(r1)
/* 8026D178  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8026D17C  40 81 02 3C */	ble lbl_8026D3B8
/* 8026D180  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8026D184  40 80 02 34 */	bge lbl_8026D3B8
/* 8026D188  7F A3 EB 78 */	mr r3, r29
/* 8026D18C  38 81 00 34 */	addi r4, r1, 0x34
/* 8026D190  48 00 21 C1 */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D194  7F C3 F3 78 */	mr r3, r30
/* 8026D198  38 81 00 28 */	addi r4, r1, 0x28
/* 8026D19C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8026D1A0  48 00 21 B1 */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D1A4  38 61 00 34 */	addi r3, r1, 0x34
/* 8026D1A8  38 81 00 28 */	addi r4, r1, 0x28
/* 8026D1AC  48 0D A2 19 */	bl PSVECDistance
/* 8026D1B0  C0 5D 00 1C */	lfs f2, 0x1c(r29)
/* 8026D1B4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8026D1B8  EC 02 00 2A */	fadds f0, f2, f0
/* 8026D1BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D1C0  40 80 01 F8 */	bge lbl_8026D3B8
/* 8026D1C4  38 61 00 34 */	addi r3, r1, 0x34
/* 8026D1C8  38 81 00 28 */	addi r4, r1, 0x28
/* 8026D1CC  7F E5 FB 78 */	mr r5, r31
/* 8026D1D0  48 0D 9E C1 */	bl PSVECAdd
/* 8026D1D4  7F E3 FB 78 */	mr r3, r31
/* 8026D1D8  7F E4 FB 78 */	mr r4, r31
/* 8026D1DC  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026D1E0  48 0D 9E F9 */	bl PSVECScale
/* 8026D1E4  38 60 00 01 */	li r3, 1
/* 8026D1E8  48 00 01 D4 */	b lbl_8026D3BC
lbl_8026D1EC:
/* 8026D1EC  2C 03 00 03 */	cmpwi r3, 3
/* 8026D1F0  40 82 01 C8 */	bne lbl_8026D3B8
/* 8026D1F4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8026D1F8  C0 62 B7 18 */	lfs f3, lit_2256(r2)
/* 8026D1FC  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8026D200  40 80 00 7C */	bge lbl_8026D27C
/* 8026D204  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8026D208  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8026D20C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8026D210  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8026D214  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8026D218  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8026D21C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8026D220  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8026D224  40 80 00 20 */	bge lbl_8026D244
/* 8026D228  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026D22C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8026D230  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026D234  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8026D238  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8026D23C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026D240  48 00 01 28 */	b lbl_8026D368
lbl_8026D244:
/* 8026D244  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026D248  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D24C  40 81 00 20 */	ble lbl_8026D26C
/* 8026D250  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026D254  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8026D258  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8026D25C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8026D260  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8026D264  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026D268  48 00 01 00 */	b lbl_8026D368
lbl_8026D26C:
/* 8026D26C  7F C3 F3 78 */	mr r3, r30
/* 8026D270  38 81 00 10 */	addi r4, r1, 0x10
/* 8026D274  48 00 20 DD */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D278  48 00 00 F0 */	b lbl_8026D368
lbl_8026D27C:
/* 8026D27C  C0 42 B7 38 */	lfs f2, lit_2273(r2)
/* 8026D280  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026D284  40 81 00 78 */	ble lbl_8026D2FC
/* 8026D288  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026D28C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8026D290  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8026D294  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8026D298  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8026D29C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8026D2A0  C0 21 00 08 */	lfs f1, 8(r1)
/* 8026D2A4  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8026D2A8  40 80 00 20 */	bge lbl_8026D2C8
/* 8026D2AC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026D2B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8026D2B4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026D2B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8026D2BC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8026D2C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026D2C4  48 00 00 A4 */	b lbl_8026D368
lbl_8026D2C8:
/* 8026D2C8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026D2CC  40 81 00 20 */	ble lbl_8026D2EC
/* 8026D2D0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026D2D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8026D2D8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8026D2DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8026D2E0  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8026D2E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026D2E8  48 00 00 80 */	b lbl_8026D368
lbl_8026D2EC:
/* 8026D2EC  7F C3 F3 78 */	mr r3, r30
/* 8026D2F0  38 81 00 10 */	addi r4, r1, 0x10
/* 8026D2F4  48 00 20 5D */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D2F8  48 00 00 70 */	b lbl_8026D368
lbl_8026D2FC:
/* 8026D2FC  7F A3 EB 78 */	mr r3, r29
/* 8026D300  38 81 00 1C */	addi r4, r1, 0x1c
/* 8026D304  48 00 20 4D */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D308  C0 21 00 08 */	lfs f1, 8(r1)
/* 8026D30C  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026D310  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D314  40 80 00 20 */	bge lbl_8026D334
/* 8026D318  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026D31C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8026D320  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026D324  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8026D328  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8026D32C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026D330  48 00 00 38 */	b lbl_8026D368
lbl_8026D334:
/* 8026D334  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026D338  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D33C  40 81 00 20 */	ble lbl_8026D35C
/* 8026D340  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026D344  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8026D348  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8026D34C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8026D350  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8026D354  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026D358  48 00 00 10 */	b lbl_8026D368
lbl_8026D35C:
/* 8026D35C  7F C3 F3 78 */	mr r3, r30
/* 8026D360  38 81 00 10 */	addi r4, r1, 0x10
/* 8026D364  48 00 1F ED */	bl CalcPos__8cM3dGLinCFP3Vecf
lbl_8026D368:
/* 8026D368  38 61 00 1C */	addi r3, r1, 0x1c
/* 8026D36C  38 81 00 10 */	addi r4, r1, 0x10
/* 8026D370  48 0D A0 55 */	bl PSVECDistance
/* 8026D374  C0 5D 00 1C */	lfs f2, 0x1c(r29)
/* 8026D378  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8026D37C  EC 02 00 2A */	fadds f0, f2, f0
/* 8026D380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D384  40 80 00 2C */	bge lbl_8026D3B0
/* 8026D388  38 61 00 1C */	addi r3, r1, 0x1c
/* 8026D38C  38 81 00 10 */	addi r4, r1, 0x10
/* 8026D390  7F E5 FB 78 */	mr r5, r31
/* 8026D394  48 0D 9C FD */	bl PSVECAdd
/* 8026D398  7F E3 FB 78 */	mr r3, r31
/* 8026D39C  7F E4 FB 78 */	mr r4, r31
/* 8026D3A0  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026D3A4  48 0D 9D 35 */	bl PSVECScale
/* 8026D3A8  38 60 00 01 */	li r3, 1
/* 8026D3AC  48 00 00 10 */	b lbl_8026D3BC
lbl_8026D3B0:
/* 8026D3B0  38 60 00 00 */	li r3, 0
/* 8026D3B4  48 00 00 08 */	b lbl_8026D3BC
lbl_8026D3B8:
/* 8026D3B8  38 60 00 00 */	li r3, 0
lbl_8026D3BC:
/* 8026D3BC  39 61 00 50 */	addi r11, r1, 0x50
/* 8026D3C0  48 0F 4E 69 */	bl _restgpr_29
/* 8026D3C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8026D3C8  7C 08 03 A6 */	mtlr r0
/* 8026D3CC  38 21 00 50 */	addi r1, r1, 0x50
/* 8026D3D0  4E 80 00 20 */	blr 
