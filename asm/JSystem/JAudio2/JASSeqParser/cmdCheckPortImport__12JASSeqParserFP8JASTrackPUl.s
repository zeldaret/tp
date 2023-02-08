lbl_80294724:
/* 80294724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294728  7C 08 02 A6 */	mflr r0
/* 8029472C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80294734  7C 9F 23 78 */	mr r31, r4
/* 80294738  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8029473C  80 85 00 00 */	lwz r4, 0(r5)
/* 80294740  4B FF EE CD */	bl checkImport__12JASTrackPortCFUl
/* 80294744  7C 60 1B 78 */	mr r0, r3
/* 80294748  38 7F 00 80 */	addi r3, r31, 0x80
/* 8029474C  38 80 00 03 */	li r4, 3
/* 80294750  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80294754  4B FF EF 31 */	bl write__16JASRegisterParamFQ216JASRegisterParam5RegIDUl
/* 80294758  38 60 00 00 */	li r3, 0
/* 8029475C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294764  7C 08 03 A6 */	mtlr r0
/* 80294768  38 21 00 10 */	addi r1, r1, 0x10
/* 8029476C  4E 80 00 20 */	blr 
