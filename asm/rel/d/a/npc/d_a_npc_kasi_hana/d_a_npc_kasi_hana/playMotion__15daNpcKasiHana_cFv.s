lbl_80A1D238:
/* 80A1D238  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80A1D23C  7C 08 02 A6 */	mflr r0
/* 80A1D240  90 01 01 54 */	stw r0, 0x154(r1)
/* 80A1D244  3C 80 80 A2 */	lis r4, lit_3908@ha
/* 80A1D248  38 84 10 80 */	addi r4, r4, lit_3908@l
/* 80A1D24C  80 A4 00 EC */	lwz r5, 0xec(r4)
/* 80A1D250  80 04 00 F0 */	lwz r0, 0xf0(r4)
/* 80A1D254  90 A1 00 F4 */	stw r5, 0xf4(r1)
/* 80A1D258  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80A1D25C  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80A1D260  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80A1D264  38 A4 00 48 */	addi r5, r4, 0x48
/* 80A1D268  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 80A1D26C  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80A1D270  80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 80A1D274  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A1D278  38 01 00 F4 */	addi r0, r1, 0xf4
/* 80A1D27C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A1D280  80 A4 00 FC */	lwz r5, 0xfc(r4)
/* 80A1D284  80 04 01 00 */	lwz r0, 0x100(r4)
/* 80A1D288  90 A1 00 E8 */	stw r5, 0xe8(r1)
/* 80A1D28C  90 01 00 EC */	stw r0, 0xec(r1)
/* 80A1D290  80 04 01 04 */	lwz r0, 0x104(r4)
/* 80A1D294  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 80A1D298  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80A1D29C  80 04 01 08 */	lwz r0, 0x108(r4)
/* 80A1D2A0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A1D2A4  38 01 00 E8 */	addi r0, r1, 0xe8
/* 80A1D2A8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A1D2AC  80 A4 01 0C */	lwz r5, 0x10c(r4)
/* 80A1D2B0  80 04 01 10 */	lwz r0, 0x110(r4)
/* 80A1D2B4  90 A1 00 DC */	stw r5, 0xdc(r1)
/* 80A1D2B8  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80A1D2BC  80 04 01 14 */	lwz r0, 0x114(r4)
/* 80A1D2C0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80A1D2C4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80A1D2C8  80 04 01 18 */	lwz r0, 0x118(r4)
/* 80A1D2CC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A1D2D0  38 01 00 DC */	addi r0, r1, 0xdc
/* 80A1D2D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A1D2D8  80 A4 01 1C */	lwz r5, 0x11c(r4)
/* 80A1D2DC  80 04 01 20 */	lwz r0, 0x120(r4)
/* 80A1D2E0  90 A1 00 D0 */	stw r5, 0xd0(r1)
/* 80A1D2E4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80A1D2E8  80 04 01 24 */	lwz r0, 0x124(r4)
/* 80A1D2EC  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80A1D2F0  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80A1D2F4  80 04 01 28 */	lwz r0, 0x128(r4)
/* 80A1D2F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1D2FC  38 01 00 D0 */	addi r0, r1, 0xd0
/* 80A1D300  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1D304  80 A4 01 2C */	lwz r5, 0x12c(r4)
/* 80A1D308  80 04 01 30 */	lwz r0, 0x130(r4)
/* 80A1D30C  90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 80A1D310  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80A1D314  80 04 01 34 */	lwz r0, 0x134(r4)
/* 80A1D318  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80A1D31C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80A1D320  80 04 01 38 */	lwz r0, 0x138(r4)
/* 80A1D324  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A1D328  38 01 00 C4 */	addi r0, r1, 0xc4
/* 80A1D32C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A1D330  80 A4 01 3C */	lwz r5, 0x13c(r4)
/* 80A1D334  80 04 01 40 */	lwz r0, 0x140(r4)
/* 80A1D338  90 A1 00 B8 */	stw r5, 0xb8(r1)
/* 80A1D33C  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80A1D340  80 04 01 44 */	lwz r0, 0x144(r4)
/* 80A1D344  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80A1D348  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80A1D34C  80 04 01 48 */	lwz r0, 0x148(r4)
/* 80A1D350  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A1D354  38 01 00 B8 */	addi r0, r1, 0xb8
/* 80A1D358  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A1D35C  80 A4 01 4C */	lwz r5, 0x14c(r4)
/* 80A1D360  80 04 01 50 */	lwz r0, 0x150(r4)
/* 80A1D364  90 A1 00 AC */	stw r5, 0xac(r1)
/* 80A1D368  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80A1D36C  80 04 01 54 */	lwz r0, 0x154(r4)
/* 80A1D370  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80A1D374  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80A1D378  80 04 01 58 */	lwz r0, 0x158(r4)
/* 80A1D37C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A1D380  38 01 00 AC */	addi r0, r1, 0xac
/* 80A1D384  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A1D388  80 A4 01 5C */	lwz r5, 0x15c(r4)
/* 80A1D38C  80 04 01 60 */	lwz r0, 0x160(r4)
/* 80A1D390  90 A1 00 A0 */	stw r5, 0xa0(r1)
/* 80A1D394  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80A1D398  80 04 01 64 */	lwz r0, 0x164(r4)
/* 80A1D39C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80A1D3A0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80A1D3A4  80 04 01 68 */	lwz r0, 0x168(r4)
/* 80A1D3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1D3AC  38 01 00 A0 */	addi r0, r1, 0xa0
/* 80A1D3B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1D3B4  80 A4 01 6C */	lwz r5, 0x16c(r4)
/* 80A1D3B8  80 04 01 70 */	lwz r0, 0x170(r4)
/* 80A1D3BC  90 A1 00 94 */	stw r5, 0x94(r1)
/* 80A1D3C0  90 01 00 98 */	stw r0, 0x98(r1)
/* 80A1D3C4  80 04 01 74 */	lwz r0, 0x174(r4)
/* 80A1D3C8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80A1D3CC  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80A1D3D0  80 04 01 78 */	lwz r0, 0x178(r4)
/* 80A1D3D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1D3D8  38 01 00 94 */	addi r0, r1, 0x94
/* 80A1D3DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1D3E0  80 A4 01 7C */	lwz r5, 0x17c(r4)
/* 80A1D3E4  80 04 01 80 */	lwz r0, 0x180(r4)
/* 80A1D3E8  90 A1 00 88 */	stw r5, 0x88(r1)
/* 80A1D3EC  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80A1D3F0  80 04 01 84 */	lwz r0, 0x184(r4)
/* 80A1D3F4  90 01 00 90 */	stw r0, 0x90(r1)
/* 80A1D3F8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80A1D3FC  80 04 01 88 */	lwz r0, 0x188(r4)
/* 80A1D400  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1D404  38 01 00 88 */	addi r0, r1, 0x88
/* 80A1D408  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1D40C  80 A4 01 8C */	lwz r5, 0x18c(r4)
/* 80A1D410  80 04 01 90 */	lwz r0, 0x190(r4)
/* 80A1D414  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 80A1D418  90 01 00 80 */	stw r0, 0x80(r1)
/* 80A1D41C  80 04 01 94 */	lwz r0, 0x194(r4)
/* 80A1D420  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A1D424  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80A1D428  80 04 01 98 */	lwz r0, 0x198(r4)
/* 80A1D42C  90 01 00 08 */	stw r0, 8(r1)
/* 80A1D430  38 01 00 7C */	addi r0, r1, 0x7c
/* 80A1D434  90 01 00 08 */	stw r0, 8(r1)
/* 80A1D438  80 A4 01 9C */	lwz r5, 0x19c(r4)
/* 80A1D43C  80 04 01 A0 */	lwz r0, 0x1a0(r4)
/* 80A1D440  90 A1 00 70 */	stw r5, 0x70(r1)
/* 80A1D444  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A1D448  80 04 01 A4 */	lwz r0, 0x1a4(r4)
/* 80A1D44C  90 01 00 78 */	stw r0, 0x78(r1)
/* 80A1D450  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A1D454  80 A4 01 A8 */	lwz r5, 0x1a8(r4)
/* 80A1D458  80 04 01 AC */	lwz r0, 0x1ac(r4)
/* 80A1D45C  90 A1 00 64 */	stw r5, 0x64(r1)
/* 80A1D460  90 01 00 68 */	stw r0, 0x68(r1)
/* 80A1D464  80 04 01 B0 */	lwz r0, 0x1b0(r4)
/* 80A1D468  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80A1D46C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A1D470  80 A4 01 B4 */	lwz r5, 0x1b4(r4)
/* 80A1D474  80 04 01 B8 */	lwz r0, 0x1b8(r4)
/* 80A1D478  90 A1 00 58 */	stw r5, 0x58(r1)
/* 80A1D47C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80A1D480  80 04 01 BC */	lwz r0, 0x1bc(r4)
/* 80A1D484  90 01 00 60 */	stw r0, 0x60(r1)
/* 80A1D488  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80A1D48C  80 A4 01 C0 */	lwz r5, 0x1c0(r4)
/* 80A1D490  80 04 01 C4 */	lwz r0, 0x1c4(r4)
/* 80A1D494  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 80A1D498  90 01 00 50 */	stw r0, 0x50(r1)
/* 80A1D49C  80 04 01 C8 */	lwz r0, 0x1c8(r4)
/* 80A1D4A0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A1D4A4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A1D4A8  80 A4 01 CC */	lwz r5, 0x1cc(r4)
/* 80A1D4AC  80 04 01 D0 */	lwz r0, 0x1d0(r4)
/* 80A1D4B0  90 A1 00 40 */	stw r5, 0x40(r1)
/* 80A1D4B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A1D4B8  80 04 01 D4 */	lwz r0, 0x1d4(r4)
/* 80A1D4BC  90 01 00 48 */	stw r0, 0x48(r1)
/* 80A1D4C0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A1D4C4  80 A4 01 D8 */	lwz r5, 0x1d8(r4)
/* 80A1D4C8  80 04 01 DC */	lwz r0, 0x1dc(r4)
/* 80A1D4CC  90 A1 00 34 */	stw r5, 0x34(r1)
/* 80A1D4D0  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A1D4D4  80 04 01 E0 */	lwz r0, 0x1e0(r4)
/* 80A1D4D8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A1D4DC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A1D4E0  38 E1 00 FC */	addi r7, r1, 0xfc
/* 80A1D4E4  38 C4 01 E0 */	addi r6, r4, 0x1e0
/* 80A1D4E8  38 00 00 03 */	li r0, 3
/* 80A1D4EC  7C 09 03 A6 */	mtctr r0
lbl_80A1D4F0:
/* 80A1D4F0  80 A6 00 04 */	lwz r5, 4(r6)
/* 80A1D4F4  84 06 00 08 */	lwzu r0, 8(r6)
/* 80A1D4F8  90 A7 00 04 */	stw r5, 4(r7)
/* 80A1D4FC  94 07 00 08 */	stwu r0, 8(r7)
/* 80A1D500  42 00 FF F0 */	bdnz lbl_80A1D4F0
/* 80A1D504  38 01 00 70 */	addi r0, r1, 0x70
/* 80A1D508  90 01 01 00 */	stw r0, 0x100(r1)
/* 80A1D50C  38 01 00 64 */	addi r0, r1, 0x64
/* 80A1D510  90 01 01 04 */	stw r0, 0x104(r1)
/* 80A1D514  38 01 00 58 */	addi r0, r1, 0x58
/* 80A1D518  90 01 01 08 */	stw r0, 0x108(r1)
/* 80A1D51C  38 01 00 4C */	addi r0, r1, 0x4c
/* 80A1D520  90 01 01 0C */	stw r0, 0x10c(r1)
/* 80A1D524  38 01 00 40 */	addi r0, r1, 0x40
/* 80A1D528  90 01 01 10 */	stw r0, 0x110(r1)
/* 80A1D52C  38 01 00 34 */	addi r0, r1, 0x34
/* 80A1D530  90 01 01 14 */	stw r0, 0x114(r1)
/* 80A1D534  38 C1 01 14 */	addi r6, r1, 0x114
/* 80A1D538  38 A4 01 F8 */	addi r5, r4, 0x1f8
/* 80A1D53C  38 00 00 06 */	li r0, 6
/* 80A1D540  7C 09 03 A6 */	mtctr r0
lbl_80A1D544:
/* 80A1D544  80 85 00 04 */	lwz r4, 4(r5)
/* 80A1D548  84 05 00 08 */	lwzu r0, 8(r5)
/* 80A1D54C  90 86 00 04 */	stw r4, 4(r6)
/* 80A1D550  94 06 00 08 */	stwu r0, 8(r6)
/* 80A1D554  42 00 FF F0 */	bdnz lbl_80A1D544
/* 80A1D558  38 01 00 30 */	addi r0, r1, 0x30
/* 80A1D55C  90 01 01 18 */	stw r0, 0x118(r1)
/* 80A1D560  38 01 00 2C */	addi r0, r1, 0x2c
/* 80A1D564  90 01 01 1C */	stw r0, 0x11c(r1)
/* 80A1D568  38 01 00 28 */	addi r0, r1, 0x28
/* 80A1D56C  90 01 01 20 */	stw r0, 0x120(r1)
/* 80A1D570  38 01 00 24 */	addi r0, r1, 0x24
/* 80A1D574  90 01 01 24 */	stw r0, 0x124(r1)
/* 80A1D578  38 01 00 20 */	addi r0, r1, 0x20
/* 80A1D57C  90 01 01 28 */	stw r0, 0x128(r1)
/* 80A1D580  38 01 00 1C */	addi r0, r1, 0x1c
/* 80A1D584  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80A1D588  38 01 00 18 */	addi r0, r1, 0x18
/* 80A1D58C  90 01 01 30 */	stw r0, 0x130(r1)
/* 80A1D590  38 01 00 14 */	addi r0, r1, 0x14
/* 80A1D594  90 01 01 34 */	stw r0, 0x134(r1)
/* 80A1D598  38 01 00 10 */	addi r0, r1, 0x10
/* 80A1D59C  90 01 01 38 */	stw r0, 0x138(r1)
/* 80A1D5A0  38 01 00 0C */	addi r0, r1, 0xc
/* 80A1D5A4  90 01 01 3C */	stw r0, 0x13c(r1)
/* 80A1D5A8  38 01 00 08 */	addi r0, r1, 8
/* 80A1D5AC  90 01 01 40 */	stw r0, 0x140(r1)
/* 80A1D5B0  38 01 01 00 */	addi r0, r1, 0x100
/* 80A1D5B4  90 01 01 44 */	stw r0, 0x144(r1)
/* 80A1D5B8  A8 83 09 E0 */	lha r4, 0x9e0(r3)
/* 80A1D5BC  7C 80 07 35 */	extsh. r0, r4
/* 80A1D5C0  41 80 00 34 */	blt lbl_80A1D5F4
/* 80A1D5C4  2C 04 00 0C */	cmpwi r4, 0xc
/* 80A1D5C8  40 80 00 2C */	bge lbl_80A1D5F4
/* 80A1D5CC  A8 03 09 DA */	lha r0, 0x9da(r3)
/* 80A1D5D0  B0 03 14 3E */	sth r0, 0x143e(r3)
/* 80A1D5D4  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80A1D5D8  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A1D5DC  40 82 00 10 */	bne lbl_80A1D5EC
/* 80A1D5E0  38 81 01 18 */	addi r4, r1, 0x118
/* 80A1D5E4  48 00 00 21 */	bl playMotionAnmLoop__15daNpcKasiHana_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
/* 80A1D5E8  48 00 00 0C */	b lbl_80A1D5F4
lbl_80A1D5EC:
/* 80A1D5EC  38 81 01 18 */	addi r4, r1, 0x118
/* 80A1D5F0  4B 73 5C 74 */	b playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80A1D5F4:
/* 80A1D5F4  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80A1D5F8  7C 08 03 A6 */	mtlr r0
/* 80A1D5FC  38 21 01 50 */	addi r1, r1, 0x150
/* 80A1D600  4E 80 00 20 */	blr 
