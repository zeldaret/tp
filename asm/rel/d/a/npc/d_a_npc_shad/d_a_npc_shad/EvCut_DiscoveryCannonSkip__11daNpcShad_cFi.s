lbl_80ADED68:
/* 80ADED68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ADED6C  7C 08 02 A6 */	mflr r0
/* 80ADED70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ADED74  39 61 00 20 */	addi r11, r1, 0x20
/* 80ADED78  4B 88 34 61 */	bl _savegpr_28
/* 80ADED7C  7C 7F 1B 78 */	mr r31, r3
/* 80ADED80  7C 9C 23 78 */	mr r28, r4
/* 80ADED84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ADED88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ADED8C  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80ADED90  7F A3 EB 78 */	mr r3, r29
/* 80ADED94  4B 56 91 C9 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80ADED98  7C 7E 1B 78 */	mr r30, r3
/* 80ADED9C  7F A3 EB 78 */	mr r3, r29
/* 80ADEDA0  7F 84 E3 78 */	mr r4, r28
/* 80ADEDA4  4B 56 8F A9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80ADEDA8  2C 03 00 00 */	cmpwi r3, 0
/* 80ADEDAC  41 82 01 1C */	beq lbl_80ADEEC8
/* 80ADEDB0  80 9E 00 00 */	lwz r4, 0(r30)
/* 80ADEDB4  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80ADEDB8  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80ADEDBC  7C 04 00 00 */	cmpw r4, r0
/* 80ADEDC0  41 82 00 20 */	beq lbl_80ADEDE0
/* 80ADEDC4  40 80 01 04 */	bge lbl_80ADEEC8
/* 80ADEDC8  38 03 30 31 */	addi r0, r3, 0x3031
/* 80ADEDCC  7C 04 00 00 */	cmpw r4, r0
/* 80ADEDD0  40 80 00 08 */	bge lbl_80ADEDD8
/* 80ADEDD4  48 00 00 F4 */	b lbl_80ADEEC8
lbl_80ADEDD8:
/* 80ADEDD8  38 60 00 01 */	li r3, 1
/* 80ADEDDC  48 00 00 F0 */	b lbl_80ADEECC
lbl_80ADEDE0:
/* 80ADEDE0  7F A3 EB 78 */	mr r3, r29
/* 80ADEDE4  7F 84 E3 78 */	mr r4, r28
/* 80ADEDE8  3C A0 80 AE */	lis r5, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80ADEDEC  38 A5 24 C4 */	addi r5, r5, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80ADEDF0  38 A5 01 52 */	addi r5, r5, 0x152
/* 80ADEDF4  38 C0 00 01 */	li r6, 1
/* 80ADEDF8  4B 56 92 F5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ADEDFC  7C 7E 1B 78 */	mr r30, r3
/* 80ADEE00  7F A3 EB 78 */	mr r3, r29
/* 80ADEE04  7F 84 E3 78 */	mr r4, r28
/* 80ADEE08  3C A0 80 AE */	lis r5, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80ADEE0C  38 A5 24 C4 */	addi r5, r5, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80ADEE10  38 A5 01 56 */	addi r5, r5, 0x156
/* 80ADEE14  38 C0 00 03 */	li r6, 3
/* 80ADEE18  4B 56 92 D5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ADEE1C  7C 64 1B 78 */	mr r4, r3
/* 80ADEE20  28 1E 00 00 */	cmplwi r30, 0
/* 80ADEE24  41 82 00 34 */	beq lbl_80ADEE58
/* 80ADEE28  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80ADEE2C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80ADEE30  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80ADEE34  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80ADEE38  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80ADEE3C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80ADEE40  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80ADEE44  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80ADEE48  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80ADEE4C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80ADEE50  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80ADEE54  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
lbl_80ADEE58:
/* 80ADEE58  28 04 00 00 */	cmplwi r4, 0
/* 80ADEE5C  41 82 00 14 */	beq lbl_80ADEE70
/* 80ADEE60  7F E3 FB 78 */	mr r3, r31
/* 80ADEE64  80 04 00 00 */	lwz r0, 0(r4)
/* 80ADEE68  7C 04 07 34 */	extsh r4, r0
/* 80ADEE6C  4B 67 53 E5 */	bl setAngle__8daNpcF_cFs
lbl_80ADEE70:
/* 80ADEE70  7F E3 FB 78 */	mr r3, r31
/* 80ADEE74  38 80 00 0C */	li r4, 0xc
/* 80ADEE78  3C A0 80 AE */	lis r5, lit_5210@ha /* 0x80AE2418@ha */
/* 80ADEE7C  C0 25 24 18 */	lfs f1, lit_5210@l(r5)  /* 0x80AE2418@l */
/* 80ADEE80  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80ADEE84  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADEE88  7D 89 03 A6 */	mtctr r12
/* 80ADEE8C  4E 80 04 21 */	bctrl 
/* 80ADEE90  7F E3 FB 78 */	mr r3, r31
/* 80ADEE94  38 80 00 00 */	li r4, 0
/* 80ADEE98  3C A0 80 AE */	lis r5, lit_5210@ha /* 0x80AE2418@ha */
/* 80ADEE9C  C0 25 24 18 */	lfs f1, lit_5210@l(r5)  /* 0x80AE2418@l */
/* 80ADEEA0  38 A0 00 00 */	li r5, 0
/* 80ADEEA4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80ADEEA8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADEEAC  7D 89 03 A6 */	mtctr r12
/* 80ADEEB0  4E 80 04 21 */	bctrl 
/* 80ADEEB4  3C 60 80 AE */	lis r3, lit_4498@ha /* 0x80AE206C@ha */
/* 80ADEEB8  C0 03 20 6C */	lfs f0, lit_4498@l(r3)  /* 0x80AE206C@l */
/* 80ADEEBC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80ADEEC0  38 60 00 01 */	li r3, 1
/* 80ADEEC4  48 00 00 08 */	b lbl_80ADEECC
lbl_80ADEEC8:
/* 80ADEEC8  38 60 00 00 */	li r3, 0
lbl_80ADEECC:
/* 80ADEECC  39 61 00 20 */	addi r11, r1, 0x20
/* 80ADEED0  4B 88 33 55 */	bl _restgpr_28
/* 80ADEED4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ADEED8  7C 08 03 A6 */	mtlr r0
/* 80ADEEDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80ADEEE0  4E 80 00 20 */	blr 
