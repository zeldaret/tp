lbl_80B52020:
/* 80B52020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B52024  7C 08 02 A6 */	mflr r0
/* 80B52028  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5202C  3C 60 80 B5 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B524DC@ha */
/* 80B52030  38 A3 24 DC */	addi r5, r3, cNullVec__6Z2Calc@l /* 0x80B524DC@l */
/* 80B52034  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B52038  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B5203C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B52040  80 04 00 04 */	lwz r0, 4(r4)
/* 80B52044  90 65 0B DC */	stw r3, 0xbdc(r5)
/* 80B52048  90 05 0B E0 */	stw r0, 0xbe0(r5)
/* 80B5204C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B52050  90 05 0B E4 */	stw r0, 0xbe4(r5)
/* 80B52054  38 85 0B DC */	addi r4, r5, 0xbdc
/* 80B52058  80 65 0B A0 */	lwz r3, 0xba0(r5)
/* 80B5205C  80 05 0B A4 */	lwz r0, 0xba4(r5)
/* 80B52060  90 64 00 0C */	stw r3, 0xc(r4)
/* 80B52064  90 04 00 10 */	stw r0, 0x10(r4)
/* 80B52068  80 05 0B A8 */	lwz r0, 0xba8(r5)
/* 80B5206C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80B52070  80 65 0B AC */	lwz r3, 0xbac(r5)
/* 80B52074  80 05 0B B0 */	lwz r0, 0xbb0(r5)
/* 80B52078  90 64 00 18 */	stw r3, 0x18(r4)
/* 80B5207C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80B52080  80 05 0B B4 */	lwz r0, 0xbb4(r5)
/* 80B52084  90 04 00 20 */	stw r0, 0x20(r4)
/* 80B52088  80 65 0B B8 */	lwz r3, 0xbb8(r5)
/* 80B5208C  80 05 0B BC */	lwz r0, 0xbbc(r5)
/* 80B52090  90 64 00 24 */	stw r3, 0x24(r4)
/* 80B52094  90 04 00 28 */	stw r0, 0x28(r4)
/* 80B52098  80 05 0B C0 */	lwz r0, 0xbc0(r5)
/* 80B5209C  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80B520A0  80 65 0B C4 */	lwz r3, 0xbc4(r5)
/* 80B520A4  80 05 0B C8 */	lwz r0, 0xbc8(r5)
/* 80B520A8  90 64 00 30 */	stw r3, 0x30(r4)
/* 80B520AC  90 04 00 34 */	stw r0, 0x34(r4)
/* 80B520B0  80 05 0B CC */	lwz r0, 0xbcc(r5)
/* 80B520B4  90 04 00 38 */	stw r0, 0x38(r4)
/* 80B520B8  80 65 0B D0 */	lwz r3, 0xbd0(r5)
/* 80B520BC  80 05 0B D4 */	lwz r0, 0xbd4(r5)
/* 80B520C0  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80B520C4  90 04 00 40 */	stw r0, 0x40(r4)
/* 80B520C8  80 05 0B D8 */	lwz r0, 0xbd8(r5)
/* 80B520CC  90 04 00 44 */	stw r0, 0x44(r4)
/* 80B520D0  3C 60 80 B5 */	lis r3, __vt__19daNpc_Yelia_Param_c@ha /* 0x80B533DC@ha */
/* 80B520D4  38 03 33 DC */	addi r0, r3, __vt__19daNpc_Yelia_Param_c@l /* 0x80B533DC@l */
/* 80B520D8  3C 60 80 B5 */	lis r3, l_HIO@ha /* 0x80B533FC@ha */
/* 80B520DC  94 03 33 FC */	stwu r0, l_HIO@l(r3)  /* 0x80B533FC@l */
/* 80B520E0  3C 80 80 B5 */	lis r4, __dt__19daNpc_Yelia_Param_cFv@ha /* 0x80B5222C@ha */
/* 80B520E4  38 84 22 2C */	addi r4, r4, __dt__19daNpc_Yelia_Param_cFv@l /* 0x80B5222C@l */
/* 80B520E8  3C A0 80 B5 */	lis r5, lit_3931@ha /* 0x80B533F0@ha */
/* 80B520EC  38 A5 33 F0 */	addi r5, r5, lit_3931@l /* 0x80B533F0@l */
/* 80B520F0  4B FF B1 A9 */	bl __register_global_object
/* 80B520F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B520F8  7C 08 03 A6 */	mtlr r0
/* 80B520FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B52100  4E 80 00 20 */	blr 
