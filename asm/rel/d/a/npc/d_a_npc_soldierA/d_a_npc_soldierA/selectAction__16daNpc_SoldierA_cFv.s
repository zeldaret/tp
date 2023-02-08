lbl_80AF1024:
/* 80AF1024  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AF1028  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80AF102C  80 85 00 00 */	lwz r4, 0(r5)
/* 80AF1030  80 05 00 04 */	lwz r0, 4(r5)
/* 80AF1034  90 83 0D D0 */	stw r4, 0xdd0(r3)
/* 80AF1038  90 03 0D D4 */	stw r0, 0xdd4(r3)
/* 80AF103C  80 05 00 08 */	lwz r0, 8(r5)
/* 80AF1040  90 03 0D D8 */	stw r0, 0xdd8(r3)
/* 80AF1044  3C 80 80 AF */	lis r4, m__22daNpc_SoldierA_Param_c@ha /* 0x80AF26E8@ha */
/* 80AF1048  38 84 26 E8 */	addi r4, r4, m__22daNpc_SoldierA_Param_c@l /* 0x80AF26E8@l */
/* 80AF104C  88 04 00 6A */	lbz r0, 0x6a(r4)
/* 80AF1050  28 00 00 00 */	cmplwi r0, 0
/* 80AF1054  41 82 00 28 */	beq lbl_80AF107C
/* 80AF1058  3C 80 80 AF */	lis r4, lit_4961@ha /* 0x80AF298C@ha */
/* 80AF105C  38 A4 29 8C */	addi r5, r4, lit_4961@l /* 0x80AF298C@l */
/* 80AF1060  80 85 00 00 */	lwz r4, 0(r5)
/* 80AF1064  80 05 00 04 */	lwz r0, 4(r5)
/* 80AF1068  90 83 0D D0 */	stw r4, 0xdd0(r3)
/* 80AF106C  90 03 0D D4 */	stw r0, 0xdd4(r3)
/* 80AF1070  80 05 00 08 */	lwz r0, 8(r5)
/* 80AF1074  90 03 0D D8 */	stw r0, 0xdd8(r3)
/* 80AF1078  48 00 00 24 */	b lbl_80AF109C
lbl_80AF107C:
/* 80AF107C  3C 80 80 AF */	lis r4, lit_4965@ha /* 0x80AF2998@ha */
/* 80AF1080  38 A4 29 98 */	addi r5, r4, lit_4965@l /* 0x80AF2998@l */
/* 80AF1084  80 85 00 00 */	lwz r4, 0(r5)
/* 80AF1088  80 05 00 04 */	lwz r0, 4(r5)
/* 80AF108C  90 83 0D D0 */	stw r4, 0xdd0(r3)
/* 80AF1090  90 03 0D D4 */	stw r0, 0xdd4(r3)
/* 80AF1094  80 05 00 08 */	lwz r0, 8(r5)
/* 80AF1098  90 03 0D D8 */	stw r0, 0xdd8(r3)
lbl_80AF109C:
/* 80AF109C  38 60 00 01 */	li r3, 1
/* 80AF10A0  4E 80 00 20 */	blr 
