lbl_804A34B4:
/* 804A34B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A34B8  7C 08 02 A6 */	mflr r0
/* 804A34BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A34C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A34C4  7C 7F 1B 78 */	mr r31, r3
/* 804A34C8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804A34CC  4B B6 98 98 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 804A34D0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 804A34D4  4B B6 9A 70 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804A34D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804A34DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804A34E0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 804A34E4  38 84 00 24 */	addi r4, r4, 0x24
/* 804A34E8  4B EA 2F C8 */	b PSMTXCopy
/* 804A34EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A34F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A34F4  7C 08 03 A6 */	mtlr r0
/* 804A34F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804A34FC  4E 80 00 20 */	blr 
