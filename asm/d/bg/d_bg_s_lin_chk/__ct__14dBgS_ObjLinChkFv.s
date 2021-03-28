lbl_80077F5C:
/* 80077F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077F60  7C 08 02 A6 */	mflr r0
/* 80077F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077F68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077F6C  7C 7F 1B 78 */	mr r31, r3
/* 80077F70  4B FF FC F9 */	bl __ct__11dBgS_LinChkFv
/* 80077F74  3C 60 80 3B */	lis r3, __vt__14dBgS_ObjLinChk@ha
/* 80077F78  38 63 B8 E0 */	addi r3, r3, __vt__14dBgS_ObjLinChk@l
/* 80077F7C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80077F80  38 03 00 0C */	addi r0, r3, 0xc
/* 80077F84  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80077F88  38 03 00 18 */	addi r0, r3, 0x18
/* 80077F8C  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80077F90  38 03 00 24 */	addi r0, r3, 0x24
/* 80077F94  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80077F98  38 7F 00 58 */	addi r3, r31, 0x58
/* 80077F9C  48 00 0E CD */	bl SetObj__16dBgS_PolyPassChkFv
/* 80077FA0  7F E3 FB 78 */	mr r3, r31
/* 80077FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077FAC  7C 08 03 A6 */	mtlr r0
/* 80077FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80077FB4  4E 80 00 20 */	blr 
