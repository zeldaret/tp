lbl_80BC727C:
/* 80BC727C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7280  7C 08 02 A6 */	mflr r0
/* 80BC7284  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7288  4B FF FC A9 */	bl create__12daObjCdoor_cFv
/* 80BC728C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7290  7C 08 03 A6 */	mtlr r0
/* 80BC7294  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7298  4E 80 00 20 */	blr 
