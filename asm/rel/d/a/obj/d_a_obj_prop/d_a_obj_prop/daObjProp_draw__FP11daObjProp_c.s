lbl_80CB55EC:
/* 80CB55EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB55F0  7C 08 02 A6 */	mflr r0
/* 80CB55F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB55F8  4B FF FE 45 */	bl draw__11daObjProp_cFv
/* 80CB55FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB5600  7C 08 03 A6 */	mtlr r0
/* 80CB5604  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5608  4E 80 00 20 */	blr 
