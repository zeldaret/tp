lbl_8028C610:
/* 8028C610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028C614  7C 08 02 A6 */	mflr r0
/* 8028C618  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028C61C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028C620  93 C1 00 08 */	stw r30, 8(r1)
/* 8028C624  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028C628  7C 9F 23 78 */	mr r31, r4
/* 8028C62C  41 82 00 3C */	beq lbl_8028C668
/* 8028C630  3C 80 80 3C */	lis r4, __vt__Q214JStudio_JStage12TAdaptor_fog@ha
/* 8028C634  38 04 59 D0 */	addi r0, r4, __vt__Q214JStudio_JStage12TAdaptor_fog@l
/* 8028C638  90 1E 00 00 */	stw r0, 0(r30)
/* 8028C63C  81 83 00 00 */	lwz r12, 0(r3)
/* 8028C640  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028C644  7D 89 03 A6 */	mtctr r12
/* 8028C648  4E 80 04 21 */	bctrl 
/* 8028C64C  7F C3 F3 78 */	mr r3, r30
/* 8028C650  38 80 00 00 */	li r4, 0
/* 8028C654  4B FF AB 29 */	bl __dt__Q27JStudio12TAdaptor_fogFv
/* 8028C658  7F E0 07 35 */	extsh. r0, r31
/* 8028C65C  40 81 00 0C */	ble lbl_8028C668
/* 8028C660  7F C3 F3 78 */	mr r3, r30
/* 8028C664  48 04 26 D9 */	bl __dl__FPv
lbl_8028C668:
/* 8028C668  7F C3 F3 78 */	mr r3, r30
/* 8028C66C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028C670  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028C674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028C678  7C 08 03 A6 */	mtlr r0
/* 8028C67C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028C680  4E 80 00 20 */	blr 
