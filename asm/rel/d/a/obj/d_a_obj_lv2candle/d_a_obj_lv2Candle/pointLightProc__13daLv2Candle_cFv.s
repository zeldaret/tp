lbl_8058E780:
/* 8058E780  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058E784  7C 08 02 A6 */	mflr r0
/* 8058E788  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058E78C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058E790  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058E794  7C 7E 1B 78 */	mr r30, r3
/* 8058E798  3C 60 80 59 */	lis r3, lit_3637@ha
/* 8058E79C  3B E3 F1 30 */	addi r31, r3, lit_3637@l
/* 8058E7A0  88 1E 07 0C */	lbz r0, 0x70c(r30)
/* 8058E7A4  28 00 00 00 */	cmplwi r0, 0
/* 8058E7A8  41 82 00 C0 */	beq lbl_8058E868
/* 8058E7AC  88 1E 06 F9 */	lbz r0, 0x6f9(r30)
/* 8058E7B0  28 00 00 00 */	cmplwi r0, 0
/* 8058E7B4  41 82 01 D0 */	beq lbl_8058E984
/* 8058E7B8  88 1E 06 FE */	lbz r0, 0x6fe(r30)
/* 8058E7BC  28 00 00 0F */	cmplwi r0, 0xf
/* 8058E7C0  41 82 01 C4 */	beq lbl_8058E984
/* 8058E7C4  38 7E 07 10 */	addi r3, r30, 0x710
/* 8058E7C8  3C 80 80 59 */	lis r4, l_HIO@ha
/* 8058E7CC  38 A4 F2 AC */	addi r5, r4, l_HIO@l
/* 8058E7D0  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8058E7D4  54 00 10 3A */	slwi r0, r0, 2
/* 8058E7D8  7C 85 02 14 */	add r4, r5, r0
/* 8058E7DC  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8058E7E0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8058E7E4  C0 65 00 0C */	lfs f3, 0xc(r5)
/* 8058E7E8  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8058E7EC  4B CE 11 90 */	b cLib_addCalc__FPfffff
/* 8058E7F0  3C 60 80 59 */	lis r3, l_HIO@ha
/* 8058E7F4  38 63 F2 AC */	addi r3, r3, l_HIO@l
/* 8058E7F8  C0 43 00 08 */	lfs f2, 8(r3)
/* 8058E7FC  C0 1E 07 10 */	lfs f0, 0x710(r30)
/* 8058E800  EC 02 00 32 */	fmuls f0, f2, f0
/* 8058E804  D0 1E 07 28 */	stfs f0, 0x728(r30)
/* 8058E808  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8058E80C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8058E810  40 82 01 74 */	bne lbl_8058E984
/* 8058E814  88 7E 07 0D */	lbz r3, 0x70d(r30)
/* 8058E818  28 03 00 00 */	cmplwi r3, 0
/* 8058E81C  40 82 00 40 */	bne lbl_8058E85C
/* 8058E820  88 7E 07 0E */	lbz r3, 0x70e(r30)
/* 8058E824  38 03 00 01 */	addi r0, r3, 1
/* 8058E828  98 1E 07 0E */	stb r0, 0x70e(r30)
/* 8058E82C  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8058E830  28 00 00 05 */	cmplwi r0, 5
/* 8058E834  40 81 00 0C */	ble lbl_8058E840
/* 8058E838  38 00 00 00 */	li r0, 0
/* 8058E83C  98 1E 07 0E */	stb r0, 0x70e(r30)
lbl_8058E840:
/* 8058E840  3C 60 80 59 */	lis r3, l_HIO@ha
/* 8058E844  38 63 F2 AC */	addi r3, r3, l_HIO@l
/* 8058E848  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8058E84C  7C 63 02 14 */	add r3, r3, r0
/* 8058E850  88 03 00 28 */	lbz r0, 0x28(r3)
/* 8058E854  98 1E 07 0D */	stb r0, 0x70d(r30)
/* 8058E858  48 00 01 2C */	b lbl_8058E984
lbl_8058E85C:
/* 8058E85C  38 03 FF FF */	addi r0, r3, -1
/* 8058E860  98 1E 07 0D */	stb r0, 0x70d(r30)
/* 8058E864  48 00 01 20 */	b lbl_8058E984
lbl_8058E868:
/* 8058E868  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 8058E86C  90 01 00 08 */	stw r0, 8(r1)
/* 8058E870  3C 60 80 59 */	lis r3, l_HIO@ha
/* 8058E874  38 A3 F2 AC */	addi r5, r3, l_HIO@l
/* 8058E878  88 05 00 31 */	lbz r0, 0x31(r5)
/* 8058E87C  98 01 00 08 */	stb r0, 8(r1)
/* 8058E880  88 05 00 32 */	lbz r0, 0x32(r5)
/* 8058E884  98 01 00 09 */	stb r0, 9(r1)
/* 8058E888  88 05 00 33 */	lbz r0, 0x33(r5)
/* 8058E88C  98 01 00 0A */	stb r0, 0xa(r1)
/* 8058E890  88 1E 06 F9 */	lbz r0, 0x6f9(r30)
/* 8058E894  28 00 00 00 */	cmplwi r0, 0
/* 8058E898  41 82 00 B0 */	beq lbl_8058E948
/* 8058E89C  88 1E 06 FE */	lbz r0, 0x6fe(r30)
/* 8058E8A0  28 00 00 0F */	cmplwi r0, 0xf
/* 8058E8A4  41 82 00 88 */	beq lbl_8058E92C
/* 8058E8A8  38 7E 07 10 */	addi r3, r30, 0x710
/* 8058E8AC  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8058E8B0  54 00 10 3A */	slwi r0, r0, 2
/* 8058E8B4  7C 85 02 14 */	add r4, r5, r0
/* 8058E8B8  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8058E8BC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8058E8C0  C0 65 00 0C */	lfs f3, 0xc(r5)
/* 8058E8C4  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8058E8C8  4B CE 10 B4 */	b cLib_addCalc__FPfffff
/* 8058E8CC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8058E8D0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8058E8D4  40 82 00 8C */	bne lbl_8058E960
/* 8058E8D8  88 7E 07 0D */	lbz r3, 0x70d(r30)
/* 8058E8DC  28 03 00 00 */	cmplwi r3, 0
/* 8058E8E0  40 82 00 40 */	bne lbl_8058E920
/* 8058E8E4  88 7E 07 0E */	lbz r3, 0x70e(r30)
/* 8058E8E8  38 03 00 01 */	addi r0, r3, 1
/* 8058E8EC  98 1E 07 0E */	stb r0, 0x70e(r30)
/* 8058E8F0  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8058E8F4  28 00 00 05 */	cmplwi r0, 5
/* 8058E8F8  40 81 00 0C */	ble lbl_8058E904
/* 8058E8FC  38 00 00 00 */	li r0, 0
/* 8058E900  98 1E 07 0E */	stb r0, 0x70e(r30)
lbl_8058E904:
/* 8058E904  3C 60 80 59 */	lis r3, l_HIO@ha
/* 8058E908  38 63 F2 AC */	addi r3, r3, l_HIO@l
/* 8058E90C  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8058E910  7C 63 02 14 */	add r3, r3, r0
/* 8058E914  88 03 00 28 */	lbz r0, 0x28(r3)
/* 8058E918  98 1E 07 0D */	stb r0, 0x70d(r30)
/* 8058E91C  48 00 00 44 */	b lbl_8058E960
lbl_8058E920:
/* 8058E920  38 03 FF FF */	addi r0, r3, -1
/* 8058E924  98 1E 07 0D */	stb r0, 0x70d(r30)
/* 8058E928  48 00 00 38 */	b lbl_8058E960
lbl_8058E92C:
/* 8058E92C  38 7E 07 10 */	addi r3, r30, 0x710
/* 8058E930  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8058E934  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 8058E938  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8058E93C  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8058E940  4B CE 10 3C */	b cLib_addCalc__FPfffff
/* 8058E944  48 00 00 1C */	b lbl_8058E960
lbl_8058E948:
/* 8058E948  38 7E 07 10 */	addi r3, r30, 0x710
/* 8058E94C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8058E950  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 8058E954  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8058E958  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8058E95C  4B CE 10 20 */	b cLib_addCalc__FPfffff
lbl_8058E960:
/* 8058E960  C0 3E 07 10 */	lfs f1, 0x710(r30)
/* 8058E964  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8058E968  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058E96C  4C 41 13 82 */	cror 2, 1, 2
/* 8058E970  40 82 00 14 */	bne lbl_8058E984
/* 8058E974  38 7E 07 00 */	addi r3, r30, 0x700
/* 8058E978  38 81 00 08 */	addi r4, r1, 8
/* 8058E97C  38 A0 00 00 */	li r5, 0
/* 8058E980  4B C1 B3 E0 */	b dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_8058E984:
/* 8058E984  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058E988  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058E98C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058E990  7C 08 03 A6 */	mtlr r0
/* 8058E994  38 21 00 20 */	addi r1, r1, 0x20
/* 8058E998  4E 80 00 20 */	blr 
