lbl_802FFE88:
/* 802FFE88  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802FFE8C  7C 08 02 A6 */	mflr r0
/* 802FFE90  90 01 00 74 */	stw r0, 0x74(r1)
/* 802FFE94  39 61 00 70 */	addi r11, r1, 0x70
/* 802FFE98  48 06 23 39 */	bl _savegpr_26
/* 802FFE9C  7C 7C 1B 78 */	mr r28, r3
/* 802FFEA0  7C 9B 23 78 */	mr r27, r4
/* 802FFEA4  7C BD 2B 78 */	mr r29, r5
/* 802FFEA8  7C DA 33 78 */	mr r26, r6
/* 802FFEAC  7F A3 EB 78 */	mr r3, r29
/* 802FFEB0  81 9D 00 00 */	lwz r12, 0(r29)
/* 802FFEB4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802FFEB8  7D 89 03 A6 */	mtctr r12
/* 802FFEBC  4E 80 04 21 */	bctrl 
/* 802FFEC0  7C 7F 1B 78 */	mr r31, r3
/* 802FFEC4  7F A3 EB 78 */	mr r3, r29
/* 802FFEC8  38 81 00 30 */	addi r4, r1, 0x30
/* 802FFECC  38 A0 00 08 */	li r5, 8
/* 802FFED0  4B FD C3 C9 */	bl read__14JSUInputStreamFPvl
/* 802FFED4  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802FFED8  90 1C 00 08 */	stw r0, 8(r28)
/* 802FFEDC  7F 83 E3 78 */	mr r3, r28
/* 802FFEE0  7F 64 DB 78 */	mr r4, r27
/* 802FFEE4  7F A5 EB 78 */	mr r5, r29
/* 802FFEE8  4B FF 61 DD */	bl makePaneStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream
/* 802FFEEC  7F A3 EB 78 */	mr r3, r29
/* 802FFEF0  38 81 00 0A */	addi r4, r1, 0xa
/* 802FFEF4  38 A0 00 01 */	li r5, 1
/* 802FFEF8  4B FD C3 A1 */	bl read__14JSUInputStreamFPvl
/* 802FFEFC  8B C1 00 0A */	lbz r30, 0xa(r1)
/* 802FFF00  7F 83 E3 78 */	mr r3, r28
/* 802FFF04  7F A4 EB 78 */	mr r4, r29
/* 802FFF08  3C A0 46 4F */	lis r5, 0x464F /* 0x464F4E54@ha */
/* 802FFF0C  38 A5 4E 54 */	addi r5, r5, 0x4E54 /* 0x464F4E54@l */
/* 802FFF10  7F 46 D3 78 */	mr r6, r26
/* 802FFF14  4B FF 7E A5 */	bl getPointer__7J2DPaneFP20JSURandomInputStreamUlP10JKRArchive
/* 802FFF18  7C 7B 1B 79 */	or. r27, r3, r3
/* 802FFF1C  41 82 00 28 */	beq lbl_802FFF44
/* 802FFF20  38 60 00 70 */	li r3, 0x70
/* 802FFF24  4B FC ED 29 */	bl __nw__FUl
/* 802FFF28  7C 60 1B 79 */	or. r0, r3, r3
/* 802FFF2C  41 82 00 14 */	beq lbl_802FFF40
/* 802FFF30  7F 64 DB 78 */	mr r4, r27
/* 802FFF34  38 A0 00 00 */	li r5, 0
/* 802FFF38  4B FD F0 5D */	bl __ct__10JUTResFontFPC7ResFONTP7JKRHeap
/* 802FFF3C  7C 60 1B 78 */	mr r0, r3
lbl_802FFF40:
/* 802FFF40  90 1C 01 00 */	stw r0, 0x100(r28)
lbl_802FFF44:
/* 802FFF44  7F A3 EB 78 */	mr r3, r29
/* 802FFF48  38 81 00 24 */	addi r4, r1, 0x24
/* 802FFF4C  38 A0 00 04 */	li r5, 4
/* 802FFF50  4B FD C3 49 */	bl read__14JSUInputStreamFPvl
/* 802FFF54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FFF58  90 1C 01 04 */	stw r0, 0x104(r28)
/* 802FFF5C  7F A3 EB 78 */	mr r3, r29
/* 802FFF60  38 81 00 20 */	addi r4, r1, 0x20
/* 802FFF64  38 A0 00 04 */	li r5, 4
/* 802FFF68  4B FD C3 31 */	bl read__14JSUInputStreamFPvl
/* 802FFF6C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802FFF70  90 1C 01 08 */	stw r0, 0x108(r28)
/* 802FFF74  7F A3 EB 78 */	mr r3, r29
/* 802FFF78  38 81 00 09 */	addi r4, r1, 9
/* 802FFF7C  38 A0 00 01 */	li r5, 1
/* 802FFF80  4B FD C3 19 */	bl read__14JSUInputStreamFPvl
/* 802FFF84  88 01 00 09 */	lbz r0, 9(r1)
/* 802FFF88  98 1C 01 30 */	stb r0, 0x130(r28)
/* 802FFF8C  7F A3 EB 78 */	mr r3, r29
/* 802FFF90  38 81 00 14 */	addi r4, r1, 0x14
/* 802FFF94  38 A0 00 02 */	li r5, 2
/* 802FFF98  4B FD C3 01 */	bl read__14JSUInputStreamFPvl
/* 802FFF9C  A8 01 00 14 */	lha r0, 0x14(r1)
/* 802FFFA0  C8 22 C8 88 */	lfd f1, lit_1662(r2)
/* 802FFFA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FFFA8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802FFFAC  3C 00 43 30 */	lis r0, 0x4330
/* 802FFFB0  90 01 00 38 */	stw r0, 0x38(r1)
/* 802FFFB4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802FFFB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FFFBC  D0 1C 01 14 */	stfs f0, 0x114(r28)
/* 802FFFC0  7F A3 EB 78 */	mr r3, r29
/* 802FFFC4  38 81 00 12 */	addi r4, r1, 0x12
/* 802FFFC8  38 A0 00 02 */	li r5, 2
/* 802FFFCC  4B FD C2 CD */	bl read__14JSUInputStreamFPvl
/* 802FFFD0  A8 01 00 12 */	lha r0, 0x12(r1)
/* 802FFFD4  C8 22 C8 88 */	lfd f1, lit_1662(r2)
/* 802FFFD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FFFDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FFFE0  3C 00 43 30 */	lis r0, 0x4330
/* 802FFFE4  90 01 00 40 */	stw r0, 0x40(r1)
/* 802FFFE8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 802FFFEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FFFF0  D0 1C 01 18 */	stfs f0, 0x118(r28)
/* 802FFFF4  7F A3 EB 78 */	mr r3, r29
/* 802FFFF8  38 81 00 10 */	addi r4, r1, 0x10
/* 802FFFFC  38 A0 00 02 */	li r5, 2
/* 80300000  4B FD C2 99 */	bl read__14JSUInputStreamFPvl
/* 80300004  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80300008  C8 22 C8 90 */	lfd f1, lit_1665(r2)
/* 8030000C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80300010  3C 00 43 30 */	lis r0, 0x4330
/* 80300014  90 01 00 48 */	stw r0, 0x48(r1)
/* 80300018  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8030001C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80300020  D0 1C 01 1C */	stfs f0, 0x11c(r28)
/* 80300024  7F A3 EB 78 */	mr r3, r29
/* 80300028  38 81 00 0E */	addi r4, r1, 0xe
/* 8030002C  38 A0 00 02 */	li r5, 2
/* 80300030  4B FD C2 69 */	bl read__14JSUInputStreamFPvl
/* 80300034  A0 01 00 0E */	lhz r0, 0xe(r1)
/* 80300038  C8 22 C8 90 */	lfd f1, lit_1665(r2)
/* 8030003C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80300040  3C 00 43 30 */	lis r0, 0x4330
/* 80300044  90 01 00 50 */	stw r0, 0x50(r1)
/* 80300048  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8030004C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80300050  D0 1C 01 20 */	stfs f0, 0x120(r28)
/* 80300054  7F A3 EB 78 */	mr r3, r29
/* 80300058  38 81 00 0C */	addi r4, r1, 0xc
/* 8030005C  38 A0 00 02 */	li r5, 2
/* 80300060  4B FD C2 39 */	bl read__14JSUInputStreamFPvl
/* 80300064  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80300068  7C 1A 07 34 */	extsh r26, r0
/* 8030006C  3B 7A 00 01 */	addi r27, r26, 1
/* 80300070  7F 63 DB 78 */	mr r3, r27
/* 80300074  4B FC EC 51 */	bl __nwa__FUl
/* 80300078  90 7C 01 24 */	stw r3, 0x124(r28)
/* 8030007C  80 9C 01 24 */	lwz r4, 0x124(r28)
/* 80300080  28 04 00 00 */	cmplwi r4, 0
/* 80300084  41 82 00 24 */	beq lbl_803000A8
/* 80300088  7F A3 EB 78 */	mr r3, r29
/* 8030008C  7F 45 D3 78 */	mr r5, r26
/* 80300090  4B FD C2 09 */	bl read__14JSUInputStreamFPvl
/* 80300094  38 00 00 00 */	li r0, 0
/* 80300098  80 7C 01 24 */	lwz r3, 0x124(r28)
/* 8030009C  7C 03 D1 AE */	stbx r0, r3, r26
/* 803000A0  B3 7C 01 32 */	sth r27, 0x132(r28)
/* 803000A4  48 00 00 24 */	b lbl_803000C8
lbl_803000A8:
/* 803000A8  7F A3 EB 78 */	mr r3, r29
/* 803000AC  7F 44 D3 78 */	mr r4, r26
/* 803000B0  81 9D 00 00 */	lwz r12, 0(r29)
/* 803000B4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 803000B8  7D 89 03 A6 */	mtctr r12
/* 803000BC  4E 80 04 21 */	bctrl 
/* 803000C0  38 00 00 00 */	li r0, 0
/* 803000C4  B0 1C 01 32 */	sth r0, 0x132(r28)
lbl_803000C8:
/* 803000C8  3B DE FF F6 */	addi r30, r30, -10
/* 803000CC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 803000D0  41 82 00 3C */	beq lbl_8030010C
/* 803000D4  7F A3 EB 78 */	mr r3, r29
/* 803000D8  38 81 00 08 */	addi r4, r1, 8
/* 803000DC  38 A0 00 01 */	li r5, 1
/* 803000E0  4B FD C1 B9 */	bl read__14JSUInputStreamFPvl
/* 803000E4  88 01 00 08 */	lbz r0, 8(r1)
/* 803000E8  28 00 00 00 */	cmplwi r0, 0
/* 803000EC  41 82 00 1C */	beq lbl_80300108
/* 803000F0  7F 83 E3 78 */	mr r3, r28
/* 803000F4  38 80 00 01 */	li r4, 1
/* 803000F8  81 9C 00 00 */	lwz r12, 0(r28)
/* 803000FC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80300100  7D 89 03 A6 */	mtctr r12
/* 80300104  4E 80 04 21 */	bctrl 
lbl_80300108:
/* 80300108  3B DE FF FF */	addi r30, r30, -1
lbl_8030010C:
/* 8030010C  38 00 00 00 */	li r0, 0
/* 80300110  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80300114  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 80300118  98 1C 01 2C */	stb r0, 0x12c(r28)
/* 8030011C  88 01 00 2D */	lbz r0, 0x2d(r1)
/* 80300120  98 1C 01 2D */	stb r0, 0x12d(r28)
/* 80300124  88 01 00 2E */	lbz r0, 0x2e(r1)
/* 80300128  98 1C 01 2E */	stb r0, 0x12e(r28)
/* 8030012C  88 01 00 2F */	lbz r0, 0x2f(r1)
/* 80300130  98 1C 01 2F */	stb r0, 0x12f(r28)
/* 80300134  38 00 FF FF */	li r0, -1
/* 80300138  90 01 00 28 */	stw r0, 0x28(r1)
/* 8030013C  88 01 00 28 */	lbz r0, 0x28(r1)
/* 80300140  98 1C 01 28 */	stb r0, 0x128(r28)
/* 80300144  88 01 00 29 */	lbz r0, 0x29(r1)
/* 80300148  98 1C 01 29 */	stb r0, 0x129(r28)
/* 8030014C  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 80300150  98 1C 01 2A */	stb r0, 0x12a(r28)
/* 80300154  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 80300158  98 1C 01 2B */	stb r0, 0x12b(r28)
/* 8030015C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80300160  41 82 00 20 */	beq lbl_80300180
/* 80300164  7F A3 EB 78 */	mr r3, r29
/* 80300168  38 81 00 1C */	addi r4, r1, 0x1c
/* 8030016C  38 A0 00 04 */	li r5, 4
/* 80300170  4B FD C1 29 */	bl read__14JSUInputStreamFPvl
/* 80300174  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80300178  90 1C 01 2C */	stw r0, 0x12c(r28)
/* 8030017C  3B DE FF FF */	addi r30, r30, -1
lbl_80300180:
/* 80300180  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80300184  41 82 00 1C */	beq lbl_803001A0
/* 80300188  7F A3 EB 78 */	mr r3, r29
/* 8030018C  38 81 00 18 */	addi r4, r1, 0x18
/* 80300190  38 A0 00 04 */	li r5, 4
/* 80300194  4B FD C1 05 */	bl read__14JSUInputStreamFPvl
/* 80300198  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8030019C  90 1C 01 28 */	stw r0, 0x128(r28)
lbl_803001A0:
/* 803001A0  C0 02 C8 80 */	lfs f0, lit_1660(r2)
/* 803001A4  D0 1C 01 0C */	stfs f0, 0x10c(r28)
/* 803001A8  D0 1C 01 10 */	stfs f0, 0x110(r28)
/* 803001AC  7F A3 EB 78 */	mr r3, r29
/* 803001B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803001B4  7C 9F 02 14 */	add r4, r31, r0
/* 803001B8  38 A0 00 00 */	li r5, 0
/* 803001BC  4B FD C3 21 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 803001C0  38 00 00 01 */	li r0, 1
/* 803001C4  98 1C 01 31 */	stb r0, 0x131(r28)
/* 803001C8  39 61 00 70 */	addi r11, r1, 0x70
/* 803001CC  48 06 20 51 */	bl _restgpr_26
/* 803001D0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803001D4  7C 08 03 A6 */	mtlr r0
/* 803001D8  38 21 00 70 */	addi r1, r1, 0x70
/* 803001DC  4E 80 00 20 */	blr 
