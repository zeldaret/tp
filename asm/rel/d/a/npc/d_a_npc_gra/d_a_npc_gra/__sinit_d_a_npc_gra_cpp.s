lbl_809C9B7C:
/* 809C9B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C9B80  7C 08 02 A6 */	mflr r0
/* 809C9B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9B88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C9B8C  3C 60 80 9D */	lis r3, cNullVec__6Z2Calc@ha /* 0x809CA614@ha */
/* 809C9B90  3B E3 A6 14 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x809CA614@l */
/* 809C9B94  3C 60 80 9D */	lis r3, __vt__17daNpc_grA_Param_c@ha /* 0x809CB2E4@ha */
/* 809C9B98  38 03 B2 E4 */	addi r0, r3, __vt__17daNpc_grA_Param_c@l /* 0x809CB2E4@l */
/* 809C9B9C  3C 60 80 9D */	lis r3, l_HIO@ha /* 0x809CB344@ha */
/* 809C9BA0  94 03 B3 44 */	stwu r0, l_HIO@l(r3)  /* 0x809CB344@l */
/* 809C9BA4  3C 80 80 9D */	lis r4, __dt__17daNpc_grA_Param_cFv@ha /* 0x809C9D2C@ha */
/* 809C9BA8  38 84 9D 2C */	addi r4, r4, __dt__17daNpc_grA_Param_cFv@l /* 0x809C9D2C@l */
/* 809C9BAC  3C A0 80 9D */	lis r5, lit_4083@ha /* 0x809CB338@ha */
/* 809C9BB0  38 A5 B3 38 */	addi r5, r5, lit_4083@l /* 0x809CB338@l */
/* 809C9BB4  4B FF 4D 25 */	bl __register_global_object
/* 809C9BB8  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809C9BBC  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809C9BC0  80 64 00 00 */	lwz r3, 0(r4)
/* 809C9BC4  80 04 00 04 */	lwz r0, 4(r4)
/* 809C9BC8  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 809C9BCC  90 1F 05 C4 */	stw r0, 0x5c4(r31)
/* 809C9BD0  80 04 00 08 */	lwz r0, 8(r4)
/* 809C9BD4  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 809C9BD8  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 809C9BDC  80 9F 05 3C */	lwz r4, 0x53c(r31)
/* 809C9BE0  80 1F 05 40 */	lwz r0, 0x540(r31)
/* 809C9BE4  90 83 00 0C */	stw r4, 0xc(r3)
/* 809C9BE8  90 03 00 10 */	stw r0, 0x10(r3)
/* 809C9BEC  80 1F 05 44 */	lwz r0, 0x544(r31)
/* 809C9BF0  90 03 00 14 */	stw r0, 0x14(r3)
/* 809C9BF4  80 9F 05 48 */	lwz r4, 0x548(r31)
/* 809C9BF8  80 1F 05 4C */	lwz r0, 0x54c(r31)
/* 809C9BFC  90 83 00 18 */	stw r4, 0x18(r3)
/* 809C9C00  90 03 00 1C */	stw r0, 0x1c(r3)
/* 809C9C04  80 1F 05 50 */	lwz r0, 0x550(r31)
/* 809C9C08  90 03 00 20 */	stw r0, 0x20(r3)
/* 809C9C0C  80 9F 05 54 */	lwz r4, 0x554(r31)
/* 809C9C10  80 1F 05 58 */	lwz r0, 0x558(r31)
/* 809C9C14  90 83 00 24 */	stw r4, 0x24(r3)
/* 809C9C18  90 03 00 28 */	stw r0, 0x28(r3)
/* 809C9C1C  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 809C9C20  90 03 00 2C */	stw r0, 0x2c(r3)
/* 809C9C24  80 9F 05 60 */	lwz r4, 0x560(r31)
/* 809C9C28  80 1F 05 64 */	lwz r0, 0x564(r31)
/* 809C9C2C  90 83 00 30 */	stw r4, 0x30(r3)
/* 809C9C30  90 03 00 34 */	stw r0, 0x34(r3)
/* 809C9C34  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 809C9C38  90 03 00 38 */	stw r0, 0x38(r3)
/* 809C9C3C  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 809C9C40  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 809C9C44  90 83 00 3C */	stw r4, 0x3c(r3)
/* 809C9C48  90 03 00 40 */	stw r0, 0x40(r3)
/* 809C9C4C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 809C9C50  90 03 00 44 */	stw r0, 0x44(r3)
/* 809C9C54  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 809C9C58  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 809C9C5C  90 83 00 48 */	stw r4, 0x48(r3)
/* 809C9C60  90 03 00 4C */	stw r0, 0x4c(r3)
/* 809C9C64  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 809C9C68  90 03 00 50 */	stw r0, 0x50(r3)
/* 809C9C6C  80 9F 05 84 */	lwz r4, 0x584(r31)
/* 809C9C70  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 809C9C74  90 83 00 54 */	stw r4, 0x54(r3)
/* 809C9C78  90 03 00 58 */	stw r0, 0x58(r3)
/* 809C9C7C  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 809C9C80  90 03 00 5C */	stw r0, 0x5c(r3)
/* 809C9C84  80 9F 05 90 */	lwz r4, 0x590(r31)
/* 809C9C88  80 1F 05 94 */	lwz r0, 0x594(r31)
/* 809C9C8C  90 83 00 60 */	stw r4, 0x60(r3)
/* 809C9C90  90 03 00 64 */	stw r0, 0x64(r3)
/* 809C9C94  80 1F 05 98 */	lwz r0, 0x598(r31)
/* 809C9C98  90 03 00 68 */	stw r0, 0x68(r3)
/* 809C9C9C  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 809C9CA0  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 809C9CA4  90 83 00 6C */	stw r4, 0x6c(r3)
/* 809C9CA8  90 03 00 70 */	stw r0, 0x70(r3)
/* 809C9CAC  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 809C9CB0  90 03 00 74 */	stw r0, 0x74(r3)
/* 809C9CB4  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 809C9CB8  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 809C9CBC  90 83 00 78 */	stw r4, 0x78(r3)
/* 809C9CC0  90 03 00 7C */	stw r0, 0x7c(r3)
/* 809C9CC4  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 809C9CC8  90 03 00 80 */	stw r0, 0x80(r3)
/* 809C9CCC  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 809C9CD0  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 809C9CD4  90 83 00 84 */	stw r4, 0x84(r3)
/* 809C9CD8  90 03 00 88 */	stw r0, 0x88(r3)
/* 809C9CDC  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 809C9CE0  90 03 00 8C */	stw r0, 0x8c(r3)
/* 809C9CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C9CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C9CEC  7C 08 03 A6 */	mtlr r0
/* 809C9CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9CF4  4E 80 00 20 */	blr 
