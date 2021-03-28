lbl_809C98F8:
/* 809C98F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C98FC  7C 08 02 A6 */	mflr r0
/* 809C9900  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C9908  93 C1 00 08 */	stw r30, 8(r1)
/* 809C990C  7C 7E 1B 79 */	or. r30, r3, r3
/* 809C9910  7C 9F 23 78 */	mr r31, r4
/* 809C9914  41 82 00 38 */	beq lbl_809C994C
/* 809C9918  3C 60 80 9D */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809C991C  38 03 B2 90 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809C9920  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809C9924  38 7E 00 14 */	addi r3, r30, 0x14
/* 809C9928  38 80 FF FF */	li r4, -1
/* 809C992C  4B 8A 55 EC */	b __dt__8cM3dGCirFv
/* 809C9930  7F C3 F3 78 */	mr r3, r30
/* 809C9934  38 80 00 00 */	li r4, 0
/* 809C9938  4B 89 E7 78 */	b __dt__13cBgS_PolyInfoFv
/* 809C993C  7F E0 07 35 */	extsh. r0, r31
/* 809C9940  40 81 00 0C */	ble lbl_809C994C
/* 809C9944  7F C3 F3 78 */	mr r3, r30
/* 809C9948  4B 90 53 F4 */	b __dl__FPv
lbl_809C994C:
/* 809C994C  7F C3 F3 78 */	mr r3, r30
/* 809C9950  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C9954  83 C1 00 08 */	lwz r30, 8(r1)
/* 809C9958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C995C  7C 08 03 A6 */	mtlr r0
/* 809C9960  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9964  4E 80 00 20 */	blr 
