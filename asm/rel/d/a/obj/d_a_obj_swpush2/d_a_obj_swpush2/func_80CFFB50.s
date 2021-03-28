lbl_80CFFB50:
/* 80CFFB50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFFB54  7C 08 02 A6 */	mflr r0
/* 80CFFB58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFFB5C  4B FF ED CD */	bl Mthd_Create__Q212daObjSwpush25Act_cFv
/* 80CFFB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFFB64  7C 08 03 A6 */	mtlr r0
/* 80CFFB68  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFFB6C  4E 80 00 20 */	blr 
