lbl_806ED8A4:
/* 806ED8A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806ED8A8  7C 08 02 A6 */	mflr r0
/* 806ED8AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806ED8B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806ED8B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806ED8B8  7C 7E 1B 78 */	mr r30, r3
/* 806ED8BC  3C 80 80 6F */	lis r4, lit_3966@ha
/* 806ED8C0  3B E4 08 60 */	addi r31, r4, lit_3966@l
/* 806ED8C4  80 03 06 C8 */	lwz r0, 0x6c8(r3)
/* 806ED8C8  2C 00 00 01 */	cmpwi r0, 1
/* 806ED8CC  41 82 00 C8 */	beq lbl_806ED994
/* 806ED8D0  40 80 00 10 */	bge lbl_806ED8E0
/* 806ED8D4  2C 00 00 00 */	cmpwi r0, 0
/* 806ED8D8  40 80 00 14 */	bge lbl_806ED8EC
/* 806ED8DC  48 00 01 B4 */	b lbl_806EDA90
lbl_806ED8E0:
/* 806ED8E0  2C 00 00 03 */	cmpwi r0, 3
/* 806ED8E4  40 80 01 AC */	bge lbl_806EDA90
/* 806ED8E8  48 00 01 88 */	b lbl_806EDA70
lbl_806ED8EC:
/* 806ED8EC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806ED8F0  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806ED8F4  80 1E 0D 24 */	lwz r0, 0xd24(r30)
/* 806ED8F8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806ED8FC  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 806ED900  38 00 00 01 */	li r0, 1
/* 806ED904  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 806ED908  4B FF FD C1 */	bl initRollDamage__8daE_HZ_cFv
/* 806ED90C  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 806ED910  2C 00 00 03 */	cmpwi r0, 3
/* 806ED914  40 82 00 28 */	bne lbl_806ED93C
/* 806ED918  38 00 00 02 */	li r0, 2
/* 806ED91C  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806ED920  7F C3 F3 78 */	mr r3, r30
/* 806ED924  38 80 00 12 */	li r4, 0x12
/* 806ED928  38 A0 00 00 */	li r5, 0
/* 806ED92C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806ED930  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806ED934  4B FF CD 5D */	bl setBck__8daE_HZ_cFiUcff
/* 806ED938  48 00 00 24 */	b lbl_806ED95C
lbl_806ED93C:
/* 806ED93C  38 00 00 01 */	li r0, 1
/* 806ED940  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806ED944  7F C3 F3 78 */	mr r3, r30
/* 806ED948  38 80 00 06 */	li r4, 6
/* 806ED94C  38 A0 00 00 */	li r5, 0
/* 806ED950  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806ED954  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806ED958  4B FF CD 39 */	bl setBck__8daE_HZ_cFiUcff
lbl_806ED95C:
/* 806ED95C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070211@ha */
/* 806ED960  38 03 02 11 */	addi r0, r3, 0x0211 /* 0x00070211@l */
/* 806ED964  90 01 00 10 */	stw r0, 0x10(r1)
/* 806ED968  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806ED96C  38 81 00 10 */	addi r4, r1, 0x10
/* 806ED970  38 A0 FF FF */	li r5, -1
/* 806ED974  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806ED978  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806ED97C  7D 89 03 A6 */	mtctr r12
/* 806ED980  4E 80 04 21 */	bctrl 
/* 806ED984  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806ED988  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806ED98C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806ED990  48 00 01 00 */	b lbl_806EDA90
lbl_806ED994:
/* 806ED994  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806ED998  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806ED99C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ED9A0  40 81 00 30 */	ble lbl_806ED9D0
/* 806ED9A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007021A@ha */
/* 806ED9A8  38 03 02 1A */	addi r0, r3, 0x021A /* 0x0007021A@l */
/* 806ED9AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806ED9B0  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806ED9B4  38 81 00 0C */	addi r4, r1, 0xc
/* 806ED9B8  38 A0 00 00 */	li r5, 0
/* 806ED9BC  38 C0 FF FF */	li r6, -1
/* 806ED9C0  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806ED9C4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806ED9C8  7D 89 03 A6 */	mtctr r12
/* 806ED9CC  4E 80 04 21 */	bctrl 
lbl_806ED9D0:
/* 806ED9D0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806ED9D4  38 63 00 0C */	addi r3, r3, 0xc
/* 806ED9D8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806ED9DC  4B C3 AA 50 */	b checkPass__12J3DFrameCtrlFf
/* 806ED9E0  2C 03 00 00 */	cmpwi r3, 0
/* 806ED9E4  41 82 00 30 */	beq lbl_806EDA14
/* 806ED9E8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 806ED9EC  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 806ED9F0  90 01 00 08 */	stw r0, 8(r1)
/* 806ED9F4  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806ED9F8  38 81 00 08 */	addi r4, r1, 8
/* 806ED9FC  38 A0 00 00 */	li r5, 0
/* 806EDA00  38 C0 FF FF */	li r6, -1
/* 806EDA04  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EDA08  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EDA0C  7D 89 03 A6 */	mtctr r12
/* 806EDA10  4E 80 04 21 */	bctrl 
lbl_806EDA14:
/* 806EDA14  7F C3 F3 78 */	mr r3, r30
/* 806EDA18  4B FF FD 91 */	bl doRollDamage__8daE_HZ_cFv
/* 806EDA1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EDA20  41 82 00 14 */	beq lbl_806EDA34
/* 806EDA24  7F C3 F3 78 */	mr r3, r30
/* 806EDA28  38 80 00 07 */	li r4, 7
/* 806EDA2C  4B FF D0 B1 */	bl setActionMode__8daE_HZ_cFi
/* 806EDA30  48 00 00 60 */	b lbl_806EDA90
lbl_806EDA34:
/* 806EDA34  A8 1E 06 D8 */	lha r0, 0x6d8(r30)
/* 806EDA38  2C 00 00 00 */	cmpwi r0, 0
/* 806EDA3C  40 82 00 54 */	bne lbl_806EDA90
/* 806EDA40  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806EDA44  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EDA48  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806EDA4C  40 82 00 44 */	bne lbl_806EDA90
/* 806EDA50  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806EDA54  7F C3 F3 78 */	mr r3, r30
/* 806EDA58  38 80 00 00 */	li r4, 0
/* 806EDA5C  4B FF D6 49 */	bl setTgSetBit__8daE_HZ_cFi
/* 806EDA60  7F C3 F3 78 */	mr r3, r30
/* 806EDA64  38 80 00 03 */	li r4, 3
/* 806EDA68  4B FF D0 75 */	bl setActionMode__8daE_HZ_cFi
/* 806EDA6C  48 00 00 24 */	b lbl_806EDA90
lbl_806EDA70:
/* 806EDA70  4B FF FD 39 */	bl doRollDamage__8daE_HZ_cFv
/* 806EDA74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EDA78  41 82 00 18 */	beq lbl_806EDA90
/* 806EDA7C  7F C3 F3 78 */	mr r3, r30
/* 806EDA80  38 80 00 03 */	li r4, 3
/* 806EDA84  4B FF D0 59 */	bl setActionMode__8daE_HZ_cFi
/* 806EDA88  38 00 00 01 */	li r0, 1
/* 806EDA8C  90 1E 06 C8 */	stw r0, 0x6c8(r30)
lbl_806EDA90:
/* 806EDA90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806EDA94  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806EDA98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806EDA9C  7C 08 03 A6 */	mtlr r0
/* 806EDAA0  38 21 00 20 */	addi r1, r1, 0x20
/* 806EDAA4  4E 80 00 20 */	blr 
