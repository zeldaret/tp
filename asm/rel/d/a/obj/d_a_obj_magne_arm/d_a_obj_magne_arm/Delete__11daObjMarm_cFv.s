lbl_805923C8:
/* 805923C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805923CC  7C 08 02 A6 */	mflr r0
/* 805923D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805923D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805923D8  7C 7F 1B 78 */	mr r31, r3
/* 805923DC  80 63 05 CC */	lwz r3, 0x5cc(r3)
/* 805923E0  28 03 00 00 */	cmplwi r3, 0
/* 805923E4  41 82 00 24 */	beq lbl_80592408
/* 805923E8  4B CD 5D ED */	bl ChkUsed__9cBgW_BgIdCFv
/* 805923EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805923F0  41 82 00 18 */	beq lbl_80592408
/* 805923F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805923F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805923FC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80592400  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80592404  4B AE 1E 4D */	bl Release__4cBgSFP9dBgW_Base
lbl_80592408:
/* 80592408  80 7F 06 30 */	lwz r3, 0x630(r31)
/* 8059240C  28 03 00 00 */	cmplwi r3, 0
/* 80592410  41 82 00 24 */	beq lbl_80592434
/* 80592414  4B CD 5D C1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80592418  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059241C  41 82 00 18 */	beq lbl_80592434
/* 80592420  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80592424  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80592428  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8059242C  80 9F 06 30 */	lwz r4, 0x630(r31)
/* 80592430  4B AE 1E 21 */	bl Release__4cBgSFP9dBgW_Base
lbl_80592434:
/* 80592434  7F E3 FB 78 */	mr r3, r31
/* 80592438  4B FF F7 C5 */	bl endMagneHoleEffect__11daObjMarm_cFv
/* 8059243C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80592440  3C 80 80 59 */	lis r4, l_arcName@ha /* 0x805929A0@ha */
/* 80592444  38 84 29 A0 */	addi r4, r4, l_arcName@l /* 0x805929A0@l */
/* 80592448  80 84 00 00 */	lwz r4, 0(r4)
/* 8059244C  4B A9 AB BD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80592450  38 60 00 01 */	li r3, 1
/* 80592454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80592458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059245C  7C 08 03 A6 */	mtlr r0
/* 80592460  38 21 00 10 */	addi r1, r1, 0x10
/* 80592464  4E 80 00 20 */	blr 
