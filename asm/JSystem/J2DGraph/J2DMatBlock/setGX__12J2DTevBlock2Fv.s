lbl_802ED584:
/* 802ED584  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802ED588  7C 08 02 A6 */	mflr r0
/* 802ED58C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802ED590  39 61 00 30 */	addi r11, r1, 0x30
/* 802ED594  48 07 4C 45 */	bl _savegpr_28
/* 802ED598  7C 7F 1B 78 */	mr r31, r3
/* 802ED59C  3B 80 00 00 */	li r28, 0
lbl_802ED5A0:
/* 802ED5A0  7F E3 FB 78 */	mr r3, r31
/* 802ED5A4  7F 84 E3 78 */	mr r4, r28
/* 802ED5A8  7F 85 E3 78 */	mr r5, r28
/* 802ED5AC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802ED5B0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802ED5B4  7D 89 03 A6 */	mtctr r12
/* 802ED5B8  4E 80 04 21 */	bctrl 
/* 802ED5BC  3B 9C 00 01 */	addi r28, r28, 1
/* 802ED5C0  2C 1C 00 02 */	cmpwi r28, 2
/* 802ED5C4  41 80 FF DC */	blt lbl_802ED5A0
/* 802ED5C8  3B A0 00 00 */	li r29, 0
/* 802ED5CC  3B 80 00 00 */	li r28, 0
/* 802ED5D0  48 00 00 24 */	b lbl_802ED5F4
lbl_802ED5D4:
/* 802ED5D4  7C DF E2 14 */	add r6, r31, r28
/* 802ED5D8  7F A3 EB 78 */	mr r3, r29
/* 802ED5DC  88 86 00 0A */	lbz r4, 0xa(r6)
/* 802ED5E0  88 A6 00 0B */	lbz r5, 0xb(r6)
/* 802ED5E4  88 C6 00 0C */	lbz r6, 0xc(r6)
/* 802ED5E8  48 07 21 0D */	bl GXSetTevOrder
/* 802ED5EC  3B BD 00 01 */	addi r29, r29, 1
/* 802ED5F0  3B 9C 00 04 */	addi r28, r28, 4
lbl_802ED5F4:
/* 802ED5F4  88 1F 00 32 */	lbz r0, 0x32(r31)
/* 802ED5F8  7C 1D 00 00 */	cmpw r29, r0
/* 802ED5FC  41 80 FF D8 */	blt lbl_802ED5D4
/* 802ED600  3B C0 00 00 */	li r30, 0
/* 802ED604  3B 80 00 00 */	li r28, 0
/* 802ED608  3B A1 00 0C */	addi r29, r1, 0xc
lbl_802ED60C:
/* 802ED60C  38 1C 00 12 */	addi r0, r28, 0x12
/* 802ED610  7C 9F 02 14 */	add r4, r31, r0
/* 802ED614  80 64 00 00 */	lwz r3, 0(r4)
/* 802ED618  80 04 00 04 */	lwz r0, 4(r4)
/* 802ED61C  90 61 00 0C */	stw r3, 0xc(r1)
/* 802ED620  90 01 00 10 */	stw r0, 0x10(r1)
/* 802ED624  2C 1E 00 03 */	cmpwi r30, 3
/* 802ED628  38 60 00 00 */	li r3, 0
/* 802ED62C  41 82 00 08 */	beq lbl_802ED634
/* 802ED630  38 7E 00 01 */	addi r3, r30, 1
lbl_802ED634:
/* 802ED634  7F A4 EB 78 */	mr r4, r29
/* 802ED638  48 07 1D A5 */	bl GXSetTevColorS10
/* 802ED63C  3B DE 00 01 */	addi r30, r30, 1
/* 802ED640  2C 1E 00 04 */	cmpwi r30, 4
/* 802ED644  3B 9C 00 08 */	addi r28, r28, 8
/* 802ED648  41 80 FF C4 */	blt lbl_802ED60C
/* 802ED64C  88 7F 00 32 */	lbz r3, 0x32(r31)
/* 802ED650  48 07 22 41 */	bl GXSetNumTevStages
/* 802ED654  3B C0 00 00 */	li r30, 0
/* 802ED658  3B 80 00 00 */	li r28, 0
/* 802ED65C  48 00 01 2C */	b lbl_802ED788
lbl_802ED660:
/* 802ED660  7F BF E2 14 */	add r29, r31, r28
/* 802ED664  88 1D 00 36 */	lbz r0, 0x36(r29)
/* 802ED668  88 BD 00 35 */	lbz r5, 0x35(r29)
/* 802ED66C  7F C3 F3 78 */	mr r3, r30
/* 802ED670  54 A4 E7 3E */	rlwinm r4, r5, 0x1c, 0x1c, 0x1f
/* 802ED674  54 A5 07 3E */	clrlwi r5, r5, 0x1c
/* 802ED678  54 06 E7 3E */	rlwinm r6, r0, 0x1c, 0x1c, 0x1f
/* 802ED67C  54 07 07 3E */	clrlwi r7, r0, 0x1c
/* 802ED680  48 07 1B A5 */	bl GXSetTevColorIn
/* 802ED684  88 FD 00 3A */	lbz r7, 0x3a(r29)
/* 802ED688  88 DD 00 39 */	lbz r6, 0x39(r29)
/* 802ED68C  7F C3 F3 78 */	mr r3, r30
/* 802ED690  54 C0 06 34 */	rlwinm r0, r6, 0, 0x18, 0x1a
/* 802ED694  7C 00 2E 70 */	srawi r0, r0, 5
/* 802ED698  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802ED69C  54 C5 F7 7E */	rlwinm r5, r6, 0x1e, 0x1d, 0x1f
/* 802ED6A0  54 E0 CF FE */	rlwinm r0, r7, 0x19, 0x1f, 0x1f
/* 802ED6A4  50 C0 0F 7C */	rlwimi r0, r6, 1, 0x1d, 0x1e
/* 802ED6A8  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802ED6AC  54 E7 E7 7E */	rlwinm r7, r7, 0x1c, 0x1d, 0x1f
/* 802ED6B0  48 07 1B B9 */	bl GXSetTevAlphaIn
/* 802ED6B4  88 9D 00 34 */	lbz r4, 0x34(r29)
/* 802ED6B8  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 802ED6BC  54 80 06 B6 */	rlwinm r0, r4, 0, 0x1a, 0x1b
/* 802ED6C0  7C 00 26 70 */	srawi r0, r0, 4
/* 802ED6C4  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802ED6C8  54 87 EF FE */	rlwinm r7, r4, 0x1d, 0x1f, 0x1f
/* 802ED6CC  54 88 D7 BE */	rlwinm r8, r4, 0x1a, 0x1e, 0x1f
/* 802ED6D0  7F C3 F3 78 */	mr r3, r30
/* 802ED6D4  28 05 00 03 */	cmplwi r5, 3
/* 802ED6D8  54 89 F7 FE */	rlwinm r9, r4, 0x1e, 0x1f, 0x1f
/* 802ED6DC  54 80 EF 7C */	rlwinm r0, r4, 0x1d, 0x1d, 0x1e
/* 802ED6E0  7C 89 02 14 */	add r4, r9, r0
/* 802ED6E4  38 04 00 08 */	addi r0, r4, 8
/* 802ED6E8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802ED6EC  41 82 00 08 */	beq lbl_802ED6F4
/* 802ED6F0  7D 20 4B 78 */	mr r0, r9
lbl_802ED6F4:
/* 802ED6F4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802ED6F8  48 07 1B B5 */	bl GXSetTevColorOp
/* 802ED6FC  88 9D 00 38 */	lbz r4, 0x38(r29)
/* 802ED700  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 802ED704  54 80 06 B6 */	rlwinm r0, r4, 0, 0x1a, 0x1b
/* 802ED708  7C 00 26 70 */	srawi r0, r0, 4
/* 802ED70C  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802ED710  54 87 EF FE */	rlwinm r7, r4, 0x1d, 0x1f, 0x1f
/* 802ED714  54 88 D7 BE */	rlwinm r8, r4, 0x1a, 0x1e, 0x1f
/* 802ED718  7F C3 F3 78 */	mr r3, r30
/* 802ED71C  28 05 00 03 */	cmplwi r5, 3
/* 802ED720  54 89 F7 FE */	rlwinm r9, r4, 0x1e, 0x1f, 0x1f
/* 802ED724  54 80 EF 7C */	rlwinm r0, r4, 0x1d, 0x1d, 0x1e
/* 802ED728  7C 89 02 14 */	add r4, r9, r0
/* 802ED72C  38 04 00 08 */	addi r0, r4, 8
/* 802ED730  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802ED734  41 82 00 08 */	beq lbl_802ED73C
/* 802ED738  7D 20 4B 78 */	mr r0, r9
lbl_802ED73C:
/* 802ED73C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802ED740  48 07 1B D5 */	bl GXSetTevAlphaOp
/* 802ED744  7F BF F2 14 */	add r29, r31, r30
/* 802ED748  88 1D 00 54 */	lbz r0, 0x54(r29)
/* 802ED74C  28 00 00 FF */	cmplwi r0, 0xff
/* 802ED750  38 80 00 00 */	li r4, 0
/* 802ED754  41 82 00 08 */	beq lbl_802ED75C
/* 802ED758  7C 04 03 78 */	mr r4, r0
lbl_802ED75C:
/* 802ED75C  7F C3 F3 78 */	mr r3, r30
/* 802ED760  48 07 1D 45 */	bl GXSetTevKColorSel
/* 802ED764  88 1D 00 56 */	lbz r0, 0x56(r29)
/* 802ED768  28 00 00 FF */	cmplwi r0, 0xff
/* 802ED76C  38 80 00 00 */	li r4, 0
/* 802ED770  41 82 00 08 */	beq lbl_802ED778
/* 802ED774  7C 04 03 78 */	mr r4, r0
lbl_802ED778:
/* 802ED778  7F C3 F3 78 */	mr r3, r30
/* 802ED77C  48 07 1D 85 */	bl GXSetTevKAlphaSel
/* 802ED780  3B DE 00 01 */	addi r30, r30, 1
/* 802ED784  3B 9C 00 08 */	addi r28, r28, 8
lbl_802ED788:
/* 802ED788  88 1F 00 32 */	lbz r0, 0x32(r31)
/* 802ED78C  7C 1E 00 00 */	cmpw r30, r0
/* 802ED790  41 80 FE D0 */	blt lbl_802ED660
/* 802ED794  3B A0 00 00 */	li r29, 0
/* 802ED798  3B 80 00 00 */	li r28, 0
lbl_802ED79C:
/* 802ED79C  38 1C 00 44 */	addi r0, r28, 0x44
/* 802ED7A0  7C 1F 00 2E */	lwzx r0, r31, r0
/* 802ED7A4  90 01 00 08 */	stw r0, 8(r1)
/* 802ED7A8  7F A3 EB 78 */	mr r3, r29
/* 802ED7AC  38 81 00 08 */	addi r4, r1, 8
/* 802ED7B0  48 07 1C 91 */	bl GXSetTevKColor
/* 802ED7B4  3B BD 00 01 */	addi r29, r29, 1
/* 802ED7B8  2C 1D 00 04 */	cmpwi r29, 4
/* 802ED7BC  3B 9C 00 04 */	addi r28, r28, 4
/* 802ED7C0  41 80 FF DC */	blt lbl_802ED79C
/* 802ED7C4  3B A0 00 00 */	li r29, 0
/* 802ED7C8  3B 80 00 00 */	li r28, 0
/* 802ED7CC  48 00 00 24 */	b lbl_802ED7F0
lbl_802ED7D0:
/* 802ED7D0  38 1C 00 3A */	addi r0, r28, 0x3a
/* 802ED7D4  7C 1F 00 AE */	lbzx r0, r31, r0
/* 802ED7D8  7F A3 EB 78 */	mr r3, r29
/* 802ED7DC  54 04 07 BE */	clrlwi r4, r0, 0x1e
/* 802ED7E0  54 05 F7 BE */	rlwinm r5, r0, 0x1e, 0x1e, 0x1f
/* 802ED7E4  48 07 1D 79 */	bl GXSetTevSwapMode
/* 802ED7E8  3B BD 00 01 */	addi r29, r29, 1
/* 802ED7EC  3B 9C 00 08 */	addi r28, r28, 8
lbl_802ED7F0:
/* 802ED7F0  88 1F 00 32 */	lbz r0, 0x32(r31)
/* 802ED7F4  7C 1D 00 00 */	cmpw r29, r0
/* 802ED7F8  41 80 FF D8 */	blt lbl_802ED7D0
/* 802ED7FC  3B 80 00 00 */	li r28, 0
lbl_802ED800:
/* 802ED800  38 1C 00 58 */	addi r0, r28, 0x58
/* 802ED804  7C 1F 00 AE */	lbzx r0, r31, r0
/* 802ED808  7F 83 E3 78 */	mr r3, r28
/* 802ED80C  54 04 D7 BE */	rlwinm r4, r0, 0x1a, 0x1e, 0x1f
/* 802ED810  54 05 E7 BE */	rlwinm r5, r0, 0x1c, 0x1e, 0x1f
/* 802ED814  54 06 F7 BE */	rlwinm r6, r0, 0x1e, 0x1e, 0x1f
/* 802ED818  54 07 07 BE */	clrlwi r7, r0, 0x1e
/* 802ED81C  48 07 1D 89 */	bl GXSetTevSwapModeTable
/* 802ED820  3B 9C 00 01 */	addi r28, r28, 1
/* 802ED824  2C 1C 00 04 */	cmpwi r28, 4
/* 802ED828  41 80 FF D8 */	blt lbl_802ED800
/* 802ED82C  3B 80 00 00 */	li r28, 0
/* 802ED830  48 00 00 1C */	b lbl_802ED84C
lbl_802ED834:
/* 802ED834  57 83 15 BA */	rlwinm r3, r28, 2, 0x16, 0x1d
/* 802ED838  38 63 00 5C */	addi r3, r3, 0x5c
/* 802ED83C  7C 7F 1A 14 */	add r3, r31, r3
/* 802ED840  7F 84 E3 78 */	mr r4, r28
/* 802ED844  4B FF C8 01 */	bl load__14J2DIndTevStageFUc
/* 802ED848  3B 9C 00 01 */	addi r28, r28, 1
lbl_802ED84C:
/* 802ED84C  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802ED850  88 1F 00 32 */	lbz r0, 0x32(r31)
/* 802ED854  7C 03 00 40 */	cmplw r3, r0
/* 802ED858  41 80 FF DC */	blt lbl_802ED834
/* 802ED85C  39 61 00 30 */	addi r11, r1, 0x30
/* 802ED860  48 07 49 C5 */	bl _restgpr_28
/* 802ED864  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802ED868  7C 08 03 A6 */	mtlr r0
/* 802ED86C  38 21 00 30 */	addi r1, r1, 0x30
/* 802ED870  4E 80 00 20 */	blr 
