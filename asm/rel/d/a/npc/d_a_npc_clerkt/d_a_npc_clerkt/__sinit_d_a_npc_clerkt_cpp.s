lbl_8099CF34:
/* 8099CF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099CF38  7C 08 02 A6 */	mflr r0
/* 8099CF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099CF40  3C 60 80 9A */	lis r3, mCutList__13daNpcClerkT_c@ha
/* 8099CF44  38 A3 D4 2C */	addi r5, r3, mCutList__13daNpcClerkT_c@l
/* 8099CF48  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 8099CF4C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 8099CF50  80 64 00 00 */	lwz r3, 0(r4)
/* 8099CF54  80 04 00 04 */	lwz r0, 4(r4)
/* 8099CF58  90 65 00 00 */	stw r3, 0(r5)
/* 8099CF5C  90 05 00 04 */	stw r0, 4(r5)
/* 8099CF60  80 04 00 08 */	lwz r0, 8(r4)
/* 8099CF64  90 05 00 08 */	stw r0, 8(r5)
/* 8099CF68  3C 60 80 9A */	lis r3, __vt__19daNpcClerkt_Param_c@ha
/* 8099CF6C  38 03 D6 3C */	addi r0, r3, __vt__19daNpcClerkt_Param_c@l
/* 8099CF70  3C 60 80 9A */	lis r3, l_HIO@ha
/* 8099CF74  94 03 D6 5C */	stwu r0, l_HIO@l(r3)
/* 8099CF78  3C 80 80 9A */	lis r4, __dt__19daNpcClerkt_Param_cFv@ha
/* 8099CF7C  38 84 D0 A8 */	addi r4, r4, __dt__19daNpcClerkt_Param_cFv@l
/* 8099CF80  3C A0 80 9A */	lis r5, lit_3931@ha
/* 8099CF84  38 A5 D6 50 */	addi r5, r5, lit_3931@l
/* 8099CF88  4B FF D1 51 */	bl __register_global_object
/* 8099CF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099CF90  7C 08 03 A6 */	mtlr r0
/* 8099CF94  38 21 00 10 */	addi r1, r1, 0x10
/* 8099CF98  4E 80 00 20 */	blr 
