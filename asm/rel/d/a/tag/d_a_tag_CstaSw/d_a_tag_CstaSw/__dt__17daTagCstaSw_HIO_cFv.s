lbl_805A2480:
/* 805A2480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2484  7C 08 02 A6 */	mflr r0
/* 805A2488  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A248C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A2490  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A2494  41 82 00 30 */	beq lbl_805A24C4
/* 805A2498  3C 60 80 5A */	lis r3, __vt__17daTagCstaSw_HIO_c@ha /* 0x805A25A0@ha */
/* 805A249C  38 03 25 A0 */	addi r0, r3, __vt__17daTagCstaSw_HIO_c@l /* 0x805A25A0@l */
/* 805A24A0  90 1F 00 00 */	stw r0, 0(r31)
/* 805A24A4  41 82 00 10 */	beq lbl_805A24B4
/* 805A24A8  3C 60 80 5A */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x805A25AC@ha */
/* 805A24AC  38 03 25 AC */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x805A25AC@l */
/* 805A24B0  90 1F 00 00 */	stw r0, 0(r31)
lbl_805A24B4:
/* 805A24B4  7C 80 07 35 */	extsh. r0, r4
/* 805A24B8  40 81 00 0C */	ble lbl_805A24C4
/* 805A24BC  7F E3 FB 78 */	mr r3, r31
/* 805A24C0  4B D2 C8 7D */	bl __dl__FPv
lbl_805A24C4:
/* 805A24C4  7F E3 FB 78 */	mr r3, r31
/* 805A24C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A24CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A24D0  7C 08 03 A6 */	mtlr r0
/* 805A24D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A24D8  4E 80 00 20 */	blr 
