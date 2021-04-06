lbl_8069936C:
/* 8069936C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80699370  7C 08 02 A6 */	mflr r0
/* 80699374  90 01 00 24 */	stw r0, 0x24(r1)
/* 80699378  39 61 00 20 */	addi r11, r1, 0x20
/* 8069937C  4B CC 8E 61 */	bl _savegpr_29
/* 80699380  7C 7F 1B 78 */	mr r31, r3
/* 80699384  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80699388  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8069938C  40 82 00 E8 */	bne lbl_80699474
/* 80699390  7F E0 FB 79 */	or. r0, r31, r31
/* 80699394  41 82 00 D4 */	beq lbl_80699468
/* 80699398  7C 1E 03 78 */	mr r30, r0
/* 8069939C  4B 97 F7 C9 */	bl __ct__10fopAc_ac_cFv
/* 806993A0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806993A4  4B C2 7B C1 */	bl __ct__15Z2CreatureEnemyFv
/* 806993A8  38 7E 06 98 */	addi r3, r30, 0x698
/* 806993AC  4B 9D CB 01 */	bl __ct__12dBgS_AcchCirFv
/* 806993B0  3B BE 06 D8 */	addi r29, r30, 0x6d8
/* 806993B4  7F A3 EB 78 */	mr r3, r29
/* 806993B8  4B 9D CC E9 */	bl __ct__9dBgS_AcchFv
/* 806993BC  3C 60 80 6A */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80699E50@ha */
/* 806993C0  38 63 9E 50 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80699E50@l */
/* 806993C4  90 7D 00 10 */	stw r3, 0x10(r29)
/* 806993C8  38 03 00 0C */	addi r0, r3, 0xc
/* 806993CC  90 1D 00 14 */	stw r0, 0x14(r29)
/* 806993D0  38 03 00 18 */	addi r0, r3, 0x18
/* 806993D4  90 1D 00 24 */	stw r0, 0x24(r29)
/* 806993D8  38 7D 00 14 */	addi r3, r29, 0x14
/* 806993DC  4B 9D FA 8D */	bl SetObj__16dBgS_PolyPassChkFv
/* 806993E0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806993E4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806993E8  90 1E 08 C8 */	stw r0, 0x8c8(r30)
/* 806993EC  38 7E 08 CC */	addi r3, r30, 0x8cc
/* 806993F0  4B 9E A3 71 */	bl __ct__10dCcD_GSttsFv
/* 806993F4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806993F8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806993FC  90 7E 08 C8 */	stw r3, 0x8c8(r30)
/* 80699400  38 03 00 20 */	addi r0, r3, 0x20
/* 80699404  90 1E 08 CC */	stw r0, 0x8cc(r30)
/* 80699408  3B BE 08 EC */	addi r29, r30, 0x8ec
/* 8069940C  7F A3 EB 78 */	mr r3, r29
/* 80699410  4B 9E A6 19 */	bl __ct__12dCcD_GObjInfFv
/* 80699414  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80699418  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8069941C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80699420  3C 60 80 6A */	lis r3, __vt__8cM3dGAab@ha /* 0x80699E44@ha */
/* 80699424  38 03 9E 44 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80699E44@l */
/* 80699428  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 8069942C  3C 60 80 6A */	lis r3, __vt__8cM3dGSph@ha /* 0x80699E38@ha */
/* 80699430  38 03 9E 38 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80699E38@l */
/* 80699434  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80699438  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8069943C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80699440  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80699444  38 03 00 58 */	addi r0, r3, 0x58
/* 80699448  90 1D 01 34 */	stw r0, 0x134(r29)
/* 8069944C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80699450  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80699454  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80699458  38 03 00 2C */	addi r0, r3, 0x2c
/* 8069945C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80699460  38 03 00 84 */	addi r0, r3, 0x84
/* 80699464  90 1D 01 34 */	stw r0, 0x134(r29)
lbl_80699468:
/* 80699468  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8069946C  60 00 00 08 */	ori r0, r0, 8
/* 80699470  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80699474:
/* 80699474  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80699478  3C 80 80 6A */	lis r4, d_a_e_cr__stringBase0@ha /* 0x80699D40@ha */
/* 8069947C  38 84 9D 40 */	addi r4, r4, d_a_e_cr__stringBase0@l /* 0x80699D40@l */
/* 80699480  4B 99 3A 3D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80699484  7C 7E 1B 78 */	mr r30, r3
/* 80699488  2C 1E 00 04 */	cmpwi r30, 4
/* 8069948C  40 82 01 38 */	bne lbl_806995C4
/* 80699490  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80699494  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 80699498  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8069949C  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 806994A0  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 806994A4  7F E3 FB 78 */	mr r3, r31
/* 806994A8  3C 80 80 6A */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8069922C@ha */
/* 806994AC  38 84 92 2C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8069922C@l */
/* 806994B0  38 A0 13 40 */	li r5, 0x1340
/* 806994B4  4B 98 0F FD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806994B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806994BC  40 82 00 0C */	bne lbl_806994C8
/* 806994C0  38 60 00 05 */	li r3, 5
/* 806994C4  48 00 01 04 */	b lbl_806995C8
lbl_806994C8:
/* 806994C8  3C 60 80 6A */	lis r3, data_80699E88@ha /* 0x80699E88@ha */
/* 806994CC  8C 03 9E 88 */	lbzu r0, data_80699E88@l(r3)  /* 0x80699E88@l */
/* 806994D0  28 00 00 00 */	cmplwi r0, 0
/* 806994D4  40 82 00 20 */	bne lbl_806994F4
/* 806994D8  38 00 00 01 */	li r0, 1
/* 806994DC  98 1F 0A 5C */	stb r0, 0xa5c(r31)
/* 806994E0  98 03 00 00 */	stb r0, 0(r3)
/* 806994E4  38 00 FF FF */	li r0, -1
/* 806994E8  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x80699E98@ha */
/* 806994EC  38 63 9E 98 */	addi r3, r3, l_HIO@l /* 0x80699E98@l */
/* 806994F0  98 03 00 04 */	stb r0, 4(r3)
lbl_806994F4:
/* 806994F4  38 00 00 04 */	li r0, 4
/* 806994F8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806994FC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80699500  80 63 00 04 */	lwz r3, 4(r3)
/* 80699504  38 03 00 24 */	addi r0, r3, 0x24
/* 80699508  90 1F 05 04 */	stw r0, 0x504(r31)
/* 8069950C  38 00 00 01 */	li r0, 1
/* 80699510  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80699514  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80699518  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 8069951C  38 80 00 64 */	li r4, 0x64
/* 80699520  38 A0 00 00 */	li r5, 0
/* 80699524  7F E6 FB 78 */	mr r6, r31
/* 80699528  4B 9E A3 39 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8069952C  38 7F 08 EC */	addi r3, r31, 0x8ec
/* 80699530  3C 80 80 6A */	lis r4, cc_sph_src@ha /* 0x80699D84@ha */
/* 80699534  38 84 9D 84 */	addi r4, r4, cc_sph_src@l /* 0x80699D84@l */
/* 80699538  4B 9E B4 FD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8069953C  38 1F 08 B0 */	addi r0, r31, 0x8b0
/* 80699540  90 1F 09 30 */	stw r0, 0x930(r31)
/* 80699544  38 00 00 00 */	li r0, 0
/* 80699548  90 01 00 08 */	stw r0, 8(r1)
/* 8069954C  38 7F 06 D8 */	addi r3, r31, 0x6d8
/* 80699550  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80699554  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80699558  7F E6 FB 78 */	mr r6, r31
/* 8069955C  38 E0 00 01 */	li r7, 1
/* 80699560  39 1F 06 98 */	addi r8, r31, 0x698
/* 80699564  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80699568  39 40 00 00 */	li r10, 0
/* 8069956C  4B 9D CC DD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80699570  38 7F 06 98 */	addi r3, r31, 0x698
/* 80699574  3C 80 80 6A */	lis r4, lit_3954@ha /* 0x80699CEC@ha */
/* 80699578  C0 24 9C EC */	lfs f1, lit_3954@l(r4)  /* 0x80699CEC@l */
/* 8069957C  FC 40 08 90 */	fmr f2, f1
/* 80699580  4B 9D C9 D9 */	bl SetWall__12dBgS_AcchCirFff
/* 80699584  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80699588  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8069958C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80699590  38 C0 00 03 */	li r6, 3
/* 80699594  38 E0 00 01 */	li r7, 1
/* 80699598  4B C2 7A FD */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8069959C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806995A0  90 7F 0A 2C */	stw r3, 0xa2c(r31)
/* 806995A4  38 00 00 01 */	li r0, 1
/* 806995A8  98 1F 0A 42 */	stb r0, 0xa42(r31)
/* 806995AC  3C 80 80 6A */	lis r4, d_a_e_cr__stringBase0@ha /* 0x80699D40@ha */
/* 806995B0  38 84 9D 40 */	addi r4, r4, d_a_e_cr__stringBase0@l /* 0x80699D40@l */
/* 806995B4  38 84 00 05 */	addi r4, r4, 5
/* 806995B8  4B C2 85 D9 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806995BC  7F E3 FB 78 */	mr r3, r31
/* 806995C0  4B FF F9 C9 */	bl daE_CR_Execute__FP10e_cr_class
lbl_806995C4:
/* 806995C4  7F C3 F3 78 */	mr r3, r30
lbl_806995C8:
/* 806995C8  39 61 00 20 */	addi r11, r1, 0x20
/* 806995CC  4B CC 8C 5D */	bl _restgpr_29
/* 806995D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806995D4  7C 08 03 A6 */	mtlr r0
/* 806995D8  38 21 00 20 */	addi r1, r1, 0x20
/* 806995DC  4E 80 00 20 */	blr 
