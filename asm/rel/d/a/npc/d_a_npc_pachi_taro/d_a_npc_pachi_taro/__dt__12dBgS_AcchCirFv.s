lbl_80AA0DBC:
/* 80AA0DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA0DC0  7C 08 02 A6 */	mflr r0
/* 80AA0DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA0DCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA0DD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AA0DD4  7C 9F 23 78 */	mr r31, r4
/* 80AA0DD8  41 82 00 38 */	beq lbl_80AA0E10
/* 80AA0DDC  3C 60 80 AA */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AA0DE0  38 03 2A 50 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AA0DE4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AA0DE8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AA0DEC  38 80 FF FF */	li r4, -1
/* 80AA0DF0  4B 7C E1 28 */	b __dt__8cM3dGCirFv
/* 80AA0DF4  7F C3 F3 78 */	mr r3, r30
/* 80AA0DF8  38 80 00 00 */	li r4, 0
/* 80AA0DFC  4B 7C 72 B4 */	b __dt__13cBgS_PolyInfoFv
/* 80AA0E00  7F E0 07 35 */	extsh. r0, r31
/* 80AA0E04  40 81 00 0C */	ble lbl_80AA0E10
/* 80AA0E08  7F C3 F3 78 */	mr r3, r30
/* 80AA0E0C  4B 82 DF 30 */	b __dl__FPv
lbl_80AA0E10:
/* 80AA0E10  7F C3 F3 78 */	mr r3, r30
/* 80AA0E14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA0E18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA0E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA0E20  7C 08 03 A6 */	mtlr r0
/* 80AA0E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0E28  4E 80 00 20 */	blr 
