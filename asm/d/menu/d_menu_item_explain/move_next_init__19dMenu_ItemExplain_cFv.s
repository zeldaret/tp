lbl_801DC1E0:
/* 801DC1E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC1E4  7C 08 02 A6 */	mflr r0
/* 801DC1E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC1EC  38 00 05 1D */	li r0, 0x51d
/* 801DC1F0  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 801DC1F4  80 63 00 98 */	lwz r3, 0x98(r3)
/* 801DC1F8  28 03 00 00 */	cmplwi r3, 0
/* 801DC1FC  41 82 00 08 */	beq lbl_801DC204
/* 801DC200  48 05 FC 35 */	bl arwAnimeInit__15dMsgScrnArrow_cFv
lbl_801DC204:
/* 801DC204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC208  7C 08 03 A6 */	mtlr r0
/* 801DC20C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC210  4E 80 00 20 */	blr 
