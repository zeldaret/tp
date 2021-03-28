lbl_80566340:
/* 80566340  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80566344  7C 08 02 A6 */	mflr r0
/* 80566348  90 01 00 34 */	stw r0, 0x34(r1)
/* 8056634C  39 61 00 30 */	addi r11, r1, 0x30
/* 80566350  4B DF BE 88 */	b _savegpr_28
/* 80566354  7C 7F 1B 78 */	mr r31, r3
/* 80566358  38 60 00 00 */	li r3, 0
/* 8056635C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80566360  28 00 00 00 */	cmplwi r0, 0
/* 80566364  41 82 00 0C */	beq lbl_80566370
/* 80566368  38 60 00 03 */	li r3, 3
/* 8056636C  48 00 00 14 */	b lbl_80566380
lbl_80566370:
/* 80566370  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 80566374  28 00 00 0E */	cmplwi r0, 0xe
/* 80566378  40 82 00 08 */	bne lbl_80566380
/* 8056637C  38 60 00 04 */	li r3, 4
lbl_80566380:
/* 80566380  54 65 18 38 */	slwi r5, r3, 3
/* 80566384  3C 60 80 57 */	lis r3, l_bmdData@ha
/* 80566388  38 83 1B F4 */	addi r4, r3, l_bmdData@l
/* 8056638C  7C 64 2A 14 */	add r3, r4, r5
/* 80566390  80 03 00 04 */	lwz r0, 4(r3)
/* 80566394  54 00 10 3A */	slwi r0, r0, 2
/* 80566398  3C 60 80 57 */	lis r3, l_resNameList@ha
/* 8056639C  38 63 1C F4 */	addi r3, r3, l_resNameList@l
/* 805663A0  7C 63 00 2E */	lwzx r3, r3, r0
/* 805663A4  7C 84 28 2E */	lwzx r4, r4, r5
/* 805663A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805663AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805663B0  3F C5 00 02 */	addis r30, r5, 2
/* 805663B4  3B DE C2 F8 */	addi r30, r30, -15624
/* 805663B8  7F C5 F3 78 */	mr r5, r30
/* 805663BC  38 C0 00 80 */	li r6, 0x80
/* 805663C0  4B AD 5F 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805663C4  7C 7C 1B 79 */	or. r28, r3, r3
/* 805663C8  40 82 00 0C */	bne lbl_805663D4
/* 805663CC  38 60 00 00 */	li r3, 0
/* 805663D0  48 00 03 6C */	b lbl_8056673C
lbl_805663D4:
/* 805663D4  38 60 00 58 */	li r3, 0x58
/* 805663D8  4B D6 88 74 */	b __nw__FUl
/* 805663DC  7C 60 1B 79 */	or. r0, r3, r3
/* 805663E0  41 82 00 4C */	beq lbl_8056642C
/* 805663E4  38 1F 05 80 */	addi r0, r31, 0x580
/* 805663E8  90 01 00 08 */	stw r0, 8(r1)
/* 805663EC  3C 00 00 08 */	lis r0, 8
/* 805663F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805663F4  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 805663F8  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 805663FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80566400  7F 84 E3 78 */	mr r4, r28
/* 80566404  38 A0 00 00 */	li r5, 0
/* 80566408  38 C0 00 00 */	li r6, 0
/* 8056640C  38 E0 00 00 */	li r7, 0
/* 80566410  39 00 FF FF */	li r8, -1
/* 80566414  3D 20 80 57 */	lis r9, lit_4835@ha
/* 80566418  C0 29 17 BC */	lfs f1, lit_4835@l(r9)
/* 8056641C  39 20 00 00 */	li r9, 0
/* 80566420  39 40 FF FF */	li r10, -1
/* 80566424  4B AA A3 AC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80566428  7C 60 1B 78 */	mr r0, r3
lbl_8056642C:
/* 8056642C  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80566430  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80566434  28 03 00 00 */	cmplwi r3, 0
/* 80566438  41 82 00 10 */	beq lbl_80566448
/* 8056643C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80566440  28 05 00 00 */	cmplwi r5, 0
/* 80566444  40 82 00 0C */	bne lbl_80566450
lbl_80566448:
/* 80566448  38 60 00 00 */	li r3, 0
/* 8056644C  48 00 02 F0 */	b lbl_8056673C
lbl_80566450:
/* 80566450  38 C0 00 00 */	li r6, 0
/* 80566454  3C 60 80 56 */	lis r3, ctrlJointCallBack__12daNpc_Taro_cFP8J3DJointi@ha
/* 80566458  38 83 6A 18 */	addi r4, r3, ctrlJointCallBack__12daNpc_Taro_cFP8J3DJointi@l
/* 8056645C  48 00 00 18 */	b lbl_80566474
lbl_80566460:
/* 80566460  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80566464  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80566468  7C 63 00 2E */	lwzx r3, r3, r0
/* 8056646C  90 83 00 04 */	stw r4, 4(r3)
/* 80566470  38 C6 00 01 */	addi r6, r6, 1
lbl_80566474:
/* 80566474  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80566478  A0 1C 00 2C */	lhz r0, 0x2c(r28)
/* 8056647C  7C 03 00 40 */	cmplw r3, r0
/* 80566480  41 80 FF E0 */	blt lbl_80566460
/* 80566484  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80566488  38 60 01 08 */	li r3, 0x108
/* 8056648C  4B D6 87 C0 */	b __nw__FUl
/* 80566490  7C 7D 1B 79 */	or. r29, r3, r3
/* 80566494  41 82 00 D0 */	beq lbl_80566564
/* 80566498  7F BC EB 78 */	mr r28, r29
/* 8056649C  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 805664A0  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 805664A4  90 1D 00 00 */	stw r0, 0(r29)
/* 805664A8  38 7D 00 04 */	addi r3, r29, 4
/* 805664AC  3C 80 80 56 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 805664B0  38 84 68 F8 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 805664B4  3C A0 80 56 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 805664B8  38 A5 68 BC */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 805664BC  38 C0 00 08 */	li r6, 8
/* 805664C0  38 E0 00 02 */	li r7, 2
/* 805664C4  4B DF B8 9C */	b __construct_array
/* 805664C8  38 7D 00 14 */	addi r3, r29, 0x14
/* 805664CC  3C 80 80 56 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 805664D0  38 84 68 A4 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 805664D4  3C A0 80 56 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 805664D8  38 A5 68 68 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 805664DC  38 C0 00 08 */	li r6, 8
/* 805664E0  38 E0 00 08 */	li r7, 8
/* 805664E4  4B DF B8 7C */	b __construct_array
/* 805664E8  38 7D 00 54 */	addi r3, r29, 0x54
/* 805664EC  3C 80 80 56 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 805664F0  38 84 68 44 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 805664F4  3C A0 80 56 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 805664F8  38 A5 67 FC */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 805664FC  38 C0 00 0C */	li r6, 0xc
/* 80566500  38 E0 00 08 */	li r7, 8
/* 80566504  4B DF B8 5C */	b __construct_array
/* 80566508  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 8056650C  3C 80 80 56 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80566510  38 84 67 E4 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80566514  3C A0 80 56 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80566518  38 A5 67 A8 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 8056651C  38 C0 00 08 */	li r6, 8
/* 80566520  38 E0 00 04 */	li r7, 4
/* 80566524  4B DF B8 3C */	b __construct_array
/* 80566528  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 8056652C  3C 80 80 56 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80566530  38 84 67 90 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80566534  3C A0 80 56 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80566538  38 A5 67 54 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 8056653C  38 C0 00 08 */	li r6, 8
/* 80566540  38 E0 00 04 */	li r7, 4
/* 80566544  4B DF B8 1C */	b __construct_array
/* 80566548  7F A3 EB 78 */	mr r3, r29
/* 8056654C  4B DC 5D D4 */	b initialize__14J3DMaterialAnmFv
/* 80566550  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80566554  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80566558  90 1C 00 00 */	stw r0, 0(r28)
/* 8056655C  7F 83 E3 78 */	mr r3, r28
/* 80566560  4B BD F2 04 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80566564:
/* 80566564  93 BF 09 6C */	stw r29, 0x96c(r31)
/* 80566568  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 8056656C  28 00 00 00 */	cmplwi r0, 0
/* 80566570  40 82 00 0C */	bne lbl_8056657C
/* 80566574  38 60 00 00 */	li r3, 0
/* 80566578  48 00 01 C4 */	b lbl_8056673C
lbl_8056657C:
/* 8056657C  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 80566580  28 00 00 0C */	cmplwi r0, 0xc
/* 80566584  41 82 00 0C */	beq lbl_80566590
/* 80566588  28 00 00 0F */	cmplwi r0, 0xf
/* 8056658C  40 82 00 70 */	bne lbl_805665FC
lbl_80566590:
/* 80566590  3C 60 80 57 */	lis r3, l_bmdData@ha
/* 80566594  38 63 1B F4 */	addi r3, r3, l_bmdData@l
/* 80566598  80 83 00 08 */	lwz r4, 8(r3)
/* 8056659C  2C 04 00 00 */	cmpwi r4, 0
/* 805665A0  41 80 00 28 */	blt lbl_805665C8
/* 805665A4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805665A8  54 00 10 3A */	slwi r0, r0, 2
/* 805665AC  3C 60 80 57 */	lis r3, l_resNameList@ha
/* 805665B0  38 63 1C F4 */	addi r3, r3, l_resNameList@l
/* 805665B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 805665B8  7F C5 F3 78 */	mr r5, r30
/* 805665BC  38 C0 00 80 */	li r6, 0x80
/* 805665C0  4B AD 5D 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805665C4  48 00 00 08 */	b lbl_805665CC
lbl_805665C8:
/* 805665C8  38 60 00 00 */	li r3, 0
lbl_805665CC:
/* 805665CC  28 03 00 00 */	cmplwi r3, 0
/* 805665D0  41 82 00 18 */	beq lbl_805665E8
/* 805665D4  3C 80 00 08 */	lis r4, 8
/* 805665D8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 805665DC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 805665E0  4B AA E6 74 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805665E4  90 7F 0E 44 */	stw r3, 0xe44(r31)
lbl_805665E8:
/* 805665E8  80 1F 0E 44 */	lwz r0, 0xe44(r31)
/* 805665EC  28 00 00 00 */	cmplwi r0, 0
/* 805665F0  40 82 00 0C */	bne lbl_805665FC
/* 805665F4  38 60 00 00 */	li r3, 0
/* 805665F8  48 00 01 44 */	b lbl_8056673C
lbl_805665FC:
/* 805665FC  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 80566600  28 00 00 00 */	cmplwi r0, 0
/* 80566604  41 82 00 1C */	beq lbl_80566620
/* 80566608  28 00 00 01 */	cmplwi r0, 1
/* 8056660C  41 82 00 14 */	beq lbl_80566620
/* 80566610  28 00 00 02 */	cmplwi r0, 2
/* 80566614  41 82 00 0C */	beq lbl_80566620
/* 80566618  28 00 00 09 */	cmplwi r0, 9
/* 8056661C  40 82 00 70 */	bne lbl_8056668C
lbl_80566620:
/* 80566620  3C 60 80 57 */	lis r3, l_bmdData@ha
/* 80566624  38 63 1B F4 */	addi r3, r3, l_bmdData@l
/* 80566628  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8056662C  2C 04 00 00 */	cmpwi r4, 0
/* 80566630  41 80 00 28 */	blt lbl_80566658
/* 80566634  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80566638  54 00 10 3A */	slwi r0, r0, 2
/* 8056663C  3C 60 80 57 */	lis r3, l_resNameList@ha
/* 80566640  38 63 1C F4 */	addi r3, r3, l_resNameList@l
/* 80566644  7C 63 00 2E */	lwzx r3, r3, r0
/* 80566648  7F C5 F3 78 */	mr r5, r30
/* 8056664C  38 C0 00 80 */	li r6, 0x80
/* 80566650  4B AD 5C 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80566654  48 00 00 08 */	b lbl_8056665C
lbl_80566658:
/* 80566658  38 60 00 00 */	li r3, 0
lbl_8056665C:
/* 8056665C  28 03 00 00 */	cmplwi r3, 0
/* 80566660  41 82 00 18 */	beq lbl_80566678
/* 80566664  3C 80 00 08 */	lis r4, 8
/* 80566668  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8056666C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80566670  4B AA E5 E4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80566674  90 7F 0E 48 */	stw r3, 0xe48(r31)
lbl_80566678:
/* 80566678  80 1F 0E 48 */	lwz r0, 0xe48(r31)
/* 8056667C  28 00 00 00 */	cmplwi r0, 0
/* 80566680  40 82 00 0C */	bne lbl_8056668C
/* 80566684  38 60 00 00 */	li r3, 0
/* 80566688  48 00 00 B4 */	b lbl_8056673C
lbl_8056668C:
/* 8056668C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80566690  28 00 00 00 */	cmplwi r0, 0
/* 80566694  41 82 00 58 */	beq lbl_805666EC
/* 80566698  7F E3 FB 78 */	mr r3, r31
/* 8056669C  38 80 00 17 */	li r4, 0x17
/* 805666A0  38 A0 00 00 */	li r5, 0
/* 805666A4  4B BE 3C E4 */	b setFaceMotionAnm__8daNpcT_cFib
/* 805666A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805666AC  41 82 00 38 */	beq lbl_805666E4
/* 805666B0  7F E3 FB 78 */	mr r3, r31
/* 805666B4  38 80 00 21 */	li r4, 0x21
/* 805666B8  3C A0 80 57 */	lis r5, lit_4472@ha
/* 805666BC  C0 25 17 AC */	lfs f1, lit_4472@l(r5)
/* 805666C0  38 A0 00 00 */	li r5, 0
/* 805666C4  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 805666C8  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 805666CC  7D 89 03 A6 */	mtctr r12
/* 805666D0  4E 80 04 21 */	bctrl 
/* 805666D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805666D8  41 82 00 0C */	beq lbl_805666E4
/* 805666DC  38 60 00 01 */	li r3, 1
/* 805666E0  48 00 00 5C */	b lbl_8056673C
lbl_805666E4:
/* 805666E4  38 60 00 00 */	li r3, 0
/* 805666E8  48 00 00 54 */	b lbl_8056673C
lbl_805666EC:
/* 805666EC  7F E3 FB 78 */	mr r3, r31
/* 805666F0  38 80 00 01 */	li r4, 1
/* 805666F4  38 A0 00 00 */	li r5, 0
/* 805666F8  4B BE 3C 90 */	b setFaceMotionAnm__8daNpcT_cFib
/* 805666FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80566700  41 82 00 38 */	beq lbl_80566738
/* 80566704  7F E3 FB 78 */	mr r3, r31
/* 80566708  38 80 00 00 */	li r4, 0
/* 8056670C  3C A0 80 57 */	lis r5, lit_4472@ha
/* 80566710  C0 25 17 AC */	lfs f1, lit_4472@l(r5)
/* 80566714  38 A0 00 00 */	li r5, 0
/* 80566718  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 8056671C  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80566720  7D 89 03 A6 */	mtctr r12
/* 80566724  4E 80 04 21 */	bctrl 
/* 80566728  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8056672C  41 82 00 0C */	beq lbl_80566738
/* 80566730  38 60 00 01 */	li r3, 1
/* 80566734  48 00 00 08 */	b lbl_8056673C
lbl_80566738:
/* 80566738  38 60 00 00 */	li r3, 0
lbl_8056673C:
/* 8056673C  39 61 00 30 */	addi r11, r1, 0x30
/* 80566740  4B DF BA E4 */	b _restgpr_28
/* 80566744  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80566748  7C 08 03 A6 */	mtlr r0
/* 8056674C  38 21 00 30 */	addi r1, r1, 0x30
/* 80566750  4E 80 00 20 */	blr 
