lbl_80C4BC4C:
/* 80C4BC4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C4BC50  7C 08 02 A6 */	mflr r0
/* 80C4BC54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C4BC58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C4BC5C  7C 7F 1B 78 */	mr r31, r3
/* 80C4BC60  88 03 09 80 */	lbz r0, 0x980(r3)
/* 80C4BC64  2C 00 00 01 */	cmpwi r0, 1
/* 80C4BC68  41 82 00 5C */	beq lbl_80C4BCC4
/* 80C4BC6C  40 80 00 10 */	bge lbl_80C4BC7C
/* 80C4BC70  2C 00 00 00 */	cmpwi r0, 0
/* 80C4BC74  40 80 00 14 */	bge lbl_80C4BC88
/* 80C4BC78  48 00 00 50 */	b lbl_80C4BCC8
lbl_80C4BC7C:
/* 80C4BC7C  2C 00 00 03 */	cmpwi r0, 3
/* 80C4BC80  40 80 00 48 */	bge lbl_80C4BCC8
/* 80C4BC84  48 00 00 0C */	b lbl_80C4BC90
lbl_80C4BC88:
/* 80C4BC88  4B FF EA 5D */	bl ShopWaitAction__10daObjKUW_cFv
/* 80C4BC8C  48 00 00 3C */	b lbl_80C4BCC8
lbl_80C4BC90:
/* 80C4BC90  4B FF F5 11 */	bl WalkAction__10daObjKUW_cFv
/* 80C4BC94  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A5@ha */
/* 80C4BC98  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000600A5@l */
/* 80C4BC9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C4BCA0  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80C4BCA4  38 81 00 0C */	addi r4, r1, 0xc
/* 80C4BCA8  38 A0 00 00 */	li r5, 0
/* 80C4BCAC  38 C0 FF FF */	li r6, -1
/* 80C4BCB0  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80C4BCB4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C4BCB8  7D 89 03 A6 */	mtctr r12
/* 80C4BCBC  4E 80 04 21 */	bctrl 
/* 80C4BCC0  48 00 00 08 */	b lbl_80C4BCC8
lbl_80C4BCC4:
/* 80C4BCC4  4B FF F6 DD */	bl MoveAction__10daObjKUW_cFv
lbl_80C4BCC8:
/* 80C4BCC8  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80C4BCCC  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80C4BCD0  90 01 00 08 */	stw r0, 8(r1)
/* 80C4BCD4  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80C4BCD8  38 81 00 08 */	addi r4, r1, 8
/* 80C4BCDC  38 A0 00 00 */	li r5, 0
/* 80C4BCE0  38 C0 FF FF */	li r6, -1
/* 80C4BCE4  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80C4BCE8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C4BCEC  7D 89 03 A6 */	mtctr r12
/* 80C4BCF0  4E 80 04 21 */	bctrl 
/* 80C4BCF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C4BCF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C4BCFC  7C 08 03 A6 */	mtlr r0
/* 80C4BD00  38 21 00 20 */	addi r1, r1, 0x20
/* 80C4BD04  4E 80 00 20 */	blr 
