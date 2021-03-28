lbl_80020B20:
/* 80020B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020B24  7C 08 02 A6 */	mflr r0
/* 80020B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80020B30  7C 7F 1B 78 */	mr r31, r3
/* 80020B34  48 00 03 31 */	bl fpcCtTg_CreateQTo__FP10create_tag
/* 80020B38  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80020B3C  48 00 0B 89 */	bl fpcLy_CreatedMesg__FP11layer_class
/* 80020B40  38 7F 00 18 */	addi r3, r31, 0x18
/* 80020B44  48 00 0A 45 */	bl fpcLy_CancelQTo__FP24process_method_tag_class
/* 80020B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80020B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020B50  7C 08 03 A6 */	mtlr r0
/* 80020B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80020B58  4E 80 00 20 */	blr 
