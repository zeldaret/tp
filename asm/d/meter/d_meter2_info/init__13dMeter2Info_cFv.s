lbl_8021BE68:
/* 8021BE68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021BE6C  7C 08 02 A6 */	mflr r0
/* 8021BE70  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021BE74  39 61 00 30 */	addi r11, r1, 0x30
/* 8021BE78  48 14 63 5D */	bl _savegpr_27
/* 8021BE7C  7C 7F 1B 78 */	mr r31, r3
/* 8021BE80  38 80 00 00 */	li r4, 0
/* 8021BE84  90 83 00 10 */	stw r4, 0x10(r3)
/* 8021BE88  90 83 00 14 */	stw r4, 0x14(r3)
/* 8021BE8C  90 83 00 18 */	stw r4, 0x18(r3)
/* 8021BE90  90 83 00 1C */	stw r4, 0x1c(r3)
/* 8021BE94  90 83 00 20 */	stw r4, 0x20(r3)
/* 8021BE98  90 83 00 24 */	stw r4, 0x24(r3)
/* 8021BE9C  7C 83 23 78 */	mr r3, r4
/* 8021BEA0  38 00 00 04 */	li r0, 4
/* 8021BEA4  7C 09 03 A6 */	mtctr r0
lbl_8021BEA8:
/* 8021BEA8  38 03 00 28 */	addi r0, r3, 0x28
/* 8021BEAC  7C 9F 01 2E */	stwx r4, r31, r0
/* 8021BEB0  38 63 00 04 */	addi r3, r3, 4
/* 8021BEB4  42 00 FF F4 */	bdnz lbl_8021BEA8
/* 8021BEB8  38 80 00 00 */	li r4, 0
/* 8021BEBC  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8021BEC0  90 9F 00 08 */	stw r4, 8(r31)
/* 8021BEC4  B0 9F 00 A2 */	sth r4, 0xa2(r31)
/* 8021BEC8  B0 9F 00 96 */	sth r4, 0x96(r31)
/* 8021BECC  B0 9F 00 94 */	sth r4, 0x94(r31)
/* 8021BED0  B0 9F 00 98 */	sth r4, 0x98(r31)
/* 8021BED4  98 9F 00 B9 */	stb r4, 0xb9(r31)
/* 8021BED8  98 9F 00 BA */	stb r4, 0xba(r31)
/* 8021BEDC  C0 22 AF 98 */	lfs f1, lit_3916(r2)
/* 8021BEE0  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 8021BEE4  D0 3F 00 58 */	stfs f1, 0x58(r31)
/* 8021BEE8  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 8021BEEC  C0 02 AF 9C */	lfs f0, lit_3917(r2)
/* 8021BEF0  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 8021BEF4  C0 02 AF A0 */	lfs f0, lit_3918(r2)
/* 8021BEF8  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 8021BEFC  C0 02 AF A4 */	lfs f0, lit_3919(r2)
/* 8021BF00  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 8021BF04  C0 02 AF A8 */	lfs f0, lit_3920(r2)
/* 8021BF08  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 8021BF0C  C0 02 AF AC */	lfs f0, lit_3921(r2)
/* 8021BF10  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 8021BF14  C0 02 AF B0 */	lfs f0, lit_3922(r2)
/* 8021BF18  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8021BF1C  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 8021BF20  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 8021BF24  D0 3F 00 80 */	stfs f1, 0x80(r31)
/* 8021BF28  90 9F 00 84 */	stw r4, 0x84(r31)
/* 8021BF2C  90 9F 00 88 */	stw r4, 0x88(r31)
/* 8021BF30  98 9F 00 BC */	stb r4, 0xbc(r31)
/* 8021BF34  98 9F 00 BB */	stb r4, 0xbb(r31)
/* 8021BF38  98 9F 00 BD */	stb r4, 0xbd(r31)
/* 8021BF3C  98 9F 00 BF */	stb r4, 0xbf(r31)
/* 8021BF40  B0 9F 00 AA */	sth r4, 0xaa(r31)
/* 8021BF44  B0 9F 00 AC */	sth r4, 0xac(r31)
/* 8021BF48  B0 9F 00 B6 */	sth r4, 0xb6(r31)
/* 8021BF4C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8021BF50  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8021BF54  B0 1F 00 AE */	sth r0, 0xae(r31)
/* 8021BF58  98 9F 00 B8 */	stb r4, 0xb8(r31)
/* 8021BF5C  B0 9F 00 B0 */	sth r4, 0xb0(r31)
/* 8021BF60  B0 9F 00 B2 */	sth r4, 0xb2(r31)
/* 8021BF64  B0 1F 00 B4 */	sth r0, 0xb4(r31)
/* 8021BF68  90 9F 00 8C */	stw r4, 0x8c(r31)
/* 8021BF6C  B0 1F 00 A4 */	sth r0, 0xa4(r31)
/* 8021BF70  B0 1F 00 A6 */	sth r0, 0xa6(r31)
/* 8021BF74  B0 9F 00 A8 */	sth r4, 0xa8(r31)
/* 8021BF78  98 9F 00 F1 */	stb r4, 0xf1(r31)
/* 8021BF7C  7F E3 FB 78 */	mr r3, r31
/* 8021BF80  48 00 0A 5D */	bl resetWarpStatus__13dMeter2Info_cFv
/* 8021BF84  38 00 00 00 */	li r0, 0
/* 8021BF88  98 1F 00 C1 */	stb r0, 0xc1(r31)
/* 8021BF8C  98 1F 00 C2 */	stb r0, 0xc2(r31)
/* 8021BF90  38 00 00 FF */	li r0, 0xff
/* 8021BF94  98 1F 00 C3 */	stb r0, 0xc3(r31)
/* 8021BF98  C0 02 AF 98 */	lfs f0, lit_3916(r2)
/* 8021BF9C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8021BFA0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8021BFA4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8021BFA8  7F E3 FB 78 */	mr r3, r31
/* 8021BFAC  3C 80 80 3A */	lis r4, d_meter_d_meter2_info__stringBase0@ha
/* 8021BFB0  38 84 91 68 */	addi r4, r4, d_meter_d_meter2_info__stringBase0@l
/* 8021BFB4  38 A1 00 08 */	addi r5, r1, 8
/* 8021BFB8  38 C0 00 00 */	li r6, 0
/* 8021BFBC  38 E0 00 00 */	li r7, 0
/* 8021BFC0  39 00 00 00 */	li r8, 0
/* 8021BFC4  39 20 00 00 */	li r9, 0
/* 8021BFC8  48 00 0C 45 */	bl setWarpInfo__13dMeter2Info_cFPCcRC4cXyzsUcUcUc
/* 8021BFCC  3B 80 00 00 */	li r28, 0
lbl_8021BFD0:
/* 8021BFD0  7F E3 FB 78 */	mr r3, r31
/* 8021BFD4  38 1C 00 0B */	addi r0, r28, 0xb
/* 8021BFD8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8021BFDC  48 00 1D 81 */	bl changeWater__13dMeter2Info_cFUc
/* 8021BFE0  3B 9C 00 01 */	addi r28, r28, 1
/* 8021BFE4  2C 1C 00 04 */	cmpwi r28, 4
/* 8021BFE8  41 80 FF E8 */	blt lbl_8021BFD0
/* 8021BFEC  38 A0 00 00 */	li r5, 0
/* 8021BFF0  38 60 00 00 */	li r3, 0
/* 8021BFF4  38 00 00 04 */	li r0, 4
/* 8021BFF8  7C 09 03 A6 */	mtctr r0
lbl_8021BFFC:
/* 8021BFFC  7C 9F 2A 14 */	add r4, r31, r5
/* 8021C000  98 64 00 C4 */	stb r3, 0xc4(r4)
/* 8021C004  98 64 00 C8 */	stb r3, 0xc8(r4)
/* 8021C008  98 64 00 D0 */	stb r3, 0xd0(r4)
/* 8021C00C  98 64 00 D4 */	stb r3, 0xd4(r4)
/* 8021C010  38 A5 00 01 */	addi r5, r5, 1
/* 8021C014  42 00 FF E8 */	bdnz lbl_8021BFFC
/* 8021C018  38 60 00 00 */	li r3, 0
/* 8021C01C  98 7F 00 CC */	stb r3, 0xcc(r31)
/* 8021C020  98 7F 00 CD */	stb r3, 0xcd(r31)
/* 8021C024  98 7F 00 CE */	stb r3, 0xce(r31)
/* 8021C028  98 7F 00 CF */	stb r3, 0xcf(r31)
/* 8021C02C  98 7F 00 D8 */	stb r3, 0xd8(r31)
/* 8021C030  98 7F 00 D9 */	stb r3, 0xd9(r31)
/* 8021C034  98 7F 00 DA */	stb r3, 0xda(r31)
/* 8021C038  98 7F 00 DB */	stb r3, 0xdb(r31)
/* 8021C03C  38 00 00 FF */	li r0, 0xff
/* 8021C040  98 1F 00 DC */	stb r0, 0xdc(r31)
/* 8021C044  98 7F 00 DD */	stb r3, 0xdd(r31)
/* 8021C048  98 7F 00 DE */	stb r3, 0xde(r31)
/* 8021C04C  7F E3 FB 78 */	mr r3, r31
/* 8021C050  3C 80 80 3A */	lis r4, d_meter_d_meter2_info__stringBase0@ha
/* 8021C054  38 84 91 68 */	addi r4, r4, d_meter_d_meter2_info__stringBase0@l
/* 8021C058  48 00 22 39 */	bl setSaveStageName__13dMeter2Info_cFPCc
/* 8021C05C  3B A0 00 00 */	li r29, 0
/* 8021C060  9B BF 00 DF */	stb r29, 0xdf(r31)
/* 8021C064  9B BF 00 E0 */	stb r29, 0xe0(r31)
/* 8021C068  3B C0 00 FF */	li r30, 0xff
/* 8021C06C  9B DF 00 E1 */	stb r30, 0xe1(r31)
/* 8021C070  9B BF 00 E2 */	stb r29, 0xe2(r31)
/* 8021C074  9B BF 00 E7 */	stb r29, 0xe7(r31)
/* 8021C078  9B BF 00 E8 */	stb r29, 0xe8(r31)
/* 8021C07C  9B BF 00 E6 */	stb r29, 0xe6(r31)
/* 8021C080  9B BF 00 F2 */	stb r29, 0xf2(r31)
/* 8021C084  3B 60 00 00 */	li r27, 0
/* 8021C088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021C08C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021C090  3B 83 01 14 */	addi r28, r3, 0x114
lbl_8021C094:
/* 8021C094  7F 83 E3 78 */	mr r3, r28
/* 8021C098  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 8021C09C  4B E1 83 01 */	bl isLightDropGetFlag__16dSv_light_drop_cCFUc
/* 8021C0A0  2C 03 00 00 */	cmpwi r3, 0
/* 8021C0A4  41 82 00 10 */	beq lbl_8021C0B4
/* 8021C0A8  38 1B 00 E3 */	addi r0, r27, 0xe3
/* 8021C0AC  7F DF 01 AE */	stbx r30, r31, r0
/* 8021C0B0  48 00 00 0C */	b lbl_8021C0BC
lbl_8021C0B4:
/* 8021C0B4  38 1B 00 E3 */	addi r0, r27, 0xe3
/* 8021C0B8  7F BF 01 AE */	stbx r29, r31, r0
lbl_8021C0BC:
/* 8021C0BC  3B 7B 00 01 */	addi r27, r27, 1
/* 8021C0C0  2C 1B 00 03 */	cmpwi r27, 3
/* 8021C0C4  41 80 FF D0 */	blt lbl_8021C094
/* 8021C0C8  39 61 00 30 */	addi r11, r1, 0x30
/* 8021C0CC  48 14 61 55 */	bl _restgpr_27
/* 8021C0D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021C0D4  7C 08 03 A6 */	mtlr r0
/* 8021C0D8  38 21 00 30 */	addi r1, r1, 0x30
/* 8021C0DC  4E 80 00 20 */	blr 
