lbl_80B1078C:
/* 80B1078C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B10790  7C 08 02 A6 */	mflr r0
/* 80B10794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B10798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1079C  3C 60 80 B1 */	lis r3, cNullVec__6Z2Calc@ha
/* 80B107A0  3B E3 0A 60 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80B107A4  3C 60 80 B1 */	lis r3, __vt__16daNpcTkc_Param_c@ha
/* 80B107A8  38 03 0C D8 */	addi r0, r3, __vt__16daNpcTkc_Param_c@l
/* 80B107AC  3C 60 80 B1 */	lis r3, l_HIO@ha
/* 80B107B0  94 03 0C FC */	stwu r0, l_HIO@l(r3)
/* 80B107B4  3C 80 80 B1 */	lis r4, __dt__16daNpcTkc_Param_cFv@ha
/* 80B107B8  38 84 08 48 */	addi r4, r4, __dt__16daNpcTkc_Param_cFv@l
/* 80B107BC  3C A0 80 B1 */	lis r5, lit_3935@ha
/* 80B107C0  38 A5 0C F0 */	addi r5, r5, lit_3935@l
/* 80B107C4  4B FF BF 95 */	bl __register_global_object
/* 80B107C8  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80B107CC  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80B107D0  80 64 00 00 */	lwz r3, 0(r4)
/* 80B107D4  80 04 00 04 */	lwz r0, 4(r4)
/* 80B107D8  90 7F 00 84 */	stw r3, 0x84(r31)
/* 80B107DC  90 1F 00 88 */	stw r0, 0x88(r31)
/* 80B107E0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B107E4  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 80B107E8  38 9F 00 84 */	addi r4, r31, 0x84
/* 80B107EC  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80B107F0  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 80B107F4  90 64 00 0C */	stw r3, 0xc(r4)
/* 80B107F8  90 04 00 10 */	stw r0, 0x10(r4)
/* 80B107FC  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80B10800  90 04 00 14 */	stw r0, 0x14(r4)
/* 80B10804  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80B10808  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 80B1080C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80B10810  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80B10814  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 80B10818  90 04 00 20 */	stw r0, 0x20(r4)
/* 80B1081C  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80B10820  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 80B10824  90 64 00 24 */	stw r3, 0x24(r4)
/* 80B10828  90 04 00 28 */	stw r0, 0x28(r4)
/* 80B1082C  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 80B10830  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80B10834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B10838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1083C  7C 08 03 A6 */	mtlr r0
/* 80B10840  38 21 00 10 */	addi r1, r1, 0x10
/* 80B10844  4E 80 00 20 */	blr 
