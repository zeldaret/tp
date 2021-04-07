lbl_80D09F58:
/* 80D09F58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D09F5C  7C 08 02 A6 */	mflr r0
/* 80D09F60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D09F64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D09F68  7C 7F 1B 78 */	mr r31, r3
/* 80D09F6C  88 03 05 E8 */	lbz r0, 0x5e8(r3)
/* 80D09F70  2C 00 00 01 */	cmpwi r0, 1
/* 80D09F74  41 82 00 5C */	beq lbl_80D09FD0
/* 80D09F78  40 80 00 10 */	bge lbl_80D09F88
/* 80D09F7C  2C 00 00 00 */	cmpwi r0, 0
/* 80D09F80  40 80 00 14 */	bge lbl_80D09F94
/* 80D09F84  48 00 00 50 */	b lbl_80D09FD4
lbl_80D09F88:
/* 80D09F88  2C 00 00 03 */	cmpwi r0, 3
/* 80D09F8C  40 80 00 48 */	bge lbl_80D09FD4
/* 80D09F90  48 00 00 0C */	b lbl_80D09F9C
lbl_80D09F94:
/* 80D09F94  4B FF EC 7D */	bl WaitAction__10daObjTEN_cFv
/* 80D09F98  48 00 00 3C */	b lbl_80D09FD4
lbl_80D09F9C:
/* 80D09F9C  4B FF F5 AD */	bl WalkAction__10daObjTEN_cFv
/* 80D09FA0  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A5@ha */
/* 80D09FA4  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000600A5@l */
/* 80D09FA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D09FAC  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80D09FB0  38 81 00 0C */	addi r4, r1, 0xc
/* 80D09FB4  38 A0 00 00 */	li r5, 0
/* 80D09FB8  38 C0 FF FF */	li r6, -1
/* 80D09FBC  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80D09FC0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80D09FC4  7D 89 03 A6 */	mtctr r12
/* 80D09FC8  4E 80 04 21 */	bctrl 
/* 80D09FCC  48 00 00 08 */	b lbl_80D09FD4
lbl_80D09FD0:
/* 80D09FD0  4B FF F7 79 */	bl MoveAction__10daObjTEN_cFv
lbl_80D09FD4:
/* 80D09FD4  7F E3 FB 78 */	mr r3, r31
/* 80D09FD8  4B 45 40 A1 */	bl Insect_GetDemoMain__9dInsect_cFv
/* 80D09FDC  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80D09FE0  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80D09FE4  90 01 00 08 */	stw r0, 8(r1)
/* 80D09FE8  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80D09FEC  38 81 00 08 */	addi r4, r1, 8
/* 80D09FF0  38 A0 00 00 */	li r5, 0
/* 80D09FF4  38 C0 FF FF */	li r6, -1
/* 80D09FF8  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80D09FFC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80D0A000  7D 89 03 A6 */	mtctr r12
/* 80D0A004  4E 80 04 21 */	bctrl 
/* 80D0A008  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D0A00C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D0A010  7C 08 03 A6 */	mtlr r0
/* 80D0A014  38 21 00 20 */	addi r1, r1, 0x20
/* 80D0A018  4E 80 00 20 */	blr 
