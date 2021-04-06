lbl_80D3C290:
/* 80D3C290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3C294  7C 08 02 A6 */	mflr r0
/* 80D3C298  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3C29C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3C2A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3C2A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D3C2A8  7C 9F 23 78 */	mr r31, r4
/* 80D3C2AC  41 82 00 38 */	beq lbl_80D3C2E4
/* 80D3C2B0  3C 60 80 D4 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80D3DE74@ha */
/* 80D3C2B4  38 03 DE 74 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80D3DE74@l */
/* 80D3C2B8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80D3C2BC  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D3C2C0  38 80 FF FF */	li r4, -1
/* 80D3C2C4  4B 53 2C 55 */	bl __dt__8cM3dGCirFv
/* 80D3C2C8  7F C3 F3 78 */	mr r3, r30
/* 80D3C2CC  38 80 00 00 */	li r4, 0
/* 80D3C2D0  4B 52 BD E1 */	bl __dt__13cBgS_PolyInfoFv
/* 80D3C2D4  7F E0 07 35 */	extsh. r0, r31
/* 80D3C2D8  40 81 00 0C */	ble lbl_80D3C2E4
/* 80D3C2DC  7F C3 F3 78 */	mr r3, r30
/* 80D3C2E0  4B 59 2A 5D */	bl __dl__FPv
lbl_80D3C2E4:
/* 80D3C2E4  7F C3 F3 78 */	mr r3, r30
/* 80D3C2E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3C2EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3C2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3C2F4  7C 08 03 A6 */	mtlr r0
/* 80D3C2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3C2FC  4E 80 00 20 */	blr 
