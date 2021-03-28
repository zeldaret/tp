lbl_80D04974:
/* 80D04974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04978  7C 08 02 A6 */	mflr r0
/* 80D0497C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D04984  93 C1 00 08 */	stw r30, 8(r1)
/* 80D04988  7C 7E 1B 78 */	mr r30, r3
/* 80D0498C  7C 9F 23 78 */	mr r31, r4
/* 80D04990  4B FF FC 09 */	bl chkBg__15daObjSZbridge_cFv
/* 80D04994  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 80D04998  2C 03 00 00 */	cmpwi r3, 0
/* 80D0499C  41 82 00 0C */	beq lbl_80D049A8
/* 80D049A0  38 03 FF FF */	addi r0, r3, -1
/* 80D049A4  90 1E 06 20 */	stw r0, 0x620(r30)
lbl_80D049A8:
/* 80D049A8  7F C3 F3 78 */	mr r3, r30
/* 80D049AC  4B FF FB 0D */	bl setMtx__15daObjSZbridge_cFv
/* 80D049B0  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80D049B4  80 9E 06 08 */	lwz r4, 0x608(r30)
/* 80D049B8  38 84 00 24 */	addi r4, r4, 0x24
/* 80D049BC  4B 64 1A F4 */	b PSMTXCopy
/* 80D049C0  38 1E 05 A8 */	addi r0, r30, 0x5a8
/* 80D049C4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D049C8  38 60 00 01 */	li r3, 1
/* 80D049CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D049D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D049D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D049D8  7C 08 03 A6 */	mtlr r0
/* 80D049DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D049E0  4E 80 00 20 */	blr 
