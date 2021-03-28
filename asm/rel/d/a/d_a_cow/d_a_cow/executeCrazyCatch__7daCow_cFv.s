lbl_8065E888:
/* 8065E888  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8065E88C  7C 08 02 A6 */	mflr r0
/* 8065E890  90 01 00 24 */	stw r0, 0x24(r1)
/* 8065E894  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8065E898  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8065E89C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065E8A0  93 C1 00 08 */	stw r30, 8(r1)
/* 8065E8A4  7C 7E 1B 78 */	mr r30, r3
/* 8065E8A8  3C 80 80 66 */	lis r4, lit_3987@ha
/* 8065E8AC  3B E4 2D B0 */	addi r31, r4, lit_3987@l
/* 8065E8B0  C3 FF 01 04 */	lfs f31, 0x104(r31)
/* 8065E8B4  88 83 0C 60 */	lbz r4, 0xc60(r3)
/* 8065E8B8  2C 04 00 02 */	cmpwi r4, 2
/* 8065E8BC  41 82 00 BC */	beq lbl_8065E978
/* 8065E8C0  40 80 00 10 */	bge lbl_8065E8D0
/* 8065E8C4  2C 04 00 00 */	cmpwi r4, 0
/* 8065E8C8  40 80 00 14 */	bge lbl_8065E8DC
/* 8065E8CC  48 00 01 70 */	b lbl_8065EA3C
lbl_8065E8D0:
/* 8065E8D0  2C 04 00 05 */	cmpwi r4, 5
/* 8065E8D4  40 80 01 68 */	bge lbl_8065EA3C
/* 8065E8D8  48 00 01 00 */	b lbl_8065E9D8
lbl_8065E8DC:
/* 8065E8DC  38 80 00 01 */	li r4, 1
/* 8065E8E0  98 9E 0C B5 */	stb r4, 0xcb5(r30)
/* 8065E8E4  88 1E 0C 60 */	lbz r0, 0xc60(r30)
/* 8065E8E8  28 00 00 00 */	cmplwi r0, 0
/* 8065E8EC  40 82 00 50 */	bne lbl_8065E93C
/* 8065E8F0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8065E8F4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065E8F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065E8FC  40 82 00 18 */	bne lbl_8065E914
/* 8065E900  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065E904  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065E908  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065E90C  41 82 00 08 */	beq lbl_8065E914
/* 8065E910  38 80 00 00 */	li r4, 0
lbl_8065E914:
/* 8065E914  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065E918  41 82 00 24 */	beq lbl_8065E93C
/* 8065E91C  7F C3 F3 78 */	mr r3, r30
/* 8065E920  38 80 00 05 */	li r4, 5
/* 8065E924  38 A0 00 02 */	li r5, 2
/* 8065E928  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065E92C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065E930  4B FF 9E 01 */	bl setBck__7daCow_cFiUcff
/* 8065E934  38 00 00 01 */	li r0, 1
/* 8065E938  98 1E 0C 60 */	stb r0, 0xc60(r30)
lbl_8065E93C:
/* 8065E93C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065E940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8065E944  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8065E948  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 8065E94C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065E950  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8065E954  40 82 00 E8 */	bne lbl_8065EA3C
/* 8065E958  7F C3 F3 78 */	mr r3, r30
/* 8065E95C  38 80 00 10 */	li r4, 0x10
/* 8065E960  38 A0 00 00 */	li r5, 0
/* 8065E964  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065E968  4B FF 9D C9 */	bl setBck__7daCow_cFiUcff
/* 8065E96C  38 00 00 02 */	li r0, 2
/* 8065E970  98 1E 0C 60 */	stb r0, 0xc60(r30)
/* 8065E974  48 00 00 C8 */	b lbl_8065EA3C
lbl_8065E978:
/* 8065E978  C3 FF 01 08 */	lfs f31, 0x108(r31)
/* 8065E97C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8065E980  38 80 00 01 */	li r4, 1
/* 8065E984  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065E988  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065E98C  40 82 00 18 */	bne lbl_8065E9A4
/* 8065E990  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065E994  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065E998  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065E99C  41 82 00 08 */	beq lbl_8065E9A4
/* 8065E9A0  38 80 00 00 */	li r4, 0
lbl_8065E9A4:
/* 8065E9A4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065E9A8  41 82 00 94 */	beq lbl_8065EA3C
/* 8065E9AC  7F C3 F3 78 */	mr r3, r30
/* 8065E9B0  38 80 00 12 */	li r4, 0x12
/* 8065E9B4  38 A0 00 02 */	li r5, 2
/* 8065E9B8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065E9BC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065E9C0  4B FF 9D 71 */	bl setBck__7daCow_cFiUcff
/* 8065E9C4  38 00 00 3C */	li r0, 0x3c
/* 8065E9C8  90 1E 0C 90 */	stw r0, 0xc90(r30)
/* 8065E9CC  38 00 00 04 */	li r0, 4
/* 8065E9D0  98 1E 0C 60 */	stb r0, 0xc60(r30)
/* 8065E9D4  48 00 00 68 */	b lbl_8065EA3C
lbl_8065E9D8:
/* 8065E9D8  C3 FF 01 08 */	lfs f31, 0x108(r31)
/* 8065E9DC  80 1E 0C 90 */	lwz r0, 0xc90(r30)
/* 8065E9E0  2C 00 00 00 */	cmpwi r0, 0
/* 8065E9E4  40 82 00 58 */	bne lbl_8065EA3C
/* 8065E9E8  28 04 00 03 */	cmplwi r4, 3
/* 8065E9EC  40 82 00 2C */	bne lbl_8065EA18
/* 8065E9F0  38 80 00 12 */	li r4, 0x12
/* 8065E9F4  38 A0 00 02 */	li r5, 2
/* 8065E9F8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065E9FC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065EA00  4B FF 9D 31 */	bl setBck__7daCow_cFiUcff
/* 8065EA04  38 00 00 3C */	li r0, 0x3c
/* 8065EA08  90 1E 0C 90 */	stw r0, 0xc90(r30)
/* 8065EA0C  38 00 00 04 */	li r0, 4
/* 8065EA10  98 1E 0C 60 */	stb r0, 0xc60(r30)
/* 8065EA14  48 00 00 28 */	b lbl_8065EA3C
lbl_8065EA18:
/* 8065EA18  38 80 00 11 */	li r4, 0x11
/* 8065EA1C  38 A0 00 02 */	li r5, 2
/* 8065EA20  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065EA24  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065EA28  4B FF 9D 09 */	bl setBck__7daCow_cFiUcff
/* 8065EA2C  38 00 00 3C */	li r0, 0x3c
/* 8065EA30  90 1E 0C 90 */	stw r0, 0xc90(r30)
/* 8065EA34  38 00 00 03 */	li r0, 3
/* 8065EA38  98 1E 0C 60 */	stb r0, 0xc60(r30)
lbl_8065EA3C:
/* 8065EA3C  A0 7E 05 68 */	lhz r3, 0x568(r30)
/* 8065EA40  28 03 00 00 */	cmplwi r3, 0
/* 8065EA44  41 82 00 80 */	beq lbl_8065EAC4
/* 8065EA48  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8065EA4C  41 82 00 14 */	beq lbl_8065EA60
/* 8065EA50  7F C3 F3 78 */	mr r3, r30
/* 8065EA54  38 80 00 00 */	li r4, 0
/* 8065EA58  48 00 00 9D */	bl initCrazyThrow__7daCow_cFi
/* 8065EA5C  48 00 00 5C */	b lbl_8065EAB8
lbl_8065EA60:
/* 8065EA60  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8065EA64  41 82 00 14 */	beq lbl_8065EA78
/* 8065EA68  7F C3 F3 78 */	mr r3, r30
/* 8065EA6C  38 80 00 01 */	li r4, 1
/* 8065EA70  48 00 00 85 */	bl initCrazyThrow__7daCow_cFi
/* 8065EA74  48 00 00 44 */	b lbl_8065EAB8
lbl_8065EA78:
/* 8065EA78  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8065EA7C  41 82 00 3C */	beq lbl_8065EAB8
/* 8065EA80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065EA84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8065EA88  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8065EA8C  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 8065EA90  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065EA94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065EA98  40 82 00 14 */	bne lbl_8065EAAC
/* 8065EA9C  7F C3 F3 78 */	mr r3, r30
/* 8065EAA0  38 80 00 00 */	li r4, 0
/* 8065EAA4  48 00 05 E5 */	bl initCrazyAttack__7daCow_cFi
/* 8065EAA8  48 00 00 10 */	b lbl_8065EAB8
lbl_8065EAAC:
/* 8065EAAC  7F C3 F3 78 */	mr r3, r30
/* 8065EAB0  38 80 00 01 */	li r4, 1
/* 8065EAB4  48 00 05 D5 */	bl initCrazyAttack__7daCow_cFi
lbl_8065EAB8:
/* 8065EAB8  38 00 00 00 */	li r0, 0
/* 8065EABC  B0 1E 05 68 */	sth r0, 0x568(r30)
/* 8065EAC0  48 00 00 14 */	b lbl_8065EAD4
lbl_8065EAC4:
/* 8065EAC4  7F C3 F3 78 */	mr r3, r30
/* 8065EAC8  FC 20 F8 90 */	fmr f1, f31
/* 8065EACC  38 80 00 01 */	li r4, 1
/* 8065EAD0  4B FF F1 39 */	bl calcCatchPos__7daCow_cFfi
lbl_8065EAD4:
/* 8065EAD4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8065EAD8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8065EADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8065EAE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8065EAE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8065EAE8  7C 08 03 A6 */	mtlr r0
/* 8065EAEC  38 21 00 20 */	addi r1, r1, 0x20
/* 8065EAF0  4E 80 00 20 */	blr 
