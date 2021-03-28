lbl_80C6ABAC:
/* 80C6ABAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C6ABB0  7C 08 02 A6 */	mflr r0
/* 80C6ABB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C6ABB8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C6ABBC  4B 6F 76 20 */	b _savegpr_29
/* 80C6ABC0  7C 7D 1B 78 */	mr r29, r3
/* 80C6ABC4  3C 60 80 C7 */	lis r3, lit_3656@ha
/* 80C6ABC8  3B C3 B1 48 */	addi r30, r3, lit_3656@l
/* 80C6ABCC  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 80C6ABD0  4B 41 98 90 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C6ABD4  28 03 00 00 */	cmplwi r3, 0
/* 80C6ABD8  41 82 00 50 */	beq lbl_80C6AC28
/* 80C6ABDC  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 80C6ABE0  4B 41 99 68 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80C6ABE4  7C 7F 1B 78 */	mr r31, r3
/* 80C6ABE8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C6ABEC  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80C6ABF0  41 82 00 24 */	beq lbl_80C6AC14
/* 80C6ABF4  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 80C6ABF8  28 00 00 64 */	cmplwi r0, 0x64
/* 80C6ABFC  41 82 00 10 */	beq lbl_80C6AC0C
/* 80C6AC00  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80C6AC04  28 00 00 03 */	cmplwi r0, 3
/* 80C6AC08  40 82 00 0C */	bne lbl_80C6AC14
lbl_80C6AC0C:
/* 80C6AC0C  7F A3 EB 78 */	mr r3, r29
/* 80C6AC10  48 00 00 8D */	bl init_modeBreak__12daFlorBoad_cFv
lbl_80C6AC14:
/* 80C6AC14  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80C6AC18  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C6AC1C  41 82 00 0C */	beq lbl_80C6AC28
/* 80C6AC20  7F A3 EB 78 */	mr r3, r29
/* 80C6AC24  48 00 00 79 */	bl init_modeBreak__12daFlorBoad_cFv
lbl_80C6AC28:
/* 80C6AC28  38 7D 07 00 */	addi r3, r29, 0x700
/* 80C6AC2C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80C6AC30  4B 60 45 D0 */	b SetR__8cM3dGCylFf
/* 80C6AC34  38 7D 07 00 */	addi r3, r29, 0x700
/* 80C6AC38  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80C6AC3C  4B 60 45 BC */	b SetH__8cM3dGCylFf
/* 80C6AC40  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C6AC44  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C6AC48  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C6AC4C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C6AC50  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C6AC54  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C6AC58  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80C6AC5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C6AC60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C6AC64  38 7D 07 00 */	addi r3, r29, 0x700
/* 80C6AC68  38 81 00 08 */	addi r4, r1, 8
/* 80C6AC6C  4B 60 45 70 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C6AC70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6AC74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6AC78  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C6AC7C  38 9D 05 DC */	addi r4, r29, 0x5dc
/* 80C6AC80  4B 5F 9F 28 */	b Set__4cCcSFP8cCcD_Obj
/* 80C6AC84  39 61 00 30 */	addi r11, r1, 0x30
/* 80C6AC88  4B 6F 75 A0 */	b _restgpr_29
/* 80C6AC8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C6AC90  7C 08 03 A6 */	mtlr r0
/* 80C6AC94  38 21 00 30 */	addi r1, r1, 0x30
/* 80C6AC98  4E 80 00 20 */	blr 
