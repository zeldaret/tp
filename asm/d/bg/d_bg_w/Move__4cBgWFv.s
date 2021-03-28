lbl_8007AC10:
/* 8007AC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007AC14  7C 08 02 A6 */	mflr r0
/* 8007AC18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007AC1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007AC20  7C 7F 1B 78 */	mr r31, r3
/* 8007AC24  81 83 00 04 */	lwz r12, 4(r3)
/* 8007AC28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8007AC2C  7D 89 03 A6 */	mtctr r12
/* 8007AC30  4E 80 04 21 */	bctrl 
/* 8007AC34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007AC38  40 82 01 A4 */	bne lbl_8007ADDC
/* 8007AC3C  88 7F 00 88 */	lbz r3, 0x88(r31)
/* 8007AC40  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8007AC44  41 82 01 98 */	beq lbl_8007ADDC
/* 8007AC48  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8007AC4C  40 82 01 58 */	bne lbl_8007ADA4
/* 8007AC50  88 1F 00 90 */	lbz r0, 0x90(r31)
/* 8007AC54  28 00 00 FF */	cmplwi r0, 0xff
/* 8007AC58  40 80 00 98 */	bge lbl_8007ACF0
/* 8007AC5C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8007AC60  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8007AC64  C0 03 00 00 */	lfs f0, 0(r3)
/* 8007AC68  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007AC6C  40 82 00 84 */	bne lbl_8007ACF0
/* 8007AC70  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8007AC74  C0 03 00 04 */	lfs f0, 4(r3)
/* 8007AC78  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007AC7C  40 82 00 74 */	bne lbl_8007ACF0
/* 8007AC80  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8007AC84  C0 03 00 08 */	lfs f0, 8(r3)
/* 8007AC88  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007AC8C  40 82 00 64 */	bne lbl_8007ACF0
/* 8007AC90  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8007AC94  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8007AC98  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007AC9C  40 82 00 54 */	bne lbl_8007ACF0
/* 8007ACA0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8007ACA4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8007ACA8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007ACAC  40 82 00 44 */	bne lbl_8007ACF0
/* 8007ACB0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8007ACB4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8007ACB8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007ACBC  40 82 00 34 */	bne lbl_8007ACF0
/* 8007ACC0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8007ACC4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8007ACC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007ACCC  40 82 00 24 */	bne lbl_8007ACF0
/* 8007ACD0  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8007ACD4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8007ACD8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007ACDC  40 82 00 14 */	bne lbl_8007ACF0
/* 8007ACE0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8007ACE4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8007ACE8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007ACEC  41 82 00 10 */	beq lbl_8007ACFC
lbl_8007ACF0:
/* 8007ACF0  38 00 00 01 */	li r0, 1
/* 8007ACF4  98 1F 00 89 */	stb r0, 0x89(r31)
/* 8007ACF8  48 00 00 84 */	b lbl_8007AD7C
lbl_8007ACFC:
/* 8007ACFC  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8007AD00  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 8007AD04  FC 02 18 00 */	fcmpu cr0, f2, f3
/* 8007AD08  40 82 00 3C */	bne lbl_8007AD44
/* 8007AD0C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8007AD10  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8007AD14  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007AD18  40 82 00 2C */	bne lbl_8007AD44
/* 8007AD1C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8007AD20  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8007AD24  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007AD28  40 82 00 1C */	bne lbl_8007AD44
/* 8007AD2C  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8007AD30  48 2C B7 81 */	bl PSMTXCopy
/* 8007AD34  88 1F 00 91 */	lbz r0, 0x91(r31)
/* 8007AD38  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8007AD3C  40 82 00 40 */	bne lbl_8007AD7C
/* 8007AD40  48 00 00 9C */	b lbl_8007ADDC
lbl_8007AD44:
/* 8007AD44  EC 03 10 28 */	fsubs f0, f3, f2
/* 8007AD48  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 8007AD4C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8007AD50  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8007AD54  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8007AD58  EC 01 00 28 */	fsubs f0, f1, f0
/* 8007AD5C  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8007AD60  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8007AD64  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8007AD68  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8007AD6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8007AD70  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 8007AD74  38 00 00 00 */	li r0, 0
/* 8007AD78  98 1F 00 89 */	stb r0, 0x89(r31)
lbl_8007AD7C:
/* 8007AD7C  88 7F 00 90 */	lbz r3, 0x90(r31)
/* 8007AD80  28 03 00 FF */	cmplwi r3, 0xff
/* 8007AD84  41 80 00 10 */	blt lbl_8007AD94
/* 8007AD88  38 00 00 00 */	li r0, 0
/* 8007AD8C  98 1F 00 90 */	stb r0, 0x90(r31)
/* 8007AD90  48 00 00 0C */	b lbl_8007AD9C
lbl_8007AD94:
/* 8007AD94  38 03 00 01 */	addi r0, r3, 1
/* 8007AD98  98 1F 00 90 */	stb r0, 0x90(r31)
lbl_8007AD9C:
/* 8007AD9C  7F E3 FB 78 */	mr r3, r31
/* 8007ADA0  4B FF E6 25 */	bl GlobalVtx__4cBgWFv
lbl_8007ADA4:
/* 8007ADA4  7F E3 FB 78 */	mr r3, r31
/* 8007ADA8  4B FF FE 1D */	bl CopyOldMtx__4cBgWFv
/* 8007ADAC  7F E3 FB 78 */	mr r3, r31
/* 8007ADB0  81 9F 00 04 */	lwz r12, 4(r31)
/* 8007ADB4  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8007ADB8  7D 89 03 A6 */	mtctr r12
/* 8007ADBC  4E 80 04 21 */	bctrl 
/* 8007ADC0  7F E3 FB 78 */	mr r3, r31
/* 8007ADC4  81 9F 00 04 */	lwz r12, 4(r31)
/* 8007ADC8  81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8007ADCC  7D 89 03 A6 */	mtctr r12
/* 8007ADD0  4E 80 04 21 */	bctrl 
/* 8007ADD4  7F E3 FB 78 */	mr r3, r31
/* 8007ADD8  4B FF F0 19 */	bl MakeNodeTree__4cBgWFv
lbl_8007ADDC:
/* 8007ADDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007ADE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007ADE4  7C 08 03 A6 */	mtlr r0
/* 8007ADE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007ADEC  4E 80 00 20 */	blr 
