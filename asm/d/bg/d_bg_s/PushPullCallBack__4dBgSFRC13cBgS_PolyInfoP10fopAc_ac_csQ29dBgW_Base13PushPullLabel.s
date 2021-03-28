lbl_80075C6C:
/* 80075C6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80075C70  7C 08 02 A6 */	mflr r0
/* 80075C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80075C78  39 61 00 20 */	addi r11, r1, 0x20
/* 80075C7C  48 2E C5 55 */	bl _savegpr_26
/* 80075C80  7C 7A 1B 78 */	mr r26, r3
/* 80075C84  7C BB 2B 78 */	mr r27, r5
/* 80075C88  7C DC 33 78 */	mr r28, r6
/* 80075C8C  7C FD 3B 78 */	mr r29, r7
/* 80075C90  A0 04 00 02 */	lhz r0, 2(r4)
/* 80075C94  1F E0 00 14 */	mulli r31, r0, 0x14
/* 80075C98  7F DA F8 2E */	lwzx r30, r26, r31
/* 80075C9C  7F C3 F3 78 */	mr r3, r30
/* 80075CA0  48 1F 25 35 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80075CA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80075CA8  40 82 00 0C */	bne lbl_80075CB4
/* 80075CAC  38 60 00 00 */	li r3, 0
/* 80075CB0  48 00 00 44 */	b lbl_80075CF4
lbl_80075CB4:
/* 80075CB4  7C 7A FA 14 */	add r3, r26, r31
/* 80075CB8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80075CBC  28 03 00 00 */	cmplwi r3, 0
/* 80075CC0  40 82 00 0C */	bne lbl_80075CCC
/* 80075CC4  38 60 00 00 */	li r3, 0
/* 80075CC8  48 00 00 2C */	b lbl_80075CF4
lbl_80075CCC:
/* 80075CCC  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 80075CD0  28 0C 00 00 */	cmplwi r12, 0
/* 80075CD4  40 82 00 0C */	bne lbl_80075CE0
/* 80075CD8  38 60 00 00 */	li r3, 0
/* 80075CDC  48 00 00 18 */	b lbl_80075CF4
lbl_80075CE0:
/* 80075CE0  7F 64 DB 78 */	mr r4, r27
/* 80075CE4  7F 85 E3 78 */	mr r5, r28
/* 80075CE8  7F A6 EB 78 */	mr r6, r29
/* 80075CEC  7D 89 03 A6 */	mtctr r12
/* 80075CF0  4E 80 04 21 */	bctrl 
lbl_80075CF4:
/* 80075CF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80075CF8  48 2E C5 25 */	bl _restgpr_26
/* 80075CFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80075D00  7C 08 03 A6 */	mtlr r0
/* 80075D04  38 21 00 20 */	addi r1, r1, 0x20
/* 80075D08  4E 80 00 20 */	blr 
