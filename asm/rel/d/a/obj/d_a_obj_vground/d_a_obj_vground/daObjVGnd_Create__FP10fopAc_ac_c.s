lbl_80D219E0:
/* 80D219E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D219E4  7C 08 02 A6 */	mflr r0
/* 80D219E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D219EC  4B FF FD 09 */	bl create__11daObjVGnd_cFv
/* 80D219F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D219F4  7C 08 03 A6 */	mtlr r0
/* 80D219F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D219FC  4E 80 00 20 */	blr 
