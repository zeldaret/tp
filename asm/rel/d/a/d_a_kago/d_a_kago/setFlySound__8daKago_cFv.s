lbl_8085392C:
/* 8085392C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80853930  7C 08 02 A6 */	mflr r0
/* 80853934  90 01 00 34 */	stw r0, 0x34(r1)
/* 80853938  39 61 00 30 */	addi r11, r1, 0x30
/* 8085393C  4B B0 E8 A1 */	bl _savegpr_29
/* 80853940  7C 7D 1B 78 */	mr r29, r3
/* 80853944  3C 80 80 85 */	lis r4, lit_3929@ha /* 0x80854B04@ha */
/* 80853948  3B E4 4B 04 */	addi r31, r4, lit_3929@l /* 0x80854B04@l */
/* 8085394C  88 03 06 DE */	lbz r0, 0x6de(r3)
/* 80853950  28 00 00 00 */	cmplwi r0, 0
/* 80853954  41 82 02 60 */	beq lbl_80853BB4
/* 80853958  3B C0 00 00 */	li r30, 0
/* 8085395C  38 80 00 09 */	li r4, 9
/* 80853960  4B FF 5E 39 */	bl checkBck__8daKago_cFi
/* 80853964  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80853968  40 82 00 18 */	bne lbl_80853980
/* 8085396C  7F A3 EB 78 */	mr r3, r29
/* 80853970  38 80 00 0F */	li r4, 0xf
/* 80853974  4B FF 5E 25 */	bl checkBck__8daKago_cFi
/* 80853978  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8085397C  41 82 00 50 */	beq lbl_808539CC
lbl_80853980:
/* 80853980  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 80853984  28 00 00 00 */	cmplwi r0, 0
/* 80853988  40 82 00 24 */	bne lbl_808539AC
/* 8085398C  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80853990  38 63 00 0C */	addi r3, r3, 0xc
/* 80853994  C0 3F 02 00 */	lfs f1, 0x200(r31)
/* 80853998  4B AD 4A 95 */	bl checkPass__12J3DFrameCtrlFf
/* 8085399C  2C 03 00 00 */	cmpwi r3, 0
/* 808539A0  41 82 01 A4 */	beq lbl_80853B44
/* 808539A4  3B C0 00 01 */	li r30, 1
/* 808539A8  48 00 01 9C */	b lbl_80853B44
lbl_808539AC:
/* 808539AC  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 808539B0  38 63 00 0C */	addi r3, r3, 0xc
/* 808539B4  C0 3F 02 04 */	lfs f1, 0x204(r31)
/* 808539B8  4B AD 4A 75 */	bl checkPass__12J3DFrameCtrlFf
/* 808539BC  2C 03 00 00 */	cmpwi r3, 0
/* 808539C0  41 82 01 84 */	beq lbl_80853B44
/* 808539C4  3B C0 00 01 */	li r30, 1
/* 808539C8  48 00 01 7C */	b lbl_80853B44
lbl_808539CC:
/* 808539CC  7F A3 EB 78 */	mr r3, r29
/* 808539D0  38 80 00 15 */	li r4, 0x15
/* 808539D4  4B FF 5D C5 */	bl checkBck__8daKago_cFi
/* 808539D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 808539DC  41 82 00 24 */	beq lbl_80853A00
/* 808539E0  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 808539E4  38 63 00 0C */	addi r3, r3, 0xc
/* 808539E8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 808539EC  4B AD 4A 41 */	bl checkPass__12J3DFrameCtrlFf
/* 808539F0  2C 03 00 00 */	cmpwi r3, 0
/* 808539F4  41 82 01 50 */	beq lbl_80853B44
/* 808539F8  3B C0 00 01 */	li r30, 1
/* 808539FC  48 00 01 48 */	b lbl_80853B44
lbl_80853A00:
/* 80853A00  7F A3 EB 78 */	mr r3, r29
/* 80853A04  38 80 00 06 */	li r4, 6
/* 80853A08  4B FF 5D 91 */	bl checkBck__8daKago_cFi
/* 80853A0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80853A10  41 82 00 24 */	beq lbl_80853A34
/* 80853A14  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80853A18  38 63 00 0C */	addi r3, r3, 0xc
/* 80853A1C  C0 3F 02 08 */	lfs f1, 0x208(r31)
/* 80853A20  4B AD 4A 0D */	bl checkPass__12J3DFrameCtrlFf
/* 80853A24  2C 03 00 00 */	cmpwi r3, 0
/* 80853A28  41 82 01 1C */	beq lbl_80853B44
/* 80853A2C  3B C0 00 01 */	li r30, 1
/* 80853A30  48 00 01 14 */	b lbl_80853B44
lbl_80853A34:
/* 80853A34  7F A3 EB 78 */	mr r3, r29
/* 80853A38  38 80 00 05 */	li r4, 5
/* 80853A3C  4B FF 5D 5D */	bl checkBck__8daKago_cFi
/* 80853A40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80853A44  41 82 00 24 */	beq lbl_80853A68
/* 80853A48  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80853A4C  38 63 00 0C */	addi r3, r3, 0xc
/* 80853A50  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80853A54  4B AD 49 D9 */	bl checkPass__12J3DFrameCtrlFf
/* 80853A58  2C 03 00 00 */	cmpwi r3, 0
/* 80853A5C  41 82 00 E8 */	beq lbl_80853B44
/* 80853A60  3B C0 00 01 */	li r30, 1
/* 80853A64  48 00 00 E0 */	b lbl_80853B44
lbl_80853A68:
/* 80853A68  7F A3 EB 78 */	mr r3, r29
/* 80853A6C  38 80 00 04 */	li r4, 4
/* 80853A70  4B FF 5D 29 */	bl checkBck__8daKago_cFi
/* 80853A74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80853A78  41 82 00 3C */	beq lbl_80853AB4
/* 80853A7C  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80853A80  38 63 00 0C */	addi r3, r3, 0xc
/* 80853A84  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80853A88  4B AD 49 A5 */	bl checkPass__12J3DFrameCtrlFf
/* 80853A8C  2C 03 00 00 */	cmpwi r3, 0
/* 80853A90  40 82 00 1C */	bne lbl_80853AAC
/* 80853A94  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80853A98  38 63 00 0C */	addi r3, r3, 0xc
/* 80853A9C  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80853AA0  4B AD 49 8D */	bl checkPass__12J3DFrameCtrlFf
/* 80853AA4  2C 03 00 00 */	cmpwi r3, 0
/* 80853AA8  41 82 00 9C */	beq lbl_80853B44
lbl_80853AAC:
/* 80853AAC  3B C0 00 01 */	li r30, 1
/* 80853AB0  48 00 00 94 */	b lbl_80853B44
lbl_80853AB4:
/* 80853AB4  7F A3 EB 78 */	mr r3, r29
/* 80853AB8  38 80 00 0C */	li r4, 0xc
/* 80853ABC  4B FF 5C DD */	bl checkBck__8daKago_cFi
/* 80853AC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80853AC4  40 82 00 18 */	bne lbl_80853ADC
/* 80853AC8  7F A3 EB 78 */	mr r3, r29
/* 80853ACC  38 80 00 0D */	li r4, 0xd
/* 80853AD0  4B FF 5C C9 */	bl checkBck__8daKago_cFi
/* 80853AD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80853AD8  41 82 00 6C */	beq lbl_80853B44
lbl_80853ADC:
/* 80853ADC  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 80853AE0  28 00 00 00 */	cmplwi r0, 0
/* 80853AE4  40 82 00 34 */	bne lbl_80853B18
/* 80853AE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070235@ha */
/* 80853AEC  38 03 02 35 */	addi r0, r3, 0x0235 /* 0x00070235@l */
/* 80853AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80853AF4  38 7D 05 74 */	addi r3, r29, 0x574
/* 80853AF8  38 81 00 14 */	addi r4, r1, 0x14
/* 80853AFC  38 A0 00 00 */	li r5, 0
/* 80853B00  38 C0 FF FF */	li r6, -1
/* 80853B04  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80853B08  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80853B0C  7D 89 03 A6 */	mtctr r12
/* 80853B10  4E 80 04 21 */	bctrl 
/* 80853B14  48 00 00 30 */	b lbl_80853B44
lbl_80853B18:
/* 80853B18  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070498@ha */
/* 80853B1C  38 03 04 98 */	addi r0, r3, 0x0498 /* 0x00070498@l */
/* 80853B20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80853B24  38 7D 05 74 */	addi r3, r29, 0x574
/* 80853B28  38 81 00 10 */	addi r4, r1, 0x10
/* 80853B2C  38 A0 00 00 */	li r5, 0
/* 80853B30  38 C0 FF FF */	li r6, -1
/* 80853B34  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80853B38  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80853B3C  7D 89 03 A6 */	mtctr r12
/* 80853B40  4E 80 04 21 */	bctrl 
lbl_80853B44:
/* 80853B44  2C 1E 00 00 */	cmpwi r30, 0
/* 80853B48  41 82 00 6C */	beq lbl_80853BB4
/* 80853B4C  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 80853B50  28 00 00 00 */	cmplwi r0, 0
/* 80853B54  40 82 00 34 */	bne lbl_80853B88
/* 80853B58  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070234@ha */
/* 80853B5C  38 03 02 34 */	addi r0, r3, 0x0234 /* 0x00070234@l */
/* 80853B60  90 01 00 0C */	stw r0, 0xc(r1)
/* 80853B64  38 7D 05 74 */	addi r3, r29, 0x574
/* 80853B68  38 81 00 0C */	addi r4, r1, 0xc
/* 80853B6C  38 A0 00 00 */	li r5, 0
/* 80853B70  38 C0 FF FF */	li r6, -1
/* 80853B74  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80853B78  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80853B7C  7D 89 03 A6 */	mtctr r12
/* 80853B80  4E 80 04 21 */	bctrl 
/* 80853B84  48 00 00 30 */	b lbl_80853BB4
lbl_80853B88:
/* 80853B88  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070497@ha */
/* 80853B8C  38 03 04 97 */	addi r0, r3, 0x0497 /* 0x00070497@l */
/* 80853B90  90 01 00 08 */	stw r0, 8(r1)
/* 80853B94  38 7D 05 74 */	addi r3, r29, 0x574
/* 80853B98  38 81 00 08 */	addi r4, r1, 8
/* 80853B9C  38 A0 00 00 */	li r5, 0
/* 80853BA0  38 C0 FF FF */	li r6, -1
/* 80853BA4  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80853BA8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80853BAC  7D 89 03 A6 */	mtctr r12
/* 80853BB0  4E 80 04 21 */	bctrl 
lbl_80853BB4:
/* 80853BB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80853BB8  4B B0 E6 71 */	bl _restgpr_29
/* 80853BBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80853BC0  7C 08 03 A6 */	mtlr r0
/* 80853BC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80853BC8  4E 80 00 20 */	blr 
