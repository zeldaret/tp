lbl_80BEC658:
/* 80BEC658  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BEC65C  7C 08 02 A6 */	mflr r0
/* 80BEC660  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BEC664  39 61 00 30 */	addi r11, r1, 0x30
/* 80BEC668  4B 77 5B 68 */	b _savegpr_26
/* 80BEC66C  7C 7E 1B 78 */	mr r30, r3
/* 80BEC670  7C BF 2B 78 */	mr r31, r5
/* 80BEC674  90 83 09 38 */	stw r4, 0x938(r3)
/* 80BEC678  80 63 09 38 */	lwz r3, 0x938(r3)
/* 80BEC67C  38 81 00 0C */	addi r4, r1, 0xc
/* 80BEC680  38 A1 00 08 */	addi r5, r1, 8
/* 80BEC684  4B 46 EC 74 */	b dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 80BEC688  80 7E 09 38 */	lwz r3, 0x938(r30)
/* 80BEC68C  4B 42 06 D8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BEC690  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BEC694  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BEC698  38 9E 09 3C */	addi r4, r30, 0x93c
/* 80BEC69C  4B 75 9E 14 */	b PSMTXCopy
/* 80BEC6A0  3B 7E 05 40 */	addi r27, r30, 0x540
/* 80BEC6A4  3B 40 00 00 */	li r26, 0
/* 80BEC6A8  3B A0 00 00 */	li r29, 0
/* 80BEC6AC  3C 60 80 BF */	lis r3, l_pennant_flag_pos@ha
/* 80BEC6B0  3B 83 E2 20 */	addi r28, r3, l_pennant_flag_pos@l
lbl_80BEC6B4:
/* 80BEC6B4  7C 7C EA 14 */	add r3, r28, r29
/* 80BEC6B8  C0 03 00 00 */	lfs f0, 0(r3)
/* 80BEC6BC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80BEC6C0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BEC6C4  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80BEC6C8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BEC6CC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80BEC6D0  2C 1A 00 0F */	cmpwi r26, 0xf
/* 80BEC6D4  41 82 00 54 */	beq lbl_80BEC728
/* 80BEC6D8  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80BEC6DC  41 82 00 4C */	beq lbl_80BEC728
/* 80BEC6E0  3C 60 80 BF */	lis r3, lit_3643@ha
/* 80BEC6E4  C0 23 E0 F0 */	lfs f1, lit_3643@l(r3)
/* 80BEC6E8  4B 67 B2 A4 */	b cM_rndFX__Ff
/* 80BEC6EC  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80BEC6F0  EC 00 08 2A */	fadds f0, f0, f1
/* 80BEC6F4  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80BEC6F8  3C 60 80 BF */	lis r3, lit_3643@ha
/* 80BEC6FC  C0 23 E0 F0 */	lfs f1, lit_3643@l(r3)
/* 80BEC700  4B 67 B2 8C */	b cM_rndFX__Ff
/* 80BEC704  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80BEC708  EC 00 08 2A */	fadds f0, f0, f1
/* 80BEC70C  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80BEC710  3C 60 80 BF */	lis r3, lit_3643@ha
/* 80BEC714  C0 23 E0 F0 */	lfs f1, lit_3643@l(r3)
/* 80BEC718  4B 67 B2 74 */	b cM_rndFX__Ff
/* 80BEC71C  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80BEC720  EC 00 08 2A */	fadds f0, f0, f1
/* 80BEC724  D0 1B 00 08 */	stfs f0, 8(r27)
lbl_80BEC728:
/* 80BEC728  3B 5A 00 01 */	addi r26, r26, 1
/* 80BEC72C  2C 1A 00 15 */	cmpwi r26, 0x15
/* 80BEC730  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BEC734  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80BEC738  41 80 FF 7C */	blt lbl_80BEC6B4
/* 80BEC73C  3B 5E 06 40 */	addi r26, r30, 0x640
/* 80BEC740  3B 60 00 00 */	li r27, 0
lbl_80BEC744:
/* 80BEC744  7F C3 F3 78 */	mr r3, r30
/* 80BEC748  7F 44 D3 78 */	mr r4, r26
/* 80BEC74C  7F 65 DB 78 */	mr r5, r27
/* 80BEC750  48 00 03 91 */	bl calcFlagNormal__11FlagCloth_cFP4cXyzi
/* 80BEC754  3B 7B 00 01 */	addi r27, r27, 1
/* 80BEC758  2C 1B 00 15 */	cmpwi r27, 0x15
/* 80BEC75C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80BEC760  41 80 FF E4 */	blt lbl_80BEC744
/* 80BEC764  7F C3 F3 78 */	mr r3, r30
/* 80BEC768  48 00 04 CD */	bl calcFlagNormalBack__11FlagCloth_cFv
/* 80BEC76C  7F C3 F3 78 */	mr r3, r30
/* 80BEC770  7F E4 FB 78 */	mr r4, r31
/* 80BEC774  48 00 05 05 */	bl initCcSphere__11FlagCloth_cFP10fopAc_ac_c
/* 80BEC778  39 61 00 30 */	addi r11, r1, 0x30
/* 80BEC77C  4B 77 5A A0 */	b _restgpr_26
/* 80BEC780  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BEC784  7C 08 03 A6 */	mtlr r0
/* 80BEC788  38 21 00 30 */	addi r1, r1, 0x30
/* 80BEC78C  4E 80 00 20 */	blr 
