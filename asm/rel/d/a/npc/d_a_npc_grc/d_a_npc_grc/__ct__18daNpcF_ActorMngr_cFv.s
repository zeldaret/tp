lbl_809CECAC:
/* 809CECAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CECB0  7C 08 02 A6 */	mflr r0
/* 809CECB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CECB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CECBC  7C 7F 1B 78 */	mr r31, r3
/* 809CECC0  3C 80 80 9D */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x809CFB20@ha */
/* 809CECC4  38 04 FB 20 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x809CFB20@l */
/* 809CECC8  90 03 00 04 */	stw r0, 4(r3)
/* 809CECCC  4B 78 19 E5 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809CECD0  7F E3 FB 78 */	mr r3, r31
/* 809CECD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CECD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CECDC  7C 08 03 A6 */	mtlr r0
/* 809CECE0  38 21 00 10 */	addi r1, r1, 0x10
/* 809CECE4  4E 80 00 20 */	blr 
