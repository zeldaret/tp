lbl_80A384D8:
/* 80A384D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A384DC  7C 08 02 A6 */	mflr r0
/* 80A384E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A384E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A384E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A384EC  41 82 00 1C */	beq lbl_80A38508
/* 80A384F0  3C A0 80 A4 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80A431D4@ha */
/* 80A384F4  38 05 31 D4 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80A431D4@l */
/* 80A384F8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A384FC  7C 80 07 35 */	extsh. r0, r4
/* 80A38500  40 81 00 08 */	ble lbl_80A38508
/* 80A38504  4B 89 68 39 */	bl __dl__FPv
lbl_80A38508:
/* 80A38508  7F E3 FB 78 */	mr r3, r31
/* 80A3850C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A38510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A38514  7C 08 03 A6 */	mtlr r0
/* 80A38518  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3851C  4E 80 00 20 */	blr 
