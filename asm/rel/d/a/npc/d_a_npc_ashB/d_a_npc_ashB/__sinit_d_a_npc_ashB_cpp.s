lbl_8096180C:
/* 8096180C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80961810  7C 08 02 A6 */	mflr r0
/* 80961814  90 01 00 14 */	stw r0, 0x14(r1)
/* 80961818  3C 60 80 96 */	lis r3, __vt__17daNpcAshB_Param_c@ha
/* 8096181C  38 03 27 A8 */	addi r0, r3, __vt__17daNpcAshB_Param_c@l
/* 80961820  3C 60 80 96 */	lis r3, l_HIO@ha
/* 80961824  94 03 27 CC */	stwu r0, l_HIO@l(r3)
/* 80961828  3C 80 80 96 */	lis r4, __dt__17daNpcAshB_Param_cFv@ha
/* 8096182C  38 84 20 78 */	addi r4, r4, __dt__17daNpcAshB_Param_cFv@l
/* 80961830  3C A0 80 96 */	lis r5, lit_3810@ha
/* 80961834  38 A5 27 C0 */	addi r5, r5, lit_3810@l
/* 80961838  4B FF C5 A1 */	bl __register_global_object
/* 8096183C  3C 60 80 96 */	lis r3, mEvtSeqList__11daNpcAshB_c@ha
/* 80961840  38 A3 25 B0 */	addi r5, r3, mEvtSeqList__11daNpcAshB_c@l
/* 80961844  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80961848  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 8096184C  80 64 00 00 */	lwz r3, 0(r4)
/* 80961850  80 04 00 04 */	lwz r0, 4(r4)
/* 80961854  90 65 00 00 */	stw r3, 0(r5)
/* 80961858  90 05 00 04 */	stw r0, 4(r5)
/* 8096185C  80 04 00 08 */	lwz r0, 8(r4)
/* 80961860  90 05 00 08 */	stw r0, 8(r5)
/* 80961864  3C 60 80 96 */	lis r3, lit_3811@ha
/* 80961868  38 83 25 A4 */	addi r4, r3, lit_3811@l
/* 8096186C  80 64 00 00 */	lwz r3, 0(r4)
/* 80961870  80 04 00 04 */	lwz r0, 4(r4)
/* 80961874  90 65 00 0C */	stw r3, 0xc(r5)
/* 80961878  90 05 00 10 */	stw r0, 0x10(r5)
/* 8096187C  80 04 00 08 */	lwz r0, 8(r4)
/* 80961880  90 05 00 14 */	stw r0, 0x14(r5)
/* 80961884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80961888  7C 08 03 A6 */	mtlr r0
/* 8096188C  38 21 00 10 */	addi r1, r1, 0x10
/* 80961890  4E 80 00 20 */	blr 
