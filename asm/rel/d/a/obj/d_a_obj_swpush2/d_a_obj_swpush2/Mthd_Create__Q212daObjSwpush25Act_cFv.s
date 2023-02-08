lbl_80CFE928:
/* 80CFE928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFE92C  7C 08 02 A6 */	mflr r0
/* 80CFE930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFE934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFE938  93 C1 00 08 */	stw r30, 8(r1)
/* 80CFE93C  7C 7F 1B 78 */	mr r31, r3
/* 80CFE940  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CFE944  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CFE948  40 82 00 1C */	bne lbl_80CFE964
/* 80CFE94C  28 1F 00 00 */	cmplwi r31, 0
/* 80CFE950  41 82 00 08 */	beq lbl_80CFE958
/* 80CFE954  4B 31 A2 11 */	bl __ct__10fopAc_ac_cFv
lbl_80CFE958:
/* 80CFE958  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CFE95C  60 00 00 08 */	ori r0, r0, 8
/* 80CFE960  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CFE964:
/* 80CFE964  7F E3 FB 78 */	mr r3, r31
/* 80CFE968  4B FF F7 BD */	bl prmZ_init__Q212daObjSwpush25Act_cFv
/* 80CFE96C  7F E3 FB 78 */	mr r3, r31
/* 80CFE970  38 80 00 03 */	li r4, 3
/* 80CFE974  38 A0 00 18 */	li r5, 0x18
/* 80CFE978  48 00 12 59 */	bl func_80CFFBD0
/* 80CFE97C  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80CFE980  7F E3 FB 78 */	mr r3, r31
/* 80CFE984  4B FF FF 49 */	bl create_res_load__Q212daObjSwpush25Act_cFv
/* 80CFE988  7C 7E 1B 78 */	mr r30, r3
/* 80CFE98C  2C 1E 00 04 */	cmpwi r30, 4
/* 80CFE990  40 82 00 90 */	bne lbl_80CFEA20
/* 80CFE994  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80CFE998  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80CFE99C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80CFE9A0  3C 60 80 D0 */	lis r3, M_attr__Q212daObjSwpush25Act_c@ha /* 0x80CFFC00@ha */
/* 80CFE9A4  38 A3 FC 00 */	addi r5, r3, M_attr__Q212daObjSwpush25Act_c@l /* 0x80CFFC00@l */
/* 80CFE9A8  7C 65 02 14 */	add r3, r5, r0
/* 80CFE9AC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CFE9B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CFE9B4  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80CFE9B8  C0 3F 04 F4 */	lfs f1, 0x4f4(r31)
/* 80CFE9BC  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80CFE9C0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80CFE9C4  7C 65 02 14 */	add r3, r5, r0
/* 80CFE9C8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CFE9CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CFE9D0  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80CFE9D4  7F E3 FB 78 */	mr r3, r31
/* 80CFE9D8  3C 80 80 D0 */	lis r4, solidHeapCB__Q212daObjSwpush25Act_cFP10fopAc_ac_c@ha /* 0x80CFE1AC@ha */
/* 80CFE9DC  38 84 E1 AC */	addi r4, r4, solidHeapCB__Q212daObjSwpush25Act_cFP10fopAc_ac_c@l /* 0x80CFE1AC@l */
/* 80CFE9E0  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80CFE9E4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80CFE9E8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80CFE9EC  4B 31 BA C5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CFE9F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CFE9F4  40 82 00 0C */	bne lbl_80CFEA00
/* 80CFE9F8  38 60 00 05 */	li r3, 5
/* 80CFE9FC  48 00 00 28 */	b lbl_80CFEA24
lbl_80CFEA00:
/* 80CFEA00  7F E3 FB 78 */	mr r3, r31
/* 80CFEA04  4B FF FC D5 */	bl create_init__Q212daObjSwpush25Act_cFv
/* 80CFEA08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CFEA0C  40 82 00 0C */	bne lbl_80CFEA18
/* 80CFEA10  38 60 00 05 */	li r3, 5
/* 80CFEA14  48 00 00 10 */	b lbl_80CFEA24
lbl_80CFEA18:
/* 80CFEA18  7F E3 FB 78 */	mr r3, r31
/* 80CFEA1C  48 00 08 31 */	bl demo_non_init__Q212daObjSwpush25Act_cFv
lbl_80CFEA20:
/* 80CFEA20  7F C3 F3 78 */	mr r3, r30
lbl_80CFEA24:
/* 80CFEA24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFEA28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CFEA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFEA30  7C 08 03 A6 */	mtlr r0
/* 80CFEA34  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFEA38  4E 80 00 20 */	blr 
