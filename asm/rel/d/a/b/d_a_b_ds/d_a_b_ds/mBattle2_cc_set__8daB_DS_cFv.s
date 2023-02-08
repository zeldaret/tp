lbl_805DAA98:
/* 805DAA98  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 805DAA9C  7C 08 02 A6 */	mflr r0
/* 805DAAA0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 805DAAA4  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 805DAAA8  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 805DAAAC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 805DAAB0  4B D8 77 09 */	bl _savegpr_20
/* 805DAAB4  7C 7D 1B 78 */	mr r29, r3
/* 805DAAB8  3C 60 80 5E */	lis r3, lit_1109@ha /* 0x805DDA70@ha */
/* 805DAABC  3B E3 DA 70 */	addi r31, r3, lit_1109@l /* 0x805DDA70@l */
/* 805DAAC0  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805DAAC4  3A E3 CA 54 */	addi r23, r3, lit_3932@l /* 0x805DCA54@l */
/* 805DAAC8  88 1F 07 CC */	lbz r0, 0x7cc(r31)
/* 805DAACC  7C 00 07 75 */	extsb. r0, r0
/* 805DAAD0  40 82 01 30 */	bne lbl_805DAC00
/* 805DAAD4  C0 37 06 04 */	lfs f1, 0x604(r23)
/* 805DAAD8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 805DAADC  C0 17 00 04 */	lfs f0, 4(r23)
/* 805DAAE0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805DAAE4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805DAAE8  D0 3F 08 00 */	stfs f1, 0x800(r31)
/* 805DAAEC  38 7F 08 00 */	addi r3, r31, 0x800
/* 805DAAF0  D0 03 00 04 */	stfs f0, 4(r3)
/* 805DAAF4  D0 03 00 08 */	stfs f0, 8(r3)
/* 805DAAF8  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805DAAFC  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805DAB00  38 BF 07 C0 */	addi r5, r31, 0x7c0
/* 805DAB04  4B FF 06 B5 */	bl __register_global_object
/* 805DAB08  C0 57 01 78 */	lfs f2, 0x178(r23)
/* 805DAB0C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 805DAB10  C0 37 02 F0 */	lfs f1, 0x2f0(r23)
/* 805DAB14  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805DAB18  C0 17 00 04 */	lfs f0, 4(r23)
/* 805DAB1C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805DAB20  38 7F 08 00 */	addi r3, r31, 0x800
/* 805DAB24  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805DAB28  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805DAB2C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805DAB30  38 63 00 0C */	addi r3, r3, 0xc
/* 805DAB34  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805DAB38  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805DAB3C  38 BF 07 D0 */	addi r5, r31, 0x7d0
/* 805DAB40  4B FF 06 79 */	bl __register_global_object
/* 805DAB44  C0 57 07 B4 */	lfs f2, 0x7b4(r23)
/* 805DAB48  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 805DAB4C  C0 37 07 B8 */	lfs f1, 0x7b8(r23)
/* 805DAB50  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805DAB54  C0 17 00 04 */	lfs f0, 4(r23)
/* 805DAB58  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805DAB5C  38 7F 08 00 */	addi r3, r31, 0x800
/* 805DAB60  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 805DAB64  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805DAB68  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805DAB6C  38 63 00 18 */	addi r3, r3, 0x18
/* 805DAB70  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805DAB74  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805DAB78  38 BF 07 DC */	addi r5, r31, 0x7dc
/* 805DAB7C  4B FF 06 3D */	bl __register_global_object
/* 805DAB80  C0 57 06 0C */	lfs f2, 0x60c(r23)
/* 805DAB84  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 805DAB88  C0 37 04 EC */	lfs f1, 0x4ec(r23)
/* 805DAB8C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805DAB90  C0 17 00 04 */	lfs f0, 4(r23)
/* 805DAB94  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805DAB98  38 7F 08 00 */	addi r3, r31, 0x800
/* 805DAB9C  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 805DABA0  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 805DABA4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 805DABA8  38 63 00 24 */	addi r3, r3, 0x24
/* 805DABAC  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805DABB0  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805DABB4  38 BF 07 E8 */	addi r5, r31, 0x7e8
/* 805DABB8  4B FF 06 01 */	bl __register_global_object
/* 805DABBC  C0 57 02 D8 */	lfs f2, 0x2d8(r23)
/* 805DABC0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 805DABC4  C0 37 02 CC */	lfs f1, 0x2cc(r23)
/* 805DABC8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805DABCC  C0 17 00 04 */	lfs f0, 4(r23)
/* 805DABD0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805DABD4  38 7F 08 00 */	addi r3, r31, 0x800
/* 805DABD8  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 805DABDC  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 805DABE0  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 805DABE4  38 63 00 30 */	addi r3, r3, 0x30
/* 805DABE8  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805DABEC  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805DABF0  38 BF 07 F4 */	addi r5, r31, 0x7f4
/* 805DABF4  4B FF 05 C5 */	bl __register_global_object
/* 805DABF8  38 00 00 01 */	li r0, 1
/* 805DABFC  98 1F 07 CC */	stb r0, 0x7cc(r31)
lbl_805DAC00:
/* 805DAC00  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805DAC04  80 63 00 04 */	lwz r3, 4(r3)
/* 805DAC08  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805DAC0C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805DAC10  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DAC14  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DAC18  4B D6 B8 99 */	bl PSMTXCopy
/* 805DAC1C  38 7D 08 20 */	addi r3, r29, 0x820
/* 805DAC20  48 00 1C C5 */	bl func_805DC8E4
/* 805DAC24  3B C0 00 00 */	li r30, 0
/* 805DAC28  3B 80 00 00 */	li r28, 0
/* 805DAC2C  3B 60 00 00 */	li r27, 0
/* 805DAC30  3B 40 00 00 */	li r26, 0
/* 805DAC34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DAC38  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DAC3C  3A D7 23 3C */	addi r22, r23, 0x233c
/* 805DAC40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DAC44  3B 03 D4 70 */	addi r24, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DAC48  3C 60 80 5E */	lis r3, head2_setRdt@ha /* 0x805DD980@ha */
/* 805DAC4C  3B 23 D9 80 */	addi r25, r3, head2_setRdt@l /* 0x805DD980@l */
lbl_805DAC50:
/* 805DAC50  38 7F 08 00 */	addi r3, r31, 0x800
/* 805DAC54  7C 63 D2 14 */	add r3, r3, r26
/* 805DAC58  C0 03 00 00 */	lfs f0, 0(r3)
/* 805DAC5C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805DAC60  C0 03 00 04 */	lfs f0, 4(r3)
/* 805DAC64  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805DAC68  C0 03 00 08 */	lfs f0, 8(r3)
/* 805DAC6C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805DAC70  7F 03 C3 78 */	mr r3, r24
/* 805DAC74  38 81 00 7C */	addi r4, r1, 0x7c
/* 805DAC78  38 A1 00 70 */	addi r5, r1, 0x70
/* 805DAC7C  4B D6 C0 F1 */	bl PSMTXMultVec
/* 805DAC80  7F F9 DC 2E */	lfsx f31, r25, r27
/* 805DAC84  7E 9D E2 14 */	add r20, r29, r28
/* 805DAC88  3A B4 0D 20 */	addi r21, r20, 0xd20
/* 805DAC8C  7E A3 AB 78 */	mr r3, r21
/* 805DAC90  38 81 00 70 */	addi r4, r1, 0x70
/* 805DAC94  4B C9 49 B5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805DAC98  7E A3 AB 78 */	mr r3, r21
/* 805DAC9C  FC 20 F8 90 */	fmr f1, f31
/* 805DACA0  4B C9 4A 69 */	bl SetR__8cM3dGSphFf
/* 805DACA4  7E C3 B3 78 */	mr r3, r22
/* 805DACA8  3A 94 0B FC */	addi r20, r20, 0xbfc
/* 805DACAC  7E 84 A3 78 */	mr r4, r20
/* 805DACB0  4B C8 9E F9 */	bl Set__4cCcSFP8cCcD_Obj
/* 805DACB4  7E 83 A3 78 */	mr r3, r20
/* 805DACB8  4B AA 97 A9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 805DACBC  28 03 00 00 */	cmplwi r3, 0
/* 805DACC0  41 82 00 CC */	beq lbl_805DAD8C
/* 805DACC4  7E 83 A3 78 */	mr r3, r20
/* 805DACC8  4B AA 98 31 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 805DACCC  90 7D 2C F0 */	stw r3, 0x2cf0(r29)
/* 805DACD0  7E 83 A3 78 */	mr r3, r20
/* 805DACD4  81 94 00 3C */	lwz r12, 0x3c(r20)
/* 805DACD8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805DACDC  7D 89 03 A6 */	mtctr r12
/* 805DACE0  4E 80 04 21 */	bctrl 
/* 805DACE4  80 1D 08 20 */	lwz r0, 0x820(r29)
/* 805DACE8  2C 00 00 00 */	cmpwi r0, 0
/* 805DACEC  40 82 00 A0 */	bne lbl_805DAD8C
/* 805DACF0  38 61 00 10 */	addi r3, r1, 0x10
/* 805DACF4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805DACF8  3A 94 00 D4 */	addi r20, r20, 0xd4
/* 805DACFC  7E 85 A3 78 */	mr r5, r20
/* 805DAD00  4B C8 BE 35 */	bl __mi__4cXyzCFRC3Vec
/* 805DAD04  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805DAD08  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805DAD0C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805DAD10  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805DAD14  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805DAD18  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805DAD1C  C0 14 00 00 */	lfs f0, 0(r20)
/* 805DAD20  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805DAD24  C0 14 00 04 */	lfs f0, 4(r20)
/* 805DAD28  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805DAD2C  C0 14 00 08 */	lfs f0, 8(r20)
/* 805DAD30  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805DAD34  38 00 00 00 */	li r0, 0
/* 805DAD38  B0 01 00 08 */	sth r0, 8(r1)
/* 805DAD3C  38 61 00 64 */	addi r3, r1, 0x64
/* 805DAD40  4B C8 C3 E9 */	bl atan2sX_Z__4cXyzCFv
/* 805DAD44  B0 61 00 0A */	sth r3, 0xa(r1)
/* 805DAD48  38 00 00 00 */	li r0, 0
/* 805DAD4C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805DAD50  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 805DAD54  38 80 00 02 */	li r4, 2
/* 805DAD58  7F A5 EB 78 */	mr r5, r29
/* 805DAD5C  38 C1 00 58 */	addi r6, r1, 0x58
/* 805DAD60  38 E1 00 08 */	addi r7, r1, 8
/* 805DAD64  39 00 00 00 */	li r8, 0
/* 805DAD68  39 20 00 00 */	li r9, 0
/* 805DAD6C  4B A7 14 AD */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805DAD70  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 805DAD74  80 9D 2C F0 */	lwz r4, 0x2cf0(r29)
/* 805DAD78  38 A0 00 02 */	li r5, 2
/* 805DAD7C  38 C0 00 00 */	li r6, 0
/* 805DAD80  4B AA C7 95 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805DAD84  38 00 00 08 */	li r0, 8
/* 805DAD88  90 1D 08 20 */	stw r0, 0x820(r29)
lbl_805DAD8C:
/* 805DAD8C  3B DE 00 01 */	addi r30, r30, 1
/* 805DAD90  2C 1E 00 05 */	cmpwi r30, 5
/* 805DAD94  3B 9C 01 38 */	addi r28, r28, 0x138
/* 805DAD98  3B 7B 00 04 */	addi r27, r27, 4
/* 805DAD9C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 805DADA0  41 80 FE B0 */	blt lbl_805DAC50
/* 805DADA4  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 805DADA8  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 805DADAC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 805DADB0  4B D8 74 55 */	bl _restgpr_20
/* 805DADB4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 805DADB8  7C 08 03 A6 */	mtlr r0
/* 805DADBC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 805DADC0  4E 80 00 20 */	blr 
