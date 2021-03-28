lbl_80977AD0:
/* 80977AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80977AD4  7C 08 02 A6 */	mflr r0
/* 80977AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80977ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80977AE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80977AE4  3C 60 80 98 */	lis r3, lit_1109@ha
/* 80977AE8  3B C3 8B 78 */	addi r30, r3, lit_1109@l
/* 80977AEC  3C 60 80 98 */	lis r3, cNullVec__6Z2Calc@ha
/* 80977AF0  3B E3 87 A4 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80977AF4  3C 60 80 98 */	lis r3, lit_5753@ha
/* 80977AF8  C0 03 87 54 */	lfs f0, lit_5753@l(r3)
/* 80977AFC  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 80977B00  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80977B04  D0 03 00 04 */	stfs f0, 4(r3)
/* 80977B08  D0 03 00 08 */	stfs f0, 8(r3)
/* 80977B0C  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha
/* 80977B10  38 84 7D 54 */	addi r4, r4, __dt__4cXyzFv@l
/* 80977B14  38 BE 00 40 */	addi r5, r30, 0x40
/* 80977B18  4B FF B9 C1 */	bl __register_global_object
/* 80977B1C  3C 60 80 98 */	lis r3, __vt__17daNpcBouS_Param_c@ha
/* 80977B20  38 03 8B 64 */	addi r0, r3, __vt__17daNpcBouS_Param_c@l
/* 80977B24  90 1E 00 64 */	stw r0, 0x64(r30)
/* 80977B28  38 7E 00 64 */	addi r3, r30, 0x64
/* 80977B2C  3C 80 80 98 */	lis r4, __dt__17daNpcBouS_Param_cFv@ha
/* 80977B30  38 84 83 A4 */	addi r4, r4, __dt__17daNpcBouS_Param_cFv@l
/* 80977B34  38 BE 00 58 */	addi r5, r30, 0x58
/* 80977B38  4B FF B9 A1 */	bl __register_global_object
/* 80977B3C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80977B40  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80977B44  80 64 00 00 */	lwz r3, 0(r4)
/* 80977B48  80 04 00 04 */	lwz r0, 4(r4)
/* 80977B4C  90 7F 01 BC */	stw r3, 0x1bc(r31)
/* 80977B50  90 1F 01 C0 */	stw r0, 0x1c0(r31)
/* 80977B54  80 04 00 08 */	lwz r0, 8(r4)
/* 80977B58  90 1F 01 C4 */	stw r0, 0x1c4(r31)
/* 80977B5C  38 9F 01 BC */	addi r4, r31, 0x1bc
/* 80977B60  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 80977B64  80 1F 01 9C */	lwz r0, 0x19c(r31)
/* 80977B68  90 64 00 0C */	stw r3, 0xc(r4)
/* 80977B6C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80977B70  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 80977B74  90 04 00 14 */	stw r0, 0x14(r4)
/* 80977B78  80 7F 01 A4 */	lwz r3, 0x1a4(r31)
/* 80977B7C  80 1F 01 A8 */	lwz r0, 0x1a8(r31)
/* 80977B80  90 64 00 18 */	stw r3, 0x18(r4)
/* 80977B84  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80977B88  80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 80977B8C  90 04 00 20 */	stw r0, 0x20(r4)
/* 80977B90  80 7F 01 B0 */	lwz r3, 0x1b0(r31)
/* 80977B94  80 1F 01 B4 */	lwz r0, 0x1b4(r31)
/* 80977B98  90 64 00 24 */	stw r3, 0x24(r4)
/* 80977B9C  90 04 00 28 */	stw r0, 0x28(r4)
/* 80977BA0  80 1F 01 B8 */	lwz r0, 0x1b8(r31)
/* 80977BA4  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80977BA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80977BAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80977BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80977BB4  7C 08 03 A6 */	mtlr r0
/* 80977BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80977BBC  4E 80 00 20 */	blr 
