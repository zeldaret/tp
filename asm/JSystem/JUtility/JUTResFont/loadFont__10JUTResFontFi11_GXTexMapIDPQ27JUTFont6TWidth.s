lbl_802DFBE8:
/* 802DFBE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DFBEC  7C 08 02 A6 */	mflr r0
/* 802DFBF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFBF4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DFBF8  48 08 25 E5 */	bl _savegpr_29
/* 802DFBFC  7C 7D 1B 78 */	mr r29, r3
/* 802DFC00  7C 9E 23 78 */	mr r30, r4
/* 802DFC04  7C BF 2B 78 */	mr r31, r5
/* 802DFC08  28 06 00 00 */	cmplwi r6, 0
/* 802DFC0C  41 82 00 18 */	beq lbl_802DFC24
/* 802DFC10  7C C5 33 78 */	mr r5, r6
/* 802DFC14  81 83 00 00 */	lwz r12, 0(r3)
/* 802DFC18  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802DFC1C  7D 89 03 A6 */	mtctr r12
/* 802DFC20  4E 80 04 21 */	bctrl 
lbl_802DFC24:
/* 802DFC24  7F A3 EB 78 */	mr r3, r29
/* 802DFC28  7F C4 F3 78 */	mr r4, r30
/* 802DFC2C  48 00 01 AD */	bl getFontCode__10JUTResFontCFi
/* 802DFC30  7C 64 1B 78 */	mr r4, r3
/* 802DFC34  7F A3 EB 78 */	mr r3, r29
/* 802DFC38  7F E5 FB 78 */	mr r5, r31
/* 802DFC3C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802DFC40  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802DFC44  7D 89 03 A6 */	mtctr r12
/* 802DFC48  4E 80 04 21 */	bctrl 
/* 802DFC4C  39 61 00 20 */	addi r11, r1, 0x20
/* 802DFC50  48 08 25 D9 */	bl _restgpr_29
/* 802DFC54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DFC58  7C 08 03 A6 */	mtlr r0
/* 802DFC5C  38 21 00 20 */	addi r1, r1, 0x20
/* 802DFC60  4E 80 00 20 */	blr 
