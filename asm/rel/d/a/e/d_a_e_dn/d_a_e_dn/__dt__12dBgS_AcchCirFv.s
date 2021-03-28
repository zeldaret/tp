lbl_804EE2E0:
/* 804EE2E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE2E4  7C 08 02 A6 */	mflr r0
/* 804EE2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE2EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE2F0  93 C1 00 08 */	stw r30, 8(r1)
/* 804EE2F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 804EE2F8  7C 9F 23 78 */	mr r31, r4
/* 804EE2FC  41 82 00 38 */	beq lbl_804EE334
/* 804EE300  3C 60 80 4F */	lis r3, __vt__12dBgS_AcchCir@ha
/* 804EE304  38 03 EE 48 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 804EE308  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804EE30C  38 7E 00 14 */	addi r3, r30, 0x14
/* 804EE310  38 80 FF FF */	li r4, -1
/* 804EE314  4B D8 0C 04 */	b __dt__8cM3dGCirFv
/* 804EE318  7F C3 F3 78 */	mr r3, r30
/* 804EE31C  38 80 00 00 */	li r4, 0
/* 804EE320  4B D7 9D 90 */	b __dt__13cBgS_PolyInfoFv
/* 804EE324  7F E0 07 35 */	extsh. r0, r31
/* 804EE328  40 81 00 0C */	ble lbl_804EE334
/* 804EE32C  7F C3 F3 78 */	mr r3, r30
/* 804EE330  4B DE 0A 0C */	b __dl__FPv
lbl_804EE334:
/* 804EE334  7F C3 F3 78 */	mr r3, r30
/* 804EE338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE33C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EE340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE344  7C 08 03 A6 */	mtlr r0
/* 804EE348  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE34C  4E 80 00 20 */	blr 
