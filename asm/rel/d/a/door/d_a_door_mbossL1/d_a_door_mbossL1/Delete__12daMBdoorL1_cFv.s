lbl_806773DC:
/* 806773DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806773E0  7C 08 02 A6 */	mflr r0
/* 806773E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806773E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806773EC  7C 7F 1B 78 */	mr r31, r3
/* 806773F0  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 806773F4  28 00 00 00 */	cmplwi r0, 0
/* 806773F8  41 82 00 28 */	beq lbl_80677420
/* 806773FC  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80677400  4B BF 0D D5 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80677404  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80677408  41 82 00 18 */	beq lbl_80677420
/* 8067740C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80677410  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80677414  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80677418  80 9F 05 98 */	lwz r4, 0x598(r31)
/* 8067741C  4B 9F CE 35 */	bl Release__4cBgSFP9dBgW_Base
lbl_80677420:
/* 80677420  7F E3 FB 78 */	mr r3, r31
/* 80677424  4B FF BA C5 */	bl getArcName__12daMBdoorL1_cFv
/* 80677428  7C 64 1B 78 */	mr r4, r3
/* 8067742C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80677430  4B 9B 5B D9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80677434  7F E3 FB 78 */	mr r3, r31
/* 80677438  4B FF BB 3D */	bl getAlwaysArcName__12daMBdoorL1_cFv
/* 8067743C  7C 64 1B 78 */	mr r4, r3
/* 80677440  38 7F 05 70 */	addi r3, r31, 0x570
/* 80677444  4B 9B 5B C5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80677448  7F E3 FB 78 */	mr r3, r31
/* 8067744C  4B FF BA 25 */	bl getAnmArcName__12daMBdoorL1_cFv
/* 80677450  28 03 00 00 */	cmplwi r3, 0
/* 80677454  41 82 00 18 */	beq lbl_8067746C
/* 80677458  7F E3 FB 78 */	mr r3, r31
/* 8067745C  4B FF BA 15 */	bl getAnmArcName__12daMBdoorL1_cFv
/* 80677460  7C 64 1B 78 */	mr r4, r3
/* 80677464  38 7F 05 78 */	addi r3, r31, 0x578
/* 80677468  4B 9B 5B A1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_8067746C:
/* 8067746C  38 60 00 01 */	li r3, 1
/* 80677470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80677474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80677478  7C 08 03 A6 */	mtlr r0
/* 8067747C  38 21 00 10 */	addi r1, r1, 0x10
/* 80677480  4E 80 00 20 */	blr 
