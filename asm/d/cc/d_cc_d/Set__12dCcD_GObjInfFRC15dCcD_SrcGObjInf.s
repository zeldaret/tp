lbl_80084740:
/* 80084740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80084744  7C 08 02 A6 */	mflr r0
/* 80084748  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008474C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80084750  93 C1 00 08 */	stw r30, 8(r1)
/* 80084754  7C 7E 1B 78 */	mr r30, r3
/* 80084758  7C 9F 23 78 */	mr r31, r4
/* 8008475C  48 1D F2 C1 */	bl Set__8cCcD_ObjFRC11cCcD_SrcObj
/* 80084760  38 7E 00 58 */	addi r3, r30, 0x58
/* 80084764  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80084768  4B FF F1 DD */	bl Set__11dCcD_GObjAtFRC14dCcD_SrcGObjAt
/* 8008476C  38 7E 00 9C */	addi r3, r30, 0x9c
/* 80084770  38 9F 00 24 */	addi r4, r31, 0x24
/* 80084774  4B FF F2 2D */	bl Set__11dCcD_GObjTgFRC14dCcD_SrcGObjTg
/* 80084778  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 8008477C  38 9F 00 2C */	addi r4, r31, 0x2c
/* 80084780  4B FF EF 85 */	bl Set__22dCcD_GAtTgCoCommonBaseFRC25dCcD_SrcGAtTgCoCommonBase
/* 80084784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80084788  83 C1 00 08 */	lwz r30, 8(r1)
/* 8008478C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80084790  7C 08 03 A6 */	mtlr r0
/* 80084794  38 21 00 10 */	addi r1, r1, 0x10
/* 80084798  4E 80 00 20 */	blr 
