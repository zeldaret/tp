lbl_805A10B0:
/* 805A10B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A10B4  7C 08 02 A6 */	mflr r0
/* 805A10B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A10BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A10C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A10C4  41 82 00 1C */	beq lbl_805A10E0
/* 805A10C8  3C A0 80 5A */	lis r5, __vt__10daSq_HIO_c@ha /* 0x805A131C@ha */
/* 805A10CC  38 05 13 1C */	addi r0, r5, __vt__10daSq_HIO_c@l /* 0x805A131C@l */
/* 805A10D0  90 1F 00 00 */	stw r0, 0(r31)
/* 805A10D4  7C 80 07 35 */	extsh. r0, r4
/* 805A10D8  40 81 00 08 */	ble lbl_805A10E0
/* 805A10DC  4B D2 DC 61 */	bl __dl__FPv
lbl_805A10E0:
/* 805A10E0  7F E3 FB 78 */	mr r3, r31
/* 805A10E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A10E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A10EC  7C 08 03 A6 */	mtlr r0
/* 805A10F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A10F4  4E 80 00 20 */	blr 
