lbl_80CF606C:
/* 80CF606C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6070  7C 08 02 A6 */	mflr r0
/* 80CF6074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF607C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF6080  7C 7E 1B 78 */	mr r30, r3
/* 80CF6084  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CF6088  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CF608C  40 82 00 1C */	bne lbl_80CF60A8
/* 80CF6090  28 1E 00 00 */	cmplwi r30, 0
/* 80CF6094  41 82 00 08 */	beq lbl_80CF609C
/* 80CF6098  4B 32 2A CC */	b __ct__10fopAc_ac_cFv
lbl_80CF609C:
/* 80CF609C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CF60A0  60 00 00 08 */	ori r0, r0, 8
/* 80CF60A4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CF60A8:
/* 80CF60A8  38 7E 05 68 */	addi r3, r30, 0x568
/* 80CF60AC  3C 80 80 CF */	lis r4, l_arcName@ha
/* 80CF60B0  38 84 6D B0 */	addi r4, r4, l_arcName@l
/* 80CF60B4  80 84 00 00 */	lwz r4, 0(r4)
/* 80CF60B8  4B 33 6E 04 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CF60BC  7C 7F 1B 78 */	mr r31, r3
/* 80CF60C0  2C 1F 00 04 */	cmpwi r31, 4
/* 80CF60C4  40 82 00 40 */	bne lbl_80CF6104
/* 80CF60C8  7F C3 F3 78 */	mr r3, r30
/* 80CF60CC  3C 80 80 CF */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80CF60D0  38 84 5B 98 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80CF60D4  38 A0 09 60 */	li r5, 0x960
/* 80CF60D8  4B 32 43 D8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CF60DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CF60E0  40 82 00 0C */	bne lbl_80CF60EC
/* 80CF60E4  38 60 00 05 */	li r3, 5
/* 80CF60E8  48 00 00 20 */	b lbl_80CF6108
lbl_80CF60EC:
/* 80CF60EC  7F C3 F3 78 */	mr r3, r30
/* 80CF60F0  4B FF FC 69 */	bl Create__14daObjSwBallC_cFv
/* 80CF60F4  2C 03 00 00 */	cmpwi r3, 0
/* 80CF60F8  40 82 00 0C */	bne lbl_80CF6104
/* 80CF60FC  38 60 00 05 */	li r3, 5
/* 80CF6100  48 00 00 08 */	b lbl_80CF6108
lbl_80CF6104:
/* 80CF6104  7F E3 FB 78 */	mr r3, r31
lbl_80CF6108:
/* 80CF6108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF610C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF6110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6114  7C 08 03 A6 */	mtlr r0
/* 80CF6118  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF611C  4E 80 00 20 */	blr 
