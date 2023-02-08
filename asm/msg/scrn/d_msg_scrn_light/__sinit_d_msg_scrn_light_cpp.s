lbl_80246390:
/* 80246390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80246394  7C 08 02 A6 */	mflr r0
/* 80246398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024639C  3C 60 80 43 */	lis r3, g_MsgScrnLight_HIO_c@ha /* 0x804306D4@ha */
/* 802463A0  38 63 06 D4 */	addi r3, r3, g_MsgScrnLight_HIO_c@l /* 0x804306D4@l */
/* 802463A4  4B FF F3 B9 */	bl __ct__19dMsgScrnLight_HIO_cFv
/* 802463A8  3C 80 80 24 */	lis r4, __dt__19dMsgScrnLight_HIO_cFv@ha /* 0x80246348@ha */
/* 802463AC  38 84 63 48 */	addi r4, r4, __dt__19dMsgScrnLight_HIO_cFv@l /* 0x80246348@l */
/* 802463B0  3C A0 80 43 */	lis r5, lit_3735@ha /* 0x804306C8@ha */
/* 802463B4  38 A5 06 C8 */	addi r5, r5, lit_3735@l /* 0x804306C8@l */
/* 802463B8  48 11 B8 6D */	bl __register_global_object
/* 802463BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802463C0  7C 08 03 A6 */	mtlr r0
/* 802463C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802463C8  4E 80 00 20 */	blr 
