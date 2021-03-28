lbl_80D3EF0C:
/* 80D3EF0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3EF10  7C 08 02 A6 */	mflr r0
/* 80D3EF14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3EF18  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3EF1C  4B 62 32 C0 */	b _savegpr_29
/* 80D3EF20  7C 7F 1B 78 */	mr r31, r3
/* 80D3EF24  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D3EF28  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D3EF2C  40 82 00 F8 */	bne lbl_80D3F024
/* 80D3EF30  28 1F 00 00 */	cmplwi r31, 0
/* 80D3EF34  41 82 00 E4 */	beq lbl_80D3F018
/* 80D3EF38  7F FE FB 78 */	mr r30, r31
/* 80D3EF3C  4B 2D 9C 28 */	b __ct__10fopAc_ac_cFv
/* 80D3EF40  3C 60 80 3B */	lis r3, __vt__12daItemBase_c@ha
/* 80D3EF44  38 03 36 10 */	addi r0, r3, __vt__12daItemBase_c@l
/* 80D3EF48  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D3EF4C  3B BE 05 8C */	addi r29, r30, 0x58c
/* 80D3EF50  7F A3 EB 78 */	mr r3, r29
/* 80D3EF54  4B 33 71 4C */	b __ct__9dBgS_AcchFv
/* 80D3EF58  3C 60 80 D4 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80D3EF5C  38 63 F3 80 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80D3EF60  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80D3EF64  38 03 00 0C */	addi r0, r3, 0xc
/* 80D3EF68  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80D3EF6C  38 03 00 18 */	addi r0, r3, 0x18
/* 80D3EF70  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80D3EF74  38 7D 00 14 */	addi r3, r29, 0x14
/* 80D3EF78  4B 33 9E F0 */	b SetObj__16dBgS_PolyPassChkFv
/* 80D3EF7C  38 7E 07 64 */	addi r3, r30, 0x764
/* 80D3EF80  4B 33 6F 2C */	b __ct__12dBgS_AcchCirFv
/* 80D3EF84  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D3EF88  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D3EF8C  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80D3EF90  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 80D3EF94  4B 34 47 CC */	b __ct__10dCcD_GSttsFv
/* 80D3EF98  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D3EF9C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D3EFA0  90 7E 07 BC */	stw r3, 0x7bc(r30)
/* 80D3EFA4  38 03 00 20 */	addi r0, r3, 0x20
/* 80D3EFA8  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 80D3EFAC  3B BE 07 E0 */	addi r29, r30, 0x7e0
/* 80D3EFB0  7F A3 EB 78 */	mr r3, r29
/* 80D3EFB4  4B 34 4A 74 */	b __ct__12dCcD_GObjInfFv
/* 80D3EFB8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D3EFBC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D3EFC0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D3EFC4  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha
/* 80D3EFC8  38 03 F3 74 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D3EFCC  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80D3EFD0  3C 60 80 D4 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D3EFD4  38 03 F3 68 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D3EFD8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D3EFDC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D3EFE0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D3EFE4  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80D3EFE8  38 03 00 58 */	addi r0, r3, 0x58
/* 80D3EFEC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D3EFF0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D3EFF4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D3EFF8  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80D3EFFC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D3F000  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D3F004  38 03 00 84 */	addi r0, r3, 0x84
/* 80D3F008  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D3F00C  3C 60 80 D4 */	lis r3, __vt__13daObjZCloth_c@ha
/* 80D3F010  38 03 F3 24 */	addi r0, r3, __vt__13daObjZCloth_c@l
/* 80D3F014  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80D3F018:
/* 80D3F018  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D3F01C  60 00 00 08 */	ori r0, r0, 8
/* 80D3F020  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D3F024:
/* 80D3F024  38 00 00 31 */	li r0, 0x31
/* 80D3F028  98 1F 09 2A */	stb r0, 0x92a(r31)
/* 80D3F02C  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 80D3F030  54 00 20 36 */	slwi r0, r0, 4
/* 80D3F034  3C 60 80 3B */	lis r3, field_item_res__10dItem_data@ha
/* 80D3F038  38 63 DD 88 */	addi r3, r3, field_item_res__10dItem_data@l
/* 80D3F03C  7C 83 00 2E */	lwzx r4, r3, r0
/* 80D3F040  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80D3F044  4B 2E DE 78 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D3F048  7C 7E 1B 78 */	mr r30, r3
/* 80D3F04C  2C 1E 00 04 */	cmpwi r30, 4
/* 80D3F050  40 82 00 40 */	bne lbl_80D3F090
/* 80D3F054  7F E3 FB 78 */	mr r3, r31
/* 80D3F058  3C 80 80 03 */	lis r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@ha
/* 80D3F05C  38 84 7B 78 */	addi r4, r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@l
/* 80D3F060  38 A0 2F B0 */	li r5, 0x2fb0
/* 80D3F064  4B 2D B4 4C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D3F068  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3F06C  40 82 00 0C */	bne lbl_80D3F078
/* 80D3F070  38 60 00 05 */	li r3, 5
/* 80D3F074  48 00 00 20 */	b lbl_80D3F094
lbl_80D3F078:
/* 80D3F078  7F E3 FB 78 */	mr r3, r31
/* 80D3F07C  4B FF FE 45 */	bl Create__13daObjZCloth_cFv
/* 80D3F080  2C 03 00 00 */	cmpwi r3, 0
/* 80D3F084  40 82 00 0C */	bne lbl_80D3F090
/* 80D3F088  38 60 00 05 */	li r3, 5
/* 80D3F08C  48 00 00 08 */	b lbl_80D3F094
lbl_80D3F090:
/* 80D3F090  7F C3 F3 78 */	mr r3, r30
lbl_80D3F094:
/* 80D3F094  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3F098  4B 62 31 90 */	b _restgpr_29
/* 80D3F09C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3F0A0  7C 08 03 A6 */	mtlr r0
/* 80D3F0A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3F0A8  4E 80 00 20 */	blr 
