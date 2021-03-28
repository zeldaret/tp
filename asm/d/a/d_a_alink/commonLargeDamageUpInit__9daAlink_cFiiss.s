lbl_80120500:
/* 80120500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80120504  7C 08 02 A6 */	mflr r0
/* 80120508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012050C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80120510  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80120514  41 82 00 0C */	beq lbl_80120520
/* 80120518  48 01 61 0D */	bl procWolfLargeDamageUpInit__9daAlink_cFiiss
/* 8012051C  48 00 00 08 */	b lbl_80120524
lbl_80120520:
/* 80120520  4B FB 9C 61 */	bl procLargeDamageUpInit__9daAlink_cFiiss
lbl_80120524:
/* 80120524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80120528  7C 08 03 A6 */	mtlr r0
/* 8012052C  38 21 00 10 */	addi r1, r1, 0x10
/* 80120530  4E 80 00 20 */	blr 
