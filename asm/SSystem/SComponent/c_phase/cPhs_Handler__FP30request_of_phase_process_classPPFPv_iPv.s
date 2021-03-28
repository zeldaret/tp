lbl_802667AC:
/* 802667AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802667B0  7C 08 02 A6 */	mflr r0
/* 802667B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802667B8  90 83 00 00 */	stw r4, 0(r3)
/* 802667BC  7C A4 2B 78 */	mr r4, r5
/* 802667C0  4B FF FF 19 */	bl cPhs_Do__FP30request_of_phase_process_classPv
/* 802667C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802667C8  7C 08 03 A6 */	mtlr r0
/* 802667CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802667D0  4E 80 00 20 */	blr 
