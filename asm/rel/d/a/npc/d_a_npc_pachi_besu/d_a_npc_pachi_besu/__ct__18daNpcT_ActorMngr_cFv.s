lbl_80A95C00:
/* 80A95C00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A95C04  7C 08 02 A6 */	mflr r0
/* 80A95C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A95C0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A95C10  7C 7F 1B 78 */	mr r31, r3
/* 80A95C14  3C 80 80 A9 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80A95C18  38 04 79 BC */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80A95C1C  90 03 00 04 */	stw r0, 4(r3)
/* 80A95C20  4B 6A FA B4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A95C24  7F E3 FB 78 */	mr r3, r31
/* 80A95C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A95C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A95C30  7C 08 03 A6 */	mtlr r0
/* 80A95C34  38 21 00 10 */	addi r1, r1, 0x10
/* 80A95C38  4E 80 00 20 */	blr 
