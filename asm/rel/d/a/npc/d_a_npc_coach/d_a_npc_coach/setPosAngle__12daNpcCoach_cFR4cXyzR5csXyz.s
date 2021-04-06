lbl_8099DD28:
/* 8099DD28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099DD2C  7C 08 02 A6 */	mflr r0
/* 8099DD30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099DD34  39 61 00 20 */	addi r11, r1, 0x20
/* 8099DD38  4B 9C 44 A5 */	bl _savegpr_29
/* 8099DD3C  7C 7D 1B 78 */	mr r29, r3
/* 8099DD40  7C 9E 23 78 */	mr r30, r4
/* 8099DD44  7C BF 2B 78 */	mr r31, r5
/* 8099DD48  48 00 00 D1 */	bl initCoachPosition__12daNpcCoach_cFR3VecR4SVec
/* 8099DD4C  7F A3 EB 78 */	mr r3, r29
/* 8099DD50  80 1D 24 74 */	lwz r0, 0x2474(r29)
/* 8099DD54  7C 04 07 74 */	extsb r4, r0
/* 8099DD58  7F C5 F3 78 */	mr r5, r30
/* 8099DD5C  7F E6 FB 78 */	mr r6, r31
/* 8099DD60  48 00 03 D9 */	bl changeAtherPath__12daNpcCoach_cFScR4cXyzR5csXyz
/* 8099DD64  39 61 00 20 */	addi r11, r1, 0x20
/* 8099DD68  4B 9C 44 C1 */	bl _restgpr_29
/* 8099DD6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099DD70  7C 08 03 A6 */	mtlr r0
/* 8099DD74  38 21 00 20 */	addi r1, r1, 0x20
/* 8099DD78  4E 80 00 20 */	blr 
