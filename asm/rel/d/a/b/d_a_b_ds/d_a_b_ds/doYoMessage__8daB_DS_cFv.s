lbl_805CDA44:
/* 805CDA44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CDA48  7C 08 02 A6 */	mflr r0
/* 805CDA4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CDA50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CDA54  7C 7F 1B 78 */	mr r31, r3
/* 805CDA58  80 63 08 6C */	lwz r3, 0x86c(r3)
/* 805CDA5C  28 03 00 00 */	cmplwi r3, 0
/* 805CDA60  41 82 00 3C */	beq lbl_805CDA9C
/* 805CDA64  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 805CDA68  28 00 00 0E */	cmplwi r0, 0xe
/* 805CDA6C  40 82 00 10 */	bne lbl_805CDA7C
/* 805CDA70  38 00 00 10 */	li r0, 0x10
/* 805CDA74  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 805CDA78  48 00 00 30 */	b lbl_805CDAA8
lbl_805CDA7C:
/* 805CDA7C  28 00 00 12 */	cmplwi r0, 0x12
/* 805CDA80  40 82 00 28 */	bne lbl_805CDAA8
/* 805CDA84  38 00 00 13 */	li r0, 0x13
/* 805CDA88  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 805CDA8C  38 00 FF FF */	li r0, -1
/* 805CDA90  90 1F 08 68 */	stw r0, 0x868(r31)
/* 805CDA94  38 60 00 01 */	li r3, 1
/* 805CDA98  48 00 00 14 */	b lbl_805CDAAC
lbl_805CDA9C:
/* 805CDA9C  80 7F 08 68 */	lwz r3, 0x868(r31)
/* 805CDAA0  4B A5 1F 84 */	b fopMsgM_SearchByID__FUi
/* 805CDAA4  90 7F 08 6C */	stw r3, 0x86c(r31)
lbl_805CDAA8:
/* 805CDAA8  38 60 00 00 */	li r3, 0
lbl_805CDAAC:
/* 805CDAAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CDAB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CDAB4  7C 08 03 A6 */	mtlr r0
/* 805CDAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 805CDABC  4E 80 00 20 */	blr 
