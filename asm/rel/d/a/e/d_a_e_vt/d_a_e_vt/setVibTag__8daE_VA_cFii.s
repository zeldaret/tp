lbl_807C5EAC:
/* 807C5EAC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807C5EB0  7C 08 02 A6 */	mflr r0
/* 807C5EB4  90 01 00 54 */	stw r0, 0x54(r1)
/* 807C5EB8  39 61 00 50 */	addi r11, r1, 0x50
/* 807C5EBC  4B B9 C3 10 */	b _savegpr_25
/* 807C5EC0  7C 7A 1B 78 */	mr r26, r3
/* 807C5EC4  7C 9B 23 78 */	mr r27, r4
/* 807C5EC8  7C BC 2B 78 */	mr r28, r5
/* 807C5ECC  3C 60 80 7D */	lis r3, cNullVec__6Z2Calc@ha
/* 807C5ED0  3B E3 EF 08 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 807C5ED4  3B A0 00 00 */	li r29, 0
/* 807C5ED8  3B 20 00 00 */	li r25, 0
lbl_807C5EDC:
/* 807C5EDC  2C 1C FF FF */	cmpwi r28, -1
/* 807C5EE0  41 82 00 1C */	beq lbl_807C5EFC
/* 807C5EE4  38 7F 01 A4 */	addi r3, r31, 0x1a4
/* 807C5EE8  7C 63 E8 AE */	lbzx r3, r3, r29
/* 807C5EEC  38 00 00 0A */	li r0, 0xa
/* 807C5EF0  7C 03 03 D6 */	divw r0, r3, r0
/* 807C5EF4  7C 1C 00 00 */	cmpw r28, r0
/* 807C5EF8  40 82 02 44 */	bne lbl_807C613C
lbl_807C5EFC:
/* 807C5EFC  38 7D 09 30 */	addi r3, r29, 0x930
/* 807C5F00  7C 1A 18 AE */	lbzx r0, r26, r3
/* 807C5F04  60 00 00 04 */	ori r0, r0, 4
/* 807C5F08  7C 1A 19 AE */	stbx r0, r26, r3
/* 807C5F0C  7C 1A 18 AE */	lbzx r0, r26, r3
/* 807C5F10  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807C5F14  40 82 02 28 */	bne lbl_807C613C
/* 807C5F18  2C 1B 00 01 */	cmpwi r27, 1
/* 807C5F1C  41 82 00 F0 */	beq lbl_807C600C
/* 807C5F20  40 80 00 10 */	bge lbl_807C5F30
/* 807C5F24  2C 1B 00 00 */	cmpwi r27, 0
/* 807C5F28  40 80 00 14 */	bge lbl_807C5F3C
/* 807C5F2C  48 00 01 88 */	b lbl_807C60B4
lbl_807C5F30:
/* 807C5F30  2C 1B 00 03 */	cmpwi r27, 3
/* 807C5F34  40 80 01 80 */	bge lbl_807C60B4
/* 807C5F38  48 00 01 20 */	b lbl_807C6058
lbl_807C5F3C:
/* 807C5F3C  3C 60 80 7D */	lis r3, lit_5913@ha
/* 807C5F40  C0 23 ED 8C */	lfs f1, lit_5913@l(r3)
/* 807C5F44  4B AA 1A 10 */	b cM_rndF__Ff
/* 807C5F48  FC 00 08 1E */	fctiwz f0, f1
/* 807C5F4C  D8 01 00 08 */	stfd f0, 8(r1)
/* 807C5F50  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807C5F54  54 00 08 3C */	slwi r0, r0, 1
/* 807C5F58  38 7F 02 F0 */	addi r3, r31, 0x2f0
/* 807C5F5C  7C 63 02 AE */	lhax r3, r3, r0
/* 807C5F60  7F DA CA 14 */	add r30, r26, r25
/* 807C5F64  A8 1E 07 50 */	lha r0, 0x750(r30)
/* 807C5F68  7C 00 1A 14 */	add r0, r0, r3
/* 807C5F6C  B0 1E 07 50 */	sth r0, 0x750(r30)
/* 807C5F70  3C 60 80 7D */	lis r3, lit_5913@ha
/* 807C5F74  C0 23 ED 8C */	lfs f1, lit_5913@l(r3)
/* 807C5F78  4B AA 19 DC */	b cM_rndF__Ff
/* 807C5F7C  FC 00 08 1E */	fctiwz f0, f1
/* 807C5F80  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807C5F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C5F88  54 00 08 3C */	slwi r0, r0, 1
/* 807C5F8C  38 7F 02 F0 */	addi r3, r31, 0x2f0
/* 807C5F90  7C 63 02 AE */	lhax r3, r3, r0
/* 807C5F94  A8 1E 07 54 */	lha r0, 0x754(r30)
/* 807C5F98  7C 00 1A 14 */	add r0, r0, r3
/* 807C5F9C  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 807C5FA0  3C 60 80 7D */	lis r3, lit_5913@ha
/* 807C5FA4  C0 23 ED 8C */	lfs f1, lit_5913@l(r3)
/* 807C5FA8  4B AA 19 AC */	b cM_rndF__Ff
/* 807C5FAC  3C 60 80 7D */	lis r3, lit_5914@ha
/* 807C5FB0  C0 03 ED 90 */	lfs f0, lit_5914@l(r3)
/* 807C5FB4  EC 00 08 2A */	fadds f0, f0, f1
/* 807C5FB8  FC 00 00 1E */	fctiwz f0, f0
/* 807C5FBC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807C5FC0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807C5FC4  54 00 08 3C */	slwi r0, r0, 1
/* 807C5FC8  38 7F 02 F8 */	addi r3, r31, 0x2f8
/* 807C5FCC  7C 03 02 AE */	lhax r0, r3, r0
/* 807C5FD0  B0 1E 08 40 */	sth r0, 0x840(r30)
/* 807C5FD4  3C 60 80 7D */	lis r3, lit_5913@ha
/* 807C5FD8  C0 23 ED 8C */	lfs f1, lit_5913@l(r3)
/* 807C5FDC  4B AA 19 78 */	b cM_rndF__Ff
/* 807C5FE0  3C 60 80 7D */	lis r3, lit_5914@ha
/* 807C5FE4  C0 03 ED 90 */	lfs f0, lit_5914@l(r3)
/* 807C5FE8  EC 00 08 2A */	fadds f0, f0, f1
/* 807C5FEC  FC 00 00 1E */	fctiwz f0, f0
/* 807C5FF0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807C5FF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807C5FF8  54 00 08 3C */	slwi r0, r0, 1
/* 807C5FFC  38 7F 02 F8 */	addi r3, r31, 0x2f8
/* 807C6000  7C 03 02 AE */	lhax r0, r3, r0
/* 807C6004  B0 1E 08 44 */	sth r0, 0x844(r30)
/* 807C6008  48 00 00 AC */	b lbl_807C60B4
lbl_807C600C:
/* 807C600C  7C BA CA 14 */	add r5, r26, r25
/* 807C6010  A8 65 07 50 */	lha r3, 0x750(r5)
/* 807C6014  57 A6 0F 7C */	rlwinm r6, r29, 1, 0x1d, 0x1e
/* 807C6018  38 9F 02 F0 */	addi r4, r31, 0x2f0
/* 807C601C  7C 04 32 AE */	lhax r0, r4, r6
/* 807C6020  7C 03 02 14 */	add r0, r3, r0
/* 807C6024  B0 05 07 50 */	sth r0, 0x750(r5)
/* 807C6028  A8 65 07 54 */	lha r3, 0x754(r5)
/* 807C602C  57 A0 07 7C */	rlwinm r0, r29, 0, 0x1d, 0x1e
/* 807C6030  7C 04 02 AE */	lhax r0, r4, r0
/* 807C6034  7C 03 02 14 */	add r0, r3, r0
/* 807C6038  B0 05 07 54 */	sth r0, 0x754(r5)
/* 807C603C  38 7F 02 F8 */	addi r3, r31, 0x2f8
/* 807C6040  7C 03 32 AE */	lhax r0, r3, r6
/* 807C6044  B0 05 08 40 */	sth r0, 0x840(r5)
/* 807C6048  57 A0 FF 7C */	rlwinm r0, r29, 0x1f, 0x1d, 0x1e
/* 807C604C  7C 03 02 AE */	lhax r0, r3, r0
/* 807C6050  B0 05 08 44 */	sth r0, 0x844(r5)
/* 807C6054  48 00 00 60 */	b lbl_807C60B4
lbl_807C6058:
/* 807C6058  7C DA CA 14 */	add r6, r26, r25
/* 807C605C  A8 86 07 50 */	lha r4, 0x750(r6)
/* 807C6060  57 A3 0F BC */	rlwinm r3, r29, 1, 0x1e, 0x1e
/* 807C6064  38 BF 02 F0 */	addi r5, r31, 0x2f0
/* 807C6068  38 03 00 04 */	addi r0, r3, 4
/* 807C606C  7C 05 02 AE */	lhax r0, r5, r0
/* 807C6070  7C 04 02 14 */	add r0, r4, r0
/* 807C6074  B0 06 07 50 */	sth r0, 0x750(r6)
/* 807C6078  A8 86 07 54 */	lha r4, 0x754(r6)
/* 807C607C  57 A3 07 BC */	rlwinm r3, r29, 0, 0x1e, 0x1e
/* 807C6080  38 03 00 04 */	addi r0, r3, 4
/* 807C6084  7C 05 02 AE */	lhax r0, r5, r0
/* 807C6088  7C 04 02 14 */	add r0, r4, r0
/* 807C608C  B0 06 07 54 */	sth r0, 0x754(r6)
/* 807C6090  57 A3 0F 7C */	rlwinm r3, r29, 1, 0x1d, 0x1e
/* 807C6094  38 9F 02 F8 */	addi r4, r31, 0x2f8
/* 807C6098  38 03 00 08 */	addi r0, r3, 8
/* 807C609C  7C 04 02 AE */	lhax r0, r4, r0
/* 807C60A0  B0 06 08 40 */	sth r0, 0x840(r6)
/* 807C60A4  57 A3 FF 7C */	rlwinm r3, r29, 0x1f, 0x1d, 0x1e
/* 807C60A8  38 03 00 08 */	addi r0, r3, 8
/* 807C60AC  7C 04 02 AE */	lhax r0, r4, r0
/* 807C60B0  B0 06 08 44 */	sth r0, 0x844(r6)
lbl_807C60B4:
/* 807C60B4  7C BA CA 14 */	add r5, r26, r25
/* 807C60B8  A8 05 07 50 */	lha r0, 0x750(r5)
/* 807C60BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807C60C0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807C60C4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 807C60C8  7C 44 04 2E */	lfsx f2, r4, r0
/* 807C60CC  A8 05 08 40 */	lha r0, 0x840(r5)
/* 807C60D0  3C 60 80 7D */	lis r3, lit_5843@ha
/* 807C60D4  C8 23 ED 80 */	lfd f1, lit_5843@l(r3)
/* 807C60D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807C60DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807C60E0  3C 60 43 30 */	lis r3, 0x4330
/* 807C60E4  90 61 00 20 */	stw r3, 0x20(r1)
/* 807C60E8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 807C60EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 807C60F0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807C60F4  FC 00 00 1E */	fctiwz f0, f0
/* 807C60F8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807C60FC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807C6100  B0 05 06 60 */	sth r0, 0x660(r5)
/* 807C6104  A8 05 07 54 */	lha r0, 0x754(r5)
/* 807C6108  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807C610C  7C 44 04 2E */	lfsx f2, r4, r0
/* 807C6110  A8 05 08 44 */	lha r0, 0x844(r5)
/* 807C6114  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807C6118  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C611C  90 61 00 10 */	stw r3, 0x10(r1)
/* 807C6120  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 807C6124  EC 00 08 28 */	fsubs f0, f0, f1
/* 807C6128  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807C612C  FC 00 00 1E */	fctiwz f0, f0
/* 807C6130  D8 01 00 08 */	stfd f0, 8(r1)
/* 807C6134  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807C6138  B0 05 06 64 */	sth r0, 0x664(r5)
lbl_807C613C:
/* 807C613C  3B BD 00 01 */	addi r29, r29, 1
/* 807C6140  2C 1D 00 28 */	cmpwi r29, 0x28
/* 807C6144  3B 39 00 06 */	addi r25, r25, 6
/* 807C6148  41 80 FD 94 */	blt lbl_807C5EDC
/* 807C614C  39 61 00 50 */	addi r11, r1, 0x50
/* 807C6150  4B B9 C0 C8 */	b _restgpr_25
/* 807C6154  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807C6158  7C 08 03 A6 */	mtlr r0
/* 807C615C  38 21 00 50 */	addi r1, r1, 0x50
/* 807C6160  4E 80 00 20 */	blr 
