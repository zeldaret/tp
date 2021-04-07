lbl_8067E428:
/* 8067E428  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8067E42C  7C 08 02 A6 */	mflr r0
/* 8067E430  90 01 00 34 */	stw r0, 0x34(r1)
/* 8067E434  39 61 00 30 */	addi r11, r1, 0x30
/* 8067E438  4B CE 3D 95 */	bl _savegpr_25
/* 8067E43C  7C 7B 1B 78 */	mr r27, r3
/* 8067E440  3C 80 80 68 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8067E978@ha */
/* 8067E444  3B E4 E9 78 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x8067E978@l */
/* 8067E448  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8067E44C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8067E450  40 82 01 58 */	bne lbl_8067E5A8
/* 8067E454  7F 60 DB 79 */	or. r0, r27, r27
/* 8067E458  41 82 01 44 */	beq lbl_8067E59C
/* 8067E45C  7C 1A 03 78 */	mr r26, r0
/* 8067E460  4B 99 A7 05 */	bl __ct__10fopAc_ac_cFv
/* 8067E464  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8067E468  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8067E46C  90 1A 05 FC */	stw r0, 0x5fc(r26)
/* 8067E470  38 7A 06 00 */	addi r3, r26, 0x600
/* 8067E474  4B A0 52 ED */	bl __ct__10dCcD_GSttsFv
/* 8067E478  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8067E47C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8067E480  90 7A 05 FC */	stw r3, 0x5fc(r26)
/* 8067E484  38 03 00 20 */	addi r0, r3, 0x20
/* 8067E488  90 1A 06 00 */	stw r0, 0x600(r26)
/* 8067E48C  3B 3A 06 20 */	addi r25, r26, 0x620
/* 8067E490  7F 23 CB 78 */	mr r3, r25
/* 8067E494  4B A0 55 95 */	bl __ct__12dCcD_GObjInfFv
/* 8067E498  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8067E49C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8067E4A0  90 19 01 20 */	stw r0, 0x120(r25)
/* 8067E4A4  3C 60 80 68 */	lis r3, __vt__8cM3dGAab@ha /* 0x8067EAD4@ha */
/* 8067E4A8  38 03 EA D4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8067EAD4@l */
/* 8067E4AC  90 19 01 1C */	stw r0, 0x11c(r25)
/* 8067E4B0  3C 60 80 68 */	lis r3, __vt__8cM3dGSph@ha /* 0x8067EAC8@ha */
/* 8067E4B4  38 03 EA C8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8067EAC8@l */
/* 8067E4B8  90 19 01 34 */	stw r0, 0x134(r25)
/* 8067E4BC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8067E4C0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8067E4C4  90 79 01 20 */	stw r3, 0x120(r25)
/* 8067E4C8  3B C3 00 58 */	addi r30, r3, 0x58
/* 8067E4CC  93 D9 01 34 */	stw r30, 0x134(r25)
/* 8067E4D0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8067E4D4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8067E4D8  90 79 00 3C */	stw r3, 0x3c(r25)
/* 8067E4DC  3B A3 00 2C */	addi r29, r3, 0x2c
/* 8067E4E0  93 B9 01 20 */	stw r29, 0x120(r25)
/* 8067E4E4  3B 83 00 84 */	addi r28, r3, 0x84
/* 8067E4E8  93 99 01 34 */	stw r28, 0x134(r25)
/* 8067E4EC  3B 3A 07 58 */	addi r25, r26, 0x758
/* 8067E4F0  7F 23 CB 78 */	mr r3, r25
/* 8067E4F4  4B A0 55 35 */	bl __ct__12dCcD_GObjInfFv
/* 8067E4F8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8067E4FC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8067E500  90 19 01 20 */	stw r0, 0x120(r25)
/* 8067E504  3C 60 80 68 */	lis r3, __vt__8cM3dGAab@ha /* 0x8067EAD4@ha */
/* 8067E508  38 03 EA D4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8067EAD4@l */
/* 8067E50C  90 19 01 1C */	stw r0, 0x11c(r25)
/* 8067E510  3C 60 80 68 */	lis r3, __vt__8cM3dGSph@ha /* 0x8067EAC8@ha */
/* 8067E514  38 03 EA C8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8067EAC8@l */
/* 8067E518  90 19 01 34 */	stw r0, 0x134(r25)
/* 8067E51C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8067E520  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8067E524  90 19 01 20 */	stw r0, 0x120(r25)
/* 8067E528  93 D9 01 34 */	stw r30, 0x134(r25)
/* 8067E52C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8067E530  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8067E534  90 19 00 3C */	stw r0, 0x3c(r25)
/* 8067E538  93 B9 01 20 */	stw r29, 0x120(r25)
/* 8067E53C  93 99 01 34 */	stw r28, 0x134(r25)
/* 8067E540  3B 3A 08 90 */	addi r25, r26, 0x890
/* 8067E544  7F 23 CB 78 */	mr r3, r25
/* 8067E548  4B A0 54 E1 */	bl __ct__12dCcD_GObjInfFv
/* 8067E54C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8067E550  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8067E554  90 19 01 20 */	stw r0, 0x120(r25)
/* 8067E558  3C 60 80 68 */	lis r3, __vt__8cM3dGAab@ha /* 0x8067EAD4@ha */
/* 8067E55C  38 03 EA D4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8067EAD4@l */
/* 8067E560  90 19 01 1C */	stw r0, 0x11c(r25)
/* 8067E564  3C 60 80 68 */	lis r3, __vt__8cM3dGSph@ha /* 0x8067EAC8@ha */
/* 8067E568  38 03 EA C8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8067EAC8@l */
/* 8067E56C  90 19 01 34 */	stw r0, 0x134(r25)
/* 8067E570  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8067E574  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8067E578  90 19 01 20 */	stw r0, 0x120(r25)
/* 8067E57C  93 D9 01 34 */	stw r30, 0x134(r25)
/* 8067E580  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8067E584  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8067E588  90 19 00 3C */	stw r0, 0x3c(r25)
/* 8067E58C  93 B9 01 20 */	stw r29, 0x120(r25)
/* 8067E590  93 99 01 34 */	stw r28, 0x134(r25)
/* 8067E594  38 7A 0A 18 */	addi r3, r26, 0xa18
/* 8067E598  4B C4 05 A1 */	bl __ct__15Z2SoundObjArrowFv
lbl_8067E59C:
/* 8067E59C  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 8067E5A0  60 00 00 08 */	ori r0, r0, 8
/* 8067E5A4  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_8067E5A8:
/* 8067E5A8  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8067E5AC  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8067E5B0  41 82 00 14 */	beq lbl_8067E5C4
/* 8067E5B4  3C 60 80 68 */	lis r3, d_a_e_arrow__stringBase0@ha /* 0x8067E96C@ha */
/* 8067E5B8  38 03 E9 6C */	addi r0, r3, d_a_e_arrow__stringBase0@l /* 0x8067E96C@l */
/* 8067E5BC  90 1B 05 BC */	stw r0, 0x5bc(r27)
/* 8067E5C0  48 00 00 14 */	b lbl_8067E5D4
lbl_8067E5C4:
/* 8067E5C4  3C 60 80 68 */	lis r3, d_a_e_arrow__stringBase0@ha /* 0x8067E96C@ha */
/* 8067E5C8  38 63 E9 6C */	addi r3, r3, d_a_e_arrow__stringBase0@l /* 0x8067E96C@l */
/* 8067E5CC  38 03 00 06 */	addi r0, r3, 6
/* 8067E5D0  90 1B 05 BC */	stw r0, 0x5bc(r27)
lbl_8067E5D4:
/* 8067E5D4  38 7B 05 AC */	addi r3, r27, 0x5ac
/* 8067E5D8  80 9B 05 BC */	lwz r4, 0x5bc(r27)
/* 8067E5DC  4B 9A E8 E1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8067E5E0  7C 7C 1B 78 */	mr r28, r3
/* 8067E5E4  2C 1C 00 04 */	cmpwi r28, 4
/* 8067E5E8  40 82 01 20 */	bne lbl_8067E708
/* 8067E5EC  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8067E5F0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8067E5F4  98 1B 05 B8 */	stb r0, 0x5b8(r27)
/* 8067E5F8  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8067E5FC  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 8067E600  98 1B 05 B9 */	stb r0, 0x5b9(r27)
/* 8067E604  7F 63 DB 78 */	mr r3, r27
/* 8067E608  3C 80 80 68 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8067E374@ha */
/* 8067E60C  38 84 E3 74 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8067E374@l */
/* 8067E610  38 A0 08 20 */	li r5, 0x820
/* 8067E614  4B 99 BE 9D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8067E618  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8067E61C  40 82 00 0C */	bne lbl_8067E628
/* 8067E620  38 60 00 05 */	li r3, 5
/* 8067E624  48 00 00 E8 */	b lbl_8067E70C
lbl_8067E628:
/* 8067E628  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 8067E62C  38 03 00 24 */	addi r0, r3, 0x24
/* 8067E630  90 1B 05 04 */	stw r0, 0x504(r27)
/* 8067E634  38 7B 05 E4 */	addi r3, r27, 0x5e4
/* 8067E638  38 80 00 FF */	li r4, 0xff
/* 8067E63C  38 A0 00 00 */	li r5, 0
/* 8067E640  7F 66 DB 78 */	mr r6, r27
/* 8067E644  4B A0 52 1D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8067E648  38 7B 06 20 */	addi r3, r27, 0x620
/* 8067E64C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8067E650  4B A0 63 E5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8067E654  38 1B 05 E4 */	addi r0, r27, 0x5e4
/* 8067E658  90 1B 06 64 */	stw r0, 0x664(r27)
/* 8067E65C  3C 60 80 68 */	lis r3, atHit_CB__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x8067DAE8@ha */
/* 8067E660  38 03 DA E8 */	addi r0, r3, atHit_CB__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x8067DAE8@l */
/* 8067E664  90 1B 06 80 */	stw r0, 0x680(r27)
/* 8067E668  88 1B 05 B8 */	lbz r0, 0x5b8(r27)
/* 8067E66C  28 00 00 01 */	cmplwi r0, 1
/* 8067E670  40 82 00 0C */	bne lbl_8067E67C
/* 8067E674  38 00 00 01 */	li r0, 1
/* 8067E678  98 1B 06 95 */	stb r0, 0x695(r27)
lbl_8067E67C:
/* 8067E67C  38 7B 06 20 */	addi r3, r27, 0x620
/* 8067E680  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8067E684  4B A0 63 F5 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 8067E688  38 7B 07 58 */	addi r3, r27, 0x758
/* 8067E68C  38 9F 00 68 */	addi r4, r31, 0x68
/* 8067E690  4B A0 63 A5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8067E694  38 1B 05 E4 */	addi r0, r27, 0x5e4
/* 8067E698  90 1B 07 9C */	stw r0, 0x79c(r27)
/* 8067E69C  3C 60 80 68 */	lis r3, lit_4605@ha /* 0x8067E8F8@ha */
/* 8067E6A0  C0 23 E8 F8 */	lfs f1, lit_4605@l(r3)  /* 0x8067E8F8@l */
/* 8067E6A4  4B BE 92 B1 */	bl cM_rndF__Ff
/* 8067E6A8  FC 00 08 1E */	fctiwz f0, f1
/* 8067E6AC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8067E6B0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8067E6B4  B0 1B 05 C0 */	sth r0, 0x5c0(r27)
/* 8067E6B8  88 1B 05 B9 */	lbz r0, 0x5b9(r27)
/* 8067E6BC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8067E6C0  41 82 00 18 */	beq lbl_8067E6D8
/* 8067E6C4  38 7B 08 90 */	addi r3, r27, 0x890
/* 8067E6C8  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 8067E6CC  4B A0 63 69 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8067E6D0  38 1B 05 E4 */	addi r0, r27, 0x5e4
/* 8067E6D4  90 1B 08 D4 */	stw r0, 0x8d4(r27)
lbl_8067E6D8:
/* 8067E6D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8067E6DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8067E6E0  3C 80 80 68 */	lis r4, lit_4362@ha /* 0x8067E88C@ha */
/* 8067E6E4  C0 24 E8 8C */	lfs f1, lit_4362@l(r4)  /* 0x8067E88C@l */
/* 8067E6E8  FC 40 08 90 */	fmr f2, f1
/* 8067E6EC  FC 60 08 90 */	fmr f3, f1
/* 8067E6F0  4B CC 82 79 */	bl PSMTXScale
/* 8067E6F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8067E6F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8067E6FC  80 9B 05 B4 */	lwz r4, 0x5b4(r27)
/* 8067E700  38 84 00 24 */	addi r4, r4, 0x24
/* 8067E704  4B CC 7D AD */	bl PSMTXCopy
lbl_8067E708:
/* 8067E708  7F 83 E3 78 */	mr r3, r28
lbl_8067E70C:
/* 8067E70C  39 61 00 30 */	addi r11, r1, 0x30
/* 8067E710  4B CE 3B 09 */	bl _restgpr_25
/* 8067E714  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8067E718  7C 08 03 A6 */	mtlr r0
/* 8067E71C  38 21 00 30 */	addi r1, r1, 0x30
/* 8067E720  4E 80 00 20 */	blr 
