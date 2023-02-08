lbl_80C31808:
/* 80C31808  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C3180C  7C 08 02 A6 */	mflr r0
/* 80C31810  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C31814  39 61 00 30 */	addi r11, r1, 0x30
/* 80C31818  4B 73 09 C5 */	bl _savegpr_29
/* 80C3181C  7C 7F 1B 78 */	mr r31, r3
/* 80C31820  3C 80 80 C3 */	lis r4, lit_3854@ha /* 0x80C3195C@ha */
/* 80C31824  3B C4 19 5C */	addi r30, r4, lit_3854@l /* 0x80C3195C@l */
/* 80C31828  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C3182C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C31830  40 82 00 28 */	bne lbl_80C31858
/* 80C31834  7F E0 FB 79 */	or. r0, r31, r31
/* 80C31838  41 82 00 14 */	beq lbl_80C3184C
/* 80C3183C  7C 1D 03 78 */	mr r29, r0
/* 80C31840  4B 3E 73 25 */	bl __ct__10fopAc_ac_cFv
/* 80C31844  38 7D 05 78 */	addi r3, r29, 0x578
/* 80C31848  4B 68 CF FD */	bl __ct__16Z2SoundObjSimpleFv
lbl_80C3184C:
/* 80C3184C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C31850  60 00 00 08 */	ori r0, r0, 8
/* 80C31854  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C31858:
/* 80C31858  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C3185C  3C 80 80 C3 */	lis r4, d_a_obj_kage__stringBase0@ha /* 0x80C31990@ha */
/* 80C31860  38 84 19 90 */	addi r4, r4, d_a_obj_kage__stringBase0@l /* 0x80C31990@l */
/* 80C31864  4B 3F B6 59 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C31868  7C 7D 1B 78 */	mr r29, r3
/* 80C3186C  2C 1D 00 04 */	cmpwi r29, 4
/* 80C31870  40 82 00 C8 */	bne lbl_80C31938
/* 80C31874  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C31878  98 1F 05 74 */	stb r0, 0x574(r31)
/* 80C3187C  7F E3 FB 78 */	mr r3, r31
/* 80C31880  3C 80 80 C3 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80C3179C@ha */
/* 80C31884  38 84 17 9C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80C3179C@l */
/* 80C31888  38 A0 0E C0 */	li r5, 0xec0
/* 80C3188C  4B 3E 8C 25 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C31890  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C31894  40 82 00 0C */	bne lbl_80C318A0
/* 80C31898  38 60 00 05 */	li r3, 5
/* 80C3189C  48 00 00 A0 */	b lbl_80C3193C
lbl_80C318A0:
/* 80C318A0  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 80C318A4  4B 63 60 B1 */	bl cM_rndF__Ff
/* 80C318A8  FC 00 08 1E */	fctiwz f0, f1
/* 80C318AC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C318B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C318B4  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 80C318B8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C318BC  38 03 00 24 */	addi r0, r3, 0x24
/* 80C318C0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C318C4  7F E3 FB 78 */	mr r3, r31
/* 80C318C8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80C318CC  FC 40 08 90 */	fmr f2, f1
/* 80C318D0  FC 60 08 90 */	fmr f3, f1
/* 80C318D4  4B 3E 8C 55 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80C318D8  7F E3 FB 78 */	mr r3, r31
/* 80C318DC  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C318E0  FC 40 08 90 */	fmr f2, f1
/* 80C318E4  FC 60 08 90 */	fmr f3, f1
/* 80C318E8  4B 3E 8C 51 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80C318EC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C318F0  7C 07 07 74 */	extsb r7, r0
/* 80C318F4  38 00 00 00 */	li r0, 0
/* 80C318F8  90 01 00 08 */	stw r0, 8(r1)
/* 80C318FC  38 60 02 FF */	li r3, 0x2ff
/* 80C31900  28 1F 00 00 */	cmplwi r31, 0
/* 80C31904  41 82 00 0C */	beq lbl_80C31910
/* 80C31908  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C3190C  48 00 00 08 */	b lbl_80C31914
lbl_80C31910:
/* 80C31910  38 80 FF FF */	li r4, -1
lbl_80C31914:
/* 80C31914  38 A0 00 00 */	li r5, 0
/* 80C31918  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80C3191C  39 00 00 00 */	li r8, 0
/* 80C31920  39 20 00 00 */	li r9, 0
/* 80C31924  39 40 FF FF */	li r10, -1
/* 80C31928  4B 3E 85 C9 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80C3192C  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 80C31930  7F E3 FB 78 */	mr r3, r31
/* 80C31934  4B FF FC 09 */	bl daObj_Kage_Execute__FP14obj_kage_class
lbl_80C31938:
/* 80C31938  7F A3 EB 78 */	mr r3, r29
lbl_80C3193C:
/* 80C3193C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C31940  4B 73 08 E9 */	bl _restgpr_29
/* 80C31944  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C31948  7C 08 03 A6 */	mtlr r0
/* 80C3194C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C31950  4E 80 00 20 */	blr 
