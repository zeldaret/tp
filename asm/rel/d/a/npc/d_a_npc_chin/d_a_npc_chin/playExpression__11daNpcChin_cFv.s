lbl_8098DCD0:
/* 8098DCD0  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8098DCD4  7C 08 02 A6 */	mflr r0
/* 8098DCD8  90 01 01 44 */	stw r0, 0x144(r1)
/* 8098DCDC  3C 80 80 99 */	lis r4, sLoadResPat_Normal@ha /* 0x809918F8@ha */
/* 8098DCE0  38 84 18 F8 */	addi r4, r4, sLoadResPat_Normal@l /* 0x809918F8@l */
/* 8098DCE4  80 A4 00 EC */	lwz r5, 0xec(r4)
/* 8098DCE8  80 04 00 F0 */	lwz r0, 0xf0(r4)
/* 8098DCEC  90 A1 00 EC */	stw r5, 0xec(r1)
/* 8098DCF0  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 8098DCF4  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 8098DCF8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8098DCFC  38 A4 00 14 */	addi r5, r4, 0x14
/* 8098DD00  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 8098DD04  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 8098DD08  80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 8098DD0C  90 01 00 40 */	stw r0, 0x40(r1)
/* 8098DD10  38 01 00 EC */	addi r0, r1, 0xec
/* 8098DD14  90 01 00 40 */	stw r0, 0x40(r1)
/* 8098DD18  80 A4 00 FC */	lwz r5, 0xfc(r4)
/* 8098DD1C  80 04 01 00 */	lwz r0, 0x100(r4)
/* 8098DD20  90 A1 00 E0 */	stw r5, 0xe0(r1)
/* 8098DD24  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8098DD28  80 04 01 04 */	lwz r0, 0x104(r4)
/* 8098DD2C  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 8098DD30  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 8098DD34  80 04 01 08 */	lwz r0, 0x108(r4)
/* 8098DD38  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8098DD3C  38 01 00 E0 */	addi r0, r1, 0xe0
/* 8098DD40  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8098DD44  80 A4 01 0C */	lwz r5, 0x10c(r4)
/* 8098DD48  80 04 01 10 */	lwz r0, 0x110(r4)
/* 8098DD4C  90 A1 00 D4 */	stw r5, 0xd4(r1)
/* 8098DD50  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 8098DD54  80 04 01 14 */	lwz r0, 0x114(r4)
/* 8098DD58  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8098DD5C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 8098DD60  80 04 01 18 */	lwz r0, 0x118(r4)
/* 8098DD64  90 01 00 38 */	stw r0, 0x38(r1)
/* 8098DD68  38 01 00 D4 */	addi r0, r1, 0xd4
/* 8098DD6C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8098DD70  80 A4 01 1C */	lwz r5, 0x11c(r4)
/* 8098DD74  80 04 01 20 */	lwz r0, 0x120(r4)
/* 8098DD78  90 A1 00 C8 */	stw r5, 0xc8(r1)
/* 8098DD7C  90 01 00 CC */	stw r0, 0xcc(r1)
/* 8098DD80  80 04 01 24 */	lwz r0, 0x124(r4)
/* 8098DD84  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 8098DD88  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8098DD8C  80 04 01 28 */	lwz r0, 0x128(r4)
/* 8098DD90  90 01 00 34 */	stw r0, 0x34(r1)
/* 8098DD94  38 01 00 C8 */	addi r0, r1, 0xc8
/* 8098DD98  90 01 00 34 */	stw r0, 0x34(r1)
/* 8098DD9C  80 A4 01 2C */	lwz r5, 0x12c(r4)
/* 8098DDA0  80 04 01 30 */	lwz r0, 0x130(r4)
/* 8098DDA4  90 A1 00 BC */	stw r5, 0xbc(r1)
/* 8098DDA8  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8098DDAC  80 04 01 34 */	lwz r0, 0x134(r4)
/* 8098DDB0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8098DDB4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8098DDB8  80 04 01 38 */	lwz r0, 0x138(r4)
/* 8098DDBC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8098DDC0  38 01 00 BC */	addi r0, r1, 0xbc
/* 8098DDC4  90 01 00 30 */	stw r0, 0x30(r1)
/* 8098DDC8  80 A4 01 3C */	lwz r5, 0x13c(r4)
/* 8098DDCC  80 04 01 40 */	lwz r0, 0x140(r4)
/* 8098DDD0  90 A1 00 B0 */	stw r5, 0xb0(r1)
/* 8098DDD4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8098DDD8  80 04 01 44 */	lwz r0, 0x144(r4)
/* 8098DDDC  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8098DDE0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8098DDE4  80 04 01 48 */	lwz r0, 0x148(r4)
/* 8098DDE8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8098DDEC  38 01 00 B0 */	addi r0, r1, 0xb0
/* 8098DDF0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8098DDF4  80 A4 01 4C */	lwz r5, 0x14c(r4)
/* 8098DDF8  80 04 01 50 */	lwz r0, 0x150(r4)
/* 8098DDFC  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 8098DE00  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8098DE04  80 04 01 54 */	lwz r0, 0x154(r4)
/* 8098DE08  90 01 00 AC */	stw r0, 0xac(r1)
/* 8098DE0C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8098DE10  80 04 01 58 */	lwz r0, 0x158(r4)
/* 8098DE14  90 01 00 28 */	stw r0, 0x28(r1)
/* 8098DE18  38 01 00 A4 */	addi r0, r1, 0xa4
/* 8098DE1C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8098DE20  80 A4 01 5C */	lwz r5, 0x15c(r4)
/* 8098DE24  80 04 01 60 */	lwz r0, 0x160(r4)
/* 8098DE28  90 A1 00 98 */	stw r5, 0x98(r1)
/* 8098DE2C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8098DE30  80 04 01 64 */	lwz r0, 0x164(r4)
/* 8098DE34  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8098DE38  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8098DE3C  80 04 01 68 */	lwz r0, 0x168(r4)
/* 8098DE40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8098DE44  38 01 00 98 */	addi r0, r1, 0x98
/* 8098DE48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8098DE4C  80 A4 01 6C */	lwz r5, 0x16c(r4)
/* 8098DE50  80 04 01 70 */	lwz r0, 0x170(r4)
/* 8098DE54  90 A1 00 8C */	stw r5, 0x8c(r1)
/* 8098DE58  90 01 00 90 */	stw r0, 0x90(r1)
/* 8098DE5C  80 04 01 74 */	lwz r0, 0x174(r4)
/* 8098DE60  90 01 00 94 */	stw r0, 0x94(r1)
/* 8098DE64  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8098DE68  80 04 01 78 */	lwz r0, 0x178(r4)
/* 8098DE6C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8098DE70  38 01 00 8C */	addi r0, r1, 0x8c
/* 8098DE74  90 01 00 20 */	stw r0, 0x20(r1)
/* 8098DE78  80 A4 01 7C */	lwz r5, 0x17c(r4)
/* 8098DE7C  80 04 01 80 */	lwz r0, 0x180(r4)
/* 8098DE80  90 A1 00 80 */	stw r5, 0x80(r1)
/* 8098DE84  90 01 00 84 */	stw r0, 0x84(r1)
/* 8098DE88  80 04 01 84 */	lwz r0, 0x184(r4)
/* 8098DE8C  90 01 00 88 */	stw r0, 0x88(r1)
/* 8098DE90  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8098DE94  80 04 01 88 */	lwz r0, 0x188(r4)
/* 8098DE98  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8098DE9C  38 01 00 80 */	addi r0, r1, 0x80
/* 8098DEA0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8098DEA4  80 A4 01 8C */	lwz r5, 0x18c(r4)
/* 8098DEA8  80 04 01 90 */	lwz r0, 0x190(r4)
/* 8098DEAC  90 A1 00 74 */	stw r5, 0x74(r1)
/* 8098DEB0  90 01 00 78 */	stw r0, 0x78(r1)
/* 8098DEB4  80 04 01 94 */	lwz r0, 0x194(r4)
/* 8098DEB8  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8098DEBC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8098DEC0  80 04 01 98 */	lwz r0, 0x198(r4)
/* 8098DEC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8098DEC8  38 01 00 74 */	addi r0, r1, 0x74
/* 8098DECC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8098DED0  80 A4 01 9C */	lwz r5, 0x19c(r4)
/* 8098DED4  80 04 01 A0 */	lwz r0, 0x1a0(r4)
/* 8098DED8  90 A1 00 68 */	stw r5, 0x68(r1)
/* 8098DEDC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8098DEE0  80 04 01 A4 */	lwz r0, 0x1a4(r4)
/* 8098DEE4  90 01 00 70 */	stw r0, 0x70(r1)
/* 8098DEE8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8098DEEC  80 04 01 A8 */	lwz r0, 0x1a8(r4)
/* 8098DEF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098DEF4  38 01 00 68 */	addi r0, r1, 0x68
/* 8098DEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098DEFC  80 A4 01 AC */	lwz r5, 0x1ac(r4)
/* 8098DF00  80 04 01 B0 */	lwz r0, 0x1b0(r4)
/* 8098DF04  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 8098DF08  90 01 00 60 */	stw r0, 0x60(r1)
/* 8098DF0C  80 04 01 B4 */	lwz r0, 0x1b4(r4)
/* 8098DF10  90 01 00 64 */	stw r0, 0x64(r1)
/* 8098DF14  80 04 01 B8 */	lwz r0, 0x1b8(r4)
/* 8098DF18  90 01 00 10 */	stw r0, 0x10(r1)
/* 8098DF1C  38 01 00 5C */	addi r0, r1, 0x5c
/* 8098DF20  90 01 00 10 */	stw r0, 0x10(r1)
/* 8098DF24  80 A4 01 BC */	lwz r5, 0x1bc(r4)
/* 8098DF28  80 04 01 C0 */	lwz r0, 0x1c0(r4)
/* 8098DF2C  90 A1 00 50 */	stw r5, 0x50(r1)
/* 8098DF30  90 01 00 54 */	stw r0, 0x54(r1)
/* 8098DF34  80 04 01 C4 */	lwz r0, 0x1c4(r4)
/* 8098DF38  90 01 00 58 */	stw r0, 0x58(r1)
/* 8098DF3C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8098DF40  80 04 01 C8 */	lwz r0, 0x1c8(r4)
/* 8098DF44  90 01 00 0C */	stw r0, 0xc(r1)
/* 8098DF48  38 01 00 50 */	addi r0, r1, 0x50
/* 8098DF4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8098DF50  80 A4 01 CC */	lwz r5, 0x1cc(r4)
/* 8098DF54  80 04 01 D0 */	lwz r0, 0x1d0(r4)
/* 8098DF58  90 A1 00 44 */	stw r5, 0x44(r1)
/* 8098DF5C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8098DF60  80 04 01 D4 */	lwz r0, 0x1d4(r4)
/* 8098DF64  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8098DF68  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8098DF6C  80 04 01 D8 */	lwz r0, 0x1d8(r4)
/* 8098DF70  90 01 00 08 */	stw r0, 8(r1)
/* 8098DF74  38 01 00 44 */	addi r0, r1, 0x44
/* 8098DF78  90 01 00 08 */	stw r0, 8(r1)
/* 8098DF7C  38 C1 00 F4 */	addi r6, r1, 0xf4
/* 8098DF80  38 A4 01 D8 */	addi r5, r4, 0x1d8
/* 8098DF84  38 00 00 07 */	li r0, 7
/* 8098DF88  7C 09 03 A6 */	mtctr r0
lbl_8098DF8C:
/* 8098DF8C  80 85 00 04 */	lwz r4, 4(r5)
/* 8098DF90  84 05 00 08 */	lwzu r0, 8(r5)
/* 8098DF94  90 86 00 04 */	stw r4, 4(r6)
/* 8098DF98  94 06 00 08 */	stwu r0, 8(r6)
/* 8098DF9C  42 00 FF F0 */	bdnz lbl_8098DF8C
/* 8098DFA0  80 05 00 04 */	lwz r0, 4(r5)
/* 8098DFA4  90 06 00 04 */	stw r0, 4(r6)
/* 8098DFA8  38 01 00 40 */	addi r0, r1, 0x40
/* 8098DFAC  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 8098DFB0  38 01 00 3C */	addi r0, r1, 0x3c
/* 8098DFB4  90 01 00 FC */	stw r0, 0xfc(r1)
/* 8098DFB8  38 01 00 38 */	addi r0, r1, 0x38
/* 8098DFBC  90 01 01 00 */	stw r0, 0x100(r1)
/* 8098DFC0  38 01 00 34 */	addi r0, r1, 0x34
/* 8098DFC4  90 01 01 04 */	stw r0, 0x104(r1)
/* 8098DFC8  38 01 00 30 */	addi r0, r1, 0x30
/* 8098DFCC  90 01 01 08 */	stw r0, 0x108(r1)
/* 8098DFD0  38 01 00 2C */	addi r0, r1, 0x2c
/* 8098DFD4  90 01 01 0C */	stw r0, 0x10c(r1)
/* 8098DFD8  38 01 00 28 */	addi r0, r1, 0x28
/* 8098DFDC  90 01 01 10 */	stw r0, 0x110(r1)
/* 8098DFE0  38 01 00 24 */	addi r0, r1, 0x24
/* 8098DFE4  90 01 01 14 */	stw r0, 0x114(r1)
/* 8098DFE8  38 01 00 20 */	addi r0, r1, 0x20
/* 8098DFEC  90 01 01 18 */	stw r0, 0x118(r1)
/* 8098DFF0  38 01 00 1C */	addi r0, r1, 0x1c
/* 8098DFF4  90 01 01 1C */	stw r0, 0x11c(r1)
/* 8098DFF8  38 01 00 18 */	addi r0, r1, 0x18
/* 8098DFFC  90 01 01 20 */	stw r0, 0x120(r1)
/* 8098E000  38 01 00 14 */	addi r0, r1, 0x14
/* 8098E004  90 01 01 24 */	stw r0, 0x124(r1)
/* 8098E008  38 01 00 10 */	addi r0, r1, 0x10
/* 8098E00C  90 01 01 28 */	stw r0, 0x128(r1)
/* 8098E010  38 01 00 0C */	addi r0, r1, 0xc
/* 8098E014  90 01 01 2C */	stw r0, 0x12c(r1)
/* 8098E018  38 01 00 08 */	addi r0, r1, 8
/* 8098E01C  90 01 01 30 */	stw r0, 0x130(r1)
/* 8098E020  A8 83 09 DE */	lha r4, 0x9de(r3)
/* 8098E024  7C 80 07 35 */	extsh. r0, r4
/* 8098E028  41 80 00 14 */	blt lbl_8098E03C
/* 8098E02C  2C 04 00 0F */	cmpwi r4, 0xf
/* 8098E030  40 80 00 0C */	bge lbl_8098E03C
/* 8098E034  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8098E038  4B 7C 51 19 */	bl playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_8098E03C:
/* 8098E03C  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8098E040  7C 08 03 A6 */	mtlr r0
/* 8098E044  38 21 01 40 */	addi r1, r1, 0x140
/* 8098E048  4E 80 00 20 */	blr 
