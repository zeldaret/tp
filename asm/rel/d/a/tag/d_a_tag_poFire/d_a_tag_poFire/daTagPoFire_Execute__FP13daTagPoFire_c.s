lbl_80D5DC50:
/* 80D5DC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DC54  7C 08 02 A6 */	mflr r0
/* 80D5DC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DC5C  4B FF FF 95 */	bl Execute__13daTagPoFire_cFv
/* 80D5DC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DC64  7C 08 03 A6 */	mtlr r0
/* 80D5DC68  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DC6C  4E 80 00 20 */	blr 
