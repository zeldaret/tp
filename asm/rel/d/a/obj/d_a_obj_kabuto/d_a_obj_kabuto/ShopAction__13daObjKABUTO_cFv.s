lbl_80C2CA08:
/* 80C2CA08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C2CA0C  7C 08 02 A6 */	mflr r0
/* 80C2CA10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C2CA14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C2CA18  7C 7F 1B 78 */	mr r31, r3
/* 80C2CA1C  88 03 07 10 */	lbz r0, 0x710(r3)
/* 80C2CA20  2C 00 00 01 */	cmpwi r0, 1
/* 80C2CA24  41 82 00 5C */	beq lbl_80C2CA80
/* 80C2CA28  40 80 00 10 */	bge lbl_80C2CA38
/* 80C2CA2C  2C 00 00 00 */	cmpwi r0, 0
/* 80C2CA30  40 80 00 14 */	bge lbl_80C2CA44
/* 80C2CA34  48 00 00 50 */	b lbl_80C2CA84
lbl_80C2CA38:
/* 80C2CA38  2C 00 00 03 */	cmpwi r0, 3
/* 80C2CA3C  40 80 00 48 */	bge lbl_80C2CA84
/* 80C2CA40  48 00 00 0C */	b lbl_80C2CA4C
lbl_80C2CA44:
/* 80C2CA44  4B FF E9 29 */	bl ShopWaitAction__13daObjKABUTO_cFv
/* 80C2CA48  48 00 00 3C */	b lbl_80C2CA84
lbl_80C2CA4C:
/* 80C2CA4C  4B FF F3 9D */	bl WalkAction__13daObjKABUTO_cFv
/* 80C2CA50  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A5@ha */
/* 80C2CA54  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000600A5@l */
/* 80C2CA58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C2CA5C  38 7F 09 70 */	addi r3, r31, 0x970
/* 80C2CA60  38 81 00 0C */	addi r4, r1, 0xc
/* 80C2CA64  38 A0 00 00 */	li r5, 0
/* 80C2CA68  38 C0 FF FF */	li r6, -1
/* 80C2CA6C  81 9F 09 70 */	lwz r12, 0x970(r31)
/* 80C2CA70  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C2CA74  7D 89 03 A6 */	mtctr r12
/* 80C2CA78  4E 80 04 21 */	bctrl 
/* 80C2CA7C  48 00 00 08 */	b lbl_80C2CA84
lbl_80C2CA80:
/* 80C2CA80  4B FF F5 69 */	bl MoveAction__13daObjKABUTO_cFv
lbl_80C2CA84:
/* 80C2CA84  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80C2CA88  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80C2CA8C  90 01 00 08 */	stw r0, 8(r1)
/* 80C2CA90  38 7F 09 70 */	addi r3, r31, 0x970
/* 80C2CA94  38 81 00 08 */	addi r4, r1, 8
/* 80C2CA98  38 A0 00 00 */	li r5, 0
/* 80C2CA9C  38 C0 FF FF */	li r6, -1
/* 80C2CAA0  81 9F 09 70 */	lwz r12, 0x970(r31)
/* 80C2CAA4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C2CAA8  7D 89 03 A6 */	mtctr r12
/* 80C2CAAC  4E 80 04 21 */	bctrl 
/* 80C2CAB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C2CAB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C2CAB8  7C 08 03 A6 */	mtlr r0
/* 80C2CABC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C2CAC0  4E 80 00 20 */	blr 
