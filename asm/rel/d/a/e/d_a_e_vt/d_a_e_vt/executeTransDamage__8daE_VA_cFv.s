lbl_807C8860:
/* 807C8860  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807C8864  7C 08 02 A6 */	mflr r0
/* 807C8868  90 01 00 24 */	stw r0, 0x24(r1)
/* 807C886C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807C8870  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807C8874  7C 7E 1B 78 */	mr r30, r3
/* 807C8878  3C 60 80 7D */	lis r3, lit_3907@ha
/* 807C887C  3B E3 EC A8 */	addi r31, r3, lit_3907@l
/* 807C8880  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 807C8884  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 807C8888  41 82 00 28 */	beq lbl_807C88B0
/* 807C888C  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 807C8890  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 807C8894  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 807C8898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C889C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C88A0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807C88A4  80 03 05 78 */	lwz r0, 0x578(r3)
/* 807C88A8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 807C88AC  90 03 05 78 */	stw r0, 0x578(r3)
lbl_807C88B0:
/* 807C88B0  80 1E 13 20 */	lwz r0, 0x1320(r30)
/* 807C88B4  2C 00 00 01 */	cmpwi r0, 1
/* 807C88B8  41 82 00 E8 */	beq lbl_807C89A0
/* 807C88BC  40 80 00 10 */	bge lbl_807C88CC
/* 807C88C0  2C 00 00 00 */	cmpwi r0, 0
/* 807C88C4  40 80 00 14 */	bge lbl_807C88D8
/* 807C88C8  48 00 01 A4 */	b lbl_807C8A6C
lbl_807C88CC:
/* 807C88CC  2C 00 00 03 */	cmpwi r0, 3
/* 807C88D0  40 80 01 9C */	bge lbl_807C8A6C
/* 807C88D4  48 00 01 20 */	b lbl_807C89F4
lbl_807C88D8:
/* 807C88D8  88 7E 13 8F */	lbz r3, 0x138f(r30)
/* 807C88DC  38 03 00 01 */	addi r0, r3, 1
/* 807C88E0  98 1E 13 8F */	stb r0, 0x138f(r30)
/* 807C88E4  88 1E 13 8F */	lbz r0, 0x138f(r30)
/* 807C88E8  28 00 00 05 */	cmplwi r0, 5
/* 807C88EC  41 80 00 38 */	blt lbl_807C8924
/* 807C88F0  7F C3 F3 78 */	mr r3, r30
/* 807C88F4  38 80 00 0B */	li r4, 0xb
/* 807C88F8  38 A0 00 00 */	li r5, 0
/* 807C88FC  4B FF B0 1D */	bl setActionMode__8daE_VA_cFii
/* 807C8900  38 00 00 00 */	li r0, 0
/* 807C8904  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807C8908  80 1E 1C C8 */	lwz r0, 0x1cc8(r30)
/* 807C890C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C8910  90 1E 1C C8 */	stw r0, 0x1cc8(r30)
/* 807C8914  80 1E 1E 04 */	lwz r0, 0x1e04(r30)
/* 807C8918  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C891C  90 1E 1E 04 */	stw r0, 0x1e04(r30)
/* 807C8920  48 00 01 4C */	b lbl_807C8A6C
lbl_807C8924:
/* 807C8924  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C8928  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807C892C  7F C3 F3 78 */	mr r3, r30
/* 807C8930  38 80 00 28 */	li r4, 0x28
/* 807C8934  38 A0 00 00 */	li r5, 0
/* 807C8938  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C893C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C8940  4B FF AE D9 */	bl setBck__8daE_VA_cFiUcff
/* 807C8944  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032E@ha */
/* 807C8948  38 03 03 2E */	addi r0, r3, 0x032E /* 0x0007032E@l */
/* 807C894C  90 01 00 08 */	stw r0, 8(r1)
/* 807C8950  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C8954  38 81 00 08 */	addi r4, r1, 8
/* 807C8958  38 A0 FF FF */	li r5, -1
/* 807C895C  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C8960  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C8964  7D 89 03 A6 */	mtctr r12
/* 807C8968  4E 80 04 21 */	bctrl 
/* 807C896C  38 00 00 01 */	li r0, 1
/* 807C8970  90 1E 13 20 */	stw r0, 0x1320(r30)
/* 807C8974  98 1E 13 7F */	stb r0, 0x137f(r30)
/* 807C8978  80 1E 1C C8 */	lwz r0, 0x1cc8(r30)
/* 807C897C  60 00 00 01 */	ori r0, r0, 1
/* 807C8980  90 1E 1C C8 */	stw r0, 0x1cc8(r30)
/* 807C8984  80 1E 1E 04 */	lwz r0, 0x1e04(r30)
/* 807C8988  60 00 00 01 */	ori r0, r0, 1
/* 807C898C  90 1E 1E 04 */	stw r0, 0x1e04(r30)
/* 807C8990  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807C8994  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 807C8998  90 1E 1C D8 */	stw r0, 0x1cd8(r30)
/* 807C899C  90 1E 1E 14 */	stw r0, 0x1e14(r30)
lbl_807C89A0:
/* 807C89A0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807C89A4  38 80 00 01 */	li r4, 1
/* 807C89A8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C89AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C89B0  40 82 00 18 */	bne lbl_807C89C8
/* 807C89B4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C89B8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C89BC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C89C0  41 82 00 08 */	beq lbl_807C89C8
/* 807C89C4  38 80 00 00 */	li r4, 0
lbl_807C89C8:
/* 807C89C8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C89CC  41 82 00 A0 */	beq lbl_807C8A6C
/* 807C89D0  7F C3 F3 78 */	mr r3, r30
/* 807C89D4  38 80 00 29 */	li r4, 0x29
/* 807C89D8  38 A0 00 00 */	li r5, 0
/* 807C89DC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C89E0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C89E4  4B FF AE 35 */	bl setBck__8daE_VA_cFiUcff
/* 807C89E8  38 00 00 02 */	li r0, 2
/* 807C89EC  90 1E 13 20 */	stw r0, 0x1320(r30)
/* 807C89F0  48 00 00 7C */	b lbl_807C8A6C
lbl_807C89F4:
/* 807C89F4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807C89F8  38 63 00 0C */	addi r3, r3, 0xc
/* 807C89FC  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 807C8A00  4B B5 FA 2C */	b checkPass__12J3DFrameCtrlFf
/* 807C8A04  2C 03 00 00 */	cmpwi r3, 0
/* 807C8A08  41 82 00 24 */	beq lbl_807C8A2C
/* 807C8A0C  38 00 00 00 */	li r0, 0
/* 807C8A10  98 1E 13 7F */	stb r0, 0x137f(r30)
/* 807C8A14  80 1E 1C C8 */	lwz r0, 0x1cc8(r30)
/* 807C8A18  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C8A1C  90 1E 1C C8 */	stw r0, 0x1cc8(r30)
/* 807C8A20  80 1E 1E 04 */	lwz r0, 0x1e04(r30)
/* 807C8A24  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C8A28  90 1E 1E 04 */	stw r0, 0x1e04(r30)
lbl_807C8A2C:
/* 807C8A2C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807C8A30  38 80 00 01 */	li r4, 1
/* 807C8A34  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C8A38  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C8A3C  40 82 00 18 */	bne lbl_807C8A54
/* 807C8A40  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C8A44  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C8A48  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C8A4C  41 82 00 08 */	beq lbl_807C8A54
/* 807C8A50  38 80 00 00 */	li r4, 0
lbl_807C8A54:
/* 807C8A54  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C8A58  41 82 00 14 */	beq lbl_807C8A6C
/* 807C8A5C  7F C3 F3 78 */	mr r3, r30
/* 807C8A60  38 80 00 07 */	li r4, 7
/* 807C8A64  38 A0 00 00 */	li r5, 0
/* 807C8A68  4B FF AE B1 */	bl setActionMode__8daE_VA_cFii
lbl_807C8A6C:
/* 807C8A6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807C8A70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807C8A74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807C8A78  7C 08 03 A6 */	mtlr r0
/* 807C8A7C  38 21 00 20 */	addi r1, r1, 0x20
/* 807C8A80  4E 80 00 20 */	blr 
