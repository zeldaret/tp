lbl_80B45870:
/* 80B45870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B45874  7C 08 02 A6 */	mflr r0
/* 80B45878  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4587C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B45880  93 C1 00 08 */	stw r30, 8(r1)
/* 80B45884  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B45888  7C 9F 23 78 */	mr r31, r4
/* 80B4588C  41 82 00 38 */	beq lbl_80B458C4
/* 80B45890  3C 60 80 B4 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B45894  38 03 63 2C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B45898  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B4589C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B458A0  38 80 FF FF */	li r4, -1
/* 80B458A4  4B 72 96 74 */	b __dt__8cM3dGCirFv
/* 80B458A8  7F C3 F3 78 */	mr r3, r30
/* 80B458AC  38 80 00 00 */	li r4, 0
/* 80B458B0  4B 72 28 00 */	b __dt__13cBgS_PolyInfoFv
/* 80B458B4  7F E0 07 35 */	extsh. r0, r31
/* 80B458B8  40 81 00 0C */	ble lbl_80B458C4
/* 80B458BC  7F C3 F3 78 */	mr r3, r30
/* 80B458C0  4B 78 94 7C */	b __dl__FPv
lbl_80B458C4:
/* 80B458C4  7F C3 F3 78 */	mr r3, r30
/* 80B458C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B458CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B458D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B458D4  7C 08 03 A6 */	mtlr r0
/* 80B458D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B458DC  4E 80 00 20 */	blr 
