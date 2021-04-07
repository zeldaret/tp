lbl_805AEF78:
/* 805AEF78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AEF7C  7C 08 02 A6 */	mflr r0
/* 805AEF80  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AEF84  39 61 00 30 */	addi r11, r1, 0x30
/* 805AEF88  4B DB 32 55 */	bl _savegpr_29
/* 805AEF8C  7C 7E 1B 78 */	mr r30, r3
/* 805AEF90  3C 60 80 5B */	lis r3, lit_3764@ha /* 0x805B3140@ha */
/* 805AEF94  3B A3 31 40 */	addi r29, r3, lit_3764@l /* 0x805B3140@l */
/* 805AEF98  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 805AEF9C  90 01 00 08 */	stw r0, 8(r1)
/* 805AEFA0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805AEFA4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805AEFA8  38 81 00 08 */	addi r4, r1, 8
/* 805AEFAC  4B A6 A8 4D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805AEFB0  7C 7F 1B 78 */	mr r31, r3
/* 805AEFB4  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 805AEFB8  2C 00 00 02 */	cmpwi r0, 2
/* 805AEFBC  41 82 01 40 */	beq lbl_805AF0FC
/* 805AEFC0  40 80 00 14 */	bge lbl_805AEFD4
/* 805AEFC4  2C 00 00 00 */	cmpwi r0, 0
/* 805AEFC8  41 82 00 18 */	beq lbl_805AEFE0
/* 805AEFCC  40 80 00 D4 */	bge lbl_805AF0A0
/* 805AEFD0  48 00 02 10 */	b lbl_805AF1E0
lbl_805AEFD4:
/* 805AEFD4  2C 00 00 04 */	cmpwi r0, 4
/* 805AEFD8  40 80 02 08 */	bge lbl_805AF1E0
/* 805AEFDC  48 00 01 90 */	b lbl_805AF16C
lbl_805AEFE0:
/* 805AEFE0  7F C3 F3 78 */	mr r3, r30
/* 805AEFE4  38 80 00 08 */	li r4, 8
/* 805AEFE8  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 805AEFEC  38 A0 00 00 */	li r5, 0
/* 805AEFF0  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 805AEFF4  4B FF F2 B1 */	bl anm_init__FP10b_bh_classifUcf
/* 805AEFF8  38 00 00 01 */	li r0, 1
/* 805AEFFC  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805AF000  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070104@ha */
/* 805AF004  38 03 01 04 */	addi r0, r3, 0x0104 /* 0x00070104@l */
/* 805AF008  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AF00C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 805AF010  38 81 00 10 */	addi r4, r1, 0x10
/* 805AF014  38 A0 FF FF */	li r5, -1
/* 805AF018  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 805AF01C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805AF020  7D 89 03 A6 */	mtctr r12
/* 805AF024  4E 80 04 21 */	bctrl 
/* 805AF028  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 805AF02C  38 03 FF FF */	addi r0, r3, -1
/* 805AF030  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 805AF034  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 805AF038  2C 00 00 00 */	cmpwi r0, 0
/* 805AF03C  41 81 01 A4 */	bgt lbl_805AF1E0
/* 805AF040  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 805AF044  20 00 00 01 */	subfic r0, r0, 1
/* 805AF048  54 00 10 3A */	slwi r0, r0, 2
/* 805AF04C  3C 60 80 5B */	lis r3, bh@ha /* 0x805B3414@ha */
/* 805AF050  38 63 34 14 */	addi r3, r3, bh@l /* 0x805B3414@l */
/* 805AF054  7C A3 00 2E */	lwzx r5, r3, r0
/* 805AF058  A8 05 06 6A */	lha r0, 0x66a(r5)
/* 805AF05C  2C 00 00 0B */	cmpwi r0, 0xb
/* 805AF060  40 82 01 80 */	bne lbl_805AF1E0
/* 805AF064  A8 05 05 62 */	lha r0, 0x562(r5)
/* 805AF068  2C 00 00 00 */	cmpwi r0, 0
/* 805AF06C  40 82 01 74 */	bne lbl_805AF1E0
/* 805AF070  38 80 00 00 */	li r4, 0
/* 805AF074  B0 85 06 94 */	sth r4, 0x694(r5)
/* 805AF078  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 805AF07C  20 00 00 01 */	subfic r0, r0, 1
/* 805AF080  54 00 10 3A */	slwi r0, r0, 2
/* 805AF084  7C 63 00 2E */	lwzx r3, r3, r0
/* 805AF088  B0 83 05 62 */	sth r4, 0x562(r3)
/* 805AF08C  38 00 00 01 */	li r0, 1
/* 805AF090  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805AF094  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 805AF098  98 1F 12 3C */	stb r0, 0x123c(r31)
/* 805AF09C  48 00 01 44 */	b lbl_805AF1E0
lbl_805AF0A0:
/* 805AF0A0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 805AF0A4  38 80 00 01 */	li r4, 1
/* 805AF0A8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805AF0AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805AF0B0  40 82 00 18 */	bne lbl_805AF0C8
/* 805AF0B4  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805AF0B8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805AF0BC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805AF0C0  41 82 00 08 */	beq lbl_805AF0C8
/* 805AF0C4  38 80 00 00 */	li r4, 0
lbl_805AF0C8:
/* 805AF0C8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805AF0CC  41 82 01 14 */	beq lbl_805AF1E0
/* 805AF0D0  7F C3 F3 78 */	mr r3, r30
/* 805AF0D4  38 80 00 09 */	li r4, 9
/* 805AF0D8  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 805AF0DC  38 A0 00 02 */	li r5, 2
/* 805AF0E0  FC 40 08 90 */	fmr f2, f1
/* 805AF0E4  4B FF F1 C1 */	bl anm_init__FP10b_bh_classifUcf
/* 805AF0E8  38 00 00 02 */	li r0, 2
/* 805AF0EC  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805AF0F0  38 00 00 28 */	li r0, 0x28
/* 805AF0F4  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 805AF0F8  48 00 00 E8 */	b lbl_805AF1E0
lbl_805AF0FC:
/* 805AF0FC  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 805AF100  2C 00 00 00 */	cmpwi r0, 0
/* 805AF104  40 82 00 DC */	bne lbl_805AF1E0
/* 805AF108  38 00 00 03 */	li r0, 3
/* 805AF10C  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805AF110  7F C3 F3 78 */	mr r3, r30
/* 805AF114  38 80 00 07 */	li r4, 7
/* 805AF118  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 805AF11C  38 A0 00 00 */	li r5, 0
/* 805AF120  FC 40 08 90 */	fmr f2, f1
/* 805AF124  4B FF F1 81 */	bl anm_init__FP10b_bh_classifUcf
/* 805AF128  38 00 00 02 */	li r0, 2
/* 805AF12C  98 1E 09 0C */	stb r0, 0x90c(r30)
/* 805AF130  38 00 00 01 */	li r0, 1
/* 805AF134  98 1E 0F 22 */	stb r0, 0xf22(r30)
/* 805AF138  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070101@ha */
/* 805AF13C  38 03 01 01 */	addi r0, r3, 0x0101 /* 0x00070101@l */
/* 805AF140  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AF144  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 805AF148  38 81 00 0C */	addi r4, r1, 0xc
/* 805AF14C  38 A0 FF FF */	li r5, -1
/* 805AF150  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 805AF154  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805AF158  7D 89 03 A6 */	mtctr r12
/* 805AF15C  4E 80 04 21 */	bctrl 
/* 805AF160  38 00 00 14 */	li r0, 0x14
/* 805AF164  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 805AF168  48 00 00 78 */	b lbl_805AF1E0
lbl_805AF16C:
/* 805AF16C  38 7E 09 14 */	addi r3, r30, 0x914
/* 805AF170  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 805AF174  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 805AF178  C0 7D 00 64 */	lfs f3, 0x64(r29)
/* 805AF17C  4B CC 08 C1 */	bl cLib_addCalc2__FPffff
/* 805AF180  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 805AF184  2C 00 00 00 */	cmpwi r0, 0
/* 805AF188  40 82 00 18 */	bne lbl_805AF1A0
/* 805AF18C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 805AF190  38 80 C0 00 */	li r4, -16384
/* 805AF194  38 A0 00 04 */	li r5, 4
/* 805AF198  38 C0 02 00 */	li r6, 0x200
/* 805AF19C  4B CC 14 6D */	bl cLib_addCalcAngleS2__FPssss
lbl_805AF1A0:
/* 805AF1A0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 805AF1A4  38 80 00 01 */	li r4, 1
/* 805AF1A8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805AF1AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805AF1B0  40 82 00 18 */	bne lbl_805AF1C8
/* 805AF1B4  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805AF1B8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805AF1BC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805AF1C0  41 82 00 08 */	beq lbl_805AF1C8
/* 805AF1C4  38 80 00 00 */	li r4, 0
lbl_805AF1C8:
/* 805AF1C8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805AF1CC  41 82 00 14 */	beq lbl_805AF1E0
/* 805AF1D0  38 00 00 0B */	li r0, 0xb
/* 805AF1D4  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 805AF1D8  38 00 00 00 */	li r0, 0
/* 805AF1DC  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_805AF1E0:
/* 805AF1E0  39 61 00 30 */	addi r11, r1, 0x30
/* 805AF1E4  4B DB 30 45 */	bl _restgpr_29
/* 805AF1E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AF1EC  7C 08 03 A6 */	mtlr r0
/* 805AF1F0  38 21 00 30 */	addi r1, r1, 0x30
/* 805AF1F4  4E 80 00 20 */	blr 
