lbl_80144B94:
/* 80144B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80144B98  7C 08 02 A6 */	mflr r0
/* 80144B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80144BA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80144BA4  7C 7F 1B 78 */	mr r31, r3
/* 80144BA8  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80144BAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80144BB0  7D 89 03 A6 */	mtctr r12
/* 80144BB4  4E 80 04 21 */	bctrl 
/* 80144BB8  7F E3 FB 78 */	mr r3, r31
/* 80144BBC  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80144BC0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80144BC4  7D 89 03 A6 */	mtctr r12
/* 80144BC8  4E 80 04 21 */	bctrl 
/* 80144BCC  7F E3 FB 78 */	mr r3, r31
/* 80144BD0  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80144BD4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80144BD8  7D 89 03 A6 */	mtctr r12
/* 80144BDC  4E 80 04 21 */	bctrl 
/* 80144BE0  7F E3 FB 78 */	mr r3, r31
/* 80144BE4  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80144BE8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80144BEC  7D 89 03 A6 */	mtctr r12
/* 80144BF0  4E 80 04 21 */	bctrl 
/* 80144BF4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80144BF8  4B EC 90 CD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80144BFC  7F E3 FB 78 */	mr r3, r31
/* 80144C00  48 00 00 A1 */	bl setListEnd__12daItemBase_cFv
/* 80144C04  7F E3 FB 78 */	mr r3, r31
/* 80144C08  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80144C0C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80144C10  7D 89 03 A6 */	mtctr r12
/* 80144C14  4E 80 04 21 */	bctrl 
/* 80144C18  38 60 00 01 */	li r3, 1
/* 80144C1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80144C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80144C24  7C 08 03 A6 */	mtlr r0
/* 80144C28  38 21 00 10 */	addi r1, r1, 0x10
/* 80144C2C  4E 80 00 20 */	blr 
