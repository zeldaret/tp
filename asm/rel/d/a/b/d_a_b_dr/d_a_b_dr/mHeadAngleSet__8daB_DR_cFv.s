lbl_805BCC4C:
/* 805BCC4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BCC50  7C 08 02 A6 */	mflr r0
/* 805BCC54  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BCC58  39 61 00 20 */	addi r11, r1, 0x20
/* 805BCC5C  4B DA 55 81 */	bl _savegpr_29
/* 805BCC60  7C 7D 1B 78 */	mr r29, r3
/* 805BCC64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BCC68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BCC6C  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 805BCC70  88 1D 07 D6 */	lbz r0, 0x7d6(r29)
/* 805BCC74  28 00 00 00 */	cmplwi r0, 0
/* 805BCC78  40 82 00 C4 */	bne lbl_805BCD3C
/* 805BCC7C  38 7D 07 60 */	addi r3, r29, 0x760
/* 805BCC80  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805BCC84  4B CB 3F 81 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805BCC88  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805BCC8C  7C 00 18 50 */	subf r0, r0, r3
/* 805BCC90  7C 00 00 D0 */	neg r0, r0
/* 805BCC94  7C 1E 07 34 */	extsh r30, r0
/* 805BCC98  38 7D 07 60 */	addi r3, r29, 0x760
/* 805BCC9C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805BCCA0  4B CB 3F D5 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 805BCCA4  7C 03 00 D0 */	neg r0, r3
/* 805BCCA8  7C 1F 07 34 */	extsh r31, r0
/* 805BCCAC  80 1D 07 08 */	lwz r0, 0x708(r29)
/* 805BCCB0  2C 00 00 09 */	cmpwi r0, 9
/* 805BCCB4  41 82 00 24 */	beq lbl_805BCCD8
/* 805BCCB8  2C 1E 10 00 */	cmpwi r30, 0x1000
/* 805BCCBC  40 81 00 08 */	ble lbl_805BCCC4
/* 805BCCC0  3B C0 10 00 */	li r30, 0x1000
lbl_805BCCC4:
/* 805BCCC4  7F C0 07 34 */	extsh r0, r30
/* 805BCCC8  2C 00 F0 00 */	cmpwi r0, -4096
/* 805BCCCC  40 80 00 28 */	bge lbl_805BCCF4
/* 805BCCD0  3B C0 F0 00 */	li r30, -4096
/* 805BCCD4  48 00 00 20 */	b lbl_805BCCF4
lbl_805BCCD8:
/* 805BCCD8  2C 1E 20 00 */	cmpwi r30, 0x2000
/* 805BCCDC  40 81 00 08 */	ble lbl_805BCCE4
/* 805BCCE0  3B C0 20 00 */	li r30, 0x2000
lbl_805BCCE4:
/* 805BCCE4  7F C0 07 34 */	extsh r0, r30
/* 805BCCE8  2C 00 E0 00 */	cmpwi r0, -8192
/* 805BCCEC  40 80 00 08 */	bge lbl_805BCCF4
/* 805BCCF0  3B C0 E0 00 */	li r30, -8192
lbl_805BCCF4:
/* 805BCCF4  2C 1F 10 00 */	cmpwi r31, 0x1000
/* 805BCCF8  40 81 00 08 */	ble lbl_805BCD00
/* 805BCCFC  3B E0 10 00 */	li r31, 0x1000
lbl_805BCD00:
/* 805BCD00  7F E0 07 34 */	extsh r0, r31
/* 805BCD04  2C 00 F0 00 */	cmpwi r0, -4096
/* 805BCD08  40 80 00 08 */	bge lbl_805BCD10
/* 805BCD0C  3B E0 F0 00 */	li r31, -4096
lbl_805BCD10:
/* 805BCD10  38 7D 07 5A */	addi r3, r29, 0x75a
/* 805BCD14  7F C4 F3 78 */	mr r4, r30
/* 805BCD18  38 A0 00 08 */	li r5, 8
/* 805BCD1C  38 C0 05 00 */	li r6, 0x500
/* 805BCD20  4B CB 38 E9 */	bl cLib_addCalcAngleS2__FPssss
/* 805BCD24  38 7D 07 58 */	addi r3, r29, 0x758
/* 805BCD28  7F E4 FB 78 */	mr r4, r31
/* 805BCD2C  38 A0 00 08 */	li r5, 8
/* 805BCD30  38 C0 05 00 */	li r6, 0x500
/* 805BCD34  4B CB 38 D5 */	bl cLib_addCalcAngleS2__FPssss
/* 805BCD38  48 00 00 2C */	b lbl_805BCD64
lbl_805BCD3C:
/* 805BCD3C  38 7D 07 5A */	addi r3, r29, 0x75a
/* 805BCD40  38 80 00 00 */	li r4, 0
/* 805BCD44  38 A0 00 08 */	li r5, 8
/* 805BCD48  38 C0 05 00 */	li r6, 0x500
/* 805BCD4C  4B CB 38 BD */	bl cLib_addCalcAngleS2__FPssss
/* 805BCD50  38 7D 07 58 */	addi r3, r29, 0x758
/* 805BCD54  38 80 00 00 */	li r4, 0
/* 805BCD58  38 A0 00 08 */	li r5, 8
/* 805BCD5C  38 C0 05 00 */	li r6, 0x500
/* 805BCD60  4B CB 38 A9 */	bl cLib_addCalcAngleS2__FPssss
lbl_805BCD64:
/* 805BCD64  39 61 00 20 */	addi r11, r1, 0x20
/* 805BCD68  4B DA 54 C1 */	bl _restgpr_29
/* 805BCD6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BCD70  7C 08 03 A6 */	mtlr r0
/* 805BCD74  38 21 00 20 */	addi r1, r1, 0x20
/* 805BCD78  4E 80 00 20 */	blr 
