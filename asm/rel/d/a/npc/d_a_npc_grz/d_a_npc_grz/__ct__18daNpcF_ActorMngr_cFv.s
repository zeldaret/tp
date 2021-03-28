lbl_809EE824:
/* 809EE824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EE828  7C 08 02 A6 */	mflr r0
/* 809EE82C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EE830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EE834  7C 7F 1B 78 */	mr r31, r3
/* 809EE838  3C 80 80 9F */	lis r4, __vt__18daNpcF_ActorMngr_c@ha
/* 809EE83C  38 04 FB A0 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l
/* 809EE840  90 03 00 04 */	stw r0, 4(r3)
/* 809EE844  4B 76 1E 6C */	b initialize__18daNpcF_ActorMngr_cFv
/* 809EE848  7F E3 FB 78 */	mr r3, r31
/* 809EE84C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EE850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EE854  7C 08 03 A6 */	mtlr r0
/* 809EE858  38 21 00 10 */	addi r1, r1, 0x10
/* 809EE85C  4E 80 00 20 */	blr 
