lbl_80CDB5D4:
/* 80CDB5D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDB5D8  7C 08 02 A6 */	mflr r0
/* 80CDB5DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB5E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDB5E4  7C 7F 1B 78 */	mr r31, r3
/* 80CDB5E8  4B 35 C4 E4 */	b chkDraw__12daItemBase_cFv
/* 80CDB5EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CDB5F0  40 82 00 0C */	bne lbl_80CDB5FC
/* 80CDB5F4  38 60 00 01 */	li r3, 1
/* 80CDB5F8  48 00 00 1C */	b lbl_80CDB614
lbl_80CDB5FC:
/* 80CDB5FC  7F E3 FB 78 */	mr r3, r31
/* 80CDB600  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80CDB604  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CDB608  7D 89 03 A6 */	mtctr r12
/* 80CDB60C  4E 80 04 21 */	bctrl 
/* 80CDB610  38 60 00 01 */	li r3, 1
lbl_80CDB614:
/* 80CDB614  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDB618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDB61C  7C 08 03 A6 */	mtlr r0
/* 80CDB620  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDB624  4E 80 00 20 */	blr 
