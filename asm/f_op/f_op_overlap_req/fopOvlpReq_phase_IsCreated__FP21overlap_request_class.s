lbl_8001E8A4:
/* 8001E8A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E8A8  7C 08 02 A6 */	mflr r0
/* 8001E8AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E8B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E8B4  7C 7F 1B 78 */	mr r31, r3
/* 8001E8B8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8001E8BC  48 00 38 7D */	bl fpcM_IsCreating__FUi
/* 8001E8C0  2C 03 00 00 */	cmpwi r3, 0
/* 8001E8C4  40 82 00 28 */	bne lbl_8001E8EC
/* 8001E8C8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8001E8CC  48 00 2A 8D */	bl fpcEx_SearchByID__FUi
/* 8001E8D0  28 03 00 00 */	cmplwi r3, 0
/* 8001E8D4  40 82 00 0C */	bne lbl_8001E8E0
/* 8001E8D8  38 60 00 05 */	li r3, 5
/* 8001E8DC  48 00 00 14 */	b lbl_8001E8F0
lbl_8001E8E0:
/* 8001E8E0  90 7F 00 20 */	stw r3, 0x20(r31)
/* 8001E8E4  38 60 00 02 */	li r3, 2
/* 8001E8E8  48 00 00 08 */	b lbl_8001E8F0
lbl_8001E8EC:
/* 8001E8EC  38 60 00 00 */	li r3, 0
lbl_8001E8F0:
/* 8001E8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E8F8  7C 08 03 A6 */	mtlr r0
/* 8001E8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E900  4E 80 00 20 */	blr 
