lbl_8077AF40:
/* 8077AF40  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8077AF44  7C 08 02 A6 */	mflr r0
/* 8077AF48  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8077AF4C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8077AF50  4B BE 72 84 */	b _savegpr_27
/* 8077AF54  7C 7E 1B 78 */	mr r30, r3
/* 8077AF58  3C 60 80 78 */	lis r3, lit_3903@ha
/* 8077AF5C  3B E3 0D C4 */	addi r31, r3, lit_3903@l
/* 8077AF60  38 61 00 20 */	addi r3, r1, 0x20
/* 8077AF64  4B 8F CD 04 */	b __ct__11dBgS_LinChkFv
/* 8077AF68  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8077AF6C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8077AF70  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8077AF74  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8077AF78  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8077AF7C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8077AF80  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8077AF84  EC 01 00 2A */	fadds f0, f1, f0
/* 8077AF88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8077AF8C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8077AF90  83 83 00 08 */	lwz r28, 8(r3)
/* 8077AF94  3B 60 00 00 */	li r27, 0
/* 8077AF98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077AF9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077AFA0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8077AFA4  48 00 00 80 */	b lbl_8077B024
lbl_8077AFA8:
/* 8077AFA8  2C 1B 00 FF */	cmpwi r27, 0xff
/* 8077AFAC  40 80 00 70 */	bge lbl_8077B01C
/* 8077AFB0  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8077AFB4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8077AFB8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8077AFBC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8077AFC0  EC 01 00 2A */	fadds f0, f1, f0
/* 8077AFC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8077AFC8  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8077AFCC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8077AFD0  38 61 00 20 */	addi r3, r1, 0x20
/* 8077AFD4  38 81 00 14 */	addi r4, r1, 0x14
/* 8077AFD8  38 A1 00 08 */	addi r5, r1, 8
/* 8077AFDC  7F C6 F3 78 */	mr r6, r30
/* 8077AFE0  4B 8F CD 84 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8077AFE4  7F A3 EB 78 */	mr r3, r29
/* 8077AFE8  38 81 00 20 */	addi r4, r1, 0x20
/* 8077AFEC  4B 8F 93 C8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8077AFF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8077AFF4  40 82 00 18 */	bne lbl_8077B00C
/* 8077AFF8  38 00 00 01 */	li r0, 1
/* 8077AFFC  3C 60 80 78 */	lis r3, check_index@ha
/* 8077B000  38 63 13 B8 */	addi r3, r3, check_index@l
/* 8077B004  7C 03 D9 AE */	stbx r0, r3, r27
/* 8077B008  48 00 00 14 */	b lbl_8077B01C
lbl_8077B00C:
/* 8077B00C  38 00 00 00 */	li r0, 0
/* 8077B010  3C 60 80 78 */	lis r3, check_index@ha
/* 8077B014  38 63 13 B8 */	addi r3, r3, check_index@l
/* 8077B018  7C 03 D9 AE */	stbx r0, r3, r27
lbl_8077B01C:
/* 8077B01C  3B 7B 00 01 */	addi r27, r27, 1
/* 8077B020  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_8077B024:
/* 8077B024  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8077B028  A0 03 00 00 */	lhz r0, 0(r3)
/* 8077B02C  7C 1B 00 00 */	cmpw r27, r0
/* 8077B030  41 80 FF 78 */	blt lbl_8077AFA8
/* 8077B034  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8077B038  38 A0 00 00 */	li r5, 0
/* 8077B03C  38 C0 00 00 */	li r6, 0
/* 8077B040  C0 1F 00 50 */	lfs f0, 0x50(r31)
lbl_8077B044:
/* 8077B044  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8077B048  80 83 00 08 */	lwz r4, 8(r3)
/* 8077B04C  38 E0 00 00 */	li r7, 0
/* 8077B050  A0 03 00 00 */	lhz r0, 0(r3)
/* 8077B054  7C 09 03 A6 */	mtctr r0
/* 8077B058  2C 00 00 00 */	cmpwi r0, 0
/* 8077B05C  40 81 00 C8 */	ble lbl_8077B124
lbl_8077B060:
/* 8077B060  2C 07 00 FF */	cmpwi r7, 0xff
/* 8077B064  40 80 00 B4 */	bge lbl_8077B118
/* 8077B068  3C 60 80 78 */	lis r3, check_index@ha
/* 8077B06C  38 63 13 B8 */	addi r3, r3, check_index@l
/* 8077B070  7C 03 38 AE */	lbzx r0, r3, r7
/* 8077B074  28 00 00 00 */	cmplwi r0, 0
/* 8077B078  41 82 00 A0 */	beq lbl_8077B118
/* 8077B07C  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 8077B080  C0 24 00 04 */	lfs f1, 4(r4)
/* 8077B084  EC 82 08 28 */	fsubs f4, f2, f1
/* 8077B088  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8077B08C  C0 24 00 08 */	lfs f1, 8(r4)
/* 8077B090  EC A2 08 28 */	fsubs f5, f2, f1
/* 8077B094  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8077B098  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8077B09C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8077B0A0  EC 61 00 72 */	fmuls f3, f1, f1
/* 8077B0A4  EC 44 01 32 */	fmuls f2, f4, f4
/* 8077B0A8  EC 25 01 72 */	fmuls f1, f5, f5
/* 8077B0AC  EC 22 08 2A */	fadds f1, f2, f1
/* 8077B0B0  EC 43 08 2A */	fadds f2, f3, f1
/* 8077B0B4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8077B0B8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8077B0BC  40 81 00 0C */	ble lbl_8077B0C8
/* 8077B0C0  FC 20 10 34 */	frsqrte f1, f2
/* 8077B0C4  EC 41 00 B2 */	fmuls f2, f1, f2
lbl_8077B0C8:
/* 8077B0C8  FC 02 30 40 */	fcmpo cr0, f2, f6
/* 8077B0CC  40 80 00 4C */	bge lbl_8077B118
/* 8077B0D0  88 1E 05 C1 */	lbz r0, 0x5c1(r30)
/* 8077B0D4  7C 00 38 50 */	subf r0, r0, r7
/* 8077B0D8  98 1E 05 C0 */	stb r0, 0x5c0(r30)
/* 8077B0DC  88 BE 05 C0 */	lbz r5, 0x5c0(r30)
/* 8077B0E0  7C A4 07 74 */	extsb r4, r5
/* 8077B0E4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8077B0E8  A0 63 00 00 */	lhz r3, 0(r3)
/* 8077B0EC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8077B0F0  7C 04 00 00 */	cmpw r4, r0
/* 8077B0F4  41 80 00 0C */	blt lbl_8077B100
/* 8077B0F8  98 7E 05 C0 */	stb r3, 0x5c0(r30)
/* 8077B0FC  48 00 00 14 */	b lbl_8077B110
lbl_8077B100:
/* 8077B100  7C A0 07 75 */	extsb. r0, r5
/* 8077B104  40 80 00 0C */	bge lbl_8077B110
/* 8077B108  38 00 00 00 */	li r0, 0
/* 8077B10C  98 1E 05 C0 */	stb r0, 0x5c0(r30)
lbl_8077B110:
/* 8077B110  38 A0 00 01 */	li r5, 1
/* 8077B114  48 00 00 10 */	b lbl_8077B124
lbl_8077B118:
/* 8077B118  38 E7 00 01 */	addi r7, r7, 1
/* 8077B11C  38 84 00 10 */	addi r4, r4, 0x10
/* 8077B120  42 00 FF 40 */	bdnz lbl_8077B060
lbl_8077B124:
/* 8077B124  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8077B128  40 82 00 14 */	bne lbl_8077B13C
/* 8077B12C  EC C6 00 2A */	fadds f6, f6, f0
/* 8077B130  38 C6 00 01 */	addi r6, r6, 1
/* 8077B134  2C 06 00 64 */	cmpwi r6, 0x64
/* 8077B138  41 80 FF 0C */	blt lbl_8077B044
lbl_8077B13C:
/* 8077B13C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8077B140  40 82 00 18 */	bne lbl_8077B158
/* 8077B144  38 61 00 20 */	addi r3, r1, 0x20
/* 8077B148  38 80 FF FF */	li r4, -1
/* 8077B14C  4B 8F CB 90 */	b __dt__11dBgS_LinChkFv
/* 8077B150  38 60 00 00 */	li r3, 0
/* 8077B154  48 00 00 3C */	b lbl_8077B190
lbl_8077B158:
/* 8077B158  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8077B15C  4B AE C7 F8 */	b cM_rndF__Ff
/* 8077B160  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8077B164  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077B168  40 80 00 10 */	bge lbl_8077B178
/* 8077B16C  38 00 00 01 */	li r0, 1
/* 8077B170  98 1E 05 C1 */	stb r0, 0x5c1(r30)
/* 8077B174  48 00 00 0C */	b lbl_8077B180
lbl_8077B178:
/* 8077B178  38 00 FF FF */	li r0, -1
/* 8077B17C  98 1E 05 C1 */	stb r0, 0x5c1(r30)
lbl_8077B180:
/* 8077B180  38 61 00 20 */	addi r3, r1, 0x20
/* 8077B184  38 80 FF FF */	li r4, -1
/* 8077B188  4B 8F CB 54 */	b __dt__11dBgS_LinChkFv
/* 8077B18C  38 60 00 01 */	li r3, 1
lbl_8077B190:
/* 8077B190  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8077B194  4B BE 70 8C */	b _restgpr_27
/* 8077B198  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8077B19C  7C 08 03 A6 */	mtlr r0
/* 8077B1A0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8077B1A4  4E 80 00 20 */	blr 
