lbl_806D7284:
/* 806D7284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D7288  7C 08 02 A6 */	mflr r0
/* 806D728C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D7290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D7294  7C 7F 1B 79 */	or. r31, r3, r3
/* 806D7298  41 82 00 30 */	beq lbl_806D72C8
/* 806D729C  3C 60 80 6D */	lis r3, __vt__10dCcD_GStts@ha /* 0x806D7E1C@ha */
/* 806D72A0  38 03 7E 1C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x806D7E1C@l */
/* 806D72A4  90 1F 00 00 */	stw r0, 0(r31)
/* 806D72A8  41 82 00 10 */	beq lbl_806D72B8
/* 806D72AC  3C 60 80 6D */	lis r3, __vt__10cCcD_GStts@ha /* 0x806D7E10@ha */
/* 806D72B0  38 03 7E 10 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x806D7E10@l */
/* 806D72B4  90 1F 00 00 */	stw r0, 0(r31)
lbl_806D72B8:
/* 806D72B8  7C 80 07 35 */	extsh. r0, r4
/* 806D72BC  40 81 00 0C */	ble lbl_806D72C8
/* 806D72C0  7F E3 FB 78 */	mr r3, r31
/* 806D72C4  4B BF 7A 79 */	bl __dl__FPv
lbl_806D72C8:
/* 806D72C8  7F E3 FB 78 */	mr r3, r31
/* 806D72CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D72D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D72D4  7C 08 03 A6 */	mtlr r0
/* 806D72D8  38 21 00 10 */	addi r1, r1, 0x10
/* 806D72DC  4E 80 00 20 */	blr 
