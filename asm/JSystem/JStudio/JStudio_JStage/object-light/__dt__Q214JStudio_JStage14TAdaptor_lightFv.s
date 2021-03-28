lbl_8028CBF4:
/* 8028CBF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028CBF8  7C 08 02 A6 */	mflr r0
/* 8028CBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028CC00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028CC04  93 C1 00 08 */	stw r30, 8(r1)
/* 8028CC08  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028CC0C  7C 9F 23 78 */	mr r31, r4
/* 8028CC10  41 82 00 3C */	beq lbl_8028CC4C
/* 8028CC14  3C 80 80 3C */	lis r4, __vt__Q214JStudio_JStage14TAdaptor_light@ha
/* 8028CC18  38 04 5A 40 */	addi r0, r4, __vt__Q214JStudio_JStage14TAdaptor_light@l
/* 8028CC1C  90 1E 00 00 */	stw r0, 0(r30)
/* 8028CC20  81 83 00 00 */	lwz r12, 0(r3)
/* 8028CC24  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028CC28  7D 89 03 A6 */	mtctr r12
/* 8028CC2C  4E 80 04 21 */	bctrl 
/* 8028CC30  7F C3 F3 78 */	mr r3, r30
/* 8028CC34  38 80 00 00 */	li r4, 0
/* 8028CC38  4B FF A6 D1 */	bl __dt__Q27JStudio14TAdaptor_lightFv
/* 8028CC3C  7F E0 07 35 */	extsh. r0, r31
/* 8028CC40  40 81 00 0C */	ble lbl_8028CC4C
/* 8028CC44  7F C3 F3 78 */	mr r3, r30
/* 8028CC48  48 04 20 F5 */	bl __dl__FPv
lbl_8028CC4C:
/* 8028CC4C  7F C3 F3 78 */	mr r3, r30
/* 8028CC50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028CC54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028CC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028CC5C  7C 08 03 A6 */	mtlr r0
/* 8028CC60  38 21 00 10 */	addi r1, r1, 0x10
/* 8028CC64  4E 80 00 20 */	blr 
