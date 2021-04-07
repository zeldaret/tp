lbl_806553A8:
/* 806553A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806553AC  7C 08 02 A6 */	mflr r0
/* 806553B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806553B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806553B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806553BC  41 82 00 30 */	beq lbl_806553EC
/* 806553C0  3C 60 80 65 */	lis r3, __vt__17daBalloon2D_HIO_c@ha /* 0x80655750@ha */
/* 806553C4  38 03 57 50 */	addi r0, r3, __vt__17daBalloon2D_HIO_c@l /* 0x80655750@l */
/* 806553C8  90 1F 00 00 */	stw r0, 0(r31)
/* 806553CC  41 82 00 10 */	beq lbl_806553DC
/* 806553D0  3C 60 80 65 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x8065575C@ha */
/* 806553D4  38 03 57 5C */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x8065575C@l */
/* 806553D8  90 1F 00 00 */	stw r0, 0(r31)
lbl_806553DC:
/* 806553DC  7C 80 07 35 */	extsh. r0, r4
/* 806553E0  40 81 00 0C */	ble lbl_806553EC
/* 806553E4  7F E3 FB 78 */	mr r3, r31
/* 806553E8  4B C7 99 55 */	bl __dl__FPv
lbl_806553EC:
/* 806553EC  7F E3 FB 78 */	mr r3, r31
/* 806553F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806553F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806553F8  7C 08 03 A6 */	mtlr r0
/* 806553FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80655400  4E 80 00 20 */	blr 
