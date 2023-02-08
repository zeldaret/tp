lbl_80708584:
/* 80708584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80708588  7C 08 02 A6 */	mflr r0
/* 8070858C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80708590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80708594  93 C1 00 08 */	stw r30, 8(r1)
/* 80708598  7C 7F 1B 78 */	mr r31, r3
/* 8070859C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807085A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807085A4  40 82 00 C8 */	bne lbl_8070866C
/* 807085A8  7F E0 FB 79 */	or. r0, r31, r31
/* 807085AC  41 82 00 B4 */	beq lbl_80708660
/* 807085B0  7C 1E 03 78 */	mr r30, r0
/* 807085B4  4B 91 05 B1 */	bl __ct__10fopAc_ac_cFv
/* 807085B8  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 807085BC  4B BB 89 A9 */	bl __ct__15Z2CreatureEnemyFv
/* 807085C0  3C 60 80 71 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha /* 0x80708BB8@ha */
/* 807085C4  38 03 8B B8 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l /* 0x80708BB8@l */
/* 807085C8  90 1E 06 B4 */	stw r0, 0x6b4(r30)
/* 807085CC  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha /* 0x803A3248@ha */
/* 807085D0  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l /* 0x803A3248@l */
/* 807085D4  90 1E 06 B4 */	stw r0, 0x6b4(r30)
/* 807085D8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 807085DC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 807085E0  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 807085E4  38 7E 07 10 */	addi r3, r30, 0x710
/* 807085E8  4B 97 B1 79 */	bl __ct__10dCcD_GSttsFv
/* 807085EC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 807085F0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 807085F4  90 7E 07 0C */	stw r3, 0x70c(r30)
/* 807085F8  38 03 00 20 */	addi r0, r3, 0x20
/* 807085FC  90 1E 07 10 */	stw r0, 0x710(r30)
/* 80708600  3B DE 07 30 */	addi r30, r30, 0x730
/* 80708604  7F C3 F3 78 */	mr r3, r30
/* 80708608  4B 97 B4 21 */	bl __ct__12dCcD_GObjInfFv
/* 8070860C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80708610  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80708614  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80708618  3C 60 80 71 */	lis r3, __vt__8cM3dGAab@ha /* 0x80708BAC@ha */
/* 8070861C  38 03 8B AC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80708BAC@l */
/* 80708620  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80708624  3C 60 80 71 */	lis r3, __vt__8cM3dGSph@ha /* 0x80708BA0@ha */
/* 80708628  38 03 8B A0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80708BA0@l */
/* 8070862C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80708630  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80708634  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80708638  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8070863C  38 03 00 58 */	addi r0, r3, 0x58
/* 80708640  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80708644  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80708648  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8070864C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80708650  38 03 00 2C */	addi r0, r3, 0x2c
/* 80708654  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80708658  38 03 00 84 */	addi r0, r3, 0x84
/* 8070865C  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80708660:
/* 80708660  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80708664  60 00 00 08 */	ori r0, r0, 8
/* 80708668  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8070866C:
/* 8070866C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80708670  3C 80 80 71 */	lis r4, d_a_e_mb__stringBase0@ha /* 0x80708AE8@ha */
/* 80708674  38 84 8A E8 */	addi r4, r4, d_a_e_mb__stringBase0@l /* 0x80708AE8@l */
/* 80708678  4B 92 48 45 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8070867C  7C 7E 1B 78 */	mr r30, r3
/* 80708680  2C 1E 00 04 */	cmpwi r30, 4
/* 80708684  40 82 00 FC */	bne lbl_80708780
/* 80708688  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8070868C  54 04 46 3E */	srwi r4, r0, 0x18
/* 80708690  28 04 00 FF */	cmplwi r4, 0xff
/* 80708694  41 82 00 28 */	beq lbl_807086BC
/* 80708698  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070869C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807086A0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807086A4  7C 05 07 74 */	extsb r5, r0
/* 807086A8  4B 92 CC B9 */	bl isSwitch__10dSv_info_cCFii
/* 807086AC  2C 03 00 00 */	cmpwi r3, 0
/* 807086B0  41 82 00 0C */	beq lbl_807086BC
/* 807086B4  38 60 00 05 */	li r3, 5
/* 807086B8  48 00 00 CC */	b lbl_80708784
lbl_807086BC:
/* 807086BC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807086C0  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 807086C4  7F E3 FB 78 */	mr r3, r31
/* 807086C8  3C 80 80 71 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x807081B8@ha */
/* 807086CC  38 84 81 B8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x807081B8@l */
/* 807086D0  38 A0 58 A0 */	li r5, 0x58a0
/* 807086D4  4B 91 1D DD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807086D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807086DC  40 82 00 0C */	bne lbl_807086E8
/* 807086E0  38 60 00 05 */	li r3, 5
/* 807086E4  48 00 00 A0 */	b lbl_80708784
lbl_807086E8:
/* 807086E8  3C 60 80 71 */	lis r3, struct_80708C2C+0x1@ha /* 0x80708C2D@ha */
/* 807086EC  8C 03 8C 2D */	lbzu r0, struct_80708C2C+0x1@l(r3)  /* 0x80708C2D@l */
/* 807086F0  28 00 00 00 */	cmplwi r0, 0
/* 807086F4  40 82 00 20 */	bne lbl_80708714
/* 807086F8  38 00 00 01 */	li r0, 1
/* 807086FC  98 1F 08 C9 */	stb r0, 0x8c9(r31)
/* 80708700  98 03 00 00 */	stb r0, 0(r3)
/* 80708704  38 00 FF FF */	li r0, -1
/* 80708708  3C 60 80 71 */	lis r3, l_HIO@ha /* 0x80708C3C@ha */
/* 8070870C  38 63 8C 3C */	addi r3, r3, l_HIO@l /* 0x80708C3C@l */
/* 80708710  98 03 00 04 */	stb r0, 4(r3)
lbl_80708714:
/* 80708714  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80708718  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8070871C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80708720  38 C0 00 03 */	li r6, 3
/* 80708724  38 E0 00 01 */	li r7, 1
/* 80708728  4B BB 89 6D */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8070872C  38 1F 05 E8 */	addi r0, r31, 0x5e8
/* 80708730  90 1F 08 70 */	stw r0, 0x870(r31)
/* 80708734  38 7F 06 F4 */	addi r3, r31, 0x6f4
/* 80708738  38 80 00 FF */	li r4, 0xff
/* 8070873C  38 A0 00 00 */	li r5, 0
/* 80708740  7F E6 FB 78 */	mr r6, r31
/* 80708744  4B 97 B1 1D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80708748  38 7F 07 30 */	addi r3, r31, 0x730
/* 8070874C  3C 80 80 71 */	lis r4, cc_sph_src@ha /* 0x80708B10@ha */
/* 80708750  38 84 8B 10 */	addi r4, r4, cc_sph_src@l /* 0x80708B10@l */
/* 80708754  4B 97 C2 E1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80708758  38 1F 06 F4 */	addi r0, r31, 0x6f4
/* 8070875C  90 1F 07 74 */	stw r0, 0x774(r31)
/* 80708760  38 00 00 04 */	li r0, 4
/* 80708764  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80708768  38 00 00 16 */	li r0, 0x16
/* 8070876C  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80708770  38 00 00 01 */	li r0, 1
/* 80708774  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 80708778  7F E3 FB 78 */	mr r3, r31
/* 8070877C  4B FF EF 05 */	bl daE_MB_Execute__FP10e_mb_class
lbl_80708780:
/* 80708780  7F C3 F3 78 */	mr r3, r30
lbl_80708784:
/* 80708784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80708788  83 C1 00 08 */	lwz r30, 8(r1)
/* 8070878C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80708790  7C 08 03 A6 */	mtlr r0
/* 80708794  38 21 00 10 */	addi r1, r1, 0x10
/* 80708798  4E 80 00 20 */	blr 
