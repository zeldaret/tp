lbl_80CDD118:
/* 80CDD118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDD11C  7C 08 02 A6 */	mflr r0
/* 80CDD120  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDD124  4B FF FF 95 */	bl _delete__12daObjSmoke_cFv
/* 80CDD128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDD12C  7C 08 03 A6 */	mtlr r0
/* 80CDD130  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDD134  4E 80 00 20 */	blr 
