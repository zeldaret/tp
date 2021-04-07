lbl_809D1D00:
/* 809D1D00  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 809D1D04  7C 08 02 A6 */	mflr r0
/* 809D1D08  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 809D1D0C  3C 80 80 9D */	lis r4, m__17daNpc_Grd_Param_c@ha /* 0x809D3A04@ha */
/* 809D1D10  38 84 3A 04 */	addi r4, r4, m__17daNpc_Grd_Param_c@l /* 0x809D3A04@l */
/* 809D1D14  80 A4 01 20 */	lwz r5, 0x120(r4)
/* 809D1D18  80 04 01 24 */	lwz r0, 0x124(r4)
/* 809D1D1C  90 A1 00 9C */	stw r5, 0x9c(r1)
/* 809D1D20  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 809D1D24  80 04 01 28 */	lwz r0, 0x128(r4)
/* 809D1D28  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 809D1D2C  38 A4 00 00 */	addi r5, r4, 0
/* 809D1D30  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 809D1D34  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 809D1D38  80 04 01 2C */	lwz r0, 0x12c(r4)
/* 809D1D3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D1D40  38 01 00 9C */	addi r0, r1, 0x9c
/* 809D1D44  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D1D48  80 A4 01 30 */	lwz r5, 0x130(r4)
/* 809D1D4C  80 04 01 34 */	lwz r0, 0x134(r4)
/* 809D1D50  90 A1 00 90 */	stw r5, 0x90(r1)
/* 809D1D54  90 01 00 94 */	stw r0, 0x94(r1)
/* 809D1D58  80 04 01 38 */	lwz r0, 0x138(r4)
/* 809D1D5C  90 01 00 98 */	stw r0, 0x98(r1)
/* 809D1D60  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 809D1D64  80 A4 01 3C */	lwz r5, 0x13c(r4)
/* 809D1D68  80 04 01 40 */	lwz r0, 0x140(r4)
/* 809D1D6C  90 A1 00 84 */	stw r5, 0x84(r1)
/* 809D1D70  90 01 00 88 */	stw r0, 0x88(r1)
/* 809D1D74  80 04 01 44 */	lwz r0, 0x144(r4)
/* 809D1D78  90 01 00 8C */	stw r0, 0x8c(r1)
/* 809D1D7C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 809D1D80  80 A4 01 48 */	lwz r5, 0x148(r4)
/* 809D1D84  80 04 01 4C */	lwz r0, 0x14c(r4)
/* 809D1D88  90 A1 00 28 */	stw r5, 0x28(r1)
/* 809D1D8C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809D1D90  38 01 00 90 */	addi r0, r1, 0x90
/* 809D1D94  90 01 00 28 */	stw r0, 0x28(r1)
/* 809D1D98  38 01 00 84 */	addi r0, r1, 0x84
/* 809D1D9C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809D1DA0  80 A4 01 50 */	lwz r5, 0x150(r4)
/* 809D1DA4  80 04 01 54 */	lwz r0, 0x154(r4)
/* 809D1DA8  90 A1 00 78 */	stw r5, 0x78(r1)
/* 809D1DAC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 809D1DB0  80 04 01 58 */	lwz r0, 0x158(r4)
/* 809D1DB4  90 01 00 80 */	stw r0, 0x80(r1)
/* 809D1DB8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 809D1DBC  80 A4 01 5C */	lwz r5, 0x15c(r4)
/* 809D1DC0  80 04 01 60 */	lwz r0, 0x160(r4)
/* 809D1DC4  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 809D1DC8  90 01 00 70 */	stw r0, 0x70(r1)
/* 809D1DCC  80 04 01 64 */	lwz r0, 0x164(r4)
/* 809D1DD0  90 01 00 74 */	stw r0, 0x74(r1)
/* 809D1DD4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 809D1DD8  80 A4 01 68 */	lwz r5, 0x168(r4)
/* 809D1DDC  80 04 01 6C */	lwz r0, 0x16c(r4)
/* 809D1DE0  90 A1 00 20 */	stw r5, 0x20(r1)
/* 809D1DE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D1DE8  38 01 00 78 */	addi r0, r1, 0x78
/* 809D1DEC  90 01 00 20 */	stw r0, 0x20(r1)
/* 809D1DF0  38 01 00 6C */	addi r0, r1, 0x6c
/* 809D1DF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D1DF8  80 A4 01 70 */	lwz r5, 0x170(r4)
/* 809D1DFC  80 04 01 74 */	lwz r0, 0x174(r4)
/* 809D1E00  90 A1 00 60 */	stw r5, 0x60(r1)
/* 809D1E04  90 01 00 64 */	stw r0, 0x64(r1)
/* 809D1E08  80 04 01 78 */	lwz r0, 0x178(r4)
/* 809D1E0C  90 01 00 68 */	stw r0, 0x68(r1)
/* 809D1E10  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 809D1E14  80 A4 01 7C */	lwz r5, 0x17c(r4)
/* 809D1E18  80 04 01 80 */	lwz r0, 0x180(r4)
/* 809D1E1C  90 A1 00 54 */	stw r5, 0x54(r1)
/* 809D1E20  90 01 00 58 */	stw r0, 0x58(r1)
/* 809D1E24  80 04 01 84 */	lwz r0, 0x184(r4)
/* 809D1E28  90 01 00 5C */	stw r0, 0x5c(r1)
/* 809D1E2C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 809D1E30  80 A4 01 88 */	lwz r5, 0x188(r4)
/* 809D1E34  80 04 01 8C */	lwz r0, 0x18c(r4)
/* 809D1E38  90 A1 00 18 */	stw r5, 0x18(r1)
/* 809D1E3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809D1E40  38 01 00 60 */	addi r0, r1, 0x60
/* 809D1E44  90 01 00 18 */	stw r0, 0x18(r1)
/* 809D1E48  38 01 00 54 */	addi r0, r1, 0x54
/* 809D1E4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809D1E50  80 A4 01 90 */	lwz r5, 0x190(r4)
/* 809D1E54  80 04 01 94 */	lwz r0, 0x194(r4)
/* 809D1E58  90 A1 00 48 */	stw r5, 0x48(r1)
/* 809D1E5C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 809D1E60  80 04 01 98 */	lwz r0, 0x198(r4)
/* 809D1E64  90 01 00 50 */	stw r0, 0x50(r1)
/* 809D1E68  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809D1E6C  80 A4 01 9C */	lwz r5, 0x19c(r4)
/* 809D1E70  80 04 01 A0 */	lwz r0, 0x1a0(r4)
/* 809D1E74  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 809D1E78  90 01 00 40 */	stw r0, 0x40(r1)
/* 809D1E7C  80 04 01 A4 */	lwz r0, 0x1a4(r4)
/* 809D1E80  90 01 00 44 */	stw r0, 0x44(r1)
/* 809D1E84  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809D1E88  80 A4 01 A8 */	lwz r5, 0x1a8(r4)
/* 809D1E8C  80 04 01 AC */	lwz r0, 0x1ac(r4)
/* 809D1E90  90 A1 00 10 */	stw r5, 0x10(r1)
/* 809D1E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D1E98  38 01 00 48 */	addi r0, r1, 0x48
/* 809D1E9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809D1EA0  38 01 00 3C */	addi r0, r1, 0x3c
/* 809D1EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D1EA8  80 A4 01 B0 */	lwz r5, 0x1b0(r4)
/* 809D1EAC  80 04 01 B4 */	lwz r0, 0x1b4(r4)
/* 809D1EB0  90 A1 00 30 */	stw r5, 0x30(r1)
/* 809D1EB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D1EB8  80 04 01 B8 */	lwz r0, 0x1b8(r4)
/* 809D1EBC  90 01 00 38 */	stw r0, 0x38(r1)
/* 809D1EC0  80 04 01 BC */	lwz r0, 0x1bc(r4)
/* 809D1EC4  90 01 00 08 */	stw r0, 8(r1)
/* 809D1EC8  38 01 00 30 */	addi r0, r1, 0x30
/* 809D1ECC  90 01 00 08 */	stw r0, 8(r1)
/* 809D1ED0  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 809D1ED4  38 A4 01 BC */	addi r5, r4, 0x1bc
/* 809D1ED8  38 00 00 03 */	li r0, 3
/* 809D1EDC  7C 09 03 A6 */	mtctr r0
lbl_809D1EE0:
/* 809D1EE0  80 85 00 04 */	lwz r4, 4(r5)
/* 809D1EE4  84 05 00 08 */	lwzu r0, 8(r5)
/* 809D1EE8  90 86 00 04 */	stw r4, 4(r6)
/* 809D1EEC  94 06 00 08 */	stwu r0, 8(r6)
/* 809D1EF0  42 00 FF F0 */	bdnz lbl_809D1EE0
/* 809D1EF4  38 01 00 0C */	addi r0, r1, 0xc
/* 809D1EF8  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 809D1EFC  38 01 00 28 */	addi r0, r1, 0x28
/* 809D1F00  90 01 00 AC */	stw r0, 0xac(r1)
/* 809D1F04  38 01 00 20 */	addi r0, r1, 0x20
/* 809D1F08  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 809D1F0C  38 01 00 18 */	addi r0, r1, 0x18
/* 809D1F10  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 809D1F14  38 01 00 10 */	addi r0, r1, 0x10
/* 809D1F18  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 809D1F1C  38 01 00 08 */	addi r0, r1, 8
/* 809D1F20  90 01 00 BC */	stw r0, 0xbc(r1)
/* 809D1F24  A8 83 09 E0 */	lha r4, 0x9e0(r3)
/* 809D1F28  7C 80 07 35 */	extsh. r0, r4
/* 809D1F2C  41 80 00 14 */	blt lbl_809D1F40
/* 809D1F30  2C 04 00 06 */	cmpwi r4, 6
/* 809D1F34  40 80 00 0C */	bge lbl_809D1F40
/* 809D1F38  38 81 00 A8 */	addi r4, r1, 0xa8
/* 809D1F3C  4B 78 13 29 */	bl playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_809D1F40:
/* 809D1F40  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 809D1F44  7C 08 03 A6 */	mtlr r0
/* 809D1F48  38 21 00 C0 */	addi r1, r1, 0xc0
/* 809D1F4C  4E 80 00 20 */	blr 
