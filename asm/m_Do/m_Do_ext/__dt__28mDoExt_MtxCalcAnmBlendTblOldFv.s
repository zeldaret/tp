lbl_80014EB0:
/* 80014EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014EB4  7C 08 02 A6 */	mflr r0
/* 80014EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80014EC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80014EC4  41 82 00 60 */	beq lbl_80014F24
/* 80014EC8  3C 60 80 3A */	lis r3, __vt__28mDoExt_MtxCalcAnmBlendTblOld@ha
/* 80014ECC  38 03 33 B8 */	addi r0, r3, __vt__28mDoExt_MtxCalcAnmBlendTblOld@l
/* 80014ED0  90 1F 00 00 */	stw r0, 0(r31)
/* 80014ED4  41 82 00 40 */	beq lbl_80014F14
/* 80014ED8  3C 60 80 3A */	lis r3, __vt__25mDoExt_MtxCalcAnmBlendTbl@ha
/* 80014EDC  38 03 33 E4 */	addi r0, r3, __vt__25mDoExt_MtxCalcAnmBlendTbl@l
/* 80014EE0  90 1F 00 00 */	stw r0, 0(r31)
/* 80014EE4  41 82 00 30 */	beq lbl_80014F14
/* 80014EE8  3C 60 80 3A */	lis r3, data_803A3360@ha
/* 80014EEC  38 03 33 60 */	addi r0, r3, data_803A3360@l
/* 80014EF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80014EF4  41 82 00 20 */	beq lbl_80014F14
/* 80014EF8  3C 60 80 3A */	lis r3, __vt__19J3DMtxCalcNoAnmBase@ha
/* 80014EFC  38 03 33 8C */	addi r0, r3, __vt__19J3DMtxCalcNoAnmBase@l
/* 80014F00  90 1F 00 00 */	stw r0, 0(r31)
/* 80014F04  41 82 00 10 */	beq lbl_80014F14
/* 80014F08  3C 60 80 3A */	lis r3, __vt__10J3DMtxCalc@ha
/* 80014F0C  38 03 34 68 */	addi r0, r3, __vt__10J3DMtxCalc@l
/* 80014F10  90 1F 00 00 */	stw r0, 0(r31)
lbl_80014F14:
/* 80014F14  7C 80 07 35 */	extsh. r0, r4
/* 80014F18  40 81 00 0C */	ble lbl_80014F24
/* 80014F1C  7F E3 FB 78 */	mr r3, r31
/* 80014F20  48 2B 9E 1D */	bl __dl__FPv
lbl_80014F24:
/* 80014F24  7F E3 FB 78 */	mr r3, r31
/* 80014F28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80014F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80014F30  7C 08 03 A6 */	mtlr r0
/* 80014F34  38 21 00 10 */	addi r1, r1, 0x10
/* 80014F38  4E 80 00 20 */	blr 
