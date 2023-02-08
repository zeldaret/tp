lbl_80B30CC8:
/* 80B30CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B30CCC  7C 08 02 A6 */	mflr r0
/* 80B30CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B30CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B30CD8  7C 7F 1B 78 */	mr r31, r3
/* 80B30CDC  4B 4E 80 05 */	bl fopAc_IsActor__FPv
/* 80B30CE0  2C 03 00 00 */	cmpwi r3, 0
/* 80B30CE4  41 82 00 4C */	beq lbl_80B30D30
/* 80B30CE8  A8 1F 00 08 */	lha r0, 8(r31)
/* 80B30CEC  2C 00 02 34 */	cmpwi r0, 0x234
/* 80B30CF0  40 82 00 40 */	bne lbl_80B30D30
/* 80B30CF4  88 1F 14 74 */	lbz r0, 0x1474(r31)
/* 80B30CF8  2C 00 00 03 */	cmpwi r0, 3
/* 80B30CFC  40 82 00 10 */	bne lbl_80B30D0C
/* 80B30D00  7F E3 FB 78 */	mr r3, r31
/* 80B30D04  4B E8 EA A1 */	bl setTagJump__11daNpc_grA_cFv
/* 80B30D08  48 00 00 28 */	b lbl_80B30D30
lbl_80B30D0C:
/* 80B30D0C  2C 00 00 04 */	cmpwi r0, 4
/* 80B30D10  40 82 00 20 */	bne lbl_80B30D30
/* 80B30D14  7F E3 FB 78 */	mr r3, r31
/* 80B30D18  4B E9 04 49 */	bl getMode1__11daNpc_grA_cFv
/* 80B30D1C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B30D20  28 00 00 01 */	cmplwi r0, 1
/* 80B30D24  41 82 00 0C */	beq lbl_80B30D30
/* 80B30D28  7F E3 FB 78 */	mr r3, r31
/* 80B30D2C  4B E8 EC 71 */	bl setHomeJump__11daNpc_grA_cFv
lbl_80B30D30:
/* 80B30D30  38 60 00 00 */	li r3, 0
/* 80B30D34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B30D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B30D3C  7C 08 03 A6 */	mtlr r0
/* 80B30D40  38 21 00 10 */	addi r1, r1, 0x10
/* 80B30D44  4E 80 00 20 */	blr 
