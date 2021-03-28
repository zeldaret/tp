lbl_80D41F10:
/* 80D41F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D41F14  7C 08 02 A6 */	mflr r0
/* 80D41F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41F1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D41F20  7C 7F 1B 78 */	mr r31, r3
/* 80D41F24  48 00 00 55 */	bl move__12daZrTuraRc_cFv
/* 80D41F28  7F E3 FB 78 */	mr r3, r31
/* 80D41F2C  4B FF FA 09 */	bl setBaseMtx__12daZrTuraRc_cFv
/* 80D41F30  38 7F 05 84 */	addi r3, r31, 0x584
/* 80D41F34  4B 34 18 FC */	b Move__10dCcD_GSttsFv
/* 80D41F38  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D41F3C  7C 03 07 74 */	extsb r3, r0
/* 80D41F40  4B 2E B1 2C */	b dComIfGp_getReverb__Fi
/* 80D41F44  7C 65 1B 78 */	mr r5, r3
/* 80D41F48  38 7F 09 18 */	addi r3, r31, 0x918
/* 80D41F4C  38 80 00 00 */	li r4, 0
/* 80D41F50  81 9F 09 28 */	lwz r12, 0x928(r31)
/* 80D41F54  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D41F58  7D 89 03 A6 */	mtctr r12
/* 80D41F5C  4E 80 04 21 */	bctrl 
/* 80D41F60  38 60 00 01 */	li r3, 1
/* 80D41F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D41F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D41F6C  7C 08 03 A6 */	mtlr r0
/* 80D41F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41F74  4E 80 00 20 */	blr 
