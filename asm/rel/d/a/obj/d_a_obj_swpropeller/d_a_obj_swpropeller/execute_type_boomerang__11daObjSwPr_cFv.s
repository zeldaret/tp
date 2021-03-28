lbl_8059AB9C:
/* 8059AB9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8059ABA0  7C 08 02 A6 */	mflr r0
/* 8059ABA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8059ABA8  39 61 00 40 */	addi r11, r1, 0x40
/* 8059ABAC  4B DC 76 2C */	b _savegpr_28
/* 8059ABB0  7C 7E 1B 78 */	mr r30, r3
/* 8059ABB4  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 8059ABB8  4B AE 98 A8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8059ABBC  30 03 FF FF */	addic r0, r3, -1
/* 8059ABC0  7C 00 19 10 */	subfe r0, r0, r3
/* 8059ABC4  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8059ABC8  A8 7E 08 2C */	lha r3, 0x82c(r30)
/* 8059ABCC  A8 1E 08 28 */	lha r0, 0x828(r30)
/* 8059ABD0  7C 03 02 14 */	add r0, r3, r0
/* 8059ABD4  B0 1E 08 2C */	sth r0, 0x82c(r30)
/* 8059ABD8  38 7E 08 28 */	addi r3, r30, 0x828
/* 8059ABDC  38 80 00 00 */	li r4, 0
/* 8059ABE0  A8 BE 08 2A */	lha r5, 0x82a(r30)
/* 8059ABE4  A8 1E 08 2E */	lha r0, 0x82e(r30)
/* 8059ABE8  7C 05 03 D6 */	divw r0, r5, r0
/* 8059ABEC  7C 05 07 34 */	extsh r5, r0
/* 8059ABF0  4B CD 5F A0 */	b cLib_chaseAngleS__FPsss
/* 8059ABF4  3B 80 00 00 */	li r28, 0
/* 8059ABF8  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 8059ABFC  4B AE 98 64 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8059AC00  28 03 00 00 */	cmplwi r3, 0
/* 8059AC04  41 82 00 74 */	beq lbl_8059AC78
/* 8059AC08  88 1E 08 38 */	lbz r0, 0x838(r30)
/* 8059AC0C  28 00 00 00 */	cmplwi r0, 0
/* 8059AC10  40 82 00 68 */	bne lbl_8059AC78
/* 8059AC14  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 8059AC18  4B AE 98 E0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8059AC1C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8059AC20  41 82 00 44 */	beq lbl_8059AC64
/* 8059AC24  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8059AC28  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8059AC2C  41 82 00 28 */	beq lbl_8059AC54
/* 8059AC30  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 8059AC34  4B AE 99 14 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 8059AC38  28 03 00 00 */	cmplwi r3, 0
/* 8059AC3C  41 82 00 18 */	beq lbl_8059AC54
/* 8059AC40  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 8059AC44  4B AE 99 04 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 8059AC48  88 03 00 75 */	lbz r0, 0x75(r3)
/* 8059AC4C  28 00 00 03 */	cmplwi r0, 3
/* 8059AC50  41 82 00 10 */	beq lbl_8059AC60
lbl_8059AC54:
/* 8059AC54  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8059AC58  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8059AC5C  41 82 00 08 */	beq lbl_8059AC64
lbl_8059AC60:
/* 8059AC60  3B 80 00 01 */	li r28, 1
lbl_8059AC64:
/* 8059AC64  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 8059AC68  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 8059AC6C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8059AC70  7D 89 03 A6 */	mtctr r12
/* 8059AC74  4E 80 04 21 */	bctrl 
lbl_8059AC78:
/* 8059AC78  2C 1C 00 00 */	cmpwi r28, 0
/* 8059AC7C  41 82 00 C0 */	beq lbl_8059AD3C
/* 8059AC80  88 7E 08 39 */	lbz r3, 0x839(r30)
/* 8059AC84  38 03 00 01 */	addi r0, r3, 1
/* 8059AC88  98 1E 08 39 */	stb r0, 0x839(r30)
/* 8059AC8C  38 00 20 00 */	li r0, 0x2000
/* 8059AC90  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 8059AC94  B0 1E 08 28 */	sth r0, 0x828(r30)
/* 8059AC98  7F C3 F3 78 */	mr r3, r30
/* 8059AC9C  4B FF FE 69 */	bl setRotateTime__11daObjSwPr_cFv
/* 8059ACA0  B0 7E 08 2E */	sth r3, 0x82e(r30)
/* 8059ACA4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8059ACA8  7C 03 07 74 */	extsb r3, r0
/* 8059ACAC  4B A9 23 C0 */	b dComIfGp_getReverb__Fi
/* 8059ACB0  7C 67 1B 78 */	mr r7, r3
/* 8059ACB4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800E3@ha */
/* 8059ACB8  38 03 00 E3 */	addi r0, r3, 0x00E3 /* 0x000800E3@l */
/* 8059ACBC  90 01 00 08 */	stw r0, 8(r1)
/* 8059ACC0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8059ACC4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8059ACC8  80 63 00 00 */	lwz r3, 0(r3)
/* 8059ACCC  38 81 00 08 */	addi r4, r1, 8
/* 8059ACD0  38 BE 05 38 */	addi r5, r30, 0x538
/* 8059ACD4  38 C0 00 00 */	li r6, 0
/* 8059ACD8  3D 00 80 5A */	lis r8, lit_3983@ha
/* 8059ACDC  C0 28 B3 40 */	lfs f1, lit_3983@l(r8)
/* 8059ACE0  FC 40 08 90 */	fmr f2, f1
/* 8059ACE4  3D 00 80 5A */	lis r8, lit_3984@ha
/* 8059ACE8  C0 68 B3 44 */	lfs f3, lit_3984@l(r8)
/* 8059ACEC  FC 80 18 90 */	fmr f4, f3
/* 8059ACF0  39 00 00 00 */	li r8, 0
/* 8059ACF4  4B D1 0C 90 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8059ACF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059ACFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059AD00  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8059AD04  3C 80 80 5A */	lis r4, struct_8059B360+0x0@ha
/* 8059AD08  38 84 B3 60 */	addi r4, r4, struct_8059B360+0x0@l
/* 8059AD0C  38 84 00 19 */	addi r4, r4, 0x19
/* 8059AD10  4B DC DC 84 */	b strcmp
/* 8059AD14  2C 03 00 00 */	cmpwi r3, 0
/* 8059AD18  40 82 00 1C */	bne lbl_8059AD34
/* 8059AD1C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8059AD20  7C 00 07 75 */	extsb. r0, r0
/* 8059AD24  40 82 00 10 */	bne lbl_8059AD34
/* 8059AD28  38 00 00 00 */	li r0, 0
/* 8059AD2C  B0 1E 08 32 */	sth r0, 0x832(r30)
/* 8059AD30  48 00 00 0C */	b lbl_8059AD3C
lbl_8059AD34:
/* 8059AD34  38 00 00 08 */	li r0, 8
/* 8059AD38  B0 1E 08 32 */	sth r0, 0x832(r30)
lbl_8059AD3C:
/* 8059AD3C  38 7E 08 3A */	addi r3, r30, 0x83a
/* 8059AD40  48 00 05 49 */	bl func_8059B288
/* 8059AD44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059AD48  41 82 00 0C */	beq lbl_8059AD54
/* 8059AD4C  38 00 20 00 */	li r0, 0x2000
/* 8059AD50  B0 1E 08 28 */	sth r0, 0x828(r30)
lbl_8059AD54:
/* 8059AD54  7F C3 F3 78 */	mr r3, r30
/* 8059AD58  4B FF FD BD */	bl switchCtrl__11daObjSwPr_cFv
/* 8059AD5C  7F C3 F3 78 */	mr r3, r30
/* 8059AD60  4B FF F8 C5 */	bl setBaseMtx__11daObjSwPr_cFv
/* 8059AD64  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 8059AD68  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 8059AD6C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8059AD70  C0 03 00 04 */	lfs f0, 4(r3)
/* 8059AD74  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8059AD78  C0 03 00 08 */	lfs f0, 8(r3)
/* 8059AD7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8059AD80  38 61 00 0C */	addi r3, r1, 0xc
/* 8059AD84  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8059AD88  38 A1 00 18 */	addi r5, r1, 0x18
/* 8059AD8C  4B CC BD 58 */	b __pl__4cXyzCFRC3Vec
/* 8059AD90  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 8059AD94  38 81 00 0C */	addi r4, r1, 0xc
/* 8059AD98  4B CD 44 44 */	b SetC__8cM3dGCylFRC4cXyz
/* 8059AD9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059ADA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059ADA4  38 63 23 3C */	addi r3, r3, 0x233c
/* 8059ADA8  38 9E 05 B0 */	addi r4, r30, 0x5b0
/* 8059ADAC  4B CC 9D FC */	b Set__4cCcSFP8cCcD_Obj
/* 8059ADB0  9B FE 08 38 */	stb r31, 0x838(r30)
/* 8059ADB4  39 61 00 40 */	addi r11, r1, 0x40
/* 8059ADB8  4B DC 74 6C */	b _restgpr_28
/* 8059ADBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059ADC0  7C 08 03 A6 */	mtlr r0
/* 8059ADC4  38 21 00 40 */	addi r1, r1, 0x40
/* 8059ADC8  4E 80 00 20 */	blr 
