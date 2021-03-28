lbl_80CC25C0:
/* 80CC25C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC25C4  7C 08 02 A6 */	mflr r0
/* 80CC25C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC25CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC25D0  7C 7F 1B 78 */	mr r31, r3
/* 80CC25D4  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80CC25D8  28 03 00 00 */	cmplwi r3, 0
/* 80CC25DC  41 82 00 24 */	beq lbl_80CC2600
/* 80CC25E0  4B 5A 5B F4 */	b ChkUsed__9cBgW_BgIdCFv
/* 80CC25E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CC25E8  41 82 00 18 */	beq lbl_80CC2600
/* 80CC25EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC25F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC25F4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC25F8  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80CC25FC  4B 3B 1C 54 */	b Release__4cBgSFP9dBgW_Base
lbl_80CC2600:
/* 80CC2600  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CC2604  3C 80 80 CC */	lis r4, l_arcName@ha
/* 80CC2608  38 84 27 5C */	addi r4, r4, l_arcName@l
/* 80CC260C  80 84 00 00 */	lwz r4, 0(r4)
/* 80CC2610  4B 36 A9 F8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CC2614  38 60 00 01 */	li r3, 1
/* 80CC2618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC261C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC2620  7C 08 03 A6 */	mtlr r0
/* 80CC2624  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC2628  4E 80 00 20 */	blr 
