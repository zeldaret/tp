lbl_809E1B28:
/* 809E1B28  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 809E1B2C  7C 08 02 A6 */	mflr r0
/* 809E1B30  90 01 01 54 */	stw r0, 0x154(r1)
/* 809E1B34  93 E1 01 4C */	stw r31, 0x14c(r1)
/* 809E1B38  7C 7F 1B 78 */	mr r31, r3
/* 809E1B3C  3C 60 80 9E */	lis r3, m__17daNpc_grR_Param_c@ha /* 0x809E38D8@ha */
/* 809E1B40  38 63 38 D8 */	addi r3, r3, m__17daNpc_grR_Param_c@l /* 0x809E38D8@l */
/* 809E1B44  80 83 01 A0 */	lwz r4, 0x1a0(r3)
/* 809E1B48  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 809E1B4C  90 81 01 10 */	stw r4, 0x110(r1)
/* 809E1B50  90 01 01 14 */	stw r0, 0x114(r1)
/* 809E1B54  80 03 01 A8 */	lwz r0, 0x1a8(r3)
/* 809E1B58  90 01 01 18 */	stw r0, 0x118(r1)
/* 809E1B5C  38 83 00 00 */	addi r4, r3, 0
/* 809E1B60  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 809E1B64  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 809E1B68  80 03 01 AC */	lwz r0, 0x1ac(r3)
/* 809E1B6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809E1B70  38 01 01 10 */	addi r0, r1, 0x110
/* 809E1B74  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809E1B78  80 83 01 B0 */	lwz r4, 0x1b0(r3)
/* 809E1B7C  80 03 01 B4 */	lwz r0, 0x1b4(r3)
/* 809E1B80  90 81 01 04 */	stw r4, 0x104(r1)
/* 809E1B84  90 01 01 08 */	stw r0, 0x108(r1)
/* 809E1B88  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 809E1B8C  90 01 01 0C */	stw r0, 0x10c(r1)
/* 809E1B90  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 809E1B94  80 83 01 BC */	lwz r4, 0x1bc(r3)
/* 809E1B98  80 03 01 C0 */	lwz r0, 0x1c0(r3)
/* 809E1B9C  90 81 00 F8 */	stw r4, 0xf8(r1)
/* 809E1BA0  90 01 00 FC */	stw r0, 0xfc(r1)
/* 809E1BA4  80 03 01 C4 */	lwz r0, 0x1c4(r3)
/* 809E1BA8  90 01 01 00 */	stw r0, 0x100(r1)
/* 809E1BAC  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 809E1BB0  80 83 01 C8 */	lwz r4, 0x1c8(r3)
/* 809E1BB4  80 03 01 CC */	lwz r0, 0x1cc(r3)
/* 809E1BB8  90 81 00 48 */	stw r4, 0x48(r1)
/* 809E1BBC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 809E1BC0  38 01 01 04 */	addi r0, r1, 0x104
/* 809E1BC4  90 01 00 48 */	stw r0, 0x48(r1)
/* 809E1BC8  38 01 00 F8 */	addi r0, r1, 0xf8
/* 809E1BCC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 809E1BD0  80 83 01 D0 */	lwz r4, 0x1d0(r3)
/* 809E1BD4  80 03 01 D4 */	lwz r0, 0x1d4(r3)
/* 809E1BD8  90 81 00 EC */	stw r4, 0xec(r1)
/* 809E1BDC  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 809E1BE0  80 03 01 D8 */	lwz r0, 0x1d8(r3)
/* 809E1BE4  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 809E1BE8  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 809E1BEC  80 03 01 DC */	lwz r0, 0x1dc(r3)
/* 809E1BF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 809E1BF4  38 01 00 EC */	addi r0, r1, 0xec
/* 809E1BF8  90 01 00 18 */	stw r0, 0x18(r1)
/* 809E1BFC  80 83 01 E0 */	lwz r4, 0x1e0(r3)
/* 809E1C00  80 03 01 E4 */	lwz r0, 0x1e4(r3)
/* 809E1C04  90 81 00 E0 */	stw r4, 0xe0(r1)
/* 809E1C08  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 809E1C0C  80 03 01 E8 */	lwz r0, 0x1e8(r3)
/* 809E1C10  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 809E1C14  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 809E1C18  80 03 01 EC */	lwz r0, 0x1ec(r3)
/* 809E1C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E1C20  38 01 00 E0 */	addi r0, r1, 0xe0
/* 809E1C24  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E1C28  80 83 01 F0 */	lwz r4, 0x1f0(r3)
/* 809E1C2C  80 03 01 F4 */	lwz r0, 0x1f4(r3)
/* 809E1C30  90 81 00 D4 */	stw r4, 0xd4(r1)
/* 809E1C34  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 809E1C38  80 03 01 F8 */	lwz r0, 0x1f8(r3)
/* 809E1C3C  90 01 00 DC */	stw r0, 0xdc(r1)
/* 809E1C40  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 809E1C44  80 83 01 FC */	lwz r4, 0x1fc(r3)
/* 809E1C48  80 03 02 00 */	lwz r0, 0x200(r3)
/* 809E1C4C  90 81 00 C8 */	stw r4, 0xc8(r1)
/* 809E1C50  90 01 00 CC */	stw r0, 0xcc(r1)
/* 809E1C54  80 03 02 04 */	lwz r0, 0x204(r3)
/* 809E1C58  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 809E1C5C  80 83 02 08 */	lwz r4, 0x208(r3)
/* 809E1C60  80 03 02 0C */	lwz r0, 0x20c(r3)
/* 809E1C64  90 81 00 40 */	stw r4, 0x40(r1)
/* 809E1C68  90 01 00 44 */	stw r0, 0x44(r1)
/* 809E1C6C  38 01 00 D4 */	addi r0, r1, 0xd4
/* 809E1C70  90 01 00 40 */	stw r0, 0x40(r1)
/* 809E1C74  38 01 00 C8 */	addi r0, r1, 0xc8
/* 809E1C78  90 01 00 44 */	stw r0, 0x44(r1)
/* 809E1C7C  80 83 02 10 */	lwz r4, 0x210(r3)
/* 809E1C80  80 03 02 14 */	lwz r0, 0x214(r3)
/* 809E1C84  90 81 00 BC */	stw r4, 0xbc(r1)
/* 809E1C88  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 809E1C8C  80 03 02 18 */	lwz r0, 0x218(r3)
/* 809E1C90  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 809E1C94  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 809E1C98  80 83 02 1C */	lwz r4, 0x21c(r3)
/* 809E1C9C  80 03 02 20 */	lwz r0, 0x220(r3)
/* 809E1CA0  90 81 00 B0 */	stw r4, 0xb0(r1)
/* 809E1CA4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 809E1CA8  80 03 02 24 */	lwz r0, 0x224(r3)
/* 809E1CAC  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 809E1CB0  80 83 02 28 */	lwz r4, 0x228(r3)
/* 809E1CB4  80 03 02 2C */	lwz r0, 0x22c(r3)
/* 809E1CB8  90 81 00 38 */	stw r4, 0x38(r1)
/* 809E1CBC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809E1CC0  38 01 00 BC */	addi r0, r1, 0xbc
/* 809E1CC4  90 01 00 38 */	stw r0, 0x38(r1)
/* 809E1CC8  38 01 00 B0 */	addi r0, r1, 0xb0
/* 809E1CCC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809E1CD0  80 83 02 30 */	lwz r4, 0x230(r3)
/* 809E1CD4  80 03 02 34 */	lwz r0, 0x234(r3)
/* 809E1CD8  90 81 00 A4 */	stw r4, 0xa4(r1)
/* 809E1CDC  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 809E1CE0  80 03 02 38 */	lwz r0, 0x238(r3)
/* 809E1CE4  90 01 00 AC */	stw r0, 0xac(r1)
/* 809E1CE8  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 809E1CEC  80 83 02 3C */	lwz r4, 0x23c(r3)
/* 809E1CF0  80 03 02 40 */	lwz r0, 0x240(r3)
/* 809E1CF4  90 81 00 98 */	stw r4, 0x98(r1)
/* 809E1CF8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 809E1CFC  80 03 02 44 */	lwz r0, 0x244(r3)
/* 809E1D00  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 809E1D04  80 83 02 48 */	lwz r4, 0x248(r3)
/* 809E1D08  80 03 02 4C */	lwz r0, 0x24c(r3)
/* 809E1D0C  90 81 00 30 */	stw r4, 0x30(r1)
/* 809E1D10  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E1D14  38 01 00 A4 */	addi r0, r1, 0xa4
/* 809E1D18  90 01 00 30 */	stw r0, 0x30(r1)
/* 809E1D1C  38 01 00 98 */	addi r0, r1, 0x98
/* 809E1D20  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E1D24  80 83 02 50 */	lwz r4, 0x250(r3)
/* 809E1D28  80 03 02 54 */	lwz r0, 0x254(r3)
/* 809E1D2C  90 81 00 8C */	stw r4, 0x8c(r1)
/* 809E1D30  90 01 00 90 */	stw r0, 0x90(r1)
/* 809E1D34  80 03 02 58 */	lwz r0, 0x258(r3)
/* 809E1D38  90 01 00 94 */	stw r0, 0x94(r1)
/* 809E1D3C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 809E1D40  80 83 02 5C */	lwz r4, 0x25c(r3)
/* 809E1D44  80 03 02 60 */	lwz r0, 0x260(r3)
/* 809E1D48  90 81 00 80 */	stw r4, 0x80(r1)
/* 809E1D4C  90 01 00 84 */	stw r0, 0x84(r1)
/* 809E1D50  80 03 02 64 */	lwz r0, 0x264(r3)
/* 809E1D54  90 01 00 88 */	stw r0, 0x88(r1)
/* 809E1D58  80 83 02 68 */	lwz r4, 0x268(r3)
/* 809E1D5C  80 03 02 6C */	lwz r0, 0x26c(r3)
/* 809E1D60  90 81 00 28 */	stw r4, 0x28(r1)
/* 809E1D64  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809E1D68  38 01 00 8C */	addi r0, r1, 0x8c
/* 809E1D6C  90 01 00 28 */	stw r0, 0x28(r1)
/* 809E1D70  38 01 00 80 */	addi r0, r1, 0x80
/* 809E1D74  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809E1D78  80 83 02 70 */	lwz r4, 0x270(r3)
/* 809E1D7C  80 03 02 74 */	lwz r0, 0x274(r3)
/* 809E1D80  90 81 00 74 */	stw r4, 0x74(r1)
/* 809E1D84  90 01 00 78 */	stw r0, 0x78(r1)
/* 809E1D88  80 03 02 78 */	lwz r0, 0x278(r3)
/* 809E1D8C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 809E1D90  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 809E1D94  80 83 02 7C */	lwz r4, 0x27c(r3)
/* 809E1D98  80 03 02 80 */	lwz r0, 0x280(r3)
/* 809E1D9C  90 81 00 68 */	stw r4, 0x68(r1)
/* 809E1DA0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 809E1DA4  80 03 02 84 */	lwz r0, 0x284(r3)
/* 809E1DA8  90 01 00 70 */	stw r0, 0x70(r1)
/* 809E1DAC  80 83 02 88 */	lwz r4, 0x288(r3)
/* 809E1DB0  80 03 02 8C */	lwz r0, 0x28c(r3)
/* 809E1DB4  90 81 00 20 */	stw r4, 0x20(r1)
/* 809E1DB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E1DBC  38 01 00 74 */	addi r0, r1, 0x74
/* 809E1DC0  90 01 00 20 */	stw r0, 0x20(r1)
/* 809E1DC4  38 01 00 68 */	addi r0, r1, 0x68
/* 809E1DC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E1DCC  80 83 02 90 */	lwz r4, 0x290(r3)
/* 809E1DD0  80 03 02 94 */	lwz r0, 0x294(r3)
/* 809E1DD4  90 81 00 5C */	stw r4, 0x5c(r1)
/* 809E1DD8  90 01 00 60 */	stw r0, 0x60(r1)
/* 809E1DDC  80 03 02 98 */	lwz r0, 0x298(r3)
/* 809E1DE0  90 01 00 64 */	stw r0, 0x64(r1)
/* 809E1DE4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 809E1DE8  80 03 02 9C */	lwz r0, 0x29c(r3)
/* 809E1DEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E1DF0  38 01 00 5C */	addi r0, r1, 0x5c
/* 809E1DF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E1DF8  80 83 02 A0 */	lwz r4, 0x2a0(r3)
/* 809E1DFC  80 03 02 A4 */	lwz r0, 0x2a4(r3)
/* 809E1E00  90 81 00 50 */	stw r4, 0x50(r1)
/* 809E1E04  90 01 00 54 */	stw r0, 0x54(r1)
/* 809E1E08  80 03 02 A8 */	lwz r0, 0x2a8(r3)
/* 809E1E0C  90 01 00 58 */	stw r0, 0x58(r1)
/* 809E1E10  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809E1E14  80 03 02 AC */	lwz r0, 0x2ac(r3)
/* 809E1E18  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E1E1C  38 01 00 50 */	addi r0, r1, 0x50
/* 809E1E20  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E1E24  38 A1 01 18 */	addi r5, r1, 0x118
/* 809E1E28  38 83 02 AC */	addi r4, r3, 0x2ac
/* 809E1E2C  38 00 00 05 */	li r0, 5
/* 809E1E30  7C 09 03 A6 */	mtctr r0
lbl_809E1E34:
/* 809E1E34  80 64 00 04 */	lwz r3, 4(r4)
/* 809E1E38  84 04 00 08 */	lwzu r0, 8(r4)
/* 809E1E3C  90 65 00 04 */	stw r3, 4(r5)
/* 809E1E40  94 05 00 08 */	stwu r0, 8(r5)
/* 809E1E44  42 00 FF F0 */	bdnz lbl_809E1E34
/* 809E1E48  80 04 00 04 */	lwz r0, 4(r4)
/* 809E1E4C  90 05 00 04 */	stw r0, 4(r5)
/* 809E1E50  38 01 00 1C */	addi r0, r1, 0x1c
/* 809E1E54  90 01 01 1C */	stw r0, 0x11c(r1)
/* 809E1E58  38 01 00 48 */	addi r0, r1, 0x48
/* 809E1E5C  90 01 01 20 */	stw r0, 0x120(r1)
/* 809E1E60  38 01 00 18 */	addi r0, r1, 0x18
/* 809E1E64  90 01 01 24 */	stw r0, 0x124(r1)
/* 809E1E68  38 01 00 14 */	addi r0, r1, 0x14
/* 809E1E6C  90 01 01 28 */	stw r0, 0x128(r1)
/* 809E1E70  38 01 00 40 */	addi r0, r1, 0x40
/* 809E1E74  90 01 01 2C */	stw r0, 0x12c(r1)
/* 809E1E78  38 01 00 38 */	addi r0, r1, 0x38
/* 809E1E7C  90 01 01 30 */	stw r0, 0x130(r1)
/* 809E1E80  38 01 00 30 */	addi r0, r1, 0x30
/* 809E1E84  90 01 01 34 */	stw r0, 0x134(r1)
/* 809E1E88  38 01 00 28 */	addi r0, r1, 0x28
/* 809E1E8C  90 01 01 38 */	stw r0, 0x138(r1)
/* 809E1E90  38 01 00 20 */	addi r0, r1, 0x20
/* 809E1E94  90 01 01 3C */	stw r0, 0x13c(r1)
/* 809E1E98  38 01 00 10 */	addi r0, r1, 0x10
/* 809E1E9C  90 01 01 40 */	stw r0, 0x140(r1)
/* 809E1EA0  38 01 00 0C */	addi r0, r1, 0xc
/* 809E1EA4  90 01 01 44 */	stw r0, 0x144(r1)
/* 809E1EA8  A8 7F 09 E0 */	lha r3, 0x9e0(r31)
/* 809E1EAC  7C 60 07 35 */	extsh. r0, r3
/* 809E1EB0  41 80 00 4C */	blt lbl_809E1EFC
/* 809E1EB4  2C 03 00 0B */	cmpwi r3, 0xb
/* 809E1EB8  40 80 00 44 */	bge lbl_809E1EFC
/* 809E1EBC  7F E3 FB 78 */	mr r3, r31
/* 809E1EC0  38 81 01 1C */	addi r4, r1, 0x11c
/* 809E1EC4  4B 77 13 A1 */	bl playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
/* 809E1EC8  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 809E1ECC  2C 00 00 02 */	cmpwi r0, 2
/* 809E1ED0  40 82 00 2C */	bne lbl_809E1EFC
/* 809E1ED4  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500EB@ha */
/* 809E1ED8  38 03 00 EB */	addi r0, r3, 0x00EB /* 0x000500EB@l */
/* 809E1EDC  90 01 00 08 */	stw r0, 8(r1)
/* 809E1EE0  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809E1EE4  38 81 00 08 */	addi r4, r1, 8
/* 809E1EE8  38 A0 FF FF */	li r5, -1
/* 809E1EEC  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809E1EF0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 809E1EF4  7D 89 03 A6 */	mtctr r12
/* 809E1EF8  4E 80 04 21 */	bctrl 
lbl_809E1EFC:
/* 809E1EFC  83 E1 01 4C */	lwz r31, 0x14c(r1)
/* 809E1F00  80 01 01 54 */	lwz r0, 0x154(r1)
/* 809E1F04  7C 08 03 A6 */	mtlr r0
/* 809E1F08  38 21 01 50 */	addi r1, r1, 0x150
/* 809E1F0C  4E 80 00 20 */	blr 
