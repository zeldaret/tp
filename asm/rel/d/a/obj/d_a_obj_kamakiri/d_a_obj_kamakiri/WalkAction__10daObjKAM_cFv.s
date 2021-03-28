lbl_80C36138:
/* 80C36138  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C3613C  7C 08 02 A6 */	mflr r0
/* 80C36140  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C36144  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C36148  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C3614C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C36150  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C36154  7C 7E 1B 78 */	mr r30, r3
/* 80C36158  3C 60 80 C4 */	lis r3, lit_3775@ha
/* 80C3615C  3B E3 84 08 */	addi r31, r3, lit_3775@l
/* 80C36160  38 60 00 00 */	li r3, 0
/* 80C36164  7C 64 1B 78 */	mr r4, r3
/* 80C36168  38 00 00 03 */	li r0, 3
/* 80C3616C  7C 09 03 A6 */	mtctr r0
lbl_80C36170:
/* 80C36170  38 C3 09 82 */	addi r6, r3, 0x982
/* 80C36174  7C BE 32 AE */	lhax r5, r30, r6
/* 80C36178  38 05 FF FF */	addi r0, r5, -1
/* 80C3617C  7C 1E 33 2E */	sthx r0, r30, r6
/* 80C36180  7C 1E 32 AE */	lhax r0, r30, r6
/* 80C36184  2C 00 00 00 */	cmpwi r0, 0
/* 80C36188  41 81 00 08 */	bgt lbl_80C36190
/* 80C3618C  7C 9E 33 2E */	sthx r4, r30, r6
lbl_80C36190:
/* 80C36190  38 63 00 02 */	addi r3, r3, 2
/* 80C36194  42 00 FF DC */	bdnz lbl_80C36170
/* 80C36198  88 1E 09 81 */	lbz r0, 0x981(r30)
/* 80C3619C  2C 00 00 01 */	cmpwi r0, 1
/* 80C361A0  41 82 00 9C */	beq lbl_80C3623C
/* 80C361A4  40 80 01 6C */	bge lbl_80C36310
/* 80C361A8  2C 00 00 00 */	cmpwi r0, 0
/* 80C361AC  40 80 00 08 */	bge lbl_80C361B4
/* 80C361B0  48 00 01 60 */	b lbl_80C36310
lbl_80C361B4:
/* 80C361B4  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C361B8  38 63 84 FC */	addi r3, r3, stringBase0@l
/* 80C361BC  38 80 00 07 */	li r4, 7
/* 80C361C0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C361C4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C361C8  3C A5 00 02 */	addis r5, r5, 2
/* 80C361CC  38 C0 00 80 */	li r6, 0x80
/* 80C361D0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C361D4  4B 40 61 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C361D8  7C 64 1B 78 */	mr r4, r3
/* 80C361DC  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80C361E0  38 A0 00 02 */	li r5, 2
/* 80C361E4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C361E8  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C361EC  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C361F0  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80C361F4  4B 3D AC 7C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C361F8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80C361FC  D0 1E 09 88 */	stfs f0, 0x988(r30)
/* 80C36200  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C36204  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C36208  D0 1E 09 8C */	stfs f0, 0x98c(r30)
/* 80C3620C  88 7E 09 81 */	lbz r3, 0x981(r30)
/* 80C36210  38 03 00 01 */	addi r0, r3, 1
/* 80C36214  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C36218  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C3621C  4B 63 17 38 */	b cM_rndF__Ff
/* 80C36220  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C36224  EC 00 08 2A */	fadds f0, f0, f1
/* 80C36228  FC 00 00 1E */	fctiwz f0, f0
/* 80C3622C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C36230  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C36234  B0 1E 09 84 */	sth r0, 0x984(r30)
/* 80C36238  48 00 00 D8 */	b lbl_80C36310
lbl_80C3623C:
/* 80C3623C  A8 1E 09 82 */	lha r0, 0x982(r30)
/* 80C36240  2C 00 00 00 */	cmpwi r0, 0
/* 80C36244  40 82 00 58 */	bne lbl_80C3629C
/* 80C36248  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C3624C  4B 63 17 40 */	b cM_rndFX__Ff
/* 80C36250  FF E0 08 90 */	fmr f31, f1
/* 80C36254  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C36258  4B 63 17 34 */	b cM_rndFX__Ff
/* 80C3625C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C36260  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C36264  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C36268  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80C3626C  FC 20 08 18 */	frsp f1, f1
/* 80C36270  FC 40 F8 18 */	frsp f2, f31
/* 80C36274  4B 63 14 00 */	b cM_atan2s__Fff
/* 80C36278  B0 7E 09 90 */	sth r3, 0x990(r30)
/* 80C3627C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C36280  4B 63 16 D4 */	b cM_rndF__Ff
/* 80C36284  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C36288  EC 00 08 2A */	fadds f0, f0, f1
/* 80C3628C  FC 00 00 1E */	fctiwz f0, f0
/* 80C36290  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C36294  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C36298  B0 1E 09 82 */	sth r0, 0x982(r30)
lbl_80C3629C:
/* 80C3629C  A8 1E 09 84 */	lha r0, 0x984(r30)
/* 80C362A0  2C 00 00 00 */	cmpwi r0, 0
/* 80C362A4  40 82 00 6C */	bne lbl_80C36310
/* 80C362A8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C362AC  4B 63 16 A8 */	b cM_rndF__Ff
/* 80C362B0  FC 00 08 1E */	fctiwz f0, f1
/* 80C362B4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C362B8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C362BC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80C362C0  40 80 00 18 */	bge lbl_80C362D8
/* 80C362C4  38 00 00 01 */	li r0, 1
/* 80C362C8  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80C362CC  38 00 00 00 */	li r0, 0
/* 80C362D0  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C362D4  48 00 00 3C */	b lbl_80C36310
lbl_80C362D8:
/* 80C362D8  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80C362DC  40 80 00 14 */	bge lbl_80C362F0
/* 80C362E0  38 00 00 00 */	li r0, 0
/* 80C362E4  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80C362E8  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C362EC  48 00 00 24 */	b lbl_80C36310
lbl_80C362F0:
/* 80C362F0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C362F4  4B 63 16 60 */	b cM_rndF__Ff
/* 80C362F8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C362FC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C36300  FC 00 00 1E */	fctiwz f0, f0
/* 80C36304  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C36308  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C3630C  B0 1E 09 84 */	sth r0, 0x984(r30)
lbl_80C36310:
/* 80C36310  7F C3 F3 78 */	mr r3, r30
/* 80C36314  4B FF F9 DD */	bl WallWalk__10daObjKAM_cFv
/* 80C36318  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C3631C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C36320  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C36324  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C36328  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C3632C  7C 08 03 A6 */	mtlr r0
/* 80C36330  38 21 00 40 */	addi r1, r1, 0x40
/* 80C36334  4E 80 00 20 */	blr 
