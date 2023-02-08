lbl_806EDAA8:
/* 806EDAA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806EDAAC  7C 08 02 A6 */	mflr r0
/* 806EDAB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806EDAB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806EDAB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806EDABC  7C 7E 1B 78 */	mr r30, r3
/* 806EDAC0  3C 60 80 6F */	lis r3, lit_3966@ha /* 0x806F0860@ha */
/* 806EDAC4  3B E3 08 60 */	addi r31, r3, lit_3966@l /* 0x806F0860@l */
/* 806EDAC8  38 00 00 0A */	li r0, 0xa
/* 806EDACC  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
/* 806EDAD0  38 60 00 00 */	li r3, 0
/* 806EDAD4  98 7E 05 66 */	stb r3, 0x566(r30)
/* 806EDAD8  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 806EDADC  2C 00 00 01 */	cmpwi r0, 1
/* 806EDAE0  41 82 01 54 */	beq lbl_806EDC34
/* 806EDAE4  40 80 00 10 */	bge lbl_806EDAF4
/* 806EDAE8  2C 00 00 00 */	cmpwi r0, 0
/* 806EDAEC  40 80 00 14 */	bge lbl_806EDB00
/* 806EDAF0  48 00 02 A4 */	b lbl_806EDD94
lbl_806EDAF4:
/* 806EDAF4  2C 00 00 03 */	cmpwi r0, 3
/* 806EDAF8  40 80 02 9C */	bge lbl_806EDD94
/* 806EDAFC  48 00 02 44 */	b lbl_806EDD40
lbl_806EDB00:
/* 806EDB00  80 9E 0A B4 */	lwz r4, 0xab4(r30)
/* 806EDB04  28 04 00 00 */	cmplwi r4, 0
/* 806EDB08  41 82 00 1C */	beq lbl_806EDB24
/* 806EDB0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EDB10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EDB14  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806EDB18  4B 98 67 39 */	bl Release__4cBgSFP9dBgW_Base
/* 806EDB1C  38 00 00 00 */	li r0, 0
/* 806EDB20  90 1E 0A B4 */	stw r0, 0xab4(r30)
lbl_806EDB24:
/* 806EDB24  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806EDB28  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806EDB2C  80 1E 0D 24 */	lwz r0, 0xd24(r30)
/* 806EDB30  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806EDB34  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 806EDB38  7F C3 F3 78 */	mr r3, r30
/* 806EDB3C  38 80 00 00 */	li r4, 0
/* 806EDB40  4B FF D5 65 */	bl setTgSetBit__8daE_HZ_cFi
/* 806EDB44  38 00 00 01 */	li r0, 1
/* 806EDB48  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 806EDB4C  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EDB50  80 1E 06 CC */	lwz r0, 0x6cc(r30)
/* 806EDB54  2C 00 00 02 */	cmpwi r0, 2
/* 806EDB58  41 80 00 48 */	blt lbl_806EDBA0
/* 806EDB5C  7F C3 F3 78 */	mr r3, r30
/* 806EDB60  38 80 00 08 */	li r4, 8
/* 806EDB64  38 A0 00 00 */	li r5, 0
/* 806EDB68  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806EDB6C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EDB70  4B FF CB 21 */	bl setBck__8daE_HZ_cFiUcff
/* 806EDB74  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070217@ha */
/* 806EDB78  38 03 02 17 */	addi r0, r3, 0x0217 /* 0x00070217@l */
/* 806EDB7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EDB80  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EDB84  38 81 00 14 */	addi r4, r1, 0x14
/* 806EDB88  38 A0 FF FF */	li r5, -1
/* 806EDB8C  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EDB90  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EDB94  7D 89 03 A6 */	mtctr r12
/* 806EDB98  4E 80 04 21 */	bctrl 
/* 806EDB9C  48 00 00 90 */	b lbl_806EDC2C
lbl_806EDBA0:
/* 806EDBA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070213@ha */
/* 806EDBA4  38 03 02 13 */	addi r0, r3, 0x0213 /* 0x00070213@l */
/* 806EDBA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806EDBAC  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EDBB0  38 81 00 10 */	addi r4, r1, 0x10
/* 806EDBB4  38 A0 FF FF */	li r5, -1
/* 806EDBB8  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EDBBC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EDBC0  7D 89 03 A6 */	mtctr r12
/* 806EDBC4  4E 80 04 21 */	bctrl 
/* 806EDBC8  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 806EDBCC  2C 00 00 07 */	cmpwi r0, 7
/* 806EDBD0  40 82 00 20 */	bne lbl_806EDBF0
/* 806EDBD4  7F C3 F3 78 */	mr r3, r30
/* 806EDBD8  38 80 00 07 */	li r4, 7
/* 806EDBDC  38 A0 00 00 */	li r5, 0
/* 806EDBE0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806EDBE4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EDBE8  4B FF CA A9 */	bl setBck__8daE_HZ_cFiUcff
/* 806EDBEC  48 00 00 40 */	b lbl_806EDC2C
lbl_806EDBF0:
/* 806EDBF0  2C 00 00 03 */	cmpwi r0, 3
/* 806EDBF4  40 82 00 20 */	bne lbl_806EDC14
/* 806EDBF8  7F C3 F3 78 */	mr r3, r30
/* 806EDBFC  38 80 00 07 */	li r4, 7
/* 806EDC00  38 A0 00 00 */	li r5, 0
/* 806EDC04  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806EDC08  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EDC0C  4B FF CA 85 */	bl setBck__8daE_HZ_cFiUcff
/* 806EDC10  48 00 00 1C */	b lbl_806EDC2C
lbl_806EDC14:
/* 806EDC14  7F C3 F3 78 */	mr r3, r30
/* 806EDC18  38 80 00 07 */	li r4, 7
/* 806EDC1C  38 A0 00 00 */	li r5, 0
/* 806EDC20  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EDC24  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EDC28  4B FF CA 69 */	bl setBck__8daE_HZ_cFiUcff
lbl_806EDC2C:
/* 806EDC2C  7F C3 F3 78 */	mr r3, r30
/* 806EDC30  4B FF FA 99 */	bl initRollDamage__8daE_HZ_cFv
lbl_806EDC34:
/* 806EDC34  7F C3 F3 78 */	mr r3, r30
/* 806EDC38  38 80 00 07 */	li r4, 7
/* 806EDC3C  4B FF CA F9 */	bl checkBck__8daE_HZ_cFi
/* 806EDC40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EDC44  41 82 00 A8 */	beq lbl_806EDCEC
/* 806EDC48  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EDC4C  38 63 00 0C */	addi r3, r3, 0xc
/* 806EDC50  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 806EDC54  4B C3 A7 D9 */	bl checkPass__12J3DFrameCtrlFf
/* 806EDC58  2C 03 00 00 */	cmpwi r3, 0
/* 806EDC5C  41 82 00 30 */	beq lbl_806EDC8C
/* 806EDC60  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 806EDC64  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 806EDC68  90 01 00 0C */	stw r0, 0xc(r1)
/* 806EDC6C  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EDC70  38 81 00 0C */	addi r4, r1, 0xc
/* 806EDC74  38 A0 00 00 */	li r5, 0
/* 806EDC78  38 C0 FF FF */	li r6, -1
/* 806EDC7C  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EDC80  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EDC84  7D 89 03 A6 */	mtctr r12
/* 806EDC88  4E 80 04 21 */	bctrl 
lbl_806EDC8C:
/* 806EDC8C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806EDC90  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806EDC94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EDC98  40 81 00 30 */	ble lbl_806EDCC8
/* 806EDC9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007021A@ha */
/* 806EDCA0  38 03 02 1A */	addi r0, r3, 0x021A /* 0x0007021A@l */
/* 806EDCA4  90 01 00 08 */	stw r0, 8(r1)
/* 806EDCA8  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EDCAC  38 81 00 08 */	addi r4, r1, 8
/* 806EDCB0  38 A0 00 00 */	li r5, 0
/* 806EDCB4  38 C0 FF FF */	li r6, -1
/* 806EDCB8  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EDCBC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806EDCC0  7D 89 03 A6 */	mtctr r12
/* 806EDCC4  4E 80 04 21 */	bctrl 
lbl_806EDCC8:
/* 806EDCC8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EDCCC  38 63 00 0C */	addi r3, r3, 0xc
/* 806EDCD0  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806EDCD4  4B C3 A7 59 */	bl checkPass__12J3DFrameCtrlFf
/* 806EDCD8  2C 03 00 00 */	cmpwi r3, 0
/* 806EDCDC  41 82 00 48 */	beq lbl_806EDD24
/* 806EDCE0  38 00 00 01 */	li r0, 1
/* 806EDCE4  98 1E 06 F4 */	stb r0, 0x6f4(r30)
/* 806EDCE8  48 00 00 3C */	b lbl_806EDD24
lbl_806EDCEC:
/* 806EDCEC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EDCF0  38 80 00 01 */	li r4, 1
/* 806EDCF4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806EDCF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806EDCFC  40 82 00 18 */	bne lbl_806EDD14
/* 806EDD00  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EDD04  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806EDD08  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806EDD0C  41 82 00 08 */	beq lbl_806EDD14
/* 806EDD10  38 80 00 00 */	li r4, 0
lbl_806EDD14:
/* 806EDD14  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806EDD18  41 82 00 0C */	beq lbl_806EDD24
/* 806EDD1C  38 00 00 01 */	li r0, 1
/* 806EDD20  98 1E 06 F4 */	stb r0, 0x6f4(r30)
lbl_806EDD24:
/* 806EDD24  7F C3 F3 78 */	mr r3, r30
/* 806EDD28  4B FF FA 81 */	bl doRollDamage__8daE_HZ_cFv
/* 806EDD2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EDD30  41 82 00 64 */	beq lbl_806EDD94
/* 806EDD34  38 00 00 02 */	li r0, 2
/* 806EDD38  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EDD3C  48 00 00 58 */	b lbl_806EDD94
lbl_806EDD40:
/* 806EDD40  80 9E 05 BC */	lwz r4, 0x5bc(r30)
/* 806EDD44  38 A0 00 01 */	li r5, 1
/* 806EDD48  88 04 00 11 */	lbz r0, 0x11(r4)
/* 806EDD4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806EDD50  40 82 00 18 */	bne lbl_806EDD68
/* 806EDD54  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EDD58  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 806EDD5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806EDD60  41 82 00 08 */	beq lbl_806EDD68
/* 806EDD64  7C 65 1B 78 */	mr r5, r3
lbl_806EDD68:
/* 806EDD68  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 806EDD6C  41 82 00 28 */	beq lbl_806EDD94
/* 806EDD70  7F C3 F3 78 */	mr r3, r30
/* 806EDD74  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806EDD78  38 A0 00 0A */	li r5, 0xa
/* 806EDD7C  38 C0 00 00 */	li r6, 0
/* 806EDD80  38 E0 00 05 */	li r7, 5
/* 806EDD84  4B 92 ED 55 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806EDD88  7F C3 F3 78 */	mr r3, r30
/* 806EDD8C  38 80 00 0B */	li r4, 0xb
/* 806EDD90  4B FF CD 4D */	bl setActionMode__8daE_HZ_cFi
lbl_806EDD94:
/* 806EDD94  88 1E 06 F4 */	lbz r0, 0x6f4(r30)
/* 806EDD98  28 00 00 00 */	cmplwi r0, 0
/* 806EDD9C  41 82 00 18 */	beq lbl_806EDDB4
/* 806EDDA0  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 806EDDA4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 806EDDA8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EDDAC  C0 7F 00 D4 */	lfs f3, 0xd4(r31)
/* 806EDDB0  4B B8 1C 8D */	bl cLib_addCalc2__FPffff
lbl_806EDDB4:
/* 806EDDB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806EDDB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806EDDBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806EDDC0  7C 08 03 A6 */	mtlr r0
/* 806EDDC4  38 21 00 20 */	addi r1, r1, 0x20
/* 806EDDC8  4E 80 00 20 */	blr 
