lbl_8062D8AC:
/* 8062D8AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D8B0  7C 08 02 A6 */	mflr r0
/* 8062D8B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D8B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062D8BC  93 C1 00 08 */	stw r30, 8(r1)
/* 8062D8C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8062D8C4  7C 9F 23 78 */	mr r31, r4
/* 8062D8C8  41 82 00 38 */	beq lbl_8062D900
/* 8062D8CC  3C 60 80 63 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8062D8D0  38 03 EF 60 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8062D8D4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8062D8D8  38 7E 00 14 */	addi r3, r30, 0x14
/* 8062D8DC  38 80 FF FF */	li r4, -1
/* 8062D8E0  4B C4 16 38 */	b __dt__8cM3dGCirFv
/* 8062D8E4  7F C3 F3 78 */	mr r3, r30
/* 8062D8E8  38 80 00 00 */	li r4, 0
/* 8062D8EC  4B C3 A7 C4 */	b __dt__13cBgS_PolyInfoFv
/* 8062D8F0  7F E0 07 35 */	extsh. r0, r31
/* 8062D8F4  40 81 00 0C */	ble lbl_8062D900
/* 8062D8F8  7F C3 F3 78 */	mr r3, r30
/* 8062D8FC  4B CA 14 40 */	b __dl__FPv
lbl_8062D900:
/* 8062D900  7F C3 F3 78 */	mr r3, r30
/* 8062D904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062D908  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062D90C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D910  7C 08 03 A6 */	mtlr r0
/* 8062D914  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D918  4E 80 00 20 */	blr 
