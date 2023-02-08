lbl_80CFFBB0:
/* 80CFFBB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFFBB4  7C 08 02 A6 */	mflr r0
/* 80CFFBB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFFBBC  4B FF FD 41 */	bl Mthd_Draw__Q212daObjSwpush25Act_cFv
/* 80CFFBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFFBC4  7C 08 03 A6 */	mtlr r0
/* 80CFFBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFFBCC  4E 80 00 20 */	blr 
