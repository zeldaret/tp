lbl_80B6BC58:
/* 80B6BC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6BC5C  7C 08 02 A6 */	mflr r0
/* 80B6BC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6BC64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6BC68  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6BC6C  41 82 00 1C */	beq lbl_80B6BC88
/* 80B6BC70  3C A0 80 B7 */	lis r5, __vt__18daNpc_zanB_Param_c@ha
/* 80B6BC74  38 05 C0 90 */	addi r0, r5, __vt__18daNpc_zanB_Param_c@l
/* 80B6BC78  90 1F 00 00 */	stw r0, 0(r31)
/* 80B6BC7C  7C 80 07 35 */	extsh. r0, r4
/* 80B6BC80  40 81 00 08 */	ble lbl_80B6BC88
/* 80B6BC84  4B 76 30 B8 */	b __dl__FPv
lbl_80B6BC88:
/* 80B6BC88  7F E3 FB 78 */	mr r3, r31
/* 80B6BC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6BC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6BC94  7C 08 03 A6 */	mtlr r0
/* 80B6BC98  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6BC9C  4E 80 00 20 */	blr 
