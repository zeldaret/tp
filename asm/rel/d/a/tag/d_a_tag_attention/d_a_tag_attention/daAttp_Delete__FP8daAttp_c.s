lbl_804D56DC:
/* 804D56DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D56E0  7C 08 02 A6 */	mflr r0
/* 804D56E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D56E8  4B FF FF AD */	bl _delete__8daAttp_cFv
/* 804D56EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D56F0  7C 08 03 A6 */	mtlr r0
/* 804D56F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D56F8  4E 80 00 20 */	blr 
