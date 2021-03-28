lbl_803364B8:
/* 803364B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803364BC  7C 08 02 A6 */	mflr r0
/* 803364C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803364C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803364C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 803364CC  41 82 00 40 */	beq lbl_8033650C
/* 803364D0  3C 60 80 3D */	lis r3, data_803CF190@ha
/* 803364D4  38 03 F1 90 */	addi r0, r3, data_803CF190@l
/* 803364D8  90 1F 00 00 */	stw r0, 0(r31)
/* 803364DC  41 82 00 20 */	beq lbl_803364FC
/* 803364E0  3C 60 80 3A */	lis r3, __vt__19J3DMtxCalcNoAnmBase@ha
/* 803364E4  38 03 33 8C */	addi r0, r3, __vt__19J3DMtxCalcNoAnmBase@l
/* 803364E8  90 1F 00 00 */	stw r0, 0(r31)
/* 803364EC  41 82 00 10 */	beq lbl_803364FC
/* 803364F0  3C 60 80 3A */	lis r3, __vt__10J3DMtxCalc@ha
/* 803364F4  38 03 34 68 */	addi r0, r3, __vt__10J3DMtxCalc@l
/* 803364F8  90 1F 00 00 */	stw r0, 0(r31)
lbl_803364FC:
/* 803364FC  7C 80 07 35 */	extsh. r0, r4
/* 80336500  40 81 00 0C */	ble lbl_8033650C
/* 80336504  7F E3 FB 78 */	mr r3, r31
/* 80336508  4B F9 88 35 */	bl __dl__FPv
lbl_8033650C:
/* 8033650C  7F E3 FB 78 */	mr r3, r31
/* 80336510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80336514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80336518  7C 08 03 A6 */	mtlr r0
/* 8033651C  38 21 00 10 */	addi r1, r1, 0x10
/* 80336520  4E 80 00 20 */	blr 
