lbl_808214A8:
/* 808214A8  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 808214AC  7C 08 02 A6 */	mflr r0
/* 808214B0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 808214B4  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 808214B8  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 808214BC  3C 60 80 82 */	lis r3, lit_1109@ha /* 0x80821E18@ha */
/* 808214C0  3B C3 1E 18 */	addi r30, r3, lit_1109@l /* 0x80821E18@l */
/* 808214C4  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 808214C8  3B E3 18 AC */	addi r31, r3, lit_3791@l /* 0x808218AC@l */
/* 808214CC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 808214D0  4B FF 4C 3D */	bl __ct__13daE_YMB_HIO_cFv
/* 808214D4  3C 80 80 82 */	lis r4, __dt__13daE_YMB_HIO_cFv@ha /* 0x80821460@ha */
/* 808214D8  38 84 14 60 */	addi r4, r4, __dt__13daE_YMB_HIO_cFv@l /* 0x80821460@l */
/* 808214DC  38 BE 00 40 */	addi r5, r30, 0x40
/* 808214E0  4B FF 4B B9 */	bl __register_global_object
/* 808214E4  C0 5F 01 D8 */	lfs f2, 0x1d8(r31)
/* 808214E8  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 808214EC  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 808214F0  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 808214F4  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 808214F8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 808214FC  D0 5E 01 20 */	stfs f2, 0x120(r30)
/* 80821500  38 7E 01 20 */	addi r3, r30, 0x120
/* 80821504  D0 23 00 04 */	stfs f1, 4(r3)
/* 80821508  D0 03 00 08 */	stfs f0, 8(r3)
/* 8082150C  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 80821510  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 80821514  38 BE 00 6C */	addi r5, r30, 0x6c
/* 80821518  4B FF 4B 81 */	bl __register_global_object
/* 8082151C  C0 5F 01 E4 */	lfs f2, 0x1e4(r31)
/* 80821520  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 80821524  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 80821528  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8082152C  C0 1F 01 E8 */	lfs f0, 0x1e8(r31)
/* 80821530  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80821534  38 7E 01 20 */	addi r3, r30, 0x120
/* 80821538  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8082153C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80821540  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80821544  38 63 00 0C */	addi r3, r3, 0xc
/* 80821548  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 8082154C  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 80821550  38 BE 00 78 */	addi r5, r30, 0x78
/* 80821554  4B FF 4B 45 */	bl __register_global_object
/* 80821558  C0 5F 01 EC */	lfs f2, 0x1ec(r31)
/* 8082155C  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 80821560  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 80821564  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 80821568  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 8082156C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80821570  38 7E 01 20 */	addi r3, r30, 0x120
/* 80821574  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80821578  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8082157C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80821580  38 63 00 18 */	addi r3, r3, 0x18
/* 80821584  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 80821588  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 8082158C  38 BE 00 84 */	addi r5, r30, 0x84
/* 80821590  4B FF 4B 09 */	bl __register_global_object
/* 80821594  C0 5F 01 F8 */	lfs f2, 0x1f8(r31)
/* 80821598  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 8082159C  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 808215A0  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 808215A4  C0 1F 02 00 */	lfs f0, 0x200(r31)
/* 808215A8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 808215AC  38 7E 01 20 */	addi r3, r30, 0x120
/* 808215B0  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 808215B4  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 808215B8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 808215BC  38 63 00 24 */	addi r3, r3, 0x24
/* 808215C0  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 808215C4  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 808215C8  38 BE 00 90 */	addi r5, r30, 0x90
/* 808215CC  4B FF 4A CD */	bl __register_global_object
/* 808215D0  C0 5F 02 04 */	lfs f2, 0x204(r31)
/* 808215D4  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 808215D8  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 808215DC  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 808215E0  C0 1F 02 08 */	lfs f0, 0x208(r31)
/* 808215E4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 808215E8  38 7E 01 20 */	addi r3, r30, 0x120
/* 808215EC  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 808215F0  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 808215F4  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 808215F8  38 63 00 30 */	addi r3, r3, 0x30
/* 808215FC  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 80821600  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 80821604  38 BE 00 9C */	addi r5, r30, 0x9c
/* 80821608  4B FF 4A 91 */	bl __register_global_object
/* 8082160C  C0 5F 02 0C */	lfs f2, 0x20c(r31)
/* 80821610  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80821614  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 80821618  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8082161C  C0 1F 02 14 */	lfs f0, 0x214(r31)
/* 80821620  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80821624  38 7E 01 20 */	addi r3, r30, 0x120
/* 80821628  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 8082162C  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80821630  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80821634  38 63 00 3C */	addi r3, r3, 0x3c
/* 80821638  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 8082163C  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 80821640  38 BE 00 A8 */	addi r5, r30, 0xa8
/* 80821644  4B FF 4A 55 */	bl __register_global_object
/* 80821648  C0 5F 02 18 */	lfs f2, 0x218(r31)
/* 8082164C  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80821650  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 80821654  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80821658  C0 1F 02 1C */	lfs f0, 0x21c(r31)
/* 8082165C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80821660  38 7E 01 20 */	addi r3, r30, 0x120
/* 80821664  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 80821668  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 8082166C  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80821670  38 63 00 48 */	addi r3, r3, 0x48
/* 80821674  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 80821678  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 8082167C  38 BE 00 B4 */	addi r5, r30, 0xb4
/* 80821680  4B FF 4A 19 */	bl __register_global_object
/* 80821684  C0 5F 02 20 */	lfs f2, 0x220(r31)
/* 80821688  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8082168C  C0 3F 02 24 */	lfs f1, 0x224(r31)
/* 80821690  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80821694  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 80821698  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8082169C  38 7E 01 20 */	addi r3, r30, 0x120
/* 808216A0  D0 43 00 54 */	stfs f2, 0x54(r3)
/* 808216A4  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 808216A8  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 808216AC  38 63 00 54 */	addi r3, r3, 0x54
/* 808216B0  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 808216B4  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 808216B8  38 BE 00 C0 */	addi r5, r30, 0xc0
/* 808216BC  4B FF 49 DD */	bl __register_global_object
/* 808216C0  C0 5F 02 2C */	lfs f2, 0x22c(r31)
/* 808216C4  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 808216C8  C0 3F 02 24 */	lfs f1, 0x224(r31)
/* 808216CC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 808216D0  C0 1F 02 30 */	lfs f0, 0x230(r31)
/* 808216D4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 808216D8  38 7E 01 20 */	addi r3, r30, 0x120
/* 808216DC  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 808216E0  D0 23 00 64 */	stfs f1, 0x64(r3)
/* 808216E4  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 808216E8  38 63 00 60 */	addi r3, r3, 0x60
/* 808216EC  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 808216F0  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 808216F4  38 BE 00 CC */	addi r5, r30, 0xcc
/* 808216F8  4B FF 49 A1 */	bl __register_global_object
/* 808216FC  C0 5F 02 34 */	lfs f2, 0x234(r31)
/* 80821700  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80821704  C0 3F 02 24 */	lfs f1, 0x224(r31)
/* 80821708  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8082170C  C0 1F 02 38 */	lfs f0, 0x238(r31)
/* 80821710  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80821714  38 7E 01 20 */	addi r3, r30, 0x120
/* 80821718  D0 43 00 6C */	stfs f2, 0x6c(r3)
/* 8082171C  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 80821720  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 80821724  38 63 00 6C */	addi r3, r3, 0x6c
/* 80821728  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 8082172C  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 80821730  38 BE 00 D8 */	addi r5, r30, 0xd8
/* 80821734  4B FF 49 65 */	bl __register_global_object
/* 80821738  C0 5F 02 3C */	lfs f2, 0x23c(r31)
/* 8082173C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80821740  C0 3F 02 40 */	lfs f1, 0x240(r31)
/* 80821744  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80821748  C0 1F 02 44 */	lfs f0, 0x244(r31)
/* 8082174C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80821750  38 7E 01 20 */	addi r3, r30, 0x120
/* 80821754  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 80821758  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 8082175C  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 80821760  38 63 00 78 */	addi r3, r3, 0x78
/* 80821764  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 80821768  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 8082176C  38 BE 00 E4 */	addi r5, r30, 0xe4
/* 80821770  4B FF 49 29 */	bl __register_global_object
/* 80821774  C0 5F 02 48 */	lfs f2, 0x248(r31)
/* 80821778  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8082177C  C0 3F 02 40 */	lfs f1, 0x240(r31)
/* 80821780  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80821784  C0 1F 02 4C */	lfs f0, 0x24c(r31)
/* 80821788  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082178C  38 7E 01 20 */	addi r3, r30, 0x120
/* 80821790  D0 43 00 84 */	stfs f2, 0x84(r3)
/* 80821794  D0 23 00 88 */	stfs f1, 0x88(r3)
/* 80821798  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 8082179C  38 63 00 84 */	addi r3, r3, 0x84
/* 808217A0  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 808217A4  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 808217A8  38 BE 00 F0 */	addi r5, r30, 0xf0
/* 808217AC  4B FF 48 ED */	bl __register_global_object
/* 808217B0  C0 5F 02 50 */	lfs f2, 0x250(r31)
/* 808217B4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 808217B8  C0 3F 02 40 */	lfs f1, 0x240(r31)
/* 808217BC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 808217C0  C0 1F 02 54 */	lfs f0, 0x254(r31)
/* 808217C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 808217C8  38 7E 01 20 */	addi r3, r30, 0x120
/* 808217CC  D0 43 00 90 */	stfs f2, 0x90(r3)
/* 808217D0  D0 23 00 94 */	stfs f1, 0x94(r3)
/* 808217D4  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 808217D8  38 63 00 90 */	addi r3, r3, 0x90
/* 808217DC  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 808217E0  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 808217E4  38 BE 00 FC */	addi r5, r30, 0xfc
/* 808217E8  4B FF 48 B1 */	bl __register_global_object
/* 808217EC  C0 5F 01 F8 */	lfs f2, 0x1f8(r31)
/* 808217F0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 808217F4  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 808217F8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 808217FC  C0 1F 02 00 */	lfs f0, 0x200(r31)
/* 80821800  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80821804  38 7E 01 20 */	addi r3, r30, 0x120
/* 80821808  D0 43 00 9C */	stfs f2, 0x9c(r3)
/* 8082180C  D0 23 00 A0 */	stfs f1, 0xa0(r3)
/* 80821810  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80821814  38 63 00 9C */	addi r3, r3, 0x9c
/* 80821818  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 8082181C  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 80821820  38 BE 01 08 */	addi r5, r30, 0x108
/* 80821824  4B FF 48 75 */	bl __register_global_object
/* 80821828  C0 5F 01 F8 */	lfs f2, 0x1f8(r31)
/* 8082182C  D0 41 00 08 */	stfs f2, 8(r1)
/* 80821830  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 80821834  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80821838  C0 1F 02 00 */	lfs f0, 0x200(r31)
/* 8082183C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80821840  38 7E 01 20 */	addi r3, r30, 0x120
/* 80821844  D0 43 00 A8 */	stfs f2, 0xa8(r3)
/* 80821848  D0 23 00 AC */	stfs f1, 0xac(r3)
/* 8082184C  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80821850  38 63 00 A8 */	addi r3, r3, 0xa8
/* 80821854  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 80821858  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 8082185C  38 BE 01 14 */	addi r5, r30, 0x114
/* 80821860  4B FF 48 39 */	bl __register_global_object
/* 80821864  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 80821868  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 8082186C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80821870  7C 08 03 A6 */	mtlr r0
/* 80821874  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80821878  4E 80 00 20 */	blr 
