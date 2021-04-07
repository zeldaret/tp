lbl_80B9AE60:
/* 80B9AE60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9AE64  7C 08 02 A6 */	mflr r0
/* 80B9AE68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9AE6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9AE70  3C 60 80 BA */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B9B284@ha */
/* 80B9AE74  3B E3 B2 84 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80B9B284@l */
/* 80B9AE78  3C 60 80 BA */	lis r3, __vt__17daNpc_zrZ_Param_c@ha /* 0x80B9B854@ha */
/* 80B9AE7C  38 03 B8 54 */	addi r0, r3, __vt__17daNpc_zrZ_Param_c@l /* 0x80B9B854@l */
/* 80B9AE80  3C 60 80 BA */	lis r3, l_HIO@ha /* 0x80B9B8B4@ha */
/* 80B9AE84  94 03 B8 B4 */	stwu r0, l_HIO@l(r3)  /* 0x80B9B8B4@l */
/* 80B9AE88  3C 80 80 BA */	lis r4, __dt__17daNpc_zrZ_Param_cFv@ha /* 0x80B9AF80@ha */
/* 80B9AE8C  38 84 AF 80 */	addi r4, r4, __dt__17daNpc_zrZ_Param_cFv@l /* 0x80B9AF80@l */
/* 80B9AE90  3C A0 80 BA */	lis r5, lit_4021@ha /* 0x80B9B8A8@ha */
/* 80B9AE94  38 A5 B8 A8 */	addi r5, r5, lit_4021@l /* 0x80B9B8A8@l */
/* 80B9AE98  4B FF 8E C1 */	bl __register_global_object
/* 80B9AE9C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B9AEA0  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B9AEA4  80 64 00 00 */	lwz r3, 0(r4)
/* 80B9AEA8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B9AEAC  90 7F 01 B0 */	stw r3, 0x1b0(r31)
/* 80B9AEB0  90 1F 01 B4 */	stw r0, 0x1b4(r31)
/* 80B9AEB4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B9AEB8  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 80B9AEBC  38 9F 01 B0 */	addi r4, r31, 0x1b0
/* 80B9AEC0  80 7F 01 5C */	lwz r3, 0x15c(r31)
/* 80B9AEC4  80 1F 01 60 */	lwz r0, 0x160(r31)
/* 80B9AEC8  90 64 00 0C */	stw r3, 0xc(r4)
/* 80B9AECC  90 04 00 10 */	stw r0, 0x10(r4)
/* 80B9AED0  80 1F 01 64 */	lwz r0, 0x164(r31)
/* 80B9AED4  90 04 00 14 */	stw r0, 0x14(r4)
/* 80B9AED8  80 7F 01 68 */	lwz r3, 0x168(r31)
/* 80B9AEDC  80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 80B9AEE0  90 64 00 18 */	stw r3, 0x18(r4)
/* 80B9AEE4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80B9AEE8  80 1F 01 70 */	lwz r0, 0x170(r31)
/* 80B9AEEC  90 04 00 20 */	stw r0, 0x20(r4)
/* 80B9AEF0  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 80B9AEF4  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 80B9AEF8  90 64 00 24 */	stw r3, 0x24(r4)
/* 80B9AEFC  90 04 00 28 */	stw r0, 0x28(r4)
/* 80B9AF00  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 80B9AF04  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80B9AF08  80 7F 01 80 */	lwz r3, 0x180(r31)
/* 80B9AF0C  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 80B9AF10  90 64 00 30 */	stw r3, 0x30(r4)
/* 80B9AF14  90 04 00 34 */	stw r0, 0x34(r4)
/* 80B9AF18  80 1F 01 88 */	lwz r0, 0x188(r31)
/* 80B9AF1C  90 04 00 38 */	stw r0, 0x38(r4)
/* 80B9AF20  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 80B9AF24  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80B9AF28  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80B9AF2C  90 04 00 40 */	stw r0, 0x40(r4)
/* 80B9AF30  80 1F 01 94 */	lwz r0, 0x194(r31)
/* 80B9AF34  90 04 00 44 */	stw r0, 0x44(r4)
/* 80B9AF38  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 80B9AF3C  80 1F 01 9C */	lwz r0, 0x19c(r31)
/* 80B9AF40  90 64 00 48 */	stw r3, 0x48(r4)
/* 80B9AF44  90 04 00 4C */	stw r0, 0x4c(r4)
/* 80B9AF48  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 80B9AF4C  90 04 00 50 */	stw r0, 0x50(r4)
/* 80B9AF50  80 7F 01 A4 */	lwz r3, 0x1a4(r31)
/* 80B9AF54  80 1F 01 A8 */	lwz r0, 0x1a8(r31)
/* 80B9AF58  90 64 00 54 */	stw r3, 0x54(r4)
/* 80B9AF5C  90 04 00 58 */	stw r0, 0x58(r4)
/* 80B9AF60  80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 80B9AF64  90 04 00 5C */	stw r0, 0x5c(r4)
/* 80B9AF68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9AF6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9AF70  7C 08 03 A6 */	mtlr r0
/* 80B9AF74  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9AF78  4E 80 00 20 */	blr 
