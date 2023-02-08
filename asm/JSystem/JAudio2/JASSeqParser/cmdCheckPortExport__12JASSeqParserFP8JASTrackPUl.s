lbl_80294770:
/* 80294770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294774  7C 08 02 A6 */	mflr r0
/* 80294778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029477C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80294780  7C 9F 23 78 */	mr r31, r4
/* 80294784  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80294788  80 85 00 00 */	lwz r4, 0(r5)
/* 8029478C  4B FF EE 9D */	bl checkExport__12JASTrackPortCFUl
/* 80294790  7C 60 1B 78 */	mr r0, r3
/* 80294794  38 7F 00 80 */	addi r3, r31, 0x80
/* 80294798  38 80 00 03 */	li r4, 3
/* 8029479C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 802947A0  4B FF EE E5 */	bl write__16JASRegisterParamFQ216JASRegisterParam5RegIDUl
/* 802947A4  38 60 00 00 */	li r3, 0
/* 802947A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802947AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802947B0  7C 08 03 A6 */	mtlr r0
/* 802947B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802947B8  4E 80 00 20 */	blr 
