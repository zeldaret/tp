lbl_80C9127C:
/* 80C9127C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C91280  7C 08 02 A6 */	mflr r0
/* 80C91284  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C91288  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9128C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C91290  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C91294  7C 9F 23 78 */	mr r31, r4
/* 80C91298  41 82 00 38 */	beq lbl_80C912D0
/* 80C9129C  3C 60 80 C9 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80C91A7C@ha */
/* 80C912A0  38 03 1A 7C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80C91A7C@l */
/* 80C912A4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80C912A8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C912AC  38 80 FF FF */	li r4, -1
/* 80C912B0  4B 5D DC 69 */	bl __dt__8cM3dGCirFv
/* 80C912B4  7F C3 F3 78 */	mr r3, r30
/* 80C912B8  38 80 00 00 */	li r4, 0
/* 80C912BC  4B 5D 6D F5 */	bl __dt__13cBgS_PolyInfoFv
/* 80C912C0  7F E0 07 35 */	extsh. r0, r31
/* 80C912C4  40 81 00 0C */	ble lbl_80C912D0
/* 80C912C8  7F C3 F3 78 */	mr r3, r30
/* 80C912CC  4B 63 DA 71 */	bl __dl__FPv
lbl_80C912D0:
/* 80C912D0  7F C3 F3 78 */	mr r3, r30
/* 80C912D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C912D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C912DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C912E0  7C 08 03 A6 */	mtlr r0
/* 80C912E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C912E8  4E 80 00 20 */	blr 
