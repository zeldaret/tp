lbl_8075CE68:
/* 8075CE68  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8075CE6C  7C 08 02 A6 */	mflr r0
/* 8075CE70  90 01 01 04 */	stw r0, 0x104(r1)
/* 8075CE74  39 61 01 00 */	addi r11, r1, 0x100
/* 8075CE78  4B C0 53 4C */	b _savegpr_23
/* 8075CE7C  7C 7F 1B 78 */	mr r31, r3
/* 8075CE80  3C 60 80 76 */	lis r3, lit_1109@ha
/* 8075CE84  3B A3 1D C0 */	addi r29, r3, lit_1109@l
/* 8075CE88  3C 60 80 76 */	lis r3, lit_3906@ha
/* 8075CE8C  3B C3 14 FC */	addi r30, r3, lit_3906@l
/* 8075CE90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075CE94  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8075CE98  88 1C 5D B0 */	lbz r0, 0x5db0(r28)
/* 8075CE9C  7C 00 07 74 */	extsb r0, r0
/* 8075CEA0  38 7C 5D 74 */	addi r3, r28, 0x5d74
/* 8075CEA4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8075CEA8  7F 43 00 2E */	lwzx r26, r3, r0
/* 8075CEAC  83 7C 5D 74 */	lwz r27, 0x5d74(r28)
/* 8075CEB0  83 3C 5D AC */	lwz r25, 0x5dac(r28)
/* 8075CEB4  88 1D 03 E0 */	lbz r0, 0x3e0(r29)
/* 8075CEB8  7C 00 07 75 */	extsb. r0, r0
/* 8075CEBC  40 82 00 B4 */	bne lbl_8075CF70
/* 8075CEC0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075CEC4  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8075CEC8  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8075CECC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8075CED0  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8075CED4  D0 3D 03 FC */	stfs f1, 0x3fc(r29)
/* 8075CED8  38 7D 03 FC */	addi r3, r29, 0x3fc
/* 8075CEDC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8075CEE0  D0 23 00 08 */	stfs f1, 8(r3)
/* 8075CEE4  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 8075CEE8  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8075CEEC  38 BD 03 D4 */	addi r5, r29, 0x3d4
/* 8075CEF0  4B FF B6 09 */	bl __register_global_object
/* 8075CEF4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075CEF8  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8075CEFC  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8075CF00  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8075CF04  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8075CF08  38 7D 03 FC */	addi r3, r29, 0x3fc
/* 8075CF0C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8075CF10  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8075CF14  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8075CF18  38 63 00 0C */	addi r3, r3, 0xc
/* 8075CF1C  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 8075CF20  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8075CF24  38 BD 03 E4 */	addi r5, r29, 0x3e4
/* 8075CF28  4B FF B5 D1 */	bl __register_global_object
/* 8075CF2C  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 8075CF30  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8075CF34  C0 3E 01 E8 */	lfs f1, 0x1e8(r30)
/* 8075CF38  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8075CF3C  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 8075CF40  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8075CF44  38 7D 03 FC */	addi r3, r29, 0x3fc
/* 8075CF48  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 8075CF4C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8075CF50  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8075CF54  38 63 00 18 */	addi r3, r3, 0x18
/* 8075CF58  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 8075CF5C  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8075CF60  38 BD 03 F0 */	addi r5, r29, 0x3f0
/* 8075CF64  4B FF B5 95 */	bl __register_global_object
/* 8075CF68  38 00 00 01 */	li r0, 1
/* 8075CF6C  98 1D 03 E0 */	stb r0, 0x3e0(r29)
lbl_8075CF70:
/* 8075CF70  88 1D 04 2C */	lbz r0, 0x42c(r29)
/* 8075CF74  7C 00 07 75 */	extsb. r0, r0
/* 8075CF78  40 82 00 BC */	bne lbl_8075D034
/* 8075CF7C  C0 5E 01 90 */	lfs f2, 0x190(r30)
/* 8075CF80  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 8075CF84  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8075CF88  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8075CF8C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8075CF90  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8075CF94  D0 5D 04 48 */	stfs f2, 0x448(r29)
/* 8075CF98  38 7D 04 48 */	addi r3, r29, 0x448
/* 8075CF9C  D0 23 00 04 */	stfs f1, 4(r3)
/* 8075CFA0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8075CFA4  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 8075CFA8  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8075CFAC  38 BD 04 20 */	addi r5, r29, 0x420
/* 8075CFB0  4B FF B5 49 */	bl __register_global_object
/* 8075CFB4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8075CFB8  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8075CFBC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8075CFC0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8075CFC4  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8075CFC8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8075CFCC  38 7D 04 48 */	addi r3, r29, 0x448
/* 8075CFD0  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8075CFD4  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8075CFD8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8075CFDC  38 63 00 0C */	addi r3, r3, 0xc
/* 8075CFE0  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 8075CFE4  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8075CFE8  38 BD 04 30 */	addi r5, r29, 0x430
/* 8075CFEC  4B FF B5 0D */	bl __register_global_object
/* 8075CFF0  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 8075CFF4  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8075CFF8  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 8075CFFC  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8075D000  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 8075D004  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8075D008  38 7D 04 48 */	addi r3, r29, 0x448
/* 8075D00C  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 8075D010  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8075D014  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8075D018  38 63 00 18 */	addi r3, r3, 0x18
/* 8075D01C  3C 80 80 76 */	lis r4, __dt__4cXyzFv@ha
/* 8075D020  38 84 11 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8075D024  38 BD 04 3C */	addi r5, r29, 0x43c
/* 8075D028  4B FF B4 D1 */	bl __register_global_object
/* 8075D02C  38 00 00 01 */	li r0, 1
/* 8075D030  98 1D 04 2C */	stb r0, 0x42c(r29)
lbl_8075D034:
/* 8075D034  38 7D 00 4C */	addi r3, r29, 0x4c
/* 8075D038  C0 03 00 08 */	lfs f0, 8(r3)
/* 8075D03C  D0 1F 07 9C */	stfs f0, 0x79c(r31)
/* 8075D040  D0 1F 07 A0 */	stfs f0, 0x7a0(r31)
/* 8075D044  D0 1F 07 A4 */	stfs f0, 0x7a4(r31)
/* 8075D048  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8075D04C  28 00 00 0B */	cmplwi r0, 0xb
/* 8075D050  41 81 08 90 */	bgt lbl_8075D8E0
/* 8075D054  3C 60 80 76 */	lis r3, lit_5981@ha
/* 8075D058  38 63 1B F8 */	addi r3, r3, lit_5981@l
/* 8075D05C  54 00 10 3A */	slwi r0, r0, 2
/* 8075D060  7C 03 00 2E */	lwzx r0, r3, r0
/* 8075D064  7C 09 03 A6 */	mtctr r0
/* 8075D068  4E 80 04 20 */	bctr 
lbl_8075D06C:
/* 8075D06C  38 00 00 00 */	li r0, 0
/* 8075D070  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075D074  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8075D078  28 00 00 02 */	cmplwi r0, 2
/* 8075D07C  41 82 00 B8 */	beq lbl_8075D134
/* 8075D080  7F E3 FB 78 */	mr r3, r31
/* 8075D084  38 80 00 02 */	li r4, 2
/* 8075D088  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8075D08C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8075D090  38 C0 00 00 */	li r6, 0
/* 8075D094  4B 8B E8 74 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8075D098  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8075D09C  60 00 00 02 */	ori r0, r0, 2
/* 8075D0A0  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8075D0A4  C0 1B 00 D8 */	lfs f0, 0xd8(r27)
/* 8075D0A8  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8075D0AC  C0 1B 00 DC */	lfs f0, 0xdc(r27)
/* 8075D0B0  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 8075D0B4  C0 1B 00 E0 */	lfs f0, 0xe0(r27)
/* 8075D0B8  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 8075D0BC  C0 1B 00 E4 */	lfs f0, 0xe4(r27)
/* 8075D0C0  D0 1F 0A C8 */	stfs f0, 0xac8(r31)
/* 8075D0C4  C0 1B 00 E8 */	lfs f0, 0xe8(r27)
/* 8075D0C8  D0 1F 0A CC */	stfs f0, 0xacc(r31)
/* 8075D0CC  C0 1B 00 EC */	lfs f0, 0xec(r27)
/* 8075D0D0  D0 1F 0A D0 */	stfs f0, 0xad0(r31)
/* 8075D0D4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075D0D8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8075D0DC  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 8075D0E0  81 9F 0B 4C */	lwz r12, 0xb4c(r31)
/* 8075D0E4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8075D0E8  7D 89 03 A6 */	mtctr r12
/* 8075D0EC  4E 80 04 21 */	bctrl 
/* 8075D0F0  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 8075D0F4  81 9F 0B 4C */	lwz r12, 0xb4c(r31)
/* 8075D0F8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8075D0FC  7D 89 03 A6 */	mtctr r12
/* 8075D100  4E 80 04 21 */	bctrl 
/* 8075D104  38 00 00 07 */	li r0, 7
/* 8075D108  90 1F 08 4C */	stw r0, 0x84c(r31)
/* 8075D10C  38 60 00 00 */	li r3, 0
/* 8075D110  98 7F 08 43 */	stb r3, 0x843(r31)
/* 8075D114  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8075D118  54 00 00 3E */	slwi r0, r0, 0
/* 8075D11C  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8075D120  98 7F 04 96 */	stb r3, 0x496(r31)
/* 8075D124  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8075D128  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8075D12C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8075D130  48 00 07 B0 */	b lbl_8075D8E0
lbl_8075D134:
/* 8075D134  38 7A 02 48 */	addi r3, r26, 0x248
/* 8075D138  4B A0 43 98 */	b Stop__9dCamera_cFv
/* 8075D13C  38 7A 02 48 */	addi r3, r26, 0x248
/* 8075D140  38 80 00 03 */	li r4, 3
/* 8075D144  4B A0 5E C8 */	b SetTrimSize__9dCamera_cFl
/* 8075D148  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075D14C  D0 3F 04 D0 */	stfs f1, 0x4d0(r31)
/* 8075D150  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 8075D154  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 8075D158  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8075D15C  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 8075D160  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 8075D164  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8075D168  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8075D16C  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 8075D170  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8075D174  38 A0 84 00 */	li r5, -31744
/* 8075D178  38 C0 00 00 */	li r6, 0
/* 8075D17C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8075D180  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8075D184  7D 89 03 A6 */	mtctr r12
/* 8075D188  4E 80 04 21 */	bctrl 
/* 8075D18C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8075D190  38 00 00 03 */	li r0, 3
/* 8075D194  B0 04 06 04 */	sth r0, 0x604(r4)
/* 8075D198  38 60 00 00 */	li r3, 0
/* 8075D19C  90 64 06 0C */	stw r3, 0x60c(r4)
/* 8075D1A0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8075D1A4  38 00 00 04 */	li r0, 4
/* 8075D1A8  90 04 06 14 */	stw r0, 0x614(r4)
/* 8075D1AC  38 00 00 02 */	li r0, 2
/* 8075D1B0  90 04 06 0C */	stw r0, 0x60c(r4)
/* 8075D1B4  90 64 06 10 */	stw r3, 0x610(r4)
/* 8075D1B8  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 8075D1BC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075D1C0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8075D1C4  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8075D1C8  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 8075D1CC  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8075D1D0  38 61 00 58 */	addi r3, r1, 0x58
/* 8075D1D4  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8075D1D8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075D1DC  4B B0 99 58 */	b __mi__4cXyzCFRC3Vec
/* 8075D1E0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8075D1E4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075D1E8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8075D1EC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8075D1F0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8075D1F4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8075D1F8  38 61 00 AC */	addi r3, r1, 0xac
/* 8075D1FC  4B B0 9F 2C */	b atan2sX_Z__4cXyzCFv
/* 8075D200  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8075D204  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 8075D208  38 00 00 02 */	li r0, 2
/* 8075D20C  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075D210  7F E3 FB 78 */	mr r3, r31
/* 8075D214  38 80 00 12 */	li r4, 0x12
/* 8075D218  38 A0 00 00 */	li r5, 0
/* 8075D21C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075D220  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075D224  4B FF B5 DD */	bl setBck__8daE_PZ_cFiUcff
/* 8075D228  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703EF@ha */
/* 8075D22C  38 03 03 EF */	addi r0, r3, 0x03EF /* 0x000703EF@l */
/* 8075D230  90 01 00 24 */	stw r0, 0x24(r1)
/* 8075D234  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8075D238  38 81 00 24 */	addi r4, r1, 0x24
/* 8075D23C  38 A0 FF FF */	li r5, -1
/* 8075D240  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 8075D244  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8075D248  7D 89 03 A6 */	mtctr r12
/* 8075D24C  4E 80 04 21 */	bctrl 
/* 8075D250  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8075D254  2C 00 00 00 */	cmpwi r0, 0
/* 8075D258  40 82 00 10 */	bne lbl_8075D268
/* 8075D25C  C0 1D 04 48 */	lfs f0, 0x448(r29)
/* 8075D260  D0 1F 07 C4 */	stfs f0, 0x7c4(r31)
/* 8075D264  48 00 00 10 */	b lbl_8075D274
lbl_8075D268:
/* 8075D268  38 7D 04 48 */	addi r3, r29, 0x448
/* 8075D26C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8075D270  D0 1F 07 C4 */	stfs f0, 0x7c4(r31)
lbl_8075D274:
/* 8075D274  38 00 00 00 */	li r0, 0
/* 8075D278  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 8075D27C  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)
/* 8075D280  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075D284  38 03 00 01 */	addi r0, r3, 1
/* 8075D288  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075D28C  48 00 06 54 */	b lbl_8075D8E0
lbl_8075D290:
/* 8075D290  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075D294  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8075D298  FC 00 00 1E */	fctiwz f0, f0
/* 8075D29C  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8075D2A0  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8075D2A4  2C 00 00 87 */	cmpwi r0, 0x87
/* 8075D2A8  40 82 00 1C */	bne lbl_8075D2C4
/* 8075D2AC  4B A2 43 94 */	b dCam_getBody__Fv
/* 8075D2B0  38 80 00 46 */	li r4, 0x46
/* 8075D2B4  7F E5 FB 78 */	mr r5, r31
/* 8075D2B8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8075D2BC  C0 5E 01 F4 */	lfs f2, 0x1f4(r30)
/* 8075D2C0  4B A2 3E B0 */	b StartBlure__9dCamera_cFiP10fopAc_ac_cff
lbl_8075D2C4:
/* 8075D2C4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075D2C8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8075D2CC  FC 00 00 1E */	fctiwz f0, f0
/* 8075D2D0  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8075D2D4  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8075D2D8  2C 00 00 AA */	cmpwi r0, 0xaa
/* 8075D2DC  40 80 00 C0 */	bge lbl_8075D39C
/* 8075D2E0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8075D2E4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8075D2E8  80 63 00 00 */	lwz r3, 0(r3)
/* 8075D2EC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8075D2F0  4B 8A F0 EC */	b mDoMtx_YrotS__FPA4_fs
/* 8075D2F4  C0 1F 07 C4 */	lfs f0, 0x7c4(r31)
/* 8075D2F8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8075D2FC  38 7D 04 48 */	addi r3, r29, 0x448
/* 8075D300  C0 03 00 04 */	lfs f0, 4(r3)
/* 8075D304  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8075D308  C0 03 00 08 */	lfs f0, 8(r3)
/* 8075D30C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8075D310  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8075D314  38 81 00 AC */	addi r4, r1, 0xac
/* 8075D318  4B B1 3B D4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8075D31C  38 61 00 AC */	addi r3, r1, 0xac
/* 8075D320  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8075D324  7C 65 1B 78 */	mr r5, r3
/* 8075D328  4B BE 9D 68 */	b PSVECAdd
/* 8075D32C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8075D330  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8075D334  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8075D338  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 8075D33C  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8075D340  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 8075D344  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8075D348  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8075D34C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8075D350  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8075D354  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8075D358  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8075D35C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8075D360  38 9D 03 FC */	addi r4, r29, 0x3fc
/* 8075D364  7C 65 1B 78 */	mr r5, r3
/* 8075D368  4B BE 9D 28 */	b PSVECAdd
/* 8075D36C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8075D370  D0 1F 0A C8 */	stfs f0, 0xac8(r31)
/* 8075D374  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8075D378  D0 1F 0A CC */	stfs f0, 0xacc(r31)
/* 8075D37C  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8075D380  D0 1F 0A D0 */	stfs f0, 0xad0(r31)
/* 8075D384  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 8075D388  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8075D38C  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 8075D390  C0 7E 01 F4 */	lfs f3, 0x1f4(r30)
/* 8075D394  4B B1 26 A8 */	b cLib_addCalc2__FPffff
/* 8075D398  48 00 00 84 */	b lbl_8075D41C
lbl_8075D39C:
/* 8075D39C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8075D3A0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8075D3A4  80 63 00 00 */	lwz r3, 0(r3)
/* 8075D3A8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8075D3AC  4B 8A F0 30 */	b mDoMtx_YrotS__FPA4_fs
/* 8075D3B0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8075D3B4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8075D3B8  38 7D 04 48 */	addi r3, r29, 0x448
/* 8075D3BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8075D3C0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8075D3C4  C0 23 00 08 */	lfs f1, 8(r3)
/* 8075D3C8  C0 1F 07 C4 */	lfs f0, 0x7c4(r31)
/* 8075D3CC  EC 01 00 2A */	fadds f0, f1, f0
/* 8075D3D0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8075D3D4  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8075D3D8  38 81 00 AC */	addi r4, r1, 0xac
/* 8075D3DC  4B B1 3B 10 */	b MtxPosition__FP4cXyzP4cXyz
/* 8075D3E0  38 61 00 AC */	addi r3, r1, 0xac
/* 8075D3E4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8075D3E8  7C 65 1B 78 */	mr r5, r3
/* 8075D3EC  4B BE 9C A4 */	b PSVECAdd
/* 8075D3F0  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8075D3F4  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8075D3F8  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8075D3FC  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 8075D400  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8075D404  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 8075D408  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 8075D40C  C0 3E 01 F8 */	lfs f1, 0x1f8(r30)
/* 8075D410  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 8075D414  C0 7E 01 FC */	lfs f3, 0x1fc(r30)
/* 8075D418  4B B1 26 24 */	b cLib_addCalc2__FPffff
lbl_8075D41C:
/* 8075D41C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075D420  38 80 00 01 */	li r4, 1
/* 8075D424  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8075D428  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8075D42C  40 82 00 18 */	bne lbl_8075D444
/* 8075D430  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075D434  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8075D438  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075D43C  41 82 00 08 */	beq lbl_8075D444
/* 8075D440  38 80 00 00 */	li r4, 0
lbl_8075D444:
/* 8075D444  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8075D448  41 82 04 98 */	beq lbl_8075D8E0
lbl_8075D44C:
/* 8075D44C  3A E0 00 00 */	li r23, 0
/* 8075D450  3B 60 00 00 */	li r27, 0
/* 8075D454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075D458  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 8075D45C  3C 60 80 76 */	lis r3, eff_delete_id@ha
/* 8075D460  3B 83 1B F0 */	addi r28, r3, eff_delete_id@l
lbl_8075D464:
/* 8075D464  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8075D468  38 80 00 00 */	li r4, 0
/* 8075D46C  90 81 00 08 */	stw r4, 8(r1)
/* 8075D470  38 00 FF FF */	li r0, -1
/* 8075D474  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075D478  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075D47C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075D480  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075D484  38 80 00 00 */	li r4, 0
/* 8075D488  7C BC DA 2E */	lhzx r5, r28, r27
/* 8075D48C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8075D490  38 E0 00 00 */	li r7, 0
/* 8075D494  39 00 00 00 */	li r8, 0
/* 8075D498  39 20 00 00 */	li r9, 0
/* 8075D49C  39 40 00 FF */	li r10, 0xff
/* 8075D4A0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075D4A4  4B 8E F5 EC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075D4A8  3A F7 00 01 */	addi r23, r23, 1
/* 8075D4AC  2C 17 00 03 */	cmpwi r23, 3
/* 8075D4B0  3B 7B 00 02 */	addi r27, r27, 2
/* 8075D4B4  41 80 FF B0 */	blt lbl_8075D464
/* 8075D4B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703FD@ha */
/* 8075D4BC  38 03 03 FD */	addi r0, r3, 0x03FD /* 0x000703FD@l */
/* 8075D4C0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8075D4C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8075D4C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8075D4CC  80 63 00 00 */	lwz r3, 0(r3)
/* 8075D4D0  38 81 00 20 */	addi r4, r1, 0x20
/* 8075D4D4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075D4D8  38 C0 00 00 */	li r6, 0
/* 8075D4DC  38 E0 00 00 */	li r7, 0
/* 8075D4E0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075D4E4  FC 40 08 90 */	fmr f2, f1
/* 8075D4E8  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075D4EC  FC 80 18 90 */	fmr f4, f3
/* 8075D4F0  39 00 00 00 */	li r8, 0
/* 8075D4F4  4B B4 E4 90 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075D4F8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8075D4FC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8075D500  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8075D504  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8075D508  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8075D50C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8075D510  C0 1F 09 28 */	lfs f0, 0x928(r31)
/* 8075D514  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8075D518  38 60 02 B6 */	li r3, 0x2b6
/* 8075D51C  38 80 00 01 */	li r4, 1
/* 8075D520  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 8075D524  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8075D528  7C 06 07 74 */	extsb r6, r0
/* 8075D52C  38 E0 00 00 */	li r7, 0
/* 8075D530  39 00 00 00 */	li r8, 0
/* 8075D534  39 20 FF FF */	li r9, -1
/* 8075D538  4B 8B C8 60 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8075D53C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075D540  D0 1F 07 C4 */	stfs f0, 0x7c4(r31)
/* 8075D544  38 00 00 8C */	li r0, 0x8c
/* 8075D548  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075D54C  38 00 00 01 */	li r0, 1
/* 8075D550  98 1F 08 40 */	stb r0, 0x840(r31)
/* 8075D554  38 00 00 03 */	li r0, 3
/* 8075D558  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075D55C:
/* 8075D55C  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8075D560  38 9D 03 FC */	addi r4, r29, 0x3fc
/* 8075D564  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8075D568  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8075D56C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8075D570  38 84 00 18 */	addi r4, r4, 0x18
/* 8075D574  4B B1 25 44 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075D578  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8075D57C  38 9D 04 48 */	addi r4, r29, 0x448
/* 8075D580  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8075D584  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8075D588  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8075D58C  38 84 00 18 */	addi r4, r4, 0x18
/* 8075D590  4B B1 25 28 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075D594  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075D598  28 00 00 00 */	cmplwi r0, 0
/* 8075D59C  40 82 03 44 */	bne lbl_8075D8E0
/* 8075D5A0  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 8075D5A4  28 00 00 00 */	cmplwi r0, 0
/* 8075D5A8  40 82 00 70 */	bne lbl_8075D618
/* 8075D5AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075D5B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075D5B4  38 80 00 19 */	li r4, 0x19
/* 8075D5B8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8075D5BC  7C 05 07 74 */	extsb r5, r0
/* 8075D5C0  4B 8D 7C F0 */	b offSwitch__10dSv_info_cFii
/* 8075D5C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075D5C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075D5CC  38 80 00 1A */	li r4, 0x1a
/* 8075D5D0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8075D5D4  7C 05 07 74 */	extsb r5, r0
/* 8075D5D8  4B 8D 7C D8 */	b offSwitch__10dSv_info_cFii
/* 8075D5DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075D5E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075D5E4  38 80 00 64 */	li r4, 0x64
/* 8075D5E8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8075D5EC  7C 05 07 74 */	extsb r5, r0
/* 8075D5F0  4B 8D 7C 10 */	b onSwitch__10dSv_info_cFii
/* 8075D5F4  88 9F 07 D6 */	lbz r4, 0x7d6(r31)
/* 8075D5F8  28 04 00 FF */	cmplwi r4, 0xff
/* 8075D5FC  41 82 00 84 */	beq lbl_8075D680
/* 8075D600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075D604  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075D608  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8075D60C  7C 05 07 74 */	extsb r5, r0
/* 8075D610  4B 8D 7B F0 */	b onSwitch__10dSv_info_cFii
/* 8075D614  48 00 00 6C */	b lbl_8075D680
lbl_8075D618:
/* 8075D618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075D61C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075D620  38 80 00 1B */	li r4, 0x1b
/* 8075D624  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8075D628  7C 05 07 74 */	extsb r5, r0
/* 8075D62C  4B 8D 7C 84 */	b offSwitch__10dSv_info_cFii
/* 8075D630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075D634  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075D638  38 80 00 1C */	li r4, 0x1c
/* 8075D63C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8075D640  7C 05 07 74 */	extsb r5, r0
/* 8075D644  4B 8D 7C 6C */	b offSwitch__10dSv_info_cFii
/* 8075D648  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075D64C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075D650  38 80 00 65 */	li r4, 0x65
/* 8075D654  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8075D658  7C 05 07 74 */	extsb r5, r0
/* 8075D65C  4B 8D 7B A4 */	b onSwitch__10dSv_info_cFii
/* 8075D660  88 9F 07 D6 */	lbz r4, 0x7d6(r31)
/* 8075D664  28 04 00 FF */	cmplwi r4, 0xff
/* 8075D668  41 82 00 18 */	beq lbl_8075D680
/* 8075D66C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075D670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075D674  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8075D678  7C 05 07 74 */	extsb r5, r0
/* 8075D67C  4B 8D 7B 84 */	b onSwitch__10dSv_info_cFii
lbl_8075D680:
/* 8075D680  C0 79 04 D0 */	lfs f3, 0x4d0(r25)
/* 8075D684  D0 61 00 B8 */	stfs f3, 0xb8(r1)
/* 8075D688  C0 59 04 D4 */	lfs f2, 0x4d4(r25)
/* 8075D68C  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 8075D690  C0 39 04 D8 */	lfs f1, 0x4d8(r25)
/* 8075D694  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 8075D698  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8075D69C  EC 02 00 2A */	fadds f0, f2, f0
/* 8075D6A0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8075D6A4  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 8075D6A8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8075D6AC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8075D6B0  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8075D6B4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8075D6B8  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8075D6BC  38 7A 02 48 */	addi r3, r26, 0x248
/* 8075D6C0  38 81 00 4C */	addi r4, r1, 0x4c
/* 8075D6C4  38 A1 00 40 */	addi r5, r1, 0x40
/* 8075D6C8  4B A2 35 50 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 8075D6CC  38 7A 02 48 */	addi r3, r26, 0x248
/* 8075D6D0  4B A0 3D DC */	b Start__9dCamera_cFv
/* 8075D6D4  38 7A 02 48 */	addi r3, r26, 0x248
/* 8075D6D8  38 80 00 00 */	li r4, 0
/* 8075D6DC  4B A0 59 30 */	b SetTrimSize__9dCamera_cFl
/* 8075D6E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075D6E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075D6E8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8075D6EC  4B 8E 4D 7C */	b reset__14dEvt_control_cFv
/* 8075D6F0  7F E3 FB 78 */	mr r3, r31
/* 8075D6F4  4B 8B C5 88 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8075D6F8  48 00 01 E8 */	b lbl_8075D8E0
lbl_8075D6FC:
/* 8075D6FC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075D700  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8075D704  FC 00 00 1E */	fctiwz f0, f0
/* 8075D708  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8075D70C  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8075D710  2C 00 00 87 */	cmpwi r0, 0x87
/* 8075D714  40 82 00 1C */	bne lbl_8075D730
/* 8075D718  4B A2 3F 28 */	b dCam_getBody__Fv
/* 8075D71C  38 80 00 46 */	li r4, 0x46
/* 8075D720  7F E5 FB 78 */	mr r5, r31
/* 8075D724  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8075D728  C0 5E 01 F4 */	lfs f2, 0x1f4(r30)
/* 8075D72C  4B A2 3A 44 */	b StartBlure__9dCamera_cFiP10fopAc_ac_cff
lbl_8075D730:
/* 8075D730  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075D734  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8075D738  FC 00 00 1E */	fctiwz f0, f0
/* 8075D73C  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8075D740  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8075D744  2C 00 00 AA */	cmpwi r0, 0xaa
/* 8075D748  40 80 00 E0 */	bge lbl_8075D828
/* 8075D74C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8075D750  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8075D754  80 63 00 00 */	lwz r3, 0(r3)
/* 8075D758  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8075D75C  4B 8A EC 80 */	b mDoMtx_YrotS__FPA4_fs
/* 8075D760  38 7D 04 48 */	addi r3, r29, 0x448
/* 8075D764  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8075D768  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8075D76C  C0 1F 07 C4 */	lfs f0, 0x7c4(r31)
/* 8075D770  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8075D774  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8075D778  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8075D77C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8075D780  38 81 00 AC */	addi r4, r1, 0xac
/* 8075D784  4B B1 37 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 8075D788  38 61 00 AC */	addi r3, r1, 0xac
/* 8075D78C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8075D790  7C 65 1B 78 */	mr r5, r3
/* 8075D794  4B BE 98 FC */	b PSVECAdd
/* 8075D798  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8075D79C  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8075D7A0  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8075D7A4  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 8075D7A8  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8075D7AC  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 8075D7B0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8075D7B4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8075D7B8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8075D7BC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8075D7C0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8075D7C4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8075D7C8  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8075D7CC  38 9D 03 FC */	addi r4, r29, 0x3fc
/* 8075D7D0  7C 65 1B 78 */	mr r5, r3
/* 8075D7D4  38 84 00 0C */	addi r4, r4, 0xc
/* 8075D7D8  4B BE 98 B8 */	b PSVECAdd
/* 8075D7DC  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8075D7E0  D0 1F 0A C8 */	stfs f0, 0xac8(r31)
/* 8075D7E4  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8075D7E8  D0 1F 0A CC */	stfs f0, 0xacc(r31)
/* 8075D7EC  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8075D7F0  D0 1F 0A D0 */	stfs f0, 0xad0(r31)
/* 8075D7F4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075D7F8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8075D7FC  FC 00 00 1E */	fctiwz f0, f0
/* 8075D800  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8075D804  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8075D808  2C 00 00 7D */	cmpwi r0, 0x7d
/* 8075D80C  41 80 00 9C */	blt lbl_8075D8A8
/* 8075D810  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 8075D814  C0 3E 01 A0 */	lfs f1, 0x1a0(r30)
/* 8075D818  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 8075D81C  C0 7E 02 00 */	lfs f3, 0x200(r30)
/* 8075D820  4B B1 22 1C */	b cLib_addCalc2__FPffff
/* 8075D824  48 00 00 84 */	b lbl_8075D8A8
lbl_8075D828:
/* 8075D828  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8075D82C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8075D830  80 63 00 00 */	lwz r3, 0(r3)
/* 8075D834  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8075D838  4B 8A EB A4 */	b mDoMtx_YrotS__FPA4_fs
/* 8075D83C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8075D840  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8075D844  38 7D 04 48 */	addi r3, r29, 0x448
/* 8075D848  C0 03 00 04 */	lfs f0, 4(r3)
/* 8075D84C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8075D850  C0 23 00 08 */	lfs f1, 8(r3)
/* 8075D854  C0 1F 07 C4 */	lfs f0, 0x7c4(r31)
/* 8075D858  EC 01 00 2A */	fadds f0, f1, f0
/* 8075D85C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8075D860  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8075D864  38 81 00 AC */	addi r4, r1, 0xac
/* 8075D868  4B B1 36 84 */	b MtxPosition__FP4cXyzP4cXyz
/* 8075D86C  38 61 00 AC */	addi r3, r1, 0xac
/* 8075D870  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8075D874  7C 65 1B 78 */	mr r5, r3
/* 8075D878  4B BE 98 18 */	b PSVECAdd
/* 8075D87C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8075D880  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8075D884  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8075D888  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 8075D88C  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8075D890  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 8075D894  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 8075D898  C0 3E 01 F8 */	lfs f1, 0x1f8(r30)
/* 8075D89C  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 8075D8A0  C0 7E 01 FC */	lfs f3, 0x1fc(r30)
/* 8075D8A4  4B B1 21 98 */	b cLib_addCalc2__FPffff
lbl_8075D8A8:
/* 8075D8A8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075D8AC  38 80 00 01 */	li r4, 1
/* 8075D8B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8075D8B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8075D8B8  40 82 00 18 */	bne lbl_8075D8D0
/* 8075D8BC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075D8C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8075D8C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075D8C8  41 82 00 08 */	beq lbl_8075D8D0
/* 8075D8CC  38 80 00 00 */	li r4, 0
lbl_8075D8D0:
/* 8075D8D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8075D8D4  41 82 00 0C */	beq lbl_8075D8E0
/* 8075D8D8  38 00 00 02 */	li r0, 2
/* 8075D8DC  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075D8E0:
/* 8075D8E0  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8075D8E4  2C 00 00 01 */	cmpwi r0, 1
/* 8075D8E8  41 80 00 4C */	blt lbl_8075D934
/* 8075D8EC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8075D8F0  41 82 00 44 */	beq lbl_8075D934
/* 8075D8F4  C0 1F 0A C8 */	lfs f0, 0xac8(r31)
/* 8075D8F8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8075D8FC  C0 1F 0A CC */	lfs f0, 0xacc(r31)
/* 8075D900  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8075D904  C0 1F 0A D0 */	lfs f0, 0xad0(r31)
/* 8075D908  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8075D90C  C0 1F 0A BC */	lfs f0, 0xabc(r31)
/* 8075D910  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8075D914  C0 1F 0A C0 */	lfs f0, 0xac0(r31)
/* 8075D918  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8075D91C  C0 1F 0A C4 */	lfs f0, 0xac4(r31)
/* 8075D920  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8075D924  38 7A 02 48 */	addi r3, r26, 0x248
/* 8075D928  38 81 00 34 */	addi r4, r1, 0x34
/* 8075D92C  38 A1 00 28 */	addi r5, r1, 0x28
/* 8075D930  4B A2 31 78 */	b Set__9dCamera_cF4cXyz4cXyz
lbl_8075D934:
/* 8075D934  39 61 01 00 */	addi r11, r1, 0x100
/* 8075D938  4B C0 48 D8 */	b _restgpr_23
/* 8075D93C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8075D940  7C 08 03 A6 */	mtlr r0
/* 8075D944  38 21 01 00 */	addi r1, r1, 0x100
/* 8075D948  4E 80 00 20 */	blr 
