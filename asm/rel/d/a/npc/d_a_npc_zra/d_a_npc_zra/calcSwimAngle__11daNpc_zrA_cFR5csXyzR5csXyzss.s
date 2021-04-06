lbl_80B824F4:
/* 80B824F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B824F8  7C 08 02 A6 */	mflr r0
/* 80B824FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B82500  39 61 00 20 */	addi r11, r1, 0x20
/* 80B82504  4B 7D FC D1 */	bl _savegpr_27
/* 80B82508  7C 7B 1B 78 */	mr r27, r3
/* 80B8250C  7C 9C 23 78 */	mr r28, r4
/* 80B82510  7C BD 2B 78 */	mr r29, r5
/* 80B82514  7C DE 33 78 */	mr r30, r6
/* 80B82518  7C FF 3B 78 */	mr r31, r7
/* 80B8251C  7F A3 EB 78 */	mr r3, r29
/* 80B82520  A8 84 00 00 */	lha r4, 0(r4)
/* 80B82524  7F C5 F3 78 */	mr r5, r30
/* 80B82528  7F E6 FB 78 */	mr r6, r31
/* 80B8252C  4B 6E E0 DD */	bl cLib_addCalcAngleS2__FPssss
/* 80B82530  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 80B82534  A8 9D 00 00 */	lha r4, 0(r29)
/* 80B82538  7F C5 F3 78 */	mr r5, r30
/* 80B8253C  7F E6 FB 78 */	mr r6, r31
/* 80B82540  4B 6E E0 C9 */	bl cLib_addCalcAngleS2__FPssss
/* 80B82544  38 7D 00 02 */	addi r3, r29, 2
/* 80B82548  A8 9C 00 02 */	lha r4, 2(r28)
/* 80B8254C  7F C5 F3 78 */	mr r5, r30
/* 80B82550  7F E6 FB 78 */	mr r6, r31
/* 80B82554  4B 6E E0 B5 */	bl cLib_addCalcAngleS2__FPssss
/* 80B82558  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80B8255C  A8 9D 00 02 */	lha r4, 2(r29)
/* 80B82560  7F C5 F3 78 */	mr r5, r30
/* 80B82564  7F E6 FB 78 */	mr r6, r31
/* 80B82568  4B 6E E0 A1 */	bl cLib_addCalcAngleS2__FPssss
/* 80B8256C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B82570  4B 7D FC B1 */	bl _restgpr_27
/* 80B82574  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B82578  7C 08 03 A6 */	mtlr r0
/* 80B8257C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B82580  4E 80 00 20 */	blr 
