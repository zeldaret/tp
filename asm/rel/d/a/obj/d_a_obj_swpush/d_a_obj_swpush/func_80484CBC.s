lbl_80484CBC:
/* 80484CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484CC0  7C 08 02 A6 */	mflr r0
/* 80484CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484CC8  4B FF FE F1 */	bl Mthd_Draw__Q211daObjSwpush5Act_cFv
/* 80484CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484CD0  7C 08 03 A6 */	mtlr r0
/* 80484CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80484CD8  4E 80 00 20 */	blr 
