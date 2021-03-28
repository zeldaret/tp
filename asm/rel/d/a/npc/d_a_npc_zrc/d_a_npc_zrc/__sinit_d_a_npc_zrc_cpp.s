lbl_80B93104:
/* 80B93104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B93108  7C 08 02 A6 */	mflr r0
/* 80B9310C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B93110  3C 60 80 B9 */	lis r3, __vt__17daNpc_zrC_Param_c@ha
/* 80B93114  38 03 3B FC */	addi r0, r3, __vt__17daNpc_zrC_Param_c@l
/* 80B93118  3C 60 80 B9 */	lis r3, l_HIO@ha
/* 80B9311C  94 03 3C 5C */	stwu r0, l_HIO@l(r3)
/* 80B93120  3C 80 80 B9 */	lis r4, __dt__17daNpc_zrC_Param_cFv@ha
/* 80B93124  38 84 31 90 */	addi r4, r4, __dt__17daNpc_zrC_Param_cFv@l
/* 80B93128  3C A0 80 B9 */	lis r5, lit_4021@ha
/* 80B9312C  38 A5 3C 50 */	addi r5, r5, lit_4021@l
/* 80B93130  4B FF AA 69 */	bl __register_global_object
/* 80B93134  3C 60 80 B9 */	lis r3, mEvtCutList__11daNpc_zrC_c@ha
/* 80B93138  38 A3 39 7C */	addi r5, r3, mEvtCutList__11daNpc_zrC_c@l
/* 80B9313C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80B93140  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80B93144  80 64 00 00 */	lwz r3, 0(r4)
/* 80B93148  80 04 00 04 */	lwz r0, 4(r4)
/* 80B9314C  90 65 00 00 */	stw r3, 0(r5)
/* 80B93150  90 05 00 04 */	stw r0, 4(r5)
/* 80B93154  80 04 00 08 */	lwz r0, 8(r4)
/* 80B93158  90 05 00 08 */	stw r0, 8(r5)
/* 80B9315C  3C 60 80 B9 */	lis r3, lit_4022@ha
/* 80B93160  38 83 39 70 */	addi r4, r3, lit_4022@l
/* 80B93164  80 64 00 00 */	lwz r3, 0(r4)
/* 80B93168  80 04 00 04 */	lwz r0, 4(r4)
/* 80B9316C  90 65 00 0C */	stw r3, 0xc(r5)
/* 80B93170  90 05 00 10 */	stw r0, 0x10(r5)
/* 80B93174  80 04 00 08 */	lwz r0, 8(r4)
/* 80B93178  90 05 00 14 */	stw r0, 0x14(r5)
/* 80B9317C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B93180  7C 08 03 A6 */	mtlr r0
/* 80B93184  38 21 00 10 */	addi r1, r1, 0x10
/* 80B93188  4E 80 00 20 */	blr 
