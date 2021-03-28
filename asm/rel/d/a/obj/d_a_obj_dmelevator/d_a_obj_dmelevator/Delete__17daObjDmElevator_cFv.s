lbl_80BDF6DC:
/* 80BDF6DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDF6E0  7C 08 02 A6 */	mflr r0
/* 80BDF6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDF6E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDF6EC  7C 7F 1B 78 */	mr r31, r3
/* 80BDF6F0  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80BDF6F4  4B 6D E9 04 */	b deleteObject__14Z2SoundObjBaseFv
/* 80BDF6F8  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BDF6FC  28 03 00 00 */	cmplwi r3, 0
/* 80BDF700  41 82 00 24 */	beq lbl_80BDF724
/* 80BDF704  4B 68 8A D0 */	b ChkUsed__9cBgW_BgIdCFv
/* 80BDF708  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BDF70C  41 82 00 18 */	beq lbl_80BDF724
/* 80BDF710  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDF714  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDF718  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BDF71C  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80BDF720  4B 49 4B 30 */	b Release__4cBgSFP9dBgW_Base
lbl_80BDF724:
/* 80BDF724  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BDF728  3C 80 80 BE */	lis r4, l_el_arcName@ha
/* 80BDF72C  38 84 F9 64 */	addi r4, r4, l_el_arcName@l
/* 80BDF730  80 84 00 00 */	lwz r4, 0(r4)
/* 80BDF734  4B 44 D8 D4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BDF738  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80BDF73C  3C 80 80 BE */	lis r4, l_sw_arcName@ha
/* 80BDF740  38 84 F9 68 */	addi r4, r4, l_sw_arcName@l
/* 80BDF744  80 84 00 00 */	lwz r4, 0(r4)
/* 80BDF748  4B 44 D8 C0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BDF74C  38 60 00 01 */	li r3, 1
/* 80BDF750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDF754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDF758  7C 08 03 A6 */	mtlr r0
/* 80BDF75C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDF760  4E 80 00 20 */	blr 
