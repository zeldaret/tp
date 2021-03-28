lbl_804FA31C:
/* 804FA31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA320  7C 08 02 A6 */	mflr r0
/* 804FA324  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA32C  93 C1 00 08 */	stw r30, 8(r1)
/* 804FA330  7C 7E 1B 79 */	or. r30, r3, r3
/* 804FA334  7C 9F 23 78 */	mr r31, r4
/* 804FA338  41 82 00 38 */	beq lbl_804FA370
/* 804FA33C  3C 60 80 50 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 804FA340  38 03 AD D8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 804FA344  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804FA348  38 7E 00 14 */	addi r3, r30, 0x14
/* 804FA34C  38 80 FF FF */	li r4, -1
/* 804FA350  4B D7 4B C8 */	b __dt__8cM3dGCirFv
/* 804FA354  7F C3 F3 78 */	mr r3, r30
/* 804FA358  38 80 00 00 */	li r4, 0
/* 804FA35C  4B D6 DD 54 */	b __dt__13cBgS_PolyInfoFv
/* 804FA360  7F E0 07 35 */	extsh. r0, r31
/* 804FA364  40 81 00 0C */	ble lbl_804FA370
/* 804FA368  7F C3 F3 78 */	mr r3, r30
/* 804FA36C  4B DD 49 D0 */	b __dl__FPv
lbl_804FA370:
/* 804FA370  7F C3 F3 78 */	mr r3, r30
/* 804FA374  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA378  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FA37C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA380  7C 08 03 A6 */	mtlr r0
/* 804FA384  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA388  4E 80 00 20 */	blr 
