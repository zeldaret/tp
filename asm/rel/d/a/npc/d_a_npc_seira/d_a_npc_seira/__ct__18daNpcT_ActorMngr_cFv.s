lbl_80ACEE30:
/* 80ACEE30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACEE34  7C 08 02 A6 */	mflr r0
/* 80ACEE38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACEE3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACEE40  7C 7F 1B 78 */	mr r31, r3
/* 80ACEE44  3C 80 80 AD */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80ACEE48  38 04 09 F0 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80ACEE4C  90 03 00 04 */	stw r0, 4(r3)
/* 80ACEE50  4B 67 68 84 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80ACEE54  7F E3 FB 78 */	mr r3, r31
/* 80ACEE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACEE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACEE60  7C 08 03 A6 */	mtlr r0
/* 80ACEE64  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACEE68  4E 80 00 20 */	blr 
