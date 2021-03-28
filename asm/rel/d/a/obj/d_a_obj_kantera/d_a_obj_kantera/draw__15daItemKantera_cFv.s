lbl_80C394DC:
/* 80C394DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C394E0  7C 08 02 A6 */	mflr r0
/* 80C394E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C394E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C394EC  7C 7F 1B 78 */	mr r31, r3
/* 80C394F0  4B 3F E5 DC */	b chkDraw__12daItemBase_cFv
/* 80C394F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C394F8  40 82 00 0C */	bne lbl_80C39504
/* 80C394FC  38 60 00 01 */	li r3, 1
/* 80C39500  48 00 00 1C */	b lbl_80C3951C
lbl_80C39504:
/* 80C39504  7F E3 FB 78 */	mr r3, r31
/* 80C39508  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80C3950C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C39510  7D 89 03 A6 */	mtctr r12
/* 80C39514  4E 80 04 21 */	bctrl 
/* 80C39518  38 60 00 01 */	li r3, 1
lbl_80C3951C:
/* 80C3951C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C39520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C39524  7C 08 03 A6 */	mtlr r0
/* 80C39528  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3952C  4E 80 00 20 */	blr 
