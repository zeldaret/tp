lbl_80A20F80:
/* 80A20F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20F84  7C 08 02 A6 */	mflr r0
/* 80A20F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20F8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A20F90  3C 60 80 A2 */	lis r3, cNullVec__6Z2Calc@ha
/* 80A20F94  3B E3 13 D4 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80A20F98  3C 60 80 A2 */	lis r3, __vt__21daNpcKasiHana_Param_c@ha
/* 80A20F9C  38 03 17 F4 */	addi r0, r3, __vt__21daNpcKasiHana_Param_c@l
/* 80A20FA0  3C 60 80 A2 */	lis r3, l_HIO@ha
/* 80A20FA4  94 03 18 54 */	stwu r0, l_HIO@l(r3)
/* 80A20FA8  3C 80 80 A2 */	lis r4, __dt__21daNpcKasiHana_Param_cFv@ha
/* 80A20FAC  38 84 06 7C */	addi r4, r4, __dt__21daNpcKasiHana_Param_cFv@l
/* 80A20FB0  3C A0 80 A2 */	lis r5, lit_4323@ha
/* 80A20FB4  38 A5 18 48 */	addi r5, r5, lit_4323@l
/* 80A20FB8  4B FF 9F 81 */	bl __register_global_object
/* 80A20FBC  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80A20FC0  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80A20FC4  80 64 00 00 */	lwz r3, 0(r4)
/* 80A20FC8  80 04 00 04 */	lwz r0, 4(r4)
/* 80A20FCC  90 7F 01 44 */	stw r3, 0x144(r31)
/* 80A20FD0  90 1F 01 48 */	stw r0, 0x148(r31)
/* 80A20FD4  80 04 00 08 */	lwz r0, 8(r4)
/* 80A20FD8  90 1F 01 4C */	stw r0, 0x14c(r31)
/* 80A20FDC  38 9F 01 44 */	addi r4, r31, 0x144
/* 80A20FE0  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 80A20FE4  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 80A20FE8  90 64 00 0C */	stw r3, 0xc(r4)
/* 80A20FEC  90 04 00 10 */	stw r0, 0x10(r4)
/* 80A20FF0  80 1F 01 10 */	lwz r0, 0x110(r31)
/* 80A20FF4  90 04 00 14 */	stw r0, 0x14(r4)
/* 80A20FF8  80 7F 01 14 */	lwz r3, 0x114(r31)
/* 80A20FFC  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 80A21000  90 64 00 18 */	stw r3, 0x18(r4)
/* 80A21004  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80A21008  80 1F 01 1C */	lwz r0, 0x11c(r31)
/* 80A2100C  90 04 00 20 */	stw r0, 0x20(r4)
/* 80A21010  80 7F 01 20 */	lwz r3, 0x120(r31)
/* 80A21014  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 80A21018  90 64 00 24 */	stw r3, 0x24(r4)
/* 80A2101C  90 04 00 28 */	stw r0, 0x28(r4)
/* 80A21020  80 1F 01 28 */	lwz r0, 0x128(r31)
/* 80A21024  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80A21028  80 7F 01 2C */	lwz r3, 0x12c(r31)
/* 80A2102C  80 1F 01 30 */	lwz r0, 0x130(r31)
/* 80A21030  90 64 00 30 */	stw r3, 0x30(r4)
/* 80A21034  90 04 00 34 */	stw r0, 0x34(r4)
/* 80A21038  80 1F 01 34 */	lwz r0, 0x134(r31)
/* 80A2103C  90 04 00 38 */	stw r0, 0x38(r4)
/* 80A21040  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 80A21044  80 1F 01 3C */	lwz r0, 0x13c(r31)
/* 80A21048  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80A2104C  90 04 00 40 */	stw r0, 0x40(r4)
/* 80A21050  80 1F 01 40 */	lwz r0, 0x140(r31)
/* 80A21054  90 04 00 44 */	stw r0, 0x44(r4)
/* 80A21058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2105C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A21060  7C 08 03 A6 */	mtlr r0
/* 80A21064  38 21 00 10 */	addi r1, r1, 0x10
/* 80A21068  4E 80 00 20 */	blr 
