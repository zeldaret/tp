lbl_806E4CCC:
/* 806E4CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E4CD0  7C 08 02 A6 */	mflr r0
/* 806E4CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E4CD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E4CDC  93 C1 00 08 */	stw r30, 8(r1)
/* 806E4CE0  7C 7E 1B 78 */	mr r30, r3
/* 806E4CE4  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E4CE8  3B E3 59 20 */	addi r31, r3, lit_3791@l
/* 806E4CEC  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 806E4CF0  2C 00 00 03 */	cmpwi r0, 3
/* 806E4CF4  41 82 00 C4 */	beq lbl_806E4DB8
/* 806E4CF8  40 80 00 14 */	bge lbl_806E4D0C
/* 806E4CFC  2C 00 00 01 */	cmpwi r0, 1
/* 806E4D00  41 82 00 1C */	beq lbl_806E4D1C
/* 806E4D04  40 80 00 74 */	bge lbl_806E4D78
/* 806E4D08  48 00 01 44 */	b lbl_806E4E4C
lbl_806E4D0C:
/* 806E4D0C  2C 00 00 05 */	cmpwi r0, 5
/* 806E4D10  41 82 01 00 */	beq lbl_806E4E10
/* 806E4D14  40 80 01 38 */	bge lbl_806E4E4C
/* 806E4D18  48 00 00 EC */	b lbl_806E4E04
lbl_806E4D1C:
/* 806E4D1C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 806E4D20  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806E4D24  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 806E4D28  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 806E4D2C  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 806E4D30  4B 99 12 28 */	b SetWall__12dBgS_AcchCirFff
/* 806E4D34  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 806E4D38  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806E4D3C  4B 99 12 44 */	b SetWallHDirect__12dBgS_AcchCirFf
/* 806E4D40  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806E4D44  4B 93 8F 78 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 806E4D48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E4D4C  41 82 00 10 */	beq lbl_806E4D5C
/* 806E4D50  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 806E4D54  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 806E4D58  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_806E4D5C:
/* 806E4D5C  38 00 00 04 */	li r0, 4
/* 806E4D60  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 806E4D64  38 00 00 00 */	li r0, 0
/* 806E4D68  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
/* 806E4D6C  7F C3 F3 78 */	mr r3, r30
/* 806E4D70  4B FF EA 85 */	bl MemberClear__8daE_HM_cFv
/* 806E4D74  48 00 00 D8 */	b lbl_806E4E4C
lbl_806E4D78:
/* 806E4D78  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E4D7C  D0 3E 05 30 */	stfs f1, 0x530(r30)
/* 806E4D80  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 806E4D84  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 806E4D88  4B 99 11 D0 */	b SetWall__12dBgS_AcchCirFff
/* 806E4D8C  38 00 00 00 */	li r0, 0
/* 806E4D90  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806E4D94  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806E4D98  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 806E4D9C  7F C3 F3 78 */	mr r3, r30
/* 806E4DA0  4B FF FA CD */	bl CheckWall__8daE_HM_cFv
/* 806E4DA4  38 00 00 04 */	li r0, 4
/* 806E4DA8  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 806E4DAC  7F C3 F3 78 */	mr r3, r30
/* 806E4DB0  4B FF EA 45 */	bl MemberClear__8daE_HM_cFv
/* 806E4DB4  48 00 00 98 */	b lbl_806E4E4C
lbl_806E4DB8:
/* 806E4DB8  80 1E 09 40 */	lwz r0, 0x940(r30)
/* 806E4DBC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E4DC0  90 1E 09 40 */	stw r0, 0x940(r30)
/* 806E4DC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E4DC8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806E4DCC  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 806E4DD0  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 806E4DD4  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 806E4DD8  4B 99 11 80 */	b SetWall__12dBgS_AcchCirFff
/* 806E4DDC  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 806E4DE0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806E4DE4  4B 99 11 9C */	b SetWallHDirect__12dBgS_AcchCirFf
/* 806E4DE8  7F C3 F3 78 */	mr r3, r30
/* 806E4DEC  4B FF F8 35 */	bl CheckRoof__8daE_HM_cFv
/* 806E4DF0  38 00 00 04 */	li r0, 4
/* 806E4DF4  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 806E4DF8  7F C3 F3 78 */	mr r3, r30
/* 806E4DFC  4B FF E9 F9 */	bl MemberClear__8daE_HM_cFv
/* 806E4E00  48 00 00 4C */	b lbl_806E4E4C
lbl_806E4E04:
/* 806E4E04  38 00 FF FF */	li r0, -1
/* 806E4E08  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 806E4E0C  48 00 00 40 */	b lbl_806E4E4C
lbl_806E4E10:
/* 806E4E10  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E4E14  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806E4E18  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 806E4E1C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 806E4E20  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 806E4E24  4B 99 11 34 */	b SetWall__12dBgS_AcchCirFff
/* 806E4E28  7F C3 F3 78 */	mr r3, r30
/* 806E4E2C  4B FF F7 F5 */	bl CheckRoof__8daE_HM_cFv
/* 806E4E30  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 806E4E34  38 03 C0 00 */	addi r0, r3, -16384
/* 806E4E38  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806E4E3C  38 00 00 00 */	li r0, 0
/* 806E4E40  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 806E4E44  7F C3 F3 78 */	mr r3, r30
/* 806E4E48  4B FF E9 AD */	bl MemberClear__8daE_HM_cFv
lbl_806E4E4C:
/* 806E4E4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E4E50  83 C1 00 08 */	lwz r30, 8(r1)
/* 806E4E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E4E58  7C 08 03 A6 */	mtlr r0
/* 806E4E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 806E4E60  4E 80 00 20 */	blr 
