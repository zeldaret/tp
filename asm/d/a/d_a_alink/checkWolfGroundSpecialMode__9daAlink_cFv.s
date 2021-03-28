lbl_80129A80:
/* 80129A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80129A84  7C 08 02 A6 */	mflr r0
/* 80129A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80129A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80129A90  7C 7F 1B 78 */	mr r31, r3
/* 80129A94  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 80129A98  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80129A9C  41 82 00 2C */	beq lbl_80129AC8
/* 80129AA0  80 BF 31 A0 */	lwz r5, 0x31a0(r31)
/* 80129AA4  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070C52@ha */
/* 80129AA8  38 04 0C 52 */	addi r0, r4, 0x0C52 /* 0x00070C52@l */
/* 80129AAC  7C A0 00 39 */	and. r0, r5, r0
/* 80129AB0  40 82 00 18 */	bne lbl_80129AC8
/* 80129AB4  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80129AB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80129ABC  41 82 00 0C */	beq lbl_80129AC8
/* 80129AC0  4B F9 DD 35 */	bl procCoMetamorphoseInit__9daAlink_cFv
/* 80129AC4  48 00 00 6C */	b lbl_80129B30
lbl_80129AC8:
/* 80129AC8  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 80129ACC  28 00 00 27 */	cmplwi r0, 0x27
/* 80129AD0  41 82 00 0C */	beq lbl_80129ADC
/* 80129AD4  28 00 00 28 */	cmplwi r0, 0x28
/* 80129AD8  40 82 00 10 */	bne lbl_80129AE8
lbl_80129ADC:
/* 80129ADC  7F E3 FB 78 */	mr r3, r31
/* 80129AE0  48 00 B6 81 */	bl procWolfGiantPuzzleInit__9daAlink_cFv
/* 80129AE4  48 00 00 4C */	b lbl_80129B30
lbl_80129AE8:
/* 80129AE8  28 00 00 2C */	cmplwi r0, 0x2c
/* 80129AEC  40 82 00 10 */	bne lbl_80129AFC
/* 80129AF0  7F E3 FB 78 */	mr r3, r31
/* 80129AF4  48 01 40 79 */	bl procWolfCargoCarryInit__9daAlink_cFv
/* 80129AF8  48 00 00 38 */	b lbl_80129B30
lbl_80129AFC:
/* 80129AFC  7F E3 FB 78 */	mr r3, r31
/* 80129B00  4B F8 C4 6D */	bl checkSlideAction__9daAlink_cFv
/* 80129B04  2C 03 00 00 */	cmpwi r3, 0
/* 80129B08  41 82 00 0C */	beq lbl_80129B14
/* 80129B0C  38 60 00 01 */	li r3, 1
/* 80129B10  48 00 00 20 */	b lbl_80129B30
lbl_80129B14:
/* 80129B14  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 80129B18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80129B1C  41 82 00 10 */	beq lbl_80129B2C
/* 80129B20  7F E3 FB 78 */	mr r3, r31
/* 80129B24  48 00 D4 31 */	bl procWolfScreamWaitInit__9daAlink_cFv
/* 80129B28  48 00 00 08 */	b lbl_80129B30
lbl_80129B2C:
/* 80129B2C  38 60 00 00 */	li r3, 0
lbl_80129B30:
/* 80129B30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80129B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80129B38  7C 08 03 A6 */	mtlr r0
/* 80129B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80129B40  4E 80 00 20 */	blr 
