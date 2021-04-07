lbl_80041580:
/* 80041580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80041584  7C 08 02 A6 */	mflr r0
/* 80041588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004158C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80041590  7C 7F 1B 78 */	mr r31, r3
/* 80041594  38 7F 00 04 */	addi r3, r31, 4
/* 80041598  3C 80 80 04 */	lis r4, __ct__12dEvt_order_cFv@ha /* 0x800415D4@ha */
/* 8004159C  38 84 15 D4 */	addi r4, r4, __ct__12dEvt_order_cFv@l /* 0x800415D4@l */
/* 800415A0  3C A0 80 03 */	lis r5, __dt__12dEvt_order_cFv@ha /* 0x80030154@ha */
/* 800415A4  38 A5 01 54 */	addi r5, r5, __dt__12dEvt_order_cFv@l /* 0x80030154@l */
/* 800415A8  38 C0 00 18 */	li r6, 0x18
/* 800415AC  38 E0 00 08 */	li r7, 8
/* 800415B0  48 32 07 B1 */	bl __construct_array
/* 800415B4  7F E3 FB 78 */	mr r3, r31
/* 800415B8  48 00 1C 31 */	bl remove__14dEvt_control_cFv
/* 800415BC  7F E3 FB 78 */	mr r3, r31
/* 800415C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800415C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800415C8  7C 08 03 A6 */	mtlr r0
/* 800415CC  38 21 00 10 */	addi r1, r1, 0x10
/* 800415D0  4E 80 00 20 */	blr 
