lbl_807CE2F4:
/* 807CE2F4  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 807CE2F8  7C 08 02 A6 */	mflr r0
/* 807CE2FC  90 01 01 04 */	stw r0, 0x104(r1)
/* 807CE300  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 807CE304  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 807CE308  3C 60 80 7D */	lis r3, lit_1109@ha /* 0x807CF478@ha */
/* 807CE30C  3B C3 F4 78 */	addi r30, r3, lit_1109@l /* 0x807CF478@l */
/* 807CE310  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807CE314  3B E3 EC A8 */	addi r31, r3, lit_3907@l /* 0x807CECA8@l */
/* 807CE318  38 7E 00 4C */	addi r3, r30, 0x4c
/* 807CE31C  4B FF 42 D1 */	bl __ct__12daE_VA_HIO_cFv
/* 807CE320  3C 80 80 7D */	lis r4, __dt__12daE_VA_HIO_cFv@ha /* 0x807CE2AC@ha */
/* 807CE324  38 84 E2 AC */	addi r4, r4, __dt__12daE_VA_HIO_cFv@l /* 0x807CE2AC@l */
/* 807CE328  38 BE 00 40 */	addi r5, r30, 0x40
/* 807CE32C  4B FF 42 4D */	bl __register_global_object
/* 807CE330  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807CE334  D0 41 00 EC */	stfs f2, 0xec(r1)
/* 807CE338  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807CE33C  D0 21 00 F0 */	stfs f1, 0xf0(r1)
/* 807CE340  C0 1F 01 FC */	lfs f0, 0x1fc(r31)
/* 807CE344  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 807CE348  D0 5E 01 04 */	stfs f2, 0x104(r30)
/* 807CE34C  38 7E 01 04 */	addi r3, r30, 0x104
/* 807CE350  D0 23 00 04 */	stfs f1, 4(r3)
/* 807CE354  D0 03 00 08 */	stfs f0, 8(r3)
/* 807CE358  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE35C  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE360  38 BE 00 8C */	addi r5, r30, 0x8c
/* 807CE364  4B FF 42 15 */	bl __register_global_object
/* 807CE368  C0 5F 02 00 */	lfs f2, 0x200(r31)
/* 807CE36C  D0 41 00 E0 */	stfs f2, 0xe0(r1)
/* 807CE370  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807CE374  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 807CE378  C0 1F 02 04 */	lfs f0, 0x204(r31)
/* 807CE37C  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 807CE380  38 7E 01 04 */	addi r3, r30, 0x104
/* 807CE384  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 807CE388  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 807CE38C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807CE390  38 63 00 0C */	addi r3, r3, 0xc
/* 807CE394  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE398  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE39C  38 BE 00 98 */	addi r5, r30, 0x98
/* 807CE3A0  4B FF 41 D9 */	bl __register_global_object
/* 807CE3A4  C0 5F 02 08 */	lfs f2, 0x208(r31)
/* 807CE3A8  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 807CE3AC  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807CE3B0  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 807CE3B4  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 807CE3B8  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807CE3BC  38 7E 01 04 */	addi r3, r30, 0x104
/* 807CE3C0  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 807CE3C4  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 807CE3C8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 807CE3CC  38 63 00 18 */	addi r3, r3, 0x18
/* 807CE3D0  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE3D4  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE3D8  38 BE 00 A4 */	addi r5, r30, 0xa4
/* 807CE3DC  4B FF 41 9D */	bl __register_global_object
/* 807CE3E0  C0 5F 02 10 */	lfs f2, 0x210(r31)
/* 807CE3E4  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 807CE3E8  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807CE3EC  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 807CE3F0  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 807CE3F4  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807CE3F8  38 7E 01 04 */	addi r3, r30, 0x104
/* 807CE3FC  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 807CE400  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 807CE404  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 807CE408  38 63 00 24 */	addi r3, r3, 0x24
/* 807CE40C  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE410  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE414  38 BE 00 B0 */	addi r5, r30, 0xb0
/* 807CE418  4B FF 41 61 */	bl __register_global_object
/* 807CE41C  C0 5F 02 14 */	lfs f2, 0x214(r31)
/* 807CE420  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 807CE424  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807CE428  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 807CE42C  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 807CE430  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 807CE434  38 7E 01 04 */	addi r3, r30, 0x104
/* 807CE438  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 807CE43C  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 807CE440  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 807CE444  38 63 00 30 */	addi r3, r3, 0x30
/* 807CE448  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE44C  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE450  38 BE 00 BC */	addi r5, r30, 0xbc
/* 807CE454  4B FF 41 25 */	bl __register_global_object
/* 807CE458  C0 5F 02 1C */	lfs f2, 0x21c(r31)
/* 807CE45C  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 807CE460  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807CE464  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 807CE468  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 807CE46C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807CE470  38 7E 01 04 */	addi r3, r30, 0x104
/* 807CE474  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 807CE478  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 807CE47C  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 807CE480  38 63 00 3C */	addi r3, r3, 0x3c
/* 807CE484  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE488  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE48C  38 BE 00 C8 */	addi r5, r30, 0xc8
/* 807CE490  4B FF 40 E9 */	bl __register_global_object
/* 807CE494  C0 5F 02 24 */	lfs f2, 0x224(r31)
/* 807CE498  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 807CE49C  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807CE4A0  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 807CE4A4  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 807CE4A8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 807CE4AC  38 7E 01 04 */	addi r3, r30, 0x104
/* 807CE4B0  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 807CE4B4  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 807CE4B8  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 807CE4BC  38 63 00 48 */	addi r3, r3, 0x48
/* 807CE4C0  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE4C4  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE4C8  38 BE 00 D4 */	addi r5, r30, 0xd4
/* 807CE4CC  4B FF 40 AD */	bl __register_global_object
/* 807CE4D0  C0 5F 02 2C */	lfs f2, 0x22c(r31)
/* 807CE4D4  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 807CE4D8  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807CE4DC  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 807CE4E0  C0 1F 02 30 */	lfs f0, 0x230(r31)
/* 807CE4E4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 807CE4E8  38 7E 01 04 */	addi r3, r30, 0x104
/* 807CE4EC  D0 43 00 54 */	stfs f2, 0x54(r3)
/* 807CE4F0  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 807CE4F4  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 807CE4F8  38 63 00 54 */	addi r3, r3, 0x54
/* 807CE4FC  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE500  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE504  38 BE 00 E0 */	addi r5, r30, 0xe0
/* 807CE508  4B FF 40 71 */	bl __register_global_object
/* 807CE50C  C0 5F 02 34 */	lfs f2, 0x234(r31)
/* 807CE510  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 807CE514  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807CE518  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 807CE51C  C0 1F 02 38 */	lfs f0, 0x238(r31)
/* 807CE520  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807CE524  38 7E 01 04 */	addi r3, r30, 0x104
/* 807CE528  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 807CE52C  D0 23 00 64 */	stfs f1, 0x64(r3)
/* 807CE530  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 807CE534  38 63 00 60 */	addi r3, r3, 0x60
/* 807CE538  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE53C  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE540  38 BE 00 EC */	addi r5, r30, 0xec
/* 807CE544  4B FF 40 35 */	bl __register_global_object
/* 807CE548  C0 5F 02 3C */	lfs f2, 0x23c(r31)
/* 807CE54C  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 807CE550  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807CE554  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 807CE558  C0 1F 02 40 */	lfs f0, 0x240(r31)
/* 807CE55C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807CE560  38 7E 01 04 */	addi r3, r30, 0x104
/* 807CE564  D0 43 00 6C */	stfs f2, 0x6c(r3)
/* 807CE568  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 807CE56C  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 807CE570  38 63 00 6C */	addi r3, r3, 0x6c
/* 807CE574  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE578  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE57C  38 BE 00 F8 */	addi r5, r30, 0xf8
/* 807CE580  4B FF 3F F9 */	bl __register_global_object
/* 807CE584  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 807CE588  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 807CE58C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 807CE590  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 807CE594  C0 1F 02 44 */	lfs f0, 0x244(r31)
/* 807CE598  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807CE59C  D0 5E 01 F4 */	stfs f2, 0x1f4(r30)
/* 807CE5A0  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 807CE5A4  D0 23 00 04 */	stfs f1, 4(r3)
/* 807CE5A8  D0 03 00 08 */	stfs f0, 8(r3)
/* 807CE5AC  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE5B0  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE5B4  38 BE 01 7C */	addi r5, r30, 0x17c
/* 807CE5B8  4B FF 3F C1 */	bl __register_global_object
/* 807CE5BC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CE5C0  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 807CE5C4  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 807CE5C8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807CE5CC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807CE5D0  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 807CE5D4  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 807CE5D8  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 807CE5DC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807CE5E0  38 63 00 0C */	addi r3, r3, 0xc
/* 807CE5E4  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE5E8  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE5EC  38 BE 01 88 */	addi r5, r30, 0x188
/* 807CE5F0  4B FF 3F 89 */	bl __register_global_object
/* 807CE5F4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CE5F8  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 807CE5FC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807CE600  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807CE604  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807CE608  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 807CE60C  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 807CE610  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 807CE614  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 807CE618  38 63 00 18 */	addi r3, r3, 0x18
/* 807CE61C  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE620  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE624  38 BE 01 94 */	addi r5, r30, 0x194
/* 807CE628  4B FF 3F 51 */	bl __register_global_object
/* 807CE62C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CE630  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 807CE634  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 807CE638  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807CE63C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807CE640  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 807CE644  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 807CE648  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 807CE64C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 807CE650  38 63 00 24 */	addi r3, r3, 0x24
/* 807CE654  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE658  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE65C  38 BE 01 A0 */	addi r5, r30, 0x1a0
/* 807CE660  4B FF 3F 19 */	bl __register_global_object
/* 807CE664  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CE668  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 807CE66C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807CE670  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807CE674  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807CE678  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 807CE67C  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 807CE680  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 807CE684  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 807CE688  38 63 00 30 */	addi r3, r3, 0x30
/* 807CE68C  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE690  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE694  38 BE 01 AC */	addi r5, r30, 0x1ac
/* 807CE698  4B FF 3E E1 */	bl __register_global_object
/* 807CE69C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807CE6A0  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 807CE6A4  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 807CE6A8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 807CE6AC  C0 1F 02 44 */	lfs f0, 0x244(r31)
/* 807CE6B0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807CE6B4  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 807CE6B8  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 807CE6BC  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 807CE6C0  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 807CE6C4  38 63 00 3C */	addi r3, r3, 0x3c
/* 807CE6C8  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE6CC  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE6D0  38 BE 01 B8 */	addi r5, r30, 0x1b8
/* 807CE6D4  4B FF 3E A5 */	bl __register_global_object
/* 807CE6D8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807CE6DC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 807CE6E0  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807CE6E4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 807CE6E8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807CE6EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807CE6F0  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 807CE6F4  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 807CE6F8  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 807CE6FC  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 807CE700  38 63 00 48 */	addi r3, r3, 0x48
/* 807CE704  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE708  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE70C  38 BE 01 C4 */	addi r5, r30, 0x1c4
/* 807CE710  4B FF 3E 69 */	bl __register_global_object
/* 807CE714  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807CE718  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807CE71C  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 807CE720  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807CE724  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 807CE728  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807CE72C  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 807CE730  D0 43 00 54 */	stfs f2, 0x54(r3)
/* 807CE734  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 807CE738  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 807CE73C  38 63 00 54 */	addi r3, r3, 0x54
/* 807CE740  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE744  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE748  38 BE 01 D0 */	addi r5, r30, 0x1d0
/* 807CE74C  4B FF 3E 2D */	bl __register_global_object
/* 807CE750  C0 5F 02 48 */	lfs f2, 0x248(r31)
/* 807CE754  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 807CE758  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 807CE75C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807CE760  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CE764  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807CE768  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 807CE76C  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 807CE770  D0 23 00 64 */	stfs f1, 0x64(r3)
/* 807CE774  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 807CE778  38 63 00 60 */	addi r3, r3, 0x60
/* 807CE77C  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE780  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE784  38 BE 01 DC */	addi r5, r30, 0x1dc
/* 807CE788  4B FF 3D F1 */	bl __register_global_object
/* 807CE78C  C0 5F 02 4C */	lfs f2, 0x24c(r31)
/* 807CE790  D0 41 00 08 */	stfs f2, 8(r1)
/* 807CE794  C0 3F 02 50 */	lfs f1, 0x250(r31)
/* 807CE798  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807CE79C  C0 1F 02 48 */	lfs f0, 0x248(r31)
/* 807CE7A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807CE7A4  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 807CE7A8  D0 43 00 6C */	stfs f2, 0x6c(r3)
/* 807CE7AC  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 807CE7B0  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 807CE7B4  38 63 00 6C */	addi r3, r3, 0x6c
/* 807CE7B8  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807CEC40@ha */
/* 807CE7BC  38 84 EC 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807CEC40@l */
/* 807CE7C0  38 BE 01 E8 */	addi r5, r30, 0x1e8
/* 807CE7C4  4B FF 3D B5 */	bl __register_global_object
/* 807CE7C8  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 807CE7CC  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 807CE7D0  80 01 01 04 */	lwz r0, 0x104(r1)
/* 807CE7D4  7C 08 03 A6 */	mtlr r0
/* 807CE7D8  38 21 01 00 */	addi r1, r1, 0x100
/* 807CE7DC  4E 80 00 20 */	blr 
