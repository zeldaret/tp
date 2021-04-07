lbl_80C172AC:
/* 80C172AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C172B0  7C 08 02 A6 */	mflr r0
/* 80C172B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C172B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C172BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C172C0  41 82 00 1C */	beq lbl_80C172DC
/* 80C172C4  3C A0 80 C1 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C173DC@ha */
/* 80C172C8  38 05 73 DC */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C173DC@l */
/* 80C172CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C172D0  7C 80 07 35 */	extsh. r0, r4
/* 80C172D4  40 81 00 08 */	ble lbl_80C172DC
/* 80C172D8  4B 6B 7A 65 */	bl __dl__FPv
lbl_80C172DC:
/* 80C172DC  7F E3 FB 78 */	mr r3, r31
/* 80C172E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C172E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C172E8  7C 08 03 A6 */	mtlr r0
/* 80C172EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C172F0  4E 80 00 20 */	blr 
