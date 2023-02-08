lbl_805649B0:
/* 805649B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805649B4  7C 08 02 A6 */	mflr r0
/* 805649B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805649BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805649C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805649C4  41 82 00 1C */	beq lbl_805649E0
/* 805649C8  3C A0 80 56 */	lis r5, __vt__18daNpc_Maro_Param_c@ha /* 0x80565D74@ha */
/* 805649CC  38 05 5D 74 */	addi r0, r5, __vt__18daNpc_Maro_Param_c@l /* 0x80565D74@l */
/* 805649D0  90 1F 00 00 */	stw r0, 0(r31)
/* 805649D4  7C 80 07 35 */	extsh. r0, r4
/* 805649D8  40 81 00 08 */	ble lbl_805649E0
/* 805649DC  4B D6 A3 61 */	bl __dl__FPv
lbl_805649E0:
/* 805649E0  7F E3 FB 78 */	mr r3, r31
/* 805649E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805649E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805649EC  7C 08 03 A6 */	mtlr r0
/* 805649F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805649F4  4E 80 00 20 */	blr 
