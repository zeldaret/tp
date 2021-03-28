lbl_80BA5E04:
/* 80BA5E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA5E08  7C 08 02 A6 */	mflr r0
/* 80BA5E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA5E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA5E14  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA5E18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BA5E1C  7C 9F 23 78 */	mr r31, r4
/* 80BA5E20  41 82 00 38 */	beq lbl_80BA5E58
/* 80BA5E24  3C 60 80 BA */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80BA5E28  38 03 6D FC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80BA5E2C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BA5E30  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BA5E34  38 80 FF FF */	li r4, -1
/* 80BA5E38  4B 6C 90 E0 */	b __dt__8cM3dGCirFv
/* 80BA5E3C  7F C3 F3 78 */	mr r3, r30
/* 80BA5E40  38 80 00 00 */	li r4, 0
/* 80BA5E44  4B 6C 22 6C */	b __dt__13cBgS_PolyInfoFv
/* 80BA5E48  7F E0 07 35 */	extsh. r0, r31
/* 80BA5E4C  40 81 00 0C */	ble lbl_80BA5E58
/* 80BA5E50  7F C3 F3 78 */	mr r3, r30
/* 80BA5E54  4B 72 8E E8 */	b __dl__FPv
lbl_80BA5E58:
/* 80BA5E58  7F C3 F3 78 */	mr r3, r30
/* 80BA5E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA5E60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA5E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA5E68  7C 08 03 A6 */	mtlr r0
/* 80BA5E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA5E70  4E 80 00 20 */	blr 
