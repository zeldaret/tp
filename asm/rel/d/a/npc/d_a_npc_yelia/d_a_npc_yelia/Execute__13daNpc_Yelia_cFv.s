lbl_80B4DC54:
/* 80B4DC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4DC58  7C 08 02 A6 */	mflr r0
/* 80B4DC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4DC60  4B 5F A8 CD */	bl execute__8daNpcT_cFv
/* 80B4DC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4DC68  7C 08 03 A6 */	mtlr r0
/* 80B4DC6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4DC70  4E 80 00 20 */	blr 
