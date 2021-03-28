lbl_80ABF1D4:
/* 80ABF1D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABF1D8  7C 08 02 A6 */	mflr r0
/* 80ABF1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABF1E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABF1E4  7C 7F 1B 78 */	mr r31, r3
/* 80ABF1E8  3C 80 80 AC */	lis r4, __vt__18daNpcF_ActorMngr_c@ha
/* 80ABF1EC  38 04 02 D0 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l
/* 80ABF1F0  90 03 00 04 */	stw r0, 4(r3)
/* 80ABF1F4  4B 69 14 BC */	b initialize__18daNpcF_ActorMngr_cFv
/* 80ABF1F8  7F E3 FB 78 */	mr r3, r31
/* 80ABF1FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABF200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABF204  7C 08 03 A6 */	mtlr r0
/* 80ABF208  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABF20C  4E 80 00 20 */	blr 
