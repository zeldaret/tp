lbl_80C91D24:
/* 80C91D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C91D28  7C 08 02 A6 */	mflr r0
/* 80C91D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C91D30  48 00 06 51 */	bl _delete__11daObjMATO_cFv
/* 80C91D34  38 60 00 01 */	li r3, 1
/* 80C91D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C91D3C  7C 08 03 A6 */	mtlr r0
/* 80C91D40  38 21 00 10 */	addi r1, r1, 0x10
/* 80C91D44  4E 80 00 20 */	blr 
