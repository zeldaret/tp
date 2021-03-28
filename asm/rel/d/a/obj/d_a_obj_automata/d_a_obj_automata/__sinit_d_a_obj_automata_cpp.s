lbl_80BA6AE0:
/* 80BA6AE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BA6AE4  7C 08 02 A6 */	mflr r0
/* 80BA6AE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BA6AEC  38 A1 00 04 */	addi r5, r1, 4
/* 80BA6AF0  3C 60 80 BA */	lis r3, l_ccDObjData@ha
/* 80BA6AF4  38 63 6C 1C */	addi r3, r3, l_ccDObjData@l
/* 80BA6AF8  38 83 FF FC */	addi r4, r3, -4
/* 80BA6AFC  38 00 00 06 */	li r0, 6
/* 80BA6B00  7C 09 03 A6 */	mtctr r0
lbl_80BA6B04:
/* 80BA6B04  80 64 00 04 */	lwz r3, 4(r4)
/* 80BA6B08  84 04 00 08 */	lwzu r0, 8(r4)
/* 80BA6B0C  90 65 00 04 */	stw r3, 4(r5)
/* 80BA6B10  94 05 00 08 */	stwu r0, 8(r5)
/* 80BA6B14  42 00 FF F0 */	bdnz lbl_80BA6B04
/* 80BA6B18  3C 60 80 BA */	lis r3, l_ccDCyl@ha
/* 80BA6B1C  38 63 6C E0 */	addi r3, r3, l_ccDCyl@l
/* 80BA6B20  38 A3 FF FC */	addi r5, r3, -4
/* 80BA6B24  38 81 00 04 */	addi r4, r1, 4
/* 80BA6B28  38 00 00 06 */	li r0, 6
/* 80BA6B2C  7C 09 03 A6 */	mtctr r0
lbl_80BA6B30:
/* 80BA6B30  80 64 00 04 */	lwz r3, 4(r4)
/* 80BA6B34  84 04 00 08 */	lwzu r0, 8(r4)
/* 80BA6B38  90 65 00 04 */	stw r3, 4(r5)
/* 80BA6B3C  94 05 00 08 */	stwu r0, 8(r5)
/* 80BA6B40  42 00 FF F0 */	bdnz lbl_80BA6B30
/* 80BA6B44  3C 60 80 BA */	lis r3, l_ccDSph@ha
/* 80BA6B48  38 63 6D 24 */	addi r3, r3, l_ccDSph@l
/* 80BA6B4C  38 A3 FF FC */	addi r5, r3, -4
/* 80BA6B50  38 81 00 04 */	addi r4, r1, 4
/* 80BA6B54  38 00 00 06 */	li r0, 6
/* 80BA6B58  7C 09 03 A6 */	mtctr r0
lbl_80BA6B5C:
/* 80BA6B5C  80 64 00 04 */	lwz r3, 4(r4)
/* 80BA6B60  84 04 00 08 */	lwzu r0, 8(r4)
/* 80BA6B64  90 65 00 04 */	stw r3, 4(r5)
/* 80BA6B68  94 05 00 08 */	stwu r0, 8(r5)
/* 80BA6B6C  42 00 FF F0 */	bdnz lbl_80BA6B5C
/* 80BA6B70  3C 60 80 BA */	lis r3, __vt__22daObj_AutoMata_Param_c@ha
/* 80BA6B74  38 03 6E 38 */	addi r0, r3, __vt__22daObj_AutoMata_Param_c@l
/* 80BA6B78  3C 60 80 BA */	lis r3, l_HIO@ha
/* 80BA6B7C  94 03 6E 5C */	stwu r0, l_HIO@l(r3)
/* 80BA6B80  3C 80 80 BA */	lis r4, __dt__22daObj_AutoMata_Param_cFv@ha
/* 80BA6B84  38 84 6B A4 */	addi r4, r4, __dt__22daObj_AutoMata_Param_cFv@l
/* 80BA6B88  3C A0 80 BA */	lis r5, lit_3801@ha
/* 80BA6B8C  38 A5 6E 50 */	addi r5, r5, lit_3801@l
/* 80BA6B90  4B FF EA E9 */	bl __register_global_object
/* 80BA6B94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BA6B98  7C 08 03 A6 */	mtlr r0
/* 80BA6B9C  38 21 00 40 */	addi r1, r1, 0x40
/* 80BA6BA0  4E 80 00 20 */	blr 
