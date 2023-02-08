lbl_80A257E0:
/* 80A257E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A257E4  7C 08 02 A6 */	mflr r0
/* 80A257E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A257EC  3C 60 80 A2 */	lis r3, __vt__20daNpcKasiKyu_Param_c@ha /* 0x80A25FF8@ha */
/* 80A257F0  38 03 5F F8 */	addi r0, r3, __vt__20daNpcKasiKyu_Param_c@l /* 0x80A25FF8@l */
/* 80A257F4  3C 60 80 A2 */	lis r3, l_HIO@ha /* 0x80A2605C@ha */
/* 80A257F8  94 03 60 5C */	stwu r0, l_HIO@l(r3)  /* 0x80A2605C@l */
/* 80A257FC  3C 80 80 A2 */	lis r4, __dt__20daNpcKasiKyu_Param_cFv@ha /* 0x80A2584C@ha */
/* 80A25800  38 84 58 4C */	addi r4, r4, __dt__20daNpcKasiKyu_Param_cFv@l /* 0x80A2584C@l */
/* 80A25804  3C A0 80 A2 */	lis r5, lit_3807@ha /* 0x80A26050@ha */
/* 80A25808  38 A5 60 50 */	addi r5, r5, lit_3807@l /* 0x80A26050@l */
/* 80A2580C  4B FF C1 4D */	bl __register_global_object
/* 80A25810  3C 60 80 A2 */	lis r3, mEvtSeqList__14daNpcKasiKyu_c@ha /* 0x80A25C24@ha */
/* 80A25814  38 A3 5C 24 */	addi r5, r3, mEvtSeqList__14daNpcKasiKyu_c@l /* 0x80A25C24@l */
/* 80A25818  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A2581C  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A25820  80 64 00 00 */	lwz r3, 0(r4)
/* 80A25824  80 04 00 04 */	lwz r0, 4(r4)
/* 80A25828  90 65 00 00 */	stw r3, 0(r5)
/* 80A2582C  90 05 00 04 */	stw r0, 4(r5)
/* 80A25830  80 04 00 08 */	lwz r0, 8(r4)
/* 80A25834  90 05 00 08 */	stw r0, 8(r5)
/* 80A25838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2583C  7C 08 03 A6 */	mtlr r0
/* 80A25840  38 21 00 10 */	addi r1, r1, 0x10
/* 80A25844  4E 80 00 20 */	blr 
