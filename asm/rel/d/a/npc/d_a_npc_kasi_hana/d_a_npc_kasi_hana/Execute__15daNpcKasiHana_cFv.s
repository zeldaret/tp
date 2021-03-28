lbl_80A1C768:
/* 80A1C768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1C76C  7C 08 02 A6 */	mflr r0
/* 80A1C770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1C774  4B 73 58 A0 */	b execute__8daNpcF_cFv
/* 80A1C778  38 60 00 01 */	li r3, 1
/* 80A1C77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1C780  7C 08 03 A6 */	mtlr r0
/* 80A1C784  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1C788  4E 80 00 20 */	blr 
