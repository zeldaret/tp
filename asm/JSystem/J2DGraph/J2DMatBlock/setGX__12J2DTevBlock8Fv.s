lbl_802EFEAC:
/* 802EFEAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EFEB0  7C 08 02 A6 */	mflr r0
/* 802EFEB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802EFEB8  39 61 00 30 */	addi r11, r1, 0x30
/* 802EFEBC  48 07 23 1D */	bl _savegpr_28
/* 802EFEC0  7C 7F 1B 78 */	mr r31, r3
/* 802EFEC4  3B 80 00 00 */	li r28, 0
lbl_802EFEC8:
/* 802EFEC8  7F E3 FB 78 */	mr r3, r31
/* 802EFECC  7F 84 E3 78 */	mr r4, r28
/* 802EFED0  7F 85 E3 78 */	mr r5, r28
/* 802EFED4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EFED8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802EFEDC  7D 89 03 A6 */	mtctr r12
/* 802EFEE0  4E 80 04 21 */	bctrl 
/* 802EFEE4  3B 9C 00 01 */	addi r28, r28, 1
/* 802EFEE8  2C 1C 00 08 */	cmpwi r28, 8
/* 802EFEEC  41 80 FF DC */	blt lbl_802EFEC8
/* 802EFEF0  3B A0 00 00 */	li r29, 0
/* 802EFEF4  3B 80 00 00 */	li r28, 0
/* 802EFEF8  48 00 00 24 */	b lbl_802EFF1C
lbl_802EFEFC:
/* 802EFEFC  7C DF E2 14 */	add r6, r31, r28
/* 802EFF00  7F A3 EB 78 */	mr r3, r29
/* 802EFF04  88 86 00 16 */	lbz r4, 0x16(r6)
/* 802EFF08  88 A6 00 17 */	lbz r5, 0x17(r6)
/* 802EFF0C  88 C6 00 18 */	lbz r6, 0x18(r6)
/* 802EFF10  48 06 F7 E5 */	bl GXSetTevOrder
/* 802EFF14  3B BD 00 01 */	addi r29, r29, 1
/* 802EFF18  3B 9C 00 04 */	addi r28, r28, 4
lbl_802EFF1C:
/* 802EFF1C  88 1F 00 56 */	lbz r0, 0x56(r31)
/* 802EFF20  7C 1D 00 00 */	cmpw r29, r0
/* 802EFF24  41 80 FF D8 */	blt lbl_802EFEFC
/* 802EFF28  3B C0 00 00 */	li r30, 0
/* 802EFF2C  3B 80 00 00 */	li r28, 0
/* 802EFF30  3B A1 00 0C */	addi r29, r1, 0xc
lbl_802EFF34:
/* 802EFF34  38 1C 00 36 */	addi r0, r28, 0x36
/* 802EFF38  7C 9F 02 14 */	add r4, r31, r0
/* 802EFF3C  80 64 00 00 */	lwz r3, 0(r4)
/* 802EFF40  80 04 00 04 */	lwz r0, 4(r4)
/* 802EFF44  90 61 00 0C */	stw r3, 0xc(r1)
/* 802EFF48  90 01 00 10 */	stw r0, 0x10(r1)
/* 802EFF4C  2C 1E 00 03 */	cmpwi r30, 3
/* 802EFF50  38 60 00 00 */	li r3, 0
/* 802EFF54  41 82 00 08 */	beq lbl_802EFF5C
/* 802EFF58  38 7E 00 01 */	addi r3, r30, 1
lbl_802EFF5C:
/* 802EFF5C  7F A4 EB 78 */	mr r4, r29
/* 802EFF60  48 06 F4 7D */	bl GXSetTevColorS10
/* 802EFF64  3B DE 00 01 */	addi r30, r30, 1
/* 802EFF68  2C 1E 00 04 */	cmpwi r30, 4
/* 802EFF6C  3B 9C 00 08 */	addi r28, r28, 8
/* 802EFF70  41 80 FF C4 */	blt lbl_802EFF34
/* 802EFF74  88 7F 00 56 */	lbz r3, 0x56(r31)
/* 802EFF78  48 06 F9 19 */	bl GXSetNumTevStages
/* 802EFF7C  3B C0 00 00 */	li r30, 0
/* 802EFF80  3B 80 00 00 */	li r28, 0
/* 802EFF84  48 00 01 2C */	b lbl_802F00B0
lbl_802EFF88:
/* 802EFF88  7F BF E2 14 */	add r29, r31, r28
/* 802EFF8C  88 1D 00 5A */	lbz r0, 0x5a(r29)
/* 802EFF90  88 BD 00 59 */	lbz r5, 0x59(r29)
/* 802EFF94  7F C3 F3 78 */	mr r3, r30
/* 802EFF98  54 A4 E7 3E */	rlwinm r4, r5, 0x1c, 0x1c, 0x1f
/* 802EFF9C  54 A5 07 3E */	clrlwi r5, r5, 0x1c
/* 802EFFA0  54 06 E7 3E */	rlwinm r6, r0, 0x1c, 0x1c, 0x1f
/* 802EFFA4  54 07 07 3E */	clrlwi r7, r0, 0x1c
/* 802EFFA8  48 06 F2 7D */	bl GXSetTevColorIn
/* 802EFFAC  88 FD 00 5E */	lbz r7, 0x5e(r29)
/* 802EFFB0  88 DD 00 5D */	lbz r6, 0x5d(r29)
/* 802EFFB4  7F C3 F3 78 */	mr r3, r30
/* 802EFFB8  54 C0 06 34 */	rlwinm r0, r6, 0, 0x18, 0x1a
/* 802EFFBC  7C 00 2E 70 */	srawi r0, r0, 5
/* 802EFFC0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EFFC4  54 C5 F7 7E */	rlwinm r5, r6, 0x1e, 0x1d, 0x1f
/* 802EFFC8  54 E0 CF FE */	rlwinm r0, r7, 0x19, 0x1f, 0x1f
/* 802EFFCC  50 C0 0F 7C */	rlwimi r0, r6, 1, 0x1d, 0x1e
/* 802EFFD0  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802EFFD4  54 E7 E7 7E */	rlwinm r7, r7, 0x1c, 0x1d, 0x1f
/* 802EFFD8  48 06 F2 91 */	bl GXSetTevAlphaIn
/* 802EFFDC  88 9D 00 58 */	lbz r4, 0x58(r29)
/* 802EFFE0  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 802EFFE4  54 80 06 B6 */	rlwinm r0, r4, 0, 0x1a, 0x1b
/* 802EFFE8  7C 00 26 70 */	srawi r0, r0, 4
/* 802EFFEC  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802EFFF0  54 87 EF FE */	rlwinm r7, r4, 0x1d, 0x1f, 0x1f
/* 802EFFF4  54 88 D7 BE */	rlwinm r8, r4, 0x1a, 0x1e, 0x1f
/* 802EFFF8  7F C3 F3 78 */	mr r3, r30
/* 802EFFFC  28 05 00 03 */	cmplwi r5, 3
/* 802F0000  54 89 F7 FE */	rlwinm r9, r4, 0x1e, 0x1f, 0x1f
/* 802F0004  54 80 EF 7C */	rlwinm r0, r4, 0x1d, 0x1d, 0x1e
/* 802F0008  7C 89 02 14 */	add r4, r9, r0
/* 802F000C  38 04 00 08 */	addi r0, r4, 8
/* 802F0010  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802F0014  41 82 00 08 */	beq lbl_802F001C
/* 802F0018  7D 20 4B 78 */	mr r0, r9
lbl_802F001C:
/* 802F001C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802F0020  48 06 F2 8D */	bl GXSetTevColorOp
/* 802F0024  88 9D 00 5C */	lbz r4, 0x5c(r29)
/* 802F0028  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 802F002C  54 80 06 B6 */	rlwinm r0, r4, 0, 0x1a, 0x1b
/* 802F0030  7C 00 26 70 */	srawi r0, r0, 4
/* 802F0034  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802F0038  54 87 EF FE */	rlwinm r7, r4, 0x1d, 0x1f, 0x1f
/* 802F003C  54 88 D7 BE */	rlwinm r8, r4, 0x1a, 0x1e, 0x1f
/* 802F0040  7F C3 F3 78 */	mr r3, r30
/* 802F0044  28 05 00 03 */	cmplwi r5, 3
/* 802F0048  54 89 F7 FE */	rlwinm r9, r4, 0x1e, 0x1f, 0x1f
/* 802F004C  54 80 EF 7C */	rlwinm r0, r4, 0x1d, 0x1d, 0x1e
/* 802F0050  7C 89 02 14 */	add r4, r9, r0
/* 802F0054  38 04 00 08 */	addi r0, r4, 8
/* 802F0058  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802F005C  41 82 00 08 */	beq lbl_802F0064
/* 802F0060  7D 20 4B 78 */	mr r0, r9
lbl_802F0064:
/* 802F0064  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802F0068  48 06 F2 AD */	bl GXSetTevAlphaOp
/* 802F006C  7F BF F2 14 */	add r29, r31, r30
/* 802F0070  88 1D 00 A8 */	lbz r0, 0xa8(r29)
/* 802F0074  28 00 00 FF */	cmplwi r0, 0xff
/* 802F0078  38 80 00 00 */	li r4, 0
/* 802F007C  41 82 00 08 */	beq lbl_802F0084
/* 802F0080  7C 04 03 78 */	mr r4, r0
lbl_802F0084:
/* 802F0084  7F C3 F3 78 */	mr r3, r30
/* 802F0088  48 06 F4 1D */	bl GXSetTevKColorSel
/* 802F008C  88 1D 00 B0 */	lbz r0, 0xb0(r29)
/* 802F0090  28 00 00 FF */	cmplwi r0, 0xff
/* 802F0094  38 80 00 00 */	li r4, 0
/* 802F0098  41 82 00 08 */	beq lbl_802F00A0
/* 802F009C  7C 04 03 78 */	mr r4, r0
lbl_802F00A0:
/* 802F00A0  7F C3 F3 78 */	mr r3, r30
/* 802F00A4  48 06 F4 5D */	bl GXSetTevKAlphaSel
/* 802F00A8  3B DE 00 01 */	addi r30, r30, 1
/* 802F00AC  3B 9C 00 08 */	addi r28, r28, 8
lbl_802F00B0:
/* 802F00B0  88 1F 00 56 */	lbz r0, 0x56(r31)
/* 802F00B4  7C 1E 00 00 */	cmpw r30, r0
/* 802F00B8  41 80 FE D0 */	blt lbl_802EFF88
/* 802F00BC  3B A0 00 00 */	li r29, 0
/* 802F00C0  3B 80 00 00 */	li r28, 0
lbl_802F00C4:
/* 802F00C4  38 1C 00 98 */	addi r0, r28, 0x98
/* 802F00C8  7C 1F 00 2E */	lwzx r0, r31, r0
/* 802F00CC  90 01 00 08 */	stw r0, 8(r1)
/* 802F00D0  7F A3 EB 78 */	mr r3, r29
/* 802F00D4  38 81 00 08 */	addi r4, r1, 8
/* 802F00D8  48 06 F3 69 */	bl GXSetTevKColor
/* 802F00DC  3B BD 00 01 */	addi r29, r29, 1
/* 802F00E0  2C 1D 00 04 */	cmpwi r29, 4
/* 802F00E4  3B 9C 00 04 */	addi r28, r28, 4
/* 802F00E8  41 80 FF DC */	blt lbl_802F00C4
/* 802F00EC  3B A0 00 00 */	li r29, 0
/* 802F00F0  3B 80 00 00 */	li r28, 0
/* 802F00F4  48 00 00 24 */	b lbl_802F0118
lbl_802F00F8:
/* 802F00F8  38 1C 00 5E */	addi r0, r28, 0x5e
/* 802F00FC  7C 1F 00 AE */	lbzx r0, r31, r0
/* 802F0100  7F A3 EB 78 */	mr r3, r29
/* 802F0104  54 04 07 BE */	clrlwi r4, r0, 0x1e
/* 802F0108  54 05 F7 BE */	rlwinm r5, r0, 0x1e, 0x1e, 0x1f
/* 802F010C  48 06 F4 51 */	bl GXSetTevSwapMode
/* 802F0110  3B BD 00 01 */	addi r29, r29, 1
/* 802F0114  3B 9C 00 08 */	addi r28, r28, 8
lbl_802F0118:
/* 802F0118  88 1F 00 56 */	lbz r0, 0x56(r31)
/* 802F011C  7C 1D 00 00 */	cmpw r29, r0
/* 802F0120  41 80 FF D8 */	blt lbl_802F00F8
/* 802F0124  3B 80 00 00 */	li r28, 0
lbl_802F0128:
/* 802F0128  38 1C 00 B8 */	addi r0, r28, 0xb8
/* 802F012C  7C 1F 00 AE */	lbzx r0, r31, r0
/* 802F0130  7F 83 E3 78 */	mr r3, r28
/* 802F0134  54 04 D7 BE */	rlwinm r4, r0, 0x1a, 0x1e, 0x1f
/* 802F0138  54 05 E7 BE */	rlwinm r5, r0, 0x1c, 0x1e, 0x1f
/* 802F013C  54 06 F7 BE */	rlwinm r6, r0, 0x1e, 0x1e, 0x1f
/* 802F0140  54 07 07 BE */	clrlwi r7, r0, 0x1e
/* 802F0144  48 06 F4 61 */	bl GXSetTevSwapModeTable
/* 802F0148  3B 9C 00 01 */	addi r28, r28, 1
/* 802F014C  2C 1C 00 04 */	cmpwi r28, 4
/* 802F0150  41 80 FF D8 */	blt lbl_802F0128
/* 802F0154  3B 80 00 00 */	li r28, 0
/* 802F0158  48 00 00 1C */	b lbl_802F0174
lbl_802F015C:
/* 802F015C  57 83 15 BA */	rlwinm r3, r28, 2, 0x16, 0x1d
/* 802F0160  38 63 00 BC */	addi r3, r3, 0xbc
/* 802F0164  7C 7F 1A 14 */	add r3, r31, r3
/* 802F0168  7F 84 E3 78 */	mr r4, r28
/* 802F016C  4B FF 9E D9 */	bl load__14J2DIndTevStageFUc
/* 802F0170  3B 9C 00 01 */	addi r28, r28, 1
lbl_802F0174:
/* 802F0174  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802F0178  88 1F 00 56 */	lbz r0, 0x56(r31)
/* 802F017C  7C 03 00 40 */	cmplw r3, r0
/* 802F0180  41 80 FF DC */	blt lbl_802F015C
/* 802F0184  39 61 00 30 */	addi r11, r1, 0x30
/* 802F0188  48 07 20 9D */	bl _restgpr_28
/* 802F018C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F0190  7C 08 03 A6 */	mtlr r0
/* 802F0194  38 21 00 30 */	addi r1, r1, 0x30
/* 802F0198  4E 80 00 20 */	blr 
