lbl_80B9AC74:
/* 80B9AC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9AC78  7C 08 02 A6 */	mflr r0
/* 80B9AC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9AC80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9AC84  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9AC88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B9AC8C  7C 9F 23 78 */	mr r31, r4
/* 80B9AC90  41 82 00 38 */	beq lbl_80B9ACC8
/* 80B9AC94  3C 60 80 BA */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B9B800@ha */
/* 80B9AC98  38 03 B8 00 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B9B800@l */
/* 80B9AC9C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B9ACA0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B9ACA4  38 80 FF FF */	li r4, -1
/* 80B9ACA8  4B 6D 42 71 */	bl __dt__8cM3dGCirFv
/* 80B9ACAC  7F C3 F3 78 */	mr r3, r30
/* 80B9ACB0  38 80 00 00 */	li r4, 0
/* 80B9ACB4  4B 6C D3 FD */	bl __dt__13cBgS_PolyInfoFv
/* 80B9ACB8  7F E0 07 35 */	extsh. r0, r31
/* 80B9ACBC  40 81 00 0C */	ble lbl_80B9ACC8
/* 80B9ACC0  7F C3 F3 78 */	mr r3, r30
/* 80B9ACC4  4B 73 40 79 */	bl __dl__FPv
lbl_80B9ACC8:
/* 80B9ACC8  7F C3 F3 78 */	mr r3, r30
/* 80B9ACCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9ACD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9ACD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9ACD8  7C 08 03 A6 */	mtlr r0
/* 80B9ACDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9ACE0  4E 80 00 20 */	blr 
