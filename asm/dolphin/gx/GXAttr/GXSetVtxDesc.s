lbl_8035AEB8:
/* 8035AEB8  28 03 00 19 */	cmplwi r3, 0x19
/* 8035AEBC  41 81 02 10 */	bgt lbl_8035B0CC
/* 8035AEC0  3C A0 80 3D */	lis r5, lit_176@ha /* 0x803D2280@ha */
/* 8035AEC4  38 A5 22 80 */	addi r5, r5, lit_176@l /* 0x803D2280@l */
/* 8035AEC8  54 60 10 3A */	slwi r0, r3, 2
/* 8035AECC  7C 05 00 2E */	lwzx r0, r5, r0
/* 8035AED0  7C 09 03 A6 */	mtctr r0
/* 8035AED4  4E 80 04 20 */	bctr 
/* 8035AED8  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AEDC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035AEE0  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 8035AEE4  90 03 00 14 */	stw r0, 0x14(r3)
/* 8035AEE8  48 00 01 E4 */	b lbl_8035B0CC
/* 8035AEEC  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AEF0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035AEF4  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 8035AEF8  90 03 00 14 */	stw r0, 0x14(r3)
/* 8035AEFC  48 00 01 D0 */	b lbl_8035B0CC
/* 8035AF00  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AF04  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035AF08  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 8035AF0C  90 03 00 14 */	stw r0, 0x14(r3)
/* 8035AF10  48 00 01 BC */	b lbl_8035B0CC
/* 8035AF14  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AF18  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035AF1C  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 8035AF20  90 03 00 14 */	stw r0, 0x14(r3)
/* 8035AF24  48 00 01 A8 */	b lbl_8035B0CC
/* 8035AF28  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AF2C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035AF30  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8035AF34  90 03 00 14 */	stw r0, 0x14(r3)
/* 8035AF38  48 00 01 94 */	b lbl_8035B0CC
/* 8035AF3C  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AF40  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035AF44  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8035AF48  90 03 00 14 */	stw r0, 0x14(r3)
/* 8035AF4C  48 00 01 80 */	b lbl_8035B0CC
/* 8035AF50  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AF54  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035AF58  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8035AF5C  90 03 00 14 */	stw r0, 0x14(r3)
/* 8035AF60  48 00 01 6C */	b lbl_8035B0CC
/* 8035AF64  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AF68  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035AF6C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8035AF70  90 03 00 14 */	stw r0, 0x14(r3)
/* 8035AF74  48 00 01 58 */	b lbl_8035B0CC
/* 8035AF78  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AF7C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035AF80  50 80 45 EE */	rlwimi r0, r4, 8, 0x17, 0x17
/* 8035AF84  90 03 00 14 */	stw r0, 0x14(r3)
/* 8035AF88  48 00 01 44 */	b lbl_8035B0CC
/* 8035AF8C  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AF90  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035AF94  50 80 4D 6C */	rlwimi r0, r4, 9, 0x15, 0x16
/* 8035AF98  90 03 00 14 */	stw r0, 0x14(r3)
/* 8035AF9C  48 00 01 30 */	b lbl_8035B0CC
/* 8035AFA0  2C 04 00 00 */	cmpwi r4, 0
/* 8035AFA4  41 82 00 20 */	beq lbl_8035AFC4
/* 8035AFA8  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AFAC  38 A0 00 01 */	li r5, 1
/* 8035AFB0  38 00 00 00 */	li r0, 0
/* 8035AFB4  98 A3 04 D4 */	stb r5, 0x4d4(r3)
/* 8035AFB8  98 03 04 D5 */	stb r0, 0x4d5(r3)
/* 8035AFBC  90 83 04 D0 */	stw r4, 0x4d0(r3)
/* 8035AFC0  48 00 01 0C */	b lbl_8035B0CC
lbl_8035AFC4:
/* 8035AFC4  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AFC8  38 00 00 00 */	li r0, 0
/* 8035AFCC  98 03 04 D4 */	stb r0, 0x4d4(r3)
/* 8035AFD0  48 00 00 FC */	b lbl_8035B0CC
/* 8035AFD4  2C 04 00 00 */	cmpwi r4, 0
/* 8035AFD8  41 82 00 20 */	beq lbl_8035AFF8
/* 8035AFDC  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AFE0  38 A0 00 01 */	li r5, 1
/* 8035AFE4  38 00 00 00 */	li r0, 0
/* 8035AFE8  98 A3 04 D5 */	stb r5, 0x4d5(r3)
/* 8035AFEC  98 03 04 D4 */	stb r0, 0x4d4(r3)
/* 8035AFF0  90 83 04 D0 */	stw r4, 0x4d0(r3)
/* 8035AFF4  48 00 00 D8 */	b lbl_8035B0CC
lbl_8035AFF8:
/* 8035AFF8  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035AFFC  38 00 00 00 */	li r0, 0
/* 8035B000  98 03 04 D5 */	stb r0, 0x4d5(r3)
/* 8035B004  48 00 00 C8 */	b lbl_8035B0CC
/* 8035B008  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B00C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035B010  50 80 6C 64 */	rlwimi r0, r4, 0xd, 0x11, 0x12
/* 8035B014  90 03 00 14 */	stw r0, 0x14(r3)
/* 8035B018  48 00 00 B4 */	b lbl_8035B0CC
/* 8035B01C  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B020  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035B024  50 80 7B E0 */	rlwimi r0, r4, 0xf, 0xf, 0x10
/* 8035B028  90 03 00 14 */	stw r0, 0x14(r3)
/* 8035B02C  48 00 00 A0 */	b lbl_8035B0CC
/* 8035B030  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B034  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8035B038  50 80 07 BE */	rlwimi r0, r4, 0, 0x1e, 0x1f
/* 8035B03C  90 03 00 18 */	stw r0, 0x18(r3)
/* 8035B040  48 00 00 8C */	b lbl_8035B0CC
/* 8035B044  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B048  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8035B04C  50 80 17 3A */	rlwimi r0, r4, 2, 0x1c, 0x1d
/* 8035B050  90 03 00 18 */	stw r0, 0x18(r3)
/* 8035B054  48 00 00 78 */	b lbl_8035B0CC
/* 8035B058  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B05C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8035B060  50 80 26 B6 */	rlwimi r0, r4, 4, 0x1a, 0x1b
/* 8035B064  90 03 00 18 */	stw r0, 0x18(r3)
/* 8035B068  48 00 00 64 */	b lbl_8035B0CC
/* 8035B06C  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B070  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8035B074  50 80 36 32 */	rlwimi r0, r4, 6, 0x18, 0x19
/* 8035B078  90 03 00 18 */	stw r0, 0x18(r3)
/* 8035B07C  48 00 00 50 */	b lbl_8035B0CC
/* 8035B080  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B084  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8035B088  50 80 45 AE */	rlwimi r0, r4, 8, 0x16, 0x17
/* 8035B08C  90 03 00 18 */	stw r0, 0x18(r3)
/* 8035B090  48 00 00 3C */	b lbl_8035B0CC
/* 8035B094  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B098  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8035B09C  50 80 55 2A */	rlwimi r0, r4, 0xa, 0x14, 0x15
/* 8035B0A0  90 03 00 18 */	stw r0, 0x18(r3)
/* 8035B0A4  48 00 00 28 */	b lbl_8035B0CC
/* 8035B0A8  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B0AC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8035B0B0  50 80 64 A6 */	rlwimi r0, r4, 0xc, 0x12, 0x13
/* 8035B0B4  90 03 00 18 */	stw r0, 0x18(r3)
/* 8035B0B8  48 00 00 14 */	b lbl_8035B0CC
/* 8035B0BC  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B0C0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8035B0C4  50 80 74 22 */	rlwimi r0, r4, 0xe, 0x10, 0x11
/* 8035B0C8  90 03 00 18 */	stw r0, 0x18(r3)
lbl_8035B0CC:
/* 8035B0CC  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035B0D0  88 04 04 D4 */	lbz r0, 0x4d4(r4)
/* 8035B0D4  28 00 00 00 */	cmplwi r0, 0
/* 8035B0D8  40 82 00 10 */	bne lbl_8035B0E8
/* 8035B0DC  88 04 04 D5 */	lbz r0, 0x4d5(r4)
/* 8035B0E0  28 00 00 00 */	cmplwi r0, 0
/* 8035B0E4  41 82 00 1C */	beq lbl_8035B100
lbl_8035B0E8:
/* 8035B0E8  80 04 04 D0 */	lwz r0, 0x4d0(r4)
/* 8035B0EC  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8035B0F0  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B0F4  50 04 5C E8 */	rlwimi r4, r0, 0xb, 0x13, 0x14
/* 8035B0F8  90 83 00 14 */	stw r4, 0x14(r3)
/* 8035B0FC  48 00 00 14 */	b lbl_8035B110
lbl_8035B100:
/* 8035B100  80 64 00 14 */	lwz r3, 0x14(r4)
/* 8035B104  38 00 00 00 */	li r0, 0
/* 8035B108  50 03 5C E8 */	rlwimi r3, r0, 0xb, 0x13, 0x14
/* 8035B10C  90 64 00 14 */	stw r3, 0x14(r4)
lbl_8035B110:
/* 8035B110  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035B114  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 8035B118  60 00 00 08 */	ori r0, r0, 8
/* 8035B11C  90 03 05 AC */	stw r0, 0x5ac(r3)
/* 8035B120  4E 80 00 20 */	blr 
