lbl_80CED5DC:
/* 80CED5DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CED5E0  7C 08 02 A6 */	mflr r0
/* 80CED5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CED5E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CED5EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CED5F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CED5F4  7C 9F 23 78 */	mr r31, r4
/* 80CED5F8  41 82 00 38 */	beq lbl_80CED630
/* 80CED5FC  3C 60 80 CF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80CED600  38 03 F1 30 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80CED604  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CED608  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CED60C  38 80 FF FF */	li r4, -1
/* 80CED610  4B 58 19 08 */	b __dt__8cM3dGCirFv
/* 80CED614  7F C3 F3 78 */	mr r3, r30
/* 80CED618  38 80 00 00 */	li r4, 0
/* 80CED61C  4B 57 AA 94 */	b __dt__13cBgS_PolyInfoFv
/* 80CED620  7F E0 07 35 */	extsh. r0, r31
/* 80CED624  40 81 00 0C */	ble lbl_80CED630
/* 80CED628  7F C3 F3 78 */	mr r3, r30
/* 80CED62C  4B 5E 17 10 */	b __dl__FPv
lbl_80CED630:
/* 80CED630  7F C3 F3 78 */	mr r3, r30
/* 80CED634  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CED638  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CED63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CED640  7C 08 03 A6 */	mtlr r0
/* 80CED644  38 21 00 10 */	addi r1, r1, 0x10
/* 80CED648  4E 80 00 20 */	blr 
