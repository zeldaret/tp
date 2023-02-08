lbl_80CC12F4:
/* 80CC12F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC12F8  7C 08 02 A6 */	mflr r0
/* 80CC12FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1300  4B FF FC 41 */	bl create__13daObj_Roten_cFv
/* 80CC1304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC1308  7C 08 03 A6 */	mtlr r0
/* 80CC130C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1310  4E 80 00 20 */	blr 
