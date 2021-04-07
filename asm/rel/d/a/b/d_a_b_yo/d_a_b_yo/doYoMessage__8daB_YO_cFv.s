lbl_80630EAC:
/* 80630EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80630EB0  7C 08 02 A6 */	mflr r0
/* 80630EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80630EB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80630EBC  7C 7F 1B 78 */	mr r31, r3
/* 80630EC0  80 63 0F E0 */	lwz r3, 0xfe0(r3)
/* 80630EC4  28 03 00 00 */	cmplwi r3, 0
/* 80630EC8  41 82 00 3C */	beq lbl_80630F04
/* 80630ECC  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80630ED0  28 00 00 0E */	cmplwi r0, 0xe
/* 80630ED4  40 82 00 10 */	bne lbl_80630EE4
/* 80630ED8  38 00 00 10 */	li r0, 0x10
/* 80630EDC  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 80630EE0  48 00 00 30 */	b lbl_80630F10
lbl_80630EE4:
/* 80630EE4  28 00 00 12 */	cmplwi r0, 0x12
/* 80630EE8  40 82 00 28 */	bne lbl_80630F10
/* 80630EEC  38 00 00 13 */	li r0, 0x13
/* 80630EF0  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 80630EF4  38 00 FF FF */	li r0, -1
/* 80630EF8  90 1F 0F DC */	stw r0, 0xfdc(r31)
/* 80630EFC  38 60 00 01 */	li r3, 1
/* 80630F00  48 00 00 14 */	b lbl_80630F14
lbl_80630F04:
/* 80630F04  80 7F 0F DC */	lwz r3, 0xfdc(r31)
/* 80630F08  4B 9E EB 1D */	bl fopMsgM_SearchByID__FUi
/* 80630F0C  90 7F 0F E0 */	stw r3, 0xfe0(r31)
lbl_80630F10:
/* 80630F10  38 60 00 00 */	li r3, 0
lbl_80630F14:
/* 80630F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80630F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80630F1C  7C 08 03 A6 */	mtlr r0
/* 80630F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80630F24  4E 80 00 20 */	blr 
