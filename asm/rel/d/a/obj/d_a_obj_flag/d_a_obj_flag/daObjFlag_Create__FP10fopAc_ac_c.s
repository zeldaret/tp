lbl_80BEC3F8:
/* 80BEC3F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEC3FC  7C 08 02 A6 */	mflr r0
/* 80BEC400  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEC404  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEC408  93 C1 00 08 */	stw r30, 8(r1)
/* 80BEC40C  7C 7F 1B 78 */	mr r31, r3
/* 80BEC410  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BEC414  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BEC418  40 82 00 40 */	bne lbl_80BEC458
/* 80BEC41C  7F E0 FB 79 */	or. r0, r31, r31
/* 80BEC420  41 82 00 2C */	beq lbl_80BEC44C
/* 80BEC424  7C 1E 03 78 */	mr r30, r0
/* 80BEC428  4B 42 C7 3C */	b __ct__10fopAc_ac_cFv
/* 80BEC42C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80BEC430  3C 80 80 BF */	lis r4, __ct__11FlagJoint_cFv@ha
/* 80BEC434  38 84 C4 E0 */	addi r4, r4, __ct__11FlagJoint_cFv@l
/* 80BEC438  3C A0 80 BF */	lis r5, __dt__11FlagJoint_cFv@ha
/* 80BEC43C  38 A5 C3 BC */	addi r5, r5, __dt__11FlagJoint_cFv@l
/* 80BEC440  38 C0 00 14 */	li r6, 0x14
/* 80BEC444  38 E0 00 04 */	li r7, 4
/* 80BEC448  4B 77 59 18 */	b __construct_array
lbl_80BEC44C:
/* 80BEC44C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BEC450  60 00 00 08 */	ori r0, r0, 8
/* 80BEC454  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BEC458:
/* 80BEC458  38 7F 05 70 */	addi r3, r31, 0x570
/* 80BEC45C  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BEC460  38 84 C5 54 */	addi r4, r4, stringBase0@l
/* 80BEC464  38 84 00 16 */	addi r4, r4, 0x16
/* 80BEC468  4B 44 0A 54 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BEC46C  2C 03 00 04 */	cmpwi r3, 4
/* 80BEC470  41 82 00 08 */	beq lbl_80BEC478
/* 80BEC474  48 00 00 54 */	b lbl_80BEC4C8
lbl_80BEC478:
/* 80BEC478  7F E3 FB 78 */	mr r3, r31
/* 80BEC47C  4B 44 53 F4 */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 80BEC480  7C 64 1B 78 */	mr r4, r3
/* 80BEC484  38 7F 05 78 */	addi r3, r31, 0x578
/* 80BEC488  4B 44 0A 34 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BEC48C  7C 7E 1B 78 */	mr r30, r3
/* 80BEC490  2C 1E 00 04 */	cmpwi r30, 4
/* 80BEC494  40 82 00 30 */	bne lbl_80BEC4C4
/* 80BEC498  7F E3 FB 78 */	mr r3, r31
/* 80BEC49C  3C 80 80 BF */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha
/* 80BEC4A0  38 84 C0 B8 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l
/* 80BEC4A4  38 A0 40 00 */	li r5, 0x4000
/* 80BEC4A8  4B 42 E0 08 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BEC4AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BEC4B0  40 82 00 0C */	bne lbl_80BEC4BC
/* 80BEC4B4  38 60 00 05 */	li r3, 5
/* 80BEC4B8  48 00 00 10 */	b lbl_80BEC4C8
lbl_80BEC4BC:
/* 80BEC4BC  7F E3 FB 78 */	mr r3, r31
/* 80BEC4C0  4B FF F2 B9 */	bl create_init__11daObjFlag_cFv
lbl_80BEC4C4:
/* 80BEC4C4  7F C3 F3 78 */	mr r3, r30
lbl_80BEC4C8:
/* 80BEC4C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEC4CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BEC4D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEC4D4  7C 08 03 A6 */	mtlr r0
/* 80BEC4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEC4DC  4E 80 00 20 */	blr 
