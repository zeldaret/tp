lbl_80C487E0:
/* 80C487E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C487E4  7C 08 02 A6 */	mflr r0
/* 80C487E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C487EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C487F0  4B 71 99 E9 */	bl _savegpr_28
/* 80C487F4  7C 7E 1B 78 */	mr r30, r3
/* 80C487F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C487FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C48800  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80C48804  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80C48808  7F E3 FB 78 */	mr r3, r31
/* 80C4880C  3C 80 80 C5 */	lis r4, d_a_obj_kshutter__stringBase0@ha /* 0x80C49D44@ha */
/* 80C48810  38 84 9D 44 */	addi r4, r4, d_a_obj_kshutter__stringBase0@l /* 0x80C49D44@l */
/* 80C48814  38 84 01 09 */	addi r4, r4, 0x109
/* 80C48818  38 A0 00 00 */	li r5, 0
/* 80C4881C  38 C0 00 00 */	li r6, 0
/* 80C48820  4B 3F F2 FD */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80C48824  90 7E 06 00 */	stw r3, 0x600(r30)
/* 80C48828  7F C3 F3 78 */	mr r3, r30
/* 80C4882C  4B FF FF 6D */	bl getDemoAction__12daObjKshtr_cFv
/* 80C48830  7C 7D 1B 78 */	mr r29, r3
/* 80C48834  7F E3 FB 78 */	mr r3, r31
/* 80C48838  80 9E 06 00 */	lwz r4, 0x600(r30)
/* 80C4883C  4B 3F F5 11 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80C48840  2C 03 00 00 */	cmpwi r3, 0
/* 80C48844  41 82 00 CC */	beq lbl_80C48910
/* 80C48848  2C 1D 00 03 */	cmpwi r29, 3
/* 80C4884C  41 82 00 6C */	beq lbl_80C488B8
/* 80C48850  40 80 00 1C */	bge lbl_80C4886C
/* 80C48854  2C 1D 00 01 */	cmpwi r29, 1
/* 80C48858  41 82 00 78 */	beq lbl_80C488D0
/* 80C4885C  40 80 00 68 */	bge lbl_80C488C4
/* 80C48860  2C 1D 00 00 */	cmpwi r29, 0
/* 80C48864  40 80 00 18 */	bge lbl_80C4887C
/* 80C48868  48 00 00 A8 */	b lbl_80C48910
lbl_80C4886C:
/* 80C4886C  2C 1D 00 05 */	cmpwi r29, 5
/* 80C48870  41 82 00 6C */	beq lbl_80C488DC
/* 80C48874  40 80 00 9C */	bge lbl_80C48910
/* 80C48878  48 00 00 80 */	b lbl_80C488F8
lbl_80C4887C:
/* 80C4887C  7F E3 FB 78 */	mr r3, r31
/* 80C48880  80 9E 06 00 */	lwz r4, 0x600(r30)
/* 80C48884  3C A0 80 C5 */	lis r5, d_a_obj_kshutter__stringBase0@ha /* 0x80C49D44@ha */
/* 80C48888  38 A5 9D 44 */	addi r5, r5, d_a_obj_kshutter__stringBase0@l /* 0x80C49D44@l */
/* 80C4888C  38 A5 01 13 */	addi r5, r5, 0x113
/* 80C48890  38 C0 00 03 */	li r6, 3
/* 80C48894  4B 3F F8 59 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80C48898  28 03 00 00 */	cmplwi r3, 0
/* 80C4889C  40 82 00 10 */	bne lbl_80C488AC
/* 80C488A0  38 00 00 01 */	li r0, 1
/* 80C488A4  98 1E 06 06 */	stb r0, 0x606(r30)
/* 80C488A8  48 00 00 68 */	b lbl_80C48910
lbl_80C488AC:
/* 80C488AC  80 03 00 00 */	lwz r0, 0(r3)
/* 80C488B0  98 1E 06 06 */	stb r0, 0x606(r30)
/* 80C488B4  48 00 00 5C */	b lbl_80C48910
lbl_80C488B8:
/* 80C488B8  7F C3 F3 78 */	mr r3, r30
/* 80C488BC  48 00 03 1D */	bl openInit__12daObjKshtr_cFv
/* 80C488C0  48 00 00 50 */	b lbl_80C48910
lbl_80C488C4:
/* 80C488C4  7F C3 F3 78 */	mr r3, r30
/* 80C488C8  48 00 02 01 */	bl keyUnlockInit__12daObjKshtr_cFv
/* 80C488CC  48 00 00 44 */	b lbl_80C48910
lbl_80C488D0:
/* 80C488D0  38 00 00 05 */	li r0, 5
/* 80C488D4  98 1E 06 05 */	stb r0, 0x605(r30)
/* 80C488D8  48 00 00 38 */	b lbl_80C48910
lbl_80C488DC:
/* 80C488DC  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80C488E0  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80C488E4  90 1C 05 70 */	stw r0, 0x570(r28)
/* 80C488E8  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 80C488EC  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 80C488F0  90 1C 05 78 */	stw r0, 0x578(r28)
/* 80C488F4  48 00 00 1C */	b lbl_80C48910
lbl_80C488F8:
/* 80C488F8  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80C488FC  64 00 08 00 */	oris r0, r0, 0x800
/* 80C48900  90 1C 05 70 */	stw r0, 0x570(r28)
/* 80C48904  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 80C48908  60 00 04 00 */	ori r0, r0, 0x400
/* 80C4890C  90 1C 05 78 */	stw r0, 0x578(r28)
lbl_80C48910:
/* 80C48910  2C 1D 00 02 */	cmpwi r29, 2
/* 80C48914  41 82 00 64 */	beq lbl_80C48978
/* 80C48918  40 80 00 14 */	bge lbl_80C4892C
/* 80C4891C  2C 1D 00 00 */	cmpwi r29, 0
/* 80C48920  41 82 00 18 */	beq lbl_80C48938
/* 80C48924  40 80 00 74 */	bge lbl_80C48998
/* 80C48928  48 00 00 90 */	b lbl_80C489B8
lbl_80C4892C:
/* 80C4892C  2C 1D 00 04 */	cmpwi r29, 4
/* 80C48930  40 80 00 88 */	bge lbl_80C489B8
/* 80C48934  48 00 00 24 */	b lbl_80C48958
lbl_80C48938:
/* 80C48938  38 7E 06 06 */	addi r3, r30, 0x606
/* 80C4893C  48 00 13 49 */	bl func_80C49C84
/* 80C48940  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C48944  40 82 00 80 */	bne lbl_80C489C4
/* 80C48948  7F E3 FB 78 */	mr r3, r31
/* 80C4894C  80 9E 06 00 */	lwz r4, 0x600(r30)
/* 80C48950  4B 3F F8 2D */	bl cutEnd__16dEvent_manager_cFi
/* 80C48954  48 00 00 70 */	b lbl_80C489C4
lbl_80C48958:
/* 80C48958  7F C3 F3 78 */	mr r3, r30
/* 80C4895C  48 00 03 B1 */	bl openProc__12daObjKshtr_cFv
/* 80C48960  2C 03 00 00 */	cmpwi r3, 0
/* 80C48964  41 82 00 60 */	beq lbl_80C489C4
/* 80C48968  7F E3 FB 78 */	mr r3, r31
/* 80C4896C  80 9E 06 00 */	lwz r4, 0x600(r30)
/* 80C48970  4B 3F F8 0D */	bl cutEnd__16dEvent_manager_cFi
/* 80C48974  48 00 00 50 */	b lbl_80C489C4
lbl_80C48978:
/* 80C48978  7F C3 F3 78 */	mr r3, r30
/* 80C4897C  48 00 02 09 */	bl keyUnlock__12daObjKshtr_cFv
/* 80C48980  2C 03 00 00 */	cmpwi r3, 0
/* 80C48984  41 82 00 40 */	beq lbl_80C489C4
/* 80C48988  7F E3 FB 78 */	mr r3, r31
/* 80C4898C  80 9E 06 00 */	lwz r4, 0x600(r30)
/* 80C48990  4B 3F F7 ED */	bl cutEnd__16dEvent_manager_cFi
/* 80C48994  48 00 00 30 */	b lbl_80C489C4
lbl_80C48998:
/* 80C48998  7F C3 F3 78 */	mr r3, r30
/* 80C4899C  48 00 00 45 */	bl adjustmentProc__12daObjKshtr_cFv
/* 80C489A0  2C 03 00 00 */	cmpwi r3, 0
/* 80C489A4  41 82 00 20 */	beq lbl_80C489C4
/* 80C489A8  7F E3 FB 78 */	mr r3, r31
/* 80C489AC  80 9E 06 00 */	lwz r4, 0x600(r30)
/* 80C489B0  4B 3F F7 CD */	bl cutEnd__16dEvent_manager_cFi
/* 80C489B4  48 00 00 10 */	b lbl_80C489C4
lbl_80C489B8:
/* 80C489B8  7F E3 FB 78 */	mr r3, r31
/* 80C489BC  80 9E 06 00 */	lwz r4, 0x600(r30)
/* 80C489C0  4B 3F F7 BD */	bl cutEnd__16dEvent_manager_cFi
lbl_80C489C4:
/* 80C489C4  38 60 00 00 */	li r3, 0
/* 80C489C8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C489CC  4B 71 98 59 */	bl _restgpr_28
/* 80C489D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C489D4  7C 08 03 A6 */	mtlr r0
/* 80C489D8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C489DC  4E 80 00 20 */	blr 
