lbl_80CFD67C:
/* 80CFD67C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CFD680  7C 08 02 A6 */	mflr r0
/* 80CFD684  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CFD688  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFD68C  4B 66 4B 51 */	bl _savegpr_29
/* 80CFD690  7C 7F 1B 78 */	mr r31, r3
/* 80CFD694  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CFD698  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CFD69C  40 82 00 F8 */	bne lbl_80CFD794
/* 80CFD6A0  28 1F 00 00 */	cmplwi r31, 0
/* 80CFD6A4  41 82 00 E4 */	beq lbl_80CFD788
/* 80CFD6A8  7F FE FB 78 */	mr r30, r31
/* 80CFD6AC  4B 31 B4 B9 */	bl __ct__10fopAc_ac_cFv
/* 80CFD6B0  3C 60 80 3B */	lis r3, __vt__12daItemBase_c@ha /* 0x803B3610@ha */
/* 80CFD6B4  38 03 36 10 */	addi r0, r3, __vt__12daItemBase_c@l /* 0x803B3610@l */
/* 80CFD6B8  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CFD6BC  3B BE 05 8C */	addi r29, r30, 0x58c
/* 80CFD6C0  7F A3 EB 78 */	mr r3, r29
/* 80CFD6C4  4B 37 89 DD */	bl __ct__9dBgS_AcchFv
/* 80CFD6C8  3C 60 80 D0 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80CFDFE4@ha */
/* 80CFD6CC  38 63 DF E4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80CFDFE4@l */
/* 80CFD6D0  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80CFD6D4  38 03 00 0C */	addi r0, r3, 0xc
/* 80CFD6D8  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80CFD6DC  38 03 00 18 */	addi r0, r3, 0x18
/* 80CFD6E0  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80CFD6E4  38 7D 00 14 */	addi r3, r29, 0x14
/* 80CFD6E8  4B 37 B7 81 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80CFD6EC  38 7E 07 64 */	addi r3, r30, 0x764
/* 80CFD6F0  4B 37 87 BD */	bl __ct__12dBgS_AcchCirFv
/* 80CFD6F4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CFD6F8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CFD6FC  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80CFD700  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 80CFD704  4B 38 60 5D */	bl __ct__10dCcD_GSttsFv
/* 80CFD708  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CFD70C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CFD710  90 7E 07 BC */	stw r3, 0x7bc(r30)
/* 80CFD714  38 03 00 20 */	addi r0, r3, 0x20
/* 80CFD718  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 80CFD71C  3B BE 07 E0 */	addi r29, r30, 0x7e0
/* 80CFD720  7F A3 EB 78 */	mr r3, r29
/* 80CFD724  4B 38 63 05 */	bl __ct__12dCcD_GObjInfFv
/* 80CFD728  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CFD72C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CFD730  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CFD734  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80CFDFD8@ha */
/* 80CFD738  38 03 DF D8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CFDFD8@l */
/* 80CFD73C  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80CFD740  3C 60 80 D0 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CFDFCC@ha */
/* 80CFD744  38 03 DF CC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CFDFCC@l */
/* 80CFD748  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CFD74C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CFD750  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CFD754  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80CFD758  38 03 00 58 */	addi r0, r3, 0x58
/* 80CFD75C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CFD760  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CFD764  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CFD768  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80CFD76C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CFD770  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CFD774  38 03 00 84 */	addi r0, r3, 0x84
/* 80CFD778  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CFD77C  3C 60 80 D0 */	lis r3, __vt__12daObjSword_c@ha /* 0x80CFDF88@ha */
/* 80CFD780  38 03 DF 88 */	addi r0, r3, __vt__12daObjSword_c@l /* 0x80CFDF88@l */
/* 80CFD784  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80CFD788:
/* 80CFD788  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CFD78C  60 00 00 08 */	ori r0, r0, 8
/* 80CFD790  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CFD794:
/* 80CFD794  38 00 00 28 */	li r0, 0x28
/* 80CFD798  98 1F 09 2A */	stb r0, 0x92a(r31)
/* 80CFD79C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFD7A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFD7A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CFD7A8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CFD7AC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CFD7B0  7C 05 07 74 */	extsb r5, r0
/* 80CFD7B4  4B 33 7D DD */	bl isItem__10dSv_info_cCFii
/* 80CFD7B8  2C 03 00 00 */	cmpwi r3, 0
/* 80CFD7BC  41 82 00 0C */	beq lbl_80CFD7C8
/* 80CFD7C0  38 60 00 05 */	li r3, 5
/* 80CFD7C4  48 00 00 6C */	b lbl_80CFD830
lbl_80CFD7C8:
/* 80CFD7C8  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 80CFD7CC  54 00 20 36 */	slwi r0, r0, 4
/* 80CFD7D0  3C 60 80 3B */	lis r3, field_item_res__10dItem_data@ha /* 0x803ADD88@ha */
/* 80CFD7D4  38 63 DD 88 */	addi r3, r3, field_item_res__10dItem_data@l /* 0x803ADD88@l */
/* 80CFD7D8  7C 83 00 2E */	lwzx r4, r3, r0
/* 80CFD7DC  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80CFD7E0  4B 32 F6 DD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CFD7E4  7C 7E 1B 78 */	mr r30, r3
/* 80CFD7E8  2C 1E 00 04 */	cmpwi r30, 4
/* 80CFD7EC  40 82 00 40 */	bne lbl_80CFD82C
/* 80CFD7F0  7F E3 FB 78 */	mr r3, r31
/* 80CFD7F4  3C 80 80 03 */	lis r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@ha /* 0x80037B78@ha */
/* 80CFD7F8  38 84 7B 78 */	addi r4, r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@l /* 0x80037B78@l */
/* 80CFD7FC  38 A0 40 00 */	li r5, 0x4000
/* 80CFD800  4B 31 CC B1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CFD804  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CFD808  40 82 00 0C */	bne lbl_80CFD814
/* 80CFD80C  38 60 00 05 */	li r3, 5
/* 80CFD810  48 00 00 20 */	b lbl_80CFD830
lbl_80CFD814:
/* 80CFD814  7F E3 FB 78 */	mr r3, r31
/* 80CFD818  4B FF FD E9 */	bl Create__12daObjSword_cFv
/* 80CFD81C  2C 03 00 00 */	cmpwi r3, 0
/* 80CFD820  40 82 00 0C */	bne lbl_80CFD82C
/* 80CFD824  38 60 00 05 */	li r3, 5
/* 80CFD828  48 00 00 08 */	b lbl_80CFD830
lbl_80CFD82C:
/* 80CFD82C  7F C3 F3 78 */	mr r3, r30
lbl_80CFD830:
/* 80CFD830  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFD834  4B 66 49 F5 */	bl _restgpr_29
/* 80CFD838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CFD83C  7C 08 03 A6 */	mtlr r0
/* 80CFD840  38 21 00 20 */	addi r1, r1, 0x20
/* 80CFD844  4E 80 00 20 */	blr 
