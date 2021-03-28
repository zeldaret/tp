lbl_80BE583C:
/* 80BE583C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BE5840  7C 08 02 A6 */	mflr r0
/* 80BE5844  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BE5848  39 61 00 30 */	addi r11, r1, 0x30
/* 80BE584C  4B 77 C9 84 */	b _savegpr_26
/* 80BE5850  7C 7E 1B 78 */	mr r30, r3
/* 80BE5854  88 03 0A D4 */	lbz r0, 0xad4(r3)
/* 80BE5858  28 00 00 00 */	cmplwi r0, 0
/* 80BE585C  41 82 00 EC */	beq lbl_80BE5948
/* 80BE5860  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80BE5864  4B 42 76 A8 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80BE5868  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BE586C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BE5870  A8 9E 0A CE */	lha r4, 0xace(r30)
/* 80BE5874  4B 42 6C 58 */	b mDoMtx_ZrotM__FPA4_fs
/* 80BE5878  3B E0 00 00 */	li r31, 0
/* 80BE587C  3B A0 00 00 */	li r29, 0
/* 80BE5880  3B 80 00 00 */	li r28, 0
/* 80BE5884  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE5888  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE588C  3B 63 23 3C */	addi r27, r3, 0x233c
lbl_80BE5890:
/* 80BE5890  88 1E 0A D4 */	lbz r0, 0xad4(r30)
/* 80BE5894  28 00 00 01 */	cmplwi r0, 1
/* 80BE5898  40 82 00 38 */	bne lbl_80BE58D0
/* 80BE589C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BE58A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BE58A4  3C 80 80 BE */	lis r4, l_offset_posM@ha
/* 80BE58A8  38 04 5E 84 */	addi r0, r4, l_offset_posM@l
/* 80BE58AC  7C 80 E2 14 */	add r4, r0, r28
/* 80BE58B0  38 A1 00 08 */	addi r5, r1, 8
/* 80BE58B4  4B 76 14 B8 */	b PSMTXMultVec
/* 80BE58B8  38 7D 07 10 */	addi r3, r29, 0x710
/* 80BE58BC  7C 7E 1A 14 */	add r3, r30, r3
/* 80BE58C0  3C 80 80 BE */	lis r4, lit_3964@ha
/* 80BE58C4  C0 24 5E 50 */	lfs f1, lit_3964@l(r4)
/* 80BE58C8  4B 68 9E 40 */	b SetR__8cM3dGSphFf
/* 80BE58CC  48 00 00 3C */	b lbl_80BE5908
lbl_80BE58D0:
/* 80BE58D0  28 00 00 02 */	cmplwi r0, 2
/* 80BE58D4  40 82 00 34 */	bne lbl_80BE5908
/* 80BE58D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BE58DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BE58E0  3C 80 80 BE */	lis r4, l_offset_posL@ha
/* 80BE58E4  38 04 5E B4 */	addi r0, r4, l_offset_posL@l
/* 80BE58E8  7C 80 E2 14 */	add r4, r0, r28
/* 80BE58EC  38 A1 00 08 */	addi r5, r1, 8
/* 80BE58F0  4B 76 14 7C */	b PSMTXMultVec
/* 80BE58F4  38 7D 07 10 */	addi r3, r29, 0x710
/* 80BE58F8  7C 7E 1A 14 */	add r3, r30, r3
/* 80BE58FC  3C 80 80 BE */	lis r4, lit_3965@ha
/* 80BE5900  C0 24 5E 54 */	lfs f1, lit_3965@l(r4)
/* 80BE5904  4B 68 9E 04 */	b SetR__8cM3dGSphFf
lbl_80BE5908:
/* 80BE5908  38 61 00 08 */	addi r3, r1, 8
/* 80BE590C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BE5910  7C 65 1B 78 */	mr r5, r3
/* 80BE5914  4B 76 17 7C */	b PSVECAdd
/* 80BE5918  7F 5E EA 14 */	add r26, r30, r29
/* 80BE591C  38 7A 07 10 */	addi r3, r26, 0x710
/* 80BE5920  38 81 00 08 */	addi r4, r1, 8
/* 80BE5924  4B 68 9D 24 */	b SetC__8cM3dGSphFRC4cXyz
/* 80BE5928  7F 63 DB 78 */	mr r3, r27
/* 80BE592C  38 9A 05 EC */	addi r4, r26, 0x5ec
/* 80BE5930  4B 67 F2 78 */	b Set__4cCcSFP8cCcD_Obj
/* 80BE5934  3B FF 00 01 */	addi r31, r31, 1
/* 80BE5938  2C 1F 00 04 */	cmpwi r31, 4
/* 80BE593C  3B BD 01 38 */	addi r29, r29, 0x138
/* 80BE5940  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80BE5944  41 80 FF 4C */	blt lbl_80BE5890
lbl_80BE5948:
/* 80BE5948  39 61 00 30 */	addi r11, r1, 0x30
/* 80BE594C  4B 77 C8 D0 */	b _restgpr_26
/* 80BE5950  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BE5954  7C 08 03 A6 */	mtlr r0
/* 80BE5958  38 21 00 30 */	addi r1, r1, 0x30
/* 80BE595C  4E 80 00 20 */	blr 
