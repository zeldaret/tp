lbl_80B00C14:
/* 80B00C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00C18  7C 08 02 A6 */	mflr r0
/* 80B00C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B00C20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B00C24  3C 60 80 B0 */	lis r3, cNullVec__6Z2Calc@ha
/* 80B00C28  3B E3 10 28 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80B00C2C  3C 60 80 B0 */	lis r3, __vt__17daNpcTheB_Param_c@ha
/* 80B00C30  38 03 12 FC */	addi r0, r3, __vt__17daNpcTheB_Param_c@l
/* 80B00C34  3C 60 80 B0 */	lis r3, l_HIO@ha
/* 80B00C38  94 03 13 1C */	stwu r0, l_HIO@l(r3)
/* 80B00C3C  3C 80 80 B0 */	lis r4, __dt__17daNpcTheB_Param_cFv@ha
/* 80B00C40  38 84 0D 00 */	addi r4, r4, __dt__17daNpcTheB_Param_cFv@l
/* 80B00C44  3C A0 80 B0 */	lis r5, lit_3822@ha
/* 80B00C48  38 A5 13 10 */	addi r5, r5, lit_3822@l
/* 80B00C4C  4B FF BA AD */	bl __register_global_object
/* 80B00C50  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80B00C54  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80B00C58  80 64 00 00 */	lwz r3, 0(r4)
/* 80B00C5C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B00C60  90 7F 01 00 */	stw r3, 0x100(r31)
/* 80B00C64  90 1F 01 04 */	stw r0, 0x104(r31)
/* 80B00C68  80 04 00 08 */	lwz r0, 8(r4)
/* 80B00C6C  90 1F 01 08 */	stw r0, 0x108(r31)
/* 80B00C70  38 9F 01 00 */	addi r4, r31, 0x100
/* 80B00C74  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 80B00C78  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 80B00C7C  90 64 00 0C */	stw r3, 0xc(r4)
/* 80B00C80  90 04 00 10 */	stw r0, 0x10(r4)
/* 80B00C84  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 80B00C88  90 04 00 14 */	stw r0, 0x14(r4)
/* 80B00C8C  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 80B00C90  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 80B00C94  90 64 00 18 */	stw r3, 0x18(r4)
/* 80B00C98  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80B00C9C  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80B00CA0  90 04 00 20 */	stw r0, 0x20(r4)
/* 80B00CA4  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80B00CA8  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 80B00CAC  90 64 00 24 */	stw r3, 0x24(r4)
/* 80B00CB0  90 04 00 28 */	stw r0, 0x28(r4)
/* 80B00CB4  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 80B00CB8  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80B00CBC  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 80B00CC0  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 80B00CC4  90 64 00 30 */	stw r3, 0x30(r4)
/* 80B00CC8  90 04 00 34 */	stw r0, 0x34(r4)
/* 80B00CCC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80B00CD0  90 04 00 38 */	stw r0, 0x38(r4)
/* 80B00CD4  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 80B00CD8  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80B00CDC  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80B00CE0  90 04 00 40 */	stw r0, 0x40(r4)
/* 80B00CE4  80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 80B00CE8  90 04 00 44 */	stw r0, 0x44(r4)
/* 80B00CEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B00CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B00CF4  7C 08 03 A6 */	mtlr r0
/* 80B00CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B00CFC  4E 80 00 20 */	blr 
