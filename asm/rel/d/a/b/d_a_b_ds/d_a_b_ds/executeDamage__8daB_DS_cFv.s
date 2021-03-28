lbl_805D074C:
/* 805D074C  94 21 FD D0 */	stwu r1, -0x230(r1)
/* 805D0750  7C 08 02 A6 */	mflr r0
/* 805D0754  90 01 02 34 */	stw r0, 0x234(r1)
/* 805D0758  DB E1 02 20 */	stfd f31, 0x220(r1)
/* 805D075C  F3 E1 02 28 */	psq_st f31, 552(r1), 0, 0 /* qr0 */
/* 805D0760  DB C1 02 10 */	stfd f30, 0x210(r1)
/* 805D0764  F3 C1 02 18 */	psq_st f30, 536(r1), 0, 0 /* qr0 */
/* 805D0768  DB A1 02 00 */	stfd f29, 0x200(r1)
/* 805D076C  F3 A1 02 08 */	psq_st f29, 520(r1), 0, 0 /* qr0 */
/* 805D0770  39 61 02 00 */	addi r11, r1, 0x200
/* 805D0774  4B D9 1A 4C */	b _savegpr_22
/* 805D0778  7C 7F 1B 78 */	mr r31, r3
/* 805D077C  3C 60 80 5E */	lis r3, lit_1109@ha
/* 805D0780  3B A3 DA 70 */	addi r29, r3, lit_1109@l
/* 805D0784  3C 60 80 5E */	lis r3, cNullVec__6Z2Calc@ha
/* 805D0788  3B 63 D2 48 */	addi r27, r3, cNullVec__6Z2Calc@l
/* 805D078C  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805D0790  3B C3 CA 54 */	addi r30, r3, lit_3932@l
/* 805D0794  88 1D 04 3C */	lbz r0, 0x43c(r29)
/* 805D0798  7C 00 07 75 */	extsb. r0, r0
/* 805D079C  40 82 01 34 */	bne lbl_805D08D0
/* 805D07A0  C0 5E 03 5C */	lfs f2, 0x35c(r30)
/* 805D07A4  D0 41 01 98 */	stfs f2, 0x198(r1)
/* 805D07A8  C0 3E 03 60 */	lfs f1, 0x360(r30)
/* 805D07AC  D0 21 01 9C */	stfs f1, 0x19c(r1)
/* 805D07B0  C0 1E 03 64 */	lfs f0, 0x364(r30)
/* 805D07B4  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 805D07B8  D0 5D 04 70 */	stfs f2, 0x470(r29)
/* 805D07BC  38 7D 04 70 */	addi r3, r29, 0x470
/* 805D07C0  D0 23 00 04 */	stfs f1, 4(r3)
/* 805D07C4  D0 03 00 08 */	stfs f0, 8(r3)
/* 805D07C8  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D07CC  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D07D0  38 BD 04 30 */	addi r5, r29, 0x430
/* 805D07D4  4B FF A9 E5 */	bl __register_global_object
/* 805D07D8  C0 5E 03 68 */	lfs f2, 0x368(r30)
/* 805D07DC  D0 41 01 8C */	stfs f2, 0x18c(r1)
/* 805D07E0  C0 3E 01 70 */	lfs f1, 0x170(r30)
/* 805D07E4  D0 21 01 90 */	stfs f1, 0x190(r1)
/* 805D07E8  C0 1E 03 6C */	lfs f0, 0x36c(r30)
/* 805D07EC  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 805D07F0  38 7D 04 70 */	addi r3, r29, 0x470
/* 805D07F4  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805D07F8  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805D07FC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805D0800  38 63 00 0C */	addi r3, r3, 0xc
/* 805D0804  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D0808  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D080C  38 BD 04 40 */	addi r5, r29, 0x440
/* 805D0810  4B FF A9 A9 */	bl __register_global_object
/* 805D0814  C0 5E 03 70 */	lfs f2, 0x370(r30)
/* 805D0818  D0 41 01 80 */	stfs f2, 0x180(r1)
/* 805D081C  C0 3E 03 74 */	lfs f1, 0x374(r30)
/* 805D0820  D0 21 01 84 */	stfs f1, 0x184(r1)
/* 805D0824  C0 1E 03 78 */	lfs f0, 0x378(r30)
/* 805D0828  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D082C  38 7D 04 70 */	addi r3, r29, 0x470
/* 805D0830  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 805D0834  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805D0838  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805D083C  38 63 00 18 */	addi r3, r3, 0x18
/* 805D0840  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D0844  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D0848  38 BD 04 4C */	addi r5, r29, 0x44c
/* 805D084C  4B FF A9 6D */	bl __register_global_object
/* 805D0850  C0 5E 03 7C */	lfs f2, 0x37c(r30)
/* 805D0854  D0 41 01 74 */	stfs f2, 0x174(r1)
/* 805D0858  C0 3E 02 BC */	lfs f1, 0x2bc(r30)
/* 805D085C  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 805D0860  C0 1E 03 80 */	lfs f0, 0x380(r30)
/* 805D0864  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D0868  38 7D 04 70 */	addi r3, r29, 0x470
/* 805D086C  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 805D0870  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 805D0874  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 805D0878  38 63 00 24 */	addi r3, r3, 0x24
/* 805D087C  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D0880  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D0884  38 BD 04 58 */	addi r5, r29, 0x458
/* 805D0888  4B FF A9 31 */	bl __register_global_object
/* 805D088C  C0 5E 03 7C */	lfs f2, 0x37c(r30)
/* 805D0890  D0 41 01 68 */	stfs f2, 0x168(r1)
/* 805D0894  C0 3E 03 84 */	lfs f1, 0x384(r30)
/* 805D0898  D0 21 01 6C */	stfs f1, 0x16c(r1)
/* 805D089C  C0 1E 03 80 */	lfs f0, 0x380(r30)
/* 805D08A0  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 805D08A4  38 7D 04 70 */	addi r3, r29, 0x470
/* 805D08A8  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 805D08AC  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 805D08B0  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 805D08B4  38 63 00 30 */	addi r3, r3, 0x30
/* 805D08B8  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D08BC  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D08C0  38 BD 04 64 */	addi r5, r29, 0x464
/* 805D08C4  4B FF A8 F5 */	bl __register_global_object
/* 805D08C8  38 00 00 01 */	li r0, 1
/* 805D08CC  98 1D 04 3C */	stb r0, 0x43c(r29)
lbl_805D08D0:
/* 805D08D0  88 1D 04 B8 */	lbz r0, 0x4b8(r29)
/* 805D08D4  7C 00 07 75 */	extsb. r0, r0
/* 805D08D8  40 82 01 34 */	bne lbl_805D0A0C
/* 805D08DC  C0 5E 03 88 */	lfs f2, 0x388(r30)
/* 805D08E0  D0 41 01 5C */	stfs f2, 0x15c(r1)
/* 805D08E4  C0 3E 03 8C */	lfs f1, 0x38c(r30)
/* 805D08E8  D0 21 01 60 */	stfs f1, 0x160(r1)
/* 805D08EC  C0 1E 03 90 */	lfs f0, 0x390(r30)
/* 805D08F0  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 805D08F4  D0 5D 04 EC */	stfs f2, 0x4ec(r29)
/* 805D08F8  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 805D08FC  D0 23 00 04 */	stfs f1, 4(r3)
/* 805D0900  D0 03 00 08 */	stfs f0, 8(r3)
/* 805D0904  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D0908  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D090C  38 BD 04 AC */	addi r5, r29, 0x4ac
/* 805D0910  4B FF A8 A9 */	bl __register_global_object
/* 805D0914  C0 5E 03 94 */	lfs f2, 0x394(r30)
/* 805D0918  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 805D091C  C0 3E 03 98 */	lfs f1, 0x398(r30)
/* 805D0920  D0 21 01 54 */	stfs f1, 0x154(r1)
/* 805D0924  C0 1E 03 9C */	lfs f0, 0x39c(r30)
/* 805D0928  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 805D092C  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 805D0930  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805D0934  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805D0938  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805D093C  38 63 00 0C */	addi r3, r3, 0xc
/* 805D0940  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D0944  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D0948  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 805D094C  4B FF A8 6D */	bl __register_global_object
/* 805D0950  C0 5E 03 A0 */	lfs f2, 0x3a0(r30)
/* 805D0954  D0 41 01 44 */	stfs f2, 0x144(r1)
/* 805D0958  C0 3E 03 A4 */	lfs f1, 0x3a4(r30)
/* 805D095C  D0 21 01 48 */	stfs f1, 0x148(r1)
/* 805D0960  C0 1E 03 A8 */	lfs f0, 0x3a8(r30)
/* 805D0964  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 805D0968  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 805D096C  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 805D0970  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805D0974  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805D0978  38 63 00 18 */	addi r3, r3, 0x18
/* 805D097C  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D0980  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D0984  38 BD 04 C8 */	addi r5, r29, 0x4c8
/* 805D0988  4B FF A8 31 */	bl __register_global_object
/* 805D098C  C0 5E 03 AC */	lfs f2, 0x3ac(r30)
/* 805D0990  D0 41 01 38 */	stfs f2, 0x138(r1)
/* 805D0994  C0 3E 03 B0 */	lfs f1, 0x3b0(r30)
/* 805D0998  D0 21 01 3C */	stfs f1, 0x13c(r1)
/* 805D099C  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 805D09A0  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 805D09A4  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 805D09A8  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 805D09AC  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 805D09B0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 805D09B4  38 63 00 24 */	addi r3, r3, 0x24
/* 805D09B8  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D09BC  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D09C0  38 BD 04 D4 */	addi r5, r29, 0x4d4
/* 805D09C4  4B FF A7 F5 */	bl __register_global_object
/* 805D09C8  C0 5E 03 AC */	lfs f2, 0x3ac(r30)
/* 805D09CC  D0 41 01 2C */	stfs f2, 0x12c(r1)
/* 805D09D0  C0 3E 03 B4 */	lfs f1, 0x3b4(r30)
/* 805D09D4  D0 21 01 30 */	stfs f1, 0x130(r1)
/* 805D09D8  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 805D09DC  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 805D09E0  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 805D09E4  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 805D09E8  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 805D09EC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 805D09F0  38 63 00 30 */	addi r3, r3, 0x30
/* 805D09F4  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D09F8  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D09FC  38 BD 04 E0 */	addi r5, r29, 0x4e0
/* 805D0A00  4B FF A7 B9 */	bl __register_global_object
/* 805D0A04  38 00 00 01 */	li r0, 1
/* 805D0A08  98 1D 04 B8 */	stb r0, 0x4b8(r29)
lbl_805D0A0C:
/* 805D0A0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D0A10  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 805D0A14  88 1C 5D B0 */	lbz r0, 0x5db0(r28)
/* 805D0A18  7C 00 07 74 */	extsb r0, r0
/* 805D0A1C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805D0A20  7C 7C 02 14 */	add r3, r28, r0
/* 805D0A24  83 43 5D 74 */	lwz r26, 0x5d74(r3)
/* 805D0A28  83 3C 5D AC */	lwz r25, 0x5dac(r28)
/* 805D0A2C  80 1F 04 E4 */	lwz r0, 0x4e4(r31)
/* 805D0A30  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805D0A34  A0 1F 04 E8 */	lhz r0, 0x4e8(r31)
/* 805D0A38  B0 01 00 50 */	sth r0, 0x50(r1)
/* 805D0A3C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D0A40  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 805D0A44  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 805D0A48  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 805D0A4C  7F E3 FB 78 */	mr r3, r31
/* 805D0A50  4B FF B2 B1 */	bl mHeadAngle_Clear__8daB_DS_cFv
/* 805D0A54  38 00 00 32 */	li r0, 0x32
/* 805D0A58  98 1F 08 4E */	stb r0, 0x84e(r31)
/* 805D0A5C  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D0A60  2C 00 00 14 */	cmpwi r0, 0x14
/* 805D0A64  41 82 0F AC */	beq lbl_805D1A10
/* 805D0A68  40 80 00 40 */	bge lbl_805D0AA8
/* 805D0A6C  2C 00 00 03 */	cmpwi r0, 3
/* 805D0A70  41 82 06 80 */	beq lbl_805D10F0
/* 805D0A74  40 80 00 1C */	bge lbl_805D0A90
/* 805D0A78  2C 00 00 01 */	cmpwi r0, 1
/* 805D0A7C  41 82 02 0C */	beq lbl_805D0C88
/* 805D0A80  40 80 02 7C */	bge lbl_805D0CFC
/* 805D0A84  2C 00 00 00 */	cmpwi r0, 0
/* 805D0A88  40 80 00 4C */	bge lbl_805D0AD4
/* 805D0A8C  48 00 13 40 */	b lbl_805D1DCC
lbl_805D0A90:
/* 805D0A90  2C 00 00 0B */	cmpwi r0, 0xb
/* 805D0A94  41 82 0A 5C */	beq lbl_805D14F0
/* 805D0A98  40 80 13 34 */	bge lbl_805D1DCC
/* 805D0A9C  2C 00 00 0A */	cmpwi r0, 0xa
/* 805D0AA0  40 80 08 CC */	bge lbl_805D136C
/* 805D0AA4  48 00 13 28 */	b lbl_805D1DCC
lbl_805D0AA8:
/* 805D0AA8  2C 00 00 64 */	cmpwi r0, 0x64
/* 805D0AAC  41 82 11 1C */	beq lbl_805D1BC8
/* 805D0AB0  40 80 00 14 */	bge lbl_805D0AC4
/* 805D0AB4  2C 00 00 16 */	cmpwi r0, 0x16
/* 805D0AB8  41 82 10 C4 */	beq lbl_805D1B7C
/* 805D0ABC  40 80 13 10 */	bge lbl_805D1DCC
/* 805D0AC0  48 00 0F F0 */	b lbl_805D1AB0
lbl_805D0AC4:
/* 805D0AC4  2C 00 00 66 */	cmpwi r0, 0x66
/* 805D0AC8  41 82 12 6C */	beq lbl_805D1D34
/* 805D0ACC  40 80 13 00 */	bge lbl_805D1DCC
/* 805D0AD0  48 00 11 94 */	b lbl_805D1C64
lbl_805D0AD4:
/* 805D0AD4  38 00 00 00 */	li r0, 0
/* 805D0AD8  90 1F 06 A0 */	stw r0, 0x6a0(r31)
/* 805D0ADC  80 1F 2A 78 */	lwz r0, 0x2a78(r31)
/* 805D0AE0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805D0AE4  90 1F 2A 78 */	stw r0, 0x2a78(r31)
/* 805D0AE8  80 1F 2B B4 */	lwz r0, 0x2bb4(r31)
/* 805D0AEC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805D0AF0  90 1F 2B B4 */	stw r0, 0x2bb4(r31)
/* 805D0AF4  7F E3 FB 78 */	mr r3, r31
/* 805D0AF8  4B FF CD E1 */	bl startDemoCheck__8daB_DS_cFv
/* 805D0AFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D0B00  41 82 12 CC */	beq lbl_805D1DCC
/* 805D0B04  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D0B08  D0 1F 07 FC */	stfs f0, 0x7fc(r31)
/* 805D0B0C  3A E0 00 00 */	li r23, 0
/* 805D0B10  3B 40 00 00 */	li r26, 0
/* 805D0B14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D0B18  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 805D0B1C  3B 1B 03 64 */	addi r24, r27, 0x364
lbl_805D0B20:
/* 805D0B20  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805D0B24  38 80 00 00 */	li r4, 0
/* 805D0B28  90 81 00 08 */	stw r4, 8(r1)
/* 805D0B2C  38 00 FF FF */	li r0, -1
/* 805D0B30  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D0B34  90 81 00 10 */	stw r4, 0x10(r1)
/* 805D0B38  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D0B3C  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D0B40  38 80 00 00 */	li r4, 0
/* 805D0B44  7C B8 D2 2E */	lhzx r5, r24, r26
/* 805D0B48  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 805D0B4C  38 E0 00 00 */	li r7, 0
/* 805D0B50  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 805D0B54  39 20 00 00 */	li r9, 0
/* 805D0B58  39 40 00 FF */	li r10, 0xff
/* 805D0B5C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D0B60  4B A7 BF 30 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D0B64  3A F7 00 01 */	addi r23, r23, 1
/* 805D0B68  2C 17 00 02 */	cmpwi r23, 2
/* 805D0B6C  3B 5A 00 02 */	addi r26, r26, 2
/* 805D0B70  41 80 FF B0 */	blt lbl_805D0B20
/* 805D0B74  38 00 00 00 */	li r0, 0
/* 805D0B78  98 1F 08 4D */	stb r0, 0x84d(r31)
/* 805D0B7C  7F E3 FB 78 */	mr r3, r31
/* 805D0B80  38 80 00 01 */	li r4, 1
/* 805D0B84  4B FF BC 89 */	bl mClearTrap__8daB_DS_cFb
/* 805D0B88  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805D0B8C  38 00 00 03 */	li r0, 3
/* 805D0B90  B0 04 06 04 */	sth r0, 0x604(r4)
/* 805D0B94  38 60 00 00 */	li r3, 0
/* 805D0B98  90 64 06 0C */	stw r3, 0x60c(r4)
/* 805D0B9C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805D0BA0  38 00 00 0E */	li r0, 0xe
/* 805D0BA4  90 04 06 14 */	stw r0, 0x614(r4)
/* 805D0BA8  38 00 00 01 */	li r0, 1
/* 805D0BAC  90 04 06 0C */	stw r0, 0x60c(r4)
/* 805D0BB0  90 64 06 10 */	stw r3, 0x610(r4)
/* 805D0BB4  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 805D0BB8  7F E3 FB 78 */	mr r3, r31
/* 805D0BBC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805D0BC0  4B A4 9B 50 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D0BC4  7C 65 1B 78 */	mr r5, r3
/* 805D0BC8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D0BCC  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 805D0BD0  38 C0 00 00 */	li r6, 0
/* 805D0BD4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D0BD8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805D0BDC  7D 89 03 A6 */	mtctr r12
/* 805D0BE0  4E 80 04 21 */	bctrl 
/* 805D0BE4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D0BE8  D0 21 01 20 */	stfs f1, 0x120(r1)
/* 805D0BEC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D0BF0  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 805D0BF4  D0 21 01 28 */	stfs f1, 0x128(r1)
/* 805D0BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D0BFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D0C00  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D0C04  38 80 00 05 */	li r4, 5
/* 805D0C08  38 A0 00 1F */	li r5, 0x1f
/* 805D0C0C  38 C1 01 20 */	addi r6, r1, 0x120
/* 805D0C10  4B A9 EE 14 */	b StartShock__12dVibration_cFii4cXyz
/* 805D0C14  7F E3 FB 78 */	mr r3, r31
/* 805D0C18  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805D0C1C  4B A4 9A F4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D0C20  B0 7F 07 D0 */	sth r3, 0x7d0(r31)
/* 805D0C24  7F E3 FB 78 */	mr r3, r31
/* 805D0C28  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805D0C2C  54 00 10 3A */	slwi r0, r0, 2
/* 805D0C30  38 9B 03 4C */	addi r4, r27, 0x34c
/* 805D0C34  7C 84 00 2E */	lwzx r4, r4, r0
/* 805D0C38  38 A0 00 02 */	li r5, 2
/* 805D0C3C  C0 3E 03 B8 */	lfs f1, 0x3b8(r30)
/* 805D0C40  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D0C44  4B FF AE 85 */	bl setBck__8daB_DS_cFiUcff
/* 805D0C48  38 00 00 01 */	li r0, 1
/* 805D0C4C  98 1F 08 51 */	stb r0, 0x851(r31)
/* 805D0C50  38 00 00 00 */	li r0, 0
/* 805D0C54  98 1F 08 5E */	stb r0, 0x85e(r31)
/* 805D0C58  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D0C5C  2C 00 00 00 */	cmpwi r0, 0
/* 805D0C60  40 82 00 10 */	bne lbl_805D0C70
/* 805D0C64  38 00 00 05 */	li r0, 5
/* 805D0C68  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D0C6C  48 00 00 0C */	b lbl_805D0C78
lbl_805D0C70:
/* 805D0C70  38 00 00 1E */	li r0, 0x1e
/* 805D0C74  90 1F 08 1C */	stw r0, 0x81c(r31)
lbl_805D0C78:
/* 805D0C78  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D0C7C  38 03 00 01 */	addi r0, r3, 1
/* 805D0C80  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D0C84  48 00 11 48 */	b lbl_805D1DCC
lbl_805D0C88:
/* 805D0C88  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D0C8C  48 00 BC 59 */	bl func_805DC8E4
/* 805D0C90  2C 03 00 00 */	cmpwi r3, 0
/* 805D0C94  40 82 11 38 */	bne lbl_805D1DCC
/* 805D0C98  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805D0C9C  38 00 00 0E */	li r0, 0xe
/* 805D0CA0  90 04 06 14 */	stw r0, 0x614(r4)
/* 805D0CA4  38 00 00 02 */	li r0, 2
/* 805D0CA8  90 04 06 0C */	stw r0, 0x60c(r4)
/* 805D0CAC  38 60 00 00 */	li r3, 0
/* 805D0CB0  90 64 06 10 */	stw r3, 0x610(r4)
/* 805D0CB4  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 805D0CB8  38 00 00 29 */	li r0, 0x29
/* 805D0CBC  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D0CC0  98 7F 08 53 */	stb r3, 0x853(r31)
/* 805D0CC4  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805D0CC8  28 00 00 02 */	cmplwi r0, 2
/* 805D0CCC  40 80 00 18 */	bge lbl_805D0CE4
/* 805D0CD0  90 1F 08 14 */	stw r0, 0x814(r31)
/* 805D0CD4  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D0CD8  38 03 00 01 */	addi r0, r3, 1
/* 805D0CDC  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D0CE0  48 00 10 EC */	b lbl_805D1DCC
lbl_805D0CE4:
/* 805D0CE4  38 00 00 01 */	li r0, 1
/* 805D0CE8  98 1F 08 50 */	stb r0, 0x850(r31)
/* 805D0CEC  98 1F 08 53 */	stb r0, 0x853(r31)
/* 805D0CF0  38 00 00 0A */	li r0, 0xa
/* 805D0CF4  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D0CF8  48 00 10 D4 */	b lbl_805D1DCC
lbl_805D0CFC:
/* 805D0CFC  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D0D00  48 00 BB E5 */	bl func_805DC8E4
/* 805D0D04  2C 03 00 01 */	cmpwi r3, 1
/* 805D0D08  40 82 00 3C */	bne lbl_805D0D44
/* 805D0D0C  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 805D0D10  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805D0D14  41 82 00 0C */	beq lbl_805D0D20
/* 805D0D18  2C 00 00 21 */	cmpwi r0, 0x21
/* 805D0D1C  40 82 00 28 */	bne lbl_805D0D44
lbl_805D0D20:
/* 805D0D20  7F E3 FB 78 */	mr r3, r31
/* 805D0D24  80 1F 08 14 */	lwz r0, 0x814(r31)
/* 805D0D28  54 00 10 3A */	slwi r0, r0, 2
/* 805D0D2C  38 9B 03 58 */	addi r4, r27, 0x358
/* 805D0D30  7C 84 00 2E */	lwzx r4, r4, r0
/* 805D0D34  38 A0 00 00 */	li r5, 0
/* 805D0D38  C0 3E 03 B8 */	lfs f1, 0x3b8(r30)
/* 805D0D3C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D0D40  4B FF AD 89 */	bl setBck__8daB_DS_cFiUcff
lbl_805D0D44:
/* 805D0D44  80 1F 08 1C */	lwz r0, 0x81c(r31)
/* 805D0D48  2C 00 00 00 */	cmpwi r0, 0
/* 805D0D4C  40 82 03 08 */	bne lbl_805D1054
/* 805D0D50  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 805D0D54  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805D0D58  41 82 02 FC */	beq lbl_805D1054
/* 805D0D5C  2C 00 00 21 */	cmpwi r0, 0x21
/* 805D0D60  41 82 02 F4 */	beq lbl_805D1054
/* 805D0D64  80 1F 08 14 */	lwz r0, 0x814(r31)
/* 805D0D68  2C 00 00 00 */	cmpwi r0, 0
/* 805D0D6C  40 82 00 1C */	bne lbl_805D0D88
/* 805D0D70  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D0D74  38 63 00 0C */	addi r3, r3, 0xc
/* 805D0D78  C0 3E 03 BC */	lfs f1, 0x3bc(r30)
/* 805D0D7C  4B D5 76 B0 */	b checkPass__12J3DFrameCtrlFf
/* 805D0D80  2C 03 00 00 */	cmpwi r3, 0
/* 805D0D84  40 82 00 28 */	bne lbl_805D0DAC
lbl_805D0D88:
/* 805D0D88  80 1F 08 14 */	lwz r0, 0x814(r31)
/* 805D0D8C  2C 00 00 00 */	cmpwi r0, 0
/* 805D0D90  41 82 02 C4 */	beq lbl_805D1054
/* 805D0D94  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D0D98  38 63 00 0C */	addi r3, r3, 0xc
/* 805D0D9C  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 805D0DA0  4B D5 76 8C */	b checkPass__12J3DFrameCtrlFf
/* 805D0DA4  2C 03 00 00 */	cmpwi r3, 0
/* 805D0DA8  41 82 02 AC */	beq lbl_805D1054
lbl_805D0DAC:
/* 805D0DAC  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805D0DB0  54 19 10 3A */	slwi r25, r0, 2
/* 805D0DB4  3B 40 00 00 */	li r26, 0
/* 805D0DB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D0DBC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
lbl_805D0DC0:
/* 805D0DC0  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 805D0DC4  38 80 00 00 */	li r4, 0
/* 805D0DC8  90 81 00 08 */	stw r4, 8(r1)
/* 805D0DCC  38 00 FF FF */	li r0, -1
/* 805D0DD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D0DD4  90 81 00 10 */	stw r4, 0x10(r1)
/* 805D0DD8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D0DDC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D0DE0  38 80 00 00 */	li r4, 0
/* 805D0DE4  7C 19 D2 14 */	add r0, r25, r26
/* 805D0DE8  54 00 18 38 */	slwi r0, r0, 3
/* 805D0DEC  3B BE 02 FC */	addi r29, r30, 0x2fc
/* 805D0DF0  7F BD 02 14 */	add r29, r29, r0
/* 805D0DF4  A0 BD 00 00 */	lhz r5, 0(r29)
/* 805D0DF8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 805D0DFC  38 E0 00 00 */	li r7, 0
/* 805D0E00  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 805D0E04  39 20 00 00 */	li r9, 0
/* 805D0E08  39 40 00 FF */	li r10, 0xff
/* 805D0E0C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D0E10  4B A7 BC 80 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D0E14  7C 78 1B 79 */	or. r24, r3, r3
/* 805D0E18  41 82 00 40 */	beq lbl_805D0E58
/* 805D0E1C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D0E20  80 63 00 04 */	lwz r3, 4(r3)
/* 805D0E24  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805D0E28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D0E2C  80 1D 00 04 */	lwz r0, 4(r29)
/* 805D0E30  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805D0E34  7C 63 02 14 */	add r3, r3, r0
/* 805D0E38  38 98 00 68 */	addi r4, r24, 0x68
/* 805D0E3C  38 B8 00 98 */	addi r5, r24, 0x98
/* 805D0E40  38 D8 00 A4 */	addi r6, r24, 0xa4
/* 805D0E44  4B CA F9 C4 */	b func_80280808
/* 805D0E48  C0 38 00 9C */	lfs f1, 0x9c(r24)
/* 805D0E4C  C0 18 00 98 */	lfs f0, 0x98(r24)
/* 805D0E50  D0 18 00 B0 */	stfs f0, 0xb0(r24)
/* 805D0E54  D0 38 00 B4 */	stfs f1, 0xb4(r24)
lbl_805D0E58:
/* 805D0E58  3B 5A 00 01 */	addi r26, r26, 1
/* 805D0E5C  2C 1A 00 04 */	cmpwi r26, 4
/* 805D0E60  41 80 FF 60 */	blt lbl_805D0DC0
/* 805D0E64  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D0E68  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805D0E6C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D0E70  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805D0E74  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D0E78  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805D0E7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C5@ha */
/* 805D0E80  38 03 04 C5 */	addi r0, r3, 0x04C5 /* 0x000704C5@l */
/* 805D0E84  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D0E88  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D0E8C  38 81 00 3C */	addi r4, r1, 0x3c
/* 805D0E90  38 A0 00 00 */	li r5, 0
/* 805D0E94  38 C0 FF FF */	li r6, -1
/* 805D0E98  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D0E9C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D0EA0  7D 89 03 A6 */	mtctr r12
/* 805D0EA4  4E 80 04 21 */	bctrl 
/* 805D0EA8  7F E3 FB 78 */	mr r3, r31
/* 805D0EAC  4B FF F4 C9 */	bl damageSet__8daB_DS_cFv
/* 805D0EB0  88 7F 08 4F */	lbz r3, 0x84f(r31)
/* 805D0EB4  38 03 00 01 */	addi r0, r3, 1
/* 805D0EB8  98 1F 08 4F */	stb r0, 0x84f(r31)
/* 805D0EBC  7F E3 FB 78 */	mr r3, r31
/* 805D0EC0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805D0EC4  4B A4 98 4C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D0EC8  7C 7B 1B 78 */	mr r27, r3
/* 805D0ECC  3B 20 00 00 */	li r25, 0
/* 805D0ED0  3B 40 00 00 */	li r26, 0
/* 805D0ED4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D0ED8  3B 03 07 68 */	addi r24, r3, calc_mtx@l
/* 805D0EDC  C3 BE 00 04 */	lfs f29, 4(r30)
/* 805D0EE0  C3 DE 00 50 */	lfs f30, 0x50(r30)
/* 805D0EE4  C3 FE 00 5C */	lfs f31, 0x5c(r30)
lbl_805D0EE8:
/* 805D0EE8  80 78 00 00 */	lwz r3, 0(r24)
/* 805D0EEC  7F 64 DB 78 */	mr r4, r27
/* 805D0EF0  4B A3 B4 EC */	b mDoMtx_YrotS__FPA4_fs
/* 805D0EF4  D3 A1 01 BC */	stfs f29, 0x1bc(r1)
/* 805D0EF8  D3 A1 01 C0 */	stfs f29, 0x1c0(r1)
/* 805D0EFC  D3 C1 01 C4 */	stfs f30, 0x1c4(r1)
/* 805D0F00  38 61 01 BC */	addi r3, r1, 0x1bc
/* 805D0F04  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 805D0F08  4B C9 FF E4 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D0F0C  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 805D0F10  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805D0F14  7C 65 1B 78 */	mr r5, r3
/* 805D0F18  4B D7 61 78 */	b PSVECAdd
/* 805D0F1C  C0 1F 09 48 */	lfs f0, 0x948(r31)
/* 805D0F20  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 805D0F24  41 82 00 08 */	beq lbl_805D0F2C
/* 805D0F28  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
lbl_805D0F2C:
/* 805D0F2C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805D0F30  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 805D0F34  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805D0F38  B0 01 00 4E */	sth r0, 0x4e(r1)
/* 805D0F3C  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 805D0F40  B0 01 00 50 */	sth r0, 0x50(r1)
/* 805D0F44  7F E3 FB 78 */	mr r3, r31
/* 805D0F48  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805D0F4C  4B A4 97 C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D0F50  B0 61 00 4E */	sth r3, 0x4e(r1)
/* 805D0F54  3B BA 2D 3C */	addi r29, r26, 0x2d3c
/* 805D0F58  7C 7F E8 2E */	lwzx r3, r31, r29
/* 805D0F5C  28 03 00 00 */	cmplwi r3, 0
/* 805D0F60  41 82 00 1C */	beq lbl_805D0F7C
/* 805D0F64  38 81 00 40 */	addi r4, r1, 0x40
/* 805D0F68  4B A4 8A 54 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 805D0F6C  2C 03 00 00 */	cmpwi r3, 0
/* 805D0F70  40 82 00 0C */	bne lbl_805D0F7C
/* 805D0F74  38 00 00 00 */	li r0, 0
/* 805D0F78  7C 1F E9 2E */	stwx r0, r31, r29
lbl_805D0F7C:
/* 805D0F7C  7C 1F E8 2E */	lwzx r0, r31, r29
/* 805D0F80  28 00 00 00 */	cmplwi r0, 0
/* 805D0F84  40 82 00 48 */	bne lbl_805D0FCC
/* 805D0F88  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D0F8C  7C 07 07 74 */	extsb r7, r0
/* 805D0F90  38 00 00 00 */	li r0, 0
/* 805D0F94  90 01 00 08 */	stw r0, 8(r1)
/* 805D0F98  38 60 01 DF */	li r3, 0x1df
/* 805D0F9C  28 1F 00 00 */	cmplwi r31, 0
/* 805D0FA0  41 82 00 0C */	beq lbl_805D0FAC
/* 805D0FA4  80 9F 00 04 */	lwz r4, 4(r31)
/* 805D0FA8  48 00 00 08 */	b lbl_805D0FB0
lbl_805D0FAC:
/* 805D0FAC  38 80 FF FF */	li r4, -1
lbl_805D0FB0:
/* 805D0FB0  38 A0 00 01 */	li r5, 1
/* 805D0FB4  38 C1 01 B0 */	addi r6, r1, 0x1b0
/* 805D0FB8  39 01 00 4C */	addi r8, r1, 0x4c
/* 805D0FBC  39 20 00 00 */	li r9, 0
/* 805D0FC0  39 40 FF FF */	li r10, -1
/* 805D0FC4  4B A4 8F 2C */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 805D0FC8  7C 7F E9 2E */	stwx r3, r31, r29
lbl_805D0FCC:
/* 805D0FCC  3B 39 00 01 */	addi r25, r25, 1
/* 805D0FD0  2C 19 00 0F */	cmpwi r25, 0xf
/* 805D0FD4  3B 5A 00 04 */	addi r26, r26, 4
/* 805D0FD8  41 80 FF 10 */	blt lbl_805D0EE8
/* 805D0FDC  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805D0FE0  28 00 00 02 */	cmplwi r0, 2
/* 805D0FE4  40 82 00 70 */	bne lbl_805D1054
/* 805D0FE8  3A E0 00 00 */	li r23, 0
/* 805D0FEC  3B 20 00 00 */	li r25, 0
lbl_805D0FF0:
/* 805D0FF0  3B 19 2D C8 */	addi r24, r25, 0x2dc8
/* 805D0FF4  7C 1F C0 2E */	lwzx r0, r31, r24
/* 805D0FF8  28 00 00 00 */	cmplwi r0, 0
/* 805D0FFC  40 82 00 48 */	bne lbl_805D1044
/* 805D1000  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D1004  7C 07 07 74 */	extsb r7, r0
/* 805D1008  38 00 00 00 */	li r0, 0
/* 805D100C  90 01 00 08 */	stw r0, 8(r1)
/* 805D1010  38 60 01 DF */	li r3, 0x1df
/* 805D1014  28 1F 00 00 */	cmplwi r31, 0
/* 805D1018  41 82 00 0C */	beq lbl_805D1024
/* 805D101C  80 9F 00 04 */	lwz r4, 4(r31)
/* 805D1020  48 00 00 08 */	b lbl_805D1028
lbl_805D1024:
/* 805D1024  38 80 FF FF */	li r4, -1
lbl_805D1028:
/* 805D1028  38 A0 00 02 */	li r5, 2
/* 805D102C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 805D1030  39 00 00 00 */	li r8, 0
/* 805D1034  39 20 00 00 */	li r9, 0
/* 805D1038  39 40 FF FF */	li r10, -1
/* 805D103C  4B A4 8E B4 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 805D1040  7C 7F C1 2E */	stwx r3, r31, r24
lbl_805D1044:
/* 805D1044  3A F7 00 01 */	addi r23, r23, 1
/* 805D1048  2C 17 00 05 */	cmpwi r23, 5
/* 805D104C  3B 39 00 04 */	addi r25, r25, 4
/* 805D1050  41 80 FF A0 */	blt lbl_805D0FF0
lbl_805D1054:
/* 805D1054  80 1F 08 14 */	lwz r0, 0x814(r31)
/* 805D1058  54 00 10 3A */	slwi r0, r0, 2
/* 805D105C  7C 7F 02 14 */	add r3, r31, r0
/* 805D1060  C0 23 07 DC */	lfs f1, 0x7dc(r3)
/* 805D1064  C0 1E 03 C0 */	lfs f0, 0x3c0(r30)
/* 805D1068  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D106C  D0 03 07 DC */	stfs f0, 0x7dc(r3)
/* 805D1070  80 1F 08 14 */	lwz r0, 0x814(r31)
/* 805D1074  54 00 10 3A */	slwi r0, r0, 2
/* 805D1078  7C 7F 02 14 */	add r3, r31, r0
/* 805D107C  C0 23 07 DC */	lfs f1, 0x7dc(r3)
/* 805D1080  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D1084  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D1088  40 80 00 08 */	bge lbl_805D1090
/* 805D108C  D0 03 07 DC */	stfs f0, 0x7dc(r3)
lbl_805D1090:
/* 805D1090  7F E3 FB 78 */	mr r3, r31
/* 805D1094  4B FF F3 59 */	bl damageHitCamera__8daB_DS_cFv
/* 805D1098  7F E3 FB 78 */	mr r3, r31
/* 805D109C  4B FF F4 E9 */	bl damageDownCheck__8daB_DS_cFv
/* 805D10A0  88 1F 08 5E */	lbz r0, 0x85e(r31)
/* 805D10A4  28 00 00 00 */	cmplwi r0, 0
/* 805D10A8  41 82 0D 24 */	beq lbl_805D1DCC
/* 805D10AC  80 1F 08 14 */	lwz r0, 0x814(r31)
/* 805D10B0  54 00 10 3A */	slwi r0, r0, 2
/* 805D10B4  7C 7F 02 14 */	add r3, r31, r0
/* 805D10B8  C0 23 07 DC */	lfs f1, 0x7dc(r3)
/* 805D10BC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805D10C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D10C4  40 80 0D 08 */	bge lbl_805D1DCC
/* 805D10C8  38 00 00 1E */	li r0, 0x1e
/* 805D10CC  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D10D0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D10D4  80 1F 08 14 */	lwz r0, 0x814(r31)
/* 805D10D8  54 00 10 3A */	slwi r0, r0, 2
/* 805D10DC  7C 7F 02 14 */	add r3, r31, r0
/* 805D10E0  D0 03 07 DC */	stfs f0, 0x7dc(r3)
/* 805D10E4  38 00 00 03 */	li r0, 3
/* 805D10E8  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D10EC  48 00 0C E0 */	b lbl_805D1DCC
lbl_805D10F0:
/* 805D10F0  7F E3 FB 78 */	mr r3, r31
/* 805D10F4  4B FF F4 91 */	bl damageDownCheck__8daB_DS_cFv
/* 805D10F8  38 00 00 00 */	li r0, 0
/* 805D10FC  98 1F 08 51 */	stb r0, 0x851(r31)
/* 805D1100  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D1104  48 00 B7 E1 */	bl func_805DC8E4
/* 805D1108  2C 03 00 00 */	cmpwi r3, 0
/* 805D110C  40 82 0C C0 */	bne lbl_805D1DCC
/* 805D1110  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D1114  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D1118  80 63 00 00 */	lwz r3, 0(r3)
/* 805D111C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805D1120  4B A3 B2 BC */	b mDoMtx_YrotS__FPA4_fs
/* 805D1124  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D1128  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 805D112C  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 805D1130  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 805D1134  C0 1E 03 C4 */	lfs f0, 0x3c4(r30)
/* 805D1138  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 805D113C  C0 1E 03 C8 */	lfs f0, 0x3c8(r30)
/* 805D1140  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 805D1144  38 61 01 BC */	addi r3, r1, 0x1bc
/* 805D1148  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 805D114C  4B C9 FD A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D1150  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 805D1154  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805D1158  7C 65 1B 78 */	mr r5, r3
/* 805D115C  4B D7 5F 34 */	b PSVECAdd
/* 805D1160  38 7F 2D 20 */	addi r3, r31, 0x2d20
/* 805D1164  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 805D1168  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D116C  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 805D1170  C0 7E 02 EC */	lfs f3, 0x2ec(r30)
/* 805D1174  4B C9 E9 44 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805D1178  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D117C  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 805D1180  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 805D1184  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 805D1188  C0 1E 03 CC */	lfs f0, 0x3cc(r30)
/* 805D118C  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 805D1190  C0 1E 03 D0 */	lfs f0, 0x3d0(r30)
/* 805D1194  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 805D1198  38 61 01 BC */	addi r3, r1, 0x1bc
/* 805D119C  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 805D11A0  4B C9 FD 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 805D11A4  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 805D11A8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805D11AC  7C 65 1B 78 */	mr r5, r3
/* 805D11B0  4B D7 5E E0 */	b PSVECAdd
/* 805D11B4  38 7F 2D 14 */	addi r3, r31, 0x2d14
/* 805D11B8  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 805D11BC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D11C0  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 805D11C4  C0 7E 02 EC */	lfs f3, 0x2ec(r30)
/* 805D11C8  4B C9 E8 F0 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805D11CC  C0 1F 2D 20 */	lfs f0, 0x2d20(r31)
/* 805D11D0  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 805D11D4  C0 1F 2D 24 */	lfs f0, 0x2d24(r31)
/* 805D11D8  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 805D11DC  C0 1F 2D 28 */	lfs f0, 0x2d28(r31)
/* 805D11E0  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 805D11E4  C0 1F 2D 14 */	lfs f0, 0x2d14(r31)
/* 805D11E8  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 805D11EC  C0 1F 2D 18 */	lfs f0, 0x2d18(r31)
/* 805D11F0  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 805D11F4  C0 1F 2D 1C */	lfs f0, 0x2d1c(r31)
/* 805D11F8  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 805D11FC  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D1200  38 81 01 14 */	addi r4, r1, 0x114
/* 805D1204  38 A1 01 08 */	addi r5, r1, 0x108
/* 805D1208  4B BA F8 A0 */	b Set__9dCamera_cF4cXyz4cXyz
/* 805D120C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D1210  38 80 00 01 */	li r4, 1
/* 805D1214  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805D1218  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805D121C  40 82 00 18 */	bne lbl_805D1234
/* 805D1220  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D1224  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D1228  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D122C  41 82 00 08 */	beq lbl_805D1234
/* 805D1230  38 80 00 00 */	li r4, 0
lbl_805D1234:
/* 805D1234  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D1238  41 82 0B 94 */	beq lbl_805D1DCC
/* 805D123C  38 00 00 00 */	li r0, 0
/* 805D1240  90 1F 08 14 */	stw r0, 0x814(r31)
/* 805D1244  7F E3 FB 78 */	mr r3, r31
/* 805D1248  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805D124C  4B A4 95 94 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D1250  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D1254  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D1258  80 63 00 00 */	lwz r3, 0(r3)
/* 805D125C  C0 1E 03 D4 */	lfs f0, 0x3d4(r30)
/* 805D1260  EC 00 08 2A */	fadds f0, f0, f1
/* 805D1264  FC 00 00 1E */	fctiwz f0, f0
/* 805D1268  D8 01 01 C8 */	stfd f0, 0x1c8(r1)
/* 805D126C  80 81 01 CC */	lwz r4, 0x1cc(r1)
/* 805D1270  4B A3 B1 6C */	b mDoMtx_YrotS__FPA4_fs
/* 805D1274  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D1278  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 805D127C  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 805D1280  C0 1E 03 D8 */	lfs f0, 0x3d8(r30)
/* 805D1284  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 805D1288  38 61 01 BC */	addi r3, r1, 0x1bc
/* 805D128C  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 805D1290  4B C9 FC 5C */	b MtxPosition__FP4cXyzP4cXyz
/* 805D1294  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 805D1298  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 805D129C  7C 65 1B 78 */	mr r5, r3
/* 805D12A0  4B D7 5D F0 */	b PSVECAdd
/* 805D12A4  C0 59 04 D0 */	lfs f2, 0x4d0(r25)
/* 805D12A8  D0 41 01 BC */	stfs f2, 0x1bc(r1)
/* 805D12AC  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 805D12B0  D0 21 01 C0 */	stfs f1, 0x1c0(r1)
/* 805D12B4  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 805D12B8  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 805D12BC  D0 41 00 FC */	stfs f2, 0xfc(r1)
/* 805D12C0  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 805D12C4  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 805D12C8  C0 01 01 B0 */	lfs f0, 0x1b0(r1)
/* 805D12CC  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 805D12D0  C0 01 01 B4 */	lfs f0, 0x1b4(r1)
/* 805D12D4  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 805D12D8  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 805D12DC  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805D12E0  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D12E4  38 81 00 FC */	addi r4, r1, 0xfc
/* 805D12E8  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 805D12EC  4B BA F9 2C */	b Reset__9dCamera_cF4cXyz4cXyz
/* 805D12F0  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D12F4  4B B9 01 B8 */	b Start__9dCamera_cFv
/* 805D12F8  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D12FC  38 80 00 00 */	li r4, 0
/* 805D1300  4B B9 1D 0C */	b SetTrimSize__9dCamera_cFl
/* 805D1304  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D1308  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D130C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805D1310  4B A7 11 58 */	b reset__14dEvt_control_cFv
/* 805D1314  88 9F 08 59 */	lbz r4, 0x859(r31)
/* 805D1318  28 04 00 FF */	cmplwi r4, 0xff
/* 805D131C  41 82 00 18 */	beq lbl_805D1334
/* 805D1320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D1324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D1328  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805D132C  7C 05 07 74 */	extsb r5, r0
/* 805D1330  4B A6 3F 80 */	b offSwitch__10dSv_info_cFii
lbl_805D1334:
/* 805D1334  38 00 00 1E */	li r0, 0x1e
/* 805D1338  90 1F 06 90 */	stw r0, 0x690(r31)
/* 805D133C  7F E3 FB 78 */	mr r3, r31
/* 805D1340  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805D1344  4B A4 93 CC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D1348  3C 63 00 01 */	addis r3, r3, 1
/* 805D134C  38 03 C0 00 */	addi r0, r3, -16384
/* 805D1350  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805D1354  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805D1358  7F E3 FB 78 */	mr r3, r31
/* 805D135C  38 80 00 06 */	li r4, 6
/* 805D1360  38 A0 00 00 */	li r5, 0
/* 805D1364  4B FF A8 11 */	bl setActionMode__8daB_DS_cFii
/* 805D1368  48 00 0A 64 */	b lbl_805D1DCC
lbl_805D136C:
/* 805D136C  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805D1370  54 00 10 3A */	slwi r0, r0, 2
/* 805D1374  7C 7F 02 14 */	add r3, r31, r0
/* 805D1378  C0 23 07 DC */	lfs f1, 0x7dc(r3)
/* 805D137C  C0 1E 03 C0 */	lfs f0, 0x3c0(r30)
/* 805D1380  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D1384  D0 03 07 DC */	stfs f0, 0x7dc(r3)
/* 805D1388  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805D138C  54 00 10 3A */	slwi r0, r0, 2
/* 805D1390  7C 7F 02 14 */	add r3, r31, r0
/* 805D1394  C0 23 07 DC */	lfs f1, 0x7dc(r3)
/* 805D1398  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D139C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D13A0  40 80 00 08 */	bge lbl_805D13A8
/* 805D13A4  D0 03 07 DC */	stfs f0, 0x7dc(r3)
lbl_805D13A8:
/* 805D13A8  7F E3 FB 78 */	mr r3, r31
/* 805D13AC  4B FF F0 41 */	bl damageHitCamera__8daB_DS_cFv
/* 805D13B0  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D13B4  48 00 B5 31 */	bl func_805DC8E4
/* 805D13B8  2C 03 00 00 */	cmpwi r3, 0
/* 805D13BC  40 82 0A 10 */	bne lbl_805D1DCC
/* 805D13C0  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805D13C4  54 00 10 3A */	slwi r0, r0, 2
/* 805D13C8  7C 7F 02 14 */	add r3, r31, r0
/* 805D13CC  C0 23 07 DC */	lfs f1, 0x7dc(r3)
/* 805D13D0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D13D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D13D8  40 82 09 F4 */	bne lbl_805D1DCC
/* 805D13DC  88 9F 08 57 */	lbz r4, 0x857(r31)
/* 805D13E0  28 04 00 FF */	cmplwi r4, 0xff
/* 805D13E4  41 82 00 18 */	beq lbl_805D13FC
/* 805D13E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D13EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D13F0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805D13F4  7C 05 07 74 */	extsb r5, r0
/* 805D13F8  4B A6 3E B8 */	b offSwitch__10dSv_info_cFii
lbl_805D13FC:
/* 805D13FC  7F E3 FB 78 */	mr r3, r31
/* 805D1400  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805D1404  54 00 10 3A */	slwi r0, r0, 2
/* 805D1408  38 9B 03 58 */	addi r4, r27, 0x358
/* 805D140C  7C 84 00 2E */	lwzx r4, r4, r0
/* 805D1410  38 A0 00 00 */	li r5, 0
/* 805D1414  C0 3E 03 B8 */	lfs f1, 0x3b8(r30)
/* 805D1418  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D141C  4B FF A6 AD */	bl setBck__8daB_DS_cFiUcff
/* 805D1420  3A E0 00 00 */	li r23, 0
/* 805D1424  3B 20 00 00 */	li r25, 0
/* 805D1428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D142C  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 805D1430  3B 1B 03 68 */	addi r24, r27, 0x368
lbl_805D1434:
/* 805D1434  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805D1438  38 80 00 00 */	li r4, 0
/* 805D143C  90 81 00 08 */	stw r4, 8(r1)
/* 805D1440  38 00 FF FF */	li r0, -1
/* 805D1444  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D1448  90 81 00 10 */	stw r4, 0x10(r1)
/* 805D144C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D1450  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D1454  38 80 00 00 */	li r4, 0
/* 805D1458  7C B8 CA 2E */	lhzx r5, r24, r25
/* 805D145C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 805D1460  38 E0 00 00 */	li r7, 0
/* 805D1464  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 805D1468  39 20 00 00 */	li r9, 0
/* 805D146C  39 40 00 FF */	li r10, 0xff
/* 805D1470  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D1474  4B A7 B6 1C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D1478  3A F7 00 01 */	addi r23, r23, 1
/* 805D147C  2C 17 00 04 */	cmpwi r23, 4
/* 805D1480  3B 39 00 02 */	addi r25, r25, 2
/* 805D1484  41 80 FF B0 */	blt lbl_805D1434
/* 805D1488  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D148C  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 805D1490  C0 1E 03 DC */	lfs f0, 0x3dc(r30)
/* 805D1494  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 805D1498  C0 1E 03 E0 */	lfs f0, 0x3e0(r30)
/* 805D149C  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 805D14A0  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D14A4  38 00 00 04 */	li r0, 4
/* 805D14A8  90 03 06 14 */	stw r0, 0x614(r3)
/* 805D14AC  38 00 00 02 */	li r0, 2
/* 805D14B0  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805D14B4  38 00 00 00 */	li r0, 0
/* 805D14B8  90 03 06 10 */	stw r0, 0x610(r3)
/* 805D14BC  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 805D14C0  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D14C4  38 81 01 BC */	addi r4, r1, 0x1bc
/* 805D14C8  38 A0 80 00 */	li r5, -32768
/* 805D14CC  38 C0 00 00 */	li r6, 0
/* 805D14D0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D14D4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805D14D8  7D 89 03 A6 */	mtctr r12
/* 805D14DC  4E 80 04 21 */	bctrl 
/* 805D14E0  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D14E4  38 03 00 01 */	addi r0, r3, 1
/* 805D14E8  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D14EC  48 00 08 E0 */	b lbl_805D1DCC
lbl_805D14F0:
/* 805D14F0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805D14F4  38 80 07 D0 */	li r4, 0x7d0
/* 805D14F8  38 A0 00 08 */	li r5, 8
/* 805D14FC  38 C0 01 00 */	li r6, 0x100
/* 805D1500  4B C9 F1 08 */	b cLib_addCalcAngleS2__FPssss
/* 805D1504  38 7F 07 F8 */	addi r3, r31, 0x7f8
/* 805D1508  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 805D150C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805D1510  4B C9 E5 70 */	b cLib_addCalc0__FPfff
/* 805D1514  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D1518  38 63 00 0C */	addi r3, r3, 0xc
/* 805D151C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805D1520  4B D5 6F 0C */	b checkPass__12J3DFrameCtrlFf
/* 805D1524  2C 03 00 00 */	cmpwi r3, 0
/* 805D1528  41 82 01 70 */	beq lbl_805D1698
/* 805D152C  7F E3 FB 78 */	mr r3, r31
/* 805D1530  38 80 00 01 */	li r4, 1
/* 805D1534  4B FF AC 25 */	bl hand_smokeSet__8daB_DS_cFUc
/* 805D1538  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D153C  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 805D1540  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D1544  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 805D1548  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 805D154C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D1550  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D1554  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D1558  38 80 00 01 */	li r4, 1
/* 805D155C  38 A0 00 1F */	li r5, 0x1f
/* 805D1560  38 C1 00 E4 */	addi r6, r1, 0xe4
/* 805D1564  4B A9 E4 C0 */	b StartShock__12dVibration_cFii4cXyz
/* 805D1568  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CC@ha */
/* 805D156C  38 03 04 CC */	addi r0, r3, 0x04CC /* 0x000704CC@l */
/* 805D1570  90 01 00 38 */	stw r0, 0x38(r1)
/* 805D1574  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D1578  38 81 00 38 */	addi r4, r1, 0x38
/* 805D157C  38 A0 00 00 */	li r5, 0
/* 805D1580  38 C0 FF FF */	li r6, -1
/* 805D1584  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D1588  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D158C  7D 89 03 A6 */	mtctr r12
/* 805D1590  4E 80 04 21 */	bctrl 
/* 805D1594  38 00 00 01 */	li r0, 1
/* 805D1598  98 1F 08 52 */	stb r0, 0x852(r31)
/* 805D159C  7F E3 FB 78 */	mr r3, r31
/* 805D15A0  4B FF ED D5 */	bl damageSet__8daB_DS_cFv
/* 805D15A4  3B 20 00 00 */	li r25, 0
/* 805D15A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D15AC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
lbl_805D15B0:
/* 805D15B0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 805D15B4  38 80 00 00 */	li r4, 0
/* 805D15B8  90 81 00 08 */	stw r4, 8(r1)
/* 805D15BC  38 00 FF FF */	li r0, -1
/* 805D15C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D15C4  90 81 00 10 */	stw r4, 0x10(r1)
/* 805D15C8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D15CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D15D0  38 80 00 00 */	li r4, 0
/* 805D15D4  38 19 00 08 */	addi r0, r25, 8
/* 805D15D8  54 00 18 38 */	slwi r0, r0, 3
/* 805D15DC  3A FE 02 FC */	addi r23, r30, 0x2fc
/* 805D15E0  7E F7 02 14 */	add r23, r23, r0
/* 805D15E4  A0 B7 00 00 */	lhz r5, 0(r23)
/* 805D15E8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 805D15EC  38 E0 00 00 */	li r7, 0
/* 805D15F0  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 805D15F4  39 20 00 00 */	li r9, 0
/* 805D15F8  39 40 00 FF */	li r10, 0xff
/* 805D15FC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D1600  4B A7 B4 90 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D1604  7C 78 1B 79 */	or. r24, r3, r3
/* 805D1608  41 82 00 40 */	beq lbl_805D1648
/* 805D160C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D1610  80 63 00 04 */	lwz r3, 4(r3)
/* 805D1614  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805D1618  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D161C  80 17 00 04 */	lwz r0, 4(r23)
/* 805D1620  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805D1624  7C 63 02 14 */	add r3, r3, r0
/* 805D1628  38 98 00 68 */	addi r4, r24, 0x68
/* 805D162C  38 B8 00 98 */	addi r5, r24, 0x98
/* 805D1630  38 D8 00 A4 */	addi r6, r24, 0xa4
/* 805D1634  4B CA F1 D4 */	b func_80280808
/* 805D1638  C0 38 00 9C */	lfs f1, 0x9c(r24)
/* 805D163C  C0 18 00 98 */	lfs f0, 0x98(r24)
/* 805D1640  D0 18 00 B0 */	stfs f0, 0xb0(r24)
/* 805D1644  D0 38 00 B4 */	stfs f1, 0xb4(r24)
lbl_805D1648:
/* 805D1648  3B 39 00 01 */	addi r25, r25, 1
/* 805D164C  2C 19 00 04 */	cmpwi r25, 4
/* 805D1650  41 80 FF 60 */	blt lbl_805D15B0
/* 805D1654  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D1658  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805D165C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D1660  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805D1664  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D1668  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805D166C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C5@ha */
/* 805D1670  38 03 04 C5 */	addi r0, r3, 0x04C5 /* 0x000704C5@l */
/* 805D1674  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D1678  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D167C  38 81 00 34 */	addi r4, r1, 0x34
/* 805D1680  38 A0 00 00 */	li r5, 0
/* 805D1684  38 C0 FF FF */	li r6, -1
/* 805D1688  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D168C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D1690  7D 89 03 A6 */	mtctr r12
/* 805D1694  4E 80 04 21 */	bctrl 
lbl_805D1698:
/* 805D1698  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D169C  38 63 00 0C */	addi r3, r3, 0xc
/* 805D16A0  C0 3E 03 E4 */	lfs f1, 0x3e4(r30)
/* 805D16A4  4B D5 6D 88 */	b checkPass__12J3DFrameCtrlFf
/* 805D16A8  2C 03 00 00 */	cmpwi r3, 0
/* 805D16AC  41 82 00 84 */	beq lbl_805D1730
/* 805D16B0  7F E3 FB 78 */	mr r3, r31
/* 805D16B4  38 80 00 02 */	li r4, 2
/* 805D16B8  4B FF AA A1 */	bl hand_smokeSet__8daB_DS_cFUc
/* 805D16BC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D16C0  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 805D16C4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D16C8  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 805D16CC  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 805D16D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D16D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D16D8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D16DC  38 80 00 05 */	li r4, 5
/* 805D16E0  38 A0 00 1F */	li r5, 0x1f
/* 805D16E4  38 C1 00 D8 */	addi r6, r1, 0xd8
/* 805D16E8  4B A9 E3 3C */	b StartShock__12dVibration_cFii4cXyz
/* 805D16EC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D16F0  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805D16F4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D16F8  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805D16FC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D1700  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805D1704  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CC@ha */
/* 805D1708  38 03 04 CC */	addi r0, r3, 0x04CC /* 0x000704CC@l */
/* 805D170C  90 01 00 30 */	stw r0, 0x30(r1)
/* 805D1710  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D1714  38 81 00 30 */	addi r4, r1, 0x30
/* 805D1718  38 A0 00 00 */	li r5, 0
/* 805D171C  38 C0 FF FF */	li r6, -1
/* 805D1720  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D1724  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D1728  7D 89 03 A6 */	mtctr r12
/* 805D172C  4E 80 04 21 */	bctrl 
lbl_805D1730:
/* 805D1730  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D1734  38 63 00 0C */	addi r3, r3, 0xc
/* 805D1738  C0 3E 03 E8 */	lfs f1, 0x3e8(r30)
/* 805D173C  4B D5 6C F0 */	b checkPass__12J3DFrameCtrlFf
/* 805D1740  2C 03 00 00 */	cmpwi r3, 0
/* 805D1744  41 82 00 F8 */	beq lbl_805D183C
/* 805D1748  3A C0 00 00 */	li r22, 0
/* 805D174C  3B 20 00 00 */	li r25, 0
/* 805D1750  3B 80 00 00 */	li r28, 0
/* 805D1754  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D1758  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 805D175C  3B 7B 02 28 */	addi r27, r27, 0x228
lbl_805D1760:
/* 805D1760  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 805D1764  38 00 00 FF */	li r0, 0xff
/* 805D1768  90 01 00 08 */	stw r0, 8(r1)
/* 805D176C  38 80 00 00 */	li r4, 0
/* 805D1770  90 81 00 0C */	stw r4, 0xc(r1)
/* 805D1774  38 00 FF FF */	li r0, -1
/* 805D1778  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D177C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D1780  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D1784  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805D1788  3A FC 2D EC */	addi r23, r28, 0x2dec
/* 805D178C  7C 9F B8 2E */	lwzx r4, r31, r23
/* 805D1790  38 A0 00 00 */	li r5, 0
/* 805D1794  7C DB CA 2E */	lhzx r6, r27, r25
/* 805D1798  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805D179C  39 00 00 00 */	li r8, 0
/* 805D17A0  39 21 00 4C */	addi r9, r1, 0x4c
/* 805D17A4  39 41 01 A4 */	addi r10, r1, 0x1a4
/* 805D17A8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D17AC  4B A7 BD 20 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D17B0  7C 7F B9 2E */	stwx r3, r31, r23
/* 805D17B4  3A D6 00 01 */	addi r22, r22, 1
/* 805D17B8  2C 16 00 02 */	cmpwi r22, 2
/* 805D17BC  3B 39 00 02 */	addi r25, r25, 2
/* 805D17C0  3B 9C 00 04 */	addi r28, r28, 4
/* 805D17C4  41 80 FF 9C */	blt lbl_805D1760
/* 805D17C8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D17CC  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805D17D0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D17D4  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805D17D8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D17DC  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805D17E0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D17E4  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 805D17E8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D17EC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 805D17F0  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 805D17F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D17F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D17FC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D1800  38 80 00 02 */	li r4, 2
/* 805D1804  38 A0 00 4F */	li r5, 0x4f
/* 805D1808  38 C1 00 CC */	addi r6, r1, 0xcc
/* 805D180C  4B A9 E2 18 */	b StartShock__12dVibration_cFii4cXyz
/* 805D1810  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CC@ha */
/* 805D1814  38 03 04 CC */	addi r0, r3, 0x04CC /* 0x000704CC@l */
/* 805D1818  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805D181C  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D1820  38 81 00 2C */	addi r4, r1, 0x2c
/* 805D1824  38 A0 00 00 */	li r5, 0
/* 805D1828  38 C0 FF FF */	li r6, -1
/* 805D182C  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D1830  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D1834  7D 89 03 A6 */	mtctr r12
/* 805D1838  4E 80 04 21 */	bctrl 
lbl_805D183C:
/* 805D183C  38 80 00 00 */	li r4, 0
/* 805D1840  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D1844  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805D1848  FC 00 08 1E */	fctiwz f0, f1
/* 805D184C  D8 01 01 C8 */	stfd f0, 0x1c8(r1)
/* 805D1850  80 01 01 CC */	lwz r0, 0x1cc(r1)
/* 805D1854  2C 00 00 82 */	cmpwi r0, 0x82
/* 805D1858  40 81 00 08 */	ble lbl_805D1860
/* 805D185C  38 80 00 01 */	li r4, 1
lbl_805D1860:
/* 805D1860  FC 00 08 1E */	fctiwz f0, f1
/* 805D1864  D8 01 01 D0 */	stfd f0, 0x1d0(r1)
/* 805D1868  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 805D186C  2C 00 00 8C */	cmpwi r0, 0x8c
/* 805D1870  40 80 00 5C */	bge lbl_805D18CC
/* 805D1874  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 805D1878  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805D187C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805D1880  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805D1884  1C 04 00 0C */	mulli r0, r4, 0xc
/* 805D1888  38 7D 04 70 */	addi r3, r29, 0x470
/* 805D188C  7C 03 04 2E */	lfsx f0, r3, r0
/* 805D1890  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D1894  7C 63 02 14 */	add r3, r3, r0
/* 805D1898  C0 03 00 04 */	lfs f0, 4(r3)
/* 805D189C  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D18A0  C0 03 00 08 */	lfs f0, 8(r3)
/* 805D18A4  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D18A8  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 805D18AC  7C 03 04 2E */	lfsx f0, r3, r0
/* 805D18B0  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D18B4  7C 63 02 14 */	add r3, r3, r0
/* 805D18B8  C0 03 00 04 */	lfs f0, 4(r3)
/* 805D18BC  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D18C0  C0 03 00 08 */	lfs f0, 8(r3)
/* 805D18C4  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D18C8  48 00 00 3C */	b lbl_805D1904
lbl_805D18CC:
/* 805D18CC  38 7F 2D 20 */	addi r3, r31, 0x2d20
/* 805D18D0  38 9D 04 70 */	addi r4, r29, 0x470
/* 805D18D4  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805D18D8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D18DC  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 805D18E0  38 84 00 18 */	addi r4, r4, 0x18
/* 805D18E4  4B C9 E1 D4 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805D18E8  38 7F 2D 14 */	addi r3, r31, 0x2d14
/* 805D18EC  38 9D 04 EC */	addi r4, r29, 0x4ec
/* 805D18F0  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805D18F4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D18F8  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 805D18FC  38 84 00 18 */	addi r4, r4, 0x18
/* 805D1900  4B C9 E1 B8 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_805D1904:
/* 805D1904  C0 1F 2D 20 */	lfs f0, 0x2d20(r31)
/* 805D1908  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 805D190C  C0 1F 2D 24 */	lfs f0, 0x2d24(r31)
/* 805D1910  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 805D1914  C0 1F 2D 28 */	lfs f0, 0x2d28(r31)
/* 805D1918  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 805D191C  C0 1F 2D 14 */	lfs f0, 0x2d14(r31)
/* 805D1920  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805D1924  C0 1F 2D 18 */	lfs f0, 0x2d18(r31)
/* 805D1928  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805D192C  C0 1F 2D 1C */	lfs f0, 0x2d1c(r31)
/* 805D1930  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805D1934  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D1938  38 81 00 C0 */	addi r4, r1, 0xc0
/* 805D193C  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 805D1940  4B BA F1 68 */	b Set__9dCamera_cF4cXyz4cXyz
/* 805D1944  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D1948  38 63 00 0C */	addi r3, r3, 0xc
/* 805D194C  C0 3E 03 EC */	lfs f1, 0x3ec(r30)
/* 805D1950  4B D5 6A DC */	b checkPass__12J3DFrameCtrlFf
/* 805D1954  2C 03 00 00 */	cmpwi r3, 0
/* 805D1958  41 82 00 78 */	beq lbl_805D19D0
/* 805D195C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D1960  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 805D1964  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D1968  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805D196C  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 805D1970  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D1974  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D1978  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D197C  38 80 00 04 */	li r4, 4
/* 805D1980  38 A0 00 4F */	li r5, 0x4f
/* 805D1984  38 C1 00 A8 */	addi r6, r1, 0xa8
/* 805D1988  4B A9 E0 9C */	b StartShock__12dVibration_cFii4cXyz
/* 805D198C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D1990  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805D1994  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D1998  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805D199C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D19A0  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805D19A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CC@ha */
/* 805D19A8  38 03 04 CC */	addi r0, r3, 0x04CC /* 0x000704CC@l */
/* 805D19AC  90 01 00 28 */	stw r0, 0x28(r1)
/* 805D19B0  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D19B4  38 81 00 28 */	addi r4, r1, 0x28
/* 805D19B8  38 A0 00 00 */	li r5, 0
/* 805D19BC  38 C0 FF FF */	li r6, -1
/* 805D19C0  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D19C4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D19C8  7D 89 03 A6 */	mtctr r12
/* 805D19CC  4E 80 04 21 */	bctrl 
lbl_805D19D0:
/* 805D19D0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D19D4  38 80 00 01 */	li r4, 1
/* 805D19D8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805D19DC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805D19E0  40 82 00 18 */	bne lbl_805D19F8
/* 805D19E4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D19E8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D19EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D19F0  41 82 00 08 */	beq lbl_805D19F8
/* 805D19F4  38 80 00 00 */	li r4, 0
lbl_805D19F8:
/* 805D19F8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D19FC  41 82 03 D0 */	beq lbl_805D1DCC
/* 805D1A00  38 00 00 1E */	li r0, 0x1e
/* 805D1A04  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D1A08  38 00 00 14 */	li r0, 0x14
/* 805D1A0C  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D1A10:
/* 805D1A10  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D1A14  48 00 AE D1 */	bl func_805DC8E4
/* 805D1A18  2C 03 00 00 */	cmpwi r3, 0
/* 805D1A1C  41 82 00 58 */	beq lbl_805D1A74
/* 805D1A20  80 1F 08 1C */	lwz r0, 0x81c(r31)
/* 805D1A24  2C 00 00 01 */	cmpwi r0, 1
/* 805D1A28  40 82 03 A4 */	bne lbl_805D1DCC
/* 805D1A2C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D1A30  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805D1A34  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D1A38  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805D1A3C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D1A40  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805D1A44  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F3@ha */
/* 805D1A48  38 03 04 F3 */	addi r0, r3, 0x04F3 /* 0x000704F3@l */
/* 805D1A4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D1A50  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D1A54  38 81 00 24 */	addi r4, r1, 0x24
/* 805D1A58  38 A0 00 00 */	li r5, 0
/* 805D1A5C  38 C0 FF FF */	li r6, -1
/* 805D1A60  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D1A64  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D1A68  7D 89 03 A6 */	mtctr r12
/* 805D1A6C  4E 80 04 21 */	bctrl 
/* 805D1A70  48 00 03 5C */	b lbl_805D1DCC
lbl_805D1A74:
/* 805D1A74  38 7F 07 E8 */	addi r3, r31, 0x7e8
/* 805D1A78  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 805D1A7C  C0 5E 03 B8 */	lfs f2, 0x3b8(r30)
/* 805D1A80  4B C9 E0 00 */	b cLib_addCalc0__FPfff
/* 805D1A84  C0 3F 07 E8 */	lfs f1, 0x7e8(r31)
/* 805D1A88  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805D1A8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D1A90  41 81 03 3C */	bgt lbl_805D1DCC
/* 805D1A94  38 00 00 1E */	li r0, 0x1e
/* 805D1A98  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D1A9C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D1AA0  D0 1F 07 E8 */	stfs f0, 0x7e8(r31)
/* 805D1AA4  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D1AA8  38 03 00 01 */	addi r0, r3, 1
/* 805D1AAC  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D1AB0:
/* 805D1AB0  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D1AB4  48 00 AE 31 */	bl func_805DC8E4
/* 805D1AB8  2C 03 00 00 */	cmpwi r3, 0
/* 805D1ABC  40 82 03 10 */	bne lbl_805D1DCC
/* 805D1AC0  38 7D 04 70 */	addi r3, r29, 0x470
/* 805D1AC4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 805D1AC8  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D1ACC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805D1AD0  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D1AD4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805D1AD8  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D1ADC  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 805D1AE0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 805D1AE4  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D1AE8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805D1AEC  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D1AF0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805D1AF4  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D1AF8  C0 1F 2D 20 */	lfs f0, 0x2d20(r31)
/* 805D1AFC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 805D1B00  C0 1F 2D 24 */	lfs f0, 0x2d24(r31)
/* 805D1B04  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805D1B08  C0 1F 2D 28 */	lfs f0, 0x2d28(r31)
/* 805D1B0C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805D1B10  C0 1F 2D 14 */	lfs f0, 0x2d14(r31)
/* 805D1B14  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805D1B18  C0 1F 2D 18 */	lfs f0, 0x2d18(r31)
/* 805D1B1C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 805D1B20  C0 1F 2D 1C */	lfs f0, 0x2d1c(r31)
/* 805D1B24  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 805D1B28  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D1B2C  38 81 00 9C */	addi r4, r1, 0x9c
/* 805D1B30  38 A1 00 90 */	addi r5, r1, 0x90
/* 805D1B34  4B BA EF 74 */	b Set__9dCamera_cF4cXyz4cXyz
/* 805D1B38  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D1B3C  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 805D1B40  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D1B44  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805D1B48  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 805D1B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D1B50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D1B54  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D1B58  38 80 00 05 */	li r4, 5
/* 805D1B5C  38 A0 00 1F */	li r5, 0x1f
/* 805D1B60  38 C1 00 84 */	addi r6, r1, 0x84
/* 805D1B64  4B A9 DF AC */	b StartQuake__12dVibration_cFii4cXyz
/* 805D1B68  38 00 00 1E */	li r0, 0x1e
/* 805D1B6C  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D1B70  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D1B74  38 03 00 01 */	addi r0, r3, 1
/* 805D1B78  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D1B7C:
/* 805D1B7C  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D1B80  48 00 AD 65 */	bl func_805DC8E4
/* 805D1B84  2C 03 00 00 */	cmpwi r3, 0
/* 805D1B88  40 82 02 44 */	bne lbl_805D1DCC
/* 805D1B8C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D1B90  D0 1F 07 FC */	stfs f0, 0x7fc(r31)
/* 805D1B94  38 00 00 64 */	li r0, 0x64
/* 805D1B98  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D1B9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D2@ha */
/* 805D1BA0  38 03 04 D2 */	addi r0, r3, 0x04D2 /* 0x000704D2@l */
/* 805D1BA4  90 01 00 20 */	stw r0, 0x20(r1)
/* 805D1BA8  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D1BAC  38 81 00 20 */	addi r4, r1, 0x20
/* 805D1BB0  38 A0 00 00 */	li r5, 0
/* 805D1BB4  38 C0 FF FF */	li r6, -1
/* 805D1BB8  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D1BBC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D1BC0  7D 89 03 A6 */	mtctr r12
/* 805D1BC4  4E 80 04 21 */	bctrl 
lbl_805D1BC8:
/* 805D1BC8  C0 1E 03 F0 */	lfs f0, 0x3f0(r30)
/* 805D1BCC  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805D1BD0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805D1BD4  C0 1E 03 DC */	lfs f0, 0x3dc(r30)
/* 805D1BD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D1BDC  40 81 00 28 */	ble lbl_805D1C04
/* 805D1BE0  C0 1E 03 F4 */	lfs f0, 0x3f4(r30)
/* 805D1BE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D1BE8  4C 40 13 82 */	cror 2, 0, 2
/* 805D1BEC  40 82 01 E0 */	bne lbl_805D1DCC
/* 805D1BF0  38 60 00 06 */	li r3, 6
/* 805D1BF4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D1BF8  7C 04 07 74 */	extsb r4, r0
/* 805D1BFC  4B A5 BD 50 */	b dComIfGs_onZoneSwitch__Fii
/* 805D1C00  48 00 01 CC */	b lbl_805D1DCC
lbl_805D1C04:
/* 805D1C04  38 00 00 64 */	li r0, 0x64
/* 805D1C08  98 1F 08 52 */	stb r0, 0x852(r31)
/* 805D1C0C  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 805D1C10  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805D1C14  B0 01 00 44 */	sth r0, 0x44(r1)
/* 805D1C18  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805D1C1C  B0 01 00 46 */	sth r0, 0x46(r1)
/* 805D1C20  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 805D1C24  B0 01 00 48 */	sth r0, 0x48(r1)
/* 805D1C28  38 00 00 00 */	li r0, 0
/* 805D1C2C  B0 01 00 48 */	sth r0, 0x48(r1)
/* 805D1C30  B0 01 00 46 */	sth r0, 0x46(r1)
/* 805D1C34  B0 01 00 44 */	sth r0, 0x44(r1)
/* 805D1C38  38 60 00 F6 */	li r3, 0xf6
/* 805D1C3C  60 84 00 02 */	ori r4, r4, 2
/* 805D1C40  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805D1C44  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D1C48  7C 06 07 74 */	extsb r6, r0
/* 805D1C4C  38 E1 00 44 */	addi r7, r1, 0x44
/* 805D1C50  39 00 00 00 */	li r8, 0
/* 805D1C54  39 20 FF FF */	li r9, -1
/* 805D1C58  4B A4 81 40 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 805D1C5C  38 00 00 65 */	li r0, 0x65
/* 805D1C60  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D1C64:
/* 805D1C64  38 7F 2D 24 */	addi r3, r31, 0x2d24
/* 805D1C68  3A FD 04 70 */	addi r23, r29, 0x470
/* 805D1C6C  C0 37 00 34 */	lfs f1, 0x34(r23)
/* 805D1C70  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 805D1C74  C0 7E 01 90 */	lfs f3, 0x190(r30)
/* 805D1C78  4B C9 DD C4 */	b cLib_addCalc2__FPffff
/* 805D1C7C  38 7F 2D 18 */	addi r3, r31, 0x2d18
/* 805D1C80  3B 1D 04 EC */	addi r24, r29, 0x4ec
/* 805D1C84  C0 38 00 34 */	lfs f1, 0x34(r24)
/* 805D1C88  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 805D1C8C  C0 7E 01 90 */	lfs f3, 0x190(r30)
/* 805D1C90  4B C9 DD AC */	b cLib_addCalc2__FPffff
/* 805D1C94  C0 1F 2D 20 */	lfs f0, 0x2d20(r31)
/* 805D1C98  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805D1C9C  C0 1F 2D 24 */	lfs f0, 0x2d24(r31)
/* 805D1CA0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805D1CA4  C0 1F 2D 28 */	lfs f0, 0x2d28(r31)
/* 805D1CA8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805D1CAC  C0 1F 2D 14 */	lfs f0, 0x2d14(r31)
/* 805D1CB0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805D1CB4  C0 1F 2D 18 */	lfs f0, 0x2d18(r31)
/* 805D1CB8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805D1CBC  C0 1F 2D 1C */	lfs f0, 0x2d1c(r31)
/* 805D1CC0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805D1CC4  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D1CC8  38 81 00 78 */	addi r4, r1, 0x78
/* 805D1CCC  38 A1 00 6C */	addi r5, r1, 0x6c
/* 805D1CD0  4B BA ED D8 */	b Set__9dCamera_cF4cXyz4cXyz
/* 805D1CD4  C0 3F 2D 24 */	lfs f1, 0x2d24(r31)
/* 805D1CD8  C0 17 00 34 */	lfs f0, 0x34(r23)
/* 805D1CDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D1CE0  FC 00 02 10 */	fabs f0, f0
/* 805D1CE4  FC 00 00 18 */	frsp f0, f0
/* 805D1CE8  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 805D1CEC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805D1CF0  41 81 00 DC */	bgt lbl_805D1DCC
/* 805D1CF4  C0 3F 2D 18 */	lfs f1, 0x2d18(r31)
/* 805D1CF8  C0 18 00 34 */	lfs f0, 0x34(r24)
/* 805D1CFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D1D00  FC 00 02 10 */	fabs f0, f0
/* 805D1D04  FC 00 00 18 */	frsp f0, f0
/* 805D1D08  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805D1D0C  41 81 00 C0 */	bgt lbl_805D1DCC
/* 805D1D10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D1D14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D1D18  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D1D1C  38 80 00 1F */	li r4, 0x1f
/* 805D1D20  4B A9 E0 74 */	b StopQuake__12dVibration_cFi
/* 805D1D24  38 00 00 64 */	li r0, 0x64
/* 805D1D28  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D1D2C  38 00 00 66 */	li r0, 0x66
/* 805D1D30  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D1D34:
/* 805D1D34  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D1D38  48 00 AB AD */	bl func_805DC8E4
/* 805D1D3C  2C 03 00 00 */	cmpwi r3, 0
/* 805D1D40  40 82 00 8C */	bne lbl_805D1DCC
/* 805D1D44  38 60 00 03 */	li r3, 3
/* 805D1D48  4B BD 6A 9C */	b dKy_change_colpat__FUc
/* 805D1D4C  C0 9E 00 04 */	lfs f4, 4(r30)
/* 805D1D50  D0 81 01 BC */	stfs f4, 0x1bc(r1)
/* 805D1D54  C0 7E 03 F8 */	lfs f3, 0x3f8(r30)
/* 805D1D58  D0 61 01 C0 */	stfs f3, 0x1c0(r1)
/* 805D1D5C  C0 5E 03 E0 */	lfs f2, 0x3e0(r30)
/* 805D1D60  D0 41 01 C4 */	stfs f2, 0x1c4(r1)
/* 805D1D64  D0 81 01 B0 */	stfs f4, 0x1b0(r1)
/* 805D1D68  C0 3E 03 FC */	lfs f1, 0x3fc(r30)
/* 805D1D6C  D0 21 01 B4 */	stfs f1, 0x1b4(r1)
/* 805D1D70  C0 1E 04 00 */	lfs f0, 0x400(r30)
/* 805D1D74  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 805D1D78  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 805D1D7C  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 805D1D80  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 805D1D84  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 805D1D88  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 805D1D8C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805D1D90  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D1D94  38 81 00 60 */	addi r4, r1, 0x60
/* 805D1D98  38 A1 00 54 */	addi r5, r1, 0x54
/* 805D1D9C  4B BA EE 7C */	b Reset__9dCamera_cF4cXyz4cXyz
/* 805D1DA0  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D1DA4  4B B8 F7 08 */	b Start__9dCamera_cFv
/* 805D1DA8  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D1DAC  38 80 00 00 */	li r4, 0
/* 805D1DB0  4B B9 12 5C */	b SetTrimSize__9dCamera_cFl
/* 805D1DB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D1DB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D1DBC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805D1DC0  4B A7 06 A8 */	b reset__14dEvt_control_cFv
/* 805D1DC4  7F E3 FB 78 */	mr r3, r31
/* 805D1DC8  4B A4 7E B4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_805D1DCC:
/* 805D1DCC  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D1DD0  2C 00 00 64 */	cmpwi r0, 0x64
/* 805D1DD4  41 80 00 2C */	blt lbl_805D1E00
/* 805D1DD8  38 7F 07 FC */	addi r3, r31, 0x7fc
/* 805D1DDC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D1DE0  C0 5E 04 04 */	lfs f2, 0x404(r30)
/* 805D1DE4  FC 60 10 90 */	fmr f3, f2
/* 805D1DE8  C0 9E 02 E4 */	lfs f4, 0x2e4(r30)
/* 805D1DEC  4B C9 DB 90 */	b cLib_addCalc__FPfffff
/* 805D1DF0  38 60 00 01 */	li r3, 1
/* 805D1DF4  38 80 00 03 */	li r4, 3
/* 805D1DF8  C0 3F 07 FC */	lfs f1, 0x7fc(r31)
/* 805D1DFC  4B BD 6A 10 */	b dKy_custom_colset__FUcUcf
lbl_805D1E00:
/* 805D1E00  E3 E1 02 28 */	psq_l f31, 552(r1), 0, 0 /* qr0 */
/* 805D1E04  CB E1 02 20 */	lfd f31, 0x220(r1)
/* 805D1E08  E3 C1 02 18 */	psq_l f30, 536(r1), 0, 0 /* qr0 */
/* 805D1E0C  CB C1 02 10 */	lfd f30, 0x210(r1)
/* 805D1E10  E3 A1 02 08 */	psq_l f29, 520(r1), 0, 0 /* qr0 */
/* 805D1E14  CB A1 02 00 */	lfd f29, 0x200(r1)
/* 805D1E18  39 61 02 00 */	addi r11, r1, 0x200
/* 805D1E1C  4B D9 03 F0 */	b _restgpr_22
/* 805D1E20  80 01 02 34 */	lwz r0, 0x234(r1)
/* 805D1E24  7C 08 03 A6 */	mtlr r0
/* 805D1E28  38 21 02 30 */	addi r1, r1, 0x230
/* 805D1E2C  4E 80 00 20 */	blr 
