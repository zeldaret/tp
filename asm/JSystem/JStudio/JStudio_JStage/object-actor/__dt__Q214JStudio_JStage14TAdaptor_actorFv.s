lbl_8028A6B4:
/* 8028A6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028A6B8  7C 08 02 A6 */	mflr r0
/* 8028A6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028A6C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028A6C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8028A6C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028A6CC  7C 9F 23 78 */	mr r31, r4
/* 8028A6D0  41 82 00 3C */	beq lbl_8028A70C
/* 8028A6D4  3C 80 80 3C */	lis r4, __vt__Q214JStudio_JStage14TAdaptor_actor@ha
/* 8028A6D8  38 04 57 C4 */	addi r0, r4, __vt__Q214JStudio_JStage14TAdaptor_actor@l
/* 8028A6DC  90 1E 00 00 */	stw r0, 0(r30)
/* 8028A6E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8028A6E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028A6E8  7D 89 03 A6 */	mtctr r12
/* 8028A6EC  4E 80 04 21 */	bctrl 
/* 8028A6F0  7F C3 F3 78 */	mr r3, r30
/* 8028A6F4  38 80 00 00 */	li r4, 0
/* 8028A6F8  4B FF C1 B9 */	bl __dt__Q27JStudio14TAdaptor_actorFv
/* 8028A6FC  7F E0 07 35 */	extsh. r0, r31
/* 8028A700  40 81 00 0C */	ble lbl_8028A70C
/* 8028A704  7F C3 F3 78 */	mr r3, r30
/* 8028A708  48 04 46 35 */	bl __dl__FPv
lbl_8028A70C:
/* 8028A70C  7F C3 F3 78 */	mr r3, r30
/* 8028A710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028A714  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028A718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028A71C  7C 08 03 A6 */	mtlr r0
/* 8028A720  38 21 00 10 */	addi r1, r1, 0x10
/* 8028A724  4E 80 00 20 */	blr 
