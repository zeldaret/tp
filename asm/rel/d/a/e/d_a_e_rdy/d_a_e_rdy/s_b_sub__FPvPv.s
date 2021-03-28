lbl_8076CAA8:
/* 8076CAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076CAAC  7C 08 02 A6 */	mflr r0
/* 8076CAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076CAB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076CAB8  7C 7F 1B 78 */	mr r31, r3
/* 8076CABC  4B 8A C2 24 */	b fopAc_IsActor__FPv
/* 8076CAC0  2C 03 00 00 */	cmpwi r3, 0
/* 8076CAC4  41 82 00 48 */	beq lbl_8076CB0C
/* 8076CAC8  A8 1F 00 08 */	lha r0, 8(r31)
/* 8076CACC  2C 00 02 21 */	cmpwi r0, 0x221
/* 8076CAD0  40 82 00 3C */	bne lbl_8076CB0C
/* 8076CAD4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8076CAD8  28 00 00 00 */	cmplwi r0, 0
/* 8076CADC  41 82 00 30 */	beq lbl_8076CB0C
/* 8076CAE0  3C 60 80 78 */	lis r3, target_info_count@ha
/* 8076CAE4  38 83 A9 18 */	addi r4, r3, target_info_count@l
/* 8076CAE8  80 A4 00 00 */	lwz r5, 0(r4)
/* 8076CAEC  2C 05 00 0A */	cmpwi r5, 0xa
/* 8076CAF0  40 80 00 1C */	bge lbl_8076CB0C
/* 8076CAF4  54 A0 10 3A */	slwi r0, r5, 2
/* 8076CAF8  3C 60 80 78 */	lis r3, target_info@ha
/* 8076CAFC  38 63 A8 F0 */	addi r3, r3, target_info@l
/* 8076CB00  7F E3 01 2E */	stwx r31, r3, r0
/* 8076CB04  38 05 00 01 */	addi r0, r5, 1
/* 8076CB08  90 04 00 00 */	stw r0, 0(r4)
lbl_8076CB0C:
/* 8076CB0C  38 60 00 00 */	li r3, 0
/* 8076CB10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076CB14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076CB18  7C 08 03 A6 */	mtlr r0
/* 8076CB1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8076CB20  4E 80 00 20 */	blr 
