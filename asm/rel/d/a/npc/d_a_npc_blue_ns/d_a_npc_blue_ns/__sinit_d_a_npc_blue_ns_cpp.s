lbl_8096C7AC:
/* 8096C7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096C7B0  7C 08 02 A6 */	mflr r0
/* 8096C7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096C7B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096C7BC  3C 60 80 97 */	lis r3, cNullVec__6Z2Calc@ha
/* 8096C7C0  3B E3 CB A0 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 8096C7C4  3C 60 80 97 */	lis r3, __vt__19daNpcBlueNS_Param_c@ha
/* 8096C7C8  38 03 CE 74 */	addi r0, r3, __vt__19daNpcBlueNS_Param_c@l
/* 8096C7CC  3C 60 80 97 */	lis r3, l_HIO@ha
/* 8096C7D0  94 03 CE 94 */	stwu r0, l_HIO@l(r3)
/* 8096C7D4  3C 80 80 97 */	lis r4, __dt__19daNpcBlueNS_Param_cFv@ha
/* 8096C7D8  38 84 C8 B4 */	addi r4, r4, __dt__19daNpcBlueNS_Param_cFv@l
/* 8096C7DC  3C A0 80 97 */	lis r5, lit_3889@ha
/* 8096C7E0  38 A5 CE 88 */	addi r5, r5, lit_3889@l
/* 8096C7E4  4B FF C1 15 */	bl __register_global_object
/* 8096C7E8  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 8096C7EC  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 8096C7F0  80 64 00 00 */	lwz r3, 0(r4)
/* 8096C7F4  80 04 00 04 */	lwz r0, 4(r4)
/* 8096C7F8  90 7F 00 F8 */	stw r3, 0xf8(r31)
/* 8096C7FC  90 1F 00 FC */	stw r0, 0xfc(r31)
/* 8096C800  80 04 00 08 */	lwz r0, 8(r4)
/* 8096C804  90 1F 01 00 */	stw r0, 0x100(r31)
/* 8096C808  38 9F 00 F8 */	addi r4, r31, 0xf8
/* 8096C80C  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 8096C810  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 8096C814  90 64 00 0C */	stw r3, 0xc(r4)
/* 8096C818  90 04 00 10 */	stw r0, 0x10(r4)
/* 8096C81C  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 8096C820  90 04 00 14 */	stw r0, 0x14(r4)
/* 8096C824  80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 8096C828  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 8096C82C  90 64 00 18 */	stw r3, 0x18(r4)
/* 8096C830  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8096C834  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 8096C838  90 04 00 20 */	stw r0, 0x20(r4)
/* 8096C83C  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 8096C840  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 8096C844  90 64 00 24 */	stw r3, 0x24(r4)
/* 8096C848  90 04 00 28 */	stw r0, 0x28(r4)
/* 8096C84C  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 8096C850  90 04 00 2C */	stw r0, 0x2c(r4)
/* 8096C854  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 8096C858  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 8096C85C  90 64 00 30 */	stw r3, 0x30(r4)
/* 8096C860  90 04 00 34 */	stw r0, 0x34(r4)
/* 8096C864  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 8096C868  90 04 00 38 */	stw r0, 0x38(r4)
/* 8096C86C  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 8096C870  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 8096C874  90 64 00 3C */	stw r3, 0x3c(r4)
/* 8096C878  90 04 00 40 */	stw r0, 0x40(r4)
/* 8096C87C  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 8096C880  90 04 00 44 */	stw r0, 0x44(r4)
/* 8096C884  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 8096C888  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8096C88C  90 64 00 48 */	stw r3, 0x48(r4)
/* 8096C890  90 04 00 4C */	stw r0, 0x4c(r4)
/* 8096C894  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 8096C898  90 04 00 50 */	stw r0, 0x50(r4)
/* 8096C89C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096C8A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096C8A4  7C 08 03 A6 */	mtlr r0
/* 8096C8A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8096C8AC  4E 80 00 20 */	blr 
