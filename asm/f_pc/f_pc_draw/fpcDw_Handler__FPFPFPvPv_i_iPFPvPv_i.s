lbl_800239F4:
/* 800239F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800239F8  7C 08 02 A6 */	mflr r0
/* 800239FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80023A04  93 C1 00 08 */	stw r30, 8(r1)
/* 80023A08  7C 7E 1B 78 */	mr r30, r3
/* 80023A0C  7C 9F 23 78 */	mr r31, r4
/* 80023A10  48 23 F8 E9 */	bl cAPIGph_BeforeOfDraw__Fv
/* 80023A14  7F E3 FB 78 */	mr r3, r31
/* 80023A18  7F CC F3 78 */	mr r12, r30
/* 80023A1C  7D 89 03 A6 */	mtctr r12
/* 80023A20  4E 80 04 21 */	bctrl 
/* 80023A24  7C 7F 1B 78 */	mr r31, r3
/* 80023A28  48 23 F9 01 */	bl cAPIGph_AfterOfDraw__Fv
/* 80023A2C  7F E3 FB 78 */	mr r3, r31
/* 80023A30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80023A34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80023A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023A3C  7C 08 03 A6 */	mtlr r0
/* 80023A40  38 21 00 10 */	addi r1, r1, 0x10
/* 80023A44  4E 80 00 20 */	blr 
