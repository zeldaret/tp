lbl_80659630:
/* 80659630  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80659634  7C 08 02 A6 */	mflr r0
/* 80659638  90 01 00 34 */	stw r0, 0x34(r1)
/* 8065963C  39 61 00 30 */	addi r11, r1, 0x30
/* 80659640  4B D0 8B 9D */	bl _savegpr_29
/* 80659644  7C 7D 1B 78 */	mr r29, r3
/* 80659648  3B E0 00 00 */	li r31, 0
/* 8065964C  3B C0 00 00 */	li r30, 0
/* 80659650  80 03 06 38 */	lwz r0, 0x638(r3)
/* 80659654  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80659658  41 82 00 54 */	beq lbl_806596AC
/* 8065965C  3C 60 80 66 */	lis r3, __vt__8cM3dGPla@ha /* 0x8066344C@ha */
/* 80659660  38 03 34 4C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8066344C@l */
/* 80659664  90 01 00 18 */	stw r0, 0x18(r1)
/* 80659668  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065966C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80659670  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80659674  38 9D 06 FC */	addi r4, r29, 0x6fc
/* 80659678  38 A1 00 08 */	addi r5, r1, 8
/* 8065967C  4B A1 B0 C9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80659680  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80659684  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80659688  4B C0 DF ED */	bl cM_atan2s__Fff
/* 8065968C  7C 7F 07 34 */	extsh r31, r3
/* 80659690  C0 21 00 08 */	lfs f1, 8(r1)
/* 80659694  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80659698  4B C0 DF DD */	bl cM_atan2s__Fff
/* 8065969C  7C 7E 07 34 */	extsh r30, r3
/* 806596A0  3C 60 80 66 */	lis r3, __vt__8cM3dGPla@ha /* 0x8066344C@ha */
/* 806596A4  38 03 34 4C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8066344C@l */
/* 806596A8  90 01 00 18 */	stw r0, 0x18(r1)
lbl_806596AC:
/* 806596AC  38 7D 0C 2C */	addi r3, r29, 0xc2c
/* 806596B0  7F E4 FB 78 */	mr r4, r31
/* 806596B4  38 A0 00 80 */	li r5, 0x80
/* 806596B8  4B C1 74 D9 */	bl cLib_chaseAngleS__FPsss
/* 806596BC  38 7D 0C 2E */	addi r3, r29, 0xc2e
/* 806596C0  7F C4 F3 78 */	mr r4, r30
/* 806596C4  38 A0 00 80 */	li r5, 0x80
/* 806596C8  4B C1 74 C9 */	bl cLib_chaseAngleS__FPsss
/* 806596CC  39 61 00 30 */	addi r11, r1, 0x30
/* 806596D0  4B D0 8B 59 */	bl _restgpr_29
/* 806596D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806596D8  7C 08 03 A6 */	mtlr r0
/* 806596DC  38 21 00 30 */	addi r1, r1, 0x30
/* 806596E0  4E 80 00 20 */	blr 
