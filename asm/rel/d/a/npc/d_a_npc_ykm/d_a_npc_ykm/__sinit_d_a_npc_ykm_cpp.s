lbl_80B5D410:
/* 80B5D410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5D414  7C 08 02 A6 */	mflr r0
/* 80B5D418  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5D41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5D420  3C 60 80 B6 */	lis r3, lit_1109@ha /* 0x80B5ED28@ha */
/* 80B5D424  3B E3 ED 28 */	addi r31, r3, lit_1109@l /* 0x80B5ED28@l */
/* 80B5D428  3C 60 80 B6 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B5DAE8@ha */
/* 80B5D42C  38 83 DA E8 */	addi r4, r3, cNullVec__6Z2Calc@l /* 0x80B5DAE8@l */
/* 80B5D430  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B5D434  38 A3 21 80 */	addi r5, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B5D438  80 65 00 00 */	lwz r3, 0(r5)
/* 80B5D43C  80 05 00 04 */	lwz r0, 4(r5)
/* 80B5D440  90 64 0C C4 */	stw r3, 0xcc4(r4)
/* 80B5D444  90 04 0C C8 */	stw r0, 0xcc8(r4)
/* 80B5D448  80 05 00 08 */	lwz r0, 8(r5)
/* 80B5D44C  90 04 0C CC */	stw r0, 0xccc(r4)
/* 80B5D450  38 64 0C C4 */	addi r3, r4, 0xcc4
/* 80B5D454  80 A4 0C 58 */	lwz r5, 0xc58(r4)
/* 80B5D458  80 04 0C 5C */	lwz r0, 0xc5c(r4)
/* 80B5D45C  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80B5D460  90 03 00 10 */	stw r0, 0x10(r3)
/* 80B5D464  80 04 0C 60 */	lwz r0, 0xc60(r4)
/* 80B5D468  90 03 00 14 */	stw r0, 0x14(r3)
/* 80B5D46C  80 A4 0C 64 */	lwz r5, 0xc64(r4)
/* 80B5D470  80 04 0C 68 */	lwz r0, 0xc68(r4)
/* 80B5D474  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80B5D478  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80B5D47C  80 04 0C 6C */	lwz r0, 0xc6c(r4)
/* 80B5D480  90 03 00 20 */	stw r0, 0x20(r3)
/* 80B5D484  80 A4 0C 70 */	lwz r5, 0xc70(r4)
/* 80B5D488  80 04 0C 74 */	lwz r0, 0xc74(r4)
/* 80B5D48C  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80B5D490  90 03 00 28 */	stw r0, 0x28(r3)
/* 80B5D494  80 04 0C 78 */	lwz r0, 0xc78(r4)
/* 80B5D498  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80B5D49C  80 A4 0C 7C */	lwz r5, 0xc7c(r4)
/* 80B5D4A0  80 04 0C 80 */	lwz r0, 0xc80(r4)
/* 80B5D4A4  90 A3 00 30 */	stw r5, 0x30(r3)
/* 80B5D4A8  90 03 00 34 */	stw r0, 0x34(r3)
/* 80B5D4AC  80 04 0C 84 */	lwz r0, 0xc84(r4)
/* 80B5D4B0  90 03 00 38 */	stw r0, 0x38(r3)
/* 80B5D4B4  80 A4 0C 88 */	lwz r5, 0xc88(r4)
/* 80B5D4B8  80 04 0C 8C */	lwz r0, 0xc8c(r4)
/* 80B5D4BC  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 80B5D4C0  90 03 00 40 */	stw r0, 0x40(r3)
/* 80B5D4C4  80 04 0C 90 */	lwz r0, 0xc90(r4)
/* 80B5D4C8  90 03 00 44 */	stw r0, 0x44(r3)
/* 80B5D4CC  80 A4 0C 94 */	lwz r5, 0xc94(r4)
/* 80B5D4D0  80 04 0C 98 */	lwz r0, 0xc98(r4)
/* 80B5D4D4  90 A3 00 48 */	stw r5, 0x48(r3)
/* 80B5D4D8  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80B5D4DC  80 04 0C 9C */	lwz r0, 0xc9c(r4)
/* 80B5D4E0  90 03 00 50 */	stw r0, 0x50(r3)
/* 80B5D4E4  80 A4 0C A0 */	lwz r5, 0xca0(r4)
/* 80B5D4E8  80 04 0C A4 */	lwz r0, 0xca4(r4)
/* 80B5D4EC  90 A3 00 54 */	stw r5, 0x54(r3)
/* 80B5D4F0  90 03 00 58 */	stw r0, 0x58(r3)
/* 80B5D4F4  80 04 0C A8 */	lwz r0, 0xca8(r4)
/* 80B5D4F8  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80B5D4FC  80 A4 0C AC */	lwz r5, 0xcac(r4)
/* 80B5D500  80 04 0C B0 */	lwz r0, 0xcb0(r4)
/* 80B5D504  90 A3 00 60 */	stw r5, 0x60(r3)
/* 80B5D508  90 03 00 64 */	stw r0, 0x64(r3)
/* 80B5D50C  80 04 0C B4 */	lwz r0, 0xcb4(r4)
/* 80B5D510  90 03 00 68 */	stw r0, 0x68(r3)
/* 80B5D514  80 A4 0C B8 */	lwz r5, 0xcb8(r4)
/* 80B5D518  80 04 0C BC */	lwz r0, 0xcbc(r4)
/* 80B5D51C  90 A3 00 6C */	stw r5, 0x6c(r3)
/* 80B5D520  90 03 00 70 */	stw r0, 0x70(r3)
/* 80B5D524  80 04 0C C0 */	lwz r0, 0xcc0(r4)
/* 80B5D528  90 03 00 74 */	stw r0, 0x74(r3)
/* 80B5D52C  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80B5D530  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5D534  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5D538  38 BF 00 40 */	addi r5, r31, 0x40
/* 80B5D53C  4B FF 5F 3D */	bl __register_global_object
/* 80B5D540  38 7F 00 64 */	addi r3, r31, 0x64
/* 80B5D544  3C 80 80 B6 */	lis r4, __dt__5csXyzFv@ha /* 0x80B5C588@ha */
/* 80B5D548  38 84 C5 88 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B5C588@l */
/* 80B5D54C  38 BF 00 58 */	addi r5, r31, 0x58
/* 80B5D550  4B FF 5F 29 */	bl __register_global_object
/* 80B5D554  3C 60 80 B6 */	lis r3, __vt__17daNpc_ykM_Param_c@ha /* 0x80B5ED14@ha */
/* 80B5D558  38 03 ED 14 */	addi r0, r3, __vt__17daNpc_ykM_Param_c@l /* 0x80B5ED14@l */
/* 80B5D55C  90 1F 00 78 */	stw r0, 0x78(r31)
/* 80B5D560  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B5D564  3C 80 80 B6 */	lis r4, __dt__17daNpc_ykM_Param_cFv@ha /* 0x80B5D6C8@ha */
/* 80B5D568  38 84 D6 C8 */	addi r4, r4, __dt__17daNpc_ykM_Param_cFv@l /* 0x80B5D6C8@l */
/* 80B5D56C  38 BF 00 6C */	addi r5, r31, 0x6c
/* 80B5D570  4B FF 5F 09 */	bl __register_global_object
/* 80B5D574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5D578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5D57C  7C 08 03 A6 */	mtlr r0
/* 80B5D580  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5D584  4E 80 00 20 */	blr 
