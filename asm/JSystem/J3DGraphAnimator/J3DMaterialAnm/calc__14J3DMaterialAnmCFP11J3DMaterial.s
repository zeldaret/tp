lbl_8032C3C4:
/* 8032C3C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032C3C8  7C 08 02 A6 */	mflr r0
/* 8032C3CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032C3D0  39 61 00 30 */	addi r11, r1, 0x30
/* 8032C3D4  48 03 5E 01 */	bl _savegpr_27
/* 8032C3D8  7C 7E 1B 78 */	mr r30, r3
/* 8032C3DC  7C 9F 23 78 */	mr r31, r4
/* 8032C3E0  3B 60 00 00 */	li r27, 0
/* 8032C3E4  3B A0 00 00 */	li r29, 0
lbl_8032C3E8:
/* 8032C3E8  7F 9E EA 14 */	add r28, r30, r29
/* 8032C3EC  A0 1C 00 06 */	lhz r0, 6(r28)
/* 8032C3F0  28 00 00 00 */	cmplwi r0, 0
/* 8032C3F4  41 82 00 38 */	beq lbl_8032C42C
/* 8032C3F8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8032C3FC  7F 64 DB 78 */	mr r4, r27
/* 8032C400  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C404  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8032C408  7D 89 03 A6 */	mtctr r12
/* 8032C40C  4E 80 04 21 */	bctrl 
/* 8032C410  7C 65 1B 78 */	mr r5, r3
/* 8032C414  80 7C 00 08 */	lwz r3, 8(r28)
/* 8032C418  A0 9C 00 04 */	lhz r4, 4(r28)
/* 8032C41C  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C420  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8032C424  7D 89 03 A6 */	mtctr r12
/* 8032C428  4E 80 04 21 */	bctrl 
lbl_8032C42C:
/* 8032C42C  3B 7B 00 01 */	addi r27, r27, 1
/* 8032C430  28 1B 00 02 */	cmplwi r27, 2
/* 8032C434  3B BD 00 08 */	addi r29, r29, 8
/* 8032C438  41 80 FF B0 */	blt lbl_8032C3E8
/* 8032C43C  3B 60 00 00 */	li r27, 0
/* 8032C440  3B A0 00 00 */	li r29, 0
lbl_8032C444:
/* 8032C444  7C 7E EA 14 */	add r3, r30, r29
/* 8032C448  A0 03 00 5A */	lhz r0, 0x5a(r3)
/* 8032C44C  28 00 00 00 */	cmplwi r0, 0
/* 8032C450  41 82 00 34 */	beq lbl_8032C484
/* 8032C454  38 81 00 08 */	addi r4, r1, 8
/* 8032C458  85 83 00 54 */	lwzu r12, 0x54(r3)
/* 8032C45C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8032C460  7D 89 03 A6 */	mtctr r12
/* 8032C464  4E 80 04 21 */	bctrl 
/* 8032C468  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8032C46C  7F 64 DB 78 */	mr r4, r27
/* 8032C470  A0 A1 00 08 */	lhz r5, 8(r1)
/* 8032C474  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C478  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8032C47C  7D 89 03 A6 */	mtctr r12
/* 8032C480  4E 80 04 21 */	bctrl 
lbl_8032C484:
/* 8032C484  3B 7B 00 01 */	addi r27, r27, 1
/* 8032C488  28 1B 00 08 */	cmplwi r27, 8
/* 8032C48C  3B BD 00 0C */	addi r29, r29, 0xc
/* 8032C490  41 80 FF B4 */	blt lbl_8032C444
/* 8032C494  3B 60 00 00 */	li r27, 0
/* 8032C498  3B A0 00 00 */	li r29, 0
lbl_8032C49C:
/* 8032C49C  7F 9E EA 14 */	add r28, r30, r29
/* 8032C4A0  A0 1C 00 B6 */	lhz r0, 0xb6(r28)
/* 8032C4A4  28 00 00 00 */	cmplwi r0, 0
/* 8032C4A8  41 82 00 2C */	beq lbl_8032C4D4
/* 8032C4AC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8032C4B0  7F 64 DB 78 */	mr r4, r27
/* 8032C4B4  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C4B8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8032C4BC  7D 89 03 A6 */	mtctr r12
/* 8032C4C0  4E 80 04 21 */	bctrl 
/* 8032C4C4  7C 65 1B 78 */	mr r5, r3
/* 8032C4C8  80 7C 00 B8 */	lwz r3, 0xb8(r28)
/* 8032C4CC  A0 9C 00 B4 */	lhz r4, 0xb4(r28)
/* 8032C4D0  4B FF ED 29 */	bl getTevColorReg__15J3DAnmTevRegKeyCFUsP11_GXColorS10
lbl_8032C4D4:
/* 8032C4D4  3B 7B 00 01 */	addi r27, r27, 1
/* 8032C4D8  28 1B 00 03 */	cmplwi r27, 3
/* 8032C4DC  3B BD 00 08 */	addi r29, r29, 8
/* 8032C4E0  41 80 FF BC */	blt lbl_8032C49C
/* 8032C4E4  3B 60 00 00 */	li r27, 0
/* 8032C4E8  3B A0 00 00 */	li r29, 0
lbl_8032C4EC:
/* 8032C4EC  7F 9E EA 14 */	add r28, r30, r29
/* 8032C4F0  A0 1C 00 D6 */	lhz r0, 0xd6(r28)
/* 8032C4F4  28 00 00 00 */	cmplwi r0, 0
/* 8032C4F8  41 82 00 2C */	beq lbl_8032C524
/* 8032C4FC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8032C500  7F 64 DB 78 */	mr r4, r27
/* 8032C504  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C508  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8032C50C  7D 89 03 A6 */	mtctr r12
/* 8032C510  4E 80 04 21 */	bctrl 
/* 8032C514  7C 65 1B 78 */	mr r5, r3
/* 8032C518  80 7C 00 D8 */	lwz r3, 0xd8(r28)
/* 8032C51C  A0 9C 00 D4 */	lhz r4, 0xd4(r28)
/* 8032C520  4B FF EF 9D */	bl getTevKonstReg__15J3DAnmTevRegKeyCFUsP8_GXColor
lbl_8032C524:
/* 8032C524  3B 7B 00 01 */	addi r27, r27, 1
/* 8032C528  28 1B 00 04 */	cmplwi r27, 4
/* 8032C52C  3B BD 00 08 */	addi r29, r29, 8
/* 8032C530  41 80 FF BC */	blt lbl_8032C4EC
/* 8032C534  3B 60 00 00 */	li r27, 0
/* 8032C538  3B A0 00 00 */	li r29, 0
lbl_8032C53C:
/* 8032C53C  7F 9E EA 14 */	add r28, r30, r29
/* 8032C540  A0 1C 00 16 */	lhz r0, 0x16(r28)
/* 8032C544  28 00 00 00 */	cmplwi r0, 0
/* 8032C548  41 82 00 34 */	beq lbl_8032C57C
/* 8032C54C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8032C550  7F 64 DB 78 */	mr r4, r27
/* 8032C554  81 83 00 00 */	lwz r12, 0(r3)
/* 8032C558  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8032C55C  7D 89 03 A6 */	mtctr r12
/* 8032C560  4E 80 04 21 */	bctrl 
/* 8032C564  7C 65 1B 78 */	mr r5, r3
/* 8032C568  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 8032C56C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8032C570  A0 9C 00 14 */	lhz r4, 0x14(r28)
/* 8032C574  38 A5 00 10 */	addi r5, r5, 0x10
/* 8032C578  4B FF D9 9D */	bl calcTransform__19J3DAnmTextureSRTKeyCFfUsP17J3DTextureSRTInfo
lbl_8032C57C:
/* 8032C57C  3B 7B 00 01 */	addi r27, r27, 1
/* 8032C580  28 1B 00 08 */	cmplwi r27, 8
/* 8032C584  3B BD 00 08 */	addi r29, r29, 8
/* 8032C588  41 80 FF B4 */	blt lbl_8032C53C
/* 8032C58C  39 61 00 30 */	addi r11, r1, 0x30
/* 8032C590  48 03 5C 91 */	bl _restgpr_27
/* 8032C594  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032C598  7C 08 03 A6 */	mtlr r0
/* 8032C59C  38 21 00 30 */	addi r1, r1, 0x30
/* 8032C5A0  4E 80 00 20 */	blr 
