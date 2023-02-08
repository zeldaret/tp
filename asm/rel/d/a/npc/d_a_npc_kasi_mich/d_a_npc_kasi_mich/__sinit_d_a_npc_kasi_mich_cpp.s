lbl_80A29F74:
/* 80A29F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29F78  7C 08 02 A6 */	mflr r0
/* 80A29F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29F80  3C 60 80 A3 */	lis r3, __vt__21daNpcKasiMich_Param_c@ha /* 0x80A2A788@ha */
/* 80A29F84  38 03 A7 88 */	addi r0, r3, __vt__21daNpcKasiMich_Param_c@l /* 0x80A2A788@l */
/* 80A29F88  3C 60 80 A3 */	lis r3, l_HIO@ha /* 0x80A2A7EC@ha */
/* 80A29F8C  94 03 A7 EC */	stwu r0, l_HIO@l(r3)  /* 0x80A2A7EC@l */
/* 80A29F90  3C 80 80 A3 */	lis r4, __dt__21daNpcKasiMich_Param_cFv@ha /* 0x80A29FE0@ha */
/* 80A29F94  38 84 9F E0 */	addi r4, r4, __dt__21daNpcKasiMich_Param_cFv@l /* 0x80A29FE0@l */
/* 80A29F98  3C A0 80 A3 */	lis r5, lit_3807@ha /* 0x80A2A7E0@ha */
/* 80A29F9C  38 A5 A7 E0 */	addi r5, r5, lit_3807@l /* 0x80A2A7E0@l */
/* 80A29FA0  4B FF C1 B9 */	bl __register_global_object
/* 80A29FA4  3C 60 80 A3 */	lis r3, mEvtSeqList__15daNpcKasiMich_c@ha /* 0x80A2A3B4@ha */
/* 80A29FA8  38 A3 A3 B4 */	addi r5, r3, mEvtSeqList__15daNpcKasiMich_c@l /* 0x80A2A3B4@l */
/* 80A29FAC  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A29FB0  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A29FB4  80 64 00 00 */	lwz r3, 0(r4)
/* 80A29FB8  80 04 00 04 */	lwz r0, 4(r4)
/* 80A29FBC  90 65 00 00 */	stw r3, 0(r5)
/* 80A29FC0  90 05 00 04 */	stw r0, 4(r5)
/* 80A29FC4  80 04 00 08 */	lwz r0, 8(r4)
/* 80A29FC8  90 05 00 08 */	stw r0, 8(r5)
/* 80A29FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A29FD0  7C 08 03 A6 */	mtlr r0
/* 80A29FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A29FD8  4E 80 00 20 */	blr 
