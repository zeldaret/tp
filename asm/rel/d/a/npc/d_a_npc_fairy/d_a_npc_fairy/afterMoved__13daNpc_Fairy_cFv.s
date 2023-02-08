lbl_809B3B98:
/* 809B3B98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B3B9C  7C 08 02 A6 */	mflr r0
/* 809B3BA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B3BA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809B3BA8  7C 7F 1B 78 */	mr r31, r3
/* 809B3BAC  4B FF FC A1 */	bl ptcl_water__13daNpc_Fairy_cFv
/* 809B3BB0  88 1F 0F F6 */	lbz r0, 0xff6(r31)
/* 809B3BB4  2C 00 00 01 */	cmpwi r0, 1
/* 809B3BB8  41 82 00 50 */	beq lbl_809B3C08
/* 809B3BBC  40 80 00 94 */	bge lbl_809B3C50
/* 809B3BC0  2C 00 00 00 */	cmpwi r0, 0
/* 809B3BC4  40 80 00 08 */	bge lbl_809B3BCC
/* 809B3BC8  48 00 00 88 */	b lbl_809B3C50
lbl_809B3BCC:
/* 809B3BCC  88 1F 0F F7 */	lbz r0, 0xff7(r31)
/* 809B3BD0  28 00 00 00 */	cmplwi r0, 0
/* 809B3BD4  41 82 00 7C */	beq lbl_809B3C50
/* 809B3BD8  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600C0@ha */
/* 809B3BDC  38 03 00 C0 */	addi r0, r3, 0x00C0 /* 0x000600C0@l */
/* 809B3BE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B3BE4  38 7F 05 80 */	addi r3, r31, 0x580
/* 809B3BE8  38 81 00 0C */	addi r4, r1, 0xc
/* 809B3BEC  38 A0 00 00 */	li r5, 0
/* 809B3BF0  38 C0 FF FF */	li r6, -1
/* 809B3BF4  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 809B3BF8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 809B3BFC  7D 89 03 A6 */	mtctr r12
/* 809B3C00  4E 80 04 21 */	bctrl 
/* 809B3C04  48 00 00 4C */	b lbl_809B3C50
lbl_809B3C08:
/* 809B3C08  7F E3 FB 78 */	mr r3, r31
/* 809B3C0C  4B FF FC DD */	bl ptcl_sprit__13daNpc_Fairy_cFv
/* 809B3C10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B3C14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B3C18  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809B3C1C  28 00 00 00 */	cmplwi r0, 0
/* 809B3C20  40 82 00 30 */	bne lbl_809B3C50
/* 809B3C24  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600BE@ha */
/* 809B3C28  38 03 00 BE */	addi r0, r3, 0x00BE /* 0x000600BE@l */
/* 809B3C2C  90 01 00 08 */	stw r0, 8(r1)
/* 809B3C30  38 7F 05 80 */	addi r3, r31, 0x580
/* 809B3C34  38 81 00 08 */	addi r4, r1, 8
/* 809B3C38  38 A0 00 00 */	li r5, 0
/* 809B3C3C  38 C0 FF FF */	li r6, -1
/* 809B3C40  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 809B3C44  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 809B3C48  7D 89 03 A6 */	mtctr r12
/* 809B3C4C  4E 80 04 21 */	bctrl 
lbl_809B3C50:
/* 809B3C50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809B3C54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B3C58  7C 08 03 A6 */	mtlr r0
/* 809B3C5C  38 21 00 20 */	addi r1, r1, 0x20
/* 809B3C60  4E 80 00 20 */	blr 
