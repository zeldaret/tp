lbl_80D32088:
/* 80D32088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3208C  7C 08 02 A6 */	mflr r0
/* 80D32090  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D32094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D32098  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3209C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D320A0  7C 9F 23 78 */	mr r31, r4
/* 80D320A4  41 82 00 38 */	beq lbl_80D320DC
/* 80D320A8  3C 60 80 D3 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80D320AC  38 03 43 80 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80D320B0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80D320B4  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D320B8  38 80 FF FF */	li r4, -1
/* 80D320BC  4B 53 CE 5C */	b __dt__8cM3dGCirFv
/* 80D320C0  7F C3 F3 78 */	mr r3, r30
/* 80D320C4  38 80 00 00 */	li r4, 0
/* 80D320C8  4B 53 5F E8 */	b __dt__13cBgS_PolyInfoFv
/* 80D320CC  7F E0 07 35 */	extsh. r0, r31
/* 80D320D0  40 81 00 0C */	ble lbl_80D320DC
/* 80D320D4  7F C3 F3 78 */	mr r3, r30
/* 80D320D8  4B 59 CC 64 */	b __dl__FPv
lbl_80D320DC:
/* 80D320DC  7F C3 F3 78 */	mr r3, r30
/* 80D320E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D320E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D320E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D320EC  7C 08 03 A6 */	mtlr r0
/* 80D320F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D320F4  4E 80 00 20 */	blr 
