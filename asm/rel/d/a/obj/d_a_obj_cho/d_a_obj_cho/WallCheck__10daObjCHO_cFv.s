lbl_80BCA88C:
/* 80BCA88C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80BCA890  7C 08 02 A6 */	mflr r0
/* 80BCA894  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BCA898  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80BCA89C  7C 7F 1B 78 */	mr r31, r3
/* 80BCA8A0  38 61 00 08 */	addi r3, r1, 8
/* 80BCA8A4  4B 4A D3 C5 */	bl __ct__11dBgS_LinChkFv
/* 80BCA8A8  38 61 00 60 */	addi r3, r1, 0x60
/* 80BCA8AC  4B 4A E5 BD */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BCA8B0  38 61 00 08 */	addi r3, r1, 8
/* 80BCA8B4  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 80BCA8B8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BCA8BC  38 C0 00 00 */	li r6, 0
/* 80BCA8C0  4B 4A D4 A5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BCA8C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCA8C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCA8CC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BCA8D0  38 81 00 08 */	addi r4, r1, 8
/* 80BCA8D4  4B 4A 9A E1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80BCA8D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCA8DC  41 82 00 28 */	beq lbl_80BCA904
/* 80BCA8E0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BCA8E4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80BCA8E8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BCA8EC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80BCA8F0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80BCA8F4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80BCA8F8  A8 7F 09 90 */	lha r3, 0x990(r31)
/* 80BCA8FC  38 03 01 00 */	addi r0, r3, 0x100
/* 80BCA900  B0 1F 09 90 */	sth r0, 0x990(r31)
lbl_80BCA904:
/* 80BCA904  38 61 00 08 */	addi r3, r1, 8
/* 80BCA908  38 80 FF FF */	li r4, -1
/* 80BCA90C  4B 4A D3 D1 */	bl __dt__11dBgS_LinChkFv
/* 80BCA910  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80BCA914  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BCA918  7C 08 03 A6 */	mtlr r0
/* 80BCA91C  38 21 00 80 */	addi r1, r1, 0x80
/* 80BCA920  4E 80 00 20 */	blr 
