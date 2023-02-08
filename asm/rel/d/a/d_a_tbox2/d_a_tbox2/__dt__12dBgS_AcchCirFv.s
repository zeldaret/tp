lbl_80497080:
/* 80497080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80497084  7C 08 02 A6 */	mflr r0
/* 80497088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049708C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80497090  93 C1 00 08 */	stw r30, 8(r1)
/* 80497094  7C 7E 1B 79 */	or. r30, r3, r3
/* 80497098  7C 9F 23 78 */	mr r31, r4
/* 8049709C  41 82 00 38 */	beq lbl_804970D4
/* 804970A0  3C 60 80 4A */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x804983D0@ha */
/* 804970A4  38 03 83 D0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x804983D0@l */
/* 804970A8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804970AC  38 7E 00 14 */	addi r3, r30, 0x14
/* 804970B0  38 80 FF FF */	li r4, -1
/* 804970B4  4B DD 7E 65 */	bl __dt__8cM3dGCirFv
/* 804970B8  7F C3 F3 78 */	mr r3, r30
/* 804970BC  38 80 00 00 */	li r4, 0
/* 804970C0  4B DD 0F F1 */	bl __dt__13cBgS_PolyInfoFv
/* 804970C4  7F E0 07 35 */	extsh. r0, r31
/* 804970C8  40 81 00 0C */	ble lbl_804970D4
/* 804970CC  7F C3 F3 78 */	mr r3, r30
/* 804970D0  4B E3 7C 6D */	bl __dl__FPv
lbl_804970D4:
/* 804970D4  7F C3 F3 78 */	mr r3, r30
/* 804970D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804970DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804970E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804970E4  7C 08 03 A6 */	mtlr r0
/* 804970E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804970EC  4E 80 00 20 */	blr 
