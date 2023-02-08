lbl_80587CA4:
/* 80587CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80587CA8  7C 08 02 A6 */	mflr r0
/* 80587CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587CB0  3C 60 80 58 */	lis r3, l_ccDCyl@ha /* 0x80587EAC@ha */
/* 80587CB4  38 63 7E AC */	addi r3, r3, l_ccDCyl@l /* 0x80587EAC@l */
/* 80587CB8  38 A3 FF FC */	addi r5, r3, -4
/* 80587CBC  3C 60 80 58 */	lis r3, l_ccDObjData@ha /* 0x80587DB0@ha */
/* 80587CC0  38 63 7D B0 */	addi r3, r3, l_ccDObjData@l /* 0x80587DB0@l */
/* 80587CC4  38 83 FF FC */	addi r4, r3, -4
/* 80587CC8  38 00 00 06 */	li r0, 6
/* 80587CCC  7C 09 03 A6 */	mtctr r0
lbl_80587CD0:
/* 80587CD0  80 64 00 04 */	lwz r3, 4(r4)
/* 80587CD4  84 04 00 08 */	lwzu r0, 8(r4)
/* 80587CD8  90 65 00 04 */	stw r3, 4(r5)
/* 80587CDC  94 05 00 08 */	stwu r0, 8(r5)
/* 80587CE0  42 00 FF F0 */	bdnz lbl_80587CD0
/* 80587CE4  3C 60 80 58 */	lis r3, __vt__21daObj_KBacket_Param_c@ha /* 0x80587FCC@ha */
/* 80587CE8  38 03 7F CC */	addi r0, r3, __vt__21daObj_KBacket_Param_c@l /* 0x80587FCC@l */
/* 80587CEC  3C 60 80 58 */	lis r3, l_HIO@ha /* 0x80587FEC@ha */
/* 80587CF0  94 03 7F EC */	stwu r0, l_HIO@l(r3)  /* 0x80587FEC@l */
/* 80587CF4  3C 80 80 58 */	lis r4, __dt__21daObj_KBacket_Param_cFv@ha /* 0x80587D18@ha */
/* 80587CF8  38 84 7D 18 */	addi r4, r4, __dt__21daObj_KBacket_Param_cFv@l /* 0x80587D18@l */
/* 80587CFC  3C A0 80 58 */	lis r5, lit_3810@ha /* 0x80587FE0@ha */
/* 80587D00  38 A5 7F E0 */	addi r5, r5, lit_3810@l /* 0x80587FE0@l */
/* 80587D04  4B FF E0 D5 */	bl __register_global_object
/* 80587D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587D0C  7C 08 03 A6 */	mtlr r0
/* 80587D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80587D14  4E 80 00 20 */	blr 
