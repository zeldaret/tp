lbl_80AB8C64:
/* 80AB8C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB8C68  7C 08 02 A6 */	mflr r0
/* 80AB8C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB8C70  3C 60 80 AC */	lis r3, mCutList__12daNpc_Raca_c@ha
/* 80AB8C74  38 A3 93 14 */	addi r5, r3, mCutList__12daNpc_Raca_c@l
/* 80AB8C78  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80AB8C7C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80AB8C80  80 64 00 00 */	lwz r3, 0(r4)
/* 80AB8C84  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB8C88  90 65 00 00 */	stw r3, 0(r5)
/* 80AB8C8C  90 05 00 04 */	stw r0, 4(r5)
/* 80AB8C90  80 04 00 08 */	lwz r0, 8(r4)
/* 80AB8C94  90 05 00 08 */	stw r0, 8(r5)
/* 80AB8C98  3C 60 80 AC */	lis r3, __vt__18daNpc_Raca_Param_c@ha
/* 80AB8C9C  38 03 95 18 */	addi r0, r3, __vt__18daNpc_Raca_Param_c@l
/* 80AB8CA0  3C 60 80 AC */	lis r3, l_HIO@ha
/* 80AB8CA4  94 03 95 3C */	stwu r0, l_HIO@l(r3)
/* 80AB8CA8  3C 80 80 AC */	lis r4, __dt__18daNpc_Raca_Param_cFv@ha
/* 80AB8CAC  38 84 8D FC */	addi r4, r4, __dt__18daNpc_Raca_Param_cFv@l
/* 80AB8CB0  3C A0 80 AC */	lis r5, lit_3818@ha
/* 80AB8CB4  38 A5 95 30 */	addi r5, r5, lit_3818@l
/* 80AB8CB8  4B FF CF 81 */	bl __register_global_object
/* 80AB8CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB8CC0  7C 08 03 A6 */	mtlr r0
/* 80AB8CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB8CC8  4E 80 00 20 */	blr 
