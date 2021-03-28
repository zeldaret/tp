lbl_800434D8:
/* 800434D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800434DC  7C 08 02 A6 */	mflr r0
/* 800434E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800434E4  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 800434E8  7C 84 07 74 */	extsb r4, r4
/* 800434EC  48 00 00 15 */	bl searchMapEventData__14dEvt_control_cFUcl
/* 800434F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800434F4  7C 08 03 A6 */	mtlr r0
/* 800434F8  38 21 00 10 */	addi r1, r1, 0x10
/* 800434FC  4E 80 00 20 */	blr 
