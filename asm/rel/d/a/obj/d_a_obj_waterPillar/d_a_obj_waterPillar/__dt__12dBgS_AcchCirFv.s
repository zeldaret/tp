lbl_80D2E308:
/* 80D2E308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2E30C  7C 08 02 A6 */	mflr r0
/* 80D2E310  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2E314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2E318  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2E31C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D2E320  7C 9F 23 78 */	mr r31, r4
/* 80D2E324  41 82 00 38 */	beq lbl_80D2E35C
/* 80D2E328  3C 60 80 D3 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80D2E32C  38 03 EA 8C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80D2E330  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80D2E334  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D2E338  38 80 FF FF */	li r4, -1
/* 80D2E33C  4B 54 0B DC */	b __dt__8cM3dGCirFv
/* 80D2E340  7F C3 F3 78 */	mr r3, r30
/* 80D2E344  38 80 00 00 */	li r4, 0
/* 80D2E348  4B 53 9D 68 */	b __dt__13cBgS_PolyInfoFv
/* 80D2E34C  7F E0 07 35 */	extsh. r0, r31
/* 80D2E350  40 81 00 0C */	ble lbl_80D2E35C
/* 80D2E354  7F C3 F3 78 */	mr r3, r30
/* 80D2E358  4B 5A 09 E4 */	b __dl__FPv
lbl_80D2E35C:
/* 80D2E35C  7F C3 F3 78 */	mr r3, r30
/* 80D2E360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2E364  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2E368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2E36C  7C 08 03 A6 */	mtlr r0
/* 80D2E370  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2E374  4E 80 00 20 */	blr 
