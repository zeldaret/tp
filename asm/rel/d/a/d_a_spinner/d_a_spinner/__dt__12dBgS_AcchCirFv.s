lbl_804D1EF8:
/* 804D1EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D1EFC  7C 08 02 A6 */	mflr r0
/* 804D1F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1F04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D1F08  93 C1 00 08 */	stw r30, 8(r1)
/* 804D1F0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804D1F10  7C 9F 23 78 */	mr r31, r4
/* 804D1F14  41 82 00 38 */	beq lbl_804D1F4C
/* 804D1F18  3C 60 80 4D */	lis r3, __vt__12dBgS_AcchCir@ha
/* 804D1F1C  38 03 4F 54 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 804D1F20  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804D1F24  38 7E 00 14 */	addi r3, r30, 0x14
/* 804D1F28  38 80 FF FF */	li r4, -1
/* 804D1F2C  4B D9 CF EC */	b __dt__8cM3dGCirFv
/* 804D1F30  7F C3 F3 78 */	mr r3, r30
/* 804D1F34  38 80 00 00 */	li r4, 0
/* 804D1F38  4B D9 61 78 */	b __dt__13cBgS_PolyInfoFv
/* 804D1F3C  7F E0 07 35 */	extsh. r0, r31
/* 804D1F40  40 81 00 0C */	ble lbl_804D1F4C
/* 804D1F44  7F C3 F3 78 */	mr r3, r30
/* 804D1F48  4B DF CD F4 */	b __dl__FPv
lbl_804D1F4C:
/* 804D1F4C  7F C3 F3 78 */	mr r3, r30
/* 804D1F50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D1F54  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D1F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D1F5C  7C 08 03 A6 */	mtlr r0
/* 804D1F60  38 21 00 10 */	addi r1, r1, 0x10
/* 804D1F64  4E 80 00 20 */	blr 
