lbl_80CD58A0:
/* 80CD58A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD58A4  7C 08 02 A6 */	mflr r0
/* 80CD58A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD58AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD58B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD58B4  3C 60 80 CD */	lis r3, lit_1109@ha /* 0x80CD68E0@ha */
/* 80CD58B8  3B C3 68 E0 */	addi r30, r3, lit_1109@l /* 0x80CD68E0@l */
/* 80CD58BC  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha /* 0x80CD5CFC@ha */
/* 80CD58C0  3B E3 5C FC */	addi r31, r3, m__21daObj_Sekizoa_Param_c@l /* 0x80CD5CFC@l */
/* 80CD58C4  3C 60 80 CD */	lis r3, cNullVec__6Z2Calc@ha /* 0x80CD5ED8@ha */
/* 80CD58C8  38 63 5E D8 */	addi r3, r3, cNullVec__6Z2Calc@l /* 0x80CD5ED8@l */
/* 80CD58CC  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80CD58D0  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80CD58D4  80 85 00 00 */	lwz r4, 0(r5)
/* 80CD58D8  80 05 00 04 */	lwz r0, 4(r5)
/* 80CD58DC  90 83 05 BC */	stw r4, 0x5bc(r3)
/* 80CD58E0  90 03 05 C0 */	stw r0, 0x5c0(r3)
/* 80CD58E4  80 05 00 08 */	lwz r0, 8(r5)
/* 80CD58E8  90 03 05 C4 */	stw r0, 0x5c4(r3)
/* 80CD58EC  38 A3 05 BC */	addi r5, r3, 0x5bc
/* 80CD58F0  80 83 05 5C */	lwz r4, 0x55c(r3)
/* 80CD58F4  80 03 05 60 */	lwz r0, 0x560(r3)
/* 80CD58F8  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CD58FC  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CD5900  80 03 05 64 */	lwz r0, 0x564(r3)
/* 80CD5904  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CD5908  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80CD590C  80 03 05 6C */	lwz r0, 0x56c(r3)
/* 80CD5910  90 85 00 18 */	stw r4, 0x18(r5)
/* 80CD5914  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80CD5918  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80CD591C  90 05 00 20 */	stw r0, 0x20(r5)
/* 80CD5920  80 83 05 74 */	lwz r4, 0x574(r3)
/* 80CD5924  80 03 05 78 */	lwz r0, 0x578(r3)
/* 80CD5928  90 85 00 24 */	stw r4, 0x24(r5)
/* 80CD592C  90 05 00 28 */	stw r0, 0x28(r5)
/* 80CD5930  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 80CD5934  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80CD5938  80 83 05 80 */	lwz r4, 0x580(r3)
/* 80CD593C  80 03 05 84 */	lwz r0, 0x584(r3)
/* 80CD5940  90 85 00 30 */	stw r4, 0x30(r5)
/* 80CD5944  90 05 00 34 */	stw r0, 0x34(r5)
/* 80CD5948  80 03 05 88 */	lwz r0, 0x588(r3)
/* 80CD594C  90 05 00 38 */	stw r0, 0x38(r5)
/* 80CD5950  80 83 05 8C */	lwz r4, 0x58c(r3)
/* 80CD5954  80 03 05 90 */	lwz r0, 0x590(r3)
/* 80CD5958  90 85 00 3C */	stw r4, 0x3c(r5)
/* 80CD595C  90 05 00 40 */	stw r0, 0x40(r5)
/* 80CD5960  80 03 05 94 */	lwz r0, 0x594(r3)
/* 80CD5964  90 05 00 44 */	stw r0, 0x44(r5)
/* 80CD5968  80 83 05 98 */	lwz r4, 0x598(r3)
/* 80CD596C  80 03 05 9C */	lwz r0, 0x59c(r3)
/* 80CD5970  90 85 00 48 */	stw r4, 0x48(r5)
/* 80CD5974  90 05 00 4C */	stw r0, 0x4c(r5)
/* 80CD5978  80 03 05 A0 */	lwz r0, 0x5a0(r3)
/* 80CD597C  90 05 00 50 */	stw r0, 0x50(r5)
/* 80CD5980  80 83 05 A4 */	lwz r4, 0x5a4(r3)
/* 80CD5984  80 03 05 A8 */	lwz r0, 0x5a8(r3)
/* 80CD5988  90 85 00 54 */	stw r4, 0x54(r5)
/* 80CD598C  90 05 00 58 */	stw r0, 0x58(r5)
/* 80CD5990  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 80CD5994  90 05 00 5C */	stw r0, 0x5c(r5)
/* 80CD5998  80 83 05 B0 */	lwz r4, 0x5b0(r3)
/* 80CD599C  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 80CD59A0  90 85 00 60 */	stw r4, 0x60(r5)
/* 80CD59A4  90 05 00 64 */	stw r0, 0x64(r5)
/* 80CD59A8  80 03 05 B8 */	lwz r0, 0x5b8(r3)
/* 80CD59AC  90 05 00 68 */	stw r0, 0x68(r5)
/* 80CD59B0  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 80CD59B4  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 80CD59B8  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80CD59BC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80CD59C0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CD59C4  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 80CD59C8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CD59CC  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD59D0  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD59D4  38 BE 00 40 */	addi r5, r30, 0x40
/* 80CD59D8  4B FF 89 01 */	bl __register_global_object
/* 80CD59DC  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 80CD59E0  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 80CD59E4  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80CD59E8  38 7E 00 64 */	addi r3, r30, 0x64
/* 80CD59EC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CD59F0  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 80CD59F4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CD59F8  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD59FC  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD5A00  38 BE 00 58 */	addi r5, r30, 0x58
/* 80CD5A04  4B FF 88 D5 */	bl __register_global_object
/* 80CD5A08  3C 60 80 CD */	lis r3, __vt__21daObj_Sekizoa_Param_c@ha /* 0x80CD68CC@ha */
/* 80CD5A0C  38 03 68 CC */	addi r0, r3, __vt__21daObj_Sekizoa_Param_c@l /* 0x80CD68CC@l */
/* 80CD5A10  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 80CD5A14  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80CD5A18  3C 80 80 CD */	lis r4, __dt__21daObj_Sekizoa_Param_cFv@ha /* 0x80CD5C30@ha */
/* 80CD5A1C  38 84 5C 30 */	addi r4, r4, __dt__21daObj_Sekizoa_Param_cFv@l /* 0x80CD5C30@l */
/* 80CD5A20  38 BE 00 70 */	addi r5, r30, 0x70
/* 80CD5A24  4B FF 88 B5 */	bl __register_global_object
/* 80CD5A28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD5A2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD5A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD5A34  7C 08 03 A6 */	mtlr r0
/* 80CD5A38  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD5A3C  4E 80 00 20 */	blr 
