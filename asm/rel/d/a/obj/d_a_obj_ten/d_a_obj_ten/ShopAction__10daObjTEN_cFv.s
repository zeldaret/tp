lbl_80D0A01C:
/* 80D0A01C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D0A020  7C 08 02 A6 */	mflr r0
/* 80D0A024  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0A028  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D0A02C  7C 7F 1B 78 */	mr r31, r3
/* 80D0A030  88 03 05 E8 */	lbz r0, 0x5e8(r3)
/* 80D0A034  2C 00 00 01 */	cmpwi r0, 1
/* 80D0A038  41 82 00 5C */	beq lbl_80D0A094
/* 80D0A03C  40 80 00 10 */	bge lbl_80D0A04C
/* 80D0A040  2C 00 00 00 */	cmpwi r0, 0
/* 80D0A044  40 80 00 14 */	bge lbl_80D0A058
/* 80D0A048  48 00 00 50 */	b lbl_80D0A098
lbl_80D0A04C:
/* 80D0A04C  2C 00 00 03 */	cmpwi r0, 3
/* 80D0A050  40 80 00 48 */	bge lbl_80D0A098
/* 80D0A054  48 00 00 0C */	b lbl_80D0A060
lbl_80D0A058:
/* 80D0A058  4B FF EB B9 */	bl WaitAction__10daObjTEN_cFv
/* 80D0A05C  48 00 00 3C */	b lbl_80D0A098
lbl_80D0A060:
/* 80D0A060  4B FF F4 E9 */	bl WalkAction__10daObjTEN_cFv
/* 80D0A064  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A5@ha */
/* 80D0A068  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000600A5@l */
/* 80D0A06C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D0A070  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80D0A074  38 81 00 0C */	addi r4, r1, 0xc
/* 80D0A078  38 A0 00 00 */	li r5, 0
/* 80D0A07C  38 C0 FF FF */	li r6, -1
/* 80D0A080  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80D0A084  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80D0A088  7D 89 03 A6 */	mtctr r12
/* 80D0A08C  4E 80 04 21 */	bctrl 
/* 80D0A090  48 00 00 08 */	b lbl_80D0A098
lbl_80D0A094:
/* 80D0A094  4B FF F6 B5 */	bl MoveAction__10daObjTEN_cFv
lbl_80D0A098:
/* 80D0A098  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80D0A09C  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80D0A0A0  90 01 00 08 */	stw r0, 8(r1)
/* 80D0A0A4  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80D0A0A8  38 81 00 08 */	addi r4, r1, 8
/* 80D0A0AC  38 A0 00 00 */	li r5, 0
/* 80D0A0B0  38 C0 FF FF */	li r6, -1
/* 80D0A0B4  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80D0A0B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80D0A0BC  7D 89 03 A6 */	mtctr r12
/* 80D0A0C0  4E 80 04 21 */	bctrl 
/* 80D0A0C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D0A0C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D0A0CC  7C 08 03 A6 */	mtlr r0
/* 80D0A0D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D0A0D4  4E 80 00 20 */	blr 
