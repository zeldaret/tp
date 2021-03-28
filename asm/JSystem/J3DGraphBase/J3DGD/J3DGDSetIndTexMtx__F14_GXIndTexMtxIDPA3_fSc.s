lbl_8030EB30:
/* 8030EB30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8030EB34  7C 08 02 A6 */	mflr r0
/* 8030EB38  90 01 00 64 */	stw r0, 0x64(r1)
/* 8030EB3C  39 61 00 60 */	addi r11, r1, 0x60
/* 8030EB40  48 05 36 89 */	bl _savegpr_24
/* 8030EB44  7C B8 2B 78 */	mr r24, r5
/* 8030EB48  2C 03 00 08 */	cmpwi r3, 8
/* 8030EB4C  41 82 00 44 */	beq lbl_8030EB90
/* 8030EB50  40 80 00 1C */	bge lbl_8030EB6C
/* 8030EB54  2C 03 00 04 */	cmpwi r3, 4
/* 8030EB58  41 82 00 38 */	beq lbl_8030EB90
/* 8030EB5C  40 80 00 24 */	bge lbl_8030EB80
/* 8030EB60  2C 03 00 01 */	cmpwi r3, 1
/* 8030EB64  40 80 00 14 */	bge lbl_8030EB78
/* 8030EB68  48 00 00 28 */	b lbl_8030EB90
lbl_8030EB6C:
/* 8030EB6C  2C 03 00 0C */	cmpwi r3, 0xc
/* 8030EB70  40 80 00 20 */	bge lbl_8030EB90
/* 8030EB74  48 00 00 14 */	b lbl_8030EB88
lbl_8030EB78:
/* 8030EB78  3B 23 FF FF */	addi r25, r3, -1
/* 8030EB7C  48 00 00 18 */	b lbl_8030EB94
lbl_8030EB80:
/* 8030EB80  3B 23 FF FB */	addi r25, r3, -5
/* 8030EB84  48 00 00 10 */	b lbl_8030EB94
lbl_8030EB88:
/* 8030EB88  3B 23 FF F7 */	addi r25, r3, -9
/* 8030EB8C  48 00 00 08 */	b lbl_8030EB94
lbl_8030EB90:
/* 8030EB90  3B 20 00 00 */	li r25, 0
lbl_8030EB94:
/* 8030EB94  C0 22 C9 30 */	lfs f1, lit_1233(r2)
/* 8030EB98  C0 04 00 00 */	lfs f0, 0(r4)
/* 8030EB9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8030EBA0  FC 00 00 1E */	fctiwz f0, f0
/* 8030EBA4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8030EBA8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8030EBAC  54 1F 05 7E */	clrlwi r31, r0, 0x15
/* 8030EBB0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8030EBB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8030EBB8  FC 00 00 1E */	fctiwz f0, f0
/* 8030EBBC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8030EBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030EBC4  54 1E 05 7E */	clrlwi r30, r0, 0x15
/* 8030EBC8  C0 04 00 04 */	lfs f0, 4(r4)
/* 8030EBCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8030EBD0  FC 00 00 1E */	fctiwz f0, f0
/* 8030EBD4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8030EBD8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8030EBDC  54 1D 05 7E */	clrlwi r29, r0, 0x15
/* 8030EBE0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8030EBE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8030EBE8  FC 00 00 1E */	fctiwz f0, f0
/* 8030EBEC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8030EBF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030EBF4  54 1C 05 7E */	clrlwi r28, r0, 0x15
/* 8030EBF8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8030EBFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8030EC00  FC 00 00 1E */	fctiwz f0, f0
/* 8030EC04  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8030EC08  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8030EC0C  54 1B 05 7E */	clrlwi r27, r0, 0x15
/* 8030EC10  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8030EC14  EC 01 00 32 */	fmuls f0, f1, f0
/* 8030EC18  FC 00 00 1E */	fctiwz f0, f0
/* 8030EC1C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8030EC20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8030EC24  54 1A 05 7E */	clrlwi r26, r0, 0x15
/* 8030EC28  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030EC2C  80 64 00 08 */	lwz r3, 8(r4)
/* 8030EC30  38 63 00 0F */	addi r3, r3, 0xf
/* 8030EC34  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8030EC38  7C 03 00 40 */	cmplw r3, r0
/* 8030EC3C  40 81 00 08 */	ble lbl_8030EC44
/* 8030EC40  48 05 24 95 */	bl GDOverflowed
lbl_8030EC44:
/* 8030EC44  38 18 00 11 */	addi r0, r24, 0x11
/* 8030EC48  7C 03 07 74 */	extsb r3, r0
/* 8030EC4C  54 64 B2 12 */	rlwinm r4, r3, 0x16, 8, 9
/* 8030EC50  57 C0 58 28 */	slwi r0, r30, 0xb
/* 8030EC54  7F E0 03 78 */	or r0, r31, r0
/* 8030EC58  7C 85 03 78 */	or r5, r4, r0
/* 8030EC5C  1C 99 00 03 */	mulli r4, r25, 3
/* 8030EC60  38 04 00 06 */	addi r0, r4, 6
/* 8030EC64  54 00 C0 0E */	slwi r0, r0, 0x18
/* 8030EC68  7C A9 03 78 */	or r9, r5, r0
/* 8030EC6C  38 00 00 61 */	li r0, 0x61
/* 8030EC70  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030EC74  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030EC78  38 A6 00 01 */	addi r5, r6, 1
/* 8030EC7C  90 A7 00 08 */	stw r5, 8(r7)
/* 8030EC80  98 06 00 00 */	stb r0, 0(r6)
/* 8030EC84  55 28 46 3E */	srwi r8, r9, 0x18
/* 8030EC88  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030EC8C  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030EC90  38 A6 00 01 */	addi r5, r6, 1
/* 8030EC94  90 A7 00 08 */	stw r5, 8(r7)
/* 8030EC98  99 06 00 00 */	stb r8, 0(r6)
/* 8030EC9C  55 28 86 3E */	rlwinm r8, r9, 0x10, 0x18, 0x1f
/* 8030ECA0  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030ECA4  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030ECA8  38 A6 00 01 */	addi r5, r6, 1
/* 8030ECAC  90 A7 00 08 */	stw r5, 8(r7)
/* 8030ECB0  99 06 00 00 */	stb r8, 0(r6)
/* 8030ECB4  55 28 C6 3E */	rlwinm r8, r9, 0x18, 0x18, 0x1f
/* 8030ECB8  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030ECBC  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030ECC0  38 A6 00 01 */	addi r5, r6, 1
/* 8030ECC4  90 A7 00 08 */	stw r5, 8(r7)
/* 8030ECC8  99 06 00 00 */	stb r8, 0(r6)
/* 8030ECCC  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030ECD0  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030ECD4  38 A6 00 01 */	addi r5, r6, 1
/* 8030ECD8  90 A7 00 08 */	stw r5, 8(r7)
/* 8030ECDC  99 26 00 00 */	stb r9, 0(r6)
/* 8030ECE0  54 66 A2 12 */	rlwinm r6, r3, 0x14, 8, 9
/* 8030ECE4  57 85 58 28 */	slwi r5, r28, 0xb
/* 8030ECE8  7F A5 2B 78 */	or r5, r29, r5
/* 8030ECEC  7C C6 2B 78 */	or r6, r6, r5
/* 8030ECF0  38 A4 00 07 */	addi r5, r4, 7
/* 8030ECF4  54 A5 C0 0E */	slwi r5, r5, 0x18
/* 8030ECF8  7C C9 2B 78 */	or r9, r6, r5
/* 8030ECFC  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030ED00  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030ED04  38 A6 00 01 */	addi r5, r6, 1
/* 8030ED08  90 A7 00 08 */	stw r5, 8(r7)
/* 8030ED0C  98 06 00 00 */	stb r0, 0(r6)
/* 8030ED10  55 28 46 3E */	srwi r8, r9, 0x18
/* 8030ED14  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030ED18  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030ED1C  38 A6 00 01 */	addi r5, r6, 1
/* 8030ED20  90 A7 00 08 */	stw r5, 8(r7)
/* 8030ED24  99 06 00 00 */	stb r8, 0(r6)
/* 8030ED28  55 28 86 3E */	rlwinm r8, r9, 0x10, 0x18, 0x1f
/* 8030ED2C  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030ED30  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030ED34  38 A6 00 01 */	addi r5, r6, 1
/* 8030ED38  90 A7 00 08 */	stw r5, 8(r7)
/* 8030ED3C  99 06 00 00 */	stb r8, 0(r6)
/* 8030ED40  55 28 C6 3E */	rlwinm r8, r9, 0x18, 0x18, 0x1f
/* 8030ED44  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030ED48  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030ED4C  38 A6 00 01 */	addi r5, r6, 1
/* 8030ED50  90 A7 00 08 */	stw r5, 8(r7)
/* 8030ED54  99 06 00 00 */	stb r8, 0(r6)
/* 8030ED58  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8030ED5C  80 C7 00 08 */	lwz r6, 8(r7)
/* 8030ED60  38 A6 00 01 */	addi r5, r6, 1
/* 8030ED64  90 A7 00 08 */	stw r5, 8(r7)
/* 8030ED68  99 26 00 00 */	stb r9, 0(r6)
/* 8030ED6C  54 65 92 12 */	rlwinm r5, r3, 0x12, 8, 9
/* 8030ED70  57 43 58 28 */	slwi r3, r26, 0xb
/* 8030ED74  7F 63 1B 78 */	or r3, r27, r3
/* 8030ED78  7C A5 1B 78 */	or r5, r5, r3
/* 8030ED7C  38 64 00 08 */	addi r3, r4, 8
/* 8030ED80  54 63 C0 0E */	slwi r3, r3, 0x18
/* 8030ED84  7C A6 1B 78 */	or r6, r5, r3
/* 8030ED88  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030ED8C  80 85 00 08 */	lwz r4, 8(r5)
/* 8030ED90  38 64 00 01 */	addi r3, r4, 1
/* 8030ED94  90 65 00 08 */	stw r3, 8(r5)
/* 8030ED98  98 04 00 00 */	stb r0, 0(r4)
/* 8030ED9C  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8030EDA0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030EDA4  80 64 00 08 */	lwz r3, 8(r4)
/* 8030EDA8  38 03 00 01 */	addi r0, r3, 1
/* 8030EDAC  90 04 00 08 */	stw r0, 8(r4)
/* 8030EDB0  98 A3 00 00 */	stb r5, 0(r3)
/* 8030EDB4  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8030EDB8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030EDBC  80 64 00 08 */	lwz r3, 8(r4)
/* 8030EDC0  38 03 00 01 */	addi r0, r3, 1
/* 8030EDC4  90 04 00 08 */	stw r0, 8(r4)
/* 8030EDC8  98 A3 00 00 */	stb r5, 0(r3)
/* 8030EDCC  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8030EDD0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030EDD4  80 64 00 08 */	lwz r3, 8(r4)
/* 8030EDD8  38 03 00 01 */	addi r0, r3, 1
/* 8030EDDC  90 04 00 08 */	stw r0, 8(r4)
/* 8030EDE0  98 A3 00 00 */	stb r5, 0(r3)
/* 8030EDE4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030EDE8  80 64 00 08 */	lwz r3, 8(r4)
/* 8030EDEC  38 03 00 01 */	addi r0, r3, 1
/* 8030EDF0  90 04 00 08 */	stw r0, 8(r4)
/* 8030EDF4  98 C3 00 00 */	stb r6, 0(r3)
/* 8030EDF8  39 61 00 60 */	addi r11, r1, 0x60
/* 8030EDFC  48 05 34 19 */	bl _restgpr_24
/* 8030EE00  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8030EE04  7C 08 03 A6 */	mtlr r0
/* 8030EE08  38 21 00 60 */	addi r1, r1, 0x60
/* 8030EE0C  4E 80 00 20 */	blr 
