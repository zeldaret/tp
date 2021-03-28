lbl_80C78294:
/* 80C78294  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C78298  7C 08 02 A6 */	mflr r0
/* 80C7829C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C782A0  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80C782A4  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80C782A8  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80C782AC  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80C782B0  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80C782B4  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 80C782B8  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 80C782BC  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 80C782C0  39 61 00 80 */	addi r11, r1, 0x80
/* 80C782C4  4B 6E 9E FC */	b _savegpr_22
/* 80C782C8  7C 7E 1B 78 */	mr r30, r3
/* 80C782CC  7C 9F 23 78 */	mr r31, r4
/* 80C782D0  3C 80 80 C8 */	lis r4, lit_3651@ha
/* 80C782D4  3B A4 99 E4 */	addi r29, r4, lit_3651@l
/* 80C782D8  48 00 03 61 */	bl moveTogeRoll__12daTogeRoll_cFv
/* 80C782DC  3A E0 00 00 */	li r23, 0
/* 80C782E0  38 7E 0F F8 */	addi r3, r30, 0xff8
/* 80C782E4  4B 40 C1 7C */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C782E8  28 03 00 00 */	cmplwi r3, 0
/* 80C782EC  41 82 00 48 */	beq lbl_80C78334
/* 80C782F0  38 7E 0F F8 */	addi r3, r30, 0xff8
/* 80C782F4  4B 40 C2 54 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80C782F8  7C 7C 1B 78 */	mr r28, r3
/* 80C782FC  38 7E 0F F8 */	addi r3, r30, 0xff8
/* 80C78300  4B 40 C1 F8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80C78304  7C 77 1B 78 */	mr r23, r3
/* 80C78308  38 7E 0F F8 */	addi r3, r30, 0xff8
/* 80C7830C  4B 40 C2 70 */	b GetTgHitObjSe__12dCcD_GObjInfFv
/* 80C78310  38 80 00 01 */	li r4, 1
/* 80C78314  4B 40 C2 9C */	b getHitSeID__12dCcD_GObjInfFUci
/* 80C78318  7C 7B 1B 78 */	mr r27, r3
/* 80C7831C  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80C78320  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C78324  41 82 00 84 */	beq lbl_80C783A8
/* 80C78328  7F C3 F3 78 */	mr r3, r30
/* 80C7832C  48 00 10 19 */	bl init_modeBreak__12daTogeRoll_cFv
/* 80C78330  48 00 00 78 */	b lbl_80C783A8
lbl_80C78334:
/* 80C78334  3B 00 00 00 */	li r24, 0
/* 80C78338  3B 40 00 00 */	li r26, 0
lbl_80C7833C:
/* 80C7833C  3B 3A 06 38 */	addi r25, r26, 0x638
/* 80C78340  7F 3E CA 14 */	add r25, r30, r25
/* 80C78344  7F 23 CB 78 */	mr r3, r25
/* 80C78348  4B 40 C1 18 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C7834C  28 03 00 00 */	cmplwi r3, 0
/* 80C78350  41 82 00 48 */	beq lbl_80C78398
/* 80C78354  7F 23 CB 78 */	mr r3, r25
/* 80C78358  4B 40 C1 F0 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80C7835C  7C 7C 1B 78 */	mr r28, r3
/* 80C78360  7F 23 CB 78 */	mr r3, r25
/* 80C78364  4B 40 C1 94 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80C78368  7C 77 1B 78 */	mr r23, r3
/* 80C7836C  7F 23 CB 78 */	mr r3, r25
/* 80C78370  4B 40 C2 0C */	b GetTgHitObjSe__12dCcD_GObjInfFv
/* 80C78374  38 80 00 01 */	li r4, 1
/* 80C78378  4B 40 C2 38 */	b getHitSeID__12dCcD_GObjInfFUci
/* 80C7837C  7C 7B 1B 78 */	mr r27, r3
/* 80C78380  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80C78384  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C78388  41 82 00 10 */	beq lbl_80C78398
/* 80C7838C  7F C3 F3 78 */	mr r3, r30
/* 80C78390  48 00 0F B5 */	bl init_modeBreak__12daTogeRoll_cFv
/* 80C78394  48 00 00 14 */	b lbl_80C783A8
lbl_80C78398:
/* 80C78398  3B 18 00 01 */	addi r24, r24, 1
/* 80C7839C  2C 18 00 08 */	cmpwi r24, 8
/* 80C783A0  3B 5A 01 38 */	addi r26, r26, 0x138
/* 80C783A4  41 80 FF 98 */	blt lbl_80C7833C
lbl_80C783A8:
/* 80C783A8  28 17 00 00 */	cmplwi r23, 0
/* 80C783AC  41 82 00 70 */	beq lbl_80C7841C
/* 80C783B0  28 1C 00 00 */	cmplwi r28, 0
/* 80C783B4  41 82 00 68 */	beq lbl_80C7841C
/* 80C783B8  7E E3 BB 78 */	mr r3, r23
/* 80C783BC  4B 5E B6 8C */	b GetAc__8cCcD_ObjFv
/* 80C783C0  38 80 00 01 */	li r4, 1
/* 80C783C4  28 03 00 00 */	cmplwi r3, 0
/* 80C783C8  41 82 00 5C */	beq lbl_80C78424
/* 80C783CC  A8 03 00 08 */	lha r0, 8(r3)
/* 80C783D0  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C783D4  40 82 00 20 */	bne lbl_80C783F4
/* 80C783D8  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80C783DC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80C783E0  41 82 00 14 */	beq lbl_80C783F4
/* 80C783E4  88 1E 11 58 */	lbz r0, 0x1158(r30)
/* 80C783E8  28 00 00 00 */	cmplwi r0, 0
/* 80C783EC  41 82 00 08 */	beq lbl_80C783F4
/* 80C783F0  38 80 00 00 */	li r4, 0
lbl_80C783F4:
/* 80C783F4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C783F8  41 82 00 2C */	beq lbl_80C78424
/* 80C783FC  38 7E 11 5C */	addi r3, r30, 0x115c
/* 80C78400  7F 64 DB 78 */	mr r4, r27
/* 80C78404  38 A0 00 09 */	li r5, 9
/* 80C78408  38 C0 00 00 */	li r6, 0
/* 80C7840C  4B 64 60 98 */	b startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 80C78410  38 00 00 01 */	li r0, 1
/* 80C78414  98 1E 11 58 */	stb r0, 0x1158(r30)
/* 80C78418  48 00 00 0C */	b lbl_80C78424
lbl_80C7841C:
/* 80C7841C  38 00 00 00 */	li r0, 0
/* 80C78420  98 1E 11 58 */	stb r0, 0x1158(r30)
lbl_80C78424:
/* 80C78424  3A C0 00 00 */	li r22, 0
/* 80C78428  3B 60 00 00 */	li r27, 0
/* 80C7842C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C78430  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C78434  3A E3 23 3C */	addi r23, r3, 0x233c
/* 80C78438  C3 9D 00 AC */	lfs f28, 0xac(r29)
/* 80C7843C  C3 BD 00 B0 */	lfs f29, 0xb0(r29)
/* 80C78440  CB DD 00 C0 */	lfd f30, 0xc0(r29)
/* 80C78444  3F 80 43 30 */	lis r28, 0x4330
/* 80C78448  C3 FD 00 B4 */	lfs f31, 0xb4(r29)
/* 80C7844C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C78450  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_80C78454:
/* 80C78454  D3 81 00 38 */	stfs f28, 0x38(r1)
/* 80C78458  D3 81 00 3C */	stfs f28, 0x3c(r1)
/* 80C7845C  D3 81 00 40 */	stfs f28, 0x40(r1)
/* 80C78460  6E C0 80 00 */	xoris r0, r22, 0x8000
/* 80C78464  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80C78468  93 81 00 48 */	stw r28, 0x48(r1)
/* 80C7846C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80C78470  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80C78474  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80C78478  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80C7847C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C78480  7F 43 D3 78 */	mr r3, r26
/* 80C78484  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C78488  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C7848C  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C78490  4B 39 3D 78 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C78494  7F 43 D3 78 */	mr r3, r26
/* 80C78498  38 81 00 38 */	addi r4, r1, 0x38
/* 80C7849C  7C 85 23 78 */	mr r5, r4
/* 80C784A0  4B 6C E8 CC */	b PSMTXMultVec
/* 80C784A4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C784A8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C784AC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C784B0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C784B4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C784B8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C784BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C784C0  38 81 00 38 */	addi r4, r1, 0x38
/* 80C784C4  7C 65 1B 78 */	mr r5, r3
/* 80C784C8  4B 6C EB C8 */	b PSVECAdd
/* 80C784CC  7F 1E DA 14 */	add r24, r30, r27
/* 80C784D0  3B 38 07 5C */	addi r25, r24, 0x75c
/* 80C784D4  7F 23 CB 78 */	mr r3, r25
/* 80C784D8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80C784DC  4B 5F 72 2C */	b SetR__8cM3dGSphFf
/* 80C784E0  7F 23 CB 78 */	mr r3, r25
/* 80C784E4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C784E8  4B 5F 71 60 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C784EC  7E E3 BB 78 */	mr r3, r23
/* 80C784F0  38 98 06 38 */	addi r4, r24, 0x638
/* 80C784F4  4B 5E C6 B4 */	b Set__4cCcSFP8cCcD_Obj
/* 80C784F8  3A D6 00 01 */	addi r22, r22, 1
/* 80C784FC  2C 16 00 08 */	cmpwi r22, 8
/* 80C78500  3B 7B 01 38 */	addi r27, r27, 0x138
/* 80C78504  41 80 FF 50 */	blt lbl_80C78454
/* 80C78508  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 80C7850C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C78510  C0 1D 00 AC */	lfs f0, 0xac(r29)
/* 80C78514  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C78518  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C7851C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C78520  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C78524  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80C78528  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80C7852C  A8 DE 04 E0 */	lha r6, 0x4e0(r30)
/* 80C78530  4B 39 3C D8 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C78534  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C78538  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C7853C  38 81 00 20 */	addi r4, r1, 0x20
/* 80C78540  7C 85 23 78 */	mr r5, r4
/* 80C78544  4B 6C E8 28 */	b PSMTXMultVec
/* 80C78548  38 61 00 14 */	addi r3, r1, 0x14
/* 80C7854C  38 81 00 20 */	addi r4, r1, 0x20
/* 80C78550  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C78554  4B 5E E5 90 */	b __pl__4cXyzCFRC3Vec
/* 80C78558  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C7855C  D0 1E 11 3C */	stfs f0, 0x113c(r30)
/* 80C78560  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C78564  D0 1E 11 40 */	stfs f0, 0x1140(r30)
/* 80C78568  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C7856C  D0 1E 11 44 */	stfs f0, 0x1144(r30)
/* 80C78570  38 61 00 08 */	addi r3, r1, 8
/* 80C78574  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C78578  38 A1 00 20 */	addi r5, r1, 0x20
/* 80C7857C  4B 5E E5 B8 */	b __mi__4cXyzCFRC3Vec
/* 80C78580  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C78584  D0 1E 11 48 */	stfs f0, 0x1148(r30)
/* 80C78588  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C7858C  D0 1E 11 4C */	stfs f0, 0x114c(r30)
/* 80C78590  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C78594  D0 1E 11 50 */	stfs f0, 0x1150(r30)
/* 80C78598  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 80C7859C  D0 1E 11 54 */	stfs f0, 0x1154(r30)
/* 80C785A0  38 7E 11 1C */	addi r3, r30, 0x111c
/* 80C785A4  38 9E 11 3C */	addi r4, r30, 0x113c
/* 80C785A8  4B 5F 6A 94 */	b Set__8cM3dGCpsFRC9cM3dGCpsS
/* 80C785AC  7E E3 BB 78 */	mr r3, r23
/* 80C785B0  38 9E 0F F8 */	addi r4, r30, 0xff8
/* 80C785B4  4B 5E C5 F4 */	b Set__4cCcSFP8cCcD_Obj
/* 80C785B8  38 7E 06 18 */	addi r3, r30, 0x618
/* 80C785BC  4B 40 B2 74 */	b Move__10dCcD_GSttsFv
/* 80C785C0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C785C4  7C 03 07 74 */	extsb r3, r0
/* 80C785C8  4B 3B 4A A4 */	b dComIfGp_getReverb__Fi
/* 80C785CC  7C 65 1B 78 */	mr r5, r3
/* 80C785D0  38 7E 11 5C */	addi r3, r30, 0x115c
/* 80C785D4  38 80 00 00 */	li r4, 0
/* 80C785D8  81 9E 11 6C */	lwz r12, 0x116c(r30)
/* 80C785DC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C785E0  7D 89 03 A6 */	mtctr r12
/* 80C785E4  4E 80 04 21 */	bctrl 
/* 80C785E8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C785EC  38 03 00 24 */	addi r0, r3, 0x24
/* 80C785F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C785F4  7F C3 F3 78 */	mr r3, r30
/* 80C785F8  4B FF F6 D1 */	bl setBaseMtx__12daTogeRoll_cFv
/* 80C785FC  38 60 00 01 */	li r3, 1
/* 80C78600  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80C78604  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80C78608  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80C7860C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80C78610  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 80C78614  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80C78618  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 80C7861C  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 80C78620  39 61 00 80 */	addi r11, r1, 0x80
/* 80C78624  4B 6E 9B E8 */	b _restgpr_22
/* 80C78628  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C7862C  7C 08 03 A6 */	mtlr r0
/* 80C78630  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C78634  4E 80 00 20 */	blr 
