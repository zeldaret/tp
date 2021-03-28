lbl_80BBC390:
/* 80BBC390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBC394  7C 08 02 A6 */	mflr r0
/* 80BBC398  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBC39C  3C 60 80 BC */	lis r3, l_ccDCyl@ha
/* 80BBC3A0  38 63 C5 2C */	addi r3, r3, l_ccDCyl@l
/* 80BBC3A4  38 A3 FF FC */	addi r5, r3, -4
/* 80BBC3A8  3C 60 80 BC */	lis r3, l_ccDObjData@ha
/* 80BBC3AC  38 63 C4 8C */	addi r3, r3, l_ccDObjData@l
/* 80BBC3B0  38 83 FF FC */	addi r4, r3, -4
/* 80BBC3B4  38 00 00 06 */	li r0, 6
/* 80BBC3B8  7C 09 03 A6 */	mtctr r0
lbl_80BBC3BC:
/* 80BBC3BC  80 64 00 04 */	lwz r3, 4(r4)
/* 80BBC3C0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80BBC3C4  90 65 00 04 */	stw r3, 4(r5)
/* 80BBC3C8  94 05 00 08 */	stwu r0, 8(r5)
/* 80BBC3CC  42 00 FF F0 */	bdnz lbl_80BBC3BC
/* 80BBC3D0  3C 60 80 BC */	lis r3, __vt__21daObj_BouMato_Param_c@ha
/* 80BBC3D4  38 03 C6 60 */	addi r0, r3, __vt__21daObj_BouMato_Param_c@l
/* 80BBC3D8  3C 60 80 BC */	lis r3, l_HIO@ha
/* 80BBC3DC  94 03 C8 18 */	stwu r0, l_HIO@l(r3)
/* 80BBC3E0  3C 80 80 BC */	lis r4, __dt__21daObj_BouMato_Param_cFv@ha
/* 80BBC3E4  38 84 C4 04 */	addi r4, r4, __dt__21daObj_BouMato_Param_cFv@l
/* 80BBC3E8  3C A0 80 BC */	lis r5, lit_3830@ha
/* 80BBC3EC  38 A5 C8 0C */	addi r5, r5, lit_3830@l
/* 80BBC3F0  4B FF EB 89 */	bl __register_global_object
/* 80BBC3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBC3F8  7C 08 03 A6 */	mtlr r0
/* 80BBC3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBC400  4E 80 00 20 */	blr 
