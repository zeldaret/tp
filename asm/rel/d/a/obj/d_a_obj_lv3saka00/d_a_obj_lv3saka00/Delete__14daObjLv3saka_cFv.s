lbl_80C5C27C:
/* 80C5C27C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C280  7C 08 02 A6 */	mflr r0
/* 80C5C284  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C288  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5C28C  7C 7F 1B 78 */	mr r31, r3
/* 80C5C290  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80C5C294  28 03 00 00 */	cmplwi r3, 0
/* 80C5C298  41 82 00 24 */	beq lbl_80C5C2BC
/* 80C5C29C  4B 60 BF 38 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C5C2A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C5C2A4  41 82 00 18 */	beq lbl_80C5C2BC
/* 80C5C2A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5C2AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5C2B0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C5C2B4  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C5C2B8  4B 41 7F 98 */	b Release__4cBgSFP9dBgW_Base
lbl_80C5C2BC:
/* 80C5C2BC  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C5C2C0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5C2C4  54 00 36 BA */	rlwinm r0, r0, 6, 0x1a, 0x1d
/* 80C5C2C8  3C 80 80 C6 */	lis r4, l_arcName@ha
/* 80C5C2CC  38 84 C3 F0 */	addi r4, r4, l_arcName@l
/* 80C5C2D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C5C2D4  4B 3D 0D 34 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C5C2D8  38 60 00 01 */	li r3, 1
/* 80C5C2DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5C2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C2E4  7C 08 03 A6 */	mtlr r0
/* 80C5C2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C2EC  4E 80 00 20 */	blr 
