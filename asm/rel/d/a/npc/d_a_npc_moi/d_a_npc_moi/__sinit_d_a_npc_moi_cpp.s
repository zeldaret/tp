lbl_80A7ABBC:
/* 80A7ABBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7ABC0  7C 08 02 A6 */	mflr r0
/* 80A7ABC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7ABC8  3C 60 80 A8 */	lis r3, cNullVec__6Z2Calc@ha
/* 80A7ABCC  38 A3 B1 5C */	addi r5, r3, cNullVec__6Z2Calc@l
/* 80A7ABD0  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80A7ABD4  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80A7ABD8  80 64 00 00 */	lwz r3, 0(r4)
/* 80A7ABDC  80 04 00 04 */	lwz r0, 4(r4)
/* 80A7ABE0  90 65 0B 84 */	stw r3, 0xb84(r5)
/* 80A7ABE4  90 05 0B 88 */	stw r0, 0xb88(r5)
/* 80A7ABE8  80 04 00 08 */	lwz r0, 8(r4)
/* 80A7ABEC  90 05 0B 8C */	stw r0, 0xb8c(r5)
/* 80A7ABF0  38 85 0B 84 */	addi r4, r5, 0xb84
/* 80A7ABF4  80 65 0B 54 */	lwz r3, 0xb54(r5)
/* 80A7ABF8  80 05 0B 58 */	lwz r0, 0xb58(r5)
/* 80A7ABFC  90 64 00 0C */	stw r3, 0xc(r4)
/* 80A7AC00  90 04 00 10 */	stw r0, 0x10(r4)
/* 80A7AC04  80 05 0B 5C */	lwz r0, 0xb5c(r5)
/* 80A7AC08  90 04 00 14 */	stw r0, 0x14(r4)
/* 80A7AC0C  80 65 0B 60 */	lwz r3, 0xb60(r5)
/* 80A7AC10  80 05 0B 64 */	lwz r0, 0xb64(r5)
/* 80A7AC14  90 64 00 18 */	stw r3, 0x18(r4)
/* 80A7AC18  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80A7AC1C  80 05 0B 68 */	lwz r0, 0xb68(r5)
/* 80A7AC20  90 04 00 20 */	stw r0, 0x20(r4)
/* 80A7AC24  80 65 0B 6C */	lwz r3, 0xb6c(r5)
/* 80A7AC28  80 05 0B 70 */	lwz r0, 0xb70(r5)
/* 80A7AC2C  90 64 00 24 */	stw r3, 0x24(r4)
/* 80A7AC30  90 04 00 28 */	stw r0, 0x28(r4)
/* 80A7AC34  80 05 0B 74 */	lwz r0, 0xb74(r5)
/* 80A7AC38  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80A7AC3C  80 65 0B 78 */	lwz r3, 0xb78(r5)
/* 80A7AC40  80 05 0B 7C */	lwz r0, 0xb7c(r5)
/* 80A7AC44  90 64 00 30 */	stw r3, 0x30(r4)
/* 80A7AC48  90 04 00 34 */	stw r0, 0x34(r4)
/* 80A7AC4C  80 05 0B 80 */	lwz r0, 0xb80(r5)
/* 80A7AC50  90 04 00 38 */	stw r0, 0x38(r4)
/* 80A7AC54  3C 60 80 A8 */	lis r3, __vt__17daNpc_Moi_Param_c@ha
/* 80A7AC58  38 03 BF 94 */	addi r0, r3, __vt__17daNpc_Moi_Param_c@l
/* 80A7AC5C  3C 60 80 A8 */	lis r3, l_HIO@ha
/* 80A7AC60  94 03 BF F4 */	stwu r0, l_HIO@l(r3)
/* 80A7AC64  3C 80 80 A8 */	lis r4, __dt__17daNpc_Moi_Param_cFv@ha
/* 80A7AC68  38 84 AE 84 */	addi r4, r4, __dt__17daNpc_Moi_Param_cFv@l
/* 80A7AC6C  3C A0 80 A8 */	lis r5, lit_3839@ha
/* 80A7AC70  38 A5 BF E8 */	addi r5, r5, lit_3839@l
/* 80A7AC74  4B FF 92 65 */	bl __register_global_object
/* 80A7AC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7AC7C  7C 08 03 A6 */	mtlr r0
/* 80A7AC80  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7AC84  4E 80 00 20 */	blr 
