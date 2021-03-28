lbl_80A68E38:
/* 80A68E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A68E3C  7C 08 02 A6 */	mflr r0
/* 80A68E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A68E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A68E48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A68E4C  41 82 00 1C */	beq lbl_80A68E68
/* 80A68E50  3C A0 80 A7 */	lis r5, __vt__17daNpc_Len_Param_c@ha
/* 80A68E54  38 05 9A 40 */	addi r0, r5, __vt__17daNpc_Len_Param_c@l
/* 80A68E58  90 1F 00 00 */	stw r0, 0(r31)
/* 80A68E5C  7C 80 07 35 */	extsh. r0, r4
/* 80A68E60  40 81 00 08 */	ble lbl_80A68E68
/* 80A68E64  4B 86 5E D8 */	b __dl__FPv
lbl_80A68E68:
/* 80A68E68  7F E3 FB 78 */	mr r3, r31
/* 80A68E6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A68E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A68E74  7C 08 03 A6 */	mtlr r0
/* 80A68E78  38 21 00 10 */	addi r1, r1, 0x10
/* 80A68E7C  4E 80 00 20 */	blr 
