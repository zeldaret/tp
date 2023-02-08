lbl_80C185A4:
/* 80C185A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C185A8  7C 08 02 A6 */	mflr r0
/* 80C185AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C185B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C185B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C185B8  7C 7E 1B 78 */	mr r30, r3
/* 80C185BC  7C 9F 23 78 */	mr r31, r4
/* 80C185C0  4B FF FE 11 */	bl setMtx__Q29nObjMHasu12daObjMHasu_cFv
/* 80C185C4  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80C185C8  80 9E 06 08 */	lwz r4, 0x608(r30)
/* 80C185CC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C185D0  4B 72 DE E1 */	bl PSMTXCopy
/* 80C185D4  38 1E 05 A8 */	addi r0, r30, 0x5a8
/* 80C185D8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C185DC  7F C3 F3 78 */	mr r3, r30
/* 80C185E0  48 00 01 01 */	bl upDownHasu__Q29nObjMHasu12daObjMHasu_cFv
/* 80C185E4  38 60 00 01 */	li r3, 1
/* 80C185E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C185EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C185F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C185F4  7C 08 03 A6 */	mtlr r0
/* 80C185F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C185FC  4E 80 00 20 */	blr 
