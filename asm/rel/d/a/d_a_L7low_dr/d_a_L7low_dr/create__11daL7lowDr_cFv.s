lbl_805AAD58:
/* 805AAD58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AAD5C  7C 08 02 A6 */	mflr r0
/* 805AAD60  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AAD64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AAD68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AAD6C  7C 7F 1B 78 */	mr r31, r3
/* 805AAD70  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805AAD74  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805AAD78  40 82 00 28 */	bne lbl_805AADA0
/* 805AAD7C  7F E0 FB 79 */	or. r0, r31, r31
/* 805AAD80  41 82 00 14 */	beq lbl_805AAD94
/* 805AAD84  7C 1E 03 78 */	mr r30, r0
/* 805AAD88  4B A6 DD DC */	b __ct__10fopAc_ac_cFv
/* 805AAD8C  38 7E 05 74 */	addi r3, r30, 0x574
/* 805AAD90  4B D1 61 D4 */	b __ct__15Z2CreatureEnemyFv
lbl_805AAD94:
/* 805AAD94  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805AAD98  60 00 00 08 */	ori r0, r0, 8
/* 805AAD9C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805AADA0:
/* 805AADA0  38 7F 05 68 */	addi r3, r31, 0x568
/* 805AADA4  3C 80 80 5B */	lis r4, stringBase0@ha
/* 805AADA8  38 84 AF B0 */	addi r4, r4, stringBase0@l
/* 805AADAC  4B A8 21 10 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805AADB0  7C 7E 1B 78 */	mr r30, r3
/* 805AADB4  2C 1E 00 04 */	cmpwi r30, 4
/* 805AADB8  40 82 00 B4 */	bne lbl_805AAE6C
/* 805AADBC  7F E3 FB 78 */	mr r3, r31
/* 805AADC0  3C 80 80 5B */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 805AADC4  38 84 AC 3C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 805AADC8  38 A0 1D 20 */	li r5, 0x1d20
/* 805AADCC  4B A6 F6 E4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805AADD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805AADD4  40 82 00 0C */	bne lbl_805AADE0
/* 805AADD8  38 60 00 05 */	li r3, 5
/* 805AADDC  48 00 00 94 */	b lbl_805AAE70
lbl_805AADE0:
/* 805AADE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805AADE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805AADE8  38 63 09 58 */	addi r3, r3, 0x958
/* 805AADEC  38 80 00 03 */	li r4, 3
/* 805AADF0  4B A8 9B 44 */	b isDungeonItem__12dSv_memBit_cCFi
/* 805AADF4  2C 03 00 00 */	cmpwi r3, 0
/* 805AADF8  41 82 00 0C */	beq lbl_805AAE04
/* 805AADFC  38 60 00 05 */	li r3, 5
/* 805AAE00  48 00 00 70 */	b lbl_805AAE70
lbl_805AAE04:
/* 805AAE04  3C 60 80 5B */	lis r3, lit_3773@ha
/* 805AAE08  C0 03 AF 84 */	lfs f0, lit_3773@l(r3)
/* 805AAE0C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 805AAE10  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 805AAE14  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 805AAE18  38 00 00 00 */	li r0, 0
/* 805AAE1C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805AAE20  38 7F 05 74 */	addi r3, r31, 0x574
/* 805AAE24  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805AAE28  38 BF 05 38 */	addi r5, r31, 0x538
/* 805AAE2C  38 C0 00 03 */	li r6, 3
/* 805AAE30  38 E0 00 01 */	li r7, 1
/* 805AAE34  4B D1 62 60 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 805AAE38  3C 60 80 5B */	lis r3, lit_3832@ha
/* 805AAE3C  38 83 AF B8 */	addi r4, r3, lit_3832@l
/* 805AAE40  80 64 00 00 */	lwz r3, 0(r4)
/* 805AAE44  80 04 00 04 */	lwz r0, 4(r4)
/* 805AAE48  90 61 00 08 */	stw r3, 8(r1)
/* 805AAE4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AAE50  80 04 00 08 */	lwz r0, 8(r4)
/* 805AAE54  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AAE58  7F E3 FB 78 */	mr r3, r31
/* 805AAE5C  38 81 00 08 */	addi r4, r1, 8
/* 805AAE60  4B FF F7 99 */	bl setAction__11daL7lowDr_cFM11daL7lowDr_cFPCvPv_v
/* 805AAE64  7F E3 FB 78 */	mr r3, r31
/* 805AAE68  4B FF FD B5 */	bl daL7lowDr_Execute__FP11daL7lowDr_c
lbl_805AAE6C:
/* 805AAE6C  7F C3 F3 78 */	mr r3, r30
lbl_805AAE70:
/* 805AAE70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AAE74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AAE78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AAE7C  7C 08 03 A6 */	mtlr r0
/* 805AAE80  38 21 00 20 */	addi r1, r1, 0x20
/* 805AAE84  4E 80 00 20 */	blr 
