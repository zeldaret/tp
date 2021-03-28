lbl_8035EEA4:
/* 8035EEA4  2C 03 00 02 */	cmpwi r3, 2
/* 8035EEA8  41 82 00 AC */	beq lbl_8035EF54
/* 8035EEAC  40 80 00 14 */	bge lbl_8035EEC0
/* 8035EEB0  2C 03 00 00 */	cmpwi r3, 0
/* 8035EEB4  41 82 00 18 */	beq lbl_8035EECC
/* 8035EEB8  40 80 00 58 */	bge lbl_8035EF10
/* 8035EEBC  48 00 01 1C */	b lbl_8035EFD8
lbl_8035EEC0:
/* 8035EEC0  2C 03 00 04 */	cmpwi r3, 4
/* 8035EEC4  40 80 01 14 */	bge lbl_8035EFD8
/* 8035EEC8  48 00 00 D0 */	b lbl_8035EF98
lbl_8035EECC:
/* 8035EECC  81 02 CB 80 */	lwz r8, __GXData(r2)
/* 8035EED0  38 C0 00 25 */	li r6, 0x25
/* 8035EED4  38 00 00 61 */	li r0, 0x61
/* 8035EED8  80 E8 01 28 */	lwz r7, 0x128(r8)
/* 8035EEDC  50 87 07 3E */	rlwimi r7, r4, 0, 0x1c, 0x1f
/* 8035EEE0  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035EEE4  90 E8 01 28 */	stw r7, 0x128(r8)
/* 8035EEE8  80 88 01 28 */	lwz r4, 0x128(r8)
/* 8035EEEC  50 A4 26 36 */	rlwimi r4, r5, 4, 0x18, 0x1b
/* 8035EEF0  90 88 01 28 */	stw r4, 0x128(r8)
/* 8035EEF4  80 88 01 28 */	lwz r4, 0x128(r8)
/* 8035EEF8  50 C4 C0 0E */	rlwimi r4, r6, 0x18, 0, 7
/* 8035EEFC  90 88 01 28 */	stw r4, 0x128(r8)
/* 8035EF00  98 03 80 00 */	stb r0, 0x8000(r3)
/* 8035EF04  80 08 01 28 */	lwz r0, 0x128(r8)
/* 8035EF08  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035EF0C  48 00 00 CC */	b lbl_8035EFD8
lbl_8035EF10:
/* 8035EF10  81 02 CB 80 */	lwz r8, __GXData(r2)
/* 8035EF14  38 C0 00 25 */	li r6, 0x25
/* 8035EF18  38 00 00 61 */	li r0, 0x61
/* 8035EF1C  80 E8 01 28 */	lwz r7, 0x128(r8)
/* 8035EF20  50 87 45 2E */	rlwimi r7, r4, 8, 0x14, 0x17
/* 8035EF24  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035EF28  90 E8 01 28 */	stw r7, 0x128(r8)
/* 8035EF2C  80 88 01 28 */	lwz r4, 0x128(r8)
/* 8035EF30  50 A4 64 26 */	rlwimi r4, r5, 0xc, 0x10, 0x13
/* 8035EF34  90 88 01 28 */	stw r4, 0x128(r8)
/* 8035EF38  80 88 01 28 */	lwz r4, 0x128(r8)
/* 8035EF3C  50 C4 C0 0E */	rlwimi r4, r6, 0x18, 0, 7
/* 8035EF40  90 88 01 28 */	stw r4, 0x128(r8)
/* 8035EF44  98 03 80 00 */	stb r0, 0x8000(r3)
/* 8035EF48  80 08 01 28 */	lwz r0, 0x128(r8)
/* 8035EF4C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035EF50  48 00 00 88 */	b lbl_8035EFD8
lbl_8035EF54:
/* 8035EF54  81 02 CB 80 */	lwz r8, __GXData(r2)
/* 8035EF58  38 C0 00 26 */	li r6, 0x26
/* 8035EF5C  38 00 00 61 */	li r0, 0x61
/* 8035EF60  80 E8 01 2C */	lwz r7, 0x12c(r8)
/* 8035EF64  50 87 07 3E */	rlwimi r7, r4, 0, 0x1c, 0x1f
/* 8035EF68  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035EF6C  90 E8 01 2C */	stw r7, 0x12c(r8)
/* 8035EF70  80 88 01 2C */	lwz r4, 0x12c(r8)
/* 8035EF74  50 A4 26 36 */	rlwimi r4, r5, 4, 0x18, 0x1b
/* 8035EF78  90 88 01 2C */	stw r4, 0x12c(r8)
/* 8035EF7C  80 88 01 2C */	lwz r4, 0x12c(r8)
/* 8035EF80  50 C4 C0 0E */	rlwimi r4, r6, 0x18, 0, 7
/* 8035EF84  90 88 01 2C */	stw r4, 0x12c(r8)
/* 8035EF88  98 03 80 00 */	stb r0, 0x8000(r3)
/* 8035EF8C  80 08 01 2C */	lwz r0, 0x12c(r8)
/* 8035EF90  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035EF94  48 00 00 44 */	b lbl_8035EFD8
lbl_8035EF98:
/* 8035EF98  81 02 CB 80 */	lwz r8, __GXData(r2)
/* 8035EF9C  38 C0 00 26 */	li r6, 0x26
/* 8035EFA0  38 00 00 61 */	li r0, 0x61
/* 8035EFA4  80 E8 01 2C */	lwz r7, 0x12c(r8)
/* 8035EFA8  50 87 45 2E */	rlwimi r7, r4, 8, 0x14, 0x17
/* 8035EFAC  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035EFB0  90 E8 01 2C */	stw r7, 0x12c(r8)
/* 8035EFB4  80 88 01 2C */	lwz r4, 0x12c(r8)
/* 8035EFB8  50 A4 64 26 */	rlwimi r4, r5, 0xc, 0x10, 0x13
/* 8035EFBC  90 88 01 2C */	stw r4, 0x12c(r8)
/* 8035EFC0  80 88 01 2C */	lwz r4, 0x12c(r8)
/* 8035EFC4  50 C4 C0 0E */	rlwimi r4, r6, 0x18, 0, 7
/* 8035EFC8  90 88 01 2C */	stw r4, 0x12c(r8)
/* 8035EFCC  98 03 80 00 */	stb r0, 0x8000(r3)
/* 8035EFD0  80 08 01 2C */	lwz r0, 0x12c(r8)
/* 8035EFD4  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_8035EFD8:
/* 8035EFD8  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035EFDC  38 00 00 00 */	li r0, 0
/* 8035EFE0  B0 03 00 02 */	sth r0, 2(r3)
/* 8035EFE4  4E 80 00 20 */	blr 
