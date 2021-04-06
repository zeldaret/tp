lbl_80349C24:
/* 80349C24  7C 08 02 A6 */	mflr r0
/* 80349C28  28 03 00 10 */	cmplwi r3, 0x10
/* 80349C2C  90 01 00 04 */	stw r0, 4(r1)
/* 80349C30  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80349C34  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80349C38  40 82 00 20 */	bne lbl_80349C58
/* 80349C3C  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234568@ha */
/* 80349C40  38 63 45 68 */	addi r3, r3, 0x4568 /* 0x01234568@l */
/* 80349C44  48 00 1F 45 */	bl __DVDStoreErrorCode
/* 80349C48  48 00 14 F1 */	bl DVDReset
/* 80349C4C  38 60 00 00 */	li r3, 0
/* 80349C50  4B FF F6 8D */	bl cbForStateError
/* 80349C54  48 00 00 94 */	b lbl_80349CE8
lbl_80349C58:
/* 80349C58  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80349C5C  41 82 00 80 */	beq lbl_80349CDC
/* 80349C60  3C 60 80 35 */	lis r3, stateReadingFST@ha /* 0x803491C8@ha */
/* 80349C64  80 8D 92 00 */	lwz r4, bootInfo(r13)
/* 80349C68  38 03 91 C8 */	addi r0, r3, stateReadingFST@l /* 0x803491C8@l */
/* 80349C6C  38 A0 00 00 */	li r5, 0
/* 80349C70  90 0D 92 40 */	stw r0, LastState(r13)
/* 80349C74  3C 60 80 45 */	lis r3, BB2@ha /* 0x8044C900@ha */
/* 80349C78  90 AD 92 2C */	stw r5, NumInternalRetry(r13)
/* 80349C7C  38 63 C9 00 */	addi r3, r3, BB2@l /* 0x8044C900@l */
/* 80349C80  3B E3 00 08 */	addi r31, r3, 8
/* 80349C84  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 80349C88  80 1F 00 00 */	lwz r0, 0(r31)
/* 80349C8C  7C 03 00 40 */	cmplw r3, r0
/* 80349C90  40 80 00 1C */	bge lbl_80349CAC
/* 80349C94  3C 60 80 3D */	lis r3, lit_24@ha /* 0x803D1574@ha */
/* 80349C98  4C C6 31 82 */	crclr 6
/* 80349C9C  38 A3 15 74 */	addi r5, r3, lit_24@l /* 0x803D1574@l */
/* 80349CA0  38 6D 84 74 */	la r3, lit_23(r13) /* 804509F4-_SDA_BASE_ */
/* 80349CA4  38 80 02 95 */	li r4, 0x295
/* 80349CA8  4B CB D1 D5 */	bl OSPanic
lbl_80349CAC:
/* 80349CAC  3C 60 80 45 */	lis r3, BB2@ha /* 0x8044C900@ha */
/* 80349CB0  80 DF 00 00 */	lwz r6, 0(r31)
/* 80349CB4  38 A3 C9 00 */	addi r5, r3, BB2@l /* 0x8044C900@l */
/* 80349CB8  80 ED 92 00 */	lwz r7, bootInfo(r13)
/* 80349CBC  3C 80 80 35 */	lis r4, cbForStateReadingFST@ha /* 0x8034925C@ha */
/* 80349CC0  80 A5 00 04 */	lwz r5, 4(r5)
/* 80349CC4  38 06 00 1F */	addi r0, r6, 0x1f
/* 80349CC8  80 67 00 38 */	lwz r3, 0x38(r7)
/* 80349CCC  38 C4 92 5C */	addi r6, r4, cbForStateReadingFST@l /* 0x8034925C@l */
/* 80349CD0  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 80349CD4  4B FF DF 45 */	bl DVDLowRead
/* 80349CD8  48 00 00 10 */	b lbl_80349CE8
lbl_80349CDC:
/* 80349CDC  3C 60 80 35 */	lis r3, cbForStateGettingError@ha /* 0x80349498@ha */
/* 80349CE0  38 63 94 98 */	addi r3, r3, cbForStateGettingError@l /* 0x80349498@l */
/* 80349CE4  4B FF E3 BD */	bl DVDLowRequestError
lbl_80349CE8:
/* 80349CE8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80349CEC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80349CF0  38 21 00 18 */	addi r1, r1, 0x18
/* 80349CF4  7C 08 03 A6 */	mtlr r0
/* 80349CF8  4E 80 00 20 */	blr 
