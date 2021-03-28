lbl_80C25158:
/* 80C25158  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C2515C  7C 08 02 A6 */	mflr r0
/* 80C25160  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C25164  39 61 00 30 */	addi r11, r1, 0x30
/* 80C25168  4B 73 D0 74 */	b _savegpr_29
/* 80C2516C  7C 7E 1B 78 */	mr r30, r3
/* 80C25170  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C25174  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C25178  83 E4 5D AC */	lwz r31, 0x5dac(r4)
/* 80C2517C  48 00 07 8D */	bl event_proc_call__14daObjIceLeaf_cFv
/* 80C25180  7F C3 F3 78 */	mr r3, r30
/* 80C25184  48 00 01 DD */	bl action__14daObjIceLeaf_cFv
/* 80C25188  88 1E 09 61 */	lbz r0, 0x961(r30)
/* 80C2518C  28 00 00 00 */	cmplwi r0, 0
/* 80C25190  41 82 00 DC */	beq lbl_80C2526C
/* 80C25194  88 1E 09 2B */	lbz r0, 0x92b(r30)
/* 80C25198  28 00 00 00 */	cmplwi r0, 0
/* 80C2519C  40 82 00 C8 */	bne lbl_80C25264
/* 80C251A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C251A4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80C251A8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C251AC  38 80 00 00 */	li r4, 0
/* 80C251B0  90 81 00 08 */	stw r4, 8(r1)
/* 80C251B4  38 00 FF FF */	li r0, -1
/* 80C251B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C251BC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C251C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C251C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C251C8  38 80 00 00 */	li r4, 0
/* 80C251CC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C12@ha */
/* 80C251D0  38 A5 8C 12 */	addi r5, r5, 0x8C12 /* 0x00008C12@l */
/* 80C251D4  38 DE 05 38 */	addi r6, r30, 0x538
/* 80C251D8  38 E0 00 00 */	li r7, 0
/* 80C251DC  39 00 00 00 */	li r8, 0
/* 80C251E0  39 20 00 00 */	li r9, 0
/* 80C251E4  39 40 00 FF */	li r10, 0xff
/* 80C251E8  3D 60 80 C2 */	lis r11, lit_3806@ha
/* 80C251EC  C0 2B 5D 78 */	lfs f1, lit_3806@l(r11)
/* 80C251F0  4B 42 78 A0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C251F4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C251F8  38 80 00 00 */	li r4, 0
/* 80C251FC  90 81 00 08 */	stw r4, 8(r1)
/* 80C25200  38 00 FF FF */	li r0, -1
/* 80C25204  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C25208  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C2520C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C25210  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C25214  38 80 00 00 */	li r4, 0
/* 80C25218  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C13@ha */
/* 80C2521C  38 A5 8C 13 */	addi r5, r5, 0x8C13 /* 0x00008C13@l */
/* 80C25220  38 DE 05 38 */	addi r6, r30, 0x538
/* 80C25224  38 E0 00 00 */	li r7, 0
/* 80C25228  39 00 00 00 */	li r8, 0
/* 80C2522C  39 20 00 00 */	li r9, 0
/* 80C25230  39 40 00 FF */	li r10, 0xff
/* 80C25234  3D 60 80 C2 */	lis r11, lit_3806@ha
/* 80C25238  C0 2B 5D 78 */	lfs f1, lit_3806@l(r11)
/* 80C2523C  4B 42 78 54 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C25240  38 00 00 01 */	li r0, 1
/* 80C25244  98 1E 09 2B */	stb r0, 0x92b(r30)
/* 80C25248  7F E3 FB 78 */	mr r3, r31
/* 80C2524C  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200BA@ha */
/* 80C25250  38 84 00 BA */	addi r4, r4, 0x00BA /* 0x000200BA@l */
/* 80C25254  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80C25258  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80C2525C  7D 89 03 A6 */	mtctr r12
/* 80C25260  4E 80 04 21 */	bctrl 
lbl_80C25264:
/* 80C25264  7F C3 F3 78 */	mr r3, r30
/* 80C25268  4B 3F 4A 14 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80C2526C:
/* 80C2526C  88 1E 09 62 */	lbz r0, 0x962(r30)
/* 80C25270  28 00 00 00 */	cmplwi r0, 0
/* 80C25274  41 82 00 C8 */	beq lbl_80C2533C
/* 80C25278  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2527C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80C25280  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C25284  38 80 00 00 */	li r4, 0
/* 80C25288  90 81 00 08 */	stw r4, 8(r1)
/* 80C2528C  38 00 FF FF */	li r0, -1
/* 80C25290  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C25294  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C25298  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C2529C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C252A0  38 80 00 00 */	li r4, 0
/* 80C252A4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C12@ha */
/* 80C252A8  38 A5 8C 12 */	addi r5, r5, 0x8C12 /* 0x00008C12@l */
/* 80C252AC  38 DE 05 38 */	addi r6, r30, 0x538
/* 80C252B0  38 E0 00 00 */	li r7, 0
/* 80C252B4  39 00 00 00 */	li r8, 0
/* 80C252B8  39 20 00 00 */	li r9, 0
/* 80C252BC  39 40 00 FF */	li r10, 0xff
/* 80C252C0  3D 60 80 C2 */	lis r11, lit_3806@ha
/* 80C252C4  C0 2B 5D 78 */	lfs f1, lit_3806@l(r11)
/* 80C252C8  4B 42 77 C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C252CC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C252D0  38 80 00 00 */	li r4, 0
/* 80C252D4  90 81 00 08 */	stw r4, 8(r1)
/* 80C252D8  38 00 FF FF */	li r0, -1
/* 80C252DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C252E0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C252E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C252E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C252EC  38 80 00 00 */	li r4, 0
/* 80C252F0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C13@ha */
/* 80C252F4  38 A5 8C 13 */	addi r5, r5, 0x8C13 /* 0x00008C13@l */
/* 80C252F8  38 DE 05 38 */	addi r6, r30, 0x538
/* 80C252FC  38 E0 00 00 */	li r7, 0
/* 80C25300  39 00 00 00 */	li r8, 0
/* 80C25304  39 20 00 00 */	li r9, 0
/* 80C25308  39 40 00 FF */	li r10, 0xff
/* 80C2530C  3D 60 80 C2 */	lis r11, lit_3806@ha
/* 80C25310  C0 2B 5D 78 */	lfs f1, lit_3806@l(r11)
/* 80C25314  4B 42 77 7C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C25318  38 00 00 00 */	li r0, 0
/* 80C2531C  98 1E 09 62 */	stb r0, 0x962(r30)
/* 80C25320  7F E3 FB 78 */	mr r3, r31
/* 80C25324  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200BA@ha */
/* 80C25328  38 84 00 BA */	addi r4, r4, 0x00BA /* 0x000200BA@l */
/* 80C2532C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80C25330  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80C25334  7D 89 03 A6 */	mtctr r12
/* 80C25338  4E 80 04 21 */	bctrl 
lbl_80C2533C:
/* 80C2533C  7F C3 F3 78 */	mr r3, r30
/* 80C25340  4B FF F4 35 */	bl setBaseMtx__14daObjIceLeaf_cFv
/* 80C25344  38 60 00 01 */	li r3, 1
/* 80C25348  39 61 00 30 */	addi r11, r1, 0x30
/* 80C2534C  4B 73 CE DC */	b _restgpr_29
/* 80C25350  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C25354  7C 08 03 A6 */	mtlr r0
/* 80C25358  38 21 00 30 */	addi r1, r1, 0x30
/* 80C2535C  4E 80 00 20 */	blr 
