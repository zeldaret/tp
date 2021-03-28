lbl_8031AFA4:
/* 8031AFA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031AFA8  7C 08 02 A6 */	mflr r0
/* 8031AFAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031AFB0  39 61 00 30 */	addi r11, r1, 0x30
/* 8031AFB4  48 04 72 25 */	bl _savegpr_28
/* 8031AFB8  7C 7E 1B 78 */	mr r30, r3
/* 8031AFBC  8B E3 00 34 */	lbz r31, 0x34(r3)
/* 8031AFC0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031AFC4  80 64 00 00 */	lwz r3, 0(r4)
/* 8031AFC8  80 04 00 08 */	lwz r0, 8(r4)
/* 8031AFCC  7C 03 00 50 */	subf r0, r3, r0
/* 8031AFD0  90 1E 00 04 */	stw r0, 4(r30)
/* 8031AFD4  3B 80 00 00 */	li r28, 0
/* 8031AFD8  3B A0 00 00 */	li r29, 0
lbl_8031AFDC:
/* 8031AFDC  38 9D 00 08 */	addi r4, r29, 8
/* 8031AFE0  7C 9E 22 14 */	add r4, r30, r4
/* 8031AFE4  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031AFE8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031AFEC  41 82 00 0C */	beq lbl_8031AFF8
/* 8031AFF0  7F 83 E3 78 */	mr r3, r28
/* 8031AFF4  48 00 8F A1 */	bl loadTexNo__FUlRCUs
lbl_8031AFF8:
/* 8031AFF8  3B 9C 00 01 */	addi r28, r28, 1
/* 8031AFFC  28 1C 00 02 */	cmplwi r28, 2
/* 8031B000  3B BD 00 02 */	addi r29, r29, 2
/* 8031B004  41 80 FF D8 */	blt lbl_8031AFDC
/* 8031B008  38 60 00 00 */	li r3, 0
/* 8031B00C  88 9E 00 0C */	lbz r4, 0xc(r30)
/* 8031B010  88 BE 00 0D */	lbz r5, 0xd(r30)
/* 8031B014  88 DE 00 0E */	lbz r6, 0xe(r30)
/* 8031B018  88 FE 00 10 */	lbz r7, 0x10(r30)
/* 8031B01C  89 1E 00 11 */	lbz r8, 0x11(r30)
/* 8031B020  89 3E 00 12 */	lbz r9, 0x12(r30)
/* 8031B024  4B FF 40 E5 */	bl J3DGDSetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8031B028  88 1E 00 0D */	lbz r0, 0xd(r30)
/* 8031B02C  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031B030  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha
/* 8031B034  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l
/* 8031B038  7D 00 22 14 */	add r8, r0, r4
/* 8031B03C  88 7E 00 0C */	lbz r3, 0xc(r30)
/* 8031B040  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031B044  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031B048  20 00 00 01 */	subfic r0, r0, 1
/* 8031B04C  7C 00 00 34 */	cntlzw r0, r0
/* 8031B050  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031B054  38 C0 00 00 */	li r6, 0
/* 8031B058  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031B05C  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031B060  20 00 00 01 */	subfic r0, r0, 1
/* 8031B064  7C 00 00 34 */	cntlzw r0, r0
/* 8031B068  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031B06C  39 20 00 00 */	li r9, 0
/* 8031B070  4B FF 31 C5 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031B074  88 1E 00 11 */	lbz r0, 0x11(r30)
/* 8031B078  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031B07C  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha
/* 8031B080  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l
/* 8031B084  7D 00 22 14 */	add r8, r0, r4
/* 8031B088  88 1E 00 10 */	lbz r0, 0x10(r30)
/* 8031B08C  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031B090  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031B094  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031B098  20 00 00 01 */	subfic r0, r0, 1
/* 8031B09C  7C 00 00 34 */	cntlzw r0, r0
/* 8031B0A0  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031B0A4  38 C0 00 00 */	li r6, 0
/* 8031B0A8  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031B0AC  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031B0B0  20 00 00 01 */	subfic r0, r0, 1
/* 8031B0B4  7C 00 00 34 */	cntlzw r0, r0
/* 8031B0B8  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031B0BC  39 20 00 00 */	li r9, 0
/* 8031B0C0  4B FF 31 75 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031B0C4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031B0C8  80 64 00 00 */	lwz r3, 0(r4)
/* 8031B0CC  80 04 00 08 */	lwz r0, 8(r4)
/* 8031B0D0  7C 03 00 50 */	subf r0, r3, r0
/* 8031B0D4  90 1E 00 68 */	stw r0, 0x68(r30)
/* 8031B0D8  3B 80 00 00 */	li r28, 0
/* 8031B0DC  3B A0 00 00 */	li r29, 0
lbl_8031B0E0:
/* 8031B0E0  38 1D 00 14 */	addi r0, r29, 0x14
/* 8031B0E4  7C 9E 02 14 */	add r4, r30, r0
/* 8031B0E8  80 64 00 00 */	lwz r3, 0(r4)
/* 8031B0EC  80 04 00 04 */	lwz r0, 4(r4)
/* 8031B0F0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8031B0F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031B0F8  38 7C 00 01 */	addi r3, r28, 1
/* 8031B0FC  38 81 00 0C */	addi r4, r1, 0xc
/* 8031B100  4B FF 42 FD */	bl J3DGDSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8031B104  3B 9C 00 01 */	addi r28, r28, 1
/* 8031B108  28 1C 00 03 */	cmplwi r28, 3
/* 8031B10C  3B BD 00 08 */	addi r29, r29, 8
/* 8031B110  41 80 FF D0 */	blt lbl_8031B0E0
/* 8031B114  3B 80 00 00 */	li r28, 0
/* 8031B118  3B A0 00 00 */	li r29, 0
lbl_8031B11C:
/* 8031B11C  38 1D 00 45 */	addi r0, r29, 0x45
/* 8031B120  7C 1E 00 2E */	lwzx r0, r30, r0
/* 8031B124  90 01 00 08 */	stw r0, 8(r1)
/* 8031B128  7F 83 E3 78 */	mr r3, r28
/* 8031B12C  38 81 00 08 */	addi r4, r1, 8
/* 8031B130  4B FF 41 65 */	bl J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
/* 8031B134  3B 9C 00 01 */	addi r28, r28, 1
/* 8031B138  28 1C 00 04 */	cmplwi r28, 4
/* 8031B13C  3B BD 00 04 */	addi r29, r29, 4
/* 8031B140  41 80 FF DC */	blt lbl_8031B11C
/* 8031B144  38 60 00 00 */	li r3, 0
/* 8031B148  38 80 00 00 */	li r4, 0
/* 8031B14C  38 A0 00 00 */	li r5, 0
/* 8031B150  7F E9 03 A6 */	mtctr r31
/* 8031B154  28 1F 00 00 */	cmplwi r31, 0
/* 8031B158  40 81 01 8C */	ble lbl_8031B2E4
lbl_8031B15C:
/* 8031B15C  39 65 00 35 */	addi r11, r5, 0x35
/* 8031B160  7D 7E 5A 14 */	add r11, r30, r11
/* 8031B164  81 4B 00 00 */	lwz r10, 0(r11)
/* 8031B168  38 00 00 61 */	li r0, 0x61
/* 8031B16C  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B170  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B174  38 C7 00 01 */	addi r6, r7, 1
/* 8031B178  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B17C  98 07 00 00 */	stb r0, 0(r7)
/* 8031B180  55 49 46 3E */	srwi r9, r10, 0x18
/* 8031B184  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B188  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B18C  38 C7 00 01 */	addi r6, r7, 1
/* 8031B190  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B194  99 27 00 00 */	stb r9, 0(r7)
/* 8031B198  55 49 86 3E */	rlwinm r9, r10, 0x10, 0x18, 0x1f
/* 8031B19C  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B1A0  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B1A4  38 C7 00 01 */	addi r6, r7, 1
/* 8031B1A8  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B1AC  99 27 00 00 */	stb r9, 0(r7)
/* 8031B1B0  55 49 C6 3E */	rlwinm r9, r10, 0x18, 0x18, 0x1f
/* 8031B1B4  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B1B8  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B1BC  38 C7 00 01 */	addi r6, r7, 1
/* 8031B1C0  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B1C4  99 27 00 00 */	stb r9, 0(r7)
/* 8031B1C8  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B1CC  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B1D0  38 C7 00 01 */	addi r6, r7, 1
/* 8031B1D4  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B1D8  99 47 00 00 */	stb r10, 0(r7)
/* 8031B1DC  81 4B 00 04 */	lwz r10, 4(r11)
/* 8031B1E0  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B1E4  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B1E8  38 C7 00 01 */	addi r6, r7, 1
/* 8031B1EC  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B1F0  98 07 00 00 */	stb r0, 0(r7)
/* 8031B1F4  55 49 46 3E */	srwi r9, r10, 0x18
/* 8031B1F8  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B1FC  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B200  38 C7 00 01 */	addi r6, r7, 1
/* 8031B204  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B208  99 27 00 00 */	stb r9, 0(r7)
/* 8031B20C  55 49 86 3E */	rlwinm r9, r10, 0x10, 0x18, 0x1f
/* 8031B210  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B214  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B218  38 C7 00 01 */	addi r6, r7, 1
/* 8031B21C  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B220  99 27 00 00 */	stb r9, 0(r7)
/* 8031B224  55 49 C6 3E */	rlwinm r9, r10, 0x18, 0x18, 0x1f
/* 8031B228  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B22C  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B230  38 C7 00 01 */	addi r6, r7, 1
/* 8031B234  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B238  99 27 00 00 */	stb r9, 0(r7)
/* 8031B23C  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B240  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B244  38 C7 00 01 */	addi r6, r7, 1
/* 8031B248  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B24C  99 47 00 00 */	stb r10, 0(r7)
/* 8031B250  38 C4 00 60 */	addi r6, r4, 0x60
/* 8031B254  7C FE 30 2E */	lwzx r7, r30, r6
/* 8031B258  38 C3 00 10 */	addi r6, r3, 0x10
/* 8031B25C  54 C6 C0 0E */	slwi r6, r6, 0x18
/* 8031B260  7C E9 33 78 */	or r9, r7, r6
/* 8031B264  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B268  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B26C  38 C7 00 01 */	addi r6, r7, 1
/* 8031B270  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B274  98 07 00 00 */	stb r0, 0(r7)
/* 8031B278  55 28 46 3E */	srwi r8, r9, 0x18
/* 8031B27C  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031B280  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031B284  38 06 00 01 */	addi r0, r6, 1
/* 8031B288  90 07 00 08 */	stw r0, 8(r7)
/* 8031B28C  99 06 00 00 */	stb r8, 0(r6)
/* 8031B290  55 28 86 3E */	rlwinm r8, r9, 0x10, 0x18, 0x1f
/* 8031B294  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031B298  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031B29C  38 06 00 01 */	addi r0, r6, 1
/* 8031B2A0  90 07 00 08 */	stw r0, 8(r7)
/* 8031B2A4  99 06 00 00 */	stb r8, 0(r6)
/* 8031B2A8  55 28 C6 3E */	rlwinm r8, r9, 0x18, 0x18, 0x1f
/* 8031B2AC  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031B2B0  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031B2B4  38 06 00 01 */	addi r0, r6, 1
/* 8031B2B8  90 07 00 08 */	stw r0, 8(r7)
/* 8031B2BC  99 06 00 00 */	stb r8, 0(r6)
/* 8031B2C0  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031B2C4  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031B2C8  38 06 00 01 */	addi r0, r6, 1
/* 8031B2CC  90 07 00 08 */	stw r0, 8(r7)
/* 8031B2D0  99 26 00 00 */	stb r9, 0(r6)
/* 8031B2D4  38 63 00 01 */	addi r3, r3, 1
/* 8031B2D8  38 84 00 04 */	addi r4, r4, 4
/* 8031B2DC  38 A5 00 08 */	addi r5, r5, 8
/* 8031B2E0  42 00 FE 7C */	bdnz lbl_8031B15C
lbl_8031B2E4:
/* 8031B2E4  38 A0 00 00 */	li r5, 0
/* 8031B2E8  3C 60 80 43 */	lis r3, j3dTevSwapTableTable@ha
/* 8031B2EC  38 63 6A 60 */	addi r3, r3, j3dTevSwapTableTable@l
/* 8031B2F0  38 00 00 04 */	li r0, 4
/* 8031B2F4  7C 09 03 A6 */	mtctr r0
lbl_8031B2F8:
/* 8031B2F8  54 A4 F0 BE */	srwi r4, r5, 2
/* 8031B2FC  38 84 00 59 */	addi r4, r4, 0x59
/* 8031B300  7C 1E 20 AE */	lbzx r0, r30, r4
/* 8031B304  54 00 10 3A */	slwi r0, r0, 2
/* 8031B308  7C C3 02 14 */	add r6, r3, r0
/* 8031B30C  8B 86 00 01 */	lbz r28, 1(r6)
/* 8031B310  8B E6 00 00 */	lbz r31, 0(r6)
/* 8031B314  89 5E 00 58 */	lbz r10, 0x58(r30)
/* 8031B318  89 3E 00 56 */	lbz r9, 0x56(r30)
/* 8031B31C  8B BE 00 57 */	lbz r29, 0x57(r30)
/* 8031B320  89 9E 00 55 */	lbz r12, 0x55(r30)
/* 8031B324  38 00 00 61 */	li r0, 0x61
/* 8031B328  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B32C  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B330  38 C7 00 01 */	addi r6, r7, 1
/* 8031B334  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B338  98 07 00 00 */	stb r0, 0(r7)
/* 8031B33C  7C A6 0E 70 */	srawi r6, r5, 1
/* 8031B340  7C C6 01 94 */	addze r6, r6
/* 8031B344  39 66 00 F6 */	addi r11, r6, 0xf6
/* 8031B348  55 4A 98 18 */	slwi r10, r10, 0x13
/* 8031B34C  55 29 70 22 */	slwi r9, r9, 0xe
/* 8031B350  57 A8 48 2C */	slwi r8, r29, 9
/* 8031B354  55 87 20 36 */	slwi r7, r12, 4
/* 8031B358  57 86 10 3A */	slwi r6, r28, 2
/* 8031B35C  7F E6 33 78 */	or r6, r31, r6
/* 8031B360  7C E6 33 78 */	or r6, r7, r6
/* 8031B364  7D 06 33 78 */	or r6, r8, r6
/* 8031B368  7D 26 33 78 */	or r6, r9, r6
/* 8031B36C  7D 4A 33 78 */	or r10, r10, r6
/* 8031B370  51 6A C0 0E */	rlwimi r10, r11, 0x18, 0, 7
/* 8031B374  55 49 46 3E */	srwi r9, r10, 0x18
/* 8031B378  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B37C  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B380  38 C7 00 01 */	addi r6, r7, 1
/* 8031B384  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B388  99 27 00 00 */	stb r9, 0(r7)
/* 8031B38C  55 49 86 3E */	rlwinm r9, r10, 0x10, 0x18, 0x1f
/* 8031B390  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B394  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B398  38 C7 00 01 */	addi r6, r7, 1
/* 8031B39C  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B3A0  99 27 00 00 */	stb r9, 0(r7)
/* 8031B3A4  55 49 C6 3E */	rlwinm r9, r10, 0x18, 0x18, 0x1f
/* 8031B3A8  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B3AC  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B3B0  38 C7 00 01 */	addi r6, r7, 1
/* 8031B3B4  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B3B8  99 27 00 00 */	stb r9, 0(r7)
/* 8031B3BC  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B3C0  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B3C4  38 C7 00 01 */	addi r6, r7, 1
/* 8031B3C8  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B3CC  99 47 00 00 */	stb r10, 0(r7)
/* 8031B3D0  7C 9E 20 AE */	lbzx r4, r30, r4
/* 8031B3D4  54 84 10 3A */	slwi r4, r4, 2
/* 8031B3D8  7C 83 22 14 */	add r4, r3, r4
/* 8031B3DC  8B A4 00 03 */	lbz r29, 3(r4)
/* 8031B3E0  8B 84 00 02 */	lbz r28, 2(r4)
/* 8031B3E4  89 1E 00 58 */	lbz r8, 0x58(r30)
/* 8031B3E8  89 9E 00 56 */	lbz r12, 0x56(r30)
/* 8031B3EC  89 7E 00 57 */	lbz r11, 0x57(r30)
/* 8031B3F0  89 5E 00 55 */	lbz r10, 0x55(r30)
/* 8031B3F4  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031B3F8  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031B3FC  38 86 00 01 */	addi r4, r6, 1
/* 8031B400  90 87 00 08 */	stw r4, 8(r7)
/* 8031B404  98 06 00 00 */	stb r0, 0(r6)
/* 8031B408  38 05 00 02 */	addi r0, r5, 2
/* 8031B40C  7C 00 0E 70 */	srawi r0, r0, 1
/* 8031B410  7C 80 01 94 */	addze r4, r0
/* 8031B414  39 24 00 F6 */	addi r9, r4, 0xf6
/* 8031B418  55 08 98 18 */	slwi r8, r8, 0x13
/* 8031B41C  55 87 70 22 */	slwi r7, r12, 0xe
/* 8031B420  55 66 48 2C */	slwi r6, r11, 9
/* 8031B424  55 44 20 36 */	slwi r4, r10, 4
/* 8031B428  57 A0 10 3A */	slwi r0, r29, 2
/* 8031B42C  7F 80 03 78 */	or r0, r28, r0
/* 8031B430  7C 80 03 78 */	or r0, r4, r0
/* 8031B434  7C C0 03 78 */	or r0, r6, r0
/* 8031B438  7C E0 03 78 */	or r0, r7, r0
/* 8031B43C  7D 08 03 78 */	or r8, r8, r0
/* 8031B440  51 28 C0 0E */	rlwimi r8, r9, 0x18, 0, 7
/* 8031B444  55 07 46 3E */	srwi r7, r8, 0x18
/* 8031B448  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031B44C  80 86 00 08 */	lwz r4, 8(r6)
/* 8031B450  38 04 00 01 */	addi r0, r4, 1
/* 8031B454  90 06 00 08 */	stw r0, 8(r6)
/* 8031B458  98 E4 00 00 */	stb r7, 0(r4)
/* 8031B45C  55 07 86 3E */	rlwinm r7, r8, 0x10, 0x18, 0x1f
/* 8031B460  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031B464  80 86 00 08 */	lwz r4, 8(r6)
/* 8031B468  38 04 00 01 */	addi r0, r4, 1
/* 8031B46C  90 06 00 08 */	stw r0, 8(r6)
/* 8031B470  98 E4 00 00 */	stb r7, 0(r4)
/* 8031B474  55 07 C6 3E */	rlwinm r7, r8, 0x18, 0x18, 0x1f
/* 8031B478  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031B47C  80 86 00 08 */	lwz r4, 8(r6)
/* 8031B480  38 04 00 01 */	addi r0, r4, 1
/* 8031B484  90 06 00 08 */	stw r0, 8(r6)
/* 8031B488  98 E4 00 00 */	stb r7, 0(r4)
/* 8031B48C  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031B490  80 86 00 08 */	lwz r4, 8(r6)
/* 8031B494  38 04 00 01 */	addi r0, r4, 1
/* 8031B498  90 06 00 08 */	stw r0, 8(r6)
/* 8031B49C  99 04 00 00 */	stb r8, 0(r4)
/* 8031B4A0  38 A5 00 04 */	addi r5, r5, 4
/* 8031B4A4  42 00 FE 54 */	bdnz lbl_8031B2F8
/* 8031B4A8  39 61 00 30 */	addi r11, r1, 0x30
/* 8031B4AC  48 04 6D 79 */	bl _restgpr_28
/* 8031B4B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031B4B4  7C 08 03 A6 */	mtlr r0
/* 8031B4B8  38 21 00 30 */	addi r1, r1, 0x30
/* 8031B4BC  4E 80 00 20 */	blr 
