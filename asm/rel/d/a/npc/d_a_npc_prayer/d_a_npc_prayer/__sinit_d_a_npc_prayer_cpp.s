lbl_80AB5710:
/* 80AB5710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB5714  7C 08 02 A6 */	mflr r0
/* 80AB5718  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB571C  3C 60 80 AB */	lis r3, __vt__17daNpcPray_Param_c@ha
/* 80AB5720  38 03 5B 94 */	addi r0, r3, __vt__17daNpcPray_Param_c@l
/* 80AB5724  3C 60 80 AB */	lis r3, l_HIO@ha
/* 80AB5728  94 03 5B B4 */	stwu r0, l_HIO@l(r3)
/* 80AB572C  3C 80 80 AB */	lis r4, __dt__17daNpcPray_Param_cFv@ha
/* 80AB5730  38 84 57 9C */	addi r4, r4, __dt__17daNpcPray_Param_cFv@l
/* 80AB5734  3C A0 80 AB */	lis r5, lit_3803@ha
/* 80AB5738  38 A5 5B A8 */	addi r5, r5, lit_3803@l
/* 80AB573C  4B FF D6 3D */	bl __register_global_object
/* 80AB5740  3C 60 80 AB */	lis r3, mEvtSeqList__11daNpcPray_c@ha
/* 80AB5744  38 A3 5A 0C */	addi r5, r3, mEvtSeqList__11daNpcPray_c@l
/* 80AB5748  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80AB574C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80AB5750  80 64 00 00 */	lwz r3, 0(r4)
/* 80AB5754  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB5758  90 65 00 00 */	stw r3, 0(r5)
/* 80AB575C  90 05 00 04 */	stw r0, 4(r5)
/* 80AB5760  80 04 00 08 */	lwz r0, 8(r4)
/* 80AB5764  90 05 00 08 */	stw r0, 8(r5)
/* 80AB5768  3C 60 80 AB */	lis r3, lit_3804@ha
/* 80AB576C  38 83 5A 00 */	addi r4, r3, lit_3804@l
/* 80AB5770  80 64 00 00 */	lwz r3, 0(r4)
/* 80AB5774  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB5778  90 65 00 0C */	stw r3, 0xc(r5)
/* 80AB577C  90 05 00 10 */	stw r0, 0x10(r5)
/* 80AB5780  80 04 00 08 */	lwz r0, 8(r4)
/* 80AB5784  90 05 00 14 */	stw r0, 0x14(r5)
/* 80AB5788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB578C  7C 08 03 A6 */	mtlr r0
/* 80AB5790  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB5794  4E 80 00 20 */	blr 
