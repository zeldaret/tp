lbl_80BE6074:
/* 80BE6074  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80BE6078  7C 08 02 A6 */	mflr r0
/* 80BE607C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BE6080  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80BE6084  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80BE6088  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80BE608C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80BE6090  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80BE6094  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80BE6098  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80BE609C  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80BE60A0  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE60A4  4B 77 C1 24 */	b _savegpr_24
/* 80BE60A8  7C 7E 1B 78 */	mr r30, r3
/* 80BE60AC  3C 80 80 BE */	lis r4, l_arcName@ha
/* 80BE60B0  3B E4 74 38 */	addi r31, r4, l_arcName@l
/* 80BE60B4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BE60B8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BE60BC  40 82 00 C8 */	bne lbl_80BE6184
/* 80BE60C0  7F C0 F3 79 */	or. r0, r30, r30
/* 80BE60C4  41 82 00 B4 */	beq lbl_80BE6178
/* 80BE60C8  7C 1D 03 78 */	mr r29, r0
/* 80BE60CC  4B 43 2A 98 */	b __ct__10fopAc_ac_cFv
/* 80BE60D0  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80BE60D4  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80BE60D8  90 1D 05 74 */	stw r0, 0x574(r29)
/* 80BE60DC  38 00 00 00 */	li r0, 0
/* 80BE60E0  90 1D 05 78 */	stw r0, 0x578(r29)
/* 80BE60E4  90 1D 05 7C */	stw r0, 0x57c(r29)
/* 80BE60E8  90 1D 05 80 */	stw r0, 0x580(r29)
/* 80BE60EC  3C 60 80 BE */	lis r3, __vt__19daObjFchain_shape_c@ha
/* 80BE60F0  38 03 75 28 */	addi r0, r3, __vt__19daObjFchain_shape_c@l
/* 80BE60F4  90 1D 05 74 */	stw r0, 0x574(r29)
/* 80BE60F8  38 7D 05 8C */	addi r3, r29, 0x58c
/* 80BE60FC  3C 80 80 BE */	lis r4, __ct__4cXyzFv@ha
/* 80BE6100  38 84 63 A4 */	addi r4, r4, __ct__4cXyzFv@l
/* 80BE6104  3C A0 80 BE */	lis r5, __dt__4cXyzFv@ha
/* 80BE6108  38 A5 63 68 */	addi r5, r5, __dt__4cXyzFv@l
/* 80BE610C  38 C0 00 0C */	li r6, 0xc
/* 80BE6110  38 E0 00 16 */	li r7, 0x16
/* 80BE6114  4B 77 BC 4C */	b __construct_array
/* 80BE6118  38 7D 06 94 */	addi r3, r29, 0x694
/* 80BE611C  3C 80 80 BE */	lis r4, __ct__4cXyzFv@ha
/* 80BE6120  38 84 63 A4 */	addi r4, r4, __ct__4cXyzFv@l
/* 80BE6124  3C A0 80 BE */	lis r5, __dt__4cXyzFv@ha
/* 80BE6128  38 A5 63 68 */	addi r5, r5, __dt__4cXyzFv@l
/* 80BE612C  38 C0 00 0C */	li r6, 0xc
/* 80BE6130  38 E0 00 16 */	li r7, 0x16
/* 80BE6134  4B 77 BC 2C */	b __construct_array
/* 80BE6138  38 7D 07 9C */	addi r3, r29, 0x79c
/* 80BE613C  3C 80 80 BE */	lis r4, __ct__4cXyzFv@ha
/* 80BE6140  38 84 63 A4 */	addi r4, r4, __ct__4cXyzFv@l
/* 80BE6144  3C A0 80 BE */	lis r5, __dt__4cXyzFv@ha
/* 80BE6148  38 A5 63 68 */	addi r5, r5, __dt__4cXyzFv@l
/* 80BE614C  38 C0 00 0C */	li r6, 0xc
/* 80BE6150  38 E0 00 16 */	li r7, 0x16
/* 80BE6154  4B 77 BC 0C */	b __construct_array
/* 80BE6158  38 7D 08 A4 */	addi r3, r29, 0x8a4
/* 80BE615C  3C 80 80 BE */	lis r4, __ct__5csXyzFv@ha
/* 80BE6160  38 84 63 64 */	addi r4, r4, __ct__5csXyzFv@l
/* 80BE6164  3C A0 80 BE */	lis r5, __dt__5csXyzFv@ha
/* 80BE6168  38 A5 63 28 */	addi r5, r5, __dt__5csXyzFv@l
/* 80BE616C  38 C0 00 06 */	li r6, 6
/* 80BE6170  38 E0 00 16 */	li r7, 0x16
/* 80BE6174  4B 77 BB EC */	b __construct_array
lbl_80BE6178:
/* 80BE6178  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BE617C  60 00 00 08 */	ori r0, r0, 8
/* 80BE6180  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BE6184:
/* 80BE6184  38 7E 05 68 */	addi r3, r30, 0x568
/* 80BE6188  38 9F 00 00 */	addi r4, r31, 0
/* 80BE618C  4B 44 6D 30 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BE6190  2C 03 00 04 */	cmpwi r3, 4
/* 80BE6194  41 82 00 08 */	beq lbl_80BE619C
/* 80BE6198  48 00 01 58 */	b lbl_80BE62F0
lbl_80BE619C:
/* 80BE619C  7F C3 F3 78 */	mr r3, r30
/* 80BE61A0  3C 80 80 BE */	lis r4, daObjFchain_createHeap__FP10fopAc_ac_c@ha
/* 80BE61A4  38 84 60 54 */	addi r4, r4, daObjFchain_createHeap__FP10fopAc_ac_c@l
/* 80BE61A8  38 A0 00 10 */	li r5, 0x10
/* 80BE61AC  4B 43 43 04 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BE61B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE61B4  40 82 00 0C */	bne lbl_80BE61C0
/* 80BE61B8  38 60 00 05 */	li r3, 5
/* 80BE61BC  48 00 01 34 */	b lbl_80BE62F0
lbl_80BE61C0:
/* 80BE61C0  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80BE61C4  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 80BE61C8  98 1E 04 8C */	stb r0, 0x48c(r30)
/* 80BE61CC  93 DE 05 80 */	stw r30, 0x580(r30)
/* 80BE61D0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BE61D4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BE61D8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE61DC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BE61E0  AB 9E 04 E6 */	lha r28, 0x4e6(r30)
/* 80BE61E4  3B 7E 04 D0 */	addi r27, r30, 0x4d0
/* 80BE61E8  3B 5E 06 94 */	addi r26, r30, 0x694
/* 80BE61EC  3B 3E 08 A4 */	addi r25, r30, 0x8a4
/* 80BE61F0  3B 00 00 00 */	li r24, 0
/* 80BE61F4  C3 BF 00 2C */	lfs f29, 0x2c(r31)
/* 80BE61F8  C3 DF 00 30 */	lfs f30, 0x30(r31)
/* 80BE61FC  CB FF 00 38 */	lfd f31, 0x38(r31)
/* 80BE6200  3F C0 43 30 */	lis r30, 0x4330
/* 80BE6204  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BE6208  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
lbl_80BE620C:
/* 80BE620C  57 00 07 FF */	clrlwi. r0, r24, 0x1f
/* 80BE6210  41 82 00 28 */	beq lbl_80BE6238
/* 80BE6214  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BE6218  4B 68 17 74 */	b cM_rndFX__Ff
/* 80BE621C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BE6220  EC 00 08 2A */	fadds f0, f0, f1
/* 80BE6224  FC 00 00 1E */	fctiwz f0, f0
/* 80BE6228  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BE622C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80BE6230  B0 19 00 04 */	sth r0, 4(r25)
/* 80BE6234  48 00 00 24 */	b lbl_80BE6258
lbl_80BE6238:
/* 80BE6238  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BE623C  4B 68 17 50 */	b cM_rndFX__Ff
/* 80BE6240  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80BE6244  EC 00 08 2A */	fadds f0, f0, f1
/* 80BE6248  FC 00 00 1E */	fctiwz f0, f0
/* 80BE624C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BE6250  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80BE6254  B0 19 00 04 */	sth r0, 4(r25)
lbl_80BE6258:
/* 80BE6258  4B 68 16 14 */	b cM_rnd__Fv
/* 80BE625C  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80BE6260  40 80 00 0C */	bge lbl_80BE626C
/* 80BE6264  C3 9F 00 24 */	lfs f28, 0x24(r31)
/* 80BE6268  48 00 00 08 */	b lbl_80BE6270
lbl_80BE626C:
/* 80BE626C  C3 9F 00 28 */	lfs f28, 0x28(r31)
lbl_80BE6270:
/* 80BE6270  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80BE6274  4B 68 16 E0 */	b cM_rndF__Ff
/* 80BE6278  EC 1E 08 2A */	fadds f0, f30, f1
/* 80BE627C  EC 3C 00 32 */	fmuls f1, f28, f0
/* 80BE6280  7F 80 07 34 */	extsh r0, r28
/* 80BE6284  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE6288  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BE628C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE6290  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BE6294  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BE6298  EC 00 08 2A */	fadds f0, f0, f1
/* 80BE629C  FC 00 00 1E */	fctiwz f0, f0
/* 80BE62A0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BE62A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE62A8  B0 19 00 02 */	sth r0, 2(r25)
/* 80BE62AC  7F 63 DB 78 */	mr r3, r27
/* 80BE62B0  4B 42 6A B4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BE62B4  7F A3 EB 78 */	mr r3, r29
/* 80BE62B8  A8 99 00 02 */	lha r4, 2(r25)
/* 80BE62BC  4B 42 61 78 */	b mDoMtx_YrotM__FPA4_fs
/* 80BE62C0  7F A3 EB 78 */	mr r3, r29
/* 80BE62C4  38 9F 00 08 */	addi r4, r31, 8
/* 80BE62C8  7F 45 D3 78 */	mr r5, r26
/* 80BE62CC  4B 76 0A A0 */	b PSMTXMultVec
/* 80BE62D0  AB 99 00 02 */	lha r28, 2(r25)
/* 80BE62D4  7F 5B D3 78 */	mr r27, r26
/* 80BE62D8  3B 18 00 01 */	addi r24, r24, 1
/* 80BE62DC  2C 18 00 16 */	cmpwi r24, 0x16
/* 80BE62E0  3B 39 00 06 */	addi r25, r25, 6
/* 80BE62E4  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80BE62E8  41 80 FF 24 */	blt lbl_80BE620C
/* 80BE62EC  38 60 00 04 */	li r3, 4
lbl_80BE62F0:
/* 80BE62F0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80BE62F4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80BE62F8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80BE62FC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80BE6300  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80BE6304  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80BE6308  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80BE630C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80BE6310  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE6314  4B 77 BF 00 */	b _restgpr_24
/* 80BE6318  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BE631C  7C 08 03 A6 */	mtlr r0
/* 80BE6320  38 21 00 80 */	addi r1, r1, 0x80
/* 80BE6324  4E 80 00 20 */	blr 
