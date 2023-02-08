lbl_80A2C984:
/* 80A2C984  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A2C988  7C 08 02 A6 */	mflr r0
/* 80A2C98C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A2C990  39 61 00 40 */	addi r11, r1, 0x40
/* 80A2C994  4B 93 58 35 */	bl _savegpr_24
/* 80A2C998  7C 7B 1B 78 */	mr r27, r3
/* 80A2C99C  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A2C9A0  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A2C9A4  80 1B 0B B0 */	lwz r0, 0xbb0(r27)
/* 80A2C9A8  2C 00 00 19 */	cmpwi r0, 0x19
/* 80A2C9AC  40 82 00 3C */	bne lbl_80A2C9E8
/* 80A2C9B0  80 1B 0B B8 */	lwz r0, 0xbb8(r27)
/* 80A2C9B4  2C 00 00 00 */	cmpwi r0, 0
/* 80A2C9B8  40 82 00 30 */	bne lbl_80A2C9E8
/* 80A2C9BC  38 60 00 00 */	li r3, 0
/* 80A2C9C0  40 82 00 14 */	bne lbl_80A2C9D4
/* 80A2C9C4  80 1B 0B BC */	lwz r0, 0xbbc(r27)
/* 80A2C9C8  2C 00 FF FF */	cmpwi r0, -1
/* 80A2C9CC  40 82 00 08 */	bne lbl_80A2C9D4
/* 80A2C9D0  38 60 00 01 */	li r3, 1
lbl_80A2C9D4:
/* 80A2C9D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A2C9D8  40 82 00 10 */	bne lbl_80A2C9E8
/* 80A2C9DC  38 00 00 01 */	li r0, 1
/* 80A2C9E0  98 1B 15 CE */	stb r0, 0x15ce(r27)
/* 80A2C9E4  48 00 00 0C */	b lbl_80A2C9F0
lbl_80A2C9E8:
/* 80A2C9E8  38 00 00 00 */	li r0, 0
/* 80A2C9EC  98 1B 15 CE */	stb r0, 0x15ce(r27)
lbl_80A2C9F0:
/* 80A2C9F0  3B 80 00 00 */	li r28, 0
/* 80A2C9F4  3B 40 00 00 */	li r26, 0
/* 80A2C9F8  3B 20 00 00 */	li r25, 0
/* 80A2C9FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2CA00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2CA04  3B C3 23 3C */	addi r30, r3, 0x233c
lbl_80A2CA08:
/* 80A2CA08  88 1B 0E 2C */	lbz r0, 0xe2c(r27)
/* 80A2CA0C  28 00 00 00 */	cmplwi r0, 0
/* 80A2CA10  40 82 00 DC */	bne lbl_80A2CAEC
/* 80A2CA14  88 1B 15 CE */	lbz r0, 0x15ce(r27)
/* 80A2CA18  28 00 00 00 */	cmplwi r0, 0
/* 80A2CA1C  41 82 00 C0 */	beq lbl_80A2CADC
/* 80A2CA20  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 80A2CA24  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A2CA28  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80A2CA2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A2CA30  4C 41 13 82 */	cror 2, 1, 2
/* 80A2CA34  40 82 00 A8 */	bne lbl_80A2CADC
/* 80A2CA38  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 80A2CA3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A2CA40  4C 40 13 82 */	cror 2, 0, 2
/* 80A2CA44  40 82 00 98 */	bne lbl_80A2CADC
/* 80A2CA48  3C 60 80 A4 */	lis r3, l_swordOffset@ha /* 0x80A41874@ha */
/* 80A2CA4C  38 63 18 74 */	addi r3, r3, l_swordOffset@l /* 0x80A41874@l */
/* 80A2CA50  7C 03 CC 2E */	lfsx f0, r3, r25
/* 80A2CA54  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A2CA58  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A2CA5C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A2CA60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A2CA64  7F BB D2 14 */	add r29, r27, r26
/* 80A2CA68  80 1D 13 18 */	lwz r0, 0x1318(r29)
/* 80A2CA6C  60 00 00 01 */	ori r0, r0, 1
/* 80A2CA70  90 1D 13 18 */	stw r0, 0x1318(r29)
/* 80A2CA74  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 80A2CA78  80 63 00 04 */	lwz r3, 4(r3)
/* 80A2CA7C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A2CA80  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A2CA84  38 63 02 70 */	addi r3, r3, 0x270
/* 80A2CA88  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A2CA8C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A2CA90  4B 91 9A 21 */	bl PSMTXCopy
/* 80A2CA94  38 7B 04 EC */	addi r3, r27, 0x4ec
/* 80A2CA98  4B 5E 03 D9 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80A2CA9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A2CAA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A2CAA4  38 81 00 08 */	addi r4, r1, 8
/* 80A2CAA8  7C 85 23 78 */	mr r5, r4
/* 80A2CAAC  4B 91 A2 C1 */	bl PSMTXMultVec
/* 80A2CAB0  3B 1D 14 3C */	addi r24, r29, 0x143c
/* 80A2CAB4  7F 03 C3 78 */	mr r3, r24
/* 80A2CAB8  38 81 00 08 */	addi r4, r1, 8
/* 80A2CABC  4B 84 2B 8D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80A2CAC0  7F 03 C3 78 */	mr r3, r24
/* 80A2CAC4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80A2CAC8  4B 84 2C 41 */	bl SetR__8cM3dGSphFf
/* 80A2CACC  7F C3 F3 78 */	mr r3, r30
/* 80A2CAD0  38 9D 13 18 */	addi r4, r29, 0x1318
/* 80A2CAD4  4B 83 80 D5 */	bl Set__4cCcSFP8cCcD_Obj
/* 80A2CAD8  48 00 00 14 */	b lbl_80A2CAEC
lbl_80A2CADC:
/* 80A2CADC  38 7A 13 18 */	addi r3, r26, 0x1318
/* 80A2CAE0  7C 1B 18 2E */	lwzx r0, r27, r3
/* 80A2CAE4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A2CAE8  7C 1B 19 2E */	stwx r0, r27, r3
lbl_80A2CAEC:
/* 80A2CAEC  38 7A 13 18 */	addi r3, r26, 0x1318
/* 80A2CAF0  7C 7B 1A 14 */	add r3, r27, r3
/* 80A2CAF4  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80A2CAF8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A2CAFC  7D 89 03 A6 */	mtctr r12
/* 80A2CB00  4E 80 04 21 */	bctrl 
/* 80A2CB04  3B 9C 00 01 */	addi r28, r28, 1
/* 80A2CB08  2C 1C 00 02 */	cmpwi r28, 2
/* 80A2CB0C  3B 5A 01 38 */	addi r26, r26, 0x138
/* 80A2CB10  3B 39 00 04 */	addi r25, r25, 4
/* 80A2CB14  41 80 FE F4 */	blt lbl_80A2CA08
/* 80A2CB18  39 61 00 40 */	addi r11, r1, 0x40
/* 80A2CB1C  4B 93 56 F9 */	bl _restgpr_24
/* 80A2CB20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A2CB24  7C 08 03 A6 */	mtlr r0
/* 80A2CB28  38 21 00 40 */	addi r1, r1, 0x40
/* 80A2CB2C  4E 80 00 20 */	blr 
