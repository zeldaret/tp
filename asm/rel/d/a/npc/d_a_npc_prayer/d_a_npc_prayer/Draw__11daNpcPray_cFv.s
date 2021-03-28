lbl_80AB3668:
/* 80AB3668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB366C  7C 08 02 A6 */	mflr r0
/* 80AB3670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB3674  38 80 00 00 */	li r4, 0
/* 80AB3678  38 A0 00 00 */	li r5, 0
/* 80AB367C  3C C0 80 AB */	lis r6, m__17daNpcPray_Param_c@ha
/* 80AB3680  38 C6 58 08 */	addi r6, r6, m__17daNpcPray_Param_c@l
/* 80AB3684  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80AB3688  38 C0 00 00 */	li r6, 0
/* 80AB368C  38 E0 00 00 */	li r7, 0
/* 80AB3690  4B 69 EC 1C */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 80AB3694  38 60 00 01 */	li r3, 1
/* 80AB3698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB369C  7C 08 03 A6 */	mtlr r0
/* 80AB36A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB36A4  4E 80 00 20 */	blr 
