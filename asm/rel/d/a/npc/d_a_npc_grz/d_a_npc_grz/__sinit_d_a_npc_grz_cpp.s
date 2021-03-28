lbl_809EF080:
/* 809EF080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EF084  7C 08 02 A6 */	mflr r0
/* 809EF088  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EF08C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EF090  3C 60 80 9F */	lis r3, cNullVec__6Z2Calc@ha
/* 809EF094  3B E3 F6 A0 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 809EF098  3C 60 80 9F */	lis r3, __vt__17daNpc_Grz_Param_c@ha
/* 809EF09C  38 03 FB F4 */	addi r0, r3, __vt__17daNpc_Grz_Param_c@l
/* 809EF0A0  3C 60 80 9F */	lis r3, l_HIO@ha
/* 809EF0A4  94 03 FC 54 */	stwu r0, l_HIO@l(r3)
/* 809EF0A8  3C 80 80 9F */	lis r4, __dt__17daNpc_Grz_Param_cFv@ha
/* 809EF0AC  38 84 F1 88 */	addi r4, r4, __dt__17daNpc_Grz_Param_cFv@l
/* 809EF0B0  3C A0 80 9F */	lis r5, lit_3810@ha
/* 809EF0B4  38 A5 FC 48 */	addi r5, r5, lit_3810@l
/* 809EF0B8  4B FF 92 E1 */	bl __register_global_object
/* 809EF0BC  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809EF0C0  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809EF0C4  80 64 00 00 */	lwz r3, 0(r4)
/* 809EF0C8  80 04 00 04 */	lwz r0, 4(r4)
/* 809EF0CC  90 7F 02 C8 */	stw r3, 0x2c8(r31)
/* 809EF0D0  90 1F 02 CC */	stw r0, 0x2cc(r31)
/* 809EF0D4  80 04 00 08 */	lwz r0, 8(r4)
/* 809EF0D8  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 809EF0DC  38 9F 02 C8 */	addi r4, r31, 0x2c8
/* 809EF0E0  80 7F 02 80 */	lwz r3, 0x280(r31)
/* 809EF0E4  80 1F 02 84 */	lwz r0, 0x284(r31)
/* 809EF0E8  90 64 00 0C */	stw r3, 0xc(r4)
/* 809EF0EC  90 04 00 10 */	stw r0, 0x10(r4)
/* 809EF0F0  80 1F 02 88 */	lwz r0, 0x288(r31)
/* 809EF0F4  90 04 00 14 */	stw r0, 0x14(r4)
/* 809EF0F8  80 7F 02 8C */	lwz r3, 0x28c(r31)
/* 809EF0FC  80 1F 02 90 */	lwz r0, 0x290(r31)
/* 809EF100  90 64 00 18 */	stw r3, 0x18(r4)
/* 809EF104  90 04 00 1C */	stw r0, 0x1c(r4)
/* 809EF108  80 1F 02 94 */	lwz r0, 0x294(r31)
/* 809EF10C  90 04 00 20 */	stw r0, 0x20(r4)
/* 809EF110  80 7F 02 98 */	lwz r3, 0x298(r31)
/* 809EF114  80 1F 02 9C */	lwz r0, 0x29c(r31)
/* 809EF118  90 64 00 24 */	stw r3, 0x24(r4)
/* 809EF11C  90 04 00 28 */	stw r0, 0x28(r4)
/* 809EF120  80 1F 02 A0 */	lwz r0, 0x2a0(r31)
/* 809EF124  90 04 00 2C */	stw r0, 0x2c(r4)
/* 809EF128  80 7F 02 A4 */	lwz r3, 0x2a4(r31)
/* 809EF12C  80 1F 02 A8 */	lwz r0, 0x2a8(r31)
/* 809EF130  90 64 00 30 */	stw r3, 0x30(r4)
/* 809EF134  90 04 00 34 */	stw r0, 0x34(r4)
/* 809EF138  80 1F 02 AC */	lwz r0, 0x2ac(r31)
/* 809EF13C  90 04 00 38 */	stw r0, 0x38(r4)
/* 809EF140  80 7F 02 B0 */	lwz r3, 0x2b0(r31)
/* 809EF144  80 1F 02 B4 */	lwz r0, 0x2b4(r31)
/* 809EF148  90 64 00 3C */	stw r3, 0x3c(r4)
/* 809EF14C  90 04 00 40 */	stw r0, 0x40(r4)
/* 809EF150  80 1F 02 B8 */	lwz r0, 0x2b8(r31)
/* 809EF154  90 04 00 44 */	stw r0, 0x44(r4)
/* 809EF158  80 7F 02 BC */	lwz r3, 0x2bc(r31)
/* 809EF15C  80 1F 02 C0 */	lwz r0, 0x2c0(r31)
/* 809EF160  90 64 00 48 */	stw r3, 0x48(r4)
/* 809EF164  90 04 00 4C */	stw r0, 0x4c(r4)
/* 809EF168  80 1F 02 C4 */	lwz r0, 0x2c4(r31)
/* 809EF16C  90 04 00 50 */	stw r0, 0x50(r4)
/* 809EF170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EF174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EF178  7C 08 03 A6 */	mtlr r0
/* 809EF17C  38 21 00 10 */	addi r1, r1, 0x10
/* 809EF180  4E 80 00 20 */	blr 
