lbl_80A0ADA0:
/* 80A0ADA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0ADA4  7C 08 02 A6 */	mflr r0
/* 80A0ADA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0ADAC  4B FF D7 D1 */	bl Draw__12daNpcImpal_cFv
/* 80A0ADB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0ADB4  7C 08 03 A6 */	mtlr r0
/* 80A0ADB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0ADBC  4E 80 00 20 */	blr 
