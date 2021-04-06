lbl_80592680:
/* 80592680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592684  7C 08 02 A6 */	mflr r0
/* 80592688  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059268C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80592690  93 C1 00 08 */	stw r30, 8(r1)
/* 80592694  7C 7E 1B 79 */	or. r30, r3, r3
/* 80592698  7C 9F 23 78 */	mr r31, r4
/* 8059269C  41 82 00 38 */	beq lbl_805926D4
/* 805926A0  3C 60 80 59 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80592CBC@ha */
/* 805926A4  38 03 2C BC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80592CBC@l */
/* 805926A8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 805926AC  38 7E 00 14 */	addi r3, r30, 0x14
/* 805926B0  38 80 FF FF */	li r4, -1
/* 805926B4  4B CD C8 65 */	bl __dt__8cM3dGCirFv
/* 805926B8  7F C3 F3 78 */	mr r3, r30
/* 805926BC  38 80 00 00 */	li r4, 0
/* 805926C0  4B CD 59 F1 */	bl __dt__13cBgS_PolyInfoFv
/* 805926C4  7F E0 07 35 */	extsh. r0, r31
/* 805926C8  40 81 00 0C */	ble lbl_805926D4
/* 805926CC  7F C3 F3 78 */	mr r3, r30
/* 805926D0  4B D3 C6 6D */	bl __dl__FPv
lbl_805926D4:
/* 805926D4  7F C3 F3 78 */	mr r3, r30
/* 805926D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805926DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805926E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805926E4  7C 08 03 A6 */	mtlr r0
/* 805926E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805926EC  4E 80 00 20 */	blr 
