lbl_8058A6F4:
/* 8058A6F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A6F8  7C 08 02 A6 */	mflr r0
/* 8058A6FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058A704  7C 7F 1B 78 */	mr r31, r3
/* 8058A708  80 63 0A E4 */	lwz r3, 0xae4(r3)
/* 8058A70C  28 03 00 00 */	cmplwi r3, 0
/* 8058A710  41 82 00 24 */	beq lbl_8058A734
/* 8058A714  4B CD DA C0 */	b ChkUsed__9cBgW_BgIdCFv
/* 8058A718  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8058A71C  41 82 00 18 */	beq lbl_8058A734
/* 8058A720  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058A724  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058A728  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8058A72C  80 9F 0A E4 */	lwz r4, 0xae4(r31)
/* 8058A730  4B AE 9B 20 */	b Release__4cBgSFP9dBgW_Base
lbl_8058A734:
/* 8058A734  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 8058A738  88 1F 0B EC */	lbz r0, 0xbec(r31)
/* 8058A73C  54 00 10 3A */	slwi r0, r0, 2
/* 8058A740  3C 80 80 59 */	lis r4, l_arcName@ha
/* 8058A744  38 84 AD 44 */	addi r4, r4, l_arcName@l
/* 8058A748  7C 84 00 2E */	lwzx r4, r4, r0
/* 8058A74C  4B AA 28 BC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8058A750  38 60 00 01 */	li r3, 1
/* 8058A754  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058A758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A75C  7C 08 03 A6 */	mtlr r0
/* 8058A760  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A764  4E 80 00 20 */	blr 
