lbl_80140E40:
/* 80140E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80140E44  7C 08 02 A6 */	mflr r0
/* 80140E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80140E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80140E50  93 C1 00 08 */	stw r30, 8(r1)
/* 80140E54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80140E58  7C 9F 23 78 */	mr r31, r4
/* 80140E5C  41 82 00 40 */	beq lbl_80140E9C
/* 80140E60  3C 80 80 3B */	lis r4, __vt__16dBgS_LinkRoofChk@ha /* 0x803B2EC8@ha */
/* 80140E64  38 84 2E C8 */	addi r4, r4, __vt__16dBgS_LinkRoofChk@l /* 0x803B2EC8@l */
/* 80140E68  90 9E 00 0C */	stw r4, 0xc(r30)
/* 80140E6C  38 04 00 0C */	addi r0, r4, 0xc
/* 80140E70  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80140E74  38 04 00 18 */	addi r0, r4, 0x18
/* 80140E78  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80140E7C  38 04 00 24 */	addi r0, r4, 0x24
/* 80140E80  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80140E84  38 80 00 00 */	li r4, 0
/* 80140E88  4B F3 82 09 */	bl __dt__12dBgS_RoofChkFv
/* 80140E8C  7F E0 07 35 */	extsh. r0, r31
/* 80140E90  40 81 00 0C */	ble lbl_80140E9C
/* 80140E94  7F C3 F3 78 */	mr r3, r30
/* 80140E98  48 18 DE A5 */	bl __dl__FPv
lbl_80140E9C:
/* 80140E9C  7F C3 F3 78 */	mr r3, r30
/* 80140EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80140EA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80140EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80140EAC  7C 08 03 A6 */	mtlr r0
/* 80140EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80140EB4  4E 80 00 20 */	blr 
