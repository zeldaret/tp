lbl_80BC8078:
/* 80BC8078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC807C  7C 08 02 A6 */	mflr r0
/* 80BC8080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC8088  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC808C  7C 7F 1B 78 */	mr r31, r3
/* 80BC8090  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BC8094  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BC8098  40 82 00 1C */	bne lbl_80BC80B4
/* 80BC809C  28 1F 00 00 */	cmplwi r31, 0
/* 80BC80A0  41 82 00 08 */	beq lbl_80BC80A8
/* 80BC80A4  4B FF FE 95 */	bl __ct__17daObjChandelier_cFv
lbl_80BC80A8:
/* 80BC80A8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BC80AC  60 00 00 08 */	ori r0, r0, 8
/* 80BC80B0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BC80B4:
/* 80BC80B4  7F E3 FB 78 */	mr r3, r31
/* 80BC80B8  28 1F 00 00 */	cmplwi r31, 0
/* 80BC80BC  41 82 00 08 */	beq lbl_80BC80C4
/* 80BC80C0  38 7F 05 A0 */	addi r3, r31, 0x5a0
lbl_80BC80C4:
/* 80BC80C4  3C 80 80 BD */	lis r4, l_arcName@ha /* 0x80BC8D64@ha */
/* 80BC80C8  38 84 8D 64 */	addi r4, r4, l_arcName@l /* 0x80BC8D64@l */
/* 80BC80CC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BC80D0  4B 46 4D ED */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BC80D4  7C 7E 1B 78 */	mr r30, r3
/* 80BC80D8  2C 1E 00 04 */	cmpwi r30, 4
/* 80BC80DC  40 82 00 68 */	bne lbl_80BC8144
/* 80BC80E0  7F E3 FB 78 */	mr r3, r31
/* 80BC80E4  3C 80 80 BD */	lis r4, l_arcName@ha /* 0x80BC8D64@ha */
/* 80BC80E8  38 84 8D 64 */	addi r4, r4, l_arcName@l /* 0x80BC8D64@l */
/* 80BC80EC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BC80F0  38 A0 00 07 */	li r5, 7
/* 80BC80F4  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80BC80F8  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80BC80FC  38 E0 45 00 */	li r7, 0x4500
/* 80BC8100  39 1F 05 B4 */	addi r8, r31, 0x5b4
/* 80BC8104  4B 4B 06 B9 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BC8108  7C 7E 1B 78 */	mr r30, r3
/* 80BC810C  2C 1E 00 05 */	cmpwi r30, 5
/* 80BC8110  40 82 00 08 */	bne lbl_80BC8118
/* 80BC8114  48 00 00 34 */	b lbl_80BC8148
lbl_80BC8118:
/* 80BC8118  7F E3 FB 78 */	mr r3, r31
/* 80BC811C  48 00 04 C9 */	bl init__17daObjChandelier_cFv
/* 80BC8120  7F E3 FB 78 */	mr r3, r31
/* 80BC8124  48 00 05 D9 */	bl setModelMtx__17daObjChandelier_cFv
/* 80BC8128  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BC812C  38 03 00 24 */	addi r0, r3, 0x24
/* 80BC8130  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BC8134  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BC8138  80 83 00 04 */	lwz r4, 4(r3)
/* 80BC813C  7F E3 FB 78 */	mr r3, r31
/* 80BC8140  4B 45 24 39 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
lbl_80BC8144:
/* 80BC8144  7F C3 F3 78 */	mr r3, r30
lbl_80BC8148:
/* 80BC8148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC814C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC8150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC8154  7C 08 03 A6 */	mtlr r0
/* 80BC8158  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC815C  4E 80 00 20 */	blr 
