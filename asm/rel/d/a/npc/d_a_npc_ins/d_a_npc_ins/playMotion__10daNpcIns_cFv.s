lbl_80A12A10:
/* 80A12A10  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80A12A14  7C 08 02 A6 */	mflr r0
/* 80A12A18  90 01 01 54 */	stw r0, 0x154(r1)
/* 80A12A1C  3C 80 80 A1 */	lis r4, l_insectParams@ha /* 0x80A13DAC@ha */
/* 80A12A20  38 84 3D AC */	addi r4, r4, l_insectParams@l /* 0x80A13DAC@l */
/* 80A12A24  80 A4 02 1C */	lwz r5, 0x21c(r4)
/* 80A12A28  80 04 02 20 */	lwz r0, 0x220(r4)
/* 80A12A2C  90 A1 01 0C */	stw r5, 0x10c(r1)
/* 80A12A30  90 01 01 10 */	stw r0, 0x110(r1)
/* 80A12A34  80 04 02 24 */	lwz r0, 0x224(r4)
/* 80A12A38  90 01 01 14 */	stw r0, 0x114(r1)
/* 80A12A3C  38 A4 00 C0 */	addi r5, r4, 0xc0
/* 80A12A40  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 80A12A44  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80A12A48  80 04 02 28 */	lwz r0, 0x228(r4)
/* 80A12A4C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A12A50  38 01 01 0C */	addi r0, r1, 0x10c
/* 80A12A54  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A12A58  80 A4 02 2C */	lwz r5, 0x22c(r4)
/* 80A12A5C  80 04 02 30 */	lwz r0, 0x230(r4)
/* 80A12A60  90 A1 01 00 */	stw r5, 0x100(r1)
/* 80A12A64  90 01 01 04 */	stw r0, 0x104(r1)
/* 80A12A68  80 04 02 34 */	lwz r0, 0x234(r4)
/* 80A12A6C  90 01 01 08 */	stw r0, 0x108(r1)
/* 80A12A70  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80A12A74  80 A4 02 38 */	lwz r5, 0x238(r4)
/* 80A12A78  80 04 02 3C */	lwz r0, 0x23c(r4)
/* 80A12A7C  90 A1 00 F4 */	stw r5, 0xf4(r1)
/* 80A12A80  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80A12A84  80 04 02 40 */	lwz r0, 0x240(r4)
/* 80A12A88  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80A12A8C  80 A4 02 44 */	lwz r5, 0x244(r4)
/* 80A12A90  80 04 02 48 */	lwz r0, 0x248(r4)
/* 80A12A94  90 A1 00 44 */	stw r5, 0x44(r1)
/* 80A12A98  90 01 00 48 */	stw r0, 0x48(r1)
/* 80A12A9C  38 01 01 00 */	addi r0, r1, 0x100
/* 80A12AA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A12AA4  38 01 00 F4 */	addi r0, r1, 0xf4
/* 80A12AA8  90 01 00 48 */	stw r0, 0x48(r1)
/* 80A12AAC  80 A4 02 4C */	lwz r5, 0x24c(r4)
/* 80A12AB0  80 04 02 50 */	lwz r0, 0x250(r4)
/* 80A12AB4  90 A1 00 E8 */	stw r5, 0xe8(r1)
/* 80A12AB8  90 01 00 EC */	stw r0, 0xec(r1)
/* 80A12ABC  80 04 02 54 */	lwz r0, 0x254(r4)
/* 80A12AC0  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 80A12AC4  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80A12AC8  80 04 02 58 */	lwz r0, 0x258(r4)
/* 80A12ACC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A12AD0  38 01 00 E8 */	addi r0, r1, 0xe8
/* 80A12AD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A12AD8  80 A4 02 5C */	lwz r5, 0x25c(r4)
/* 80A12ADC  80 04 02 60 */	lwz r0, 0x260(r4)
/* 80A12AE0  90 A1 00 DC */	stw r5, 0xdc(r1)
/* 80A12AE4  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80A12AE8  80 04 02 64 */	lwz r0, 0x264(r4)
/* 80A12AEC  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80A12AF0  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80A12AF4  80 A4 02 68 */	lwz r5, 0x268(r4)
/* 80A12AF8  80 04 02 6C */	lwz r0, 0x26c(r4)
/* 80A12AFC  90 A1 00 D0 */	stw r5, 0xd0(r1)
/* 80A12B00  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80A12B04  80 04 02 70 */	lwz r0, 0x270(r4)
/* 80A12B08  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80A12B0C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80A12B10  80 A4 02 74 */	lwz r5, 0x274(r4)
/* 80A12B14  80 04 02 78 */	lwz r0, 0x278(r4)
/* 80A12B18  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 80A12B1C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A12B20  38 01 00 DC */	addi r0, r1, 0xdc
/* 80A12B24  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A12B28  38 01 00 D0 */	addi r0, r1, 0xd0
/* 80A12B2C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A12B30  80 A4 02 7C */	lwz r5, 0x27c(r4)
/* 80A12B34  80 04 02 80 */	lwz r0, 0x280(r4)
/* 80A12B38  90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 80A12B3C  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80A12B40  80 04 02 84 */	lwz r0, 0x284(r4)
/* 80A12B44  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80A12B48  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80A12B4C  80 04 02 88 */	lwz r0, 0x288(r4)
/* 80A12B50  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A12B54  38 01 00 C4 */	addi r0, r1, 0xc4
/* 80A12B58  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A12B5C  80 A4 02 8C */	lwz r5, 0x28c(r4)
/* 80A12B60  80 04 02 90 */	lwz r0, 0x290(r4)
/* 80A12B64  90 A1 00 B8 */	stw r5, 0xb8(r1)
/* 80A12B68  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80A12B6C  80 04 02 94 */	lwz r0, 0x294(r4)
/* 80A12B70  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80A12B74  80 A4 02 98 */	lwz r5, 0x298(r4)
/* 80A12B78  80 04 02 9C */	lwz r0, 0x29c(r4)
/* 80A12B7C  90 A1 00 AC */	stw r5, 0xac(r1)
/* 80A12B80  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80A12B84  80 04 02 A0 */	lwz r0, 0x2a0(r4)
/* 80A12B88  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80A12B8C  80 A4 02 A4 */	lwz r5, 0x2a4(r4)
/* 80A12B90  80 04 02 A8 */	lwz r0, 0x2a8(r4)
/* 80A12B94  90 A1 00 34 */	stw r5, 0x34(r1)
/* 80A12B98  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A12B9C  38 01 00 B8 */	addi r0, r1, 0xb8
/* 80A12BA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A12BA4  38 01 00 AC */	addi r0, r1, 0xac
/* 80A12BA8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A12BAC  80 A4 02 AC */	lwz r5, 0x2ac(r4)
/* 80A12BB0  80 04 02 B0 */	lwz r0, 0x2b0(r4)
/* 80A12BB4  90 A1 00 A0 */	stw r5, 0xa0(r1)
/* 80A12BB8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80A12BBC  80 04 02 B4 */	lwz r0, 0x2b4(r4)
/* 80A12BC0  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80A12BC4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80A12BC8  80 A4 02 B8 */	lwz r5, 0x2b8(r4)
/* 80A12BCC  80 04 02 BC */	lwz r0, 0x2bc(r4)
/* 80A12BD0  90 A1 00 94 */	stw r5, 0x94(r1)
/* 80A12BD4  90 01 00 98 */	stw r0, 0x98(r1)
/* 80A12BD8  80 04 02 C0 */	lwz r0, 0x2c0(r4)
/* 80A12BDC  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80A12BE0  80 A4 02 C4 */	lwz r5, 0x2c4(r4)
/* 80A12BE4  80 04 02 C8 */	lwz r0, 0x2c8(r4)
/* 80A12BE8  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80A12BEC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A12BF0  38 01 00 A0 */	addi r0, r1, 0xa0
/* 80A12BF4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A12BF8  38 01 00 94 */	addi r0, r1, 0x94
/* 80A12BFC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A12C00  80 A4 02 CC */	lwz r5, 0x2cc(r4)
/* 80A12C04  80 04 02 D0 */	lwz r0, 0x2d0(r4)
/* 80A12C08  90 A1 00 88 */	stw r5, 0x88(r1)
/* 80A12C0C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80A12C10  80 04 02 D4 */	lwz r0, 0x2d4(r4)
/* 80A12C14  90 01 00 90 */	stw r0, 0x90(r1)
/* 80A12C18  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80A12C1C  80 04 02 D8 */	lwz r0, 0x2d8(r4)
/* 80A12C20  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A12C24  38 01 00 88 */	addi r0, r1, 0x88
/* 80A12C28  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A12C2C  80 A4 02 DC */	lwz r5, 0x2dc(r4)
/* 80A12C30  80 04 02 E0 */	lwz r0, 0x2e0(r4)
/* 80A12C34  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 80A12C38  90 01 00 80 */	stw r0, 0x80(r1)
/* 80A12C3C  80 04 02 E4 */	lwz r0, 0x2e4(r4)
/* 80A12C40  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A12C44  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80A12C48  80 04 02 E8 */	lwz r0, 0x2e8(r4)
/* 80A12C4C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A12C50  38 01 00 7C */	addi r0, r1, 0x7c
/* 80A12C54  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A12C58  80 A4 02 EC */	lwz r5, 0x2ec(r4)
/* 80A12C5C  80 04 02 F0 */	lwz r0, 0x2f0(r4)
/* 80A12C60  90 A1 00 70 */	stw r5, 0x70(r1)
/* 80A12C64  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A12C68  80 04 02 F4 */	lwz r0, 0x2f4(r4)
/* 80A12C6C  90 01 00 78 */	stw r0, 0x78(r1)
/* 80A12C70  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A12C74  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 80A12C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A12C7C  38 01 00 70 */	addi r0, r1, 0x70
/* 80A12C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A12C84  80 A4 02 FC */	lwz r5, 0x2fc(r4)
/* 80A12C88  80 04 03 00 */	lwz r0, 0x300(r4)
/* 80A12C8C  90 A1 00 64 */	stw r5, 0x64(r1)
/* 80A12C90  90 01 00 68 */	stw r0, 0x68(r1)
/* 80A12C94  80 04 03 04 */	lwz r0, 0x304(r4)
/* 80A12C98  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80A12C9C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A12CA0  80 04 03 08 */	lwz r0, 0x308(r4)
/* 80A12CA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A12CA8  38 01 00 64 */	addi r0, r1, 0x64
/* 80A12CAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A12CB0  80 A4 03 0C */	lwz r5, 0x30c(r4)
/* 80A12CB4  80 04 03 10 */	lwz r0, 0x310(r4)
/* 80A12CB8  90 A1 00 58 */	stw r5, 0x58(r1)
/* 80A12CBC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80A12CC0  80 04 03 14 */	lwz r0, 0x314(r4)
/* 80A12CC4  90 01 00 60 */	stw r0, 0x60(r1)
/* 80A12CC8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80A12CCC  80 04 03 18 */	lwz r0, 0x318(r4)
/* 80A12CD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A12CD4  38 01 00 58 */	addi r0, r1, 0x58
/* 80A12CD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A12CDC  80 A4 03 1C */	lwz r5, 0x31c(r4)
/* 80A12CE0  80 04 03 20 */	lwz r0, 0x320(r4)
/* 80A12CE4  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 80A12CE8  90 01 00 50 */	stw r0, 0x50(r1)
/* 80A12CEC  80 04 03 24 */	lwz r0, 0x324(r4)
/* 80A12CF0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A12CF4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A12CF8  80 04 03 28 */	lwz r0, 0x328(r4)
/* 80A12CFC  90 01 00 08 */	stw r0, 8(r1)
/* 80A12D00  38 01 00 4C */	addi r0, r1, 0x4c
/* 80A12D04  90 01 00 08 */	stw r0, 8(r1)
/* 80A12D08  38 C1 01 14 */	addi r6, r1, 0x114
/* 80A12D0C  38 A4 03 28 */	addi r5, r4, 0x328
/* 80A12D10  38 00 00 06 */	li r0, 6
/* 80A12D14  7C 09 03 A6 */	mtctr r0
lbl_80A12D18:
/* 80A12D18  80 85 00 04 */	lwz r4, 4(r5)
/* 80A12D1C  84 05 00 08 */	lwzu r0, 8(r5)
/* 80A12D20  90 86 00 04 */	stw r4, 4(r6)
/* 80A12D24  94 06 00 08 */	stwu r0, 8(r6)
/* 80A12D28  42 00 FF F0 */	bdnz lbl_80A12D18
/* 80A12D2C  80 05 00 04 */	lwz r0, 4(r5)
/* 80A12D30  90 06 00 04 */	stw r0, 4(r6)
/* 80A12D34  38 01 00 28 */	addi r0, r1, 0x28
/* 80A12D38  90 01 01 18 */	stw r0, 0x118(r1)
/* 80A12D3C  38 01 00 44 */	addi r0, r1, 0x44
/* 80A12D40  90 01 01 1C */	stw r0, 0x11c(r1)
/* 80A12D44  38 01 00 24 */	addi r0, r1, 0x24
/* 80A12D48  90 01 01 20 */	stw r0, 0x120(r1)
/* 80A12D4C  38 01 00 3C */	addi r0, r1, 0x3c
/* 80A12D50  90 01 01 24 */	stw r0, 0x124(r1)
/* 80A12D54  38 01 00 20 */	addi r0, r1, 0x20
/* 80A12D58  90 01 01 28 */	stw r0, 0x128(r1)
/* 80A12D5C  38 01 00 34 */	addi r0, r1, 0x34
/* 80A12D60  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80A12D64  38 01 00 2C */	addi r0, r1, 0x2c
/* 80A12D68  90 01 01 30 */	stw r0, 0x130(r1)
/* 80A12D6C  38 01 00 1C */	addi r0, r1, 0x1c
/* 80A12D70  90 01 01 34 */	stw r0, 0x134(r1)
/* 80A12D74  38 01 00 18 */	addi r0, r1, 0x18
/* 80A12D78  90 01 01 38 */	stw r0, 0x138(r1)
/* 80A12D7C  38 01 00 14 */	addi r0, r1, 0x14
/* 80A12D80  90 01 01 3C */	stw r0, 0x13c(r1)
/* 80A12D84  38 01 00 10 */	addi r0, r1, 0x10
/* 80A12D88  90 01 01 40 */	stw r0, 0x140(r1)
/* 80A12D8C  38 01 00 0C */	addi r0, r1, 0xc
/* 80A12D90  90 01 01 44 */	stw r0, 0x144(r1)
/* 80A12D94  38 01 00 08 */	addi r0, r1, 8
/* 80A12D98  90 01 01 48 */	stw r0, 0x148(r1)
/* 80A12D9C  A8 83 09 E0 */	lha r4, 0x9e0(r3)
/* 80A12DA0  7C 80 07 35 */	extsh. r0, r4
/* 80A12DA4  41 80 00 14 */	blt lbl_80A12DB8
/* 80A12DA8  2C 04 00 0D */	cmpwi r4, 0xd
/* 80A12DAC  40 80 00 0C */	bge lbl_80A12DB8
/* 80A12DB0  38 81 01 18 */	addi r4, r1, 0x118
/* 80A12DB4  4B 74 04 B1 */	bl playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80A12DB8:
/* 80A12DB8  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80A12DBC  7C 08 03 A6 */	mtlr r0
/* 80A12DC0  38 21 01 50 */	addi r1, r1, 0x150
/* 80A12DC4  4E 80 00 20 */	blr 
