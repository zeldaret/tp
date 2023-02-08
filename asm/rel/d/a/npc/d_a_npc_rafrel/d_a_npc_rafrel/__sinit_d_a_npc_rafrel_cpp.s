lbl_80ABF088:
/* 80ABF088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABF08C  7C 08 02 A6 */	mflr r0
/* 80ABF090  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABF094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABF098  3C 60 80 AC */	lis r3, cNullVec__6Z2Calc@ha /* 0x80ABFE80@ha */
/* 80ABF09C  3B E3 FE 80 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80ABFE80@l */
/* 80ABF0A0  3C 60 80 AC */	lis r3, __vt__19daNpcRafrel_Param_c@ha /* 0x80AC0300@ha */
/* 80ABF0A4  38 03 03 00 */	addi r0, r3, __vt__19daNpcRafrel_Param_c@l /* 0x80AC0300@l */
/* 80ABF0A8  3C 60 80 AC */	lis r3, l_HIO@ha /* 0x80AC0324@ha */
/* 80ABF0AC  94 03 03 24 */	stwu r0, l_HIO@l(r3)  /* 0x80AC0324@l */
/* 80ABF0B0  3C 80 80 AC */	lis r4, __dt__19daNpcRafrel_Param_cFv@ha /* 0x80ABF974@ha */
/* 80ABF0B4  38 84 F9 74 */	addi r4, r4, __dt__19daNpcRafrel_Param_cFv@l /* 0x80ABF974@l */
/* 80ABF0B8  3C A0 80 AC */	lis r5, lit_3819@ha /* 0x80AC0318@ha */
/* 80ABF0BC  38 A5 03 18 */	addi r5, r5, lit_3819@l /* 0x80AC0318@l */
/* 80ABF0C0  4B FF A4 F9 */	bl __register_global_object
/* 80ABF0C4  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80ABF0C8  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80ABF0CC  80 64 00 00 */	lwz r3, 0(r4)
/* 80ABF0D0  80 04 00 04 */	lwz r0, 4(r4)
/* 80ABF0D4  90 7F 02 90 */	stw r3, 0x290(r31)
/* 80ABF0D8  90 1F 02 94 */	stw r0, 0x294(r31)
/* 80ABF0DC  80 04 00 08 */	lwz r0, 8(r4)
/* 80ABF0E0  90 1F 02 98 */	stw r0, 0x298(r31)
/* 80ABF0E4  38 9F 02 90 */	addi r4, r31, 0x290
/* 80ABF0E8  80 7F 02 48 */	lwz r3, 0x248(r31)
/* 80ABF0EC  80 1F 02 4C */	lwz r0, 0x24c(r31)
/* 80ABF0F0  90 64 00 0C */	stw r3, 0xc(r4)
/* 80ABF0F4  90 04 00 10 */	stw r0, 0x10(r4)
/* 80ABF0F8  80 1F 02 50 */	lwz r0, 0x250(r31)
/* 80ABF0FC  90 04 00 14 */	stw r0, 0x14(r4)
/* 80ABF100  80 7F 02 54 */	lwz r3, 0x254(r31)
/* 80ABF104  80 1F 02 58 */	lwz r0, 0x258(r31)
/* 80ABF108  90 64 00 18 */	stw r3, 0x18(r4)
/* 80ABF10C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80ABF110  80 1F 02 5C */	lwz r0, 0x25c(r31)
/* 80ABF114  90 04 00 20 */	stw r0, 0x20(r4)
/* 80ABF118  80 7F 02 60 */	lwz r3, 0x260(r31)
/* 80ABF11C  80 1F 02 64 */	lwz r0, 0x264(r31)
/* 80ABF120  90 64 00 24 */	stw r3, 0x24(r4)
/* 80ABF124  90 04 00 28 */	stw r0, 0x28(r4)
/* 80ABF128  80 1F 02 68 */	lwz r0, 0x268(r31)
/* 80ABF12C  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80ABF130  80 7F 02 6C */	lwz r3, 0x26c(r31)
/* 80ABF134  80 1F 02 70 */	lwz r0, 0x270(r31)
/* 80ABF138  90 64 00 30 */	stw r3, 0x30(r4)
/* 80ABF13C  90 04 00 34 */	stw r0, 0x34(r4)
/* 80ABF140  80 1F 02 74 */	lwz r0, 0x274(r31)
/* 80ABF144  90 04 00 38 */	stw r0, 0x38(r4)
/* 80ABF148  80 7F 02 78 */	lwz r3, 0x278(r31)
/* 80ABF14C  80 1F 02 7C */	lwz r0, 0x27c(r31)
/* 80ABF150  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80ABF154  90 04 00 40 */	stw r0, 0x40(r4)
/* 80ABF158  80 1F 02 80 */	lwz r0, 0x280(r31)
/* 80ABF15C  90 04 00 44 */	stw r0, 0x44(r4)
/* 80ABF160  80 7F 02 84 */	lwz r3, 0x284(r31)
/* 80ABF164  80 1F 02 88 */	lwz r0, 0x288(r31)
/* 80ABF168  90 64 00 48 */	stw r3, 0x48(r4)
/* 80ABF16C  90 04 00 4C */	stw r0, 0x4c(r4)
/* 80ABF170  80 1F 02 8C */	lwz r0, 0x28c(r31)
/* 80ABF174  90 04 00 50 */	stw r0, 0x50(r4)
/* 80ABF178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABF17C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABF180  7C 08 03 A6 */	mtlr r0
/* 80ABF184  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABF188  4E 80 00 20 */	blr 
