lbl_80074B40:
/* 80074B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80074B44  7C 08 02 A6 */	mflr r0
/* 80074B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80074B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80074B50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80074B54  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80074B58  4B FF FA D1 */	bl GetBgWBasePointer__4cBgSCFRC13cBgS_PolyInfo
/* 80074B5C  28 03 00 00 */	cmplwi r3, 0
/* 80074B60  41 82 00 24 */	beq lbl_80074B84
/* 80074B64  81 83 00 04 */	lwz r12, 4(r3)
/* 80074B68  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80074B6C  7D 89 03 A6 */	mtctr r12
/* 80074B70  4E 80 04 21 */	bctrl 
/* 80074B74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80074B78  41 82 00 0C */	beq lbl_80074B84
/* 80074B7C  38 60 00 01 */	li r3, 1
/* 80074B80  48 00 00 08 */	b lbl_80074B88
lbl_80074B84:
/* 80074B84  38 60 00 00 */	li r3, 0
lbl_80074B88:
/* 80074B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80074B8C  7C 08 03 A6 */	mtlr r0
/* 80074B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80074B94  4E 80 00 20 */	blr 
