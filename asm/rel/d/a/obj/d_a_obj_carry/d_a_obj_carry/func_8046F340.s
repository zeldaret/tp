lbl_8046F340:
/* 8046F340  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046F344  7C 08 02 A6 */	mflr r0
/* 8046F348  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046F34C  39 61 00 20 */	addi r11, r1, 0x20
/* 8046F350  4B EF 2E 8D */	bl _savegpr_29
/* 8046F354  7C 7D 1B 79 */	or. r29, r3, r3
/* 8046F358  7C BE 2B 78 */	mr r30, r5
/* 8046F35C  3C 60 80 48 */	lis r3, l_cyl_info@ha /* 0x8047990C@ha */
/* 8046F360  3B E3 99 0C */	addi r31, r3, l_cyl_info@l /* 0x8047990C@l */
/* 8046F364  41 82 00 64 */	beq lbl_8046F3C8
/* 8046F368  28 1E 00 00 */	cmplwi r30, 0
/* 8046F36C  41 82 00 5C */	beq lbl_8046F3C8
/* 8046F370  80 06 00 10 */	lwz r0, 0x10(r6)
/* 8046F374  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8046F378  41 82 00 50 */	beq lbl_8046F3C8
/* 8046F37C  7F C3 F3 78 */	mr r3, r30
/* 8046F380  4B BA 99 61 */	bl fopAc_IsActor__FPv
/* 8046F384  2C 03 00 00 */	cmpwi r3, 0
/* 8046F388  41 82 00 40 */	beq lbl_8046F3C8
/* 8046F38C  A8 1E 00 08 */	lha r0, 8(r30)
/* 8046F390  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8046F394  40 82 00 34 */	bne lbl_8046F3C8
/* 8046F398  C0 3F 0A 6C */	lfs f1, 0xa6c(r31)
/* 8046F39C  4B DF 85 B9 */	bl cM_rndF__Ff
/* 8046F3A0  C0 1F 0A 68 */	lfs f0, 0xa68(r31)
/* 8046F3A4  EC 00 08 2A */	fadds f0, f0, f1
/* 8046F3A8  D0 1D 0D 5C */	stfs f0, 0xd5c(r29)
/* 8046F3AC  C0 3F 0A 74 */	lfs f1, 0xa74(r31)
/* 8046F3B0  4B DF 85 A5 */	bl cM_rndF__Ff
/* 8046F3B4  C0 1F 0A 70 */	lfs f0, 0xa70(r31)
/* 8046F3B8  EC 00 08 2A */	fadds f0, f0, f1
/* 8046F3BC  D0 1D 0D 60 */	stfs f0, 0xd60(r29)
/* 8046F3C0  38 00 0F A0 */	li r0, 0xfa0
/* 8046F3C4  B0 1D 0D 68 */	sth r0, 0xd68(r29)
lbl_8046F3C8:
/* 8046F3C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8046F3CC  4B EF 2E 5D */	bl _restgpr_29
/* 8046F3D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046F3D4  7C 08 03 A6 */	mtlr r0
/* 8046F3D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8046F3DC  4E 80 00 20 */	blr 
