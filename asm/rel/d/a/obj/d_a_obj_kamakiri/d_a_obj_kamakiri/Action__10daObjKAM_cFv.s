lbl_80C36B20:
/* 80C36B20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C36B24  7C 08 02 A6 */	mflr r0
/* 80C36B28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C36B2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C36B30  7C 7F 1B 78 */	mr r31, r3
/* 80C36B34  88 03 09 80 */	lbz r0, 0x980(r3)
/* 80C36B38  2C 00 00 01 */	cmpwi r0, 1
/* 80C36B3C  41 82 00 5C */	beq lbl_80C36B98
/* 80C36B40  40 80 00 10 */	bge lbl_80C36B50
/* 80C36B44  2C 00 00 00 */	cmpwi r0, 0
/* 80C36B48  40 80 00 14 */	bge lbl_80C36B5C
/* 80C36B4C  48 00 00 50 */	b lbl_80C36B9C
lbl_80C36B50:
/* 80C36B50  2C 00 00 03 */	cmpwi r0, 3
/* 80C36B54  40 80 00 48 */	bge lbl_80C36B9C
/* 80C36B58  48 00 00 0C */	b lbl_80C36B64
lbl_80C36B5C:
/* 80C36B5C  4B FF EC 91 */	bl WaitAction__10daObjKAM_cFv
/* 80C36B60  48 00 00 3C */	b lbl_80C36B9C
lbl_80C36B64:
/* 80C36B64  4B FF F5 D5 */	bl WalkAction__10daObjKAM_cFv
/* 80C36B68  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A5@ha */
/* 80C36B6C  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000600A5@l */
/* 80C36B70  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C36B74  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80C36B78  38 81 00 0C */	addi r4, r1, 0xc
/* 80C36B7C  38 A0 00 00 */	li r5, 0
/* 80C36B80  38 C0 FF FF */	li r6, -1
/* 80C36B84  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80C36B88  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C36B8C  7D 89 03 A6 */	mtctr r12
/* 80C36B90  4E 80 04 21 */	bctrl 
/* 80C36B94  48 00 00 08 */	b lbl_80C36B9C
lbl_80C36B98:
/* 80C36B98  4B FF F7 A1 */	bl MoveAction__10daObjKAM_cFv
lbl_80C36B9C:
/* 80C36B9C  7F E3 FB 78 */	mr r3, r31
/* 80C36BA0  4B 52 74 D8 */	b Insect_GetDemoMain__9dInsect_cFv
/* 80C36BA4  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80C36BA8  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80C36BAC  90 01 00 08 */	stw r0, 8(r1)
/* 80C36BB0  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80C36BB4  38 81 00 08 */	addi r4, r1, 8
/* 80C36BB8  38 A0 00 00 */	li r5, 0
/* 80C36BBC  38 C0 FF FF */	li r6, -1
/* 80C36BC0  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80C36BC4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C36BC8  7D 89 03 A6 */	mtctr r12
/* 80C36BCC  4E 80 04 21 */	bctrl 
/* 80C36BD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C36BD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C36BD8  7C 08 03 A6 */	mtlr r0
/* 80C36BDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C36BE0  4E 80 00 20 */	blr 
