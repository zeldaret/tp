lbl_800BAF80:
/* 800BAF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BAF84  7C 08 02 A6 */	mflr r0
/* 800BAF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BAF8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BAF90  93 C1 00 08 */	stw r30, 8(r1)
/* 800BAF94  7C 7E 1B 78 */	mr r30, r3
/* 800BAF98  3B E0 00 00 */	li r31, 0
/* 800BAF9C  48 02 54 A5 */	bl checkBoomerangAnime__9daAlink_cCFv
/* 800BAFA0  2C 03 00 00 */	cmpwi r3, 0
/* 800BAFA4  40 82 00 5C */	bne lbl_800BB000
/* 800BAFA8  7F C3 F3 78 */	mr r3, r30
/* 800BAFAC  48 02 65 85 */	bl checkCopyRodAnime__9daAlink_cCFv
/* 800BAFB0  2C 03 00 00 */	cmpwi r3, 0
/* 800BAFB4  40 82 00 4C */	bne lbl_800BB000
/* 800BAFB8  38 60 00 00 */	li r3, 0
/* 800BAFBC  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800BAFC0  28 00 01 8D */	cmplwi r0, 0x18d
/* 800BAFC4  41 82 00 10 */	beq lbl_800BAFD4
/* 800BAFC8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800BAFCC  28 00 01 8C */	cmplwi r0, 0x18c
/* 800BAFD0  40 82 00 08 */	bne lbl_800BAFD8
lbl_800BAFD4:
/* 800BAFD4  38 60 00 01 */	li r3, 1
lbl_800BAFD8:
/* 800BAFD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BAFDC  40 82 00 24 */	bne lbl_800BB000
/* 800BAFE0  7F C3 F3 78 */	mr r3, r30
/* 800BAFE4  48 05 A1 01 */	bl checkIronBallAnime__9daAlink_cCFv
/* 800BAFE8  2C 03 00 00 */	cmpwi r3, 0
/* 800BAFEC  40 82 00 14 */	bne lbl_800BB000
/* 800BAFF0  7F C3 F3 78 */	mr r3, r30
/* 800BAFF4  48 02 39 F5 */	bl checkBowAnime__9daAlink_cCFv
/* 800BAFF8  2C 03 00 00 */	cmpwi r3, 0
/* 800BAFFC  41 82 00 08 */	beq lbl_800BB004
lbl_800BB000:
/* 800BB000  3B E0 00 01 */	li r31, 1
lbl_800BB004:
/* 800BB004  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800BB008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BB00C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BB010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BB014  7C 08 03 A6 */	mtlr r0
/* 800BB018  38 21 00 10 */	addi r1, r1, 0x10
/* 800BB01C  4E 80 00 20 */	blr 
