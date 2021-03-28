lbl_8003AE14:
/* 8003AE14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003AE18  7C 08 02 A6 */	mflr r0
/* 8003AE1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003AE20  39 61 00 20 */	addi r11, r1, 0x20
/* 8003AE24  48 32 73 AD */	bl _savegpr_26
/* 8003AE28  7C 7C 1B 78 */	mr r28, r3
/* 8003AE2C  7C 9F 23 78 */	mr r31, r4
/* 8003AE30  3C 60 59 02 */	lis r3, 0x5902 /* 0x59020010@ha */
/* 8003AE34  38 83 00 10 */	addi r4, r3, 0x0010 /* 0x59020010@l */
/* 8003AE38  3C 1C BD B3 */	addis r0, r28, 0xbdb3
/* 8003AE3C  28 00 44 45 */	cmplwi r0, 0x4445
/* 8003AE40  41 82 00 0C */	beq lbl_8003AE4C
/* 8003AE44  28 00 44 56 */	cmplwi r0, 0x4456
/* 8003AE48  40 82 00 0C */	bne lbl_8003AE54
lbl_8003AE4C:
/* 8003AE4C  60 84 00 20 */	ori r4, r4, 0x20
/* 8003AE50  48 00 00 1C */	b lbl_8003AE6C
lbl_8003AE54:
/* 8003AE54  28 00 57 52 */	cmplwi r0, 0x5752
/* 8003AE58  41 82 00 0C */	beq lbl_8003AE64
/* 8003AE5C  28 00 57 45 */	cmplwi r0, 0x5745
/* 8003AE60  40 82 00 0C */	bne lbl_8003AE6C
lbl_8003AE64:
/* 8003AE64  6C 84 00 06 */	xoris r4, r4, 6
/* 8003AE68  68 84 00 20 */	xori r4, r4, 0x20
lbl_8003AE6C:
/* 8003AE6C  7F E3 FB 78 */	mr r3, r31
/* 8003AE70  48 2F 98 4D */	bl load__22J3DModelLoaderDataBaseFPCvUl
/* 8003AE74  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003AE78  40 82 00 0C */	bne lbl_8003AE84
/* 8003AE7C  38 60 00 00 */	li r3, 0
/* 8003AE80  48 00 02 B8 */	b lbl_8003B138
lbl_8003AE84:
/* 8003AE84  3C 1C BD B3 */	addis r0, r28, 0xbdb3
/* 8003AE88  28 00 44 45 */	cmplwi r0, 0x4445
/* 8003AE8C  41 82 00 14 */	beq lbl_8003AEA0
/* 8003AE90  28 00 44 56 */	cmplwi r0, 0x4456
/* 8003AE94  41 82 00 0C */	beq lbl_8003AEA0
/* 8003AE98  28 00 57 45 */	cmplwi r0, 0x5745
/* 8003AE9C  40 82 00 3C */	bne lbl_8003AED8
lbl_8003AEA0:
/* 8003AEA0  38 80 00 00 */	li r4, 0
/* 8003AEA4  48 00 00 24 */	b lbl_8003AEC8
lbl_8003AEA8:
/* 8003AEA8  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8003AEAC  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 8003AEB0  7C 63 00 2E */	lwzx r3, r3, r0
/* 8003AEB4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8003AEB8  54 00 05 1E */	rlwinm r0, r0, 0, 0x14, 0xf
/* 8003AEBC  60 00 20 00 */	ori r0, r0, 0x2000
/* 8003AEC0  90 03 00 0C */	stw r0, 0xc(r3)
/* 8003AEC4  38 84 00 01 */	addi r4, r4, 1
lbl_8003AEC8:
/* 8003AEC8  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8003AECC  A0 1F 00 7C */	lhz r0, 0x7c(r31)
/* 8003AED0  7C 03 00 40 */	cmplw r3, r0
/* 8003AED4  41 80 FF D4 */	blt lbl_8003AEA8
lbl_8003AED8:
/* 8003AED8  3B A0 00 00 */	li r29, 0
/* 8003AEDC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8003AEE0  3B 63 CA 54 */	addi r27, r3, g_env_light@l
/* 8003AEE4  48 00 01 D0 */	b lbl_8003B0B4
lbl_8003AEE8:
/* 8003AEE8  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8003AEEC  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 8003AEF0  7F C3 00 2E */	lwzx r30, r3, r0
/* 8003AEF4  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8003AEF8  38 80 00 00 */	li r4, 0
/* 8003AEFC  81 83 00 00 */	lwz r12, 0(r3)
/* 8003AF00  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8003AF04  7D 89 03 A6 */	mtctr r12
/* 8003AF08  4E 80 04 21 */	bctrl 
/* 8003AF0C  A0 63 00 00 */	lhz r3, 0(r3)
/* 8003AF10  54 60 CE 36 */	rlwinm r0, r3, 0x19, 0x18, 0x1b
/* 8003AF14  50 60 F7 3E */	rlwimi r0, r3, 0x1e, 0x1c, 0x1f
/* 8003AF18  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8003AF1C  7C 9A 23 78 */	mr r26, r4
/* 8003AF20  88 1B 13 08 */	lbz r0, 0x1308(r27)
/* 8003AF24  28 00 00 07 */	cmplwi r0, 7
/* 8003AF28  41 81 00 6C */	bgt lbl_8003AF94
/* 8003AF2C  3C 60 80 3A */	lis r3, lit_4017@ha
/* 8003AF30  38 63 7C 18 */	addi r3, r3, lit_4017@l
/* 8003AF34  54 00 10 3A */	slwi r0, r0, 2
/* 8003AF38  7C 03 00 2E */	lwzx r0, r3, r0
/* 8003AF3C  7C 09 03 A6 */	mtctr r0
/* 8003AF40  4E 80 04 20 */	bctr 
/* 8003AF44  54 80 07 7A */	rlwinm r0, r4, 0, 0x1d, 0x1d
/* 8003AF48  7C 1A 03 78 */	mr r26, r0
/* 8003AF4C  48 00 00 48 */	b lbl_8003AF94
/* 8003AF50  54 80 07 3A */	rlwinm r0, r4, 0, 0x1c, 0x1d
/* 8003AF54  7C 1A 03 78 */	mr r26, r0
/* 8003AF58  48 00 00 3C */	b lbl_8003AF94
/* 8003AF5C  70 80 00 0D */	andi. r0, r4, 0xd
/* 8003AF60  54 1A 06 3E */	clrlwi r26, r0, 0x18
/* 8003AF64  48 00 00 30 */	b lbl_8003AF94
/* 8003AF68  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 8003AF6C  7C 1A 03 78 */	mr r26, r0
/* 8003AF70  48 00 00 24 */	b lbl_8003AF94
/* 8003AF74  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 8003AF78  7C 1A 03 78 */	mr r26, r0
/* 8003AF7C  48 00 00 18 */	b lbl_8003AF94
/* 8003AF80  54 80 06 BE */	clrlwi r0, r4, 0x1a
/* 8003AF84  7C 1A 03 78 */	mr r26, r0
/* 8003AF88  48 00 00 0C */	b lbl_8003AF94
/* 8003AF8C  54 80 06 7E */	clrlwi r0, r4, 0x19
/* 8003AF90  7C 1A 03 78 */	mr r26, r0
lbl_8003AF94:
/* 8003AF94  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8003AF98  38 80 00 00 */	li r4, 0
/* 8003AF9C  81 83 00 00 */	lwz r12, 0(r3)
/* 8003AFA0  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8003AFA4  7D 89 03 A6 */	mtctr r12
/* 8003AFA8  4E 80 04 21 */	bctrl 
/* 8003AFAC  A0 03 00 00 */	lhz r0, 0(r3)
/* 8003AFB0  53 40 16 BA */	rlwimi r0, r26, 2, 0x1a, 0x1d
/* 8003AFB4  B0 03 00 00 */	sth r0, 0(r3)
/* 8003AFB8  A0 03 00 00 */	lhz r0, 0(r3)
/* 8003AFBC  53 40 3C 68 */	rlwimi r0, r26, 7, 0x11, 0x14
/* 8003AFC0  B0 03 00 00 */	sth r0, 0(r3)
/* 8003AFC4  7F C3 F3 78 */	mr r3, r30
/* 8003AFC8  81 9E 00 00 */	lwz r12, 0(r30)
/* 8003AFCC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8003AFD0  7D 89 03 A6 */	mtctr r12
/* 8003AFD4  4E 80 04 21 */	bctrl 
/* 8003AFD8  38 60 00 F4 */	li r3, 0xf4
/* 8003AFDC  48 29 3C 71 */	bl __nw__FUl
/* 8003AFE0  7C 7A 1B 79 */	or. r26, r3, r3
/* 8003AFE4  41 82 00 B8 */	beq lbl_8003B09C
/* 8003AFE8  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 8003AFEC  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 8003AFF0  90 1A 00 00 */	stw r0, 0(r26)
/* 8003AFF4  38 7A 00 04 */	addi r3, r26, 4
/* 8003AFF8  3C 80 80 04 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 8003AFFC  38 84 B2 F4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 8003B000  3C A0 80 04 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 8003B004  38 A5 B2 B8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 8003B008  38 C0 00 08 */	li r6, 8
/* 8003B00C  38 E0 00 02 */	li r7, 2
/* 8003B010  48 32 6D 51 */	bl __construct_array
/* 8003B014  38 7A 00 14 */	addi r3, r26, 0x14
/* 8003B018  3C 80 80 04 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 8003B01C  38 84 B2 A0 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 8003B020  3C A0 80 04 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 8003B024  38 A5 B2 64 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 8003B028  38 C0 00 08 */	li r6, 8
/* 8003B02C  38 E0 00 08 */	li r7, 8
/* 8003B030  48 32 6D 31 */	bl __construct_array
/* 8003B034  38 7A 00 54 */	addi r3, r26, 0x54
/* 8003B038  3C 80 80 04 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 8003B03C  38 84 B2 40 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 8003B040  3C A0 80 04 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 8003B044  38 A5 B1 F8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 8003B048  38 C0 00 0C */	li r6, 0xc
/* 8003B04C  38 E0 00 08 */	li r7, 8
/* 8003B050  48 32 6D 11 */	bl __construct_array
/* 8003B054  38 7A 00 B4 */	addi r3, r26, 0xb4
/* 8003B058  3C 80 80 04 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 8003B05C  38 84 B1 E0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 8003B060  3C A0 80 04 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 8003B064  38 A5 B1 A4 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 8003B068  38 C0 00 08 */	li r6, 8
/* 8003B06C  38 E0 00 04 */	li r7, 4
/* 8003B070  48 32 6C F1 */	bl __construct_array
/* 8003B074  38 7A 00 D4 */	addi r3, r26, 0xd4
/* 8003B078  3C 80 80 04 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 8003B07C  38 84 B1 8C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 8003B080  3C A0 80 04 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 8003B084  38 A5 B1 50 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 8003B088  38 C0 00 08 */	li r6, 8
/* 8003B08C  38 E0 00 04 */	li r7, 4
/* 8003B090  48 32 6C D1 */	bl __construct_array
/* 8003B094  7F 43 D3 78 */	mr r3, r26
/* 8003B098  48 2F 12 89 */	bl initialize__14J3DMaterialAnmFv
lbl_8003B09C:
/* 8003B09C  28 1A 00 00 */	cmplwi r26, 0
/* 8003B0A0  40 82 00 0C */	bne lbl_8003B0AC
/* 8003B0A4  38 60 00 00 */	li r3, 0
/* 8003B0A8  48 00 00 90 */	b lbl_8003B138
lbl_8003B0AC:
/* 8003B0AC  93 5E 00 3C */	stw r26, 0x3c(r30)
/* 8003B0B0  3B BD 00 01 */	addi r29, r29, 1
lbl_8003B0B4:
/* 8003B0B4  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8003B0B8  A0 1F 00 5C */	lhz r0, 0x5c(r31)
/* 8003B0BC  7C 03 00 40 */	cmplw r3, r0
/* 8003B0C0  41 80 FE 28 */	blt lbl_8003AEE8
/* 8003B0C4  7F E3 FB 78 */	mr r3, r31
/* 8003B0C8  4B FF F3 C9 */	bl setIndirectTex__FP12J3DModelData
/* 8003B0CC  3C 1C BD B3 */	addis r0, r28, 0xbdb3
/* 8003B0D0  28 00 57 52 */	cmplwi r0, 0x5752
/* 8003B0D4  41 82 00 0C */	beq lbl_8003B0E0
/* 8003B0D8  28 00 57 45 */	cmplwi r0, 0x5745
/* 8003B0DC  40 82 00 0C */	bne lbl_8003B0E8
lbl_8003B0E0:
/* 8003B0E0  7F E3 FB 78 */	mr r3, r31
/* 8003B0E4  4B FF F7 5D */	bl addWarpMaterial__FP12J3DModelData
lbl_8003B0E8:
/* 8003B0E8  3C 1C BD B3 */	addis r0, r28, 0xbdb3
/* 8003B0EC  28 00 44 52 */	cmplwi r0, 0x4452
/* 8003B0F0  41 82 00 0C */	beq lbl_8003B0FC
/* 8003B0F4  28 00 57 52 */	cmplwi r0, 0x5752
/* 8003B0F8  40 82 00 3C */	bne lbl_8003B134
lbl_8003B0FC:
/* 8003B0FC  7F E3 FB 78 */	mr r3, r31
/* 8003B100  3C 80 00 04 */	lis r4, 4
/* 8003B104  48 2E AD 11 */	bl newSharedDisplayList__12J3DModelDataFUl
/* 8003B108  2C 03 00 00 */	cmpwi r3, 0
/* 8003B10C  41 82 00 0C */	beq lbl_8003B118
/* 8003B110  38 60 00 00 */	li r3, 0
/* 8003B114  48 00 00 24 */	b lbl_8003B138
lbl_8003B118:
/* 8003B118  7F E3 FB 78 */	mr r3, r31
/* 8003B11C  38 80 00 00 */	li r4, 0
/* 8003B120  3C A0 80 3A */	lis r5, j3dDefaultMtx@ha
/* 8003B124  38 A5 1E 5C */	addi r5, r5, j3dDefaultMtx@l
/* 8003B128  48 2E AE E5 */	bl simpleCalcMaterial__12J3DModelDataFUsPA4_f
/* 8003B12C  7F E3 FB 78 */	mr r3, r31
/* 8003B130  48 2E AE 65 */	bl makeSharedDL__12J3DModelDataFv
lbl_8003B134:
/* 8003B134  7F E3 FB 78 */	mr r3, r31
lbl_8003B138:
/* 8003B138  39 61 00 20 */	addi r11, r1, 0x20
/* 8003B13C  48 32 70 E1 */	bl _restgpr_26
/* 8003B140  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003B144  7C 08 03 A6 */	mtlr r0
/* 8003B148  38 21 00 20 */	addi r1, r1, 0x20
/* 8003B14C  4E 80 00 20 */	blr 
