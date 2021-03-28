lbl_80673D98:
/* 80673D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80673D9C  7C 08 02 A6 */	mflr r0
/* 80673DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80673DA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80673DA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80673DAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80673DB0  7C 9F 23 78 */	mr r31, r4
/* 80673DB4  41 82 00 38 */	beq lbl_80673DEC
/* 80673DB8  3C 60 80 67 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80673DBC  38 03 7C F8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80673DC0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80673DC4  38 7E 00 14 */	addi r3, r30, 0x14
/* 80673DC8  38 80 FF FF */	li r4, -1
/* 80673DCC  4B BF B1 4C */	b __dt__8cM3dGCirFv
/* 80673DD0  7F C3 F3 78 */	mr r3, r30
/* 80673DD4  38 80 00 00 */	li r4, 0
/* 80673DD8  4B BF 42 D8 */	b __dt__13cBgS_PolyInfoFv
/* 80673DDC  7F E0 07 35 */	extsh. r0, r31
/* 80673DE0  40 81 00 0C */	ble lbl_80673DEC
/* 80673DE4  7F C3 F3 78 */	mr r3, r30
/* 80673DE8  4B C5 AF 54 */	b __dl__FPv
lbl_80673DEC:
/* 80673DEC  7F C3 F3 78 */	mr r3, r30
/* 80673DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80673DF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80673DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80673DFC  7C 08 03 A6 */	mtlr r0
/* 80673E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80673E04  4E 80 00 20 */	blr 
