lbl_80C294EC:
/* 80C294EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C294F0  7C 08 02 A6 */	mflr r0
/* 80C294F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C294F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C294FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C29500  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C29504  7C 9F 23 78 */	mr r31, r4
/* 80C29508  41 82 01 BC */	beq lbl_80C296C4
/* 80C2950C  3C 80 80 C3 */	lis r4, __vt__15daObj_ItaMato_c@ha
/* 80C29510  38 04 AD 34 */	addi r0, r4, __vt__15daObj_ItaMato_c@l
/* 80C29514  90 1E 0A 1C */	stw r0, 0xa1c(r30)
/* 80C29518  48 00 11 09 */	bl getResName__15daObj_ItaMato_cFv
/* 80C2951C  7C 64 1B 78 */	mr r4, r3
/* 80C29520  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80C29524  4B 40 3A E4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C29528  38 7E 09 D0 */	addi r3, r30, 0x9d0
/* 80C2952C  3C 80 80 C3 */	lis r4, __dt__5csXyzFv@ha
/* 80C29530  38 84 96 E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80C29534  38 A0 00 06 */	li r5, 6
/* 80C29538  38 C0 00 03 */	li r6, 3
/* 80C2953C  4B 73 87 AC */	b __destroy_arr
/* 80C29540  38 7E 09 60 */	addi r3, r30, 0x960
/* 80C29544  38 80 FF FF */	li r4, -1
/* 80C29548  4B 44 E7 94 */	b __dt__11dBgS_LinChkFv
/* 80C2954C  34 1E 09 44 */	addic. r0, r30, 0x944
/* 80C29550  41 82 00 10 */	beq lbl_80C29560
/* 80C29554  3C 60 80 C3 */	lis r3, __vt__8cM3dGLin@ha
/* 80C29558  38 03 AD 28 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80C2955C  90 1E 09 5C */	stw r0, 0x95c(r30)
lbl_80C29560:
/* 80C29560  34 1E 08 0C */	addic. r0, r30, 0x80c
/* 80C29564  41 82 00 84 */	beq lbl_80C295E8
/* 80C29568  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80C2956C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80C29570  90 7E 08 48 */	stw r3, 0x848(r30)
/* 80C29574  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C29578  90 1E 09 2C */	stw r0, 0x92c(r30)
/* 80C2957C  38 03 00 84 */	addi r0, r3, 0x84
/* 80C29580  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80C29584  34 1E 09 10 */	addic. r0, r30, 0x910
/* 80C29588  41 82 00 54 */	beq lbl_80C295DC
/* 80C2958C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80C29590  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80C29594  90 7E 09 2C */	stw r3, 0x92c(r30)
/* 80C29598  38 03 00 58 */	addi r0, r3, 0x58
/* 80C2959C  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80C295A0  34 1E 09 30 */	addic. r0, r30, 0x930
/* 80C295A4  41 82 00 10 */	beq lbl_80C295B4
/* 80C295A8  3C 60 80 C3 */	lis r3, __vt__8cM3dGSph@ha
/* 80C295AC  38 03 AD 1C */	addi r0, r3, __vt__8cM3dGSph@l
/* 80C295B0  90 1E 09 40 */	stw r0, 0x940(r30)
lbl_80C295B4:
/* 80C295B4  34 1E 09 10 */	addic. r0, r30, 0x910
/* 80C295B8  41 82 00 24 */	beq lbl_80C295DC
/* 80C295BC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C295C0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C295C4  90 1E 09 2C */	stw r0, 0x92c(r30)
/* 80C295C8  34 1E 09 10 */	addic. r0, r30, 0x910
/* 80C295CC  41 82 00 10 */	beq lbl_80C295DC
/* 80C295D0  3C 60 80 C3 */	lis r3, __vt__8cM3dGAab@ha
/* 80C295D4  38 03 AD 10 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C295D8  90 1E 09 28 */	stw r0, 0x928(r30)
lbl_80C295DC:
/* 80C295DC  38 7E 08 0C */	addi r3, r30, 0x80c
/* 80C295E0  38 80 00 00 */	li r4, 0
/* 80C295E4  4B 45 AB 00 */	b __dt__12dCcD_GObjInfFv
lbl_80C295E8:
/* 80C295E8  38 7E 07 D0 */	addi r3, r30, 0x7d0
/* 80C295EC  38 80 FF FF */	li r4, -1
/* 80C295F0  4B 63 E6 A4 */	b __dt__11cBgS_GndChkFv
/* 80C295F4  34 1E 07 90 */	addic. r0, r30, 0x790
/* 80C295F8  41 82 00 28 */	beq lbl_80C29620
/* 80C295FC  3C 60 80 C3 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80C29600  38 03 AD 04 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80C29604  90 1E 07 9C */	stw r0, 0x79c(r30)
/* 80C29608  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80C2960C  38 80 FF FF */	li r4, -1
/* 80C29610  4B 64 59 08 */	b __dt__8cM3dGCirFv
/* 80C29614  38 7E 07 90 */	addi r3, r30, 0x790
/* 80C29618  38 80 00 00 */	li r4, 0
/* 80C2961C  4B 63 EA 94 */	b __dt__13cBgS_PolyInfoFv
lbl_80C29620:
/* 80C29620  34 1E 07 54 */	addic. r0, r30, 0x754
/* 80C29624  41 82 00 54 */	beq lbl_80C29678
/* 80C29628  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C2962C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C29630  90 7E 07 6C */	stw r3, 0x76c(r30)
/* 80C29634  38 03 00 20 */	addi r0, r3, 0x20
/* 80C29638  90 1E 07 70 */	stw r0, 0x770(r30)
/* 80C2963C  34 1E 07 70 */	addic. r0, r30, 0x770
/* 80C29640  41 82 00 24 */	beq lbl_80C29664
/* 80C29644  3C 60 80 C3 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C29648  38 03 AC F8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C2964C  90 1E 07 70 */	stw r0, 0x770(r30)
/* 80C29650  34 1E 07 70 */	addic. r0, r30, 0x770
/* 80C29654  41 82 00 10 */	beq lbl_80C29664
/* 80C29658  3C 60 80 C3 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C2965C  38 03 AC EC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C29660  90 1E 07 70 */	stw r0, 0x770(r30)
lbl_80C29664:
/* 80C29664  34 1E 07 54 */	addic. r0, r30, 0x754
/* 80C29668  41 82 00 10 */	beq lbl_80C29678
/* 80C2966C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C29670  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C29674  90 1E 07 6C */	stw r0, 0x76c(r30)
lbl_80C29678:
/* 80C29678  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 80C2967C  41 82 00 2C */	beq lbl_80C296A8
/* 80C29680  3C 60 80 C3 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C29684  38 63 AC C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C29688  90 7E 05 8C */	stw r3, 0x58c(r30)
/* 80C2968C  38 03 00 0C */	addi r0, r3, 0xc
/* 80C29690  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80C29694  38 03 00 18 */	addi r0, r3, 0x18
/* 80C29698  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80C2969C  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80C296A0  38 80 00 00 */	li r4, 0
/* 80C296A4  4B 44 C8 F0 */	b __dt__9dBgS_AcchFv
lbl_80C296A8:
/* 80C296A8  7F C3 F3 78 */	mr r3, r30
/* 80C296AC  38 80 00 00 */	li r4, 0
/* 80C296B0  4B 3E F5 DC */	b __dt__10fopAc_ac_cFv
/* 80C296B4  7F E0 07 35 */	extsh. r0, r31
/* 80C296B8  40 81 00 0C */	ble lbl_80C296C4
/* 80C296BC  7F C3 F3 78 */	mr r3, r30
/* 80C296C0  4B 6A 56 7C */	b __dl__FPv
lbl_80C296C4:
/* 80C296C4  7F C3 F3 78 */	mr r3, r30
/* 80C296C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C296CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C296D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C296D4  7C 08 03 A6 */	mtlr r0
/* 80C296D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C296DC  4E 80 00 20 */	blr 
