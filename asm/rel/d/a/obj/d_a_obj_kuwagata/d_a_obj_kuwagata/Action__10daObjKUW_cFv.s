lbl_80C4BB88:
/* 80C4BB88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C4BB8C  7C 08 02 A6 */	mflr r0
/* 80C4BB90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C4BB94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C4BB98  7C 7F 1B 78 */	mr r31, r3
/* 80C4BB9C  88 03 09 80 */	lbz r0, 0x980(r3)
/* 80C4BBA0  2C 00 00 01 */	cmpwi r0, 1
/* 80C4BBA4  41 82 00 5C */	beq lbl_80C4BC00
/* 80C4BBA8  40 80 00 10 */	bge lbl_80C4BBB8
/* 80C4BBAC  2C 00 00 00 */	cmpwi r0, 0
/* 80C4BBB0  40 80 00 14 */	bge lbl_80C4BBC4
/* 80C4BBB4  48 00 00 50 */	b lbl_80C4BC04
lbl_80C4BBB8:
/* 80C4BBB8  2C 00 00 03 */	cmpwi r0, 3
/* 80C4BBBC  40 80 00 48 */	bge lbl_80C4BC04
/* 80C4BBC0  48 00 00 0C */	b lbl_80C4BBCC
lbl_80C4BBC4:
/* 80C4BBC4  4B FF EC 89 */	bl WaitAction__10daObjKUW_cFv
/* 80C4BBC8  48 00 00 3C */	b lbl_80C4BC04
lbl_80C4BBCC:
/* 80C4BBCC  4B FF F5 D5 */	bl WalkAction__10daObjKUW_cFv
/* 80C4BBD0  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A5@ha */
/* 80C4BBD4  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000600A5@l */
/* 80C4BBD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C4BBDC  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80C4BBE0  38 81 00 0C */	addi r4, r1, 0xc
/* 80C4BBE4  38 A0 00 00 */	li r5, 0
/* 80C4BBE8  38 C0 FF FF */	li r6, -1
/* 80C4BBEC  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80C4BBF0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C4BBF4  7D 89 03 A6 */	mtctr r12
/* 80C4BBF8  4E 80 04 21 */	bctrl 
/* 80C4BBFC  48 00 00 08 */	b lbl_80C4BC04
lbl_80C4BC00:
/* 80C4BC00  4B FF F7 A1 */	bl MoveAction__10daObjKUW_cFv
lbl_80C4BC04:
/* 80C4BC04  7F E3 FB 78 */	mr r3, r31
/* 80C4BC08  4B 51 24 70 */	b Insect_GetDemoMain__9dInsect_cFv
/* 80C4BC0C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80C4BC10  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80C4BC14  90 01 00 08 */	stw r0, 8(r1)
/* 80C4BC18  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80C4BC1C  38 81 00 08 */	addi r4, r1, 8
/* 80C4BC20  38 A0 00 00 */	li r5, 0
/* 80C4BC24  38 C0 FF FF */	li r6, -1
/* 80C4BC28  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80C4BC2C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C4BC30  7D 89 03 A6 */	mtctr r12
/* 80C4BC34  4E 80 04 21 */	bctrl 
/* 80C4BC38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C4BC3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C4BC40  7C 08 03 A6 */	mtlr r0
/* 80C4BC44  38 21 00 20 */	addi r1, r1, 0x20
/* 80C4BC48  4E 80 00 20 */	blr 
