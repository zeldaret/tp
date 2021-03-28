lbl_8062D9D4:
/* 8062D9D4  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 8062D9D8  7C 08 02 A6 */	mflr r0
/* 8062D9DC  90 01 01 54 */	stw r0, 0x154(r1)
/* 8062D9E0  93 E1 01 4C */	stw r31, 0x14c(r1)
/* 8062D9E4  93 C1 01 48 */	stw r30, 0x148(r1)
/* 8062D9E8  3C 60 80 63 */	lis r3, lit_1109@ha
/* 8062D9EC  3B E3 EF E0 */	addi r31, r3, lit_1109@l
/* 8062D9F0  3C 60 80 63 */	lis r3, lit_3920@ha
/* 8062D9F4  3B C3 E6 34 */	addi r30, r3, lit_3920@l
/* 8062D9F8  38 7F 00 4C */	addi r3, r31, 0x4c
/* 8062D9FC  4B FF 11 F1 */	bl __ct__12daB_TN_HIO_cFv
/* 8062DA00  3C 80 80 63 */	lis r4, __dt__12daB_TN_HIO_cFv@ha
/* 8062DA04  38 84 D9 8C */	addi r4, r4, __dt__12daB_TN_HIO_cFv@l
/* 8062DA08  38 BF 00 40 */	addi r5, r31, 0x40
/* 8062DA0C  4B FF 11 6D */	bl __register_global_object
/* 8062DA10  C0 3E 02 80 */	lfs f1, 0x280(r30)
/* 8062DA14  D0 21 01 3C */	stfs f1, 0x13c(r1)
/* 8062DA18  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062DA1C  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 8062DA20  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 8062DA24  D0 3F 01 3C */	stfs f1, 0x13c(r31)
/* 8062DA28  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DA2C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8062DA30  D0 03 00 08 */	stfs f0, 8(r3)
/* 8062DA34  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DA38  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DA3C  38 BF 00 7C */	addi r5, r31, 0x7c
/* 8062DA40  4B FF 11 39 */	bl __register_global_object
/* 8062DA44  C0 3E 02 80 */	lfs f1, 0x280(r30)
/* 8062DA48  D0 21 01 30 */	stfs f1, 0x130(r1)
/* 8062DA4C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062DA50  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 8062DA54  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 8062DA58  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DA5C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8062DA60  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8062DA64  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8062DA68  38 63 00 0C */	addi r3, r3, 0xc
/* 8062DA6C  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DA70  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DA74  38 BF 00 88 */	addi r5, r31, 0x88
/* 8062DA78  4B FF 11 01 */	bl __register_global_object
/* 8062DA7C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062DA80  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 8062DA84  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 8062DA88  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 8062DA8C  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DA90  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8062DA94  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8062DA98  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8062DA9C  38 63 00 18 */	addi r3, r3, 0x18
/* 8062DAA0  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DAA4  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DAA8  38 BF 00 94 */	addi r5, r31, 0x94
/* 8062DAAC  4B FF 10 CD */	bl __register_global_object
/* 8062DAB0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062DAB4  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 8062DAB8  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 8062DABC  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 8062DAC0  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DAC4  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8062DAC8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8062DACC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8062DAD0  38 63 00 24 */	addi r3, r3, 0x24
/* 8062DAD4  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DAD8  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DADC  38 BF 00 A0 */	addi r5, r31, 0xa0
/* 8062DAE0  4B FF 10 99 */	bl __register_global_object
/* 8062DAE4  C0 5E 02 80 */	lfs f2, 0x280(r30)
/* 8062DAE8  D0 41 01 0C */	stfs f2, 0x10c(r1)
/* 8062DAEC  C0 3E 01 4C */	lfs f1, 0x14c(r30)
/* 8062DAF0  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 8062DAF4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062DAF8  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 8062DAFC  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DB00  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 8062DB04  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 8062DB08  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8062DB0C  38 63 00 30 */	addi r3, r3, 0x30
/* 8062DB10  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DB14  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DB18  38 BF 00 AC */	addi r5, r31, 0xac
/* 8062DB1C  4B FF 10 5D */	bl __register_global_object
/* 8062DB20  C0 5E 02 A0 */	lfs f2, 0x2a0(r30)
/* 8062DB24  D0 41 01 00 */	stfs f2, 0x100(r1)
/* 8062DB28  C0 3E 01 4C */	lfs f1, 0x14c(r30)
/* 8062DB2C  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 8062DB30  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062DB34  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 8062DB38  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DB3C  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 8062DB40  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 8062DB44  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 8062DB48  38 63 00 3C */	addi r3, r3, 0x3c
/* 8062DB4C  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DB50  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DB54  38 BF 00 B8 */	addi r5, r31, 0xb8
/* 8062DB58  4B FF 10 21 */	bl __register_global_object
/* 8062DB5C  C0 3E 02 A4 */	lfs f1, 0x2a4(r30)
/* 8062DB60  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 8062DB64  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062DB68  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 8062DB6C  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8062DB70  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DB74  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 8062DB78  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 8062DB7C  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 8062DB80  38 63 00 48 */	addi r3, r3, 0x48
/* 8062DB84  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DB88  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DB8C  38 BF 00 C4 */	addi r5, r31, 0xc4
/* 8062DB90  4B FF 0F E9 */	bl __register_global_object
/* 8062DB94  C0 3E 02 A4 */	lfs f1, 0x2a4(r30)
/* 8062DB98  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 8062DB9C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062DBA0  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 8062DBA4  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 8062DBA8  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DBAC  D0 23 00 54 */	stfs f1, 0x54(r3)
/* 8062DBB0  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 8062DBB4  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 8062DBB8  38 63 00 54 */	addi r3, r3, 0x54
/* 8062DBBC  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DBC0  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DBC4  38 BF 00 D0 */	addi r5, r31, 0xd0
/* 8062DBC8  4B FF 0F B1 */	bl __register_global_object
/* 8062DBCC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8062DBD0  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 8062DBD4  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8062DBD8  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8062DBDC  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 8062DBE0  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DBE4  D0 23 00 60 */	stfs f1, 0x60(r3)
/* 8062DBE8  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 8062DBEC  D0 23 00 68 */	stfs f1, 0x68(r3)
/* 8062DBF0  38 63 00 60 */	addi r3, r3, 0x60
/* 8062DBF4  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DBF8  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DBFC  38 BF 00 DC */	addi r5, r31, 0xdc
/* 8062DC00  4B FF 0F 79 */	bl __register_global_object
/* 8062DC04  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8062DC08  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 8062DC0C  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 8062DC10  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8062DC14  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 8062DC18  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DC1C  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 8062DC20  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 8062DC24  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 8062DC28  38 63 00 6C */	addi r3, r3, 0x6c
/* 8062DC2C  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DC30  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DC34  38 BF 00 E8 */	addi r5, r31, 0xe8
/* 8062DC38  4B FF 0F 41 */	bl __register_global_object
/* 8062DC3C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8062DC40  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 8062DC44  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8062DC48  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8062DC4C  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 8062DC50  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DC54  D0 23 00 78 */	stfs f1, 0x78(r3)
/* 8062DC58  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 8062DC5C  D0 23 00 80 */	stfs f1, 0x80(r3)
/* 8062DC60  38 63 00 78 */	addi r3, r3, 0x78
/* 8062DC64  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DC68  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DC6C  38 BF 00 F4 */	addi r5, r31, 0xf4
/* 8062DC70  4B FF 0F 09 */	bl __register_global_object
/* 8062DC74  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8062DC78  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 8062DC7C  C0 1E 02 A8 */	lfs f0, 0x2a8(r30)
/* 8062DC80  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8062DC84  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 8062DC88  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DC8C  D0 23 00 84 */	stfs f1, 0x84(r3)
/* 8062DC90  D0 03 00 88 */	stfs f0, 0x88(r3)
/* 8062DC94  D0 23 00 8C */	stfs f1, 0x8c(r3)
/* 8062DC98  38 63 00 84 */	addi r3, r3, 0x84
/* 8062DC9C  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DCA0  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DCA4  38 BF 01 00 */	addi r5, r31, 0x100
/* 8062DCA8  4B FF 0E D1 */	bl __register_global_object
/* 8062DCAC  C0 3E 02 80 */	lfs f1, 0x280(r30)
/* 8062DCB0  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 8062DCB4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062DCB8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8062DCBC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8062DCC0  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DCC4  D0 23 00 90 */	stfs f1, 0x90(r3)
/* 8062DCC8  D0 03 00 94 */	stfs f0, 0x94(r3)
/* 8062DCCC  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 8062DCD0  38 63 00 90 */	addi r3, r3, 0x90
/* 8062DCD4  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DCD8  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DCDC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8062DCE0  4B FF 0E 99 */	bl __register_global_object
/* 8062DCE4  C0 5E 02 AC */	lfs f2, 0x2ac(r30)
/* 8062DCE8  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8062DCEC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8062DCF0  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8062DCF4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8062DCF8  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8062DCFC  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DD00  D0 43 00 9C */	stfs f2, 0x9c(r3)
/* 8062DD04  D0 23 00 A0 */	stfs f1, 0xa0(r3)
/* 8062DD08  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 8062DD0C  38 63 00 9C */	addi r3, r3, 0x9c
/* 8062DD10  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DD14  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DD18  38 BF 01 18 */	addi r5, r31, 0x118
/* 8062DD1C  4B FF 0E 5D */	bl __register_global_object
/* 8062DD20  C0 5E 02 B0 */	lfs f2, 0x2b0(r30)
/* 8062DD24  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8062DD28  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 8062DD2C  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8062DD30  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8062DD34  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8062DD38  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DD3C  D0 43 00 A8 */	stfs f2, 0xa8(r3)
/* 8062DD40  D0 23 00 AC */	stfs f1, 0xac(r3)
/* 8062DD44  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 8062DD48  38 63 00 A8 */	addi r3, r3, 0xa8
/* 8062DD4C  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DD50  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DD54  38 BF 01 24 */	addi r5, r31, 0x124
/* 8062DD58  4B FF 0E 21 */	bl __register_global_object
/* 8062DD5C  C0 5E 02 A0 */	lfs f2, 0x2a0(r30)
/* 8062DD60  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8062DD64  C0 3E 01 58 */	lfs f1, 0x158(r30)
/* 8062DD68  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8062DD6C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062DD70  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8062DD74  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8062DD78  D0 43 00 B4 */	stfs f2, 0xb4(r3)
/* 8062DD7C  D0 23 00 B8 */	stfs f1, 0xb8(r3)
/* 8062DD80  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 8062DD84  38 63 00 B4 */	addi r3, r3, 0xb4
/* 8062DD88  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha
/* 8062DD8C  38 84 E5 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8062DD90  38 BF 01 30 */	addi r5, r31, 0x130
/* 8062DD94  4B FF 0D E5 */	bl __register_global_object
/* 8062DD98  38 61 00 80 */	addi r3, r1, 0x80
/* 8062DD9C  38 80 00 00 */	li r4, 0
/* 8062DDA0  38 A0 00 00 */	li r5, 0
/* 8062DDA4  38 C0 00 00 */	li r6, 0
/* 8062DDA8  4B C3 96 4C */	b __ct__5csXyzFsss
/* 8062DDAC  80 01 00 80 */	lwz r0, 0x80(r1)
/* 8062DDB0  90 1F 02 BC */	stw r0, 0x2bc(r31)
/* 8062DDB4  A0 01 00 84 */	lhz r0, 0x84(r1)
/* 8062DDB8  B0 1F 02 C0 */	sth r0, 0x2c0(r31)
/* 8062DDBC  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062DDC0  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062DDC4  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062DDC8  38 BF 01 FC */	addi r5, r31, 0x1fc
/* 8062DDCC  4B FF 0D AD */	bl __register_global_object
/* 8062DDD0  38 61 00 78 */	addi r3, r1, 0x78
/* 8062DDD4  38 80 00 00 */	li r4, 0
/* 8062DDD8  38 A0 00 00 */	li r5, 0
/* 8062DDDC  38 C0 00 00 */	li r6, 0
/* 8062DDE0  4B C3 96 14 */	b __ct__5csXyzFsss
/* 8062DDE4  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062DDE8  80 01 00 78 */	lwz r0, 0x78(r1)
/* 8062DDEC  90 03 00 06 */	stw r0, 6(r3)
/* 8062DDF0  A0 01 00 7C */	lhz r0, 0x7c(r1)
/* 8062DDF4  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8062DDF8  38 63 00 06 */	addi r3, r3, 6
/* 8062DDFC  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062DE00  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062DE04  38 BF 02 08 */	addi r5, r31, 0x208
/* 8062DE08  4B FF 0D 71 */	bl __register_global_object
/* 8062DE0C  38 61 00 70 */	addi r3, r1, 0x70
/* 8062DE10  38 80 00 00 */	li r4, 0
/* 8062DE14  38 A0 00 00 */	li r5, 0
/* 8062DE18  38 C0 00 00 */	li r6, 0
/* 8062DE1C  4B C3 95 D8 */	b __ct__5csXyzFsss
/* 8062DE20  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062DE24  80 01 00 70 */	lwz r0, 0x70(r1)
/* 8062DE28  90 03 00 0C */	stw r0, 0xc(r3)
/* 8062DE2C  A0 01 00 74 */	lhz r0, 0x74(r1)
/* 8062DE30  B0 03 00 10 */	sth r0, 0x10(r3)
/* 8062DE34  38 63 00 0C */	addi r3, r3, 0xc
/* 8062DE38  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062DE3C  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062DE40  38 BF 02 14 */	addi r5, r31, 0x214
/* 8062DE44  4B FF 0D 35 */	bl __register_global_object
/* 8062DE48  38 61 00 68 */	addi r3, r1, 0x68
/* 8062DE4C  38 80 00 00 */	li r4, 0
/* 8062DE50  38 A0 00 00 */	li r5, 0
/* 8062DE54  38 C0 80 00 */	li r6, -32768
/* 8062DE58  4B C3 95 9C */	b __ct__5csXyzFsss
/* 8062DE5C  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062DE60  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8062DE64  90 03 00 12 */	stw r0, 0x12(r3)
/* 8062DE68  A0 01 00 6C */	lhz r0, 0x6c(r1)
/* 8062DE6C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8062DE70  38 63 00 12 */	addi r3, r3, 0x12
/* 8062DE74  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062DE78  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062DE7C  38 BF 02 20 */	addi r5, r31, 0x220
/* 8062DE80  4B FF 0C F9 */	bl __register_global_object
/* 8062DE84  38 61 00 60 */	addi r3, r1, 0x60
/* 8062DE88  38 80 40 00 */	li r4, 0x4000
/* 8062DE8C  38 A0 00 00 */	li r5, 0
/* 8062DE90  38 C0 F6 C2 */	li r6, -2366
/* 8062DE94  4B C3 95 60 */	b __ct__5csXyzFsss
/* 8062DE98  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062DE9C  80 01 00 60 */	lwz r0, 0x60(r1)
/* 8062DEA0  90 03 00 18 */	stw r0, 0x18(r3)
/* 8062DEA4  A0 01 00 64 */	lhz r0, 0x64(r1)
/* 8062DEA8  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 8062DEAC  38 63 00 18 */	addi r3, r3, 0x18
/* 8062DEB0  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062DEB4  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062DEB8  38 BF 02 2C */	addi r5, r31, 0x22c
/* 8062DEBC  4B FF 0C BD */	bl __register_global_object
/* 8062DEC0  38 61 00 58 */	addi r3, r1, 0x58
/* 8062DEC4  38 80 00 00 */	li r4, 0
/* 8062DEC8  38 A0 00 00 */	li r5, 0
/* 8062DECC  38 C0 5C 00 */	li r6, 0x5c00
/* 8062DED0  4B C3 95 24 */	b __ct__5csXyzFsss
/* 8062DED4  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062DED8  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8062DEDC  90 03 00 1E */	stw r0, 0x1e(r3)
/* 8062DEE0  A0 01 00 5C */	lhz r0, 0x5c(r1)
/* 8062DEE4  B0 03 00 22 */	sth r0, 0x22(r3)
/* 8062DEE8  38 63 00 1E */	addi r3, r3, 0x1e
/* 8062DEEC  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062DEF0  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062DEF4  38 BF 02 38 */	addi r5, r31, 0x238
/* 8062DEF8  4B FF 0C 81 */	bl __register_global_object
/* 8062DEFC  38 61 00 50 */	addi r3, r1, 0x50
/* 8062DF00  38 80 00 00 */	li r4, 0
/* 8062DF04  38 A0 00 00 */	li r5, 0
/* 8062DF08  38 C0 04 00 */	li r6, 0x400
/* 8062DF0C  4B C3 94 E8 */	b __ct__5csXyzFsss
/* 8062DF10  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062DF14  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8062DF18  90 03 00 24 */	stw r0, 0x24(r3)
/* 8062DF1C  A0 01 00 54 */	lhz r0, 0x54(r1)
/* 8062DF20  B0 03 00 28 */	sth r0, 0x28(r3)
/* 8062DF24  38 63 00 24 */	addi r3, r3, 0x24
/* 8062DF28  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062DF2C  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062DF30  38 BF 02 44 */	addi r5, r31, 0x244
/* 8062DF34  4B FF 0C 45 */	bl __register_global_object
/* 8062DF38  38 61 00 48 */	addi r3, r1, 0x48
/* 8062DF3C  38 80 80 00 */	li r4, -32768
/* 8062DF40  38 A0 00 00 */	li r5, 0
/* 8062DF44  38 C0 FC 00 */	li r6, -1024
/* 8062DF48  4B C3 94 AC */	b __ct__5csXyzFsss
/* 8062DF4C  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062DF50  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8062DF54  90 03 00 2A */	stw r0, 0x2a(r3)
/* 8062DF58  A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 8062DF5C  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 8062DF60  38 63 00 2A */	addi r3, r3, 0x2a
/* 8062DF64  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062DF68  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062DF6C  38 BF 02 50 */	addi r5, r31, 0x250
/* 8062DF70  4B FF 0C 09 */	bl __register_global_object
/* 8062DF74  38 61 00 40 */	addi r3, r1, 0x40
/* 8062DF78  38 80 00 00 */	li r4, 0
/* 8062DF7C  38 A0 00 00 */	li r5, 0
/* 8062DF80  38 C0 3C 00 */	li r6, 0x3c00
/* 8062DF84  4B C3 94 70 */	b __ct__5csXyzFsss
/* 8062DF88  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062DF8C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8062DF90  90 03 00 30 */	stw r0, 0x30(r3)
/* 8062DF94  A0 01 00 44 */	lhz r0, 0x44(r1)
/* 8062DF98  B0 03 00 34 */	sth r0, 0x34(r3)
/* 8062DF9C  38 63 00 30 */	addi r3, r3, 0x30
/* 8062DFA0  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062DFA4  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062DFA8  38 BF 02 5C */	addi r5, r31, 0x25c
/* 8062DFAC  4B FF 0B CD */	bl __register_global_object
/* 8062DFB0  38 61 00 38 */	addi r3, r1, 0x38
/* 8062DFB4  38 80 00 00 */	li r4, 0
/* 8062DFB8  38 A0 00 00 */	li r5, 0
/* 8062DFBC  38 C0 40 00 */	li r6, 0x4000
/* 8062DFC0  4B C3 94 34 */	b __ct__5csXyzFsss
/* 8062DFC4  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062DFC8  80 01 00 38 */	lwz r0, 0x38(r1)
/* 8062DFCC  90 03 00 36 */	stw r0, 0x36(r3)
/* 8062DFD0  A0 01 00 3C */	lhz r0, 0x3c(r1)
/* 8062DFD4  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 8062DFD8  38 63 00 36 */	addi r3, r3, 0x36
/* 8062DFDC  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062DFE0  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062DFE4  38 BF 02 68 */	addi r5, r31, 0x268
/* 8062DFE8  4B FF 0B 91 */	bl __register_global_object
/* 8062DFEC  38 61 00 30 */	addi r3, r1, 0x30
/* 8062DFF0  38 80 00 00 */	li r4, 0
/* 8062DFF4  38 A0 00 00 */	li r5, 0
/* 8062DFF8  38 C0 36 B0 */	li r6, 0x36b0
/* 8062DFFC  4B C3 93 F8 */	b __ct__5csXyzFsss
/* 8062E000  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062E004  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8062E008  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8062E00C  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 8062E010  B0 03 00 40 */	sth r0, 0x40(r3)
/* 8062E014  38 63 00 3C */	addi r3, r3, 0x3c
/* 8062E018  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062E01C  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062E020  38 BF 02 74 */	addi r5, r31, 0x274
/* 8062E024  4B FF 0B 55 */	bl __register_global_object
/* 8062E028  38 61 00 28 */	addi r3, r1, 0x28
/* 8062E02C  38 80 00 00 */	li r4, 0
/* 8062E030  38 A0 00 00 */	li r5, 0
/* 8062E034  38 C0 48 00 */	li r6, 0x4800
/* 8062E038  4B C3 93 BC */	b __ct__5csXyzFsss
/* 8062E03C  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062E040  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8062E044  90 03 00 42 */	stw r0, 0x42(r3)
/* 8062E048  A0 01 00 2C */	lhz r0, 0x2c(r1)
/* 8062E04C  B0 03 00 46 */	sth r0, 0x46(r3)
/* 8062E050  38 63 00 42 */	addi r3, r3, 0x42
/* 8062E054  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062E058  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062E05C  38 BF 02 80 */	addi r5, r31, 0x280
/* 8062E060  4B FF 0B 19 */	bl __register_global_object
/* 8062E064  38 61 00 20 */	addi r3, r1, 0x20
/* 8062E068  38 80 FD 34 */	li r4, -716
/* 8062E06C  38 A0 00 00 */	li r5, 0
/* 8062E070  38 C0 10 00 */	li r6, 0x1000
/* 8062E074  4B C3 93 80 */	b __ct__5csXyzFsss
/* 8062E078  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062E07C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8062E080  90 03 00 48 */	stw r0, 0x48(r3)
/* 8062E084  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 8062E088  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 8062E08C  38 63 00 48 */	addi r3, r3, 0x48
/* 8062E090  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062E094  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062E098  38 BF 02 8C */	addi r5, r31, 0x28c
/* 8062E09C  4B FF 0A DD */	bl __register_global_object
/* 8062E0A0  38 61 00 18 */	addi r3, r1, 0x18
/* 8062E0A4  38 80 F8 00 */	li r4, -2048
/* 8062E0A8  38 A0 00 00 */	li r5, 0
/* 8062E0AC  38 C0 F6 80 */	li r6, -2432
/* 8062E0B0  4B C3 93 44 */	b __ct__5csXyzFsss
/* 8062E0B4  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062E0B8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8062E0BC  90 03 00 4E */	stw r0, 0x4e(r3)
/* 8062E0C0  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 8062E0C4  B0 03 00 52 */	sth r0, 0x52(r3)
/* 8062E0C8  38 63 00 4E */	addi r3, r3, 0x4e
/* 8062E0CC  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062E0D0  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062E0D4  38 BF 02 98 */	addi r5, r31, 0x298
/* 8062E0D8  4B FF 0A A1 */	bl __register_global_object
/* 8062E0DC  38 61 00 10 */	addi r3, r1, 0x10
/* 8062E0E0  38 80 00 00 */	li r4, 0
/* 8062E0E4  38 A0 00 00 */	li r5, 0
/* 8062E0E8  38 C0 3C 8C */	li r6, 0x3c8c
/* 8062E0EC  4B C3 93 08 */	b __ct__5csXyzFsss
/* 8062E0F0  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062E0F4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8062E0F8  90 03 00 54 */	stw r0, 0x54(r3)
/* 8062E0FC  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8062E100  B0 03 00 58 */	sth r0, 0x58(r3)
/* 8062E104  38 63 00 54 */	addi r3, r3, 0x54
/* 8062E108  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062E10C  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062E110  38 BF 02 A4 */	addi r5, r31, 0x2a4
/* 8062E114  4B FF 0A 65 */	bl __register_global_object
/* 8062E118  38 61 00 08 */	addi r3, r1, 8
/* 8062E11C  38 80 FB 17 */	li r4, -1257
/* 8062E120  38 A0 E8 00 */	li r5, -6144
/* 8062E124  38 C0 3D 2A */	li r6, 0x3d2a
/* 8062E128  4B C3 92 CC */	b __ct__5csXyzFsss
/* 8062E12C  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 8062E130  80 01 00 08 */	lwz r0, 8(r1)
/* 8062E134  90 03 00 5A */	stw r0, 0x5a(r3)
/* 8062E138  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8062E13C  B0 03 00 5E */	sth r0, 0x5e(r3)
/* 8062E140  38 63 00 5A */	addi r3, r3, 0x5a
/* 8062E144  3C 80 80 63 */	lis r4, __dt__5csXyzFv@ha
/* 8062E148  38 84 E5 90 */	addi r4, r4, __dt__5csXyzFv@l
/* 8062E14C  38 BF 02 B0 */	addi r5, r31, 0x2b0
/* 8062E150  4B FF 0A 29 */	bl __register_global_object
/* 8062E154  83 E1 01 4C */	lwz r31, 0x14c(r1)
/* 8062E158  83 C1 01 48 */	lwz r30, 0x148(r1)
/* 8062E15C  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8062E160  7C 08 03 A6 */	mtlr r0
/* 8062E164  38 21 01 50 */	addi r1, r1, 0x150
/* 8062E168  4E 80 00 20 */	blr 
