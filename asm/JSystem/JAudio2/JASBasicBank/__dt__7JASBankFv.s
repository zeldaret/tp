lbl_80297EC4:
/* 80297EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80297EC8  7C 08 02 A6 */	mflr r0
/* 80297ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80297ED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80297ED4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80297ED8  41 82 00 1C */	beq lbl_80297EF4
/* 80297EDC  3C A0 80 3C */	lis r5, __vt__7JASBank@ha
/* 80297EE0  38 05 76 BC */	addi r0, r5, __vt__7JASBank@l
/* 80297EE4  90 1F 00 00 */	stw r0, 0(r31)
/* 80297EE8  7C 80 07 35 */	extsh. r0, r4
/* 80297EEC  40 81 00 08 */	ble lbl_80297EF4
/* 80297EF0  48 03 6E 4D */	bl __dl__FPv
lbl_80297EF4:
/* 80297EF4  7F E3 FB 78 */	mr r3, r31
/* 80297EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80297EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80297F00  7C 08 03 A6 */	mtlr r0
/* 80297F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80297F08  4E 80 00 20 */	blr 
