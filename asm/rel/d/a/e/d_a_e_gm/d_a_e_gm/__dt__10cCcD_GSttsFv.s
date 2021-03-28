lbl_806D73E0:
/* 806D73E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D73E4  7C 08 02 A6 */	mflr r0
/* 806D73E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D73EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D73F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806D73F4  41 82 00 1C */	beq lbl_806D7410
/* 806D73F8  3C A0 80 6D */	lis r5, __vt__10cCcD_GStts@ha
/* 806D73FC  38 05 7E 10 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 806D7400  90 1F 00 00 */	stw r0, 0(r31)
/* 806D7404  7C 80 07 35 */	extsh. r0, r4
/* 806D7408  40 81 00 08 */	ble lbl_806D7410
/* 806D740C  4B BF 79 30 */	b __dl__FPv
lbl_806D7410:
/* 806D7410  7F E3 FB 78 */	mr r3, r31
/* 806D7414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D7418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D741C  7C 08 03 A6 */	mtlr r0
/* 806D7420  38 21 00 10 */	addi r1, r1, 0x10
/* 806D7424  4E 80 00 20 */	blr 
