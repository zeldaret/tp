lbl_80C16BF8:
/* 80C16BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C16BFC  7C 08 02 A6 */	mflr r0
/* 80C16C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16C08  7C 7F 1B 78 */	mr r31, r3
/* 80C16C0C  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C16C10  4B 6A 73 E9 */	bl deleteObject__14Z2SoundObjBaseFv
/* 80C16C14  7F E3 FB 78 */	mr r3, r31
/* 80C16C18  38 80 FF FF */	li r4, -1
/* 80C16C1C  81 9F 05 70 */	lwz r12, 0x570(r31)
/* 80C16C20  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C16C24  7D 89 03 A6 */	mtctr r12
/* 80C16C28  4E 80 04 21 */	bctrl 
/* 80C16C2C  38 60 00 01 */	li r3, 1
/* 80C16C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C16C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16C38  7C 08 03 A6 */	mtlr r0
/* 80C16C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16C40  4E 80 00 20 */	blr 
