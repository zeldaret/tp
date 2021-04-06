lbl_804C7DB4:
/* 804C7DB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C7DB8  7C 08 02 A6 */	mflr r0
/* 804C7DBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C7DC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C7DC4  93 C1 00 08 */	stw r30, 8(r1)
/* 804C7DC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 804C7DCC  7C 9F 23 78 */	mr r31, r4
/* 804C7DD0  41 82 00 38 */	beq lbl_804C7E08
/* 804C7DD4  3C 60 80 4D */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x804CC5EC@ha */
/* 804C7DD8  38 03 C5 EC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x804CC5EC@l */
/* 804C7DDC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804C7DE0  38 7E 00 14 */	addi r3, r30, 0x14
/* 804C7DE4  38 80 FF FF */	li r4, -1
/* 804C7DE8  4B DA 71 31 */	bl __dt__8cM3dGCirFv
/* 804C7DEC  7F C3 F3 78 */	mr r3, r30
/* 804C7DF0  38 80 00 00 */	li r4, 0
/* 804C7DF4  4B DA 02 BD */	bl __dt__13cBgS_PolyInfoFv
/* 804C7DF8  7F E0 07 35 */	extsh. r0, r31
/* 804C7DFC  40 81 00 0C */	ble lbl_804C7E08
/* 804C7E00  7F C3 F3 78 */	mr r3, r30
/* 804C7E04  4B E0 6F 39 */	bl __dl__FPv
lbl_804C7E08:
/* 804C7E08  7F C3 F3 78 */	mr r3, r30
/* 804C7E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C7E10  83 C1 00 08 */	lwz r30, 8(r1)
/* 804C7E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C7E18  7C 08 03 A6 */	mtlr r0
/* 804C7E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C7E20  4E 80 00 20 */	blr 
