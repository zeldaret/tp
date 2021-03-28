lbl_802E0BBC:
/* 802E0BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E0BC0  7C 08 02 A6 */	mflr r0
/* 802E0BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E0BC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E0BCC  7C 7F 1B 78 */	mr r31, r3
/* 802E0BD0  39 00 00 00 */	li r8, 0
/* 802E0BD4  38 80 00 00 */	li r4, 0
/* 802E0BD8  3C 60 80 43 */	lis r3, mPadStatus__10JUTGamePad@ha
/* 802E0BDC  38 C3 43 F0 */	addi r6, r3, mPadStatus__10JUTGamePad@l
/* 802E0BE0  38 ED 8F 54 */	la r7, mPadAssign__10JUTGamePad(r13) /* 804514D4-_SDA_BASE_ */
/* 802E0BE4  7C E3 3B 78 */	mr r3, r7
/* 802E0BE8  38 00 00 04 */	li r0, 4
/* 802E0BEC  7C 09 03 A6 */	mtctr r0
lbl_802E0BF0:
/* 802E0BF0  7C A6 22 14 */	add r5, r6, r4
/* 802E0BF4  88 05 00 0A */	lbz r0, 0xa(r5)
/* 802E0BF8  7C 00 07 75 */	extsb. r0, r0
/* 802E0BFC  40 82 00 4C */	bne lbl_802E0C48
/* 802E0C00  88 03 00 00 */	lbz r0, 0(r3)
/* 802E0C04  28 00 00 00 */	cmplwi r0, 0
/* 802E0C08  40 82 00 40 */	bne lbl_802E0C48
/* 802E0C0C  B1 1F 00 7C */	sth r8, 0x7c(r31)
/* 802E0C10  38 00 00 01 */	li r0, 1
/* 802E0C14  7C 07 41 AE */	stbx r0, r7, r8
/* 802E0C18  1C 88 00 30 */	mulli r4, r8, 0x30
/* 802E0C1C  3C 60 80 43 */	lis r3, mPadButton__10JUTGamePad@ha
/* 802E0C20  38 03 44 20 */	addi r0, r3, mPadButton__10JUTGamePad@l
/* 802E0C24  7C 60 22 14 */	add r3, r0, r4
/* 802E0C28  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 802E0C2C  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 802E0C30  80 DF 00 44 */	lwz r6, 0x44(r31)
/* 802E0C34  48 00 0E 49 */	bl setRepeat__Q210JUTGamePad7CButtonFUlUlUl
/* 802E0C38  38 7F 00 68 */	addi r3, r31, 0x68
/* 802E0C3C  7F E4 FB 78 */	mr r4, r31
/* 802E0C40  48 00 09 99 */	bl clear__Q210JUTGamePad7CRumbleFP10JUTGamePad
/* 802E0C44  48 00 00 14 */	b lbl_802E0C58
lbl_802E0C48:
/* 802E0C48  39 08 00 01 */	addi r8, r8, 1
/* 802E0C4C  38 63 00 01 */	addi r3, r3, 1
/* 802E0C50  38 84 00 0C */	addi r4, r4, 0xc
/* 802E0C54  42 00 FF 9C */	bdnz lbl_802E0BF0
lbl_802E0C58:
/* 802E0C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E0C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E0C60  7C 08 03 A6 */	mtlr r0
/* 802E0C64  38 21 00 10 */	addi r1, r1, 0x10
/* 802E0C68  4E 80 00 20 */	blr 
