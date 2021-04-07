lbl_80D2DF90:
/* 80D2DF90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2DF94  7C 08 02 A6 */	mflr r0
/* 80D2DF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2DF9C  3C 60 80 D3 */	lis r3, l_HIO@ha /* 0x80D2EB3C@ha */
/* 80D2DFA0  38 63 EB 3C */	addi r3, r3, l_HIO@l /* 0x80D2EB3C@l */
/* 80D2DFA4  4B FF E7 29 */	bl __ct__16daWtPillar_HIO_cFv
/* 80D2DFA8  3C 80 80 D3 */	lis r4, __dt__16daWtPillar_HIO_cFv@ha /* 0x80D2DF34@ha */
/* 80D2DFAC  38 84 DF 34 */	addi r4, r4, __dt__16daWtPillar_HIO_cFv@l /* 0x80D2DF34@l */
/* 80D2DFB0  3C A0 80 D3 */	lis r5, lit_3635@ha /* 0x80D2EB30@ha */
/* 80D2DFB4  38 A5 EB 30 */	addi r5, r5, lit_3635@l /* 0x80D2EB30@l */
/* 80D2DFB8  4B FF E6 A1 */	bl __register_global_object
/* 80D2DFBC  3C 60 80 D3 */	lis r3, mCcDCps__12daWtPillar_c@ha /* 0x80D2E884@ha */
/* 80D2DFC0  38 63 E8 84 */	addi r3, r3, mCcDCps__12daWtPillar_c@l /* 0x80D2E884@l */
/* 80D2DFC4  38 A3 FF FC */	addi r5, r3, -4
/* 80D2DFC8  3C 60 80 D3 */	lis r3, mCcDObjInfo__12daWtPillar_c@ha /* 0x80D2E790@ha */
/* 80D2DFCC  38 63 E7 90 */	addi r3, r3, mCcDObjInfo__12daWtPillar_c@l /* 0x80D2E790@l */
/* 80D2DFD0  38 83 FF FC */	addi r4, r3, -4
/* 80D2DFD4  38 00 00 06 */	li r0, 6
/* 80D2DFD8  7C 09 03 A6 */	mtctr r0
lbl_80D2DFDC:
/* 80D2DFDC  80 64 00 04 */	lwz r3, 4(r4)
/* 80D2DFE0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80D2DFE4  90 65 00 04 */	stw r3, 4(r5)
/* 80D2DFE8  94 05 00 08 */	stwu r0, 8(r5)
/* 80D2DFEC  42 00 FF F0 */	bdnz lbl_80D2DFDC
/* 80D2DFF0  3C 60 80 D3 */	lis r3, mCcDCyl__12daWtPillar_c@ha /* 0x80D2E8D0@ha */
/* 80D2DFF4  38 63 E8 D0 */	addi r3, r3, mCcDCyl__12daWtPillar_c@l /* 0x80D2E8D0@l */
/* 80D2DFF8  38 A3 FF FC */	addi r5, r3, -4
/* 80D2DFFC  3C 60 80 D3 */	lis r3, mCcDObjCoInfo__12daWtPillar_c@ha /* 0x80D2E7C0@ha */
/* 80D2E000  38 63 E7 C0 */	addi r3, r3, mCcDObjCoInfo__12daWtPillar_c@l /* 0x80D2E7C0@l */
/* 80D2E004  38 83 FF FC */	addi r4, r3, -4
/* 80D2E008  38 00 00 06 */	li r0, 6
/* 80D2E00C  7C 09 03 A6 */	mtctr r0
lbl_80D2E010:
/* 80D2E010  80 64 00 04 */	lwz r3, 4(r4)
/* 80D2E014  84 04 00 08 */	lwzu r0, 8(r4)
/* 80D2E018  90 65 00 04 */	stw r3, 4(r5)
/* 80D2E01C  94 05 00 08 */	stwu r0, 8(r5)
/* 80D2E020  42 00 FF F0 */	bdnz lbl_80D2E010
/* 80D2E024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2E028  7C 08 03 A6 */	mtlr r0
/* 80D2E02C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2E030  4E 80 00 20 */	blr 
