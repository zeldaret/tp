lbl_800E3A9C:
/* 800E3A9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E3AA0  7C 08 02 A6 */	mflr r0
/* 800E3AA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E3AA8  39 61 00 20 */	addi r11, r1, 0x20
/* 800E3AAC  48 27 E7 31 */	bl _savegpr_29
/* 800E3AB0  7C 7D 1B 78 */	mr r29, r3
/* 800E3AB4  7C 9E 23 78 */	mr r30, r4
/* 800E3AB8  7C DF 33 78 */	mr r31, r6
/* 800E3ABC  2C 05 00 00 */	cmpwi r5, 0
/* 800E3AC0  40 82 00 10 */	bne lbl_800E3AD0
/* 800E3AC4  48 03 21 5D */	bl checkEventRun__9daAlink_cCFv
/* 800E3AC8  2C 03 00 00 */	cmpwi r3, 0
/* 800E3ACC  40 82 00 E4 */	bne lbl_800E3BB0
lbl_800E3AD0:
/* 800E3AD0  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800E3AD4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E3AD8  40 82 00 D8 */	bne lbl_800E3BB0
/* 800E3ADC  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 800E3AE0  28 03 00 FF */	cmplwi r3, 0xff
/* 800E3AE4  41 82 00 18 */	beq lbl_800E3AFC
/* 800E3AE8  2C 1F 00 00 */	cmpwi r31, 0
/* 800E3AEC  41 82 00 C4 */	beq lbl_800E3BB0
/* 800E3AF0  48 07 B0 C9 */	bl checkHookshotItem__9daPy_py_cFi
/* 800E3AF4  2C 03 00 00 */	cmpwi r3, 0
/* 800E3AF8  41 82 00 B8 */	beq lbl_800E3BB0
lbl_800E3AFC:
/* 800E3AFC  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800E3B00  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 800E3B04  41 82 00 3C */	beq lbl_800E3B40
/* 800E3B08  7F A3 EB 78 */	mr r3, r29
/* 800E3B0C  48 00 95 69 */	bl checkHorseNoUpperAnime__9daAlink_cCFv
/* 800E3B10  2C 03 00 00 */	cmpwi r3, 0
/* 800E3B14  40 82 00 5C */	bne lbl_800E3B70
/* 800E3B18  38 60 00 00 */	li r3, 0
/* 800E3B1C  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800E3B20  28 00 02 4C */	cmplwi r0, 0x24c
/* 800E3B24  41 82 00 10 */	beq lbl_800E3B34
/* 800E3B28  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800E3B2C  28 00 02 4D */	cmplwi r0, 0x24d
/* 800E3B30  40 82 00 08 */	bne lbl_800E3B38
lbl_800E3B34:
/* 800E3B34  38 60 00 01 */	li r3, 1
lbl_800E3B38:
/* 800E3B38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E3B3C  40 82 00 34 */	bne lbl_800E3B70
lbl_800E3B40:
/* 800E3B40  2C 1F 00 00 */	cmpwi r31, 0
/* 800E3B44  41 82 00 6C */	beq lbl_800E3BB0
/* 800E3B48  38 60 00 00 */	li r3, 0
/* 800E3B4C  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800E3B50  28 00 01 8D */	cmplwi r0, 0x18d
/* 800E3B54  41 82 00 10 */	beq lbl_800E3B64
/* 800E3B58  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800E3B5C  28 00 01 8C */	cmplwi r0, 0x18c
/* 800E3B60  40 82 00 08 */	bne lbl_800E3B68
lbl_800E3B64:
/* 800E3B64  38 60 00 01 */	li r3, 1
lbl_800E3B68:
/* 800E3B68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E3B6C  41 82 00 44 */	beq lbl_800E3BB0
lbl_800E3B70:
/* 800E3B70  7F A3 EB 78 */	mr r3, r29
/* 800E3B74  38 80 00 01 */	li r4, 1
/* 800E3B78  38 A0 00 00 */	li r5, 0
/* 800E3B7C  4B FD D7 61 */	bl deleteEquipItem__9daAlink_cFii
/* 800E3B80  7F A3 EB 78 */	mr r3, r29
/* 800E3B84  7F C4 F3 78 */	mr r4, r30
/* 800E3B88  48 00 20 2D */	bl setGrabItemActor__9daAlink_cFP10fopAc_ac_c
/* 800E3B8C  C0 02 93 94 */	lfs f0, lit_8785(r2)
/* 800E3B90  D0 1D 33 E4 */	stfs f0, 0x33e4(r29)
/* 800E3B94  7F A3 EB 78 */	mr r3, r29
/* 800E3B98  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800E3B9C  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800E3BA0  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 800E3BA4  48 00 02 19 */	bl setGrabUpperAnime__9daAlink_cFf
/* 800E3BA8  38 60 00 01 */	li r3, 1
/* 800E3BAC  48 00 00 08 */	b lbl_800E3BB4
lbl_800E3BB0:
/* 800E3BB0  38 60 00 00 */	li r3, 0
lbl_800E3BB4:
/* 800E3BB4  39 61 00 20 */	addi r11, r1, 0x20
/* 800E3BB8  48 27 E6 71 */	bl _restgpr_29
/* 800E3BBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E3BC0  7C 08 03 A6 */	mtlr r0
/* 800E3BC4  38 21 00 20 */	addi r1, r1, 0x20
/* 800E3BC8  4E 80 00 20 */	blr 
