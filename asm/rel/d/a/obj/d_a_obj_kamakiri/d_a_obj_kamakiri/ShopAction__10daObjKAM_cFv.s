lbl_80C36BE4:
/* 80C36BE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C36BE8  7C 08 02 A6 */	mflr r0
/* 80C36BEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C36BF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C36BF4  7C 7F 1B 78 */	mr r31, r3
/* 80C36BF8  88 03 09 80 */	lbz r0, 0x980(r3)
/* 80C36BFC  2C 00 00 01 */	cmpwi r0, 1
/* 80C36C00  41 82 00 5C */	beq lbl_80C36C5C
/* 80C36C04  40 80 00 10 */	bge lbl_80C36C14
/* 80C36C08  2C 00 00 00 */	cmpwi r0, 0
/* 80C36C0C  40 80 00 14 */	bge lbl_80C36C20
/* 80C36C10  48 00 00 50 */	b lbl_80C36C60
lbl_80C36C14:
/* 80C36C14  2C 00 00 03 */	cmpwi r0, 3
/* 80C36C18  40 80 00 48 */	bge lbl_80C36C60
/* 80C36C1C  48 00 00 0C */	b lbl_80C36C28
lbl_80C36C20:
/* 80C36C20  4B FF EA 65 */	bl ShopWaitAction__10daObjKAM_cFv
/* 80C36C24  48 00 00 3C */	b lbl_80C36C60
lbl_80C36C28:
/* 80C36C28  4B FF F5 11 */	bl WalkAction__10daObjKAM_cFv
/* 80C36C2C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A5@ha */
/* 80C36C30  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000600A5@l */
/* 80C36C34  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C36C38  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80C36C3C  38 81 00 0C */	addi r4, r1, 0xc
/* 80C36C40  38 A0 00 00 */	li r5, 0
/* 80C36C44  38 C0 FF FF */	li r6, -1
/* 80C36C48  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80C36C4C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C36C50  7D 89 03 A6 */	mtctr r12
/* 80C36C54  4E 80 04 21 */	bctrl 
/* 80C36C58  48 00 00 08 */	b lbl_80C36C60
lbl_80C36C5C:
/* 80C36C5C  4B FF F6 DD */	bl MoveAction__10daObjKAM_cFv
lbl_80C36C60:
/* 80C36C60  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80C36C64  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80C36C68  90 01 00 08 */	stw r0, 8(r1)
/* 80C36C6C  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80C36C70  38 81 00 08 */	addi r4, r1, 8
/* 80C36C74  38 A0 00 00 */	li r5, 0
/* 80C36C78  38 C0 FF FF */	li r6, -1
/* 80C36C7C  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80C36C80  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C36C84  7D 89 03 A6 */	mtctr r12
/* 80C36C88  4E 80 04 21 */	bctrl 
/* 80C36C8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C36C90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C36C94  7C 08 03 A6 */	mtlr r0
/* 80C36C98  38 21 00 20 */	addi r1, r1, 0x20
/* 80C36C9C  4E 80 00 20 */	blr 
