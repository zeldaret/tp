lbl_80258E34:
/* 80258E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80258E38  7C 08 02 A6 */	mflr r0
/* 80258E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80258E40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80258E44  7C 7F 1B 78 */	mr r31, r3
/* 80258E48  80 63 04 14 */	lwz r3, 0x414(r3)
/* 80258E4C  4B F2 B6 B1 */	bl _move__14dFile_select_cFv
/* 80258E50  A8 1F 00 08 */	lha r0, 8(r31)
/* 80258E54  2C 00 00 0D */	cmpwi r0, 0xd
/* 80258E58  40 82 00 0C */	bne lbl_80258E64
/* 80258E5C  7F E3 FB 78 */	mr r3, r31
/* 80258E60  48 00 00 19 */	bl FileSelectMainNormal__10dScnName_cFv
lbl_80258E64:
/* 80258E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80258E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80258E6C  7C 08 03 A6 */	mtlr r0
/* 80258E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80258E74  4E 80 00 20 */	blr 
