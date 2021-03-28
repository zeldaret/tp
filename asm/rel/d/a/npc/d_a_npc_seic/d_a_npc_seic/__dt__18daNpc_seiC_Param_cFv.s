lbl_80AC91B0:
/* 80AC91B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC91B4  7C 08 02 A6 */	mflr r0
/* 80AC91B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC91BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC91C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC91C4  41 82 00 1C */	beq lbl_80AC91E0
/* 80AC91C8  3C A0 80 AD */	lis r5, __vt__18daNpc_seiC_Param_c@ha
/* 80AC91CC  38 05 95 6C */	addi r0, r5, __vt__18daNpc_seiC_Param_c@l
/* 80AC91D0  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC91D4  7C 80 07 35 */	extsh. r0, r4
/* 80AC91D8  40 81 00 08 */	ble lbl_80AC91E0
/* 80AC91DC  4B 80 5B 60 */	b __dl__FPv
lbl_80AC91E0:
/* 80AC91E0  7F E3 FB 78 */	mr r3, r31
/* 80AC91E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC91E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC91EC  7C 08 03 A6 */	mtlr r0
/* 80AC91F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC91F4  4E 80 00 20 */	blr 
