lbl_80263A1C:
/* 80263A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80263A20  7C 08 02 A6 */	mflr r0
/* 80263A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80263A28  80 04 00 00 */	lwz r0, 0(r4)
/* 80263A2C  90 03 00 40 */	stw r0, 0x40(r3)
/* 80263A30  38 84 00 04 */	addi r4, r4, 4
/* 80263A34  4B FF FF 91 */	bl Set__14cCcD_ObjHitInfFRC17cCcD_SrcObjHitInf
/* 80263A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80263A3C  7C 08 03 A6 */	mtlr r0
/* 80263A40  38 21 00 10 */	addi r1, r1, 0x10
/* 80263A44  4E 80 00 20 */	blr 
