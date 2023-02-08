lbl_800ADB78:
/* 800ADB78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800ADB7C  7C 08 02 A6 */	mflr r0
/* 800ADB80  90 01 00 34 */	stw r0, 0x34(r1)
/* 800ADB84  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800ADB88  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800ADB8C  7C DE 33 78 */	mr r30, r6
/* 800ADB90  80 63 20 60 */	lwz r3, 0x2060(r3)
/* 800ADB94  83 E3 00 20 */	lwz r31, 0x20(r3)
/* 800ADB98  7C 80 07 35 */	extsh. r0, r4
/* 800ADB9C  40 82 00 0C */	bne lbl_800ADBA8
/* 800ADBA0  7C A0 07 35 */	extsh. r0, r5
/* 800ADBA4  41 82 00 48 */	beq lbl_800ADBEC
lbl_800ADBA8:
/* 800ADBA8  7C 83 23 78 */	mr r3, r4
/* 800ADBAC  7C A4 2B 78 */	mr r4, r5
/* 800ADBB0  38 A0 00 00 */	li r5, 0
/* 800ADBB4  38 C1 00 18 */	addi r6, r1, 0x18
/* 800ADBB8  48 28 BC C1 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 800ADBBC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800ADBC0  D0 01 00 08 */	stfs f0, 8(r1)
/* 800ADBC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 800ADBC8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800ADBCC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800ADBD0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800ADBD4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 800ADBD8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800ADBDC  38 61 00 18 */	addi r3, r1, 0x18
/* 800ADBE0  38 81 00 08 */	addi r4, r1, 8
/* 800ADBE4  7F E5 FB 78 */	mr r5, r31
/* 800ADBE8  4B F5 EF 75 */	bl mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion
lbl_800ADBEC:
/* 800ADBEC  7F C0 07 35 */	extsh. r0, r30
/* 800ADBF0  41 82 00 48 */	beq lbl_800ADC38
/* 800ADBF4  38 60 00 00 */	li r3, 0
/* 800ADBF8  38 80 00 00 */	li r4, 0
/* 800ADBFC  7F C5 F3 78 */	mr r5, r30
/* 800ADC00  38 C1 00 18 */	addi r6, r1, 0x18
/* 800ADC04  48 28 BC 75 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 800ADC08  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800ADC0C  D0 01 00 08 */	stfs f0, 8(r1)
/* 800ADC10  C0 1F 00 04 */	lfs f0, 4(r31)
/* 800ADC14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800ADC18  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800ADC1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800ADC20  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 800ADC24  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800ADC28  38 61 00 18 */	addi r3, r1, 0x18
/* 800ADC2C  38 81 00 08 */	addi r4, r1, 8
/* 800ADC30  7F E5 FB 78 */	mr r5, r31
/* 800ADC34  4B F5 EF 29 */	bl mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion
lbl_800ADC38:
/* 800ADC38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800ADC3C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800ADC40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800ADC44  7C 08 03 A6 */	mtlr r0
/* 800ADC48  38 21 00 30 */	addi r1, r1, 0x30
/* 800ADC4C  4E 80 00 20 */	blr 
