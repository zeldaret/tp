lbl_80739424:
/* 80739424  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80739428  7C 08 02 A6 */	mflr r0
/* 8073942C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80739430  39 61 00 50 */	addi r11, r1, 0x50
/* 80739434  4B C2 8D 91 */	bl _savegpr_23
/* 80739438  7C 79 1B 78 */	mr r25, r3
/* 8073943C  3C 80 80 74 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80739E54@ha */
/* 80739440  3B A4 9E 54 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x80739E54@l */
/* 80739444  3C 80 80 74 */	lis r4, lit_1109@ha /* 0x8073A100@ha */
/* 80739448  3B C4 A1 00 */	addi r30, r4, lit_1109@l /* 0x8073A100@l */
/* 8073944C  3C 80 80 74 */	lis r4, lit_3768@ha /* 0x80739D60@ha */
/* 80739450  3B E4 9D 60 */	addi r31, r4, lit_3768@l /* 0x80739D60@l */
/* 80739454  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80739458  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8073945C  40 82 01 3C */	bne lbl_80739598
/* 80739460  7F 20 CB 79 */	or. r0, r25, r25
/* 80739464  41 82 01 28 */	beq lbl_8073958C
/* 80739468  7C 18 03 78 */	mr r24, r0
/* 8073946C  4B 8D F6 F9 */	bl __ct__10fopAc_ac_cFv
/* 80739470  38 78 05 BC */	addi r3, r24, 0x5bc
/* 80739474  4B B8 7A F1 */	bl __ct__15Z2CreatureEnemyFv
/* 80739478  38 78 06 6C */	addi r3, r24, 0x66c
/* 8073947C  4B 93 CA 31 */	bl __ct__12dBgS_AcchCirFv
/* 80739480  3A F8 06 AC */	addi r23, r24, 0x6ac
/* 80739484  7E E3 BB 78 */	mr r3, r23
/* 80739488  4B 93 CC 19 */	bl __ct__9dBgS_AcchFv
/* 8073948C  3C 60 80 74 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8073A0B8@ha */
/* 80739490  38 63 A0 B8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8073A0B8@l */
/* 80739494  90 77 00 10 */	stw r3, 0x10(r23)
/* 80739498  38 03 00 0C */	addi r0, r3, 0xc
/* 8073949C  90 17 00 14 */	stw r0, 0x14(r23)
/* 807394A0  38 03 00 18 */	addi r0, r3, 0x18
/* 807394A4  90 17 00 24 */	stw r0, 0x24(r23)
/* 807394A8  38 77 00 14 */	addi r3, r23, 0x14
/* 807394AC  4B 93 F9 BD */	bl SetObj__16dBgS_PolyPassChkFv
/* 807394B0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 807394B4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 807394B8  90 18 08 9C */	stw r0, 0x89c(r24)
/* 807394BC  38 78 08 A0 */	addi r3, r24, 0x8a0
/* 807394C0  4B 94 A2 A1 */	bl __ct__10dCcD_GSttsFv
/* 807394C4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 807394C8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 807394CC  90 78 08 9C */	stw r3, 0x89c(r24)
/* 807394D0  38 03 00 20 */	addi r0, r3, 0x20
/* 807394D4  90 18 08 A0 */	stw r0, 0x8a0(r24)
/* 807394D8  3A F8 08 C0 */	addi r23, r24, 0x8c0
/* 807394DC  7E E3 BB 78 */	mr r3, r23
/* 807394E0  4B 94 A5 49 */	bl __ct__12dCcD_GObjInfFv
/* 807394E4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807394E8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807394EC  90 17 01 20 */	stw r0, 0x120(r23)
/* 807394F0  3C 60 80 74 */	lis r3, __vt__8cM3dGAab@ha /* 0x8073A0AC@ha */
/* 807394F4  38 03 A0 AC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8073A0AC@l */
/* 807394F8  90 17 01 1C */	stw r0, 0x11c(r23)
/* 807394FC  3C 60 80 74 */	lis r3, __vt__8cM3dGSph@ha /* 0x8073A0A0@ha */
/* 80739500  38 03 A0 A0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8073A0A0@l */
/* 80739504  90 17 01 34 */	stw r0, 0x134(r23)
/* 80739508  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8073950C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80739510  90 77 01 20 */	stw r3, 0x120(r23)
/* 80739514  3B 83 00 58 */	addi r28, r3, 0x58
/* 80739518  93 97 01 34 */	stw r28, 0x134(r23)
/* 8073951C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80739520  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80739524  90 77 00 3C */	stw r3, 0x3c(r23)
/* 80739528  3B 63 00 2C */	addi r27, r3, 0x2c
/* 8073952C  93 77 01 20 */	stw r27, 0x120(r23)
/* 80739530  3B 43 00 84 */	addi r26, r3, 0x84
/* 80739534  93 57 01 34 */	stw r26, 0x134(r23)
/* 80739538  3A F8 09 F8 */	addi r23, r24, 0x9f8
/* 8073953C  7E E3 BB 78 */	mr r3, r23
/* 80739540  4B 94 A4 E9 */	bl __ct__12dCcD_GObjInfFv
/* 80739544  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80739548  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8073954C  90 17 01 20 */	stw r0, 0x120(r23)
/* 80739550  3C 60 80 74 */	lis r3, __vt__8cM3dGAab@ha /* 0x8073A0AC@ha */
/* 80739554  38 03 A0 AC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8073A0AC@l */
/* 80739558  90 17 01 1C */	stw r0, 0x11c(r23)
/* 8073955C  3C 60 80 74 */	lis r3, __vt__8cM3dGSph@ha /* 0x8073A0A0@ha */
/* 80739560  38 03 A0 A0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8073A0A0@l */
/* 80739564  90 17 01 34 */	stw r0, 0x134(r23)
/* 80739568  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8073956C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80739570  90 17 01 20 */	stw r0, 0x120(r23)
/* 80739574  93 97 01 34 */	stw r28, 0x134(r23)
/* 80739578  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8073957C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80739580  90 17 00 3C */	stw r0, 0x3c(r23)
/* 80739584  93 77 01 20 */	stw r27, 0x120(r23)
/* 80739588  93 57 01 34 */	stw r26, 0x134(r23)
lbl_8073958C:
/* 8073958C  80 19 04 A0 */	lwz r0, 0x4a0(r25)
/* 80739590  60 00 00 08 */	ori r0, r0, 8
/* 80739594  90 19 04 A0 */	stw r0, 0x4a0(r25)
lbl_80739598:
/* 80739598  38 79 05 AC */	addi r3, r25, 0x5ac
/* 8073959C  3C 80 80 74 */	lis r4, d_a_e_oct_bg__stringBase0@ha /* 0x80739E44@ha */
/* 807395A0  38 84 9E 44 */	addi r4, r4, d_a_e_oct_bg__stringBase0@l /* 0x80739E44@l */
/* 807395A4  4B 8F 39 19 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807395A8  7C 7A 1B 78 */	mr r26, r3
/* 807395AC  2C 1A 00 04 */	cmpwi r26, 4
/* 807395B0  40 82 01 EC */	bne lbl_8073979C
/* 807395B4  7F 23 CB 78 */	mr r3, r25
/* 807395B8  3C 80 80 74 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x807390C4@ha */
/* 807395BC  38 84 90 C4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x807390C4@l */
/* 807395C0  38 A0 10 E0 */	li r5, 0x10e0
/* 807395C4  4B 8E 0E ED */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807395C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807395CC  40 82 00 0C */	bne lbl_807395D8
/* 807395D0  38 60 00 05 */	li r3, 5
/* 807395D4  48 00 01 CC */	b lbl_807397A0
lbl_807395D8:
/* 807395D8  88 1E 00 3D */	lbz r0, 0x3d(r30)
/* 807395DC  28 00 00 00 */	cmplwi r0, 0
/* 807395E0  40 82 00 1C */	bne lbl_807395FC
/* 807395E4  38 00 00 01 */	li r0, 1
/* 807395E8  98 1E 00 3D */	stb r0, 0x3d(r30)
/* 807395EC  98 19 0B B3 */	stb r0, 0xbb3(r25)
/* 807395F0  38 00 FF FF */	li r0, -1
/* 807395F4  38 7E 00 4C */	addi r3, r30, 0x4c
/* 807395F8  98 03 00 04 */	stb r0, 4(r3)
lbl_807395FC:
/* 807395FC  38 00 00 04 */	li r0, 4
/* 80739600  90 19 05 5C */	stw r0, 0x55c(r25)
/* 80739604  A0 19 05 8E */	lhz r0, 0x58e(r25)
/* 80739608  60 00 02 00 */	ori r0, r0, 0x200
/* 8073960C  B0 19 05 8E */	sth r0, 0x58e(r25)
/* 80739610  80 79 05 B4 */	lwz r3, 0x5b4(r25)
/* 80739614  80 63 00 04 */	lwz r3, 4(r3)
/* 80739618  38 03 00 24 */	addi r0, r3, 0x24
/* 8073961C  90 19 05 04 */	stw r0, 0x504(r25)
/* 80739620  7F 23 CB 78 */	mr r3, r25
/* 80739624  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80739628  FC 40 08 90 */	fmr f2, f1
/* 8073962C  FC 60 08 90 */	fmr f3, f1
/* 80739630  4B 8E 0E F9 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80739634  7F 23 CB 78 */	mr r3, r25
/* 80739638  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8073963C  FC 40 08 90 */	fmr f2, f1
/* 80739640  FC 60 08 90 */	fmr f3, f1
/* 80739644  4B 8E 0E F5 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80739648  38 00 00 00 */	li r0, 0
/* 8073964C  90 01 00 08 */	stw r0, 8(r1)
/* 80739650  38 79 06 AC */	addi r3, r25, 0x6ac
/* 80739654  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80739658  38 B9 04 BC */	addi r5, r25, 0x4bc
/* 8073965C  7F 26 CB 78 */	mr r6, r25
/* 80739660  38 E0 00 01 */	li r7, 1
/* 80739664  39 19 06 6C */	addi r8, r25, 0x66c
/* 80739668  39 39 04 F8 */	addi r9, r25, 0x4f8
/* 8073966C  39 40 00 00 */	li r10, 0
/* 80739670  4B 93 CB D9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80739674  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80739678  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 8073967C  38 79 06 6C */	addi r3, r25, 0x66c
/* 80739680  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80739684  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80739688  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8073968C  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80739690  4B 93 C8 C9 */	bl SetWall__12dBgS_AcchCirFff
/* 80739694  38 00 00 0A */	li r0, 0xa
/* 80739698  B0 19 05 62 */	sth r0, 0x562(r25)
/* 8073969C  B0 19 05 60 */	sth r0, 0x560(r25)
/* 807396A0  38 79 08 84 */	addi r3, r25, 0x884
/* 807396A4  38 80 00 64 */	li r4, 0x64
/* 807396A8  38 A0 00 00 */	li r5, 0
/* 807396AC  7F 26 CB 78 */	mr r6, r25
/* 807396B0  4B 94 A1 B1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807396B4  38 79 08 C0 */	addi r3, r25, 0x8c0
/* 807396B8  38 9D 00 2C */	addi r4, r29, 0x2c
/* 807396BC  4B 94 B3 79 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807396C0  38 19 08 84 */	addi r0, r25, 0x884
/* 807396C4  90 19 09 04 */	stw r0, 0x904(r25)
/* 807396C8  38 79 09 F8 */	addi r3, r25, 0x9f8
/* 807396CC  38 9D 00 6C */	addi r4, r29, 0x6c
/* 807396D0  4B 94 B3 65 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807396D4  38 19 08 84 */	addi r0, r25, 0x884
/* 807396D8  90 19 0A 3C */	stw r0, 0xa3c(r25)
/* 807396DC  38 79 05 BC */	addi r3, r25, 0x5bc
/* 807396E0  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807396E4  38 B9 05 38 */	addi r5, r25, 0x538
/* 807396E8  38 C0 00 03 */	li r6, 3
/* 807396EC  38 E0 00 01 */	li r7, 1
/* 807396F0  4B B8 79 A5 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807396F4  38 79 05 BC */	addi r3, r25, 0x5bc
/* 807396F8  3C 80 80 74 */	lis r4, d_a_e_oct_bg__stringBase0@ha /* 0x80739E44@ha */
/* 807396FC  38 84 9E 44 */	addi r4, r4, d_a_e_oct_bg__stringBase0@l /* 0x80739E44@l */
/* 80739700  38 84 00 05 */	addi r4, r4, 5
/* 80739704  4B B8 84 8D */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80739708  38 19 05 BC */	addi r0, r25, 0x5bc
/* 8073970C  90 19 0B 38 */	stw r0, 0xb38(r25)
/* 80739710  38 00 00 01 */	li r0, 1
/* 80739714  98 19 0B 4E */	stb r0, 0xb4e(r25)
/* 80739718  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8073971C  D0 19 05 30 */	stfs f0, 0x530(r25)
/* 80739720  38 00 00 04 */	li r0, 4
/* 80739724  98 19 05 46 */	stb r0, 0x546(r25)
/* 80739728  38 00 00 00 */	li r0, 0
/* 8073972C  98 19 0B 74 */	stb r0, 0xb74(r25)
/* 80739730  28 19 00 00 */	cmplwi r25, 0
/* 80739734  41 82 00 0C */	beq lbl_80739740
/* 80739738  80 19 00 04 */	lwz r0, 4(r25)
/* 8073973C  48 00 00 08 */	b lbl_80739744
lbl_80739740:
/* 80739740  38 00 FF FF */	li r0, -1
lbl_80739744:
/* 80739744  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80739748  98 19 0B AC */	stb r0, 0xbac(r25)
/* 8073974C  88 7E 00 70 */	lbz r3, 0x70(r30)
/* 80739750  38 03 00 01 */	addi r0, r3, 1
/* 80739754  98 1E 00 70 */	stb r0, 0x70(r30)
/* 80739758  88 19 0B AC */	lbz r0, 0xbac(r25)
/* 8073975C  28 00 00 00 */	cmplwi r0, 0
/* 80739760  41 82 00 10 */	beq lbl_80739770
/* 80739764  88 7E 00 71 */	lbz r3, 0x71(r30)
/* 80739768  38 03 00 01 */	addi r0, r3, 1
/* 8073976C  98 1E 00 71 */	stb r0, 0x71(r30)
lbl_80739770:
/* 80739770  80 7D 01 B4 */	lwz r3, 0x1b4(r29)
/* 80739774  80 1D 01 B8 */	lwz r0, 0x1b8(r29)
/* 80739778  90 61 00 10 */	stw r3, 0x10(r1)
/* 8073977C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80739780  80 1D 01 BC */	lwz r0, 0x1bc(r29)
/* 80739784  90 01 00 18 */	stw r0, 0x18(r1)
/* 80739788  7F 23 CB 78 */	mr r3, r25
/* 8073978C  38 81 00 10 */	addi r4, r1, 0x10
/* 80739790  4B FF CA DD */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
/* 80739794  7F 23 CB 78 */	mr r3, r25
/* 80739798  4B FF F9 0D */	bl daE_OctBg_Execute__FP11daE_OctBg_c
lbl_8073979C:
/* 8073979C  7F 43 D3 78 */	mr r3, r26
lbl_807397A0:
/* 807397A0  39 61 00 50 */	addi r11, r1, 0x50
/* 807397A4  4B C2 8A 6D */	bl _restgpr_23
/* 807397A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807397AC  7C 08 03 A6 */	mtlr r0
/* 807397B0  38 21 00 50 */	addi r1, r1, 0x50
/* 807397B4  4E 80 00 20 */	blr 
