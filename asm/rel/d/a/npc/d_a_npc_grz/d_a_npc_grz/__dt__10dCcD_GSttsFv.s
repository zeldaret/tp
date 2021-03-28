lbl_809EEF04:
/* 809EEF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EEF08  7C 08 02 A6 */	mflr r0
/* 809EEF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EEF10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EEF14  7C 7F 1B 79 */	or. r31, r3, r3
/* 809EEF18  41 82 00 30 */	beq lbl_809EEF48
/* 809EEF1C  3C 60 80 9F */	lis r3, __vt__10dCcD_GStts@ha
/* 809EEF20  38 03 FB 88 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809EEF24  90 1F 00 00 */	stw r0, 0(r31)
/* 809EEF28  41 82 00 10 */	beq lbl_809EEF38
/* 809EEF2C  3C 60 80 9F */	lis r3, __vt__10cCcD_GStts@ha
/* 809EEF30  38 03 FB 7C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809EEF34  90 1F 00 00 */	stw r0, 0(r31)
lbl_809EEF38:
/* 809EEF38  7C 80 07 35 */	extsh. r0, r4
/* 809EEF3C  40 81 00 0C */	ble lbl_809EEF48
/* 809EEF40  7F E3 FB 78 */	mr r3, r31
/* 809EEF44  4B 8D FD F8 */	b __dl__FPv
lbl_809EEF48:
/* 809EEF48  7F E3 FB 78 */	mr r3, r31
/* 809EEF4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EEF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EEF54  7C 08 03 A6 */	mtlr r0
/* 809EEF58  38 21 00 10 */	addi r1, r1, 0x10
/* 809EEF5C  4E 80 00 20 */	blr 
