lbl_80AB8DFC:
/* 80AB8DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB8E00  7C 08 02 A6 */	mflr r0
/* 80AB8E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB8E08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB8E0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB8E10  41 82 00 1C */	beq lbl_80AB8E2C
/* 80AB8E14  3C A0 80 AC */	lis r5, __vt__18daNpc_Raca_Param_c@ha
/* 80AB8E18  38 05 95 18 */	addi r0, r5, __vt__18daNpc_Raca_Param_c@l
/* 80AB8E1C  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB8E20  7C 80 07 35 */	extsh. r0, r4
/* 80AB8E24  40 81 00 08 */	ble lbl_80AB8E2C
/* 80AB8E28  4B 81 5F 14 */	b __dl__FPv
lbl_80AB8E2C:
/* 80AB8E2C  7F E3 FB 78 */	mr r3, r31
/* 80AB8E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB8E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB8E38  7C 08 03 A6 */	mtlr r0
/* 80AB8E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB8E40  4E 80 00 20 */	blr 
