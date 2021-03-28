lbl_80198950:
/* 80198950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80198954  7C 08 02 A6 */	mflr r0
/* 80198958  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019895C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80198960  93 C1 00 08 */	stw r30, 8(r1)
/* 80198964  7C 7E 1B 78 */	mr r30, r3
/* 80198968  38 80 00 00 */	li r4, 0
/* 8019896C  88 A3 0F 6E */	lbz r5, 0xf6e(r3)
/* 80198970  28 05 00 00 */	cmplwi r5, 0
/* 80198974  41 82 00 90 */	beq lbl_80198A04
/* 80198978  88 1E 0F 70 */	lbz r0, 0xf70(r30)
/* 8019897C  28 00 00 00 */	cmplwi r0, 0
/* 80198980  41 82 00 84 */	beq lbl_80198A04
/* 80198984  38 0D 81 68 */	la r0, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 80198988  7C 80 2A 14 */	add r4, r0, r5
/* 8019898C  88 04 FF FF */	lbz r0, -1(r4)
/* 80198990  28 00 00 30 */	cmplwi r0, 0x30
/* 80198994  40 82 00 28 */	bne lbl_801989BC
/* 80198998  38 80 00 08 */	li r4, 8
/* 8019899C  4B FF EC 5D */	bl isFlag__13dShopSystem_cFi
/* 801989A0  2C 03 00 00 */	cmpwi r3, 0
/* 801989A4  40 82 00 0C */	bne lbl_801989B0
/* 801989A8  38 00 00 00 */	li r0, 0
/* 801989AC  48 00 00 08 */	b lbl_801989B4
lbl_801989B0:
/* 801989B0  88 1E 0F 6E */	lbz r0, 0xf6e(r30)
lbl_801989B4:
/* 801989B4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801989B8  48 00 00 4C */	b lbl_80198A04
lbl_801989BC:
/* 801989BC  3B E0 00 00 */	li r31, 0
/* 801989C0  38 85 FF FF */	addi r4, r5, -1
/* 801989C4  4B FF EC 35 */	bl isFlag__13dShopSystem_cFi
/* 801989C8  2C 03 00 00 */	cmpwi r3, 0
/* 801989CC  40 82 00 1C */	bne lbl_801989E8
/* 801989D0  7F C3 F3 78 */	mr r3, r30
/* 801989D4  88 9E 0F 6E */	lbz r4, 0xf6e(r30)
/* 801989D8  38 84 FF FF */	addi r4, r4, -1
/* 801989DC  4B FF EC 75 */	bl isSoldOutItemFlag__13dShopSystem_cFi
/* 801989E0  2C 03 00 00 */	cmpwi r3, 0
/* 801989E4  41 82 00 08 */	beq lbl_801989EC
lbl_801989E8:
/* 801989E8  3B E0 00 01 */	li r31, 1
lbl_801989EC:
/* 801989EC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801989F0  41 82 00 0C */	beq lbl_801989FC
/* 801989F4  38 00 00 00 */	li r0, 0
/* 801989F8  48 00 00 08 */	b lbl_80198A00
lbl_801989FC:
/* 801989FC  88 1E 0F 6E */	lbz r0, 0xf6e(r30)
lbl_80198A00:
/* 80198A00  54 04 06 3E */	clrlwi r4, r0, 0x18
lbl_80198A04:
/* 80198A04  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80198A08  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80198A0C  4B FF E0 E5 */	bl setRotateAnime__15dShopItemCtrl_cFi
/* 80198A10  38 60 00 01 */	li r3, 1
/* 80198A14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80198A18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80198A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80198A20  7C 08 03 A6 */	mtlr r0
/* 80198A24  38 21 00 10 */	addi r1, r1, 0x10
/* 80198A28  4E 80 00 20 */	blr 
