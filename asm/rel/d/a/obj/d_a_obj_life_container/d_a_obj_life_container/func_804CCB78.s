lbl_804CCB78:
/* 804CCB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CCB7C  7C 08 02 A6 */	mflr r0
/* 804CCB80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CCB84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CCB88  7C 7F 1B 79 */	or. r31, r3, r3
/* 804CCB8C  41 82 00 44 */	beq lbl_804CCBD0
/* 804CCB90  28 05 00 00 */	cmplwi r5, 0
/* 804CCB94  41 82 00 3C */	beq lbl_804CCBD0
/* 804CCB98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CCB9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CCBA0  80 03 5D B4 */	lwz r0, 0x5db4(r3)
/* 804CCBA4  7C 05 00 40 */	cmplw r5, r0
/* 804CCBA8  40 82 00 28 */	bne lbl_804CCBD0
/* 804CCBAC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804CCBB0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804CCBB4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804CCBB8  7D 89 03 A6 */	mtctr r12
/* 804CCBBC  4E 80 04 21 */	bctrl 
/* 804CCBC0  28 03 00 00 */	cmplwi r3, 0
/* 804CCBC4  40 82 00 0C */	bne lbl_804CCBD0
/* 804CCBC8  7F E3 FB 78 */	mr r3, r31
/* 804CCBCC  48 00 0C F5 */	bl initActionOrderGetDemo__11daObjLife_cFv
lbl_804CCBD0:
/* 804CCBD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CCBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CCBD8  7C 08 03 A6 */	mtlr r0
/* 804CCBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 804CCBE0  4E 80 00 20 */	blr 
