lbl_8059EF48:
/* 8059EF48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059EF4C  7C 08 02 A6 */	mflr r0
/* 8059EF50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059EF54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059EF58  7C 7F 1B 78 */	mr r31, r3
/* 8059EF5C  4B A9 8B 70 */	b chkDraw__12daItemBase_cFv
/* 8059EF60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059EF64  40 82 00 0C */	bne lbl_8059EF70
/* 8059EF68  38 60 00 01 */	li r3, 1
/* 8059EF6C  48 00 00 1C */	b lbl_8059EF88
lbl_8059EF70:
/* 8059EF70  7F E3 FB 78 */	mr r3, r31
/* 8059EF74  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8059EF78  81 8C 00 08 */	lwz r12, 8(r12)
/* 8059EF7C  7D 89 03 A6 */	mtctr r12
/* 8059EF80  4E 80 04 21 */	bctrl 
/* 8059EF84  38 60 00 01 */	li r3, 1
lbl_8059EF88:
/* 8059EF88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059EF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059EF90  7C 08 03 A6 */	mtlr r0
/* 8059EF94  38 21 00 10 */	addi r1, r1, 0x10
/* 8059EF98  4E 80 00 20 */	blr 
