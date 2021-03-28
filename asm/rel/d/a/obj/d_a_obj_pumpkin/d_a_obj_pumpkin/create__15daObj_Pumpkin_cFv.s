lbl_80CB5A04:
/* 80CB5A04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CB5A08  7C 08 02 A6 */	mflr r0
/* 80CB5A0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CB5A10  39 61 00 40 */	addi r11, r1, 0x40
/* 80CB5A14  4B 6A C7 B4 */	b _savegpr_24
/* 80CB5A18  7C 7A 1B 78 */	mr r26, r3
/* 80CB5A1C  3C 80 80 CC */	lis r4, cNullVec__6Z2Calc@ha
/* 80CB5A20  3B C4 84 6C */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80CB5A24  3C 80 80 CC */	lis r4, m__21daObj_Pumpkin_Param_c@ha
/* 80CB5A28  3B E4 83 70 */	addi r31, r4, m__21daObj_Pumpkin_Param_c@l
/* 80CB5A2C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CB5A30  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CB5A34  40 82 01 5C */	bne lbl_80CB5B90
/* 80CB5A38  7F 40 D3 79 */	or. r0, r26, r26
/* 80CB5A3C  41 82 01 48 */	beq lbl_80CB5B84
/* 80CB5A40  7C 19 03 78 */	mr r25, r0
/* 80CB5A44  4B 36 31 20 */	b __ct__10fopAc_ac_cFv
/* 80CB5A48  3C 60 80 CC */	lis r3, __vt__15daObj_Pumpkin_c@ha
/* 80CB5A4C  38 03 85 B0 */	addi r0, r3, __vt__15daObj_Pumpkin_c@l
/* 80CB5A50  90 19 0B B8 */	stw r0, 0xbb8(r25)
/* 80CB5A54  3B 19 05 78 */	addi r24, r25, 0x578
/* 80CB5A58  7F 03 C3 78 */	mr r3, r24
/* 80CB5A5C  4B 3C 06 44 */	b __ct__9dBgS_AcchFv
/* 80CB5A60  3C 60 80 CC */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CB5A64  38 63 85 44 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CB5A68  90 78 00 10 */	stw r3, 0x10(r24)
/* 80CB5A6C  38 03 00 0C */	addi r0, r3, 0xc
/* 80CB5A70  90 18 00 14 */	stw r0, 0x14(r24)
/* 80CB5A74  38 03 00 18 */	addi r0, r3, 0x18
/* 80CB5A78  90 18 00 24 */	stw r0, 0x24(r24)
/* 80CB5A7C  38 78 00 14 */	addi r3, r24, 0x14
/* 80CB5A80  4B 3C 33 E8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CB5A84  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CB5A88  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CB5A8C  90 19 07 68 */	stw r0, 0x768(r25)
/* 80CB5A90  38 79 07 6C */	addi r3, r25, 0x76c
/* 80CB5A94  4B 3C DC CC */	b __ct__10dCcD_GSttsFv
/* 80CB5A98  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CB5A9C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CB5AA0  90 79 07 68 */	stw r3, 0x768(r25)
/* 80CB5AA4  38 03 00 20 */	addi r0, r3, 0x20
/* 80CB5AA8  90 19 07 6C */	stw r0, 0x76c(r25)
/* 80CB5AAC  38 79 07 8C */	addi r3, r25, 0x78c
/* 80CB5AB0  4B 3C 03 FC */	b __ct__12dBgS_AcchCirFv
/* 80CB5AB4  38 79 07 CC */	addi r3, r25, 0x7cc
/* 80CB5AB8  4B 5B 21 64 */	b __ct__11cBgS_GndChkFv
/* 80CB5ABC  3B 19 08 08 */	addi r24, r25, 0x808
/* 80CB5AC0  7F 03 C3 78 */	mr r3, r24
/* 80CB5AC4  4B 3C DF 64 */	b __ct__12dCcD_GObjInfFv
/* 80CB5AC8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CB5ACC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CB5AD0  90 18 01 20 */	stw r0, 0x120(r24)
/* 80CB5AD4  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha
/* 80CB5AD8  38 03 85 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CB5ADC  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80CB5AE0  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha
/* 80CB5AE4  38 03 85 98 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CB5AE8  90 18 01 38 */	stw r0, 0x138(r24)
/* 80CB5AEC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CB5AF0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CB5AF4  90 78 01 20 */	stw r3, 0x120(r24)
/* 80CB5AF8  3B A3 00 58 */	addi r29, r3, 0x58
/* 80CB5AFC  93 B8 01 38 */	stw r29, 0x138(r24)
/* 80CB5B00  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CB5B04  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CB5B08  90 78 00 3C */	stw r3, 0x3c(r24)
/* 80CB5B0C  3B 83 00 2C */	addi r28, r3, 0x2c
/* 80CB5B10  93 98 01 20 */	stw r28, 0x120(r24)
/* 80CB5B14  3B 63 00 84 */	addi r27, r3, 0x84
/* 80CB5B18  93 78 01 38 */	stw r27, 0x138(r24)
/* 80CB5B1C  3B 19 09 44 */	addi r24, r25, 0x944
/* 80CB5B20  7F 03 C3 78 */	mr r3, r24
/* 80CB5B24  4B 3C DF 04 */	b __ct__12dCcD_GObjInfFv
/* 80CB5B28  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CB5B2C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CB5B30  90 18 01 20 */	stw r0, 0x120(r24)
/* 80CB5B34  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha
/* 80CB5B38  38 03 85 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CB5B3C  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80CB5B40  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha
/* 80CB5B44  38 03 85 98 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CB5B48  90 18 01 38 */	stw r0, 0x138(r24)
/* 80CB5B4C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CB5B50  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 80CB5B54  90 18 01 20 */	stw r0, 0x120(r24)
/* 80CB5B58  93 B8 01 38 */	stw r29, 0x138(r24)
/* 80CB5B5C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CB5B60  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 80CB5B64  90 18 00 3C */	stw r0, 0x3c(r24)
/* 80CB5B68  93 98 01 20 */	stw r28, 0x120(r24)
/* 80CB5B6C  93 78 01 38 */	stw r27, 0x138(r24)
/* 80CB5B70  3C 60 80 CC */	lis r3, __vt__8cM3dGLin@ha
/* 80CB5B74  38 03 85 A4 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80CB5B78  90 19 0A A4 */	stw r0, 0xaa4(r25)
/* 80CB5B7C  38 79 0A A8 */	addi r3, r25, 0xaa8
/* 80CB5B80  4B 3C 20 E8 */	b __ct__11dBgS_LinChkFv
lbl_80CB5B84:
/* 80CB5B84  80 1A 04 A0 */	lwz r0, 0x4a0(r26)
/* 80CB5B88  60 00 00 08 */	ori r0, r0, 8
/* 80CB5B8C  90 1A 04 A0 */	stw r0, 0x4a0(r26)
lbl_80CB5B90:
/* 80CB5B90  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80CB5B94  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80CB5B98  2C 00 00 02 */	cmpwi r0, 2
/* 80CB5B9C  41 82 00 34 */	beq lbl_80CB5BD0
/* 80CB5BA0  40 80 00 14 */	bge lbl_80CB5BB4
/* 80CB5BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80CB5BA8  41 82 00 18 */	beq lbl_80CB5BC0
/* 80CB5BAC  40 80 00 1C */	bge lbl_80CB5BC8
/* 80CB5BB0  48 00 00 30 */	b lbl_80CB5BE0
lbl_80CB5BB4:
/* 80CB5BB4  2C 00 00 04 */	cmpwi r0, 4
/* 80CB5BB8  40 80 00 28 */	bge lbl_80CB5BE0
/* 80CB5BBC  48 00 00 1C */	b lbl_80CB5BD8
lbl_80CB5BC0:
/* 80CB5BC0  38 00 00 00 */	li r0, 0
/* 80CB5BC4  48 00 00 20 */	b lbl_80CB5BE4
lbl_80CB5BC8:
/* 80CB5BC8  38 00 00 01 */	li r0, 1
/* 80CB5BCC  48 00 00 18 */	b lbl_80CB5BE4
lbl_80CB5BD0:
/* 80CB5BD0  38 00 00 02 */	li r0, 2
/* 80CB5BD4  48 00 00 10 */	b lbl_80CB5BE4
lbl_80CB5BD8:
/* 80CB5BD8  38 00 00 03 */	li r0, 3
/* 80CB5BDC  48 00 00 08 */	b lbl_80CB5BE4
lbl_80CB5BE0:
/* 80CB5BE0  38 00 00 00 */	li r0, 0
lbl_80CB5BE4:
/* 80CB5BE4  98 1A 0B 1C */	stb r0, 0xb1c(r26)
/* 80CB5BE8  38 7A 05 6C */	addi r3, r26, 0x56c
/* 80CB5BEC  38 9E 00 20 */	addi r4, r30, 0x20
/* 80CB5BF0  80 04 00 04 */	lwz r0, 4(r4)
/* 80CB5BF4  54 00 10 3A */	slwi r0, r0, 2
/* 80CB5BF8  38 9E 00 28 */	addi r4, r30, 0x28
/* 80CB5BFC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CB5C00  4B 37 72 BC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CB5C04  7C 78 1B 78 */	mr r24, r3
/* 80CB5C08  2C 18 00 04 */	cmpwi r24, 4
/* 80CB5C0C  40 82 01 4C */	bne lbl_80CB5D58
/* 80CB5C10  38 60 00 1E */	li r3, 0x1e
/* 80CB5C14  4B 49 6E 98 */	b daNpcT_chkEvtBit__FUl
/* 80CB5C18  2C 03 00 00 */	cmpwi r3, 0
/* 80CB5C1C  40 82 00 14 */	bne lbl_80CB5C30
/* 80CB5C20  38 60 00 92 */	li r3, 0x92
/* 80CB5C24  4B 49 6E 88 */	b daNpcT_chkEvtBit__FUl
/* 80CB5C28  2C 03 00 00 */	cmpwi r3, 0
/* 80CB5C2C  41 82 00 1C */	beq lbl_80CB5C48
lbl_80CB5C30:
/* 80CB5C30  7F 43 D3 78 */	mr r3, r26
/* 80CB5C34  48 00 1C 11 */	bl isDelete__15daObj_Pumpkin_cFv
/* 80CB5C38  2C 03 00 00 */	cmpwi r3, 0
/* 80CB5C3C  41 82 00 0C */	beq lbl_80CB5C48
/* 80CB5C40  38 60 00 05 */	li r3, 5
/* 80CB5C44  48 00 01 18 */	b lbl_80CB5D5C
lbl_80CB5C48:
/* 80CB5C48  7F 43 D3 78 */	mr r3, r26
/* 80CB5C4C  3C 80 80 CB */	lis r4, createHeapCallBack__15daObj_Pumpkin_cFP10fopAc_ac_c@ha
/* 80CB5C50  38 84 78 24 */	addi r4, r4, createHeapCallBack__15daObj_Pumpkin_cFP10fopAc_ac_c@l
/* 80CB5C54  38 A0 0E B0 */	li r5, 0xeb0
/* 80CB5C58  4B 36 48 58 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CB5C5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CB5C60  40 82 00 0C */	bne lbl_80CB5C6C
/* 80CB5C64  38 60 00 05 */	li r3, 5
/* 80CB5C68  48 00 00 F4 */	b lbl_80CB5D5C
lbl_80CB5C6C:
/* 80CB5C6C  80 7A 05 74 */	lwz r3, 0x574(r26)
/* 80CB5C70  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB5C74  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80CB5C78  7F 43 D3 78 */	mr r3, r26
/* 80CB5C7C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80CB5C80  FC 40 08 90 */	fmr f2, f1
/* 80CB5C84  FC 60 08 90 */	fmr f3, f1
/* 80CB5C88  C0 9F 00 68 */	lfs f4, 0x68(r31)
/* 80CB5C8C  FC A0 20 90 */	fmr f5, f4
/* 80CB5C90  FC C0 20 90 */	fmr f6, f4
/* 80CB5C94  4B 36 48 B4 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CB5C98  7F 43 D3 78 */	mr r3, r26
/* 80CB5C9C  48 00 1C CD */	bl reset__15daObj_Pumpkin_cFv
/* 80CB5CA0  38 1A 04 E4 */	addi r0, r26, 0x4e4
/* 80CB5CA4  90 01 00 08 */	stw r0, 8(r1)
/* 80CB5CA8  38 7A 05 78 */	addi r3, r26, 0x578
/* 80CB5CAC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80CB5CB0  38 BA 04 BC */	addi r5, r26, 0x4bc
/* 80CB5CB4  7F 46 D3 78 */	mr r6, r26
/* 80CB5CB8  38 E0 00 01 */	li r7, 1
/* 80CB5CBC  39 1A 07 8C */	addi r8, r26, 0x78c
/* 80CB5CC0  39 3A 04 F8 */	addi r9, r26, 0x4f8
/* 80CB5CC4  39 5A 04 DC */	addi r10, r26, 0x4dc
/* 80CB5CC8  4B 3C 05 80 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CB5CCC  38 7A 07 50 */	addi r3, r26, 0x750
/* 80CB5CD0  38 9F 00 00 */	addi r4, r31, 0
/* 80CB5CD4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80CB5CD8  FC 00 00 1E */	fctiwz f0, f0
/* 80CB5CDC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CB5CE0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80CB5CE4  38 A0 00 00 */	li r5, 0
/* 80CB5CE8  7F 46 D3 78 */	mr r6, r26
/* 80CB5CEC  4B 3C DB 74 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CB5CF0  38 7A 08 08 */	addi r3, r26, 0x808
/* 80CB5CF4  38 9E 00 30 */	addi r4, r30, 0x30
/* 80CB5CF8  4B 3C EB BC */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CB5CFC  38 1A 07 50 */	addi r0, r26, 0x750
/* 80CB5D00  90 1A 08 4C */	stw r0, 0x84c(r26)
/* 80CB5D04  38 7A 09 44 */	addi r3, r26, 0x944
/* 80CB5D08  38 9E 00 30 */	addi r4, r30, 0x30
/* 80CB5D0C  4B 3C EB A8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CB5D10  38 1A 07 50 */	addi r0, r26, 0x750
/* 80CB5D14  90 1A 09 88 */	stw r0, 0x988(r26)
/* 80CB5D18  C0 1A 04 A8 */	lfs f0, 0x4a8(r26)
/* 80CB5D1C  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80CB5D20  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 80CB5D24  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80CB5D28  C0 1A 04 B0 */	lfs f0, 0x4b0(r26)
/* 80CB5D2C  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80CB5D30  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80CB5D34  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80CB5D38  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80CB5D3C  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80CB5D40  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80CB5D44  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80CB5D48  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80CB5D4C  D0 1A 0B 60 */	stfs f0, 0xb60(r26)
/* 80CB5D50  7F 43 D3 78 */	mr r3, r26
/* 80CB5D54  48 00 1C 89 */	bl setMtx__15daObj_Pumpkin_cFv
lbl_80CB5D58:
/* 80CB5D58  7F 03 C3 78 */	mr r3, r24
lbl_80CB5D5C:
/* 80CB5D5C  39 61 00 40 */	addi r11, r1, 0x40
/* 80CB5D60  4B 6A C4 B4 */	b _restgpr_24
/* 80CB5D64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CB5D68  7C 08 03 A6 */	mtlr r0
/* 80CB5D6C  38 21 00 40 */	addi r1, r1, 0x40
/* 80CB5D70  4E 80 00 20 */	blr 
