lbl_8031EC50:
/* 8031EC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031EC54  7C 08 02 A6 */	mflr r0
/* 8031EC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031EC5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031EC60  7C 7F 1B 78 */	mr r31, r3
/* 8031EC64  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031EC68  80 64 00 08 */	lwz r3, 8(r4)
/* 8031EC6C  38 63 00 1E */	addi r3, r3, 0x1e
/* 8031EC70  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8031EC74  7C 03 00 40 */	cmplw r3, r0
/* 8031EC78  40 81 00 08 */	ble lbl_8031EC80
/* 8031EC7C  48 04 24 59 */	bl GDOverflowed
lbl_8031EC80:
/* 8031EC80  88 FF 00 07 */	lbz r7, 7(r31)
/* 8031EC84  3C 60 80 43 */	lis r3, j3dAlphaCmpTable@ha
/* 8031EC88  38 83 6E 60 */	addi r4, r3, j3dAlphaCmpTable@l
/* 8031EC8C  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8031EC90  1C 00 00 03 */	mulli r0, r0, 3
/* 8031EC94  7C 64 02 14 */	add r3, r4, r0
/* 8031EC98  89 43 00 02 */	lbz r10, 2(r3)
/* 8031EC9C  89 23 00 01 */	lbz r9, 1(r3)
/* 8031ECA0  88 DF 00 06 */	lbz r6, 6(r31)
/* 8031ECA4  7D 04 00 AE */	lbzx r8, r4, r0
/* 8031ECA8  38 60 00 61 */	li r3, 0x61
/* 8031ECAC  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031ECB0  80 85 00 08 */	lwz r4, 8(r5)
/* 8031ECB4  38 04 00 01 */	addi r0, r4, 1
/* 8031ECB8  90 05 00 08 */	stw r0, 8(r5)
/* 8031ECBC  98 64 00 00 */	stb r3, 0(r4)
/* 8031ECC0  55 24 B0 12 */	slwi r4, r9, 0x16
/* 8031ECC4  55 40 98 18 */	slwi r0, r10, 0x13
/* 8031ECC8  50 E6 44 2E */	rlwimi r6, r7, 8, 0x10, 0x17
/* 8031ECCC  51 06 82 1E */	rlwimi r6, r8, 0x10, 8, 0xf
/* 8031ECD0  7C 00 33 78 */	or r0, r0, r6
/* 8031ECD4  7C 80 03 78 */	or r0, r4, r0
/* 8031ECD8  64 07 F3 00 */	oris r7, r0, 0xf300
/* 8031ECDC  54 E6 46 3E */	srwi r6, r7, 0x18
/* 8031ECE0  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031ECE4  80 85 00 08 */	lwz r4, 8(r5)
/* 8031ECE8  38 04 00 01 */	addi r0, r4, 1
/* 8031ECEC  90 05 00 08 */	stw r0, 8(r5)
/* 8031ECF0  98 C4 00 00 */	stb r6, 0(r4)
/* 8031ECF4  54 E6 86 3E */	rlwinm r6, r7, 0x10, 0x18, 0x1f
/* 8031ECF8  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031ECFC  80 85 00 08 */	lwz r4, 8(r5)
/* 8031ED00  38 04 00 01 */	addi r0, r4, 1
/* 8031ED04  90 05 00 08 */	stw r0, 8(r5)
/* 8031ED08  98 C4 00 00 */	stb r6, 0(r4)
/* 8031ED0C  54 E6 C6 3E */	rlwinm r6, r7, 0x18, 0x18, 0x1f
/* 8031ED10  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031ED14  80 85 00 08 */	lwz r4, 8(r5)
/* 8031ED18  38 04 00 01 */	addi r0, r4, 1
/* 8031ED1C  90 05 00 08 */	stw r0, 8(r5)
/* 8031ED20  98 C4 00 00 */	stb r6, 0(r4)
/* 8031ED24  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031ED28  80 85 00 08 */	lwz r4, 8(r5)
/* 8031ED2C  38 04 00 01 */	addi r0, r4, 1
/* 8031ED30  90 05 00 08 */	stw r0, 8(r5)
/* 8031ED34  98 E4 00 00 */	stb r7, 0(r4)
/* 8031ED38  88 9F 00 0F */	lbz r4, 0xf(r31)
/* 8031ED3C  89 1F 00 0B */	lbz r8, 0xb(r31)
/* 8031ED40  88 FF 00 0A */	lbz r7, 0xa(r31)
/* 8031ED44  88 DF 00 09 */	lbz r6, 9(r31)
/* 8031ED48  88 BF 00 08 */	lbz r5, 8(r31)
/* 8031ED4C  81 4D 94 00 */	lwz r10, __GDCurrentDL(r13)
/* 8031ED50  81 2A 00 08 */	lwz r9, 8(r10)
/* 8031ED54  38 09 00 01 */	addi r0, r9, 1
/* 8031ED58  90 0A 00 08 */	stw r0, 8(r10)
/* 8031ED5C  98 69 00 00 */	stb r3, 0(r9)
/* 8031ED60  39 60 00 FE */	li r11, 0xfe
/* 8031ED64  81 4D 94 00 */	lwz r10, __GDCurrentDL(r13)
/* 8031ED68  81 2A 00 08 */	lwz r9, 8(r10)
/* 8031ED6C  38 09 00 01 */	addi r0, r9, 1
/* 8031ED70  90 0A 00 08 */	stw r0, 8(r10)
/* 8031ED74  99 69 00 00 */	stb r11, 0(r9)
/* 8031ED78  38 00 00 00 */	li r0, 0
/* 8031ED7C  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8031ED80  81 4B 00 08 */	lwz r10, 8(r11)
/* 8031ED84  39 2A 00 01 */	addi r9, r10, 1
/* 8031ED88  91 2B 00 08 */	stw r9, 8(r11)
/* 8031ED8C  98 0A 00 00 */	stb r0, 0(r10)
/* 8031ED90  39 80 00 FF */	li r12, 0xff
/* 8031ED94  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8031ED98  81 4B 00 08 */	lwz r10, 8(r11)
/* 8031ED9C  39 2A 00 01 */	addi r9, r10, 1
/* 8031EDA0  91 2B 00 08 */	stw r9, 8(r11)
/* 8031EDA4  99 8A 00 00 */	stb r12, 0(r10)
/* 8031EDA8  39 80 00 E7 */	li r12, 0xe7
/* 8031EDAC  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8031EDB0  81 4B 00 08 */	lwz r10, 8(r11)
/* 8031EDB4  39 2A 00 01 */	addi r9, r10, 1
/* 8031EDB8  91 2B 00 08 */	stw r9, 8(r11)
/* 8031EDBC  99 8A 00 00 */	stb r12, 0(r10)
/* 8031EDC0  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8031EDC4  81 4B 00 08 */	lwz r10, 8(r11)
/* 8031EDC8  39 2A 00 01 */	addi r9, r10, 1
/* 8031EDCC  91 2B 00 08 */	stw r9, 8(r11)
/* 8031EDD0  98 6A 00 00 */	stb r3, 0(r10)
/* 8031EDD4  2C 05 00 01 */	cmpwi r5, 1
/* 8031EDD8  41 82 00 0C */	beq lbl_8031EDE4
/* 8031EDDC  2C 05 00 03 */	cmpwi r5, 3
/* 8031EDE0  40 82 00 08 */	bne lbl_8031EDE8
lbl_8031EDE4:
/* 8031EDE4  38 00 00 01 */	li r0, 1
lbl_8031EDE8:
/* 8031EDE8  55 0A 60 26 */	slwi r10, r8, 0xc
/* 8031EDEC  20 65 00 03 */	subfic r3, r5, 3
/* 8031EDF0  7C 63 00 34 */	cntlzw r3, r3
/* 8031EDF4  54 69 33 68 */	rlwinm r9, r3, 6, 0xd, 0x14
/* 8031EDF8  54 C8 40 2E */	slwi r8, r6, 8
/* 8031EDFC  54 E6 28 34 */	slwi r6, r7, 5
/* 8031EE00  54 84 15 BA */	rlwinm r4, r4, 2, 0x16, 0x1d
/* 8031EE04  20 65 00 02 */	subfic r3, r5, 2
/* 8031EE08  7C 63 00 34 */	cntlzw r3, r3
/* 8031EE0C  54 63 E5 FC */	rlwinm r3, r3, 0x1c, 0x17, 0x1e
/* 8031EE10  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8031EE14  7C 60 03 78 */	or r0, r3, r0
/* 8031EE18  7C 80 03 78 */	or r0, r4, r0
/* 8031EE1C  7C C0 03 78 */	or r0, r6, r0
/* 8031EE20  7D 00 03 78 */	or r0, r8, r0
/* 8031EE24  7D 20 03 78 */	or r0, r9, r0
/* 8031EE28  7D 40 03 78 */	or r0, r10, r0
/* 8031EE2C  64 00 41 00 */	oris r0, r0, 0x4100
/* 8031EE30  54 0C 46 3E */	srwi r12, r0, 0x18
/* 8031EE34  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8031EE38  80 EB 00 08 */	lwz r7, 8(r11)
/* 8031EE3C  38 07 00 01 */	addi r0, r7, 1
/* 8031EE40  90 0B 00 08 */	stw r0, 8(r11)
/* 8031EE44  99 87 00 00 */	stb r12, 0(r7)
/* 8031EE48  38 00 00 00 */	li r0, 0
/* 8031EE4C  2C 05 00 01 */	cmpwi r5, 1
/* 8031EE50  41 82 00 0C */	beq lbl_8031EE5C
/* 8031EE54  2C 05 00 03 */	cmpwi r5, 3
/* 8031EE58  40 82 00 08 */	bne lbl_8031EE60
lbl_8031EE5C:
/* 8031EE5C  38 00 00 01 */	li r0, 1
lbl_8031EE60:
/* 8031EE60  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8031EE64  7C 60 03 78 */	or r0, r3, r0
/* 8031EE68  7C 80 03 78 */	or r0, r4, r0
/* 8031EE6C  7C C0 03 78 */	or r0, r6, r0
/* 8031EE70  7D 00 03 78 */	or r0, r8, r0
/* 8031EE74  7D 20 03 78 */	or r0, r9, r0
/* 8031EE78  7D 40 03 78 */	or r0, r10, r0
/* 8031EE7C  64 00 41 00 */	oris r0, r0, 0x4100
/* 8031EE80  54 0C 86 3E */	rlwinm r12, r0, 0x10, 0x18, 0x1f
/* 8031EE84  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8031EE88  80 EB 00 08 */	lwz r7, 8(r11)
/* 8031EE8C  38 07 00 01 */	addi r0, r7, 1
/* 8031EE90  90 0B 00 08 */	stw r0, 8(r11)
/* 8031EE94  99 87 00 00 */	stb r12, 0(r7)
/* 8031EE98  38 00 00 00 */	li r0, 0
/* 8031EE9C  2C 05 00 01 */	cmpwi r5, 1
/* 8031EEA0  41 82 00 0C */	beq lbl_8031EEAC
/* 8031EEA4  2C 05 00 03 */	cmpwi r5, 3
/* 8031EEA8  40 82 00 08 */	bne lbl_8031EEB0
lbl_8031EEAC:
/* 8031EEAC  38 00 00 01 */	li r0, 1
lbl_8031EEB0:
/* 8031EEB0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8031EEB4  7C 60 03 78 */	or r0, r3, r0
/* 8031EEB8  7C 80 03 78 */	or r0, r4, r0
/* 8031EEBC  7C C0 03 78 */	or r0, r6, r0
/* 8031EEC0  7D 00 03 78 */	or r0, r8, r0
/* 8031EEC4  7D 20 03 78 */	or r0, r9, r0
/* 8031EEC8  7D 40 03 78 */	or r0, r10, r0
/* 8031EECC  64 00 41 00 */	oris r0, r0, 0x4100
/* 8031EED0  54 0C C6 3E */	rlwinm r12, r0, 0x18, 0x18, 0x1f
/* 8031EED4  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8031EED8  80 EB 00 08 */	lwz r7, 8(r11)
/* 8031EEDC  38 07 00 01 */	addi r0, r7, 1
/* 8031EEE0  90 0B 00 08 */	stw r0, 8(r11)
/* 8031EEE4  99 87 00 00 */	stb r12, 0(r7)
/* 8031EEE8  38 00 00 00 */	li r0, 0
/* 8031EEEC  2C 05 00 01 */	cmpwi r5, 1
/* 8031EEF0  41 82 00 0C */	beq lbl_8031EEFC
/* 8031EEF4  2C 05 00 03 */	cmpwi r5, 3
/* 8031EEF8  40 82 00 08 */	bne lbl_8031EF00
lbl_8031EEFC:
/* 8031EEFC  38 00 00 01 */	li r0, 1
lbl_8031EF00:
/* 8031EF00  7C 60 03 78 */	or r0, r3, r0
/* 8031EF04  7C 80 03 78 */	or r0, r4, r0
/* 8031EF08  7C C0 03 78 */	or r0, r6, r0
/* 8031EF0C  7D 00 03 78 */	or r0, r8, r0
/* 8031EF10  7D 20 03 78 */	or r0, r9, r0
/* 8031EF14  7D 40 03 78 */	or r0, r10, r0
/* 8031EF18  60 05 00 00 */	ori r5, r0, 0
/* 8031EF1C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031EF20  80 64 00 08 */	lwz r3, 8(r4)
/* 8031EF24  38 03 00 01 */	addi r0, r3, 1
/* 8031EF28  90 04 00 08 */	stw r0, 8(r4)
/* 8031EF2C  98 A3 00 00 */	stb r5, 0(r3)
/* 8031EF30  3C 60 80 43 */	lis r3, j3dZModeTable@ha
/* 8031EF34  38 83 71 60 */	addi r4, r3, j3dZModeTable@l
/* 8031EF38  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 8031EF3C  1C 00 00 03 */	mulli r0, r0, 3
/* 8031EF40  7C 64 02 14 */	add r3, r4, r0
/* 8031EF44  88 E3 00 02 */	lbz r7, 2(r3)
/* 8031EF48  88 C3 00 01 */	lbz r6, 1(r3)
/* 8031EF4C  7D 04 00 AE */	lbzx r8, r4, r0
/* 8031EF50  38 00 00 61 */	li r0, 0x61
/* 8031EF54  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031EF58  80 85 00 08 */	lwz r4, 8(r5)
/* 8031EF5C  38 64 00 01 */	addi r3, r4, 1
/* 8031EF60  90 65 00 08 */	stw r3, 8(r5)
/* 8031EF64  98 04 00 00 */	stb r0, 0(r4)
/* 8031EF68  54 E4 25 36 */	rlwinm r4, r7, 4, 0x14, 0x1b
/* 8031EF6C  54 C3 08 3C */	slwi r3, r6, 1
/* 8031EF70  7D 03 1B 78 */	or r3, r8, r3
/* 8031EF74  7C 83 1B 78 */	or r3, r4, r3
/* 8031EF78  64 67 40 00 */	oris r7, r3, 0x4000
/* 8031EF7C  54 E6 46 3E */	srwi r6, r7, 0x18
/* 8031EF80  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031EF84  80 85 00 08 */	lwz r4, 8(r5)
/* 8031EF88  38 64 00 01 */	addi r3, r4, 1
/* 8031EF8C  90 65 00 08 */	stw r3, 8(r5)
/* 8031EF90  98 C4 00 00 */	stb r6, 0(r4)
/* 8031EF94  54 E6 86 3E */	rlwinm r6, r7, 0x10, 0x18, 0x1f
/* 8031EF98  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031EF9C  80 85 00 08 */	lwz r4, 8(r5)
/* 8031EFA0  38 64 00 01 */	addi r3, r4, 1
/* 8031EFA4  90 65 00 08 */	stw r3, 8(r5)
/* 8031EFA8  98 C4 00 00 */	stb r6, 0(r4)
/* 8031EFAC  54 E6 C6 3E */	rlwinm r6, r7, 0x18, 0x18, 0x1f
/* 8031EFB0  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031EFB4  80 85 00 08 */	lwz r4, 8(r5)
/* 8031EFB8  38 64 00 01 */	addi r3, r4, 1
/* 8031EFBC  90 65 00 08 */	stw r3, 8(r5)
/* 8031EFC0  98 C4 00 00 */	stb r6, 0(r4)
/* 8031EFC4  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031EFC8  80 85 00 08 */	lwz r4, 8(r5)
/* 8031EFCC  38 64 00 01 */	addi r3, r4, 1
/* 8031EFD0  90 65 00 08 */	stw r3, 8(r5)
/* 8031EFD4  98 E4 00 00 */	stb r7, 0(r4)
/* 8031EFD8  88 FF 00 0E */	lbz r7, 0xe(r31)
/* 8031EFDC  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031EFE0  80 85 00 08 */	lwz r4, 8(r5)
/* 8031EFE4  38 64 00 01 */	addi r3, r4, 1
/* 8031EFE8  90 65 00 08 */	stw r3, 8(r5)
/* 8031EFEC  98 04 00 00 */	stb r0, 0(r4)
/* 8031EFF0  38 C0 00 FE */	li r6, 0xfe
/* 8031EFF4  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031EFF8  80 85 00 08 */	lwz r4, 8(r5)
/* 8031EFFC  38 64 00 01 */	addi r3, r4, 1
/* 8031F000  90 65 00 08 */	stw r3, 8(r5)
/* 8031F004  98 C4 00 00 */	stb r6, 0(r4)
/* 8031F008  38 C0 00 00 */	li r6, 0
/* 8031F00C  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031F010  80 85 00 08 */	lwz r4, 8(r5)
/* 8031F014  38 64 00 01 */	addi r3, r4, 1
/* 8031F018  90 65 00 08 */	stw r3, 8(r5)
/* 8031F01C  98 C4 00 00 */	stb r6, 0(r4)
/* 8031F020  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031F024  80 85 00 08 */	lwz r4, 8(r5)
/* 8031F028  38 64 00 01 */	addi r3, r4, 1
/* 8031F02C  90 65 00 08 */	stw r3, 8(r5)
/* 8031F030  98 C4 00 00 */	stb r6, 0(r4)
/* 8031F034  38 C0 00 40 */	li r6, 0x40
/* 8031F038  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031F03C  80 85 00 08 */	lwz r4, 8(r5)
/* 8031F040  38 64 00 01 */	addi r3, r4, 1
/* 8031F044  90 65 00 08 */	stw r3, 8(r5)
/* 8031F048  98 C4 00 00 */	stb r6, 0(r4)
/* 8031F04C  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031F050  80 85 00 08 */	lwz r4, 8(r5)
/* 8031F054  38 64 00 01 */	addi r3, r4, 1
/* 8031F058  90 65 00 08 */	stw r3, 8(r5)
/* 8031F05C  98 04 00 00 */	stb r0, 0(r4)
/* 8031F060  54 E0 34 B2 */	rlwinm r0, r7, 6, 0x12, 0x19
/* 8031F064  64 06 43 00 */	oris r6, r0, 0x4300
/* 8031F068  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8031F06C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031F070  80 64 00 08 */	lwz r3, 8(r4)
/* 8031F074  38 03 00 01 */	addi r0, r3, 1
/* 8031F078  90 04 00 08 */	stw r0, 8(r4)
/* 8031F07C  98 A3 00 00 */	stb r5, 0(r3)
/* 8031F080  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8031F084  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031F088  80 64 00 08 */	lwz r3, 8(r4)
/* 8031F08C  38 03 00 01 */	addi r0, r3, 1
/* 8031F090  90 04 00 08 */	stw r0, 8(r4)
/* 8031F094  98 A3 00 00 */	stb r5, 0(r3)
/* 8031F098  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8031F09C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031F0A0  80 64 00 08 */	lwz r3, 8(r4)
/* 8031F0A4  38 03 00 01 */	addi r0, r3, 1
/* 8031F0A8  90 04 00 08 */	stw r0, 8(r4)
/* 8031F0AC  98 A3 00 00 */	stb r5, 0(r3)
/* 8031F0B0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031F0B4  80 64 00 08 */	lwz r3, 8(r4)
/* 8031F0B8  38 03 00 01 */	addi r0, r3, 1
/* 8031F0BC  90 04 00 08 */	stw r0, 8(r4)
/* 8031F0C0  98 C3 00 00 */	stb r6, 0(r3)
/* 8031F0C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031F0C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031F0CC  7C 08 03 A6 */	mtlr r0
/* 8031F0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8031F0D4  4E 80 00 20 */	blr 
