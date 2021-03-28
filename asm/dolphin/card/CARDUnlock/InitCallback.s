lbl_80354DF0:
/* 80354DF0  7C 08 02 A6 */	mflr r0
/* 80354DF4  3C 80 80 45 */	lis r4, __CARDBlock@ha
/* 80354DF8  90 01 00 04 */	stw r0, 4(r1)
/* 80354DFC  38 84 CB C0 */	addi r4, r4, __CARDBlock@l
/* 80354E00  38 04 00 30 */	addi r0, r4, 0x30
/* 80354E04  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80354E08  7C 00 18 40 */	cmplw r0, r3
/* 80354E0C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80354E10  41 82 00 10 */	beq lbl_80354E20
/* 80354E14  38 04 01 40 */	addi r0, r4, 0x140
/* 80354E18  7C 00 18 40 */	cmplw r0, r3
/* 80354E1C  38 84 01 10 */	addi r4, r4, 0x110
lbl_80354E20:
/* 80354E20  83 E4 00 80 */	lwz r31, 0x80(r4)
/* 80354E24  3C 60 FF 00 */	lis r3, 0xff00
/* 80354E28  4B FF D6 41 */	bl DSPSendMailToDSP
lbl_80354E2C:
/* 80354E2C  4B FF D6 05 */	bl DSPCheckMailToDSP
/* 80354E30  28 03 00 00 */	cmplwi r3, 0
/* 80354E34  40 82 FF F8 */	bne lbl_80354E2C
/* 80354E38  7F E3 FB 78 */	mr r3, r31
/* 80354E3C  4B FF D6 2D */	bl DSPSendMailToDSP
lbl_80354E40:
/* 80354E40  4B FF D5 F1 */	bl DSPCheckMailToDSP
/* 80354E44  28 03 00 00 */	cmplwi r3, 0
/* 80354E48  40 82 FF F8 */	bne lbl_80354E40
/* 80354E4C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80354E50  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80354E54  38 21 00 18 */	addi r1, r1, 0x18
/* 80354E58  7C 08 03 A6 */	mtlr r0
/* 80354E5C  4E 80 00 20 */	blr 
