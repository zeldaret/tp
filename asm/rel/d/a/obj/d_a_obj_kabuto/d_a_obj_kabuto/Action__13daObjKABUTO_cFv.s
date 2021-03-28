lbl_80C2C944:
/* 80C2C944  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C2C948  7C 08 02 A6 */	mflr r0
/* 80C2C94C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C2C950  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C2C954  7C 7F 1B 78 */	mr r31, r3
/* 80C2C958  88 03 07 10 */	lbz r0, 0x710(r3)
/* 80C2C95C  2C 00 00 01 */	cmpwi r0, 1
/* 80C2C960  41 82 00 5C */	beq lbl_80C2C9BC
/* 80C2C964  40 80 00 10 */	bge lbl_80C2C974
/* 80C2C968  2C 00 00 00 */	cmpwi r0, 0
/* 80C2C96C  40 80 00 14 */	bge lbl_80C2C980
/* 80C2C970  48 00 00 50 */	b lbl_80C2C9C0
lbl_80C2C974:
/* 80C2C974  2C 00 00 03 */	cmpwi r0, 3
/* 80C2C978  40 80 00 48 */	bge lbl_80C2C9C0
/* 80C2C97C  48 00 00 0C */	b lbl_80C2C988
lbl_80C2C980:
/* 80C2C980  4B FF EB 55 */	bl WaitAction__13daObjKABUTO_cFv
/* 80C2C984  48 00 00 3C */	b lbl_80C2C9C0
lbl_80C2C988:
/* 80C2C988  4B FF F4 61 */	bl WalkAction__13daObjKABUTO_cFv
/* 80C2C98C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A5@ha */
/* 80C2C990  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000600A5@l */
/* 80C2C994  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C2C998  38 7F 09 70 */	addi r3, r31, 0x970
/* 80C2C99C  38 81 00 0C */	addi r4, r1, 0xc
/* 80C2C9A0  38 A0 00 00 */	li r5, 0
/* 80C2C9A4  38 C0 FF FF */	li r6, -1
/* 80C2C9A8  81 9F 09 70 */	lwz r12, 0x970(r31)
/* 80C2C9AC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C2C9B0  7D 89 03 A6 */	mtctr r12
/* 80C2C9B4  4E 80 04 21 */	bctrl 
/* 80C2C9B8  48 00 00 08 */	b lbl_80C2C9C0
lbl_80C2C9BC:
/* 80C2C9BC  4B FF F6 2D */	bl MoveAction__13daObjKABUTO_cFv
lbl_80C2C9C0:
/* 80C2C9C0  7F E3 FB 78 */	mr r3, r31
/* 80C2C9C4  4B 53 16 B4 */	b Insect_GetDemoMain__9dInsect_cFv
/* 80C2C9C8  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80C2C9CC  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80C2C9D0  90 01 00 08 */	stw r0, 8(r1)
/* 80C2C9D4  38 7F 09 70 */	addi r3, r31, 0x970
/* 80C2C9D8  38 81 00 08 */	addi r4, r1, 8
/* 80C2C9DC  38 A0 00 00 */	li r5, 0
/* 80C2C9E0  38 C0 FF FF */	li r6, -1
/* 80C2C9E4  81 9F 09 70 */	lwz r12, 0x970(r31)
/* 80C2C9E8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C2C9EC  7D 89 03 A6 */	mtctr r12
/* 80C2C9F0  4E 80 04 21 */	bctrl 
/* 80C2C9F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C2C9F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C2C9FC  7C 08 03 A6 */	mtlr r0
/* 80C2CA00  38 21 00 20 */	addi r1, r1, 0x20
/* 80C2CA04  4E 80 00 20 */	blr 
