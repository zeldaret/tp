lbl_80A882F4:
/* 80A882F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A882F8  7C 08 02 A6 */	mflr r0
/* 80A882FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A88300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A88304  3C 60 80 A9 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80A886B4@ha */
/* 80A88308  3B E3 86 B4 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80A886B4@l */
/* 80A8830C  3C 60 80 A9 */	lis r3, __vt__19daNpc_myna2_Param_c@ha /* 0x80A88AE0@ha */
/* 80A88310  38 03 8A E0 */	addi r0, r3, __vt__19daNpc_myna2_Param_c@l /* 0x80A88AE0@l */
/* 80A88314  3C 60 80 A9 */	lis r3, l_HIO@ha /* 0x80A88B44@ha */
/* 80A88318  94 03 8B 44 */	stwu r0, l_HIO@l(r3)  /* 0x80A88B44@l */
/* 80A8831C  3C 80 80 A9 */	lis r4, __dt__19daNpc_myna2_Param_cFv@ha /* 0x80A883C8@ha */
/* 80A88320  38 84 83 C8 */	addi r4, r4, __dt__19daNpc_myna2_Param_cFv@l /* 0x80A883C8@l */
/* 80A88324  3C A0 80 A9 */	lis r5, lit_4032@ha /* 0x80A88B38@ha */
/* 80A88328  38 A5 8B 38 */	addi r5, r5, lit_4032@l /* 0x80A88B38@l */
/* 80A8832C  4B FF BA ED */	bl __register_global_object
/* 80A88330  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A88334  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A88338  80 64 00 00 */	lwz r3, 0(r4)
/* 80A8833C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A88340  90 7F 01 7C */	stw r3, 0x17c(r31)
/* 80A88344  90 1F 01 80 */	stw r0, 0x180(r31)
/* 80A88348  80 04 00 08 */	lwz r0, 8(r4)
/* 80A8834C  90 1F 01 84 */	stw r0, 0x184(r31)
/* 80A88350  38 9F 01 7C */	addi r4, r31, 0x17c
/* 80A88354  80 7F 01 4C */	lwz r3, 0x14c(r31)
/* 80A88358  80 1F 01 50 */	lwz r0, 0x150(r31)
/* 80A8835C  90 64 00 0C */	stw r3, 0xc(r4)
/* 80A88360  90 04 00 10 */	stw r0, 0x10(r4)
/* 80A88364  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 80A88368  90 04 00 14 */	stw r0, 0x14(r4)
/* 80A8836C  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 80A88370  80 1F 01 5C */	lwz r0, 0x15c(r31)
/* 80A88374  90 64 00 18 */	stw r3, 0x18(r4)
/* 80A88378  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80A8837C  80 1F 01 60 */	lwz r0, 0x160(r31)
/* 80A88380  90 04 00 20 */	stw r0, 0x20(r4)
/* 80A88384  80 7F 01 64 */	lwz r3, 0x164(r31)
/* 80A88388  80 1F 01 68 */	lwz r0, 0x168(r31)
/* 80A8838C  90 64 00 24 */	stw r3, 0x24(r4)
/* 80A88390  90 04 00 28 */	stw r0, 0x28(r4)
/* 80A88394  80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 80A88398  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80A8839C  80 7F 01 70 */	lwz r3, 0x170(r31)
/* 80A883A0  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80A883A4  90 64 00 30 */	stw r3, 0x30(r4)
/* 80A883A8  90 04 00 34 */	stw r0, 0x34(r4)
/* 80A883AC  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 80A883B0  90 04 00 38 */	stw r0, 0x38(r4)
/* 80A883B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A883B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A883BC  7C 08 03 A6 */	mtlr r0
/* 80A883C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A883C4  4E 80 00 20 */	blr 
