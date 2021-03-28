lbl_804DFB74:
/* 804DFB74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFB78  7C 08 02 A6 */	mflr r0
/* 804DFB7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFB80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DFB84  3C 60 80 4E */	lis r3, __global_destructor_chain@ha
/* 804DFB88  3B E3 1B E0 */	addi r31, r3, __global_destructor_chain@l
/* 804DFB8C  48 00 00 20 */	b lbl_804DFBAC
lbl_804DFB90:
/* 804DFB90  80 05 00 00 */	lwz r0, 0(r5)
/* 804DFB94  90 1F 00 00 */	stw r0, 0(r31)
/* 804DFB98  80 65 00 08 */	lwz r3, 8(r5)
/* 804DFB9C  38 80 FF FF */	li r4, -1
/* 804DFBA0  81 85 00 04 */	lwz r12, 4(r5)
/* 804DFBA4  7D 89 03 A6 */	mtctr r12
/* 804DFBA8  4E 80 04 21 */	bctrl 
lbl_804DFBAC:
/* 804DFBAC  80 BF 00 00 */	lwz r5, 0(r31)
/* 804DFBB0  28 05 00 00 */	cmplwi r5, 0
/* 804DFBB4  40 82 FF DC */	bne lbl_804DFB90
/* 804DFBB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DFBBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFBC0  7C 08 03 A6 */	mtlr r0
/* 804DFBC4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFBC8  4E 80 00 20 */	blr 
