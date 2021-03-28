lbl_80272F58:
/* 80272F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272F5C  7C 08 02 A6 */	mflr r0
/* 80272F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80272F64  80 AD 8F B8 */	lwz r5, sManager__8JUTVideo(r13)
/* 80272F68  80 A5 00 04 */	lwz r5, 4(r5)
/* 80272F6C  A0 C5 00 04 */	lhz r6, 4(r5)
/* 80272F70  A0 E5 00 06 */	lhz r7, 6(r5)
/* 80272F74  80 04 00 00 */	lwz r0, 0(r4)
/* 80272F78  90 01 00 08 */	stw r0, 8(r1)
/* 80272F7C  38 80 00 00 */	li r4, 0
/* 80272F80  38 A0 00 00 */	li r5, 0
/* 80272F84  39 01 00 08 */	addi r8, r1, 8
/* 80272F88  48 00 00 15 */	bl clearEfb__10JFWDisplayFiiii8_GXColor
/* 80272F8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80272F90  7C 08 03 A6 */	mtlr r0
/* 80272F94  38 21 00 10 */	addi r1, r1, 0x10
/* 80272F98  4E 80 00 20 */	blr 
