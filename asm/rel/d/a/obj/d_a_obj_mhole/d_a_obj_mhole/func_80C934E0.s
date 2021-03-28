lbl_80C934E0:
/* 80C934E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C934E4  7C 08 02 A6 */	mflr r0
/* 80C934E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C934EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C934F0  4B 6C EC EC */	b _savegpr_29
/* 80C934F4  7C 7F 1B 78 */	mr r31, r3
/* 80C934F8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C934FC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C93500  40 82 00 AC */	bne lbl_80C935AC
/* 80C93504  7F E0 FB 79 */	or. r0, r31, r31
/* 80C93508  41 82 00 98 */	beq lbl_80C935A0
/* 80C9350C  7C 1E 03 78 */	mr r30, r0
/* 80C93510  4B 38 56 54 */	b __ct__10fopAc_ac_cFv
/* 80C93514  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C93518  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C9351C  90 1E 05 98 */	stw r0, 0x598(r30)
/* 80C93520  38 7E 05 9C */	addi r3, r30, 0x59c
/* 80C93524  4B 3F 02 3C */	b __ct__10dCcD_GSttsFv
/* 80C93528  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C9352C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C93530  90 7E 05 98 */	stw r3, 0x598(r30)
/* 80C93534  38 03 00 20 */	addi r0, r3, 0x20
/* 80C93538  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C9353C  3B BE 05 BC */	addi r29, r30, 0x5bc
/* 80C93540  7F A3 EB 78 */	mr r3, r29
/* 80C93544  4B 3F 04 E4 */	b __ct__12dCcD_GObjInfFv
/* 80C93548  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C9354C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C93550  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C93554  3C 60 80 C9 */	lis r3, __vt__8cM3dGAab@ha
/* 80C93558  38 03 3E B8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C9355C  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C93560  38 7D 01 24 */	addi r3, r29, 0x124
/* 80C93564  4B 5D BA 24 */	b __ct__8cM3dGCpsFv
/* 80C93568  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80C9356C  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 80C93570  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C93574  38 03 00 58 */	addi r0, r3, 0x58
/* 80C93578  90 1D 01 3C */	stw r0, 0x13c(r29)
/* 80C9357C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha
/* 80C93580  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l
/* 80C93584  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C93588  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C9358C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C93590  38 03 00 84 */	addi r0, r3, 0x84
/* 80C93594  90 1D 01 3C */	stw r0, 0x13c(r29)
/* 80C93598  38 7E 07 14 */	addi r3, r30, 0x714
/* 80C9359C  4B 62 B2 A8 */	b __ct__16Z2SoundObjSimpleFv
lbl_80C935A0:
/* 80C935A0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C935A4  60 00 00 08 */	ori r0, r0, 8
/* 80C935A8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C935AC:
/* 80C935AC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C935B0  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80C935B4  98 1F 07 02 */	stb r0, 0x702(r31)
/* 80C935B8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C935BC  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80C935C0  28 00 00 01 */	cmplwi r0, 1
/* 80C935C4  40 82 00 1C */	bne lbl_80C935E0
/* 80C935C8  7F E3 FB 78 */	mr r3, r31
/* 80C935CC  4B FF FB CD */	bl checkParent__12daObjMHole_cFv
/* 80C935D0  2C 03 00 00 */	cmpwi r3, 0
/* 80C935D4  40 82 00 0C */	bne lbl_80C935E0
/* 80C935D8  38 60 00 00 */	li r3, 0
/* 80C935DC  48 00 00 6C */	b lbl_80C93648
lbl_80C935E0:
/* 80C935E0  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C935E4  88 1F 07 02 */	lbz r0, 0x702(r31)
/* 80C935E8  54 00 10 3A */	slwi r0, r0, 2
/* 80C935EC  3C 80 80 C9 */	lis r4, l_arcName@ha
/* 80C935F0  38 84 3E 14 */	addi r4, r4, l_arcName@l
/* 80C935F4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C935F8  4B 39 98 C4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C935FC  7C 7E 1B 78 */	mr r30, r3
/* 80C93600  2C 1E 00 04 */	cmpwi r30, 4
/* 80C93604  40 82 00 40 */	bne lbl_80C93644
/* 80C93608  7F E3 FB 78 */	mr r3, r31
/* 80C9360C  3C 80 80 C9 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80C93610  38 84 2F B8 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80C93614  38 A0 40 00 */	li r5, 0x4000
/* 80C93618  4B 38 6E 98 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C9361C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C93620  40 82 00 0C */	bne lbl_80C9362C
/* 80C93624  38 60 00 05 */	li r3, 5
/* 80C93628  48 00 00 20 */	b lbl_80C93648
lbl_80C9362C:
/* 80C9362C  7F E3 FB 78 */	mr r3, r31
/* 80C93630  4B FF FA 4D */	bl Create__12daObjMHole_cFv
/* 80C93634  2C 03 00 00 */	cmpwi r3, 0
/* 80C93638  40 82 00 0C */	bne lbl_80C93644
/* 80C9363C  38 60 00 05 */	li r3, 5
/* 80C93640  48 00 00 08 */	b lbl_80C93648
lbl_80C93644:
/* 80C93644  7F C3 F3 78 */	mr r3, r30
lbl_80C93648:
/* 80C93648  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9364C  4B 6C EB DC */	b _restgpr_29
/* 80C93650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C93654  7C 08 03 A6 */	mtlr r0
/* 80C93658  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9365C  4E 80 00 20 */	blr 
