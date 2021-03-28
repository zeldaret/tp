lbl_801CFCDC:
/* 801CFCDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CFCE0  7C 08 02 A6 */	mflr r0
/* 801CFCE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CFCE8  39 61 00 20 */	addi r11, r1, 0x20
/* 801CFCEC  48 19 24 E5 */	bl _savegpr_26
/* 801CFCF0  7C 7E 1B 79 */	or. r30, r3, r3
/* 801CFCF4  7C 9F 23 78 */	mr r31, r4
/* 801CFCF8  41 82 02 20 */	beq lbl_801CFF18
/* 801CFCFC  3C 60 80 3C */	lis r3, __vt__18dMenu_Fmap2DBack_c@ha
/* 801CFD00  38 63 D7 60 */	addi r3, r3, __vt__18dMenu_Fmap2DBack_c@l
/* 801CFD04  90 7E 00 00 */	stw r3, 0(r30)
/* 801CFD08  38 03 00 0C */	addi r0, r3, 0xc
/* 801CFD0C  90 1E 00 04 */	stw r0, 4(r30)
/* 801CFD10  80 7E 0C 98 */	lwz r3, 0xc98(r30)
/* 801CFD14  28 03 00 00 */	cmplwi r3, 0
/* 801CFD18  41 82 00 18 */	beq lbl_801CFD30
/* 801CFD1C  38 80 00 01 */	li r4, 1
/* 801CFD20  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFD24  81 8C 00 08 */	lwz r12, 8(r12)
/* 801CFD28  7D 89 03 A6 */	mtctr r12
/* 801CFD2C  4E 80 04 21 */	bctrl 
lbl_801CFD30:
/* 801CFD30  38 00 00 00 */	li r0, 0
/* 801CFD34  90 1E 0C 98 */	stw r0, 0xc98(r30)
/* 801CFD38  80 7E 0C 9C */	lwz r3, 0xc9c(r30)
/* 801CFD3C  28 03 00 00 */	cmplwi r3, 0
/* 801CFD40  41 82 00 18 */	beq lbl_801CFD58
/* 801CFD44  38 80 00 01 */	li r4, 1
/* 801CFD48  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFD4C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801CFD50  7D 89 03 A6 */	mtctr r12
/* 801CFD54  4E 80 04 21 */	bctrl 
lbl_801CFD58:
/* 801CFD58  38 00 00 00 */	li r0, 0
/* 801CFD5C  90 1E 0C 9C */	stw r0, 0xc9c(r30)
/* 801CFD60  80 7E 0C E4 */	lwz r3, 0xce4(r30)
/* 801CFD64  28 03 00 00 */	cmplwi r3, 0
/* 801CFD68  41 82 00 18 */	beq lbl_801CFD80
/* 801CFD6C  38 80 00 01 */	li r4, 1
/* 801CFD70  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFD74  81 8C 00 08 */	lwz r12, 8(r12)
/* 801CFD78  7D 89 03 A6 */	mtctr r12
/* 801CFD7C  4E 80 04 21 */	bctrl 
lbl_801CFD80:
/* 801CFD80  38 00 00 00 */	li r0, 0
/* 801CFD84  90 1E 0C E4 */	stw r0, 0xce4(r30)
/* 801CFD88  80 7E 0C A0 */	lwz r3, 0xca0(r30)
/* 801CFD8C  28 03 00 00 */	cmplwi r3, 0
/* 801CFD90  41 82 00 18 */	beq lbl_801CFDA8
/* 801CFD94  38 80 00 01 */	li r4, 1
/* 801CFD98  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFD9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801CFDA0  7D 89 03 A6 */	mtctr r12
/* 801CFDA4  4E 80 04 21 */	bctrl 
lbl_801CFDA8:
/* 801CFDA8  38 00 00 00 */	li r0, 0
/* 801CFDAC  90 1E 0C A0 */	stw r0, 0xca0(r30)
/* 801CFDB0  80 7E 0C A4 */	lwz r3, 0xca4(r30)
/* 801CFDB4  28 03 00 00 */	cmplwi r3, 0
/* 801CFDB8  41 82 00 18 */	beq lbl_801CFDD0
/* 801CFDBC  38 80 00 01 */	li r4, 1
/* 801CFDC0  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFDC4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801CFDC8  7D 89 03 A6 */	mtctr r12
/* 801CFDCC  4E 80 04 21 */	bctrl 
lbl_801CFDD0:
/* 801CFDD0  38 00 00 00 */	li r0, 0
/* 801CFDD4  90 1E 0C A4 */	stw r0, 0xca4(r30)
/* 801CFDD8  80 7E 0C A8 */	lwz r3, 0xca8(r30)
/* 801CFDDC  28 03 00 00 */	cmplwi r3, 0
/* 801CFDE0  41 82 00 18 */	beq lbl_801CFDF8
/* 801CFDE4  38 80 00 01 */	li r4, 1
/* 801CFDE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFDEC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801CFDF0  7D 89 03 A6 */	mtctr r12
/* 801CFDF4  4E 80 04 21 */	bctrl 
lbl_801CFDF8:
/* 801CFDF8  38 00 00 00 */	li r0, 0
/* 801CFDFC  90 1E 0C A8 */	stw r0, 0xca8(r30)
/* 801CFE00  80 7E 0C E0 */	lwz r3, 0xce0(r30)
/* 801CFE04  28 03 00 00 */	cmplwi r3, 0
/* 801CFE08  41 82 00 18 */	beq lbl_801CFE20
/* 801CFE0C  38 80 00 01 */	li r4, 1
/* 801CFE10  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFE14  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801CFE18  7D 89 03 A6 */	mtctr r12
/* 801CFE1C  4E 80 04 21 */	bctrl 
lbl_801CFE20:
/* 801CFE20  38 00 00 00 */	li r0, 0
/* 801CFE24  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 801CFE28  80 7E 0C B0 */	lwz r3, 0xcb0(r30)
/* 801CFE2C  28 03 00 00 */	cmplwi r3, 0
/* 801CFE30  41 82 00 18 */	beq lbl_801CFE48
/* 801CFE34  38 80 00 01 */	li r4, 1
/* 801CFE38  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFE3C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801CFE40  7D 89 03 A6 */	mtctr r12
/* 801CFE44  4E 80 04 21 */	bctrl 
lbl_801CFE48:
/* 801CFE48  38 00 00 00 */	li r0, 0
/* 801CFE4C  90 1E 0C B0 */	stw r0, 0xcb0(r30)
/* 801CFE50  80 7E 0C D8 */	lwz r3, 0xcd8(r30)
/* 801CFE54  28 03 00 00 */	cmplwi r3, 0
/* 801CFE58  41 82 00 18 */	beq lbl_801CFE70
/* 801CFE5C  38 80 00 01 */	li r4, 1
/* 801CFE60  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFE64  81 8C 00 08 */	lwz r12, 8(r12)
/* 801CFE68  7D 89 03 A6 */	mtctr r12
/* 801CFE6C  4E 80 04 21 */	bctrl 
lbl_801CFE70:
/* 801CFE70  38 00 00 00 */	li r0, 0
/* 801CFE74  90 1E 0C D8 */	stw r0, 0xcd8(r30)
/* 801CFE78  80 7E 0C AC */	lwz r3, 0xcac(r30)
/* 801CFE7C  28 03 00 00 */	cmplwi r3, 0
/* 801CFE80  41 82 00 18 */	beq lbl_801CFE98
/* 801CFE84  38 80 00 01 */	li r4, 1
/* 801CFE88  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFE8C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801CFE90  7D 89 03 A6 */	mtctr r12
/* 801CFE94  4E 80 04 21 */	bctrl 
lbl_801CFE98:
/* 801CFE98  3B 80 00 00 */	li r28, 0
/* 801CFE9C  93 9E 0C AC */	stw r28, 0xcac(r30)
/* 801CFEA0  3B 40 00 00 */	li r26, 0
/* 801CFEA4  7F 9D E3 78 */	mr r29, r28
lbl_801CFEA8:
/* 801CFEA8  3B 7D 0C B4 */	addi r27, r29, 0xcb4
/* 801CFEAC  7C 7E D8 2E */	lwzx r3, r30, r27
/* 801CFEB0  28 03 00 00 */	cmplwi r3, 0
/* 801CFEB4  41 82 00 20 */	beq lbl_801CFED4
/* 801CFEB8  41 82 00 18 */	beq lbl_801CFED0
/* 801CFEBC  38 80 00 01 */	li r4, 1
/* 801CFEC0  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFEC4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801CFEC8  7D 89 03 A6 */	mtctr r12
/* 801CFECC  4E 80 04 21 */	bctrl 
lbl_801CFED0:
/* 801CFED0  7F 9E D9 2E */	stwx r28, r30, r27
lbl_801CFED4:
/* 801CFED4  3B 5A 00 01 */	addi r26, r26, 1
/* 801CFED8  2C 1A 00 08 */	cmpwi r26, 8
/* 801CFEDC  3B BD 00 04 */	addi r29, r29, 4
/* 801CFEE0  41 80 FF C8 */	blt lbl_801CFEA8
/* 801CFEE4  7F C3 F3 78 */	mr r3, r30
/* 801CFEE8  48 00 12 0D */	bl deleteSpotPane__18dMenu_Fmap2DBack_cFv
/* 801CFEEC  38 00 00 00 */	li r0, 0
/* 801CFEF0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801CFEF4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801CFEF8  98 03 00 F2 */	stb r0, 0xf2(r3)
/* 801CFEFC  38 7E 00 04 */	addi r3, r30, 4
/* 801CFF00  38 80 00 00 */	li r4, 0
/* 801CFF04  4B FF 28 B1 */	bl __dt__16dMenuMapCommon_cFv
/* 801CFF08  7F E0 07 35 */	extsh. r0, r31
/* 801CFF0C  40 81 00 0C */	ble lbl_801CFF18
/* 801CFF10  7F C3 F3 78 */	mr r3, r30
/* 801CFF14  48 0F EE 29 */	bl __dl__FPv
lbl_801CFF18:
/* 801CFF18  7F C3 F3 78 */	mr r3, r30
/* 801CFF1C  39 61 00 20 */	addi r11, r1, 0x20
/* 801CFF20  48 19 22 FD */	bl _restgpr_26
/* 801CFF24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CFF28  7C 08 03 A6 */	mtlr r0
/* 801CFF2C  38 21 00 20 */	addi r1, r1, 0x20
/* 801CFF30  4E 80 00 20 */	blr 
