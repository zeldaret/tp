lbl_807593CC:
/* 807593CC  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 807593D0  7C 08 02 A6 */	mflr r0
/* 807593D4  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 807593D8  39 61 02 E0 */	addi r11, r1, 0x2e0
/* 807593DC  4B C0 8D F4 */	b _savegpr_26
/* 807593E0  7C 7F 1B 78 */	mr r31, r3
/* 807593E4  3C 60 80 76 */	lis r3, lit_1109@ha
/* 807593E8  3B A3 1D C0 */	addi r29, r3, lit_1109@l
/* 807593EC  3C 60 80 76 */	lis r3, lit_3906@ha
/* 807593F0  3B C3 14 FC */	addi r30, r3, lit_3906@l
/* 807593F4  88 1D 00 78 */	lbz r0, 0x78(r29)
/* 807593F8  7C 00 07 75 */	extsb. r0, r0
/* 807593FC  40 82 03 B0 */	bne lbl_807597AC
/* 80759400  38 61 02 84 */	addi r3, r1, 0x284
/* 80759404  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80759408  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8075940C  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 80759410  48 00 80 C9 */	bl __ct__4cXyzFfff
/* 80759414  38 7D 01 48 */	addi r3, r29, 0x148
/* 80759418  38 81 02 84 */	addi r4, r1, 0x284
/* 8075941C  48 00 80 A1 */	bl __ct__4cXyzFRC4cXyz
/* 80759420  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759424  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759428  38 BD 00 6C */	addi r5, r29, 0x6c
/* 8075942C  4B FF F0 CD */	bl __register_global_object
/* 80759430  38 61 02 78 */	addi r3, r1, 0x278
/* 80759434  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80759438  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8075943C  C0 7E 00 68 */	lfs f3, 0x68(r30)
/* 80759440  48 00 80 99 */	bl __ct__4cXyzFfff
/* 80759444  38 7D 01 48 */	addi r3, r29, 0x148
/* 80759448  38 63 00 0C */	addi r3, r3, 0xc
/* 8075944C  38 81 02 78 */	addi r4, r1, 0x278
/* 80759450  48 00 80 6D */	bl __ct__4cXyzFRC4cXyz
/* 80759454  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759458  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8075945C  38 BD 00 7C */	addi r5, r29, 0x7c
/* 80759460  4B FF F0 99 */	bl __register_global_object
/* 80759464  38 61 02 6C */	addi r3, r1, 0x26c
/* 80759468  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 8075946C  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80759470  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 80759474  48 00 80 65 */	bl __ct__4cXyzFfff
/* 80759478  38 7D 01 48 */	addi r3, r29, 0x148
/* 8075947C  38 63 00 18 */	addi r3, r3, 0x18
/* 80759480  38 81 02 6C */	addi r4, r1, 0x26c
/* 80759484  48 00 80 39 */	bl __ct__4cXyzFRC4cXyz
/* 80759488  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 8075948C  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759490  38 BD 00 88 */	addi r5, r29, 0x88
/* 80759494  4B FF F0 65 */	bl __register_global_object
/* 80759498  38 61 02 60 */	addi r3, r1, 0x260
/* 8075949C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807594A0  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 807594A4  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 807594A8  48 00 80 31 */	bl __ct__4cXyzFfff
/* 807594AC  38 7D 01 48 */	addi r3, r29, 0x148
/* 807594B0  38 63 00 24 */	addi r3, r3, 0x24
/* 807594B4  38 81 02 60 */	addi r4, r1, 0x260
/* 807594B8  48 00 80 05 */	bl __ct__4cXyzFRC4cXyz
/* 807594BC  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 807594C0  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 807594C4  38 BD 00 94 */	addi r5, r29, 0x94
/* 807594C8  4B FF F0 31 */	bl __register_global_object
/* 807594CC  38 61 02 54 */	addi r3, r1, 0x254
/* 807594D0  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 807594D4  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 807594D8  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 807594DC  48 00 7F FD */	bl __ct__4cXyzFfff
/* 807594E0  38 7D 01 48 */	addi r3, r29, 0x148
/* 807594E4  38 63 00 30 */	addi r3, r3, 0x30
/* 807594E8  38 81 02 54 */	addi r4, r1, 0x254
/* 807594EC  48 00 7F D1 */	bl __ct__4cXyzFRC4cXyz
/* 807594F0  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 807594F4  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 807594F8  38 BD 00 A0 */	addi r5, r29, 0xa0
/* 807594FC  4B FF EF FD */	bl __register_global_object
/* 80759500  38 61 02 48 */	addi r3, r1, 0x248
/* 80759504  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80759508  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 8075950C  C0 7E 00 98 */	lfs f3, 0x98(r30)
/* 80759510  48 00 7F C9 */	bl __ct__4cXyzFfff
/* 80759514  38 7D 01 48 */	addi r3, r29, 0x148
/* 80759518  38 63 00 3C */	addi r3, r3, 0x3c
/* 8075951C  38 81 02 48 */	addi r4, r1, 0x248
/* 80759520  48 00 7F 9D */	bl __ct__4cXyzFRC4cXyz
/* 80759524  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759528  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8075952C  38 BD 00 AC */	addi r5, r29, 0xac
/* 80759530  4B FF EF C9 */	bl __register_global_object
/* 80759534  38 61 02 3C */	addi r3, r1, 0x23c
/* 80759538  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8075953C  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 80759540  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 80759544  48 00 7F 95 */	bl __ct__4cXyzFfff
/* 80759548  38 7D 01 48 */	addi r3, r29, 0x148
/* 8075954C  38 63 00 48 */	addi r3, r3, 0x48
/* 80759550  38 81 02 3C */	addi r4, r1, 0x23c
/* 80759554  48 00 7F 69 */	bl __ct__4cXyzFRC4cXyz
/* 80759558  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 8075955C  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759560  38 BD 00 B8 */	addi r5, r29, 0xb8
/* 80759564  4B FF EF 95 */	bl __register_global_object
/* 80759568  38 61 02 30 */	addi r3, r1, 0x230
/* 8075956C  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80759570  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 80759574  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80759578  48 00 7F 61 */	bl __ct__4cXyzFfff
/* 8075957C  38 7D 01 48 */	addi r3, r29, 0x148
/* 80759580  38 63 00 54 */	addi r3, r3, 0x54
/* 80759584  38 81 02 30 */	addi r4, r1, 0x230
/* 80759588  48 00 7F 35 */	bl __ct__4cXyzFRC4cXyz
/* 8075958C  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759590  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759594  38 BD 00 C4 */	addi r5, r29, 0xc4
/* 80759598  4B FF EF 61 */	bl __register_global_object
/* 8075959C  38 61 02 24 */	addi r3, r1, 0x224
/* 807595A0  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 807595A4  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 807595A8  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 807595AC  48 00 7F 2D */	bl __ct__4cXyzFfff
/* 807595B0  38 7D 01 48 */	addi r3, r29, 0x148
/* 807595B4  38 63 00 60 */	addi r3, r3, 0x60
/* 807595B8  38 81 02 24 */	addi r4, r1, 0x224
/* 807595BC  48 00 7F 01 */	bl __ct__4cXyzFRC4cXyz
/* 807595C0  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 807595C4  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 807595C8  38 BD 00 D0 */	addi r5, r29, 0xd0
/* 807595CC  4B FF EF 2D */	bl __register_global_object
/* 807595D0  38 61 02 18 */	addi r3, r1, 0x218
/* 807595D4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807595D8  FC 40 08 90 */	fmr f2, f1
/* 807595DC  FC 60 08 90 */	fmr f3, f1
/* 807595E0  48 00 7E F9 */	bl __ct__4cXyzFfff
/* 807595E4  38 7D 01 48 */	addi r3, r29, 0x148
/* 807595E8  38 63 00 6C */	addi r3, r3, 0x6c
/* 807595EC  38 81 02 18 */	addi r4, r1, 0x218
/* 807595F0  48 00 7E CD */	bl __ct__4cXyzFRC4cXyz
/* 807595F4  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 807595F8  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 807595FC  38 BD 00 DC */	addi r5, r29, 0xdc
/* 80759600  4B FF EE F9 */	bl __register_global_object
/* 80759604  38 61 02 0C */	addi r3, r1, 0x20c
/* 80759608  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075960C  C0 5E 00 C0 */	lfs f2, 0xc0(r30)
/* 80759610  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 80759614  48 00 7E C5 */	bl __ct__4cXyzFfff
/* 80759618  38 7D 01 48 */	addi r3, r29, 0x148
/* 8075961C  38 63 00 78 */	addi r3, r3, 0x78
/* 80759620  38 81 02 0C */	addi r4, r1, 0x20c
/* 80759624  48 00 7E 99 */	bl __ct__4cXyzFRC4cXyz
/* 80759628  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 8075962C  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759630  38 BD 00 E8 */	addi r5, r29, 0xe8
/* 80759634  4B FF EE C5 */	bl __register_global_object
/* 80759638  38 61 02 00 */	addi r3, r1, 0x200
/* 8075963C  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80759640  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80759644  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 80759648  48 00 7E 91 */	bl __ct__4cXyzFfff
/* 8075964C  38 7D 01 48 */	addi r3, r29, 0x148
/* 80759650  38 63 00 84 */	addi r3, r3, 0x84
/* 80759654  38 81 02 00 */	addi r4, r1, 0x200
/* 80759658  48 00 7E 65 */	bl __ct__4cXyzFRC4cXyz
/* 8075965C  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759660  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759664  38 BD 00 F4 */	addi r5, r29, 0xf4
/* 80759668  4B FF EE 91 */	bl __register_global_object
/* 8075966C  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 80759670  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80759674  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80759678  C0 7E 00 CC */	lfs f3, 0xcc(r30)
/* 8075967C  48 00 7E 5D */	bl __ct__4cXyzFfff
/* 80759680  38 7D 01 48 */	addi r3, r29, 0x148
/* 80759684  38 63 00 90 */	addi r3, r3, 0x90
/* 80759688  38 81 01 F4 */	addi r4, r1, 0x1f4
/* 8075968C  48 00 7E 31 */	bl __ct__4cXyzFRC4cXyz
/* 80759690  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759694  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759698  38 BD 01 00 */	addi r5, r29, 0x100
/* 8075969C  4B FF EE 5D */	bl __register_global_object
/* 807596A0  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 807596A4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807596A8  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 807596AC  C0 7E 00 D4 */	lfs f3, 0xd4(r30)
/* 807596B0  48 00 7E 29 */	bl __ct__4cXyzFfff
/* 807596B4  38 7D 01 48 */	addi r3, r29, 0x148
/* 807596B8  38 63 00 9C */	addi r3, r3, 0x9c
/* 807596BC  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 807596C0  48 00 7D FD */	bl __ct__4cXyzFRC4cXyz
/* 807596C4  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 807596C8  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 807596CC  38 BD 01 0C */	addi r5, r29, 0x10c
/* 807596D0  4B FF EE 29 */	bl __register_global_object
/* 807596D4  38 61 01 DC */	addi r3, r1, 0x1dc
/* 807596D8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807596DC  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 807596E0  C0 7E 00 DC */	lfs f3, 0xdc(r30)
/* 807596E4  48 00 7D F5 */	bl __ct__4cXyzFfff
/* 807596E8  38 7D 01 48 */	addi r3, r29, 0x148
/* 807596EC  38 63 00 A8 */	addi r3, r3, 0xa8
/* 807596F0  38 81 01 DC */	addi r4, r1, 0x1dc
/* 807596F4  48 00 7D C9 */	bl __ct__4cXyzFRC4cXyz
/* 807596F8  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 807596FC  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759700  38 BD 01 18 */	addi r5, r29, 0x118
/* 80759704  4B FF ED F5 */	bl __register_global_object
/* 80759708  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 8075970C  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 80759710  C0 5E 00 E4 */	lfs f2, 0xe4(r30)
/* 80759714  C0 7E 00 E8 */	lfs f3, 0xe8(r30)
/* 80759718  48 00 7D C1 */	bl __ct__4cXyzFfff
/* 8075971C  38 7D 01 48 */	addi r3, r29, 0x148
/* 80759720  38 63 00 B4 */	addi r3, r3, 0xb4
/* 80759724  38 81 01 D0 */	addi r4, r1, 0x1d0
/* 80759728  48 00 7D 95 */	bl __ct__4cXyzFRC4cXyz
/* 8075972C  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759730  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759734  38 BD 01 24 */	addi r5, r29, 0x124
/* 80759738  4B FF ED C1 */	bl __register_global_object
/* 8075973C  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 80759740  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 80759744  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 80759748  C0 7E 00 F4 */	lfs f3, 0xf4(r30)
/* 8075974C  48 00 7D 8D */	bl __ct__4cXyzFfff
/* 80759750  38 7D 01 48 */	addi r3, r29, 0x148
/* 80759754  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80759758  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 8075975C  48 00 7D 61 */	bl __ct__4cXyzFRC4cXyz
/* 80759760  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759764  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759768  38 BD 01 30 */	addi r5, r29, 0x130
/* 8075976C  4B FF ED 8D */	bl __register_global_object
/* 80759770  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 80759774  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80759778  C0 5E 00 C0 */	lfs f2, 0xc0(r30)
/* 8075977C  C0 7E 00 F8 */	lfs f3, 0xf8(r30)
/* 80759780  48 00 7D 59 */	bl __ct__4cXyzFfff
/* 80759784  38 7D 01 48 */	addi r3, r29, 0x148
/* 80759788  38 63 00 CC */	addi r3, r3, 0xcc
/* 8075978C  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 80759790  48 00 7D 2D */	bl __ct__4cXyzFRC4cXyz
/* 80759794  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759798  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8075979C  38 BD 01 3C */	addi r5, r29, 0x13c
/* 807597A0  4B FF ED 59 */	bl __register_global_object
/* 807597A4  38 00 00 01 */	li r0, 1
/* 807597A8  98 1D 00 78 */	stb r0, 0x78(r29)
lbl_807597AC:
/* 807597AC  88 1D 02 2C */	lbz r0, 0x22c(r29)
/* 807597B0  7C 00 07 75 */	extsb. r0, r0
/* 807597B4  40 82 03 B0 */	bne lbl_80759B64
/* 807597B8  38 61 01 AC */	addi r3, r1, 0x1ac
/* 807597BC  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 807597C0  C0 5E 01 00 */	lfs f2, 0x100(r30)
/* 807597C4  C0 7E 01 04 */	lfs f3, 0x104(r30)
/* 807597C8  48 00 7D 11 */	bl __ct__4cXyzFfff
/* 807597CC  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 807597D0  38 81 01 AC */	addi r4, r1, 0x1ac
/* 807597D4  48 00 7C E9 */	bl __ct__4cXyzFRC4cXyz
/* 807597D8  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 807597DC  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 807597E0  38 BD 02 20 */	addi r5, r29, 0x220
/* 807597E4  4B FF ED 15 */	bl __register_global_object
/* 807597E8  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 807597EC  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 807597F0  C0 5E 01 00 */	lfs f2, 0x100(r30)
/* 807597F4  C0 7E 01 04 */	lfs f3, 0x104(r30)
/* 807597F8  48 00 7C E1 */	bl __ct__4cXyzFfff
/* 807597FC  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 80759800  38 63 00 0C */	addi r3, r3, 0xc
/* 80759804  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 80759808  48 00 7C B5 */	bl __ct__4cXyzFRC4cXyz
/* 8075980C  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759810  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759814  38 BD 02 30 */	addi r5, r29, 0x230
/* 80759818  4B FF EC E1 */	bl __register_global_object
/* 8075981C  38 61 01 94 */	addi r3, r1, 0x194
/* 80759820  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 80759824  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80759828  C0 7E 01 0C */	lfs f3, 0x10c(r30)
/* 8075982C  48 00 7C AD */	bl __ct__4cXyzFfff
/* 80759830  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 80759834  38 63 00 18 */	addi r3, r3, 0x18
/* 80759838  38 81 01 94 */	addi r4, r1, 0x194
/* 8075983C  48 00 7C 81 */	bl __ct__4cXyzFRC4cXyz
/* 80759840  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759844  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759848  38 BD 02 3C */	addi r5, r29, 0x23c
/* 8075984C  4B FF EC AD */	bl __register_global_object
/* 80759850  38 61 01 88 */	addi r3, r1, 0x188
/* 80759854  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 80759858  C0 5E 01 14 */	lfs f2, 0x114(r30)
/* 8075985C  C0 7E 01 18 */	lfs f3, 0x118(r30)
/* 80759860  48 00 7C 79 */	bl __ct__4cXyzFfff
/* 80759864  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 80759868  38 63 00 24 */	addi r3, r3, 0x24
/* 8075986C  38 81 01 88 */	addi r4, r1, 0x188
/* 80759870  48 00 7C 4D */	bl __ct__4cXyzFRC4cXyz
/* 80759874  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759878  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8075987C  38 BD 02 48 */	addi r5, r29, 0x248
/* 80759880  4B FF EC 79 */	bl __register_global_object
/* 80759884  38 61 01 7C */	addi r3, r1, 0x17c
/* 80759888  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 8075988C  C0 5E 01 20 */	lfs f2, 0x120(r30)
/* 80759890  C0 7E 01 24 */	lfs f3, 0x124(r30)
/* 80759894  48 00 7C 45 */	bl __ct__4cXyzFfff
/* 80759898  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 8075989C  38 63 00 30 */	addi r3, r3, 0x30
/* 807598A0  38 81 01 7C */	addi r4, r1, 0x17c
/* 807598A4  48 00 7C 19 */	bl __ct__4cXyzFRC4cXyz
/* 807598A8  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 807598AC  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 807598B0  38 BD 02 54 */	addi r5, r29, 0x254
/* 807598B4  4B FF EC 45 */	bl __register_global_object
/* 807598B8  38 61 01 70 */	addi r3, r1, 0x170
/* 807598BC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807598C0  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 807598C4  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 807598C8  48 00 7C 11 */	bl __ct__4cXyzFfff
/* 807598CC  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 807598D0  38 63 00 3C */	addi r3, r3, 0x3c
/* 807598D4  38 81 01 70 */	addi r4, r1, 0x170
/* 807598D8  48 00 7B E5 */	bl __ct__4cXyzFRC4cXyz
/* 807598DC  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 807598E0  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 807598E4  38 BD 02 60 */	addi r5, r29, 0x260
/* 807598E8  4B FF EC 11 */	bl __register_global_object
/* 807598EC  38 61 01 64 */	addi r3, r1, 0x164
/* 807598F0  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 807598F4  C0 5E 00 EC */	lfs f2, 0xec(r30)
/* 807598F8  C0 7E 01 34 */	lfs f3, 0x134(r30)
/* 807598FC  48 00 7B DD */	bl __ct__4cXyzFfff
/* 80759900  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 80759904  38 63 00 48 */	addi r3, r3, 0x48
/* 80759908  38 81 01 64 */	addi r4, r1, 0x164
/* 8075990C  48 00 7B B1 */	bl __ct__4cXyzFRC4cXyz
/* 80759910  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759914  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759918  38 BD 02 6C */	addi r5, r29, 0x26c
/* 8075991C  4B FF EB DD */	bl __register_global_object
/* 80759920  38 61 01 58 */	addi r3, r1, 0x158
/* 80759924  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80759928  C0 5E 01 3C */	lfs f2, 0x13c(r30)
/* 8075992C  C0 7E 00 F8 */	lfs f3, 0xf8(r30)
/* 80759930  48 00 7B A9 */	bl __ct__4cXyzFfff
/* 80759934  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 80759938  38 63 00 54 */	addi r3, r3, 0x54
/* 8075993C  38 81 01 58 */	addi r4, r1, 0x158
/* 80759940  48 00 7B 7D */	bl __ct__4cXyzFRC4cXyz
/* 80759944  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759948  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8075994C  38 BD 02 78 */	addi r5, r29, 0x278
/* 80759950  4B FF EB A9 */	bl __register_global_object
/* 80759954  38 61 01 4C */	addi r3, r1, 0x14c
/* 80759958  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 8075995C  C0 5E 01 14 */	lfs f2, 0x114(r30)
/* 80759960  C0 7E 01 04 */	lfs f3, 0x104(r30)
/* 80759964  48 00 7B 75 */	bl __ct__4cXyzFfff
/* 80759968  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 8075996C  38 63 00 60 */	addi r3, r3, 0x60
/* 80759970  38 81 01 4C */	addi r4, r1, 0x14c
/* 80759974  48 00 7B 49 */	bl __ct__4cXyzFRC4cXyz
/* 80759978  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 8075997C  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759980  38 BD 02 84 */	addi r5, r29, 0x284
/* 80759984  4B FF EB 75 */	bl __register_global_object
/* 80759988  38 61 01 40 */	addi r3, r1, 0x140
/* 8075998C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80759990  FC 40 08 90 */	fmr f2, f1
/* 80759994  FC 60 08 90 */	fmr f3, f1
/* 80759998  48 00 7B 41 */	bl __ct__4cXyzFfff
/* 8075999C  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 807599A0  38 63 00 6C */	addi r3, r3, 0x6c
/* 807599A4  38 81 01 40 */	addi r4, r1, 0x140
/* 807599A8  48 00 7B 15 */	bl __ct__4cXyzFRC4cXyz
/* 807599AC  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 807599B0  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 807599B4  38 BD 02 90 */	addi r5, r29, 0x290
/* 807599B8  4B FF EB 41 */	bl __register_global_object
/* 807599BC  38 61 01 34 */	addi r3, r1, 0x134
/* 807599C0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807599C4  C0 5E 01 44 */	lfs f2, 0x144(r30)
/* 807599C8  C0 7E 01 48 */	lfs f3, 0x148(r30)
/* 807599CC  48 00 7B 0D */	bl __ct__4cXyzFfff
/* 807599D0  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 807599D4  38 63 00 78 */	addi r3, r3, 0x78
/* 807599D8  38 81 01 34 */	addi r4, r1, 0x134
/* 807599DC  48 00 7A E1 */	bl __ct__4cXyzFRC4cXyz
/* 807599E0  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 807599E4  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 807599E8  38 BD 02 9C */	addi r5, r29, 0x29c
/* 807599EC  4B FF EB 0D */	bl __register_global_object
/* 807599F0  38 61 01 28 */	addi r3, r1, 0x128
/* 807599F4  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 807599F8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807599FC  C0 7E 01 0C */	lfs f3, 0x10c(r30)
/* 80759A00  48 00 7A D9 */	bl __ct__4cXyzFfff
/* 80759A04  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 80759A08  38 63 00 84 */	addi r3, r3, 0x84
/* 80759A0C  38 81 01 28 */	addi r4, r1, 0x128
/* 80759A10  48 00 7A AD */	bl __ct__4cXyzFRC4cXyz
/* 80759A14  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759A18  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759A1C  38 BD 02 A8 */	addi r5, r29, 0x2a8
/* 80759A20  4B FF EA D9 */	bl __register_global_object
/* 80759A24  38 61 01 1C */	addi r3, r1, 0x11c
/* 80759A28  C0 3E 01 4C */	lfs f1, 0x14c(r30)
/* 80759A2C  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 80759A30  C0 7E 01 50 */	lfs f3, 0x150(r30)
/* 80759A34  48 00 7A A5 */	bl __ct__4cXyzFfff
/* 80759A38  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 80759A3C  38 63 00 90 */	addi r3, r3, 0x90
/* 80759A40  38 81 01 1C */	addi r4, r1, 0x11c
/* 80759A44  48 00 7A 79 */	bl __ct__4cXyzFRC4cXyz
/* 80759A48  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759A4C  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759A50  38 BD 02 B4 */	addi r5, r29, 0x2b4
/* 80759A54  4B FF EA A5 */	bl __register_global_object
/* 80759A58  38 61 01 10 */	addi r3, r1, 0x110
/* 80759A5C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80759A60  C0 5E 01 54 */	lfs f2, 0x154(r30)
/* 80759A64  C0 7E 01 58 */	lfs f3, 0x158(r30)
/* 80759A68  48 00 7A 71 */	bl __ct__4cXyzFfff
/* 80759A6C  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 80759A70  38 63 00 9C */	addi r3, r3, 0x9c
/* 80759A74  38 81 01 10 */	addi r4, r1, 0x110
/* 80759A78  48 00 7A 45 */	bl __ct__4cXyzFRC4cXyz
/* 80759A7C  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759A80  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759A84  38 BD 02 C0 */	addi r5, r29, 0x2c0
/* 80759A88  4B FF EA 71 */	bl __register_global_object
/* 80759A8C  38 61 01 04 */	addi r3, r1, 0x104
/* 80759A90  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 80759A94  C0 5E 01 14 */	lfs f2, 0x114(r30)
/* 80759A98  C0 7E 01 60 */	lfs f3, 0x160(r30)
/* 80759A9C  48 00 7A 3D */	bl __ct__4cXyzFfff
/* 80759AA0  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 80759AA4  38 63 00 A8 */	addi r3, r3, 0xa8
/* 80759AA8  38 81 01 04 */	addi r4, r1, 0x104
/* 80759AAC  48 00 7A 11 */	bl __ct__4cXyzFRC4cXyz
/* 80759AB0  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759AB4  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759AB8  38 BD 02 CC */	addi r5, r29, 0x2cc
/* 80759ABC  4B FF EA 3D */	bl __register_global_object
/* 80759AC0  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80759AC4  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 80759AC8  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80759ACC  C0 7E 01 68 */	lfs f3, 0x168(r30)
/* 80759AD0  48 00 7A 09 */	bl __ct__4cXyzFfff
/* 80759AD4  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 80759AD8  38 63 00 B4 */	addi r3, r3, 0xb4
/* 80759ADC  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80759AE0  48 00 79 DD */	bl __ct__4cXyzFRC4cXyz
/* 80759AE4  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759AE8  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759AEC  38 BD 02 D8 */	addi r5, r29, 0x2d8
/* 80759AF0  4B FF EA 09 */	bl __register_global_object
/* 80759AF4  38 61 00 EC */	addi r3, r1, 0xec
/* 80759AF8  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 80759AFC  C0 5E 01 70 */	lfs f2, 0x170(r30)
/* 80759B00  C0 7E 01 74 */	lfs f3, 0x174(r30)
/* 80759B04  48 00 79 D5 */	bl __ct__4cXyzFfff
/* 80759B08  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 80759B0C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80759B10  38 81 00 EC */	addi r4, r1, 0xec
/* 80759B14  48 00 79 A9 */	bl __ct__4cXyzFRC4cXyz
/* 80759B18  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759B1C  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759B20  38 BD 02 E4 */	addi r5, r29, 0x2e4
/* 80759B24  4B FF E9 D5 */	bl __register_global_object
/* 80759B28  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80759B2C  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 80759B30  C0 5E 01 7C */	lfs f2, 0x17c(r30)
/* 80759B34  C0 7E 01 80 */	lfs f3, 0x180(r30)
/* 80759B38  48 00 79 A1 */	bl __ct__4cXyzFfff
/* 80759B3C  38 7D 02 FC */	addi r3, r29, 0x2fc
/* 80759B40  38 63 00 CC */	addi r3, r3, 0xcc
/* 80759B44  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80759B48  48 00 79 75 */	bl __ct__4cXyzFRC4cXyz
/* 80759B4C  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 80759B50  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80759B54  38 BD 02 F0 */	addi r5, r29, 0x2f0
/* 80759B58  4B FF E9 A1 */	bl __register_global_object
/* 80759B5C  38 00 00 01 */	li r0, 1
/* 80759B60  98 1D 02 2C */	stb r0, 0x22c(r29)
lbl_80759B64:
/* 80759B64  38 60 00 00 */	li r3, 0
/* 80759B68  48 00 79 39 */	bl dComIfGp_getPlayerCameraID__Fi
/* 80759B6C  48 00 79 1D */	bl dComIfGp_getCamera__Fi
/* 80759B70  7C 7C 1B 78 */	mr r28, r3
/* 80759B74  38 60 00 00 */	li r3, 0
/* 80759B78  48 00 79 11 */	bl dComIfGp_getCamera__Fi
/* 80759B7C  7C 7A 1B 78 */	mr r26, r3
/* 80759B80  38 60 00 00 */	li r3, 0
/* 80759B84  48 00 78 ED */	bl dComIfGp_getPlayer__Fi
/* 80759B88  7C 7B 1B 78 */	mr r27, r3
/* 80759B8C  80 9F 06 84 */	lwz r4, 0x684(r31)
/* 80759B90  28 04 00 84 */	cmplwi r4, 0x84
/* 80759B94  41 81 1B 54 */	bgt lbl_8075B6E8
/* 80759B98  3C 60 80 76 */	lis r3, lit_5018@ha
/* 80759B9C  38 63 19 58 */	addi r3, r3, lit_5018@l
/* 80759BA0  54 80 10 3A */	slwi r0, r4, 2
/* 80759BA4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80759BA8  7C 09 03 A6 */	mtctr r0
/* 80759BAC  4E 80 04 20 */	bctr 
lbl_80759BB0:
/* 80759BB0  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 80759BB4  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 80759BB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80759BBC  41 81 1B 2C */	bgt lbl_8075B6E8
/* 80759BC0  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 80759BC4  38 03 00 01 */	addi r0, r3, 1
/* 80759BC8  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_80759BCC:
/* 80759BCC  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80759BD0  28 00 00 02 */	cmplwi r0, 2
/* 80759BD4  41 82 00 44 */	beq lbl_80759C18
/* 80759BD8  7F E3 FB 78 */	mr r3, r31
/* 80759BDC  38 80 00 02 */	li r4, 2
/* 80759BE0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80759BE4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80759BE8  38 C0 00 00 */	li r6, 0
/* 80759BEC  4B 8C 1D 1C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80759BF0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80759BF4  60 00 00 02 */	ori r0, r0, 2
/* 80759BF8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80759BFC  38 7F 0A BC */	addi r3, r31, 0xabc
/* 80759C00  38 9A 00 D8 */	addi r4, r26, 0xd8
/* 80759C04  48 00 78 51 */	bl __as__4cXyzFRC4cXyz
/* 80759C08  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 80759C0C  38 9A 00 E4 */	addi r4, r26, 0xe4
/* 80759C10  48 00 78 45 */	bl __as__4cXyzFRC4cXyz
/* 80759C14  48 00 1A D4 */	b lbl_8075B6E8
lbl_80759C18:
/* 80759C18  38 7C 02 48 */	addi r3, r28, 0x248
/* 80759C1C  4B A0 78 B4 */	b Stop__9dCamera_cFv
/* 80759C20  38 7C 02 48 */	addi r3, r28, 0x248
/* 80759C24  38 80 00 03 */	li r4, 3
/* 80759C28  4B A0 93 E4 */	b SetTrimSize__9dCamera_cFl
/* 80759C2C  48 00 78 19 */	bl daPy_getPlayerActorClass__Fv
/* 80759C30  48 00 78 01 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80759C34  48 00 78 11 */	bl daPy_getPlayerActorClass__Fv
/* 80759C38  38 80 00 04 */	li r4, 4
/* 80759C3C  38 A0 00 02 */	li r5, 2
/* 80759C40  38 C0 00 00 */	li r6, 0
/* 80759C44  38 E0 00 00 */	li r7, 0
/* 80759C48  48 00 77 D5 */	bl changeDemoMode__9daPy_py_cFUliis
/* 80759C4C  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 80759C50  2C 00 00 01 */	cmpwi r0, 1
/* 80759C54  40 82 00 70 */	bne lbl_80759CC4
/* 80759C58  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 80759C5C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80759C60  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 80759C64  C0 7E 01 88 */	lfs f3, 0x188(r30)
/* 80759C68  48 00 77 A5 */	bl set__4cXyzFfff
/* 80759C6C  48 00 77 D9 */	bl daPy_getPlayerActorClass__Fv
/* 80759C70  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 80759C74  38 A0 80 00 */	li r5, -32768
/* 80759C78  38 C0 00 00 */	li r6, 0
/* 80759C7C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80759C80  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80759C84  7D 89 03 A6 */	mtctr r12
/* 80759C88  4E 80 04 21 */	bctrl 
/* 80759C8C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80759C90  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80759C94  80 63 00 00 */	lwz r3, 0(r3)
/* 80759C98  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80759C9C  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000041@ha */
/* 80759CA0  38 84 00 41 */	addi r4, r4, 0x0041 /* 0x02000041@l */
/* 80759CA4  4B B5 5E F0 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 80759CA8  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 80759CAC  38 9D 01 48 */	addi r4, r29, 0x148
/* 80759CB0  48 00 77 41 */	bl set__4cXyzFRC3Vec
/* 80759CB4  38 7F 0A BC */	addi r3, r31, 0xabc
/* 80759CB8  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 80759CBC  48 00 77 35 */	bl set__4cXyzFRC3Vec
/* 80759CC0  48 00 00 74 */	b lbl_80759D34
lbl_80759CC4:
/* 80759CC4  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 80759CC8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80759CCC  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 80759CD0  C0 7E 01 8C */	lfs f3, 0x18c(r30)
/* 80759CD4  48 00 77 39 */	bl set__4cXyzFfff
/* 80759CD8  48 00 77 6D */	bl daPy_getPlayerActorClass__Fv
/* 80759CDC  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 80759CE0  38 A0 80 00 */	li r5, -32768
/* 80759CE4  38 C0 00 00 */	li r6, 0
/* 80759CE8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80759CEC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80759CF0  7D 89 03 A6 */	mtctr r12
/* 80759CF4  4E 80 04 21 */	bctrl 
/* 80759CF8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80759CFC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80759D00  80 63 00 00 */	lwz r3, 0(r3)
/* 80759D04  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80759D08  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000042@ha */
/* 80759D0C  38 84 00 42 */	addi r4, r4, 0x0042 /* 0x02000042@l */
/* 80759D10  4B B5 5E 84 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 80759D14  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 80759D18  38 9D 01 48 */	addi r4, r29, 0x148
/* 80759D1C  38 84 00 78 */	addi r4, r4, 0x78
/* 80759D20  48 00 76 D1 */	bl set__4cXyzFRC3Vec
/* 80759D24  38 7F 0A BC */	addi r3, r31, 0xabc
/* 80759D28  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 80759D2C  38 84 00 78 */	addi r4, r4, 0x78
/* 80759D30  48 00 76 C1 */	bl set__4cXyzFRC3Vec
lbl_80759D34:
/* 80759D34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80759D38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80759D3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80759D40  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80759D44  4B B5 60 D4 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 80759D48  38 00 00 02 */	li r0, 2
/* 80759D4C  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 80759D50  7F E3 FB 78 */	mr r3, r31
/* 80759D54  38 80 00 08 */	li r4, 8
/* 80759D58  38 A0 00 00 */	li r5, 0
/* 80759D5C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80759D60  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80759D64  4B FF EA 9D */	bl setBck__8daE_PZ_cFiUcff
/* 80759D68  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80759D6C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80759D70  48 00 76 41 */	bl setFrame__13mDoExt_morf_cFf
/* 80759D74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80759D78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80759D7C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80759D80  7F E4 FB 78 */	mr r4, r31
/* 80759D84  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 80759D88  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 80759D8C  38 C0 00 00 */	li r6, 0
/* 80759D90  4B 8E 8B 84 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80759D94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80759D98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80759D9C  38 63 09 78 */	addi r3, r3, 0x978
/* 80759DA0  38 80 00 29 */	li r4, 0x29
/* 80759DA4  4B 8D AD F4 */	b onSwitch__12dSv_danBit_cFi
/* 80759DA8  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 80759DAC  38 03 00 01 */	addi r0, r3, 1
/* 80759DB0  90 1F 06 84 */	stw r0, 0x684(r31)
/* 80759DB4  48 00 19 34 */	b lbl_8075B6E8
lbl_80759DB8:
/* 80759DB8  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 80759DBC  28 00 00 00 */	cmplwi r0, 0
/* 80759DC0  41 82 00 54 */	beq lbl_80759E14
/* 80759DC4  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 80759DC8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80759DCC  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 80759DD0  C0 7E 01 8C */	lfs f3, 0x18c(r30)
/* 80759DD4  48 00 76 39 */	bl set__4cXyzFfff
/* 80759DD8  48 00 76 6D */	bl daPy_getPlayerActorClass__Fv
/* 80759DDC  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 80759DE0  38 A0 80 00 */	li r5, -32768
/* 80759DE4  38 C0 00 00 */	li r6, 0
/* 80759DE8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80759DEC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80759DF0  7D 89 03 A6 */	mtctr r12
/* 80759DF4  4E 80 04 21 */	bctrl 
/* 80759DF8  48 00 76 4D */	bl daPy_getPlayerActorClass__Fv
/* 80759DFC  38 80 00 02 */	li r4, 2
/* 80759E00  38 A0 00 00 */	li r5, 0
/* 80759E04  38 C0 00 00 */	li r6, 0
/* 80759E08  38 E0 00 00 */	li r7, 0
/* 80759E0C  48 00 76 11 */	bl changeDemoMode__9daPy_py_cFUliis
/* 80759E10  48 00 18 D8 */	b lbl_8075B6E8
lbl_80759E14:
/* 80759E14  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80759E18  C0 3E 01 90 */	lfs f1, 0x190(r30)
/* 80759E1C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80759E20  C0 7E 01 94 */	lfs f3, 0x194(r30)
/* 80759E24  48 00 75 E9 */	bl set__4cXyzFfff
/* 80759E28  7F E3 FB 78 */	mr r3, r31
/* 80759E2C  48 00 75 59 */	bl fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c
/* 80759E30  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80759E34  38 00 00 96 */	li r0, 0x96
/* 80759E38  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 80759E3C  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 80759E40  38 03 00 01 */	addi r0, r3, 1
/* 80759E44  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_80759E48:
/* 80759E48  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 80759E4C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80759E50  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 80759E54  C0 7E 01 98 */	lfs f3, 0x198(r30)
/* 80759E58  48 00 75 B5 */	bl set__4cXyzFfff
/* 80759E5C  7F 63 DB 78 */	mr r3, r27
/* 80759E60  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 80759E64  48 00 75 05 */	bl changeDemoPos0__9daPy_py_cFPC4cXyz
/* 80759E68  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 80759E6C  38 9D 01 48 */	addi r4, r29, 0x148
/* 80759E70  38 84 00 0C */	addi r4, r4, 0xc
/* 80759E74  48 00 75 7D */	bl set__4cXyzFRC3Vec
/* 80759E78  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 80759E7C  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 80759E80  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80759E84  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80759E88  C0 7E 01 9C */	lfs f3, 0x19c(r30)
/* 80759E8C  4B B1 5C 2C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80759E90  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 80759E94  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 80759E98  38 84 00 0C */	addi r4, r4, 0xc
/* 80759E9C  48 00 75 55 */	bl set__4cXyzFRC3Vec
/* 80759EA0  38 7F 0A BC */	addi r3, r31, 0xabc
/* 80759EA4  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 80759EA8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80759EAC  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80759EB0  C0 7E 01 9C */	lfs f3, 0x19c(r30)
/* 80759EB4  4B B1 5C 04 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80759EB8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80759EBC  38 9F 0A C8 */	addi r4, r31, 0xac8
/* 80759EC0  38 A1 02 B4 */	addi r5, r1, 0x2b4
/* 80759EC4  4B B0 CC 70 */	b __mi__4cXyzCFRC3Vec
/* 80759EC8  38 61 02 9C */	addi r3, r1, 0x29c
/* 80759ECC  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80759ED0  48 00 75 85 */	bl __as__4cXyzFRC4cXyz
/* 80759ED4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80759ED8  38 9F 0A BC */	addi r4, r31, 0xabc
/* 80759EDC  38 A1 02 A8 */	addi r5, r1, 0x2a8
/* 80759EE0  4B B0 CC 54 */	b __mi__4cXyzCFRC3Vec
/* 80759EE4  38 61 02 90 */	addi r3, r1, 0x290
/* 80759EE8  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80759EEC  48 00 75 69 */	bl __as__4cXyzFRC4cXyz
/* 80759EF0  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 80759EF4  28 00 00 00 */	cmplwi r0, 0
/* 80759EF8  40 82 17 F0 */	bne lbl_8075B6E8
/* 80759EFC  38 61 02 9C */	addi r3, r1, 0x29c
/* 80759F00  48 00 73 55 */	bl abs__4cXyzCFv
/* 80759F04  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80759F08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80759F0C  41 81 17 DC */	bgt lbl_8075B6E8
/* 80759F10  38 61 02 90 */	addi r3, r1, 0x290
/* 80759F14  48 00 73 41 */	bl abs__4cXyzCFv
/* 80759F18  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80759F1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80759F20  41 81 17 C8 */	bgt lbl_8075B6E8
/* 80759F24  38 00 00 64 */	li r0, 0x64
/* 80759F28  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 80759F2C  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 80759F30  38 03 00 01 */	addi r0, r3, 1
/* 80759F34  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_80759F38:
/* 80759F38  7F E3 FB 78 */	mr r3, r31
/* 80759F3C  38 80 00 19 */	li r4, 0x19
/* 80759F40  48 00 72 E1 */	bl fopAcM_onSwitch__FPC10fopAc_ac_ci
/* 80759F44  38 00 00 50 */	li r0, 0x50
/* 80759F48  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 80759F4C  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 80759F50  38 03 00 01 */	addi r0, r3, 1
/* 80759F54  90 1F 06 84 */	stw r0, 0x684(r31)
/* 80759F58  48 00 17 90 */	b lbl_8075B6E8
lbl_80759F5C:
/* 80759F5C  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 80759F60  28 00 00 00 */	cmplwi r0, 0
/* 80759F64  41 82 00 28 */	beq lbl_80759F8C
/* 80759F68  28 00 00 3C */	cmplwi r0, 0x3c
/* 80759F6C  40 82 17 7C */	bne lbl_8075B6E8
/* 80759F70  48 00 74 D5 */	bl daPy_getPlayerActorClass__Fv
/* 80759F74  38 80 00 17 */	li r4, 0x17
/* 80759F78  38 A0 00 01 */	li r5, 1
/* 80759F7C  38 C0 00 00 */	li r6, 0
/* 80759F80  38 E0 00 00 */	li r7, 0
/* 80759F84  48 00 74 99 */	bl changeDemoMode__9daPy_py_cFUliis
/* 80759F88  48 00 17 60 */	b lbl_8075B6E8
lbl_80759F8C:
/* 80759F8C  38 00 00 3C */	li r0, 0x3c
/* 80759F90  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 80759F94  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 80759F98  38 03 00 01 */	addi r0, r3, 1
/* 80759F9C  90 1F 06 84 */	stw r0, 0x684(r31)
/* 80759FA0  48 00 17 48 */	b lbl_8075B6E8
lbl_80759FA4:
/* 80759FA4  7F E3 FB 78 */	mr r3, r31
/* 80759FA8  38 80 00 1A */	li r4, 0x1a
/* 80759FAC  48 00 72 75 */	bl fopAcM_onSwitch__FPC10fopAc_ac_ci
/* 80759FB0  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 80759FB4  28 00 00 00 */	cmplwi r0, 0
/* 80759FB8  41 82 00 4C */	beq lbl_8075A004
/* 80759FBC  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 80759FC0  38 9D 01 48 */	addi r4, r29, 0x148
/* 80759FC4  38 84 00 18 */	addi r4, r4, 0x18
/* 80759FC8  48 00 74 29 */	bl set__4cXyzFRC3Vec
/* 80759FCC  38 7F 0A BC */	addi r3, r31, 0xabc
/* 80759FD0  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 80759FD4  38 84 00 18 */	addi r4, r4, 0x18
/* 80759FD8  48 00 74 19 */	bl set__4cXyzFRC3Vec
/* 80759FDC  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 80759FE0  28 00 00 1E */	cmplwi r0, 0x1e
/* 80759FE4  40 82 17 04 */	bne lbl_8075B6E8
/* 80759FE8  48 00 74 5D */	bl daPy_getPlayerActorClass__Fv
/* 80759FEC  38 80 00 19 */	li r4, 0x19
/* 80759FF0  38 A0 00 00 */	li r5, 0
/* 80759FF4  38 C0 00 00 */	li r6, 0
/* 80759FF8  38 E0 00 00 */	li r7, 0
/* 80759FFC  48 00 74 21 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075A000  48 00 16 E8 */	b lbl_8075B6E8
lbl_8075A004:
/* 8075A004  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075A008  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075A00C  38 84 00 60 */	addi r4, r4, 0x60
/* 8075A010  48 00 73 E1 */	bl set__4cXyzFRC3Vec
/* 8075A014  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075A018  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075A01C  38 84 00 60 */	addi r4, r4, 0x60
/* 8075A020  48 00 73 D1 */	bl set__4cXyzFRC3Vec
/* 8075A024  38 00 00 0A */	li r0, 0xa
/* 8075A028  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075A02C  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A030  48 00 16 B8 */	b lbl_8075B6E8
lbl_8075A034:
/* 8075A034  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075A038  28 00 00 00 */	cmplwi r0, 0
/* 8075A03C  41 82 00 14 */	beq lbl_8075A050
/* 8075A040  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8075A044  54 00 00 3E */	slwi r0, r0, 0
/* 8075A048  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8075A04C  48 00 16 9C */	b lbl_8075B6E8
lbl_8075A050:
/* 8075A050  38 00 00 01 */	li r0, 1
/* 8075A054  98 1F 08 44 */	stb r0, 0x844(r31)
/* 8075A058  7F E3 FB 78 */	mr r3, r31
/* 8075A05C  38 80 00 01 */	li r4, 1
/* 8075A060  4B FF E8 59 */	bl mEntrySUB__8daE_PZ_cFb
/* 8075A064  7F E3 FB 78 */	mr r3, r31
/* 8075A068  38 80 00 08 */	li r4, 8
/* 8075A06C  38 A0 00 00 */	li r5, 0
/* 8075A070  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075A074  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075A078  4B FF E7 89 */	bl setBck__8daE_PZ_cFiUcff
/* 8075A07C  38 7F 07 9C */	addi r3, r31, 0x79c
/* 8075A080  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075A084  C0 5F 07 CC */	lfs f2, 0x7cc(r31)
/* 8075A088  FC 60 08 90 */	fmr f3, f1
/* 8075A08C  48 00 73 81 */	bl set__4cXyzFfff
/* 8075A090  38 00 00 08 */	li r0, 8
/* 8075A094  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075A098  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075A09C  38 03 00 01 */	addi r0, r3, 1
/* 8075A0A0  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A0A4  48 00 16 44 */	b lbl_8075B6E8
lbl_8075A0A8:
/* 8075A0A8  7F E3 FB 78 */	mr r3, r31
/* 8075A0AC  38 80 00 00 */	li r4, 0
/* 8075A0B0  4B FF E9 E5 */	bl mPzScaleSet__8daE_PZ_cFb
/* 8075A0B4  7F E3 FB 78 */	mr r3, r31
/* 8075A0B8  48 00 72 CD */	bl fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c
/* 8075A0BC  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8075A0C0  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075A0C4  28 00 00 01 */	cmplwi r0, 1
/* 8075A0C8  40 82 00 44 */	bne lbl_8075A10C
/* 8075A0CC  48 00 71 3D */	bl checkNowWolf__9daPy_py_cFv
/* 8075A0D0  28 03 00 00 */	cmplwi r3, 0
/* 8075A0D4  40 82 00 20 */	bne lbl_8075A0F4
/* 8075A0D8  48 00 73 6D */	bl daPy_getPlayerActorClass__Fv
/* 8075A0DC  38 80 00 17 */	li r4, 0x17
/* 8075A0E0  38 A0 00 01 */	li r5, 1
/* 8075A0E4  38 C0 00 02 */	li r6, 2
/* 8075A0E8  38 E0 00 00 */	li r7, 0
/* 8075A0EC  48 00 73 31 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075A0F0  48 00 00 1C */	b lbl_8075A10C
lbl_8075A0F4:
/* 8075A0F4  48 00 73 51 */	bl daPy_getPlayerActorClass__Fv
/* 8075A0F8  38 80 00 17 */	li r4, 0x17
/* 8075A0FC  38 A0 00 01 */	li r5, 1
/* 8075A100  38 C0 00 00 */	li r6, 0
/* 8075A104  38 E0 00 00 */	li r7, 0
/* 8075A108  48 00 73 15 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_8075A10C:
/* 8075A10C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075A110  48 00 70 C9 */	bl isStop__13mDoExt_morf_cFv
/* 8075A114  2C 03 00 00 */	cmpwi r3, 0
/* 8075A118  41 82 15 D0 */	beq lbl_8075B6E8
/* 8075A11C  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 8075A120  2C 00 00 15 */	cmpwi r0, 0x15
/* 8075A124  41 82 15 C4 */	beq lbl_8075B6E8
/* 8075A128  7F E3 FB 78 */	mr r3, r31
/* 8075A12C  38 80 00 15 */	li r4, 0x15
/* 8075A130  38 A0 00 02 */	li r5, 2
/* 8075A134  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075A138  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075A13C  4B FF E6 C5 */	bl setBck__8daE_PZ_cFiUcff
/* 8075A140  38 00 00 28 */	li r0, 0x28
/* 8075A144  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075A148  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075A14C  38 03 00 01 */	addi r0, r3, 1
/* 8075A150  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A154  48 00 15 94 */	b lbl_8075B6E8
lbl_8075A158:
/* 8075A158  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075A15C  28 00 00 00 */	cmplwi r0, 0
/* 8075A160  40 82 15 88 */	bne lbl_8075B6E8
/* 8075A164  7F E3 FB 78 */	mr r3, r31
/* 8075A168  38 80 00 0B */	li r4, 0xb
/* 8075A16C  38 A0 00 00 */	li r5, 0
/* 8075A170  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075A174  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075A178  4B FF E6 89 */	bl setBck__8daE_PZ_cFiUcff
/* 8075A17C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703EC@ha */
/* 8075A180  38 03 03 EC */	addi r0, r3, 0x03EC /* 0x000703EC@l */
/* 8075A184  90 01 00 18 */	stw r0, 0x18(r1)
/* 8075A188  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8075A18C  38 81 00 18 */	addi r4, r1, 0x18
/* 8075A190  38 A0 FF FF */	li r5, -1
/* 8075A194  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 8075A198  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8075A19C  7D 89 03 A6 */	mtctr r12
/* 8075A1A0  4E 80 04 21 */	bctrl 
/* 8075A1A4  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075A1A8  38 03 00 01 */	addi r0, r3, 1
/* 8075A1AC  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A1B0  48 00 15 38 */	b lbl_8075B6E8
lbl_8075A1B4:
/* 8075A1B4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075A1B8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8075A1BC  FC 00 00 1E */	fctiwz f0, f0
/* 8075A1C0  D8 01 02 C0 */	stfd f0, 0x2c0(r1)
/* 8075A1C4  80 01 02 C4 */	lwz r0, 0x2c4(r1)
/* 8075A1C8  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8075A1CC  40 81 00 3C */	ble lbl_8075A208
/* 8075A1D0  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075A1D4  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075A1D8  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 8075A1DC  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8075A1E0  FC 60 08 90 */	fmr f3, f1
/* 8075A1E4  38 84 00 24 */	addi r4, r4, 0x24
/* 8075A1E8  4B B1 58 D0 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075A1EC  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075A1F0  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075A1F4  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 8075A1F8  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8075A1FC  FC 60 08 90 */	fmr f3, f1
/* 8075A200  38 84 00 24 */	addi r4, r4, 0x24
/* 8075A204  4B B1 58 B4 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_8075A208:
/* 8075A208  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 8075A20C  2C 00 00 0B */	cmpwi r0, 0xb
/* 8075A210  40 82 00 20 */	bne lbl_8075A230
/* 8075A214  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075A218  48 00 6F C1 */	bl isStop__13mDoExt_morf_cFv
/* 8075A21C  2C 03 00 00 */	cmpwi r3, 0
/* 8075A220  40 82 00 10 */	bne lbl_8075A230
/* 8075A224  38 00 00 1E */	li r0, 0x1e
/* 8075A228  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075A22C  48 00 14 BC */	b lbl_8075B6E8
lbl_8075A230:
/* 8075A230  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075A234  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075A238  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 8075A23C  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8075A240  FC 60 08 90 */	fmr f3, f1
/* 8075A244  38 84 00 24 */	addi r4, r4, 0x24
/* 8075A248  4B B1 58 70 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075A24C  7F E3 FB 78 */	mr r3, r31
/* 8075A250  4B FF EB 55 */	bl mSetFirePos__8daE_PZ_cFv
/* 8075A254  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 8075A258  2C 00 00 0D */	cmpwi r0, 0xd
/* 8075A25C  41 82 00 64 */	beq lbl_8075A2C0
/* 8075A260  7F E3 FB 78 */	mr r3, r31
/* 8075A264  38 80 00 0D */	li r4, 0xd
/* 8075A268  38 A0 00 02 */	li r5, 2
/* 8075A26C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075A270  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075A274  4B FF E5 8D */	bl setBck__8daE_PZ_cFiUcff
/* 8075A278  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8075A27C  7C 07 07 74 */	extsb r7, r0
/* 8075A280  38 00 00 00 */	li r0, 0
/* 8075A284  90 01 00 08 */	stw r0, 8(r1)
/* 8075A288  38 60 01 E4 */	li r3, 0x1e4
/* 8075A28C  28 1F 00 00 */	cmplwi r31, 0
/* 8075A290  41 82 00 0C */	beq lbl_8075A29C
/* 8075A294  80 9F 00 04 */	lwz r4, 4(r31)
/* 8075A298  48 00 00 08 */	b lbl_8075A2A0
lbl_8075A29C:
/* 8075A29C  38 80 FF FF */	li r4, -1
lbl_8075A2A0:
/* 8075A2A0  88 BF 07 D4 */	lbz r5, 0x7d4(r31)
/* 8075A2A4  38 A5 00 16 */	addi r5, r5, 0x16
/* 8075A2A8  38 DF 07 A8 */	addi r6, r31, 0x7a8
/* 8075A2AC  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8075A2B0  39 20 00 00 */	li r9, 0
/* 8075A2B4  39 40 FF FF */	li r10, -1
/* 8075A2B8  4B 8B FC 38 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8075A2BC  90 7F 04 A4 */	stw r3, 0x4a4(r31)
lbl_8075A2C0:
/* 8075A2C0  38 00 00 00 */	li r0, 0
/* 8075A2C4  98 1F 07 D8 */	stb r0, 0x7d8(r31)
/* 8075A2C8  98 1D 00 69 */	stb r0, 0x69(r29)
/* 8075A2CC  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075A2D0  28 00 00 00 */	cmplwi r0, 0
/* 8075A2D4  40 82 14 14 */	bne lbl_8075B6E8
/* 8075A2D8  38 00 00 78 */	li r0, 0x78
/* 8075A2DC  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075A2E0  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075A2E4  2C 03 00 0D */	cmpwi r3, 0xd
/* 8075A2E8  40 82 00 10 */	bne lbl_8075A2F8
/* 8075A2EC  38 03 00 01 */	addi r0, r3, 1
/* 8075A2F0  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A2F4  48 00 13 F4 */	b lbl_8075B6E8
lbl_8075A2F8:
/* 8075A2F8  7F E3 FB 78 */	mr r3, r31
/* 8075A2FC  38 80 00 0C */	li r4, 0xc
/* 8075A300  38 A0 00 00 */	li r5, 0
/* 8075A304  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8075A308  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075A30C  4B FF E4 F5 */	bl setBck__8daE_PZ_cFiUcff
/* 8075A310  38 00 00 7B */	li r0, 0x7b
/* 8075A314  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A318  48 00 13 D0 */	b lbl_8075B6E8
lbl_8075A31C:
/* 8075A31C  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075A320  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075A324  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 8075A328  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8075A32C  FC 60 08 90 */	fmr f3, f1
/* 8075A330  38 84 00 24 */	addi r4, r4, 0x24
/* 8075A334  4B B1 57 84 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075A338  7F E3 FB 78 */	mr r3, r31
/* 8075A33C  4B FF EA 69 */	bl mSetFirePos__8daE_PZ_cFv
/* 8075A340  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075A344  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075A348  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8075A34C  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8075A350  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8075A354  38 84 00 30 */	addi r4, r4, 0x30
/* 8075A358  4B B1 57 60 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075A35C  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075A360  28 00 00 00 */	cmplwi r0, 0
/* 8075A364  40 82 13 84 */	bne lbl_8075B6E8
/* 8075A368  48 00 70 DD */	bl daPy_getPlayerActorClass__Fv
/* 8075A36C  38 80 00 10 */	li r4, 0x10
/* 8075A370  38 A0 00 00 */	li r5, 0
/* 8075A374  38 C0 00 00 */	li r6, 0
/* 8075A378  38 E0 00 00 */	li r7, 0
/* 8075A37C  48 00 70 A1 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075A380  7F E3 FB 78 */	mr r3, r31
/* 8075A384  38 80 00 0C */	li r4, 0xc
/* 8075A388  38 A0 00 00 */	li r5, 0
/* 8075A38C  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8075A390  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075A394  4B FF E4 6D */	bl setBck__8daE_PZ_cFiUcff
/* 8075A398  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075A39C  38 03 00 01 */	addi r0, r3, 1
/* 8075A3A0  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A3A4  48 00 13 44 */	b lbl_8075B6E8
lbl_8075A3A8:
/* 8075A3A8  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 8075A3AC  2C 04 00 0C */	cmpwi r4, 0xc
/* 8075A3B0  40 82 00 20 */	bne lbl_8075A3D0
/* 8075A3B4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075A3B8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8075A3BC  FC 00 00 1E */	fctiwz f0, f0
/* 8075A3C0  D8 01 02 C0 */	stfd f0, 0x2c0(r1)
/* 8075A3C4  80 01 02 C4 */	lwz r0, 0x2c4(r1)
/* 8075A3C8  2C 00 00 22 */	cmpwi r0, 0x22
/* 8075A3CC  41 82 00 28 */	beq lbl_8075A3F4
lbl_8075A3D0:
/* 8075A3D0  2C 04 00 09 */	cmpwi r4, 9
/* 8075A3D4  40 82 00 48 */	bne lbl_8075A41C
/* 8075A3D8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075A3DC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8075A3E0  FC 00 00 1E */	fctiwz f0, f0
/* 8075A3E4  D8 01 02 C0 */	stfd f0, 0x2c0(r1)
/* 8075A3E8  80 01 02 C4 */	lwz r0, 0x2c4(r1)
/* 8075A3EC  2C 00 00 14 */	cmpwi r0, 0x14
/* 8075A3F0  40 82 00 2C */	bne lbl_8075A41C
lbl_8075A3F4:
/* 8075A3F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070402@ha */
/* 8075A3F8  38 03 04 02 */	addi r0, r3, 0x0402 /* 0x00070402@l */
/* 8075A3FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8075A400  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8075A404  38 81 00 14 */	addi r4, r1, 0x14
/* 8075A408  38 A0 FF FF */	li r5, -1
/* 8075A40C  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 8075A410  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8075A414  7D 89 03 A6 */	mtctr r12
/* 8075A418  4E 80 04 21 */	bctrl 
lbl_8075A41C:
/* 8075A41C  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 8075A420  38 81 00 1C */	addi r4, r1, 0x1c
/* 8075A424  4B 8B F5 98 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075A428  2C 03 00 00 */	cmpwi r3, 0
/* 8075A42C  41 82 00 C0 */	beq lbl_8075A4EC
/* 8075A430  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8075A434  28 04 00 00 */	cmplwi r4, 0
/* 8075A438  41 82 00 B4 */	beq lbl_8075A4EC
/* 8075A43C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075A440  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8075A444  FC 00 00 1E */	fctiwz f0, f0
/* 8075A448  D8 01 02 C0 */	stfd f0, 0x2c0(r1)
/* 8075A44C  80 01 02 C4 */	lwz r0, 0x2c4(r1)
/* 8075A450  2C 00 00 24 */	cmpwi r0, 0x24
/* 8075A454  40 80 00 14 */	bge lbl_8075A468
/* 8075A458  38 64 04 D0 */	addi r3, r4, 0x4d0
/* 8075A45C  38 9F 07 A8 */	addi r4, r31, 0x7a8
/* 8075A460  48 00 6F 91 */	bl set__4cXyzFRC3Vec
/* 8075A464  48 00 12 84 */	b lbl_8075B6E8
lbl_8075A468:
/* 8075A468  D8 01 02 C0 */	stfd f0, 0x2c0(r1)
/* 8075A46C  80 01 02 C4 */	lwz r0, 0x2c4(r1)
/* 8075A470  2C 00 00 24 */	cmpwi r0, 0x24
/* 8075A474  40 82 12 74 */	bne lbl_8075B6E8
/* 8075A478  38 00 00 14 */	li r0, 0x14
/* 8075A47C  90 04 06 84 */	stw r0, 0x684(r4)
/* 8075A480  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000889D@ha */
/* 8075A484  38 63 88 9D */	addi r3, r3, 0x889D /* 0x0000889D@l */
/* 8075A488  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8075A48C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8075A490  38 BF 04 E4 */	addi r5, r31, 0x4e4
/* 8075A494  38 C0 00 00 */	li r6, 0
/* 8075A498  48 00 6C CD */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 8075A49C  48 00 6D 6D */	bl checkNowWolf__9daPy_py_cFv
/* 8075A4A0  28 03 00 00 */	cmplwi r3, 0
/* 8075A4A4  40 82 00 20 */	bne lbl_8075A4C4
/* 8075A4A8  48 00 6F 9D */	bl daPy_getPlayerActorClass__Fv
/* 8075A4AC  38 80 00 17 */	li r4, 0x17
/* 8075A4B0  38 A0 00 01 */	li r5, 1
/* 8075A4B4  38 C0 00 02 */	li r6, 2
/* 8075A4B8  38 E0 00 00 */	li r7, 0
/* 8075A4BC  48 00 6F 61 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075A4C0  48 00 00 1C */	b lbl_8075A4DC
lbl_8075A4C4:
/* 8075A4C4  48 00 6F 81 */	bl daPy_getPlayerActorClass__Fv
/* 8075A4C8  38 80 00 17 */	li r4, 0x17
/* 8075A4CC  38 A0 00 01 */	li r5, 1
/* 8075A4D0  38 C0 00 00 */	li r6, 0
/* 8075A4D4  38 E0 00 00 */	li r7, 0
/* 8075A4D8  48 00 6F 45 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_8075A4DC:
/* 8075A4DC  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075A4E0  38 03 00 01 */	addi r0, r3, 1
/* 8075A4E4  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A4E8  48 00 12 00 */	b lbl_8075B6E8
lbl_8075A4EC:
/* 8075A4EC  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075A4F0  38 03 00 01 */	addi r0, r3, 1
/* 8075A4F4  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A4F8  48 00 11 F0 */	b lbl_8075B6E8
lbl_8075A4FC:
/* 8075A4FC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075A500  48 00 6C D9 */	bl isStop__13mDoExt_morf_cFv
/* 8075A504  2C 03 00 00 */	cmpwi r3, 0
/* 8075A508  40 82 11 E0 */	bne lbl_8075B6E8
/* 8075A50C  7F E3 FB 78 */	mr r3, r31
/* 8075A510  38 80 00 15 */	li r4, 0x15
/* 8075A514  38 A0 00 02 */	li r5, 2
/* 8075A518  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075A51C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075A520  4B FF E2 E1 */	bl setBck__8daE_PZ_cFiUcff
/* 8075A524  48 00 6F 21 */	bl daPy_getPlayerActorClass__Fv
/* 8075A528  38 80 00 17 */	li r4, 0x17
/* 8075A52C  38 A0 00 01 */	li r5, 1
/* 8075A530  38 C0 00 00 */	li r6, 0
/* 8075A534  38 E0 00 00 */	li r7, 0
/* 8075A538  48 00 6E E5 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075A53C  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 8075A540  38 81 00 1C */	addi r4, r1, 0x1c
/* 8075A544  4B 8B F4 78 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075A548  2C 03 00 00 */	cmpwi r3, 0
/* 8075A54C  41 82 00 18 */	beq lbl_8075A564
/* 8075A550  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8075A554  28 03 00 00 */	cmplwi r3, 0
/* 8075A558  41 82 00 0C */	beq lbl_8075A564
/* 8075A55C  38 00 00 15 */	li r0, 0x15
/* 8075A560  90 03 06 84 */	stw r0, 0x684(r3)
lbl_8075A564:
/* 8075A564  38 00 00 78 */	li r0, 0x78
/* 8075A568  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075A56C  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075A570  38 03 00 01 */	addi r0, r3, 1
/* 8075A574  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075A578:
/* 8075A578  38 00 00 01 */	li r0, 1
/* 8075A57C  98 1F 08 41 */	stb r0, 0x841(r31)
/* 8075A580  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 8075A584  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 8075A588  EC 01 00 2A */	fadds f0, f1, f0
/* 8075A58C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8075A590  38 7F 05 50 */	addi r3, r31, 0x550
/* 8075A594  38 9F 05 38 */	addi r4, r31, 0x538
/* 8075A598  48 00 6E BD */	bl __as__4cXyzFRC4cXyz
/* 8075A59C  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8075A5A0  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 8075A5A4  EC 01 00 2A */	fadds f0, f1, f0
/* 8075A5A8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8075A5AC  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075A5B0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075A5B4  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8075A5B8  C0 7E 01 A8 */	lfs f3, 0x1a8(r30)
/* 8075A5BC  48 00 6E 51 */	bl set__4cXyzFfff
/* 8075A5C0  48 00 6E 85 */	bl daPy_getPlayerActorClass__Fv
/* 8075A5C4  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075A5C8  38 A0 80 00 */	li r5, -32768
/* 8075A5CC  38 C0 00 00 */	li r6, 0
/* 8075A5D0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8075A5D4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8075A5D8  7D 89 03 A6 */	mtctr r12
/* 8075A5DC  4E 80 04 21 */	bctrl 
/* 8075A5E0  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075A5E4  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075A5E8  38 84 00 48 */	addi r4, r4, 0x48
/* 8075A5EC  48 00 6E 05 */	bl set__4cXyzFRC3Vec
/* 8075A5F0  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075A5F4  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075A5F8  38 84 00 48 */	addi r4, r4, 0x48
/* 8075A5FC  48 00 6D F5 */	bl set__4cXyzFRC3Vec
/* 8075A600  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075A604  28 00 00 00 */	cmplwi r0, 0
/* 8075A608  40 82 10 E0 */	bne lbl_8075B6E8
/* 8075A60C  38 00 00 28 */	li r0, 0x28
/* 8075A610  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075A614  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8075A618  2C 00 00 11 */	cmpwi r0, 0x11
/* 8075A61C  40 82 00 10 */	bne lbl_8075A62C
/* 8075A620  38 00 00 1E */	li r0, 0x1e
/* 8075A624  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A628  48 00 00 0C */	b lbl_8075A634
lbl_8075A62C:
/* 8075A62C  38 00 00 82 */	li r0, 0x82
/* 8075A630  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075A634:
/* 8075A634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075A638  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075A63C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8075A640  7F E4 FB 78 */	mr r4, r31
/* 8075A644  4B 8E 7E D4 */	b reset__14dEvt_control_cFPv
/* 8075A648  7F E3 FB 78 */	mr r3, r31
/* 8075A64C  38 80 00 02 */	li r4, 2
/* 8075A650  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8075A654  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8075A658  38 C0 00 03 */	li r6, 3
/* 8075A65C  4B 8C 12 AC */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8075A660  48 00 10 88 */	b lbl_8075B6E8
lbl_8075A664:
/* 8075A664  38 00 00 02 */	li r0, 2
/* 8075A668  98 1F 07 D8 */	stb r0, 0x7d8(r31)
/* 8075A66C  98 1D 00 69 */	stb r0, 0x69(r29)
/* 8075A670  38 00 00 00 */	li r0, 0
/* 8075A674  98 1D 00 68 */	stb r0, 0x68(r29)
lbl_8075A678:
/* 8075A678  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8075A67C  28 00 00 02 */	cmplwi r0, 2
/* 8075A680  41 82 00 20 */	beq lbl_8075A6A0
/* 8075A684  7F E3 FB 78 */	mr r3, r31
/* 8075A688  38 80 00 02 */	li r4, 2
/* 8075A68C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8075A690  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8075A694  38 C0 00 03 */	li r6, 3
/* 8075A698  4B 8C 12 70 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8075A69C  48 00 10 4C */	b lbl_8075B6E8
lbl_8075A6A0:
/* 8075A6A0  48 00 6D A5 */	bl daPy_getPlayerActorClass__Fv
/* 8075A6A4  48 00 6D 8D */	bl changeOriginalDemo__9daPy_py_cFv
/* 8075A6A8  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075A6AC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075A6B0  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8075A6B4  C0 7E 01 A8 */	lfs f3, 0x1a8(r30)
/* 8075A6B8  48 00 6D 55 */	bl set__4cXyzFfff
/* 8075A6BC  48 00 6D 89 */	bl daPy_getPlayerActorClass__Fv
/* 8075A6C0  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075A6C4  38 A0 80 00 */	li r5, -32768
/* 8075A6C8  38 C0 00 00 */	li r6, 0
/* 8075A6CC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8075A6D0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8075A6D4  7D 89 03 A6 */	mtctr r12
/* 8075A6D8  4E 80 04 21 */	bctrl 
/* 8075A6DC  48 00 6B 2D */	bl checkNowWolf__9daPy_py_cFv
/* 8075A6E0  28 03 00 00 */	cmplwi r3, 0
/* 8075A6E4  40 82 00 20 */	bne lbl_8075A704
/* 8075A6E8  48 00 6D 5D */	bl daPy_getPlayerActorClass__Fv
/* 8075A6EC  38 80 00 17 */	li r4, 0x17
/* 8075A6F0  38 A0 00 01 */	li r5, 1
/* 8075A6F4  38 C0 00 02 */	li r6, 2
/* 8075A6F8  38 E0 00 00 */	li r7, 0
/* 8075A6FC  48 00 6D 21 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075A700  48 00 00 1C */	b lbl_8075A71C
lbl_8075A704:
/* 8075A704  48 00 6D 41 */	bl daPy_getPlayerActorClass__Fv
/* 8075A708  38 80 00 17 */	li r4, 0x17
/* 8075A70C  38 A0 00 01 */	li r5, 1
/* 8075A710  38 C0 00 00 */	li r6, 0
/* 8075A714  38 E0 00 00 */	li r7, 0
/* 8075A718  48 00 6D 05 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_8075A71C:
/* 8075A71C  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075A720  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075A724  38 84 00 54 */	addi r4, r4, 0x54
/* 8075A728  48 00 6C C9 */	bl set__4cXyzFRC3Vec
/* 8075A72C  38 61 00 BC */	addi r3, r1, 0xbc
/* 8075A730  38 9F 0A C8 */	addi r4, r31, 0xac8
/* 8075A734  38 A1 02 B4 */	addi r5, r1, 0x2b4
/* 8075A738  4B B0 C3 FC */	b __mi__4cXyzCFRC3Vec
/* 8075A73C  38 61 02 9C */	addi r3, r1, 0x29c
/* 8075A740  38 81 00 BC */	addi r4, r1, 0xbc
/* 8075A744  48 00 6D 11 */	bl __as__4cXyzFRC4cXyz
/* 8075A748  38 61 02 9C */	addi r3, r1, 0x29c
/* 8075A74C  48 00 6B 09 */	bl abs__4cXyzCFv
/* 8075A750  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 8075A754  EC 41 00 24 */	fdivs f2, f1, f0
/* 8075A758  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075A75C  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075A760  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8075A764  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8075A768  4B B1 53 50 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075A76C  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8075A770  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075A774  38 84 00 54 */	addi r4, r4, 0x54
/* 8075A778  48 00 6C 79 */	bl set__4cXyzFRC3Vec
/* 8075A77C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8075A780  38 9F 0A BC */	addi r4, r31, 0xabc
/* 8075A784  38 A1 02 A8 */	addi r5, r1, 0x2a8
/* 8075A788  4B B0 C3 AC */	b __mi__4cXyzCFRC3Vec
/* 8075A78C  38 61 02 90 */	addi r3, r1, 0x290
/* 8075A790  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8075A794  48 00 6C C1 */	bl __as__4cXyzFRC4cXyz
/* 8075A798  38 61 02 90 */	addi r3, r1, 0x290
/* 8075A79C  48 00 6A B9 */	bl abs__4cXyzCFv
/* 8075A7A0  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 8075A7A4  EC 41 00 24 */	fdivs f2, f1, f0
/* 8075A7A8  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075A7AC  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 8075A7B0  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8075A7B4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8075A7B8  4B B1 53 00 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075A7BC  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075A7C0  28 00 00 00 */	cmplwi r0, 0
/* 8075A7C4  40 82 0F 24 */	bne lbl_8075B6E8
/* 8075A7C8  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 8075A7CC  38 81 00 1C */	addi r4, r1, 0x1c
/* 8075A7D0  4B 8B F1 EC */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075A7D4  2C 03 00 00 */	cmpwi r3, 0
/* 8075A7D8  41 82 00 18 */	beq lbl_8075A7F0
/* 8075A7DC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8075A7E0  28 03 00 00 */	cmplwi r3, 0
/* 8075A7E4  41 82 00 0C */	beq lbl_8075A7F0
/* 8075A7E8  38 00 00 1E */	li r0, 0x1e
/* 8075A7EC  90 03 06 84 */	stw r0, 0x684(r3)
lbl_8075A7F0:
/* 8075A7F0  38 00 00 00 */	li r0, 0
/* 8075A7F4  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075A7F8  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8075A7FC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8075A800  40 82 00 10 */	bne lbl_8075A810
/* 8075A804  38 00 00 50 */	li r0, 0x50
/* 8075A808  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075A80C  48 00 00 0C */	b lbl_8075A818
lbl_8075A810:
/* 8075A810  38 00 00 3C */	li r0, 0x3c
/* 8075A814  98 1F 07 D0 */	stb r0, 0x7d0(r31)
lbl_8075A818:
/* 8075A818  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075A81C  38 03 00 01 */	addi r0, r3, 1
/* 8075A820  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A824  48 00 0E C4 */	b lbl_8075B6E8
lbl_8075A828:
/* 8075A828  2C 04 00 1F */	cmpwi r4, 0x1f
/* 8075A82C  40 82 00 40 */	bne lbl_8075A86C
/* 8075A830  48 00 69 D9 */	bl checkNowWolf__9daPy_py_cFv
/* 8075A834  28 03 00 00 */	cmplwi r3, 0
/* 8075A838  40 82 00 1C */	bne lbl_8075A854
/* 8075A83C  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075A840  C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 8075A844  C0 5E 01 B0 */	lfs f2, 0x1b0(r30)
/* 8075A848  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 8075A84C  48 00 6B C1 */	bl set__4cXyzFfff
/* 8075A850  48 00 00 30 */	b lbl_8075A880
lbl_8075A854:
/* 8075A854  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075A858  C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 8075A85C  C0 5E 00 E4 */	lfs f2, 0xe4(r30)
/* 8075A860  C0 7E 01 B8 */	lfs f3, 0x1b8(r30)
/* 8075A864  48 00 6B A9 */	bl set__4cXyzFfff
/* 8075A868  48 00 00 18 */	b lbl_8075A880
lbl_8075A86C:
/* 8075A86C  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075A870  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075A874  FC 40 08 90 */	fmr f2, f1
/* 8075A878  C0 7E 01 84 */	lfs f3, 0x184(r30)
/* 8075A87C  48 00 6B 91 */	bl set__4cXyzFfff
lbl_8075A880:
/* 8075A880  48 00 6B C5 */	bl daPy_getPlayerActorClass__Fv
/* 8075A884  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075A888  38 A0 80 00 */	li r5, -32768
/* 8075A88C  38 C0 00 00 */	li r6, 0
/* 8075A890  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8075A894  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8075A898  7D 89 03 A6 */	mtctr r12
/* 8075A89C  4E 80 04 21 */	bctrl 
/* 8075A8A0  3B 40 00 00 */	li r26, 0
/* 8075A8A4  3B 60 00 00 */	li r27, 0
lbl_8075A8A8:
/* 8075A8A8  38 1B 07 DC */	addi r0, r27, 0x7dc
/* 8075A8AC  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8075A8B0  28 03 00 00 */	cmplwi r3, 0
/* 8075A8B4  41 82 00 2C */	beq lbl_8075A8E0
/* 8075A8B8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8075A8BC  4B 8B F1 00 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075A8C0  2C 03 00 00 */	cmpwi r3, 0
/* 8075A8C4  41 82 00 1C */	beq lbl_8075A8E0
/* 8075A8C8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8075A8CC  28 03 00 00 */	cmplwi r3, 0
/* 8075A8D0  41 82 00 10 */	beq lbl_8075A8E0
/* 8075A8D4  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8075A8D8  60 00 40 00 */	ori r0, r0, 0x4000
/* 8075A8DC  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_8075A8E0:
/* 8075A8E0  3B 5A 00 01 */	addi r26, r26, 1
/* 8075A8E4  2C 1A 00 19 */	cmpwi r26, 0x19
/* 8075A8E8  3B 7B 00 04 */	addi r27, r27, 4
/* 8075A8EC  41 80 FF BC */	blt lbl_8075A8A8
/* 8075A8F0  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075A8F4  28 00 00 00 */	cmplwi r0, 0
/* 8075A8F8  40 82 0D F0 */	bne lbl_8075B6E8
/* 8075A8FC  38 00 00 00 */	li r0, 0
/* 8075A900  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075A904  38 00 00 1E */	li r0, 0x1e
/* 8075A908  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075A90C  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8075A910  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8075A914  40 82 00 0C */	bne lbl_8075A920
/* 8075A918  38 00 00 32 */	li r0, 0x32
/* 8075A91C  98 1F 07 D0 */	stb r0, 0x7d0(r31)
lbl_8075A920:
/* 8075A920  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075A924  38 03 00 01 */	addi r0, r3, 1
/* 8075A928  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A92C  48 00 0D BC */	b lbl_8075B6E8
lbl_8075A930:
/* 8075A930  38 00 00 00 */	li r0, 0
/* 8075A934  98 1F 08 44 */	stb r0, 0x844(r31)
/* 8075A938  7F E3 FB 78 */	mr r3, r31
/* 8075A93C  38 80 00 00 */	li r4, 0
/* 8075A940  4B FF DF 79 */	bl mEntrySUB__8daE_PZ_cFb
/* 8075A944  38 7F 07 9C */	addi r3, r31, 0x79c
/* 8075A948  48 00 68 05 */	bl zero__4cXyzFv
/* 8075A94C  38 00 00 01 */	li r0, 1
/* 8075A950  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075A954  38 00 00 20 */	li r0, 0x20
/* 8075A958  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075A95C  48 00 0D 8C */	b lbl_8075B6E8
lbl_8075A960:
/* 8075A960  88 7F 07 D0 */	lbz r3, 0x7d0(r31)
/* 8075A964  28 03 00 00 */	cmplwi r3, 0
/* 8075A968  41 82 00 E4 */	beq lbl_8075AA4C
/* 8075A96C  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075A970  28 00 00 00 */	cmplwi r0, 0
/* 8075A974  40 82 0D 74 */	bne lbl_8075B6E8
/* 8075A978  28 03 00 1E */	cmplwi r3, 0x1e
/* 8075A97C  41 80 00 84 */	blt lbl_8075AA00
/* 8075A980  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 8075A984  28 00 00 00 */	cmplwi r0, 0
/* 8075A988  40 82 00 40 */	bne lbl_8075A9C8
/* 8075A98C  48 00 68 7D */	bl checkNowWolf__9daPy_py_cFv
/* 8075A990  28 03 00 00 */	cmplwi r3, 0
/* 8075A994  40 82 00 1C */	bne lbl_8075A9B0
/* 8075A998  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075A99C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075A9A0  FC 40 08 90 */	fmr f2, f1
/* 8075A9A4  C0 7E 01 BC */	lfs f3, 0x1bc(r30)
/* 8075A9A8  48 00 6A 65 */	bl set__4cXyzFfff
/* 8075A9AC  48 00 00 30 */	b lbl_8075A9DC
lbl_8075A9B0:
/* 8075A9B0  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075A9B4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075A9B8  FC 40 08 90 */	fmr f2, f1
/* 8075A9BC  C0 7E 01 B8 */	lfs f3, 0x1b8(r30)
/* 8075A9C0  48 00 6A 4D */	bl set__4cXyzFfff
/* 8075A9C4  48 00 00 18 */	b lbl_8075A9DC
lbl_8075A9C8:
/* 8075A9C8  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075A9CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075A9D0  FC 40 08 90 */	fmr f2, f1
/* 8075A9D4  C0 7E 01 84 */	lfs f3, 0x184(r30)
/* 8075A9D8  48 00 6A 35 */	bl set__4cXyzFfff
lbl_8075A9DC:
/* 8075A9DC  48 00 6A 69 */	bl daPy_getPlayerActorClass__Fv
/* 8075A9E0  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075A9E4  38 A0 80 00 */	li r5, -32768
/* 8075A9E8  38 C0 00 00 */	li r6, 0
/* 8075A9EC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8075A9F0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8075A9F4  7D 89 03 A6 */	mtctr r12
/* 8075A9F8  4E 80 04 21 */	bctrl 
/* 8075A9FC  48 00 0C EC */	b lbl_8075B6E8
lbl_8075AA00:
/* 8075AA00  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075AA04  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075AA08  38 84 00 48 */	addi r4, r4, 0x48
/* 8075AA0C  48 00 69 E5 */	bl set__4cXyzFRC3Vec
/* 8075AA10  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075AA14  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075AA18  38 84 00 48 */	addi r4, r4, 0x48
/* 8075AA1C  48 00 69 D5 */	bl set__4cXyzFRC3Vec
/* 8075AA20  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8075AA24  38 9F 0A C8 */	addi r4, r31, 0xac8
/* 8075AA28  48 00 6A 95 */	bl __ct__4cXyzFRC4cXyz
/* 8075AA2C  38 61 00 98 */	addi r3, r1, 0x98
/* 8075AA30  38 9F 0A BC */	addi r4, r31, 0xabc
/* 8075AA34  48 00 6A 89 */	bl __ct__4cXyzFRC4cXyz
/* 8075AA38  38 7C 02 48 */	addi r3, r28, 0x248
/* 8075AA3C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8075AA40  38 A1 00 98 */	addi r5, r1, 0x98
/* 8075AA44  4B A2 60 64 */	b Set__9dCamera_cF4cXyz4cXyz
/* 8075AA48  48 00 0C A0 */	b lbl_8075B6E8
lbl_8075AA4C:
/* 8075AA4C  3B 40 00 00 */	li r26, 0
/* 8075AA50  3B 60 00 00 */	li r27, 0
lbl_8075AA54:
/* 8075AA54  38 1B 07 DC */	addi r0, r27, 0x7dc
/* 8075AA58  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8075AA5C  28 03 00 00 */	cmplwi r3, 0
/* 8075AA60  41 82 00 2C */	beq lbl_8075AA8C
/* 8075AA64  38 81 00 1C */	addi r4, r1, 0x1c
/* 8075AA68  4B 8B EF 54 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075AA6C  2C 03 00 00 */	cmpwi r3, 0
/* 8075AA70  41 82 00 1C */	beq lbl_8075AA8C
/* 8075AA74  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8075AA78  28 03 00 00 */	cmplwi r3, 0
/* 8075AA7C  41 82 00 10 */	beq lbl_8075AA8C
/* 8075AA80  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8075AA84  60 00 40 00 */	ori r0, r0, 0x4000
/* 8075AA88  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_8075AA8C:
/* 8075AA8C  3B 5A 00 01 */	addi r26, r26, 1
/* 8075AA90  2C 1A 00 19 */	cmpwi r26, 0x19
/* 8075AA94  3B 7B 00 04 */	addi r27, r27, 4
/* 8075AA98  41 80 FF BC */	blt lbl_8075AA54
/* 8075AA9C  88 7F 07 D7 */	lbz r3, 0x7d7(r31)
/* 8075AAA0  28 03 00 00 */	cmplwi r3, 0
/* 8075AAA4  41 82 00 8C */	beq lbl_8075AB30
/* 8075AAA8  28 03 00 01 */	cmplwi r3, 1
/* 8075AAAC  40 82 00 64 */	bne lbl_8075AB10
/* 8075AAB0  38 00 00 01 */	li r0, 1
/* 8075AAB4  98 1D 00 68 */	stb r0, 0x68(r29)
/* 8075AAB8  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075AABC  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075AAC0  38 84 00 CC */	addi r4, r4, 0xcc
/* 8075AAC4  48 00 69 2D */	bl set__4cXyzFRC3Vec
/* 8075AAC8  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075AACC  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075AAD0  38 84 00 CC */	addi r4, r4, 0xcc
/* 8075AAD4  48 00 69 1D */	bl set__4cXyzFRC3Vec
/* 8075AAD8  38 61 00 8C */	addi r3, r1, 0x8c
/* 8075AADC  38 9F 0A C8 */	addi r4, r31, 0xac8
/* 8075AAE0  48 00 69 DD */	bl __ct__4cXyzFRC4cXyz
/* 8075AAE4  38 61 00 80 */	addi r3, r1, 0x80
/* 8075AAE8  38 9F 0A BC */	addi r4, r31, 0xabc
/* 8075AAEC  48 00 69 D1 */	bl __ct__4cXyzFRC4cXyz
/* 8075AAF0  38 7C 02 48 */	addi r3, r28, 0x248
/* 8075AAF4  38 81 00 8C */	addi r4, r1, 0x8c
/* 8075AAF8  38 A1 00 80 */	addi r5, r1, 0x80
/* 8075AAFC  4B A2 5F AC */	b Set__9dCamera_cF4cXyz4cXyz
/* 8075AB00  88 7F 07 D7 */	lbz r3, 0x7d7(r31)
/* 8075AB04  38 03 00 01 */	addi r0, r3, 1
/* 8075AB08  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075AB0C  48 00 0B DC */	b lbl_8075B6E8
lbl_8075AB10:
/* 8075AB10  38 03 00 01 */	addi r0, r3, 1
/* 8075AB14  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075AB18  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075AB1C  28 00 00 50 */	cmplwi r0, 0x50
/* 8075AB20  40 82 0B C8 */	bne lbl_8075B6E8
/* 8075AB24  38 00 00 00 */	li r0, 0
/* 8075AB28  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075AB2C  48 00 0B BC */	b lbl_8075B6E8
lbl_8075AB30:
/* 8075AB30  3B 40 00 00 */	li r26, 0
/* 8075AB34  3B 60 00 00 */	li r27, 0
lbl_8075AB38:
/* 8075AB38  38 1B 07 DC */	addi r0, r27, 0x7dc
/* 8075AB3C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8075AB40  28 03 00 00 */	cmplwi r3, 0
/* 8075AB44  41 82 00 2C */	beq lbl_8075AB70
/* 8075AB48  38 81 00 1C */	addi r4, r1, 0x1c
/* 8075AB4C  4B 8B EE 70 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075AB50  2C 03 00 00 */	cmpwi r3, 0
/* 8075AB54  41 82 00 1C */	beq lbl_8075AB70
/* 8075AB58  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8075AB5C  28 03 00 00 */	cmplwi r3, 0
/* 8075AB60  41 82 00 10 */	beq lbl_8075AB70
/* 8075AB64  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8075AB68  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8075AB6C  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_8075AB70:
/* 8075AB70  3B 5A 00 01 */	addi r26, r26, 1
/* 8075AB74  2C 1A 00 19 */	cmpwi r26, 0x19
/* 8075AB78  3B 7B 00 04 */	addi r27, r27, 4
/* 8075AB7C  41 80 FF BC */	blt lbl_8075AB38
/* 8075AB80  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8075AB84  2C 00 00 20 */	cmpwi r0, 0x20
/* 8075AB88  40 82 00 28 */	bne lbl_8075ABB0
/* 8075AB8C  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 8075AB90  28 00 00 00 */	cmplwi r0, 0
/* 8075AB94  40 82 00 1C */	bne lbl_8075ABB0
/* 8075AB98  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075AB9C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075ABA0  FC 40 08 90 */	fmr f2, f1
/* 8075ABA4  C0 7E 01 C0 */	lfs f3, 0x1c0(r30)
/* 8075ABA8  48 00 68 65 */	bl set__4cXyzFfff
/* 8075ABAC  48 00 00 18 */	b lbl_8075ABC4
lbl_8075ABB0:
/* 8075ABB0  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075ABB4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075ABB8  FC 40 08 90 */	fmr f2, f1
/* 8075ABBC  C0 7E 01 84 */	lfs f3, 0x184(r30)
/* 8075ABC0  48 00 68 4D */	bl set__4cXyzFfff
lbl_8075ABC4:
/* 8075ABC4  48 00 68 81 */	bl daPy_getPlayerActorClass__Fv
/* 8075ABC8  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075ABCC  38 A0 80 00 */	li r5, -32768
/* 8075ABD0  38 C0 00 00 */	li r6, 0
/* 8075ABD4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8075ABD8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8075ABDC  7D 89 03 A6 */	mtctr r12
/* 8075ABE0  4E 80 04 21 */	bctrl 
/* 8075ABE4  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8075ABE8  2C 00 00 20 */	cmpwi r0, 0x20
/* 8075ABEC  40 82 00 28 */	bne lbl_8075AC14
/* 8075ABF0  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 8075ABF4  28 00 00 00 */	cmplwi r0, 0
/* 8075ABF8  40 82 00 1C */	bne lbl_8075AC14
/* 8075ABFC  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075AC00  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075AC04  FC 40 08 90 */	fmr f2, f1
/* 8075AC08  C0 7E 01 90 */	lfs f3, 0x190(r30)
/* 8075AC0C  48 00 68 01 */	bl set__4cXyzFfff
/* 8075AC10  48 00 00 18 */	b lbl_8075AC28
lbl_8075AC14:
/* 8075AC14  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075AC18  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075AC1C  FC 40 08 90 */	fmr f2, f1
/* 8075AC20  C0 7E 01 C4 */	lfs f3, 0x1c4(r30)
/* 8075AC24  48 00 67 E9 */	bl set__4cXyzFfff
lbl_8075AC28:
/* 8075AC28  38 61 00 74 */	addi r3, r1, 0x74
/* 8075AC2C  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075AC30  48 00 68 8D */	bl __ct__4cXyzFRC4cXyz
/* 8075AC34  38 61 00 68 */	addi r3, r1, 0x68
/* 8075AC38  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075AC3C  48 00 68 81 */	bl __ct__4cXyzFRC4cXyz
/* 8075AC40  38 7C 02 48 */	addi r3, r28, 0x248
/* 8075AC44  38 81 00 74 */	addi r4, r1, 0x74
/* 8075AC48  38 A1 00 68 */	addi r5, r1, 0x68
/* 8075AC4C  4B A2 5F CC */	b Reset__9dCamera_cF4cXyz4cXyz
/* 8075AC50  38 7C 02 48 */	addi r3, r28, 0x248
/* 8075AC54  4B A0 68 58 */	b Start__9dCamera_cFv
/* 8075AC58  38 7C 02 48 */	addi r3, r28, 0x248
/* 8075AC5C  38 80 00 00 */	li r4, 0
/* 8075AC60  4B A0 83 AC */	b SetTrimSize__9dCamera_cFl
/* 8075AC64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075AC68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075AC6C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8075AC70  4B 8E 77 F8 */	b reset__14dEvt_control_cFv
/* 8075AC74  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 8075AC78  38 81 00 1C */	addi r4, r1, 0x1c
/* 8075AC7C  4B 8B ED 40 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075AC80  2C 03 00 00 */	cmpwi r3, 0
/* 8075AC84  41 82 00 18 */	beq lbl_8075AC9C
/* 8075AC88  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8075AC8C  28 03 00 00 */	cmplwi r3, 0
/* 8075AC90  41 82 00 0C */	beq lbl_8075AC9C
/* 8075AC94  38 00 00 20 */	li r0, 0x20
/* 8075AC98  90 03 06 84 */	stw r0, 0x684(r3)
lbl_8075AC9C:
/* 8075AC9C  38 60 00 00 */	li r3, 0
/* 8075ACA0  98 7F 07 D7 */	stb r3, 0x7d7(r31)
/* 8075ACA4  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 8075ACA8  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 8075ACAC  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 8075ACB0  28 00 00 00 */	cmplwi r0, 0
/* 8075ACB4  40 82 00 14 */	bne lbl_8075ACC8
/* 8075ACB8  98 7F 08 44 */	stb r3, 0x844(r31)
/* 8075ACBC  7F E3 FB 78 */	mr r3, r31
/* 8075ACC0  38 80 00 00 */	li r4, 0
/* 8075ACC4  4B FF DB F5 */	bl mEntrySUB__8daE_PZ_cFb
lbl_8075ACC8:
/* 8075ACC8  38 00 00 00 */	li r0, 0
/* 8075ACCC  98 1F 08 41 */	stb r0, 0x841(r31)
/* 8075ACD0  7F E3 FB 78 */	mr r3, r31
/* 8075ACD4  38 80 00 00 */	li r4, 0
/* 8075ACD8  38 A0 00 00 */	li r5, 0
/* 8075ACDC  4B FF DB D1 */	bl setActionMode__8daE_PZ_cFii
/* 8075ACE0  48 00 0A D4 */	b lbl_8075B7B4
lbl_8075ACE4:
/* 8075ACE4  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075ACE8  28 00 00 00 */	cmplwi r0, 0
/* 8075ACEC  41 82 00 54 */	beq lbl_8075AD40
/* 8075ACF0  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075ACF4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075ACF8  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8075ACFC  C0 7E 01 C8 */	lfs f3, 0x1c8(r30)
/* 8075AD00  48 00 67 0D */	bl set__4cXyzFfff
/* 8075AD04  48 00 67 41 */	bl daPy_getPlayerActorClass__Fv
/* 8075AD08  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075AD0C  38 A0 80 00 */	li r5, -32768
/* 8075AD10  38 C0 00 00 */	li r6, 0
/* 8075AD14  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8075AD18  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8075AD1C  7D 89 03 A6 */	mtctr r12
/* 8075AD20  4E 80 04 21 */	bctrl 
/* 8075AD24  48 00 67 21 */	bl daPy_getPlayerActorClass__Fv
/* 8075AD28  38 80 00 01 */	li r4, 1
/* 8075AD2C  38 A0 00 01 */	li r5, 1
/* 8075AD30  38 C0 00 00 */	li r6, 0
/* 8075AD34  38 E0 00 00 */	li r7, 0
/* 8075AD38  48 00 66 E5 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075AD3C  48 00 09 AC */	b lbl_8075B6E8
lbl_8075AD40:
/* 8075AD40  38 00 00 3C */	li r0, 0x3c
/* 8075AD44  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075AD48  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075AD4C  38 03 00 01 */	addi r0, r3, 1
/* 8075AD50  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075AD54:
/* 8075AD54  48 00 66 F1 */	bl daPy_getPlayerActorClass__Fv
/* 8075AD58  38 80 00 02 */	li r4, 2
/* 8075AD5C  38 A0 00 00 */	li r5, 0
/* 8075AD60  38 C0 00 00 */	li r6, 0
/* 8075AD64  38 E0 00 00 */	li r7, 0
/* 8075AD68  48 00 66 B5 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075AD6C  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075AD70  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075AD74  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8075AD78  C0 7E 01 98 */	lfs f3, 0x198(r30)
/* 8075AD7C  48 00 66 91 */	bl set__4cXyzFfff
/* 8075AD80  7F 63 DB 78 */	mr r3, r27
/* 8075AD84  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075AD88  48 00 65 E1 */	bl changeDemoPos0__9daPy_py_cFPC4cXyz
/* 8075AD8C  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075AD90  28 00 00 00 */	cmplwi r0, 0
/* 8075AD94  40 82 09 54 */	bne lbl_8075B6E8
/* 8075AD98  38 00 00 3C */	li r0, 0x3c
/* 8075AD9C  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075ADA0  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075ADA4  38 03 00 01 */	addi r0, r3, 1
/* 8075ADA8  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075ADAC:
/* 8075ADAC  7F E3 FB 78 */	mr r3, r31
/* 8075ADB0  38 80 00 1C */	li r4, 0x1c
/* 8075ADB4  48 00 64 6D */	bl fopAcM_onSwitch__FPC10fopAc_ac_ci
/* 8075ADB8  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075ADBC  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075ADC0  38 84 00 84 */	addi r4, r4, 0x84
/* 8075ADC4  48 00 66 2D */	bl set__4cXyzFRC3Vec
/* 8075ADC8  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075ADCC  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075ADD0  38 84 00 84 */	addi r4, r4, 0x84
/* 8075ADD4  48 00 66 1D */	bl set__4cXyzFRC3Vec
/* 8075ADD8  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075ADDC  28 00 00 00 */	cmplwi r0, 0
/* 8075ADE0  41 82 00 28 */	beq lbl_8075AE08
/* 8075ADE4  28 00 00 28 */	cmplwi r0, 0x28
/* 8075ADE8  40 82 09 00 */	bne lbl_8075B6E8
/* 8075ADEC  48 00 66 59 */	bl daPy_getPlayerActorClass__Fv
/* 8075ADF0  38 80 00 19 */	li r4, 0x19
/* 8075ADF4  38 A0 00 00 */	li r5, 0
/* 8075ADF8  38 C0 00 00 */	li r6, 0
/* 8075ADFC  38 E0 00 00 */	li r7, 0
/* 8075AE00  48 00 66 1D */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075AE04  48 00 08 E4 */	b lbl_8075B6E8
lbl_8075AE08:
/* 8075AE08  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075AE0C  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075AE10  38 84 00 78 */	addi r4, r4, 0x78
/* 8075AE14  48 00 65 DD */	bl set__4cXyzFRC3Vec
/* 8075AE18  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075AE1C  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075AE20  38 84 00 78 */	addi r4, r4, 0x78
/* 8075AE24  48 00 65 CD */	bl set__4cXyzFRC3Vec
/* 8075AE28  48 00 66 1D */	bl daPy_getPlayerActorClass__Fv
/* 8075AE2C  38 80 00 14 */	li r4, 0x14
/* 8075AE30  38 A0 00 00 */	li r5, 0
/* 8075AE34  38 C0 00 00 */	li r6, 0
/* 8075AE38  38 E0 00 00 */	li r7, 0
/* 8075AE3C  48 00 65 E1 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075AE40  38 00 00 28 */	li r0, 0x28
/* 8075AE44  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075AE48  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075AE4C  38 03 00 01 */	addi r0, r3, 1
/* 8075AE50  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075AE54:
/* 8075AE54  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075AE58  28 00 00 00 */	cmplwi r0, 0
/* 8075AE5C  40 82 08 8C */	bne lbl_8075B6E8
/* 8075AE60  38 00 00 14 */	li r0, 0x14
/* 8075AE64  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075AE68  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075AE6C  38 03 00 01 */	addi r0, r3, 1
/* 8075AE70  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075AE74:
/* 8075AE74  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075AE78  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075AE7C  38 84 00 90 */	addi r4, r4, 0x90
/* 8075AE80  48 00 65 71 */	bl set__4cXyzFRC3Vec
/* 8075AE84  38 61 00 5C */	addi r3, r1, 0x5c
/* 8075AE88  38 9F 0A C8 */	addi r4, r31, 0xac8
/* 8075AE8C  38 A1 02 B4 */	addi r5, r1, 0x2b4
/* 8075AE90  4B B0 BC A4 */	b __mi__4cXyzCFRC3Vec
/* 8075AE94  38 61 02 9C */	addi r3, r1, 0x29c
/* 8075AE98  38 81 00 5C */	addi r4, r1, 0x5c
/* 8075AE9C  48 00 65 B9 */	bl __as__4cXyzFRC4cXyz
/* 8075AEA0  38 61 02 9C */	addi r3, r1, 0x29c
/* 8075AEA4  48 00 63 B1 */	bl abs__4cXyzCFv
/* 8075AEA8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8075AEAC  EC 41 00 24 */	fdivs f2, f1, f0
/* 8075AEB0  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075AEB4  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075AEB8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8075AEBC  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8075AEC0  4B B1 4B F8 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075AEC4  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8075AEC8  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075AECC  38 84 00 90 */	addi r4, r4, 0x90
/* 8075AED0  48 00 65 21 */	bl set__4cXyzFRC3Vec
/* 8075AED4  38 61 00 50 */	addi r3, r1, 0x50
/* 8075AED8  38 9F 0A BC */	addi r4, r31, 0xabc
/* 8075AEDC  38 A1 02 A8 */	addi r5, r1, 0x2a8
/* 8075AEE0  4B B0 BC 54 */	b __mi__4cXyzCFRC3Vec
/* 8075AEE4  38 61 02 90 */	addi r3, r1, 0x290
/* 8075AEE8  38 81 00 50 */	addi r4, r1, 0x50
/* 8075AEEC  48 00 65 69 */	bl __as__4cXyzFRC4cXyz
/* 8075AEF0  38 61 02 90 */	addi r3, r1, 0x290
/* 8075AEF4  48 00 63 61 */	bl abs__4cXyzCFv
/* 8075AEF8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8075AEFC  EC 41 00 24 */	fdivs f2, f1, f0
/* 8075AF00  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075AF04  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 8075AF08  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8075AF0C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8075AF10  4B B1 4B A8 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075AF14  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075AF18  28 00 00 00 */	cmplwi r0, 0
/* 8075AF1C  40 82 07 CC */	bne lbl_8075B6E8
/* 8075AF20  38 61 02 9C */	addi r3, r1, 0x29c
/* 8075AF24  48 00 63 31 */	bl abs__4cXyzCFv
/* 8075AF28  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8075AF2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075AF30  41 81 07 B8 */	bgt lbl_8075B6E8
/* 8075AF34  38 61 02 90 */	addi r3, r1, 0x290
/* 8075AF38  48 00 63 1D */	bl abs__4cXyzCFv
/* 8075AF3C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8075AF40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075AF44  41 81 07 A4 */	bgt lbl_8075B6E8
/* 8075AF48  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8075AF4C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075AF50  C0 5E 00 A8 */	lfs f2, 0xa8(r30)
/* 8075AF54  C0 7E 01 C8 */	lfs f3, 0x1c8(r30)
/* 8075AF58  48 00 64 B5 */	bl set__4cXyzFfff
/* 8075AF5C  7F E3 FB 78 */	mr r3, r31
/* 8075AF60  48 00 64 25 */	bl fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c
/* 8075AF64  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8075AF68  38 7D 00 4C */	addi r3, r29, 0x4c
/* 8075AF6C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8075AF70  38 7F 07 9C */	addi r3, r31, 0x79c
/* 8075AF74  FC 40 08 90 */	fmr f2, f1
/* 8075AF78  FC 60 08 90 */	fmr f3, f1
/* 8075AF7C  48 00 64 91 */	bl set__4cXyzFfff
/* 8075AF80  38 00 00 01 */	li r0, 1
/* 8075AF84  98 1F 08 44 */	stb r0, 0x844(r31)
/* 8075AF88  7F E3 FB 78 */	mr r3, r31
/* 8075AF8C  38 80 00 01 */	li r4, 1
/* 8075AF90  4B FF D9 29 */	bl mEntrySUB__8daE_PZ_cFb
/* 8075AF94  7F E3 FB 78 */	mr r3, r31
/* 8075AF98  38 80 00 15 */	li r4, 0x15
/* 8075AF9C  38 A0 00 02 */	li r5, 2
/* 8075AFA0  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075AFA4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075AFA8  4B FF D8 59 */	bl setBck__8daE_PZ_cFiUcff
/* 8075AFAC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075AFB0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075AFB4  48 00 63 FD */	bl setFrame__13mDoExt_morf_cFf
/* 8075AFB8  38 7F 07 9C */	addi r3, r31, 0x79c
/* 8075AFBC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075AFC0  C0 5F 07 CC */	lfs f2, 0x7cc(r31)
/* 8075AFC4  FC 60 08 90 */	fmr f3, f1
/* 8075AFC8  48 00 64 45 */	bl set__4cXyzFfff
/* 8075AFCC  38 61 02 9C */	addi r3, r1, 0x29c
/* 8075AFD0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8075AFD4  48 00 64 1D */	bl set__4cXyzFRC3Vec
/* 8075AFD8  C0 21 02 A0 */	lfs f1, 0x2a0(r1)
/* 8075AFDC  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 8075AFE0  EC 01 00 2A */	fadds f0, f1, f0
/* 8075AFE4  D0 01 02 A0 */	stfs f0, 0x2a0(r1)
/* 8075AFE8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008897@ha */
/* 8075AFEC  38 63 88 97 */	addi r3, r3, 0x8897 /* 0x00008897@l */
/* 8075AFF0  38 81 02 9C */	addi r4, r1, 0x29c
/* 8075AFF4  38 BF 04 E4 */	addi r5, r31, 0x4e4
/* 8075AFF8  38 C0 00 00 */	li r6, 0
/* 8075AFFC  48 00 61 69 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 8075B000  38 00 00 0A */	li r0, 0xa
/* 8075B004  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075B008  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075B00C  38 03 00 01 */	addi r0, r3, 1
/* 8075B010  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075B014:
/* 8075B014  7F E3 FB 78 */	mr r3, r31
/* 8075B018  38 80 00 00 */	li r4, 0
/* 8075B01C  4B FF DA 79 */	bl mPzScaleSet__8daE_PZ_cFb
/* 8075B020  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075B024  28 00 00 00 */	cmplwi r0, 0
/* 8075B028  40 82 06 C0 */	bne lbl_8075B6E8
/* 8075B02C  38 00 00 0A */	li r0, 0xa
/* 8075B030  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075B034  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075B038  38 03 00 01 */	addi r0, r3, 1
/* 8075B03C  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075B040:
/* 8075B040  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075B044  28 00 00 00 */	cmplwi r0, 0
/* 8075B048  40 82 06 A0 */	bne lbl_8075B6E8
/* 8075B04C  38 00 00 78 */	li r0, 0x78
/* 8075B050  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075B054  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075B058  38 03 00 01 */	addi r0, r3, 1
/* 8075B05C  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075B060:
/* 8075B060  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 8075B064  2C 00 00 0B */	cmpwi r0, 0xb
/* 8075B068  40 82 00 80 */	bne lbl_8075B0E8
/* 8075B06C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075B070  48 00 61 69 */	bl isStop__13mDoExt_morf_cFv
/* 8075B074  2C 03 00 00 */	cmpwi r3, 0
/* 8075B078  41 82 00 70 */	beq lbl_8075B0E8
/* 8075B07C  7F E3 FB 78 */	mr r3, r31
/* 8075B080  38 80 00 0D */	li r4, 0xd
/* 8075B084  38 A0 00 02 */	li r5, 2
/* 8075B088  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075B08C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075B090  4B FF D7 71 */	bl setBck__8daE_PZ_cFiUcff
/* 8075B094  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8075B098  7C 07 07 74 */	extsb r7, r0
/* 8075B09C  38 00 00 00 */	li r0, 0
/* 8075B0A0  90 01 00 08 */	stw r0, 8(r1)
/* 8075B0A4  38 60 01 E4 */	li r3, 0x1e4
/* 8075B0A8  28 1F 00 00 */	cmplwi r31, 0
/* 8075B0AC  41 82 00 0C */	beq lbl_8075B0B8
/* 8075B0B0  80 9F 00 04 */	lwz r4, 4(r31)
/* 8075B0B4  48 00 00 08 */	b lbl_8075B0BC
lbl_8075B0B8:
/* 8075B0B8  38 80 FF FF */	li r4, -1
lbl_8075B0BC:
/* 8075B0BC  88 BF 07 D4 */	lbz r5, 0x7d4(r31)
/* 8075B0C0  38 A5 00 16 */	addi r5, r5, 0x16
/* 8075B0C4  38 DF 07 A8 */	addi r6, r31, 0x7a8
/* 8075B0C8  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8075B0CC  39 20 00 00 */	li r9, 0
/* 8075B0D0  39 40 FF FF */	li r10, -1
/* 8075B0D4  4B 8B EE 1C */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8075B0D8  90 7F 04 A4 */	stw r3, 0x4a4(r31)
/* 8075B0DC  38 00 00 02 */	li r0, 2
/* 8075B0E0  98 1F 07 D8 */	stb r0, 0x7d8(r31)
/* 8075B0E4  98 1D 00 69 */	stb r0, 0x69(r29)
lbl_8075B0E8:
/* 8075B0E8  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 8075B0EC  2C 00 00 0B */	cmpwi r0, 0xb
/* 8075B0F0  41 82 00 4C */	beq lbl_8075B13C
/* 8075B0F4  2C 00 00 0D */	cmpwi r0, 0xd
/* 8075B0F8  41 82 00 44 */	beq lbl_8075B13C
/* 8075B0FC  7F E3 FB 78 */	mr r3, r31
/* 8075B100  38 80 00 0B */	li r4, 0xb
/* 8075B104  38 A0 00 00 */	li r5, 0
/* 8075B108  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075B10C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075B110  4B FF D6 F1 */	bl setBck__8daE_PZ_cFiUcff
/* 8075B114  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703EC@ha */
/* 8075B118  38 03 03 EC */	addi r0, r3, 0x03EC /* 0x000703EC@l */
/* 8075B11C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8075B120  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8075B124  38 81 00 10 */	addi r4, r1, 0x10
/* 8075B128  38 A0 FF FF */	li r5, -1
/* 8075B12C  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 8075B130  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8075B134  7D 89 03 A6 */	mtctr r12
/* 8075B138  4E 80 04 21 */	bctrl 
lbl_8075B13C:
/* 8075B13C  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075B140  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075B144  FC 40 08 90 */	fmr f2, f1
/* 8075B148  C0 7E 01 C8 */	lfs f3, 0x1c8(r30)
/* 8075B14C  48 00 62 C1 */	bl set__4cXyzFfff
/* 8075B150  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8075B154  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075B158  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8075B15C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8075B160  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8075B164  4B B1 49 54 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075B168  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075B16C  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075B170  38 84 00 9C */	addi r4, r4, 0x9c
/* 8075B174  48 00 62 7D */	bl set__4cXyzFRC3Vec
/* 8075B178  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075B17C  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075B180  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8075B184  C0 5E 01 CC */	lfs f2, 0x1cc(r30)
/* 8075B188  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 8075B18C  4B B1 49 2C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075B190  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8075B194  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075B198  38 84 00 9C */	addi r4, r4, 0x9c
/* 8075B19C  48 00 62 55 */	bl set__4cXyzFRC3Vec
/* 8075B1A0  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075B1A4  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 8075B1A8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8075B1AC  C0 5E 01 CC */	lfs f2, 0x1cc(r30)
/* 8075B1B0  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 8075B1B4  4B B1 49 04 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075B1B8  38 61 00 44 */	addi r3, r1, 0x44
/* 8075B1BC  38 9F 0A C8 */	addi r4, r31, 0xac8
/* 8075B1C0  38 A1 02 B4 */	addi r5, r1, 0x2b4
/* 8075B1C4  4B B0 B9 70 */	b __mi__4cXyzCFRC3Vec
/* 8075B1C8  38 61 02 9C */	addi r3, r1, 0x29c
/* 8075B1CC  38 81 00 44 */	addi r4, r1, 0x44
/* 8075B1D0  48 00 62 85 */	bl __as__4cXyzFRC4cXyz
/* 8075B1D4  38 61 00 38 */	addi r3, r1, 0x38
/* 8075B1D8  38 9F 0A BC */	addi r4, r31, 0xabc
/* 8075B1DC  38 A1 02 A8 */	addi r5, r1, 0x2a8
/* 8075B1E0  4B B0 B9 54 */	b __mi__4cXyzCFRC3Vec
/* 8075B1E4  38 61 02 90 */	addi r3, r1, 0x290
/* 8075B1E8  38 81 00 38 */	addi r4, r1, 0x38
/* 8075B1EC  48 00 62 69 */	bl __as__4cXyzFRC4cXyz
/* 8075B1F0  7F E3 FB 78 */	mr r3, r31
/* 8075B1F4  4B FF DB B1 */	bl mSetFirePos__8daE_PZ_cFv
/* 8075B1F8  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075B1FC  28 00 00 00 */	cmplwi r0, 0
/* 8075B200  40 82 04 E8 */	bne lbl_8075B6E8
/* 8075B204  38 61 02 9C */	addi r3, r1, 0x29c
/* 8075B208  48 00 60 4D */	bl abs__4cXyzCFv
/* 8075B20C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8075B210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075B214  41 81 04 D4 */	bgt lbl_8075B6E8
/* 8075B218  38 61 02 90 */	addi r3, r1, 0x290
/* 8075B21C  48 00 60 39 */	bl abs__4cXyzCFv
/* 8075B220  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8075B224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075B228  41 81 04 C0 */	bgt lbl_8075B6E8
/* 8075B22C  88 1F 07 D8 */	lbz r0, 0x7d8(r31)
/* 8075B230  28 00 00 02 */	cmplwi r0, 2
/* 8075B234  40 82 04 B4 */	bne lbl_8075B6E8
/* 8075B238  48 00 5F D1 */	bl checkNowWolf__9daPy_py_cFv
/* 8075B23C  28 03 00 00 */	cmplwi r3, 0
/* 8075B240  40 82 00 1C */	bne lbl_8075B25C
/* 8075B244  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8075B248  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075B24C  FC 40 08 90 */	fmr f2, f1
/* 8075B250  C0 7E 01 D0 */	lfs f3, 0x1d0(r30)
/* 8075B254  48 00 61 B9 */	bl set__4cXyzFfff
/* 8075B258  48 00 00 18 */	b lbl_8075B270
lbl_8075B25C:
/* 8075B25C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8075B260  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075B264  FC 40 08 90 */	fmr f2, f1
/* 8075B268  C0 7E 01 98 */	lfs f3, 0x198(r30)
/* 8075B26C  48 00 61 A1 */	bl set__4cXyzFfff
lbl_8075B270:
/* 8075B270  7F E3 FB 78 */	mr r3, r31
/* 8075B274  4B FF DB 31 */	bl mSetFirePos__8daE_PZ_cFv
/* 8075B278  48 00 61 CD */	bl daPy_getPlayerActorClass__Fv
/* 8075B27C  38 80 00 01 */	li r4, 1
/* 8075B280  38 A0 00 01 */	li r5, 1
/* 8075B284  38 C0 00 00 */	li r6, 0
/* 8075B288  38 E0 00 00 */	li r7, 0
/* 8075B28C  48 00 61 91 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075B290  38 00 00 28 */	li r0, 0x28
/* 8075B294  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075B298  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075B29C  38 03 00 01 */	addi r0, r3, 1
/* 8075B2A0  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075B2A4  48 00 04 44 */	b lbl_8075B6E8
lbl_8075B2A8:
/* 8075B2A8  7F E3 FB 78 */	mr r3, r31
/* 8075B2AC  4B FF DA F9 */	bl mSetFirePos__8daE_PZ_cFv
/* 8075B2B0  48 00 5F 59 */	bl checkNowWolf__9daPy_py_cFv
/* 8075B2B4  28 03 00 00 */	cmplwi r3, 0
/* 8075B2B8  40 82 00 28 */	bne lbl_8075B2E0
/* 8075B2BC  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075B2C0  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075B2C4  38 84 00 A8 */	addi r4, r4, 0xa8
/* 8075B2C8  48 00 61 29 */	bl set__4cXyzFRC3Vec
/* 8075B2CC  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075B2D0  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075B2D4  38 84 00 A8 */	addi r4, r4, 0xa8
/* 8075B2D8  48 00 61 19 */	bl set__4cXyzFRC3Vec
/* 8075B2DC  48 00 00 24 */	b lbl_8075B300
lbl_8075B2E0:
/* 8075B2E0  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075B2E4  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075B2E8  38 84 00 B4 */	addi r4, r4, 0xb4
/* 8075B2EC  48 00 61 05 */	bl set__4cXyzFRC3Vec
/* 8075B2F0  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075B2F4  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075B2F8  38 84 00 B4 */	addi r4, r4, 0xb4
/* 8075B2FC  48 00 60 F5 */	bl set__4cXyzFRC3Vec
lbl_8075B300:
/* 8075B300  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075B304  28 00 00 00 */	cmplwi r0, 0
/* 8075B308  40 82 03 E0 */	bne lbl_8075B6E8
/* 8075B30C  48 00 61 39 */	bl daPy_getPlayerActorClass__Fv
/* 8075B310  38 80 00 05 */	li r4, 5
/* 8075B314  38 A0 00 00 */	li r5, 0
/* 8075B318  38 C0 00 00 */	li r6, 0
/* 8075B31C  38 E0 00 00 */	li r7, 0
/* 8075B320  48 00 60 FD */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075B324  48 00 61 21 */	bl daPy_getPlayerActorClass__Fv
/* 8075B328  38 80 00 00 */	li r4, 0
/* 8075B32C  48 00 5E 19 */	bl changeDemoMoveAngle__9daPy_py_cFs
/* 8075B330  38 00 00 00 */	li r0, 0
/* 8075B334  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075B338  38 00 00 07 */	li r0, 7
/* 8075B33C  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075B340  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075B344  38 03 00 01 */	addi r0, r3, 1
/* 8075B348  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075B34C  48 00 03 9C */	b lbl_8075B6E8
lbl_8075B350:
/* 8075B350  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075B354  28 00 00 00 */	cmplwi r0, 0
/* 8075B358  41 82 00 60 */	beq lbl_8075B3B8
/* 8075B35C  28 00 00 01 */	cmplwi r0, 1
/* 8075B360  40 82 00 4C */	bne lbl_8075B3AC
/* 8075B364  48 00 5E A5 */	bl checkNowWolf__9daPy_py_cFv
/* 8075B368  28 03 00 00 */	cmplwi r3, 0
/* 8075B36C  40 82 00 20 */	bne lbl_8075B38C
/* 8075B370  48 00 60 D5 */	bl daPy_getPlayerActorClass__Fv
/* 8075B374  38 80 00 0C */	li r4, 0xc
/* 8075B378  38 A0 00 01 */	li r5, 1
/* 8075B37C  38 C0 00 01 */	li r6, 1
/* 8075B380  38 E0 00 00 */	li r7, 0
/* 8075B384  48 00 60 99 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075B388  48 00 00 24 */	b lbl_8075B3AC
lbl_8075B38C:
/* 8075B38C  48 00 60 B9 */	bl daPy_getPlayerActorClass__Fv
/* 8075B390  38 80 00 2B */	li r4, 0x2b
/* 8075B394  38 A0 00 00 */	li r5, 0
/* 8075B398  38 C0 00 00 */	li r6, 0
/* 8075B39C  38 E0 00 00 */	li r7, 0
/* 8075B3A0  48 00 60 7D */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075B3A4  38 00 00 0A */	li r0, 0xa
/* 8075B3A8  98 1F 07 D7 */	stb r0, 0x7d7(r31)
lbl_8075B3AC:
/* 8075B3AC  7F E3 FB 78 */	mr r3, r31
/* 8075B3B0  4B FF D9 F5 */	bl mSetFirePos__8daE_PZ_cFv
/* 8075B3B4  48 00 03 34 */	b lbl_8075B6E8
lbl_8075B3B8:
/* 8075B3B8  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075B3BC  28 00 00 0A */	cmplwi r0, 0xa
/* 8075B3C0  40 80 00 4C */	bge lbl_8075B40C
/* 8075B3C4  48 00 5E 45 */	bl checkNowWolf__9daPy_py_cFv
/* 8075B3C8  28 03 00 00 */	cmplwi r3, 0
/* 8075B3CC  40 82 00 40 */	bne lbl_8075B40C
/* 8075B3D0  88 7F 07 D7 */	lbz r3, 0x7d7(r31)
/* 8075B3D4  38 03 00 01 */	addi r0, r3, 1
/* 8075B3D8  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075B3DC  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075B3E0  28 00 00 0A */	cmplwi r0, 0xa
/* 8075B3E4  40 82 00 1C */	bne lbl_8075B400
/* 8075B3E8  48 00 60 5D */	bl daPy_getPlayerActorClass__Fv
/* 8075B3EC  38 80 00 24 */	li r4, 0x24
/* 8075B3F0  38 A0 00 16 */	li r5, 0x16
/* 8075B3F4  38 C0 00 00 */	li r6, 0
/* 8075B3F8  38 E0 00 00 */	li r7, 0
/* 8075B3FC  48 00 60 21 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_8075B400:
/* 8075B400  7F E3 FB 78 */	mr r3, r31
/* 8075B404  4B FF D9 A1 */	bl mSetFirePos__8daE_PZ_cFv
/* 8075B408  48 00 02 E0 */	b lbl_8075B6E8
lbl_8075B40C:
/* 8075B40C  88 7F 07 D7 */	lbz r3, 0x7d7(r31)
/* 8075B410  38 03 00 01 */	addi r0, r3, 1
/* 8075B414  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075B418  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075B41C  28 00 00 14 */	cmplwi r0, 0x14
/* 8075B420  40 80 00 10 */	bge lbl_8075B430
/* 8075B424  7F E3 FB 78 */	mr r3, r31
/* 8075B428  4B FF D9 7D */	bl mSetFirePos__8daE_PZ_cFv
/* 8075B42C  48 00 02 BC */	b lbl_8075B6E8
lbl_8075B430:
/* 8075B430  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075B434  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075B438  38 84 00 C0 */	addi r4, r4, 0xc0
/* 8075B43C  48 00 5F B5 */	bl set__4cXyzFRC3Vec
/* 8075B440  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075B444  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075B448  38 84 00 C0 */	addi r4, r4, 0xc0
/* 8075B44C  48 00 5F A5 */	bl set__4cXyzFRC3Vec
/* 8075B450  7F E3 FB 78 */	mr r3, r31
/* 8075B454  38 80 00 01 */	li r4, 1
/* 8075B458  4B FF D6 3D */	bl mPzScaleSet__8daE_PZ_cFb
/* 8075B45C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8075B460  41 82 02 88 */	beq lbl_8075B6E8
/* 8075B464  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8075B468  C0 3E 01 90 */	lfs f1, 0x190(r30)
/* 8075B46C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8075B470  C0 7E 01 94 */	lfs f3, 0x194(r30)
/* 8075B474  48 00 5F 99 */	bl set__4cXyzFfff
/* 8075B478  7F E3 FB 78 */	mr r3, r31
/* 8075B47C  48 00 5F 09 */	bl fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c
/* 8075B480  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8075B484  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8075B488  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075B48C  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8075B490  C0 7E 01 98 */	lfs f3, 0x198(r30)
/* 8075B494  48 00 5F 79 */	bl set__4cXyzFfff
/* 8075B498  48 00 5F AD */	bl daPy_getPlayerActorClass__Fv
/* 8075B49C  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8075B4A0  38 A0 00 00 */	li r5, 0
/* 8075B4A4  38 C0 00 00 */	li r6, 0
/* 8075B4A8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8075B4AC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8075B4B0  7D 89 03 A6 */	mtctr r12
/* 8075B4B4  4E 80 04 21 */	bctrl 
/* 8075B4B8  38 00 00 00 */	li r0, 0
/* 8075B4BC  98 1F 08 44 */	stb r0, 0x844(r31)
/* 8075B4C0  7F E3 FB 78 */	mr r3, r31
/* 8075B4C4  38 80 00 00 */	li r4, 0
/* 8075B4C8  4B FF D3 F1 */	bl mEntrySUB__8daE_PZ_cFb
/* 8075B4CC  7F E3 FB 78 */	mr r3, r31
/* 8075B4D0  48 00 5E B5 */	bl fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c
/* 8075B4D4  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8075B4D8  38 00 00 0A */	li r0, 0xa
/* 8075B4DC  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075B4E0  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075B4E4  38 03 00 01 */	addi r0, r3, 1
/* 8075B4E8  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075B4EC  48 00 01 FC */	b lbl_8075B6E8
lbl_8075B4F0:
/* 8075B4F0  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075B4F4  28 00 00 00 */	cmplwi r0, 0
/* 8075B4F8  40 82 01 F0 */	bne lbl_8075B6E8
/* 8075B4FC  38 00 00 01 */	li r0, 1
/* 8075B500  98 1F 08 44 */	stb r0, 0x844(r31)
/* 8075B504  7F E3 FB 78 */	mr r3, r31
/* 8075B508  38 80 00 01 */	li r4, 1
/* 8075B50C  4B FF D3 AD */	bl mEntrySUB__8daE_PZ_cFb
/* 8075B510  7F E3 FB 78 */	mr r3, r31
/* 8075B514  38 80 00 08 */	li r4, 8
/* 8075B518  38 A0 00 00 */	li r5, 0
/* 8075B51C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075B520  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075B524  4B FF D2 DD */	bl setBck__8daE_PZ_cFiUcff
/* 8075B528  38 7F 07 9C */	addi r3, r31, 0x79c
/* 8075B52C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075B530  C0 5F 07 CC */	lfs f2, 0x7cc(r31)
/* 8075B534  FC 60 08 90 */	fmr f3, f1
/* 8075B538  48 00 5E D5 */	bl set__4cXyzFfff
/* 8075B53C  38 00 00 28 */	li r0, 0x28
/* 8075B540  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075B544  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075B548  38 03 00 01 */	addi r0, r3, 1
/* 8075B54C  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075B550:
/* 8075B550  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075B554  48 00 5C 85 */	bl isStop__13mDoExt_morf_cFv
/* 8075B558  2C 03 00 00 */	cmpwi r3, 0
/* 8075B55C  41 82 00 28 */	beq lbl_8075B584
/* 8075B560  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 8075B564  2C 00 00 15 */	cmpwi r0, 0x15
/* 8075B568  41 82 00 1C */	beq lbl_8075B584
/* 8075B56C  7F E3 FB 78 */	mr r3, r31
/* 8075B570  38 80 00 15 */	li r4, 0x15
/* 8075B574  38 A0 00 02 */	li r5, 2
/* 8075B578  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075B57C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075B580  4B FF D2 81 */	bl setBck__8daE_PZ_cFiUcff
lbl_8075B584:
/* 8075B584  7F E3 FB 78 */	mr r3, r31
/* 8075B588  38 80 00 00 */	li r4, 0
/* 8075B58C  4B FF D5 09 */	bl mPzScaleSet__8daE_PZ_cFb
/* 8075B590  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075B594  28 00 00 00 */	cmplwi r0, 0
/* 8075B598  41 82 00 28 */	beq lbl_8075B5C0
/* 8075B59C  28 00 00 14 */	cmplwi r0, 0x14
/* 8075B5A0  40 82 01 48 */	bne lbl_8075B6E8
/* 8075B5A4  48 00 5E A1 */	bl daPy_getPlayerActorClass__Fv
/* 8075B5A8  38 80 00 19 */	li r4, 0x19
/* 8075B5AC  38 A0 00 00 */	li r5, 0
/* 8075B5B0  38 C0 00 00 */	li r6, 0
/* 8075B5B4  38 E0 00 00 */	li r7, 0
/* 8075B5B8  48 00 5E 65 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075B5BC  48 00 01 2C */	b lbl_8075B6E8
lbl_8075B5C0:
/* 8075B5C0  48 00 5E 85 */	bl daPy_getPlayerActorClass__Fv
/* 8075B5C4  38 80 00 05 */	li r4, 5
/* 8075B5C8  38 A0 00 00 */	li r5, 0
/* 8075B5CC  38 C0 00 00 */	li r6, 0
/* 8075B5D0  38 E0 00 00 */	li r7, 0
/* 8075B5D4  48 00 5E 49 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075B5D8  48 00 5E 6D */	bl daPy_getPlayerActorClass__Fv
/* 8075B5DC  38 80 80 00 */	li r4, -32768
/* 8075B5E0  48 00 5B 65 */	bl changeDemoMoveAngle__9daPy_py_cFs
/* 8075B5E4  38 00 00 0A */	li r0, 0xa
/* 8075B5E8  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075B5EC  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075B5F0  38 03 00 01 */	addi r0, r3, 1
/* 8075B5F4  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075B5F8  48 00 00 F0 */	b lbl_8075B6E8
lbl_8075B5FC:
/* 8075B5FC  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075B600  28 00 00 00 */	cmplwi r0, 0
/* 8075B604  40 82 00 E4 */	bne lbl_8075B6E8
/* 8075B608  48 00 5C 01 */	bl checkNowWolf__9daPy_py_cFv
/* 8075B60C  28 03 00 00 */	cmplwi r3, 0
/* 8075B610  40 82 00 20 */	bne lbl_8075B630
/* 8075B614  48 00 5E 31 */	bl daPy_getPlayerActorClass__Fv
/* 8075B618  38 80 00 22 */	li r4, 0x22
/* 8075B61C  38 A0 00 01 */	li r5, 1
/* 8075B620  38 C0 00 00 */	li r6, 0
/* 8075B624  38 E0 00 00 */	li r7, 0
/* 8075B628  48 00 5D F5 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075B62C  48 00 00 1C */	b lbl_8075B648
lbl_8075B630:
/* 8075B630  48 00 5E 15 */	bl daPy_getPlayerActorClass__Fv
/* 8075B634  38 80 00 17 */	li r4, 0x17
/* 8075B638  38 A0 00 01 */	li r5, 1
/* 8075B63C  38 C0 00 00 */	li r6, 0
/* 8075B640  38 E0 00 00 */	li r7, 0
/* 8075B644  48 00 5D D9 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_8075B648:
/* 8075B648  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075B64C  38 9D 01 48 */	addi r4, r29, 0x148
/* 8075B650  38 84 00 24 */	addi r4, r4, 0x24
/* 8075B654  48 00 5D 9D */	bl set__4cXyzFRC3Vec
/* 8075B658  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075B65C  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 8075B660  38 84 00 30 */	addi r4, r4, 0x30
/* 8075B664  48 00 5D 8D */	bl set__4cXyzFRC3Vec
/* 8075B668  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8075B66C  7C 07 07 74 */	extsb r7, r0
/* 8075B670  38 00 00 00 */	li r0, 0
/* 8075B674  90 01 00 08 */	stw r0, 8(r1)
/* 8075B678  38 60 01 E4 */	li r3, 0x1e4
/* 8075B67C  28 1F 00 00 */	cmplwi r31, 0
/* 8075B680  41 82 00 0C */	beq lbl_8075B68C
/* 8075B684  80 9F 00 04 */	lwz r4, 4(r31)
/* 8075B688  48 00 00 08 */	b lbl_8075B690
lbl_8075B68C:
/* 8075B68C  38 80 FF FF */	li r4, -1
lbl_8075B690:
/* 8075B690  88 BF 07 D4 */	lbz r5, 0x7d4(r31)
/* 8075B694  38 A5 00 16 */	addi r5, r5, 0x16
/* 8075B698  38 DF 07 A8 */	addi r6, r31, 0x7a8
/* 8075B69C  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8075B6A0  39 20 00 00 */	li r9, 0
/* 8075B6A4  39 40 FF FF */	li r10, -1
/* 8075B6A8  4B 8B E8 48 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8075B6AC  90 7F 04 A4 */	stw r3, 0x4a4(r31)
/* 8075B6B0  7F E3 FB 78 */	mr r3, r31
/* 8075B6B4  38 80 00 0C */	li r4, 0xc
/* 8075B6B8  38 A0 00 00 */	li r5, 0
/* 8075B6BC  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8075B6C0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075B6C4  4B FF D1 3D */	bl setBck__8daE_PZ_cFiUcff
/* 8075B6C8  48 00 5D 7D */	bl daPy_getPlayerActorClass__Fv
/* 8075B6CC  38 80 00 10 */	li r4, 0x10
/* 8075B6D0  38 A0 00 00 */	li r5, 0
/* 8075B6D4  38 C0 00 00 */	li r6, 0
/* 8075B6D8  38 E0 00 00 */	li r7, 0
/* 8075B6DC  48 00 5D 41 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075B6E0  38 00 00 7B */	li r0, 0x7b
/* 8075B6E4  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075B6E8:
/* 8075B6E8  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8075B6EC  2C 00 00 02 */	cmpwi r0, 2
/* 8075B6F0  41 80 00 44 */	blt lbl_8075B734
/* 8075B6F4  2C 00 00 64 */	cmpwi r0, 0x64
/* 8075B6F8  41 82 00 3C */	beq lbl_8075B734
/* 8075B6FC  2C 00 00 65 */	cmpwi r0, 0x65
/* 8075B700  41 82 00 34 */	beq lbl_8075B734
/* 8075B704  2C 00 00 20 */	cmpwi r0, 0x20
/* 8075B708  41 82 00 2C */	beq lbl_8075B734
/* 8075B70C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8075B710  38 9F 0A C8 */	addi r4, r31, 0xac8
/* 8075B714  48 00 5D A9 */	bl __ct__4cXyzFRC4cXyz
/* 8075B718  38 61 00 20 */	addi r3, r1, 0x20
/* 8075B71C  38 9F 0A BC */	addi r4, r31, 0xabc
/* 8075B720  48 00 5D 9D */	bl __ct__4cXyzFRC4cXyz
/* 8075B724  38 7C 02 48 */	addi r3, r28, 0x248
/* 8075B728  38 81 00 2C */	addi r4, r1, 0x2c
/* 8075B72C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8075B730  4B A2 53 78 */	b Set__9dCamera_cF4cXyz4cXyz
lbl_8075B734:
/* 8075B734  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8075B738  2C 00 00 02 */	cmpwi r0, 2
/* 8075B73C  41 80 00 0C */	blt lbl_8075B748
/* 8075B740  2C 00 00 11 */	cmpwi r0, 0x11
/* 8075B744  40 81 00 14 */	ble lbl_8075B758
lbl_8075B748:
/* 8075B748  2C 00 00 66 */	cmpwi r0, 0x66
/* 8075B74C  41 80 00 68 */	blt lbl_8075B7B4
/* 8075B750  2C 00 00 7D */	cmpwi r0, 0x7d
/* 8075B754  41 81 00 60 */	bgt lbl_8075B7B4
lbl_8075B758:
/* 8075B758  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075B75C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075B760  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8075B764  48 00 00 69 */	bl checkSkipEdge__14dEvt_control_cFv
/* 8075B768  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8075B76C  41 82 00 48 */	beq lbl_8075B7B4
/* 8075B770  38 00 00 01 */	li r0, 1
/* 8075B774  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 8075B778  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)
/* 8075B77C  38 60 00 01 */	li r3, 1
/* 8075B780  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075B784  38 80 00 00 */	li r4, 0
/* 8075B788  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8075B78C  7C 05 07 74 */	extsb r5, r0
/* 8075B790  38 C0 00 00 */	li r6, 0
/* 8075B794  38 E0 FF FF */	li r7, -1
/* 8075B798  4B 8C B9 D8 */	b dStage_changeScene__FifUlScsi
/* 8075B79C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8075B7A0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8075B7A4  80 63 00 00 */	lwz r3, 0(r3)
/* 8075B7A8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8075B7AC  38 80 00 1E */	li r4, 0x1e
/* 8075B7B0  4B B5 47 2C */	b bgmStreamStop__8Z2SeqMgrFUl
lbl_8075B7B4:
/* 8075B7B4  39 61 02 E0 */	addi r11, r1, 0x2e0
/* 8075B7B8  4B C0 6A 64 */	b _restgpr_26
/* 8075B7BC  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8075B7C0  7C 08 03 A6 */	mtlr r0
/* 8075B7C4  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8075B7C8  4E 80 00 20 */	blr 
