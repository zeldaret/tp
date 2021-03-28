lbl_80AE0B58:
/* 80AE0B58  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80AE0B5C  7C 08 02 A6 */	mflr r0
/* 80AE0B60  90 01 01 44 */	stw r0, 0x144(r1)
/* 80AE0B64  3C 80 80 AE */	lis r4, m__17daNpcShad_Param_c@ha
/* 80AE0B68  38 84 1F DC */	addi r4, r4, m__17daNpcShad_Param_c@l
/* 80AE0B6C  80 A4 00 A0 */	lwz r5, 0xa0(r4)
/* 80AE0B70  80 04 00 A4 */	lwz r0, 0xa4(r4)
/* 80AE0B74  90 A1 00 FC */	stw r5, 0xfc(r1)
/* 80AE0B78  90 01 01 00 */	stw r0, 0x100(r1)
/* 80AE0B7C  80 04 00 A8 */	lwz r0, 0xa8(r4)
/* 80AE0B80  90 01 01 04 */	stw r0, 0x104(r1)
/* 80AE0B84  38 A4 00 00 */	addi r5, r4, 0
/* 80AE0B88  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 80AE0B8C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80AE0B90  80 04 00 AC */	lwz r0, 0xac(r4)
/* 80AE0B94  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AE0B98  38 01 00 FC */	addi r0, r1, 0xfc
/* 80AE0B9C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AE0BA0  80 A4 00 B0 */	lwz r5, 0xb0(r4)
/* 80AE0BA4  80 04 00 B4 */	lwz r0, 0xb4(r4)
/* 80AE0BA8  90 A1 00 F0 */	stw r5, 0xf0(r1)
/* 80AE0BAC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80AE0BB0  80 04 00 B8 */	lwz r0, 0xb8(r4)
/* 80AE0BB4  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80AE0BB8  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80AE0BBC  80 A4 00 BC */	lwz r5, 0xbc(r4)
/* 80AE0BC0  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 80AE0BC4  90 A1 00 E4 */	stw r5, 0xe4(r1)
/* 80AE0BC8  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 80AE0BCC  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 80AE0BD0  90 01 00 EC */	stw r0, 0xec(r1)
/* 80AE0BD4  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 80AE0BD8  80 04 00 CC */	lwz r0, 0xcc(r4)
/* 80AE0BDC  90 A1 00 40 */	stw r5, 0x40(r1)
/* 80AE0BE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AE0BE4  38 01 00 F0 */	addi r0, r1, 0xf0
/* 80AE0BE8  90 01 00 40 */	stw r0, 0x40(r1)
/* 80AE0BEC  38 01 00 E4 */	addi r0, r1, 0xe4
/* 80AE0BF0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AE0BF4  80 A4 00 D0 */	lwz r5, 0xd0(r4)
/* 80AE0BF8  80 04 00 D4 */	lwz r0, 0xd4(r4)
/* 80AE0BFC  90 A1 00 D8 */	stw r5, 0xd8(r1)
/* 80AE0C00  90 01 00 DC */	stw r0, 0xdc(r1)
/* 80AE0C04  80 04 00 D8 */	lwz r0, 0xd8(r4)
/* 80AE0C08  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80AE0C0C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80AE0C10  80 A4 00 DC */	lwz r5, 0xdc(r4)
/* 80AE0C14  80 04 00 E0 */	lwz r0, 0xe0(r4)
/* 80AE0C18  90 A1 00 CC */	stw r5, 0xcc(r1)
/* 80AE0C1C  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80AE0C20  80 04 00 E4 */	lwz r0, 0xe4(r4)
/* 80AE0C24  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80AE0C28  80 A4 00 E8 */	lwz r5, 0xe8(r4)
/* 80AE0C2C  80 04 00 EC */	lwz r0, 0xec(r4)
/* 80AE0C30  90 A1 00 38 */	stw r5, 0x38(r1)
/* 80AE0C34  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AE0C38  38 01 00 D8 */	addi r0, r1, 0xd8
/* 80AE0C3C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80AE0C40  38 01 00 CC */	addi r0, r1, 0xcc
/* 80AE0C44  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AE0C48  80 A4 00 F0 */	lwz r5, 0xf0(r4)
/* 80AE0C4C  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80AE0C50  90 A1 00 C0 */	stw r5, 0xc0(r1)
/* 80AE0C54  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80AE0C58  80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 80AE0C5C  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80AE0C60  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80AE0C64  80 A4 00 FC */	lwz r5, 0xfc(r4)
/* 80AE0C68  80 04 01 00 */	lwz r0, 0x100(r4)
/* 80AE0C6C  90 A1 00 B4 */	stw r5, 0xb4(r1)
/* 80AE0C70  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80AE0C74  80 04 01 04 */	lwz r0, 0x104(r4)
/* 80AE0C78  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80AE0C7C  80 A4 01 08 */	lwz r5, 0x108(r4)
/* 80AE0C80  80 04 01 0C */	lwz r0, 0x10c(r4)
/* 80AE0C84  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80AE0C88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE0C8C  38 01 00 C0 */	addi r0, r1, 0xc0
/* 80AE0C90  90 01 00 30 */	stw r0, 0x30(r1)
/* 80AE0C94  38 01 00 B4 */	addi r0, r1, 0xb4
/* 80AE0C98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE0C9C  80 A4 01 10 */	lwz r5, 0x110(r4)
/* 80AE0CA0  80 04 01 14 */	lwz r0, 0x114(r4)
/* 80AE0CA4  90 A1 00 A8 */	stw r5, 0xa8(r1)
/* 80AE0CA8  90 01 00 AC */	stw r0, 0xac(r1)
/* 80AE0CAC  80 04 01 18 */	lwz r0, 0x118(r4)
/* 80AE0CB0  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80AE0CB4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80AE0CB8  80 04 01 1C */	lwz r0, 0x11c(r4)
/* 80AE0CBC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80AE0CC0  38 01 00 A8 */	addi r0, r1, 0xa8
/* 80AE0CC4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80AE0CC8  80 A4 01 20 */	lwz r5, 0x120(r4)
/* 80AE0CCC  80 04 01 24 */	lwz r0, 0x124(r4)
/* 80AE0CD0  90 A1 00 9C */	stw r5, 0x9c(r1)
/* 80AE0CD4  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80AE0CD8  80 04 01 28 */	lwz r0, 0x128(r4)
/* 80AE0CDC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80AE0CE0  80 04 01 2C */	lwz r0, 0x12c(r4)
/* 80AE0CE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE0CE8  38 01 00 9C */	addi r0, r1, 0x9c
/* 80AE0CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE0CF0  80 A4 01 30 */	lwz r5, 0x130(r4)
/* 80AE0CF4  80 04 01 34 */	lwz r0, 0x134(r4)
/* 80AE0CF8  90 A1 00 90 */	stw r5, 0x90(r1)
/* 80AE0CFC  90 01 00 94 */	stw r0, 0x94(r1)
/* 80AE0D00  80 04 01 38 */	lwz r0, 0x138(r4)
/* 80AE0D04  90 01 00 98 */	stw r0, 0x98(r1)
/* 80AE0D08  80 04 01 3C */	lwz r0, 0x13c(r4)
/* 80AE0D0C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AE0D10  38 01 00 90 */	addi r0, r1, 0x90
/* 80AE0D14  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AE0D18  80 A4 01 40 */	lwz r5, 0x140(r4)
/* 80AE0D1C  80 04 01 44 */	lwz r0, 0x144(r4)
/* 80AE0D20  90 A1 00 84 */	stw r5, 0x84(r1)
/* 80AE0D24  90 01 00 88 */	stw r0, 0x88(r1)
/* 80AE0D28  80 04 01 48 */	lwz r0, 0x148(r4)
/* 80AE0D2C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80AE0D30  80 04 01 4C */	lwz r0, 0x14c(r4)
/* 80AE0D34  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AE0D38  38 01 00 84 */	addi r0, r1, 0x84
/* 80AE0D3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AE0D40  80 A4 01 50 */	lwz r5, 0x150(r4)
/* 80AE0D44  80 04 01 54 */	lwz r0, 0x154(r4)
/* 80AE0D48  90 A1 00 78 */	stw r5, 0x78(r1)
/* 80AE0D4C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80AE0D50  80 04 01 58 */	lwz r0, 0x158(r4)
/* 80AE0D54  90 01 00 80 */	stw r0, 0x80(r1)
/* 80AE0D58  80 04 01 5C */	lwz r0, 0x15c(r4)
/* 80AE0D5C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AE0D60  38 01 00 78 */	addi r0, r1, 0x78
/* 80AE0D64  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AE0D68  80 A4 01 60 */	lwz r5, 0x160(r4)
/* 80AE0D6C  80 04 01 64 */	lwz r0, 0x164(r4)
/* 80AE0D70  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 80AE0D74  90 01 00 70 */	stw r0, 0x70(r1)
/* 80AE0D78  80 04 01 68 */	lwz r0, 0x168(r4)
/* 80AE0D7C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AE0D80  80 04 01 6C */	lwz r0, 0x16c(r4)
/* 80AE0D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE0D88  38 01 00 6C */	addi r0, r1, 0x6c
/* 80AE0D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE0D90  80 A4 01 70 */	lwz r5, 0x170(r4)
/* 80AE0D94  80 04 01 74 */	lwz r0, 0x174(r4)
/* 80AE0D98  90 A1 00 60 */	stw r5, 0x60(r1)
/* 80AE0D9C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AE0DA0  80 04 01 78 */	lwz r0, 0x178(r4)
/* 80AE0DA4  90 01 00 68 */	stw r0, 0x68(r1)
/* 80AE0DA8  80 04 01 7C */	lwz r0, 0x17c(r4)
/* 80AE0DAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE0DB0  38 01 00 60 */	addi r0, r1, 0x60
/* 80AE0DB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE0DB8  80 A4 01 80 */	lwz r5, 0x180(r4)
/* 80AE0DBC  80 04 01 84 */	lwz r0, 0x184(r4)
/* 80AE0DC0  90 A1 00 54 */	stw r5, 0x54(r1)
/* 80AE0DC4  90 01 00 58 */	stw r0, 0x58(r1)
/* 80AE0DC8  80 04 01 88 */	lwz r0, 0x188(r4)
/* 80AE0DCC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80AE0DD0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80AE0DD4  80 04 01 8C */	lwz r0, 0x18c(r4)
/* 80AE0DD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE0DDC  38 01 00 54 */	addi r0, r1, 0x54
/* 80AE0DE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE0DE4  80 A4 01 90 */	lwz r5, 0x190(r4)
/* 80AE0DE8  80 04 01 94 */	lwz r0, 0x194(r4)
/* 80AE0DEC  90 A1 00 48 */	stw r5, 0x48(r1)
/* 80AE0DF0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80AE0DF4  80 04 01 98 */	lwz r0, 0x198(r4)
/* 80AE0DF8  90 01 00 50 */	stw r0, 0x50(r1)
/* 80AE0DFC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80AE0E00  80 04 01 9C */	lwz r0, 0x19c(r4)
/* 80AE0E04  90 01 00 08 */	stw r0, 8(r1)
/* 80AE0E08  38 01 00 48 */	addi r0, r1, 0x48
/* 80AE0E0C  90 01 00 08 */	stw r0, 8(r1)
/* 80AE0E10  38 C1 01 04 */	addi r6, r1, 0x104
/* 80AE0E14  38 A4 01 9C */	addi r5, r4, 0x19c
/* 80AE0E18  38 00 00 06 */	li r0, 6
/* 80AE0E1C  7C 09 03 A6 */	mtctr r0
lbl_80AE0E20:
/* 80AE0E20  80 85 00 04 */	lwz r4, 4(r5)
/* 80AE0E24  84 05 00 08 */	lwzu r0, 8(r5)
/* 80AE0E28  90 86 00 04 */	stw r4, 4(r6)
/* 80AE0E2C  94 06 00 08 */	stwu r0, 8(r6)
/* 80AE0E30  42 00 FF F0 */	bdnz lbl_80AE0E20
/* 80AE0E34  80 05 00 04 */	lwz r0, 4(r5)
/* 80AE0E38  90 06 00 04 */	stw r0, 4(r6)
/* 80AE0E3C  38 01 00 2C */	addi r0, r1, 0x2c
/* 80AE0E40  90 01 01 08 */	stw r0, 0x108(r1)
/* 80AE0E44  38 01 00 40 */	addi r0, r1, 0x40
/* 80AE0E48  90 01 01 0C */	stw r0, 0x10c(r1)
/* 80AE0E4C  38 01 00 38 */	addi r0, r1, 0x38
/* 80AE0E50  90 01 01 10 */	stw r0, 0x110(r1)
/* 80AE0E54  38 01 00 30 */	addi r0, r1, 0x30
/* 80AE0E58  90 01 01 14 */	stw r0, 0x114(r1)
/* 80AE0E5C  38 01 00 28 */	addi r0, r1, 0x28
/* 80AE0E60  90 01 01 18 */	stw r0, 0x118(r1)
/* 80AE0E64  38 01 00 24 */	addi r0, r1, 0x24
/* 80AE0E68  90 01 01 1C */	stw r0, 0x11c(r1)
/* 80AE0E6C  38 01 00 20 */	addi r0, r1, 0x20
/* 80AE0E70  90 01 01 20 */	stw r0, 0x120(r1)
/* 80AE0E74  38 01 00 1C */	addi r0, r1, 0x1c
/* 80AE0E78  90 01 01 24 */	stw r0, 0x124(r1)
/* 80AE0E7C  38 01 00 18 */	addi r0, r1, 0x18
/* 80AE0E80  90 01 01 28 */	stw r0, 0x128(r1)
/* 80AE0E84  38 01 00 14 */	addi r0, r1, 0x14
/* 80AE0E88  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80AE0E8C  38 01 00 10 */	addi r0, r1, 0x10
/* 80AE0E90  90 01 01 30 */	stw r0, 0x130(r1)
/* 80AE0E94  38 01 00 0C */	addi r0, r1, 0xc
/* 80AE0E98  90 01 01 34 */	stw r0, 0x134(r1)
/* 80AE0E9C  38 01 00 08 */	addi r0, r1, 8
/* 80AE0EA0  90 01 01 38 */	stw r0, 0x138(r1)
/* 80AE0EA4  A8 83 09 DE */	lha r4, 0x9de(r3)
/* 80AE0EA8  7C 80 07 35 */	extsh. r0, r4
/* 80AE0EAC  41 80 00 14 */	blt lbl_80AE0EC0
/* 80AE0EB0  2C 04 00 0D */	cmpwi r4, 0xd
/* 80AE0EB4  40 80 00 0C */	bge lbl_80AE0EC0
/* 80AE0EB8  38 81 01 08 */	addi r4, r1, 0x108
/* 80AE0EBC  4B 67 22 94 */	b playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80AE0EC0:
/* 80AE0EC0  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80AE0EC4  7C 08 03 A6 */	mtlr r0
/* 80AE0EC8  38 21 01 40 */	addi r1, r1, 0x140
/* 80AE0ECC  4E 80 00 20 */	blr 
