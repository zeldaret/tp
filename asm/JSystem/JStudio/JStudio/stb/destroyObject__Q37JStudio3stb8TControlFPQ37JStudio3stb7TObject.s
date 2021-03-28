lbl_802892B0:
/* 802892B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802892B4  7C 08 02 A6 */	mflr r0
/* 802892B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802892BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802892C0  93 C1 00 08 */	stw r30, 8(r1)
/* 802892C4  7C 7E 1B 78 */	mr r30, r3
/* 802892C8  7C 9F 23 78 */	mr r31, r4
/* 802892CC  4B FF FF AD */	bl removeObject__Q37JStudio3stb8TControlFPQ37JStudio3stb7TObject
/* 802892D0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802892D4  7F E4 FB 78 */	mr r4, r31
/* 802892D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802892DC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802892E0  7D 89 03 A6 */	mtctr r12
/* 802892E4  4E 80 04 21 */	bctrl 
/* 802892E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802892EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802892F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802892F4  7C 08 03 A6 */	mtlr r0
/* 802892F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802892FC  4E 80 00 20 */	blr 
