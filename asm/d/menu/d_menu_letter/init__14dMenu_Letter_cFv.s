lbl_801DDA20:
/* 801DDA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DDA24  7C 08 02 A6 */	mflr r0
/* 801DDA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DDA2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DDA30  7C 7F 1B 78 */	mr r31, r3
/* 801DDA34  48 00 34 51 */	bl setPageText__14dMenu_Letter_cFv
/* 801DDA38  7F E3 FB 78 */	mr r3, r31
/* 801DDA3C  48 00 31 75 */	bl changeActiveColor__14dMenu_Letter_cFv
/* 801DDA40  7F E3 FB 78 */	mr r3, r31
/* 801DDA44  88 1F 03 6D */	lbz r0, 0x36d(r31)
/* 801DDA48  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801DDA4C  3C 80 80 3C */	lis r4, map_init_process@ha /* 0x803BDA6C@ha */
/* 801DDA50  38 04 DA 6C */	addi r0, r4, map_init_process@l /* 0x803BDA6C@l */
/* 801DDA54  7D 80 2A 14 */	add r12, r0, r5
/* 801DDA58  48 18 46 2D */	bl __ptmf_scall
/* 801DDA5C  60 00 00 00 */	nop 
/* 801DDA60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DDA64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DDA68  7C 08 03 A6 */	mtlr r0
/* 801DDA6C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DDA70  4E 80 00 20 */	blr 
