lbl_8031BA04:
/* 8031BA04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8031BA08  7C 08 02 A6 */	mflr r0
/* 8031BA0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8031BA10  39 61 00 40 */	addi r11, r1, 0x40
/* 8031BA14  48 04 67 B9 */	bl _savegpr_25
/* 8031BA18  7C 7F 1B 78 */	mr r31, r3
/* 8031BA1C  8B 83 00 58 */	lbz r28, 0x58(r3)
/* 8031BA20  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031BA24  80 64 00 00 */	lwz r3, 0(r4)
/* 8031BA28  80 04 00 08 */	lwz r0, 8(r4)
/* 8031BA2C  7C 03 00 50 */	subf r0, r3, r0
/* 8031BA30  90 1F 00 04 */	stw r0, 4(r31)
/* 8031BA34  3B 20 00 00 */	li r25, 0
/* 8031BA38  3B 40 00 00 */	li r26, 0
lbl_8031BA3C:
/* 8031BA3C  38 9A 00 08 */	addi r4, r26, 8
/* 8031BA40  7C 9F 22 14 */	add r4, r31, r4
/* 8031BA44  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031BA48  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031BA4C  41 82 00 0C */	beq lbl_8031BA58
/* 8031BA50  7F 23 CB 78 */	mr r3, r25
/* 8031BA54  48 00 85 41 */	bl loadTexNo__FUlRCUs
lbl_8031BA58:
/* 8031BA58  3B 39 00 01 */	addi r25, r25, 1
/* 8031BA5C  28 19 00 08 */	cmplwi r25, 8
/* 8031BA60  3B 5A 00 02 */	addi r26, r26, 2
/* 8031BA64  41 80 FF D8 */	blt lbl_8031BA3C
/* 8031BA68  3B 60 00 00 */	li r27, 0
/* 8031BA6C  3B 40 00 00 */	li r26, 0
/* 8031BA70  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha
/* 8031BA74  3B C3 4C 2C */	addi r30, r3, sTexCoordScaleTable__6J3DSys@l
/* 8031BA78  48 00 00 CC */	b lbl_8031BB44
lbl_8031BA7C:
/* 8031BA7C  38 1B 00 01 */	addi r0, r27, 1
/* 8031BA80  54 00 10 3A */	slwi r0, r0, 2
/* 8031BA84  7F BF 02 14 */	add r29, r31, r0
/* 8031BA88  7F 3F D2 14 */	add r25, r31, r26
/* 8031BA8C  7F 63 DB 78 */	mr r3, r27
/* 8031BA90  88 99 00 18 */	lbz r4, 0x18(r25)
/* 8031BA94  88 B9 00 19 */	lbz r5, 0x19(r25)
/* 8031BA98  88 D9 00 1A */	lbz r6, 0x1a(r25)
/* 8031BA9C  88 FD 00 18 */	lbz r7, 0x18(r29)
/* 8031BAA0  89 1D 00 19 */	lbz r8, 0x19(r29)
/* 8031BAA4  89 3D 00 1A */	lbz r9, 0x1a(r29)
/* 8031BAA8  4B FF 36 61 */	bl J3DGDSetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8031BAAC  88 19 00 19 */	lbz r0, 0x19(r25)
/* 8031BAB0  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031BAB4  7D 1E 02 14 */	add r8, r30, r0
/* 8031BAB8  88 19 00 18 */	lbz r0, 0x18(r25)
/* 8031BABC  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031BAC0  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031BAC4  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031BAC8  20 00 00 01 */	subfic r0, r0, 1
/* 8031BACC  7C 00 00 34 */	cntlzw r0, r0
/* 8031BAD0  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031BAD4  38 C0 00 00 */	li r6, 0
/* 8031BAD8  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031BADC  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031BAE0  20 00 00 01 */	subfic r0, r0, 1
/* 8031BAE4  7C 00 00 34 */	cntlzw r0, r0
/* 8031BAE8  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031BAEC  39 20 00 00 */	li r9, 0
/* 8031BAF0  4B FF 27 45 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031BAF4  88 1D 00 19 */	lbz r0, 0x19(r29)
/* 8031BAF8  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031BAFC  7D 1E 02 14 */	add r8, r30, r0
/* 8031BB00  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 8031BB04  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031BB08  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031BB0C  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031BB10  20 00 00 01 */	subfic r0, r0, 1
/* 8031BB14  7C 00 00 34 */	cntlzw r0, r0
/* 8031BB18  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031BB1C  38 C0 00 00 */	li r6, 0
/* 8031BB20  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031BB24  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031BB28  20 00 00 01 */	subfic r0, r0, 1
/* 8031BB2C  7C 00 00 34 */	cntlzw r0, r0
/* 8031BB30  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031BB34  39 20 00 00 */	li r9, 0
/* 8031BB38  4B FF 26 FD */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031BB3C  3B 7B 00 02 */	addi r27, r27, 2
/* 8031BB40  3B 5A 00 08 */	addi r26, r26, 8
lbl_8031BB44:
/* 8031BB44  7C 1B E0 40 */	cmplw r27, r28
/* 8031BB48  41 80 FF 34 */	blt lbl_8031BA7C
/* 8031BB4C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031BB50  80 64 00 00 */	lwz r3, 0(r4)
/* 8031BB54  80 04 00 08 */	lwz r0, 8(r4)
/* 8031BB58  7C 03 00 50 */	subf r0, r3, r0
/* 8031BB5C  90 1F 01 70 */	stw r0, 0x170(r31)
/* 8031BB60  3B 20 00 00 */	li r25, 0
/* 8031BB64  3B 60 00 00 */	li r27, 0
lbl_8031BB68:
/* 8031BB68  38 1B 00 DA */	addi r0, r27, 0xda
/* 8031BB6C  7C 9F 02 14 */	add r4, r31, r0
/* 8031BB70  80 64 00 00 */	lwz r3, 0(r4)
/* 8031BB74  80 04 00 04 */	lwz r0, 4(r4)
/* 8031BB78  90 61 00 0C */	stw r3, 0xc(r1)
/* 8031BB7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031BB80  38 79 00 01 */	addi r3, r25, 1
/* 8031BB84  38 81 00 0C */	addi r4, r1, 0xc
/* 8031BB88  4B FF 38 75 */	bl J3DGDSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8031BB8C  3B 39 00 01 */	addi r25, r25, 1
/* 8031BB90  28 19 00 03 */	cmplwi r25, 3
/* 8031BB94  3B 7B 00 08 */	addi r27, r27, 8
/* 8031BB98  41 80 FF D0 */	blt lbl_8031BB68
/* 8031BB9C  3B 20 00 00 */	li r25, 0
/* 8031BBA0  3B 60 00 00 */	li r27, 0
lbl_8031BBA4:
/* 8031BBA4  38 1B 00 FA */	addi r0, r27, 0xfa
/* 8031BBA8  7C 1F 00 2E */	lwzx r0, r31, r0
/* 8031BBAC  90 01 00 08 */	stw r0, 8(r1)
/* 8031BBB0  7F 23 CB 78 */	mr r3, r25
/* 8031BBB4  38 81 00 08 */	addi r4, r1, 8
/* 8031BBB8  4B FF 36 DD */	bl J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
/* 8031BBBC  3B 39 00 01 */	addi r25, r25, 1
/* 8031BBC0  28 19 00 04 */	cmplwi r25, 4
/* 8031BBC4  3B 7B 00 04 */	addi r27, r27, 4
/* 8031BBC8  41 80 FF DC */	blt lbl_8031BBA4
/* 8031BBCC  38 60 00 00 */	li r3, 0
/* 8031BBD0  38 80 00 00 */	li r4, 0
/* 8031BBD4  38 A0 00 00 */	li r5, 0
/* 8031BBD8  7F 89 03 A6 */	mtctr r28
/* 8031BBDC  28 1C 00 00 */	cmplwi r28, 0
/* 8031BBE0  40 81 01 8C */	ble lbl_8031BD6C
lbl_8031BBE4:
/* 8031BBE4  39 65 00 59 */	addi r11, r5, 0x59
/* 8031BBE8  7D 7F 5A 14 */	add r11, r31, r11
/* 8031BBEC  81 4B 00 00 */	lwz r10, 0(r11)
/* 8031BBF0  38 00 00 61 */	li r0, 0x61
/* 8031BBF4  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031BBF8  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031BBFC  38 C7 00 01 */	addi r6, r7, 1
/* 8031BC00  90 C8 00 08 */	stw r6, 8(r8)
/* 8031BC04  98 07 00 00 */	stb r0, 0(r7)
/* 8031BC08  55 49 46 3E */	srwi r9, r10, 0x18
/* 8031BC0C  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031BC10  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031BC14  38 C7 00 01 */	addi r6, r7, 1
/* 8031BC18  90 C8 00 08 */	stw r6, 8(r8)
/* 8031BC1C  99 27 00 00 */	stb r9, 0(r7)
/* 8031BC20  55 49 86 3E */	rlwinm r9, r10, 0x10, 0x18, 0x1f
/* 8031BC24  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031BC28  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031BC2C  38 C7 00 01 */	addi r6, r7, 1
/* 8031BC30  90 C8 00 08 */	stw r6, 8(r8)
/* 8031BC34  99 27 00 00 */	stb r9, 0(r7)
/* 8031BC38  55 49 C6 3E */	rlwinm r9, r10, 0x18, 0x18, 0x1f
/* 8031BC3C  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031BC40  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031BC44  38 C7 00 01 */	addi r6, r7, 1
/* 8031BC48  90 C8 00 08 */	stw r6, 8(r8)
/* 8031BC4C  99 27 00 00 */	stb r9, 0(r7)
/* 8031BC50  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031BC54  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031BC58  38 C7 00 01 */	addi r6, r7, 1
/* 8031BC5C  90 C8 00 08 */	stw r6, 8(r8)
/* 8031BC60  99 47 00 00 */	stb r10, 0(r7)
/* 8031BC64  81 4B 00 04 */	lwz r10, 4(r11)
/* 8031BC68  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031BC6C  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031BC70  38 C7 00 01 */	addi r6, r7, 1
/* 8031BC74  90 C8 00 08 */	stw r6, 8(r8)
/* 8031BC78  98 07 00 00 */	stb r0, 0(r7)
/* 8031BC7C  55 49 46 3E */	srwi r9, r10, 0x18
/* 8031BC80  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031BC84  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031BC88  38 C7 00 01 */	addi r6, r7, 1
/* 8031BC8C  90 C8 00 08 */	stw r6, 8(r8)
/* 8031BC90  99 27 00 00 */	stb r9, 0(r7)
/* 8031BC94  55 49 86 3E */	rlwinm r9, r10, 0x10, 0x18, 0x1f
/* 8031BC98  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031BC9C  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031BCA0  38 C7 00 01 */	addi r6, r7, 1
/* 8031BCA4  90 C8 00 08 */	stw r6, 8(r8)
/* 8031BCA8  99 27 00 00 */	stb r9, 0(r7)
/* 8031BCAC  55 49 C6 3E */	rlwinm r9, r10, 0x18, 0x18, 0x1f
/* 8031BCB0  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031BCB4  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031BCB8  38 C7 00 01 */	addi r6, r7, 1
/* 8031BCBC  90 C8 00 08 */	stw r6, 8(r8)
/* 8031BCC0  99 27 00 00 */	stb r9, 0(r7)
/* 8031BCC4  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031BCC8  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031BCCC  38 C7 00 01 */	addi r6, r7, 1
/* 8031BCD0  90 C8 00 08 */	stw r6, 8(r8)
/* 8031BCD4  99 47 00 00 */	stb r10, 0(r7)
/* 8031BCD8  38 C4 01 30 */	addi r6, r4, 0x130
/* 8031BCDC  7C FF 30 2E */	lwzx r7, r31, r6
/* 8031BCE0  38 C3 00 10 */	addi r6, r3, 0x10
/* 8031BCE4  54 C6 C0 0E */	slwi r6, r6, 0x18
/* 8031BCE8  7C E9 33 78 */	or r9, r7, r6
/* 8031BCEC  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031BCF0  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031BCF4  38 C7 00 01 */	addi r6, r7, 1
/* 8031BCF8  90 C8 00 08 */	stw r6, 8(r8)
/* 8031BCFC  98 07 00 00 */	stb r0, 0(r7)
/* 8031BD00  55 28 46 3E */	srwi r8, r9, 0x18
/* 8031BD04  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031BD08  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031BD0C  38 06 00 01 */	addi r0, r6, 1
/* 8031BD10  90 07 00 08 */	stw r0, 8(r7)
/* 8031BD14  99 06 00 00 */	stb r8, 0(r6)
/* 8031BD18  55 28 86 3E */	rlwinm r8, r9, 0x10, 0x18, 0x1f
/* 8031BD1C  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031BD20  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031BD24  38 06 00 01 */	addi r0, r6, 1
/* 8031BD28  90 07 00 08 */	stw r0, 8(r7)
/* 8031BD2C  99 06 00 00 */	stb r8, 0(r6)
/* 8031BD30  55 28 C6 3E */	rlwinm r8, r9, 0x18, 0x18, 0x1f
/* 8031BD34  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031BD38  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031BD3C  38 06 00 01 */	addi r0, r6, 1
/* 8031BD40  90 07 00 08 */	stw r0, 8(r7)
/* 8031BD44  99 06 00 00 */	stb r8, 0(r6)
/* 8031BD48  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031BD4C  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031BD50  38 06 00 01 */	addi r0, r6, 1
/* 8031BD54  90 07 00 08 */	stw r0, 8(r7)
/* 8031BD58  99 26 00 00 */	stb r9, 0(r6)
/* 8031BD5C  38 63 00 01 */	addi r3, r3, 1
/* 8031BD60  38 84 00 04 */	addi r4, r4, 4
/* 8031BD64  38 A5 00 08 */	addi r5, r5, 8
/* 8031BD68  42 00 FE 7C */	bdnz lbl_8031BBE4
lbl_8031BD6C:
/* 8031BD6C  38 C0 00 00 */	li r6, 0
/* 8031BD70  3C 60 80 43 */	lis r3, j3dTevSwapTableTable@ha
/* 8031BD74  38 63 6A 60 */	addi r3, r3, j3dTevSwapTableTable@l
/* 8031BD78  38 00 00 04 */	li r0, 4
/* 8031BD7C  7C 09 03 A6 */	mtctr r0
lbl_8031BD80:
/* 8031BD80  54 C4 F0 BE */	srwi r4, r6, 2
/* 8031BD84  38 A4 01 2A */	addi r5, r4, 0x12a
/* 8031BD88  7C 1F 28 AE */	lbzx r0, r31, r5
/* 8031BD8C  54 00 10 3A */	slwi r0, r0, 2
/* 8031BD90  7C 83 02 14 */	add r4, r3, r0
/* 8031BD94  8B A4 00 01 */	lbz r29, 1(r4)
/* 8031BD98  8B 84 00 00 */	lbz r28, 0(r4)
/* 8031BD9C  7C 9F 32 14 */	add r4, r31, r6
/* 8031BDA0  89 64 01 1B */	lbz r11, 0x11b(r4)
/* 8031BDA4  89 44 01 0B */	lbz r10, 0x10b(r4)
/* 8031BDA8  8B 64 01 1A */	lbz r27, 0x11a(r4)
/* 8031BDAC  8B 44 01 0A */	lbz r26, 0x10a(r4)
/* 8031BDB0  38 00 00 61 */	li r0, 0x61
/* 8031BDB4  81 2D 94 00 */	lwz r9, __GDCurrentDL(r13)
/* 8031BDB8  81 09 00 08 */	lwz r8, 8(r9)
/* 8031BDBC  38 E8 00 01 */	addi r7, r8, 1
/* 8031BDC0  90 E9 00 08 */	stw r7, 8(r9)
/* 8031BDC4  98 08 00 00 */	stb r0, 0(r8)
/* 8031BDC8  7C C7 0E 70 */	srawi r7, r6, 1
/* 8031BDCC  7C E7 01 94 */	addze r7, r7
/* 8031BDD0  39 87 00 F6 */	addi r12, r7, 0xf6
/* 8031BDD4  55 6B 98 18 */	slwi r11, r11, 0x13
/* 8031BDD8  55 4A 70 22 */	slwi r10, r10, 0xe
/* 8031BDDC  57 69 48 2C */	slwi r9, r27, 9
/* 8031BDE0  57 48 20 36 */	slwi r8, r26, 4
/* 8031BDE4  57 A7 10 3A */	slwi r7, r29, 2
/* 8031BDE8  7F 87 3B 78 */	or r7, r28, r7
/* 8031BDEC  7D 07 3B 78 */	or r7, r8, r7
/* 8031BDF0  7D 27 3B 78 */	or r7, r9, r7
/* 8031BDF4  7D 47 3B 78 */	or r7, r10, r7
/* 8031BDF8  7D 6B 3B 78 */	or r11, r11, r7
/* 8031BDFC  51 8B C0 0E */	rlwimi r11, r12, 0x18, 0, 7
/* 8031BE00  55 6A 46 3E */	srwi r10, r11, 0x18
/* 8031BE04  81 2D 94 00 */	lwz r9, __GDCurrentDL(r13)
/* 8031BE08  81 09 00 08 */	lwz r8, 8(r9)
/* 8031BE0C  38 E8 00 01 */	addi r7, r8, 1
/* 8031BE10  90 E9 00 08 */	stw r7, 8(r9)
/* 8031BE14  99 48 00 00 */	stb r10, 0(r8)
/* 8031BE18  55 6A 86 3E */	rlwinm r10, r11, 0x10, 0x18, 0x1f
/* 8031BE1C  81 2D 94 00 */	lwz r9, __GDCurrentDL(r13)
/* 8031BE20  81 09 00 08 */	lwz r8, 8(r9)
/* 8031BE24  38 E8 00 01 */	addi r7, r8, 1
/* 8031BE28  90 E9 00 08 */	stw r7, 8(r9)
/* 8031BE2C  99 48 00 00 */	stb r10, 0(r8)
/* 8031BE30  55 6A C6 3E */	rlwinm r10, r11, 0x18, 0x18, 0x1f
/* 8031BE34  81 2D 94 00 */	lwz r9, __GDCurrentDL(r13)
/* 8031BE38  81 09 00 08 */	lwz r8, 8(r9)
/* 8031BE3C  38 E8 00 01 */	addi r7, r8, 1
/* 8031BE40  90 E9 00 08 */	stw r7, 8(r9)
/* 8031BE44  99 48 00 00 */	stb r10, 0(r8)
/* 8031BE48  81 2D 94 00 */	lwz r9, __GDCurrentDL(r13)
/* 8031BE4C  81 09 00 08 */	lwz r8, 8(r9)
/* 8031BE50  38 E8 00 01 */	addi r7, r8, 1
/* 8031BE54  90 E9 00 08 */	stw r7, 8(r9)
/* 8031BE58  99 68 00 00 */	stb r11, 0(r8)
/* 8031BE5C  7C BF 28 AE */	lbzx r5, r31, r5
/* 8031BE60  54 A5 10 3A */	slwi r5, r5, 2
/* 8031BE64  7C A3 2A 14 */	add r5, r3, r5
/* 8031BE68  8B 65 00 03 */	lbz r27, 3(r5)
/* 8031BE6C  8B 45 00 02 */	lbz r26, 2(r5)
/* 8031BE70  89 04 01 1D */	lbz r8, 0x11d(r4)
/* 8031BE74  89 84 01 0D */	lbz r12, 0x10d(r4)
/* 8031BE78  89 64 01 1C */	lbz r11, 0x11c(r4)
/* 8031BE7C  89 44 01 0C */	lbz r10, 0x10c(r4)
/* 8031BE80  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031BE84  80 A7 00 08 */	lwz r5, 8(r7)
/* 8031BE88  38 85 00 01 */	addi r4, r5, 1
/* 8031BE8C  90 87 00 08 */	stw r4, 8(r7)
/* 8031BE90  98 05 00 00 */	stb r0, 0(r5)
/* 8031BE94  38 06 00 02 */	addi r0, r6, 2
/* 8031BE98  7C 00 0E 70 */	srawi r0, r0, 1
/* 8031BE9C  7C 80 01 94 */	addze r4, r0
/* 8031BEA0  39 24 00 F6 */	addi r9, r4, 0xf6
/* 8031BEA4  55 08 98 18 */	slwi r8, r8, 0x13
/* 8031BEA8  55 87 70 22 */	slwi r7, r12, 0xe
/* 8031BEAC  55 65 48 2C */	slwi r5, r11, 9
/* 8031BEB0  55 44 20 36 */	slwi r4, r10, 4
/* 8031BEB4  57 60 10 3A */	slwi r0, r27, 2
/* 8031BEB8  7F 40 03 78 */	or r0, r26, r0
/* 8031BEBC  7C 80 03 78 */	or r0, r4, r0
/* 8031BEC0  7C A0 03 78 */	or r0, r5, r0
/* 8031BEC4  7C E0 03 78 */	or r0, r7, r0
/* 8031BEC8  7D 08 03 78 */	or r8, r8, r0
/* 8031BECC  51 28 C0 0E */	rlwimi r8, r9, 0x18, 0, 7
/* 8031BED0  55 07 46 3E */	srwi r7, r8, 0x18
/* 8031BED4  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031BED8  80 85 00 08 */	lwz r4, 8(r5)
/* 8031BEDC  38 04 00 01 */	addi r0, r4, 1
/* 8031BEE0  90 05 00 08 */	stw r0, 8(r5)
/* 8031BEE4  98 E4 00 00 */	stb r7, 0(r4)
/* 8031BEE8  55 07 86 3E */	rlwinm r7, r8, 0x10, 0x18, 0x1f
/* 8031BEEC  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031BEF0  80 85 00 08 */	lwz r4, 8(r5)
/* 8031BEF4  38 04 00 01 */	addi r0, r4, 1
/* 8031BEF8  90 05 00 08 */	stw r0, 8(r5)
/* 8031BEFC  98 E4 00 00 */	stb r7, 0(r4)
/* 8031BF00  55 07 C6 3E */	rlwinm r7, r8, 0x18, 0x18, 0x1f
/* 8031BF04  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031BF08  80 85 00 08 */	lwz r4, 8(r5)
/* 8031BF0C  38 04 00 01 */	addi r0, r4, 1
/* 8031BF10  90 05 00 08 */	stw r0, 8(r5)
/* 8031BF14  98 E4 00 00 */	stb r7, 0(r4)
/* 8031BF18  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031BF1C  80 85 00 08 */	lwz r4, 8(r5)
/* 8031BF20  38 04 00 01 */	addi r0, r4, 1
/* 8031BF24  90 05 00 08 */	stw r0, 8(r5)
/* 8031BF28  99 04 00 00 */	stb r8, 0(r4)
/* 8031BF2C  38 C6 00 04 */	addi r6, r6, 4
/* 8031BF30  42 00 FE 50 */	bdnz lbl_8031BD80
/* 8031BF34  39 61 00 40 */	addi r11, r1, 0x40
/* 8031BF38  48 04 62 E1 */	bl _restgpr_25
/* 8031BF3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8031BF40  7C 08 03 A6 */	mtlr r0
/* 8031BF44  38 21 00 40 */	addi r1, r1, 0x40
/* 8031BF48  4E 80 00 20 */	blr 
