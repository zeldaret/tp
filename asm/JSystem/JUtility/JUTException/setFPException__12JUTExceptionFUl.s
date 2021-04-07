lbl_802E227C:
/* 802E227C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E2280  7C 08 02 A6 */	mflr r0
/* 802E2284  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E2288  90 6D 84 20 */	stw r3, __OSFpscrEnableBits(r13)
/* 802E228C  28 03 00 00 */	cmplwi r3, 0
/* 802E2290  41 82 00 18 */	beq lbl_802E22A8
/* 802E2294  38 60 00 10 */	li r3, 0x10
/* 802E2298  3C 80 80 2E */	lis r4, errorHandler__12JUTExceptionFUsP9OSContextUlUl@ha /* 0x802E1FCC@ha */
/* 802E229C  38 84 1F CC */	addi r4, r4, errorHandler__12JUTExceptionFUsP9OSContextUlUl@l /* 0x802E1FCC@l */
/* 802E22A0  48 05 A2 E1 */	bl OSSetErrorHandler
/* 802E22A4  48 00 00 10 */	b lbl_802E22B4
lbl_802E22A8:
/* 802E22A8  38 60 00 10 */	li r3, 0x10
/* 802E22AC  38 80 00 00 */	li r4, 0
/* 802E22B0  48 05 A2 D1 */	bl OSSetErrorHandler
lbl_802E22B4:
/* 802E22B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E22B8  7C 08 03 A6 */	mtlr r0
/* 802E22BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802E22C0  4E 80 00 20 */	blr 
