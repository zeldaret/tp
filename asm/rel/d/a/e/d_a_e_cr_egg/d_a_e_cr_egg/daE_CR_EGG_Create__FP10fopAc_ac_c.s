lbl_8069A57C:
/* 8069A57C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8069A580  7C 08 02 A6 */	mflr r0
/* 8069A584  90 01 00 24 */	stw r0, 0x24(r1)
/* 8069A588  39 61 00 20 */	addi r11, r1, 0x20
/* 8069A58C  4B CC 7C 51 */	bl _savegpr_29
/* 8069A590  7C 7F 1B 78 */	mr r31, r3
/* 8069A594  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8069A598  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8069A59C  40 82 00 E8 */	bne lbl_8069A684
/* 8069A5A0  7F E0 FB 79 */	or. r0, r31, r31
/* 8069A5A4  41 82 00 D4 */	beq lbl_8069A678
/* 8069A5A8  7C 1E 03 78 */	mr r30, r0
/* 8069A5AC  4B 97 E5 B9 */	bl __ct__10fopAc_ac_cFv
/* 8069A5B0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8069A5B4  4B C2 5E 15 */	bl __ct__10Z2CreatureFv
/* 8069A5B8  38 7E 06 5C */	addi r3, r30, 0x65c
/* 8069A5BC  4B 9D B8 F1 */	bl __ct__12dBgS_AcchCirFv
/* 8069A5C0  3B BE 06 9C */	addi r29, r30, 0x69c
/* 8069A5C4  7F A3 EB 78 */	mr r3, r29
/* 8069A5C8  4B 9D BA D9 */	bl __ct__9dBgS_AcchFv
/* 8069A5CC  3C 60 80 6A */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8069A9C8@ha */
/* 8069A5D0  38 63 A9 C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8069A9C8@l */
/* 8069A5D4  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8069A5D8  38 03 00 0C */	addi r0, r3, 0xc
/* 8069A5DC  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8069A5E0  38 03 00 18 */	addi r0, r3, 0x18
/* 8069A5E4  90 1D 00 24 */	stw r0, 0x24(r29)
/* 8069A5E8  38 7D 00 14 */	addi r3, r29, 0x14
/* 8069A5EC  4B 9D E8 7D */	bl SetObj__16dBgS_PolyPassChkFv
/* 8069A5F0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8069A5F4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8069A5F8  90 1E 08 8C */	stw r0, 0x88c(r30)
/* 8069A5FC  38 7E 08 90 */	addi r3, r30, 0x890
/* 8069A600  4B 9E 91 61 */	bl __ct__10dCcD_GSttsFv
/* 8069A604  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8069A608  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8069A60C  90 7E 08 8C */	stw r3, 0x88c(r30)
/* 8069A610  38 03 00 20 */	addi r0, r3, 0x20
/* 8069A614  90 1E 08 90 */	stw r0, 0x890(r30)
/* 8069A618  3B BE 08 B0 */	addi r29, r30, 0x8b0
/* 8069A61C  7F A3 EB 78 */	mr r3, r29
/* 8069A620  4B 9E 94 09 */	bl __ct__12dCcD_GObjInfFv
/* 8069A624  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8069A628  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8069A62C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8069A630  3C 60 80 6A */	lis r3, __vt__8cM3dGAab@ha /* 0x8069A9BC@ha */
/* 8069A634  38 03 A9 BC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8069A9BC@l */
/* 8069A638  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 8069A63C  3C 60 80 6A */	lis r3, __vt__8cM3dGSph@ha /* 0x8069A9B0@ha */
/* 8069A640  38 03 A9 B0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8069A9B0@l */
/* 8069A644  90 1D 01 34 */	stw r0, 0x134(r29)
/* 8069A648  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8069A64C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8069A650  90 7D 01 20 */	stw r3, 0x120(r29)
/* 8069A654  38 03 00 58 */	addi r0, r3, 0x58
/* 8069A658  90 1D 01 34 */	stw r0, 0x134(r29)
/* 8069A65C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8069A660  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8069A664  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 8069A668  38 03 00 2C */	addi r0, r3, 0x2c
/* 8069A66C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8069A670  38 03 00 84 */	addi r0, r3, 0x84
/* 8069A674  90 1D 01 34 */	stw r0, 0x134(r29)
lbl_8069A678:
/* 8069A678  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8069A67C  60 00 00 08 */	ori r0, r0, 8
/* 8069A680  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8069A684:
/* 8069A684  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8069A688  3C 80 80 6A */	lis r4, d_a_e_cr_egg__stringBase0@ha /* 0x8069A90C@ha */
/* 8069A68C  38 84 A9 0C */	addi r4, r4, d_a_e_cr_egg__stringBase0@l /* 0x8069A90C@l */
/* 8069A690  4B 99 28 2D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8069A694  7C 7E 1B 78 */	mr r30, r3
/* 8069A698  2C 1E 00 04 */	cmpwi r30, 4
/* 8069A69C  40 82 00 FC */	bne lbl_8069A798
/* 8069A6A0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8069A6A4  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 8069A6A8  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8069A6AC  28 00 00 FF */	cmplwi r0, 0xff
/* 8069A6B0  40 82 00 0C */	bne lbl_8069A6BC
/* 8069A6B4  38 00 00 00 */	li r0, 0
/* 8069A6B8  98 1F 05 B4 */	stb r0, 0x5b4(r31)
lbl_8069A6BC:
/* 8069A6BC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8069A6C0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8069A6C4  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 8069A6C8  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 8069A6CC  28 00 00 FF */	cmplwi r0, 0xff
/* 8069A6D0  40 82 00 0C */	bne lbl_8069A6DC
/* 8069A6D4  38 00 00 00 */	li r0, 0
/* 8069A6D8  98 1F 05 B5 */	stb r0, 0x5b5(r31)
lbl_8069A6DC:
/* 8069A6DC  7F E3 FB 78 */	mr r3, r31
/* 8069A6E0  3C 80 80 6A */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8069A510@ha */
/* 8069A6E4  38 84 A5 10 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8069A510@l */
/* 8069A6E8  38 A0 08 20 */	li r5, 0x820
/* 8069A6EC  4B 97 FD C5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8069A6F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8069A6F4  40 82 00 0C */	bne lbl_8069A700
/* 8069A6F8  38 60 00 05 */	li r3, 5
/* 8069A6FC  48 00 00 A0 */	b lbl_8069A79C
lbl_8069A700:
/* 8069A700  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8069A704  38 03 00 24 */	addi r0, r3, 0x24
/* 8069A708  90 1F 05 04 */	stw r0, 0x504(r31)
/* 8069A70C  38 7F 08 74 */	addi r3, r31, 0x874
/* 8069A710  38 80 00 32 */	li r4, 0x32
/* 8069A714  38 A0 00 00 */	li r5, 0
/* 8069A718  7F E6 FB 78 */	mr r6, r31
/* 8069A71C  4B 9E 91 45 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8069A720  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 8069A724  3C 80 80 6A */	lis r4, cc_sph_src@ha /* 0x8069A920@ha */
/* 8069A728  38 84 A9 20 */	addi r4, r4, cc_sph_src@l /* 0x8069A920@l */
/* 8069A72C  4B 9E A3 09 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8069A730  38 1F 08 74 */	addi r0, r31, 0x874
/* 8069A734  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 8069A738  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8069A73C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8069A740  38 A0 00 00 */	li r5, 0
/* 8069A744  38 C0 00 03 */	li r6, 3
/* 8069A748  38 E0 00 01 */	li r7, 1
/* 8069A74C  4B C2 5D E5 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 8069A750  38 00 00 00 */	li r0, 0
/* 8069A754  90 01 00 08 */	stw r0, 8(r1)
/* 8069A758  38 7F 06 9C */	addi r3, r31, 0x69c
/* 8069A75C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8069A760  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 8069A764  7F E6 FB 78 */	mr r6, r31
/* 8069A768  38 E0 00 01 */	li r7, 1
/* 8069A76C  39 1F 06 5C */	addi r8, r31, 0x65c
/* 8069A770  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 8069A774  39 40 00 00 */	li r10, 0
/* 8069A778  4B 9D BA D1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8069A77C  38 7F 06 5C */	addi r3, r31, 0x65c
/* 8069A780  3C 80 80 6A */	lis r4, lit_3730@ha /* 0x8069A904@ha */
/* 8069A784  C0 24 A9 04 */	lfs f1, lit_3730@l(r4)  /* 0x8069A904@l */
/* 8069A788  FC 40 08 90 */	fmr f2, f1
/* 8069A78C  4B 9D B7 CD */	bl SetWall__12dBgS_AcchCirFff
/* 8069A790  7F E3 FB 78 */	mr r3, r31
/* 8069A794  4B FF FB E5 */	bl daE_CR_EGG_Execute__FP14e_cr_egg_class
lbl_8069A798:
/* 8069A798  7F C3 F3 78 */	mr r3, r30
lbl_8069A79C:
/* 8069A79C  39 61 00 20 */	addi r11, r1, 0x20
/* 8069A7A0  4B CC 7A 89 */	bl _restgpr_29
/* 8069A7A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8069A7A8  7C 08 03 A6 */	mtlr r0
/* 8069A7AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8069A7B0  4E 80 00 20 */	blr 
