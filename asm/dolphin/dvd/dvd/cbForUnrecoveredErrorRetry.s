lbl_80349758:
/* 80349758  7C 08 02 A6 */	mflr r0
/* 8034975C  28 03 00 10 */	cmplwi r3, 0x10
/* 80349760  90 01 00 04 */	stw r0, 4(r1)
/* 80349764  94 21 FF F8 */	stwu r1, -8(r1)
/* 80349768  40 82 00 20 */	bne lbl_80349788
/* 8034976C  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234568@ha */
/* 80349770  38 63 45 68 */	addi r3, r3, 0x4568 /* 0x01234568@l */
/* 80349774  48 00 24 15 */	bl __DVDStoreErrorCode
/* 80349778  48 00 19 C1 */	bl DVDReset
/* 8034977C  38 60 00 00 */	li r3, 0
/* 80349780  4B FF FB 5D */	bl cbForStateError
/* 80349784  48 00 00 44 */	b lbl_803497C8
lbl_80349788:
/* 80349788  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8034978C  41 82 00 20 */	beq lbl_803497AC
/* 80349790  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234567@ha */
/* 80349794  38 63 45 67 */	addi r3, r3, 0x4567 /* 0x01234567@l */
/* 80349798  48 00 23 F1 */	bl __DVDStoreErrorCode
/* 8034979C  3C 60 80 35 */	lis r3, cbForStateError@ha /* 0x803492DC@ha */
/* 803497A0  38 63 92 DC */	addi r3, r3, cbForStateError@l /* 0x803492DC@l */
/* 803497A4  4B FF E8 71 */	bl DVDLowStopMotor
/* 803497A8  48 00 00 20 */	b lbl_803497C8
lbl_803497AC:
/* 803497AC  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006000@ha */
/* 803497B0  38 63 60 00 */	addi r3, r3, 0x6000 /* 0xCC006000@l */
/* 803497B4  80 63 00 20 */	lwz r3, 0x20(r3)
/* 803497B8  48 00 23 D1 */	bl __DVDStoreErrorCode
/* 803497BC  3C 60 80 35 */	lis r3, cbForStateError@ha /* 0x803492DC@ha */
/* 803497C0  38 63 92 DC */	addi r3, r3, cbForStateError@l /* 0x803492DC@l */
/* 803497C4  4B FF E8 51 */	bl DVDLowStopMotor
lbl_803497C8:
/* 803497C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803497CC  38 21 00 08 */	addi r1, r1, 8
/* 803497D0  7C 08 03 A6 */	mtlr r0
/* 803497D4  4E 80 00 20 */	blr 
