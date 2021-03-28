lbl_806EE820:
/* 806EE820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EE824  7C 08 02 A6 */	mflr r0
/* 806EE828  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EE82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806EE830  7C 7F 1B 78 */	mr r31, r3
/* 806EE834  38 00 00 00 */	li r0, 0
/* 806EE838  98 03 05 66 */	stb r0, 0x566(r3)
/* 806EE83C  80 03 06 C8 */	lwz r0, 0x6c8(r3)
/* 806EE840  2C 00 00 01 */	cmpwi r0, 1
/* 806EE844  41 82 00 A8 */	beq lbl_806EE8EC
/* 806EE848  40 80 01 1C */	bge lbl_806EE964
/* 806EE84C  2C 00 00 00 */	cmpwi r0, 0
/* 806EE850  40 80 00 08 */	bge lbl_806EE858
/* 806EE854  48 00 01 10 */	b lbl_806EE964
lbl_806EE858:
/* 806EE858  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806EE85C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806EE860  88 9F 06 EB */	lbz r4, 0x6eb(r31)
/* 806EE864  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806EE868  7C 05 07 74 */	extsb r5, r0
/* 806EE86C  4B 94 69 94 */	b onSwitch__10dSv_info_cFii
/* 806EE870  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806EE874  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 806EE878  81 8C 00 08 */	lwz r12, 8(r12)
/* 806EE87C  7D 89 03 A6 */	mtctr r12
/* 806EE880  4E 80 04 21 */	bctrl 
/* 806EE884  38 00 00 01 */	li r0, 1
/* 806EE888  98 1F 06 E8 */	stb r0, 0x6e8(r31)
/* 806EE88C  38 00 00 00 */	li r0, 0
/* 806EE890  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806EE894  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 806EE898  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806EE89C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 806EE8A0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806EE8A4  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 806EE8A8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806EE8AC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806EE8B0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806EE8B4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806EE8B8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806EE8BC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806EE8C0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806EE8C4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806EE8C8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 806EE8CC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806EE8D0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806EE8D4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806EE8D8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 806EE8DC  98 1F 04 96 */	stb r0, 0x496(r31)
/* 806EE8E0  38 00 00 03 */	li r0, 3
/* 806EE8E4  90 1F 06 C8 */	stw r0, 0x6c8(r31)
/* 806EE8E8  48 00 00 7C */	b lbl_806EE964
lbl_806EE8EC:
/* 806EE8EC  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806EE8F0  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 806EE8F4  81 8C 00 08 */	lwz r12, 8(r12)
/* 806EE8F8  7D 89 03 A6 */	mtctr r12
/* 806EE8FC  4E 80 04 21 */	bctrl 
/* 806EE900  38 00 00 01 */	li r0, 1
/* 806EE904  98 1F 06 E8 */	stb r0, 0x6e8(r31)
/* 806EE908  38 00 00 00 */	li r0, 0
/* 806EE90C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806EE910  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 806EE914  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806EE918  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 806EE91C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806EE920  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 806EE924  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806EE928  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806EE92C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806EE930  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806EE934  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806EE938  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806EE93C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806EE940  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806EE944  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 806EE948  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806EE94C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806EE950  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806EE954  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 806EE958  98 1F 04 96 */	stb r0, 0x496(r31)
/* 806EE95C  38 00 00 04 */	li r0, 4
/* 806EE960  90 1F 06 C8 */	stw r0, 0x6c8(r31)
lbl_806EE964:
/* 806EE964  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806EE968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EE96C  7C 08 03 A6 */	mtlr r0
/* 806EE970  38 21 00 10 */	addi r1, r1, 0x10
/* 806EE974  4E 80 00 20 */	blr 
