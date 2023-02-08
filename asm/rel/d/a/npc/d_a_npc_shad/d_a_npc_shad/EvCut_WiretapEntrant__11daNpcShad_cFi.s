lbl_80ADFE74:
/* 80ADFE74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ADFE78  7C 08 02 A6 */	mflr r0
/* 80ADFE7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ADFE80  39 61 00 30 */	addi r11, r1, 0x30
/* 80ADFE84  4B 88 23 51 */	bl _savegpr_27
/* 80ADFE88  7C 7D 1B 78 */	mr r29, r3
/* 80ADFE8C  7C 9B 23 78 */	mr r27, r4
/* 80ADFE90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ADFE94  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ADFE98  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80ADFE9C  7F 83 E3 78 */	mr r3, r28
/* 80ADFEA0  3C A0 80 AE */	lis r5, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80ADFEA4  38 A5 24 C4 */	addi r5, r5, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80ADFEA8  38 A5 01 4E */	addi r5, r5, 0x14e
/* 80ADFEAC  38 C0 00 03 */	li r6, 3
/* 80ADFEB0  4B 56 82 3D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ADFEB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ADFEB8  40 82 00 0C */	bne lbl_80ADFEC4
/* 80ADFEBC  38 60 00 00 */	li r3, 0
/* 80ADFEC0  48 00 02 2C */	b lbl_80AE00EC
lbl_80ADFEC4:
/* 80ADFEC4  7F 83 E3 78 */	mr r3, r28
/* 80ADFEC8  7F 64 DB 78 */	mr r4, r27
/* 80ADFECC  4B 56 7E 81 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80ADFED0  2C 03 00 00 */	cmpwi r3, 0
/* 80ADFED4  41 82 00 58 */	beq lbl_80ADFF2C
/* 80ADFED8  80 1F 00 00 */	lwz r0, 0(r31)
/* 80ADFEDC  2C 00 00 00 */	cmpwi r0, 0
/* 80ADFEE0  41 82 00 08 */	beq lbl_80ADFEE8
/* 80ADFEE4  48 00 00 48 */	b lbl_80ADFF2C
lbl_80ADFEE8:
/* 80ADFEE8  7F A3 EB 78 */	mr r3, r29
/* 80ADFEEC  38 80 00 0C */	li r4, 0xc
/* 80ADFEF0  3C A0 80 AE */	lis r5, lit_5210@ha /* 0x80AE2418@ha */
/* 80ADFEF4  C0 25 24 18 */	lfs f1, lit_5210@l(r5)  /* 0x80AE2418@l */
/* 80ADFEF8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADFEFC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFF00  7D 89 03 A6 */	mtctr r12
/* 80ADFF04  4E 80 04 21 */	bctrl 
/* 80ADFF08  7F A3 EB 78 */	mr r3, r29
/* 80ADFF0C  38 80 00 04 */	li r4, 4
/* 80ADFF10  3C A0 80 AE */	lis r5, lit_5210@ha /* 0x80AE2418@ha */
/* 80ADFF14  C0 25 24 18 */	lfs f1, lit_5210@l(r5)  /* 0x80AE2418@l */
/* 80ADFF18  38 A0 00 00 */	li r5, 0
/* 80ADFF1C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADFF20  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADFF24  7D 89 03 A6 */	mtctr r12
/* 80ADFF28  4E 80 04 21 */	bctrl 
lbl_80ADFF2C:
/* 80ADFF2C  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 80ADFF30  7F A3 EB 78 */	mr r3, r29
/* 80ADFF34  38 81 00 0C */	addi r4, r1, 0xc
/* 80ADFF38  38 A1 00 08 */	addi r5, r1, 8
/* 80ADFF3C  7F A6 EB 78 */	mr r6, r29
/* 80ADFF40  38 E0 00 00 */	li r7, 0
/* 80ADFF44  4B 67 37 D5 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ADFF48  2C 03 00 00 */	cmpwi r3, 0
/* 80ADFF4C  41 82 00 4C */	beq lbl_80ADFF98
/* 80ADFF50  7F A3 EB 78 */	mr r3, r29
/* 80ADFF54  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ADFF58  3C A0 80 AE */	lis r5, lit_5210@ha /* 0x80AE2418@ha */
/* 80ADFF5C  C0 25 24 18 */	lfs f1, lit_5210@l(r5)  /* 0x80AE2418@l */
/* 80ADFF60  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADFF64  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFF68  7D 89 03 A6 */	mtctr r12
/* 80ADFF6C  4E 80 04 21 */	bctrl 
/* 80ADFF70  7F A3 EB 78 */	mr r3, r29
/* 80ADFF74  80 81 00 08 */	lwz r4, 8(r1)
/* 80ADFF78  3C A0 80 AE */	lis r5, lit_5210@ha /* 0x80AE2418@ha */
/* 80ADFF7C  C0 25 24 18 */	lfs f1, lit_5210@l(r5)  /* 0x80AE2418@l */
/* 80ADFF80  38 A0 00 00 */	li r5, 0
/* 80ADFF84  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADFF88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADFF8C  7D 89 03 A6 */	mtctr r12
/* 80ADFF90  4E 80 04 21 */	bctrl 
/* 80ADFF94  48 00 00 F4 */	b lbl_80AE0088
lbl_80ADFF98:
/* 80ADFF98  2C 1C 00 00 */	cmpwi r28, 0
/* 80ADFF9C  41 82 00 EC */	beq lbl_80AE0088
/* 80ADFFA0  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80ADFFA4  2C 00 00 00 */	cmpwi r0, 0
/* 80ADFFA8  40 82 00 E0 */	bne lbl_80AE0088
/* 80ADFFAC  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80ADFFB0  2C 00 00 03 */	cmpwi r0, 3
/* 80ADFFB4  41 82 00 6C */	beq lbl_80AE0020
/* 80ADFFB8  40 80 00 14 */	bge lbl_80ADFFCC
/* 80ADFFBC  2C 00 00 01 */	cmpwi r0, 1
/* 80ADFFC0  41 82 00 18 */	beq lbl_80ADFFD8
/* 80ADFFC4  40 80 00 38 */	bge lbl_80ADFFFC
/* 80ADFFC8  48 00 00 A0 */	b lbl_80AE0068
lbl_80ADFFCC:
/* 80ADFFCC  2C 00 00 05 */	cmpwi r0, 5
/* 80ADFFD0  40 80 00 98 */	bge lbl_80AE0068
/* 80ADFFD4  48 00 00 70 */	b lbl_80AE0044
lbl_80ADFFD8:
/* 80ADFFD8  7F A3 EB 78 */	mr r3, r29
/* 80ADFFDC  38 80 00 08 */	li r4, 8
/* 80ADFFE0  3C A0 80 AE */	lis r5, lit_5210@ha /* 0x80AE2418@ha */
/* 80ADFFE4  C0 25 24 18 */	lfs f1, lit_5210@l(r5)  /* 0x80AE2418@l */
/* 80ADFFE8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADFFEC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFFF0  7D 89 03 A6 */	mtctr r12
/* 80ADFFF4  4E 80 04 21 */	bctrl 
/* 80ADFFF8  48 00 00 90 */	b lbl_80AE0088
lbl_80ADFFFC:
/* 80ADFFFC  7F A3 EB 78 */	mr r3, r29
/* 80AE0000  38 80 00 09 */	li r4, 9
/* 80AE0004  3C A0 80 AE */	lis r5, lit_5210@ha /* 0x80AE2418@ha */
/* 80AE0008  C0 25 24 18 */	lfs f1, lit_5210@l(r5)  /* 0x80AE2418@l */
/* 80AE000C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AE0010  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AE0014  7D 89 03 A6 */	mtctr r12
/* 80AE0018  4E 80 04 21 */	bctrl 
/* 80AE001C  48 00 00 6C */	b lbl_80AE0088
lbl_80AE0020:
/* 80AE0020  7F A3 EB 78 */	mr r3, r29
/* 80AE0024  38 80 00 0A */	li r4, 0xa
/* 80AE0028  3C A0 80 AE */	lis r5, lit_5210@ha /* 0x80AE2418@ha */
/* 80AE002C  C0 25 24 18 */	lfs f1, lit_5210@l(r5)  /* 0x80AE2418@l */
/* 80AE0030  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AE0034  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AE0038  7D 89 03 A6 */	mtctr r12
/* 80AE003C  4E 80 04 21 */	bctrl 
/* 80AE0040  48 00 00 48 */	b lbl_80AE0088
lbl_80AE0044:
/* 80AE0044  7F A3 EB 78 */	mr r3, r29
/* 80AE0048  38 80 00 07 */	li r4, 7
/* 80AE004C  3C A0 80 AE */	lis r5, lit_5210@ha /* 0x80AE2418@ha */
/* 80AE0050  C0 25 24 18 */	lfs f1, lit_5210@l(r5)  /* 0x80AE2418@l */
/* 80AE0054  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AE0058  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AE005C  7D 89 03 A6 */	mtctr r12
/* 80AE0060  4E 80 04 21 */	bctrl 
/* 80AE0064  48 00 00 24 */	b lbl_80AE0088
lbl_80AE0068:
/* 80AE0068  7F A3 EB 78 */	mr r3, r29
/* 80AE006C  38 80 00 0C */	li r4, 0xc
/* 80AE0070  3C A0 80 AE */	lis r5, lit_5210@ha /* 0x80AE2418@ha */
/* 80AE0074  C0 25 24 18 */	lfs f1, lit_5210@l(r5)  /* 0x80AE2418@l */
/* 80AE0078  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AE007C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AE0080  7D 89 03 A6 */	mtctr r12
/* 80AE0084  4E 80 04 21 */	bctrl 
lbl_80AE0088:
/* 80AE0088  80 1F 00 00 */	lwz r0, 0(r31)
/* 80AE008C  2C 00 00 00 */	cmpwi r0, 0
/* 80AE0090  41 82 00 08 */	beq lbl_80AE0098
/* 80AE0094  48 00 00 54 */	b lbl_80AE00E8
lbl_80AE0098:
/* 80AE0098  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80AE009C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE00A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE00A4  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 80AE00A8  4B 56 32 45 */	bl convPId__14dEvt_control_cFUi
/* 80AE00AC  7C 03 E8 40 */	cmplw r3, r29
/* 80AE00B0  40 82 00 0C */	bne lbl_80AE00BC
/* 80AE00B4  38 7D 0C 90 */	addi r3, r29, 0xc90
/* 80AE00B8  4B 67 06 35 */	bl getActorP__18daNpcF_ActorMngr_cFv
lbl_80AE00BC:
/* 80AE00BC  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80AE00C0  2C 00 00 04 */	cmpwi r0, 4
/* 80AE00C4  40 82 00 10 */	bne lbl_80AE00D4
/* 80AE00C8  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80AE00CC  7C 03 00 40 */	cmplw r3, r0
/* 80AE00D0  41 82 00 10 */	beq lbl_80AE00E0
lbl_80AE00D4:
/* 80AE00D4  38 00 00 04 */	li r0, 4
/* 80AE00D8  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80AE00DC  90 7D 0C A8 */	stw r3, 0xca8(r29)
lbl_80AE00E0:
/* 80AE00E0  38 60 00 01 */	li r3, 1
/* 80AE00E4  48 00 00 08 */	b lbl_80AE00EC
lbl_80AE00E8:
/* 80AE00E8  38 60 00 00 */	li r3, 0
lbl_80AE00EC:
/* 80AE00EC  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE00F0  4B 88 21 31 */	bl _restgpr_27
/* 80AE00F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE00F8  7C 08 03 A6 */	mtlr r0
/* 80AE00FC  38 21 00 30 */	addi r1, r1, 0x30
/* 80AE0100  4E 80 00 20 */	blr 
