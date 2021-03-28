lbl_80C55488:
/* 80C55488  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80C5548C  7C 08 02 A6 */	mflr r0
/* 80C55490  90 01 01 54 */	stw r0, 0x154(r1)
/* 80C55494  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 80C55498  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 80C5549C  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 80C554A0  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 80C554A4  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 80C554A8  F3 A1 01 28 */	psq_st f29, 296(r1), 0, 0 /* qr0 */
/* 80C554AC  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 80C554B0  F3 81 01 18 */	psq_st f28, 280(r1), 0, 0 /* qr0 */
/* 80C554B4  39 61 01 10 */	addi r11, r1, 0x110
/* 80C554B8  4B 70 CD 08 */	b _savegpr_22
/* 80C554BC  7C 7C 1B 78 */	mr r28, r3
/* 80C554C0  3C 80 80 C5 */	lis r4, lit_3916@ha
/* 80C554C4  3B C4 5A 10 */	addi r30, r4, lit_3916@l
/* 80C554C8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C554CC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C554D0  40 82 00 5C */	bne lbl_80C5552C
/* 80C554D4  7F 80 E3 79 */	or. r0, r28, r28
/* 80C554D8  41 82 00 48 */	beq lbl_80C55520
/* 80C554DC  7C 16 03 78 */	mr r22, r0
/* 80C554E0  4B 3C 36 84 */	b __ct__10fopAc_ac_cFv
/* 80C554E4  38 76 05 7C */	addi r3, r22, 0x57c
/* 80C554E8  3C 80 80 C5 */	lis r4, __ct__5wd_ssFv@ha
/* 80C554EC  38 84 5A 04 */	addi r4, r4, __ct__5wd_ssFv@l
/* 80C554F0  3C A0 80 C5 */	lis r5, __dt__5wd_ssFv@ha
/* 80C554F4  38 A5 59 C8 */	addi r5, r5, __dt__5wd_ssFv@l
/* 80C554F8  38 C0 00 54 */	li r6, 0x54
/* 80C554FC  38 E0 02 00 */	li r7, 0x200
/* 80C55500  4B 70 C8 60 */	b __construct_array
/* 80C55504  3C 60 80 C5 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 80C55508  38 03 5B 2C */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 80C5550C  3C 96 00 01 */	addis r4, r22, 1
/* 80C55510  90 04 AD 7C */	stw r0, -0x5284(r4)
/* 80C55514  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat0_c@ha
/* 80C55518  38 03 32 5C */	addi r0, r3, __vt__19mDoExt_3DlineMat0_c@l
/* 80C5551C  90 04 AD 7C */	stw r0, -0x5284(r4)
lbl_80C55520:
/* 80C55520  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80C55524  60 00 00 08 */	ori r0, r0, 8
/* 80C55528  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80C5552C:
/* 80C5552C  38 7C 05 68 */	addi r3, r28, 0x568
/* 80C55530  3C 80 80 C5 */	lis r4, stringBase0@ha
/* 80C55534  38 84 5A C0 */	addi r4, r4, stringBase0@l
/* 80C55538  38 84 00 07 */	addi r4, r4, 7
/* 80C5553C  4B 3D 79 80 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C55540  7C 7B 1B 78 */	mr r27, r3
/* 80C55544  2C 1B 00 04 */	cmpwi r27, 4
/* 80C55548  40 82 04 44 */	bne lbl_80C5598C
/* 80C5554C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80C55550  98 1C 05 70 */	stb r0, 0x570(r28)
/* 80C55554  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80C55558  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C5555C  98 1C 05 71 */	stb r0, 0x571(r28)
/* 80C55560  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80C55564  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C55568  98 1C 05 72 */	stb r0, 0x572(r28)
/* 80C5556C  88 1C 05 72 */	lbz r0, 0x572(r28)
/* 80C55570  28 00 00 FF */	cmplwi r0, 0xff
/* 80C55574  40 82 00 0C */	bne lbl_80C55580
/* 80C55578  38 00 00 00 */	li r0, 0
/* 80C5557C  98 1C 05 72 */	stb r0, 0x572(r28)
lbl_80C55580:
/* 80C55580  88 7C 05 70 */	lbz r3, 0x570(r28)
/* 80C55584  38 03 00 01 */	addi r0, r3, 1
/* 80C55588  3C 7C 00 01 */	addis r3, r28, 1
/* 80C5558C  90 03 AD 98 */	stw r0, -0x5268(r3)
/* 80C55590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C55594  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C55598  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C5559C  38 7D 3E E8 */	addi r3, r29, 0x3ee8
/* 80C555A0  81 9D 3E E8 */	lwz r12, 0x3ee8(r29)
/* 80C555A4  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80C555A8  7D 89 03 A6 */	mtctr r12
/* 80C555AC  4E 80 04 21 */	bctrl 
/* 80C555B0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C555B4  54 00 87 7F */	rlwinm. r0, r0, 0x10, 0x1d, 0x1f
/* 80C555B8  40 82 00 3C */	bne lbl_80C555F4
/* 80C555BC  3C 7C 00 01 */	addis r3, r28, 1
/* 80C555C0  80 03 AD 98 */	lwz r0, -0x5268(r3)
/* 80C555C4  54 00 08 3C */	slwi r0, r0, 1
/* 80C555C8  90 03 AD 98 */	stw r0, -0x5268(r3)
/* 80C555CC  38 7D 3E C8 */	addi r3, r29, 0x3ec8
/* 80C555D0  3C 80 80 C5 */	lis r4, stringBase0@ha
/* 80C555D4  38 84 5A C0 */	addi r4, r4, stringBase0@l
/* 80C555D8  38 84 00 0E */	addi r4, r4, 0xe
/* 80C555DC  4B 71 33 B8 */	b strcmp
/* 80C555E0  2C 03 00 00 */	cmpwi r3, 0
/* 80C555E4  40 82 00 10 */	bne lbl_80C555F4
/* 80C555E8  38 00 00 01 */	li r0, 1
/* 80C555EC  3C 7C 00 01 */	addis r3, r28, 1
/* 80C555F0  98 03 AD B1 */	stb r0, -0x524f(r3)
lbl_80C555F4:
/* 80C555F4  3C 7C 00 01 */	addis r3, r28, 1
/* 80C555F8  80 03 AD 98 */	lwz r0, -0x5268(r3)
/* 80C555FC  2C 00 02 00 */	cmpwi r0, 0x200
/* 80C55600  40 81 00 0C */	ble lbl_80C5560C
/* 80C55604  38 00 02 00 */	li r0, 0x200
/* 80C55608  90 03 AD 98 */	stw r0, -0x5268(r3)
lbl_80C5560C:
/* 80C5560C  7F 83 E3 78 */	mr r3, r28
/* 80C55610  3C 80 80 C5 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80C55614  38 84 51 8C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80C55618  3C DC 00 01 */	addis r6, r28, 1
/* 80C5561C  80 A6 AD 98 */	lwz r5, -0x5268(r6)
/* 80C55620  88 06 AD B1 */	lbz r0, -0x524f(r6)
/* 80C55624  28 00 00 00 */	cmplwi r0, 0
/* 80C55628  38 00 01 E8 */	li r0, 0x1e8
/* 80C5562C  41 82 00 08 */	beq lbl_80C55634
/* 80C55630  38 00 03 20 */	li r0, 0x320
lbl_80C55634:
/* 80C55634  7C A5 01 D6 */	mullw r5, r5, r0
/* 80C55638  4B 3C 4E 78 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C5563C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C55640  40 82 00 0C */	bne lbl_80C5564C
/* 80C55644  38 60 00 05 */	li r3, 5
/* 80C55648  48 00 03 48 */	b lbl_80C55990
lbl_80C5564C:
/* 80C5564C  80 7C 05 7C */	lwz r3, 0x57c(r28)
/* 80C55650  38 03 00 24 */	addi r0, r3, 0x24
/* 80C55654  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80C55658  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80C5565C  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80C55660  88 1C 05 71 */	lbz r0, 0x571(r28)
/* 80C55664  C8 3E 00 80 */	lfd f1, 0x80(r30)
/* 80C55668  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80C5566C  3C 00 43 30 */	lis r0, 0x4330
/* 80C55670  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80C55674  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 80C55678  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C5567C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C55680  EF 83 00 2A */	fadds f28, f3, f0
/* 80C55684  FC 20 E0 50 */	fneg f1, f28
/* 80C55688  7F 83 E3 78 */	mr r3, r28
/* 80C5568C  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 80C55690  FC 60 08 90 */	fmr f3, f1
/* 80C55694  4B 3C 4E 94 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80C55698  7F 83 E3 78 */	mr r3, r28
/* 80C5569C  FC 20 E0 90 */	fmr f1, f28
/* 80C556A0  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 80C556A4  FC 60 E0 90 */	fmr f3, f28
/* 80C556A8  4B 3C 4E 90 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80C556AC  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80C556B0  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80C556B4  C0 7C 04 D8 */	lfs f3, 0x4d8(r28)
/* 80C556B8  38 60 00 00 */	li r3, 0
/* 80C556BC  4B 61 B7 A0 */	b MtxTrans__FfffUc
/* 80C556C0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80C556C4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C556C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C556CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C556D0  38 61 00 74 */	addi r3, r1, 0x74
/* 80C556D4  4B 42 1E A8 */	b __ct__11dBgS_GndChkFv
/* 80C556D8  38 61 00 20 */	addi r3, r1, 0x20
/* 80C556DC  4B 42 20 D4 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 80C556E0  3B 40 00 00 */	li r26, 0
/* 80C556E4  C3 9E 00 44 */	lfs f28, 0x44(r30)
/* 80C556E8  88 1C 05 72 */	lbz r0, 0x572(r28)
/* 80C556EC  28 00 00 01 */	cmplwi r0, 1
/* 80C556F0  40 82 00 08 */	bne lbl_80C556F8
/* 80C556F4  C3 9E 00 A0 */	lfs f28, 0xa0(r30)
lbl_80C556F8:
/* 80C556F8  3B 20 00 00 */	li r25, 0
/* 80C556FC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C55700  3B E3 07 68 */	addi r31, r3, calc_mtx@l
/* 80C55704  C3 BE 00 44 */	lfs f29, 0x44(r30)
/* 80C55708  C3 DE 00 7C */	lfs f30, 0x7c(r30)
/* 80C5570C  CB FE 00 80 */	lfd f31, 0x80(r30)
/* 80C55710  3E E0 43 30 */	lis r23, 0x4330
/* 80C55714  3F 1C 00 01 */	addis r24, r28, 1
/* 80C55718  48 00 01 D8 */	b lbl_80C558F0
lbl_80C5571C:
/* 80C5571C  4B 61 B8 00 */	b MtxPush__Fv
/* 80C55720  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80C55724  4B 61 22 30 */	b cM_rndF__Ff
/* 80C55728  FC 00 08 1E */	fctiwz f0, f1
/* 80C5572C  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80C55730  80 81 00 CC */	lwz r4, 0xcc(r1)
/* 80C55734  80 7F 00 00 */	lwz r3, 0(r31)
/* 80C55738  4B 3B 6C FC */	b mDoMtx_YrotM__FPA4_fs
/* 80C5573C  38 61 00 14 */	addi r3, r1, 0x14
/* 80C55740  1C 19 00 54 */	mulli r0, r25, 0x54
/* 80C55744  7E DC 02 14 */	add r22, r28, r0
/* 80C55748  38 96 05 8C */	addi r4, r22, 0x58c
/* 80C5574C  4B 61 B7 A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C55750  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80C55754  4B 61 22 00 */	b cM_rndF__Ff
/* 80C55758  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C5575C  FC 00 08 18 */	frsp f0, f1
/* 80C55760  EC 00 00 32 */	fmuls f0, f0, f0
/* 80C55764  EC 3D 00 28 */	fsubs f1, f29, f0
/* 80C55768  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C5576C  88 1C 05 71 */	lbz r0, 0x571(r28)
/* 80C55770  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C55774  92 E1 00 D0 */	stw r23, 0xd0(r1)
/* 80C55778  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 80C5577C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80C55780  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80C55784  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C55788  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C5578C  4B 61 B7 CC */	b MtxPull__Fv
/* 80C55790  C0 16 05 8C */	lfs f0, 0x58c(r22)
/* 80C55794  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C55798  C0 16 05 90 */	lfs f0, 0x590(r22)
/* 80C5579C  EC 1E 00 2A */	fadds f0, f30, f0
/* 80C557A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C557A4  C0 16 05 94 */	lfs f0, 0x594(r22)
/* 80C557A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C557AC  38 61 00 74 */	addi r3, r1, 0x74
/* 80C557B0  38 81 00 08 */	addi r4, r1, 8
/* 80C557B4  4B 61 25 58 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80C557B8  38 61 00 20 */	addi r3, r1, 0x20
/* 80C557BC  38 81 00 08 */	addi r4, r1, 8
/* 80C557C0  4B 61 25 4C */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80C557C4  7F A3 EB 78 */	mr r3, r29
/* 80C557C8  38 81 00 20 */	addi r4, r1, 0x20
/* 80C557CC  4B 41 EC D4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80C557D0  D0 36 05 90 */	stfs f1, 0x590(r22)
/* 80C557D4  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80C557D8  4B 61 21 7C */	b cM_rndF__Ff
/* 80C557DC  FC 00 08 1E */	fctiwz f0, f1
/* 80C557E0  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 80C557E4  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 80C557E8  B0 16 05 B4 */	sth r0, 0x5b4(r22)
/* 80C557EC  2C 19 00 00 */	cmpwi r25, 0
/* 80C557F0  40 82 00 0C */	bne lbl_80C557FC
/* 80C557F4  C0 16 05 90 */	lfs f0, 0x590(r22)
/* 80C557F8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
lbl_80C557FC:
/* 80C557FC  7F A3 EB 78 */	mr r3, r29
/* 80C55800  38 81 00 74 */	addi r4, r1, 0x74
/* 80C55804  4B 41 EC 9C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80C55808  D0 36 05 9C */	stfs f1, 0x59c(r22)
/* 80C5580C  7F 83 E3 78 */	mr r3, r28
/* 80C55810  7F 24 CB 78 */	mr r4, r25
/* 80C55814  4B FF FA AD */	bl set_pos_check__FP12obj_lp_classi
/* 80C55818  2C 03 00 00 */	cmpwi r3, 0
/* 80C5581C  41 82 00 A0 */	beq lbl_80C558BC
/* 80C55820  C0 36 05 90 */	lfs f1, 0x590(r22)
/* 80C55824  C0 16 05 9C */	lfs f0, 0x59c(r22)
/* 80C55828  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C5582C  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80C55830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C55834  40 81 00 88 */	ble lbl_80C558BC
/* 80C55838  3C 7C 00 01 */	addis r3, r28, 1
/* 80C5583C  88 03 AD B1 */	lbz r0, -0x524f(r3)
/* 80C55840  28 00 00 00 */	cmplwi r0, 0
/* 80C55844  41 82 00 10 */	beq lbl_80C55854
/* 80C55848  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80C5584C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C55850  40 80 00 6C */	bge lbl_80C558BC
lbl_80C55854:
/* 80C55854  38 00 00 01 */	li r0, 1
/* 80C55858  98 16 05 CA */	stb r0, 0x5ca(r22)
/* 80C5585C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80C55860  4B 61 21 2C */	b cM_rndFX__Ff
/* 80C55864  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C55868  EC 00 08 2A */	fadds f0, f0, f1
/* 80C5586C  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80C55870  D0 16 05 B8 */	stfs f0, 0x5b8(r22)
/* 80C55874  C0 16 05 8C */	lfs f0, 0x58c(r22)
/* 80C55878  D0 16 05 80 */	stfs f0, 0x580(r22)
/* 80C5587C  C0 16 05 90 */	lfs f0, 0x590(r22)
/* 80C55880  D0 16 05 84 */	stfs f0, 0x584(r22)
/* 80C55884  C0 16 05 94 */	lfs f0, 0x594(r22)
/* 80C55888  D0 16 05 88 */	stfs f0, 0x588(r22)
/* 80C5588C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80C55890  4B 61 20 FC */	b cM_rndFX__Ff
/* 80C55894  C0 16 05 8C */	lfs f0, 0x58c(r22)
/* 80C55898  EC 00 08 2A */	fadds f0, f0, f1
/* 80C5589C  D0 16 05 98 */	stfs f0, 0x598(r22)
/* 80C558A0  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80C558A4  4B 61 20 E8 */	b cM_rndFX__Ff
/* 80C558A8  C0 16 05 94 */	lfs f0, 0x594(r22)
/* 80C558AC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C558B0  D0 16 05 A0 */	stfs f0, 0x5a0(r22)
/* 80C558B4  93 36 05 CC */	stw r25, 0x5cc(r22)
/* 80C558B8  48 00 00 34 */	b lbl_80C558EC
lbl_80C558BC:
/* 80C558BC  3B 5A 00 01 */	addi r26, r26, 1
/* 80C558C0  2C 1A 27 10 */	cmpwi r26, 0x2710
/* 80C558C4  3B 39 FF FF */	addi r25, r25, -1
/* 80C558C8  40 81 00 24 */	ble lbl_80C558EC
/* 80C558CC  38 61 00 20 */	addi r3, r1, 0x20
/* 80C558D0  38 80 FF FF */	li r4, -1
/* 80C558D4  4B 42 1F 74 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80C558D8  38 61 00 74 */	addi r3, r1, 0x74
/* 80C558DC  38 80 FF FF */	li r4, -1
/* 80C558E0  4B 42 1D 10 */	b __dt__11dBgS_GndChkFv
/* 80C558E4  38 60 00 05 */	li r3, 5
/* 80C558E8  48 00 00 A8 */	b lbl_80C55990
lbl_80C558EC:
/* 80C558EC  3B 39 00 01 */	addi r25, r25, 1
lbl_80C558F0:
/* 80C558F0  80 18 AD 98 */	lwz r0, -0x5268(r24)
/* 80C558F4  7C 19 00 00 */	cmpw r25, r0
/* 80C558F8  41 80 FE 24 */	blt lbl_80C5571C
/* 80C558FC  28 1C 00 00 */	cmplwi r28, 0
/* 80C55900  41 82 00 0C */	beq lbl_80C5590C
/* 80C55904  80 1C 00 04 */	lwz r0, 4(r28)
/* 80C55908  48 00 00 08 */	b lbl_80C55910
lbl_80C5590C:
/* 80C5590C  38 00 FF FF */	li r0, -1
lbl_80C55910:
/* 80C55910  B0 1C 05 74 */	sth r0, 0x574(r28)
/* 80C55914  38 00 00 0A */	li r0, 0xa
/* 80C55918  3C 7C 00 01 */	addis r3, r28, 1
/* 80C5591C  98 03 AD B0 */	stb r0, -0x5250(r3)
/* 80C55920  7F 83 E3 78 */	mr r3, r28
/* 80C55924  4B FF F4 1D */	bl daObj_Lp_Execute__FP12obj_lp_class
/* 80C55928  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C5592C  38 63 5A C0 */	addi r3, r3, stringBase0@l
/* 80C55930  38 63 00 07 */	addi r3, r3, 7
/* 80C55934  38 80 00 03 */	li r4, 3
/* 80C55938  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C5593C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C55940  3C A5 00 02 */	addis r5, r5, 2
/* 80C55944  38 C0 00 80 */	li r6, 0x80
/* 80C55948  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C5594C  4B 3E 69 A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C55950  7C 64 1B 78 */	mr r4, r3
/* 80C55954  7F A3 EB 78 */	mr r3, r29
/* 80C55958  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80C5595C  7C 05 07 74 */	extsb r5, r0
/* 80C55960  38 C0 00 00 */	li r6, 0
/* 80C55964  4B 3D 71 8C */	b addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80C55968  38 00 00 01 */	li r0, 1
/* 80C5596C  3C 7C 00 01 */	addis r3, r28, 1
/* 80C55970  98 03 AD B4 */	stb r0, -0x524c(r3)
/* 80C55974  38 61 00 20 */	addi r3, r1, 0x20
/* 80C55978  38 80 FF FF */	li r4, -1
/* 80C5597C  4B 42 1E CC */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80C55980  38 61 00 74 */	addi r3, r1, 0x74
/* 80C55984  38 80 FF FF */	li r4, -1
/* 80C55988  4B 42 1C 68 */	b __dt__11dBgS_GndChkFv
lbl_80C5598C:
/* 80C5598C  7F 63 DB 78 */	mr r3, r27
lbl_80C55990:
/* 80C55990  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 80C55994  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 80C55998  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 80C5599C  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 80C559A0  E3 A1 01 28 */	psq_l f29, 296(r1), 0, 0 /* qr0 */
/* 80C559A4  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 80C559A8  E3 81 01 18 */	psq_l f28, 280(r1), 0, 0 /* qr0 */
/* 80C559AC  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 80C559B0  39 61 01 10 */	addi r11, r1, 0x110
/* 80C559B4  4B 70 C8 58 */	b _restgpr_22
/* 80C559B8  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80C559BC  7C 08 03 A6 */	mtlr r0
/* 80C559C0  38 21 01 50 */	addi r1, r1, 0x150
/* 80C559C4  4E 80 00 20 */	blr 
