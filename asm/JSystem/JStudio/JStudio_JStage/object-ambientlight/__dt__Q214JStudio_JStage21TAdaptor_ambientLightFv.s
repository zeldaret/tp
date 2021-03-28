lbl_8028B6AC:
/* 8028B6AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028B6B0  7C 08 02 A6 */	mflr r0
/* 8028B6B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028B6B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028B6BC  93 C1 00 08 */	stw r30, 8(r1)
/* 8028B6C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028B6C4  7C 9F 23 78 */	mr r31, r4
/* 8028B6C8  41 82 00 3C */	beq lbl_8028B704
/* 8028B6CC  3C 80 80 3C */	lis r4, __vt__Q214JStudio_JStage21TAdaptor_ambientLight@ha
/* 8028B6D0  38 04 58 88 */	addi r0, r4, __vt__Q214JStudio_JStage21TAdaptor_ambientLight@l
/* 8028B6D4  90 1E 00 00 */	stw r0, 0(r30)
/* 8028B6D8  81 83 00 00 */	lwz r12, 0(r3)
/* 8028B6DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028B6E0  7D 89 03 A6 */	mtctr r12
/* 8028B6E4  4E 80 04 21 */	bctrl 
/* 8028B6E8  7F C3 F3 78 */	mr r3, r30
/* 8028B6EC  38 80 00 00 */	li r4, 0
/* 8028B6F0  4B FF B5 AD */	bl __dt__Q27JStudio21TAdaptor_ambientLightFv
/* 8028B6F4  7F E0 07 35 */	extsh. r0, r31
/* 8028B6F8  40 81 00 0C */	ble lbl_8028B704
/* 8028B6FC  7F C3 F3 78 */	mr r3, r30
/* 8028B700  48 04 36 3D */	bl __dl__FPv
lbl_8028B704:
/* 8028B704  7F C3 F3 78 */	mr r3, r30
/* 8028B708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028B70C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028B710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028B714  7C 08 03 A6 */	mtlr r0
/* 8028B718  38 21 00 10 */	addi r1, r1, 0x10
/* 8028B71C  4E 80 00 20 */	blr 
