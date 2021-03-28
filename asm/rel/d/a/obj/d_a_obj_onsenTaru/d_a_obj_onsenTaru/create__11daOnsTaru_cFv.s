lbl_80CA87B4:
/* 80CA87B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA87B8  7C 08 02 A6 */	mflr r0
/* 80CA87BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA87C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA87C4  4B 6B 9A 14 */	b _savegpr_28
/* 80CA87C8  7C 7D 1B 78 */	mr r29, r3
/* 80CA87CC  3C 80 80 CB */	lis r4, lit_3655@ha
/* 80CA87D0  3B E4 9B 78 */	addi r31, r4, lit_3655@l
/* 80CA87D4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CA87D8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CA87DC  40 82 00 EC */	bne lbl_80CA88C8
/* 80CA87E0  7F A0 EB 79 */	or. r0, r29, r29
/* 80CA87E4  41 82 00 D8 */	beq lbl_80CA88BC
/* 80CA87E8  7C 1E 03 78 */	mr r30, r0
/* 80CA87EC  4B 37 03 78 */	b __ct__10fopAc_ac_cFv
/* 80CA87F0  3C 60 80 CB */	lis r3, __vt__11daOnsTaru_c@ha
/* 80CA87F4  38 03 9D A4 */	addi r0, r3, __vt__11daOnsTaru_c@l
/* 80CA87F8  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CA87FC  3B 9E 05 A4 */	addi r28, r30, 0x5a4
/* 80CA8800  7F 83 E3 78 */	mr r3, r28
/* 80CA8804  4B 3C D8 9C */	b __ct__9dBgS_AcchFv
/* 80CA8808  3C 60 80 CB */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CA880C  38 63 9D 80 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CA8810  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80CA8814  38 03 00 0C */	addi r0, r3, 0xc
/* 80CA8818  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80CA881C  38 03 00 18 */	addi r0, r3, 0x18
/* 80CA8820  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80CA8824  38 7C 00 14 */	addi r3, r28, 0x14
/* 80CA8828  4B 3D 06 40 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CA882C  38 7E 07 7C */	addi r3, r30, 0x77c
/* 80CA8830  4B 3C D6 7C */	b __ct__12dBgS_AcchCirFv
/* 80CA8834  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CA8838  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CA883C  90 1E 07 D4 */	stw r0, 0x7d4(r30)
/* 80CA8840  38 7E 07 D8 */	addi r3, r30, 0x7d8
/* 80CA8844  4B 3D AF 1C */	b __ct__10dCcD_GSttsFv
/* 80CA8848  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CA884C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CA8850  90 7E 07 D4 */	stw r3, 0x7d4(r30)
/* 80CA8854  38 03 00 20 */	addi r0, r3, 0x20
/* 80CA8858  90 1E 07 D8 */	stw r0, 0x7d8(r30)
/* 80CA885C  3B 9E 07 F8 */	addi r28, r30, 0x7f8
/* 80CA8860  7F 83 E3 78 */	mr r3, r28
/* 80CA8864  4B 3D B1 C4 */	b __ct__12dCcD_GObjInfFv
/* 80CA8868  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CA886C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CA8870  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80CA8874  3C 60 80 CB */	lis r3, __vt__8cM3dGAab@ha
/* 80CA8878  38 03 9D 74 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CA887C  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80CA8880  3C 60 80 CB */	lis r3, __vt__8cM3dGCyl@ha
/* 80CA8884  38 03 9D 68 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CA8888  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80CA888C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CA8890  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CA8894  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80CA8898  38 03 00 58 */	addi r0, r3, 0x58
/* 80CA889C  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80CA88A0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CA88A4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CA88A8  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80CA88AC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CA88B0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80CA88B4  38 03 00 84 */	addi r0, r3, 0x84
/* 80CA88B8  90 1C 01 38 */	stw r0, 0x138(r28)
lbl_80CA88BC:
/* 80CA88BC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80CA88C0  60 00 00 08 */	ori r0, r0, 8
/* 80CA88C4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80CA88C8:
/* 80CA88C8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CA88CC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CA88D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA88D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA88D8  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CA88DC  7C 05 07 74 */	extsb r5, r0
/* 80CA88E0  4B 38 CA 80 */	b isSwitch__10dSv_info_cCFii
/* 80CA88E4  2C 03 00 00 */	cmpwi r3, 0
/* 80CA88E8  41 82 00 0C */	beq lbl_80CA88F4
/* 80CA88EC  38 60 00 05 */	li r3, 5
/* 80CA88F0  48 00 01 4C */	b lbl_80CA8A3C
lbl_80CA88F4:
/* 80CA88F4  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80CA88F8  3C 80 80 CB */	lis r4, stringBase0@ha
/* 80CA88FC  38 84 9B F4 */	addi r4, r4, stringBase0@l
/* 80CA8900  4B 38 45 BC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CA8904  7C 7E 1B 78 */	mr r30, r3
/* 80CA8908  2C 1E 00 04 */	cmpwi r30, 4
/* 80CA890C  40 82 01 2C */	bne lbl_80CA8A38
/* 80CA8910  7F A3 EB 78 */	mr r3, r29
/* 80CA8914  3C 80 80 CB */	lis r4, createHeapCallBack__11daOnsTaru_cFP10fopAc_ac_c@ha
/* 80CA8918  38 84 8C 20 */	addi r4, r4, createHeapCallBack__11daOnsTaru_cFP10fopAc_ac_c@l
/* 80CA891C  38 A0 0F 00 */	li r5, 0xf00
/* 80CA8920  4B 37 1B 90 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CA8924  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA8928  40 82 00 0C */	bne lbl_80CA8934
/* 80CA892C  38 60 00 05 */	li r3, 5
/* 80CA8930  48 00 01 0C */	b lbl_80CA8A3C
lbl_80CA8934:
/* 80CA8934  7F A3 EB 78 */	mr r3, r29
/* 80CA8938  4B FF FD 89 */	bl setBaseMtx__11daOnsTaru_cFv
/* 80CA893C  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80CA8940  38 03 00 24 */	addi r0, r3, 0x24
/* 80CA8944  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80CA8948  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80CA894C  80 83 00 04 */	lwz r4, 4(r3)
/* 80CA8950  7F A3 EB 78 */	mr r3, r29
/* 80CA8954  4B 37 1C 24 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CA8958  38 7D 07 7C */	addi r3, r29, 0x77c
/* 80CA895C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CA8960  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80CA8964  4B 3C D5 F4 */	b SetWall__12dBgS_AcchCirFff
/* 80CA8968  38 00 00 00 */	li r0, 0
/* 80CA896C  90 01 00 08 */	stw r0, 8(r1)
/* 80CA8970  38 7D 05 A4 */	addi r3, r29, 0x5a4
/* 80CA8974  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CA8978  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80CA897C  7F A6 EB 78 */	mr r6, r29
/* 80CA8980  38 E0 00 01 */	li r7, 1
/* 80CA8984  39 1D 07 7C */	addi r8, r29, 0x77c
/* 80CA8988  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80CA898C  39 40 00 00 */	li r10, 0
/* 80CA8990  4B 3C D8 B8 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CA8994  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80CA8998  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80CA899C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80CA89A0  D0 1D 05 34 */	stfs f0, 0x534(r29)
/* 80CA89A4  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80CA89A8  90 1D 05 24 */	stw r0, 0x524(r29)
/* 80CA89AC  38 7D 07 BC */	addi r3, r29, 0x7bc
/* 80CA89B0  38 80 00 C8 */	li r4, 0xc8
/* 80CA89B4  38 A0 00 FF */	li r5, 0xff
/* 80CA89B8  7F A6 EB 78 */	mr r6, r29
/* 80CA89BC  4B 3D AE A4 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CA89C0  38 7D 07 F8 */	addi r3, r29, 0x7f8
/* 80CA89C4  3C 80 80 CB */	lis r4, mCcDCyl__11daOnsTaru_c@ha
/* 80CA89C8  38 84 9C 38 */	addi r4, r4, mCcDCyl__11daOnsTaru_c@l
/* 80CA89CC  4B 3D BE E8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CA89D0  38 1D 07 BC */	addi r0, r29, 0x7bc
/* 80CA89D4  90 1D 08 3C */	stw r0, 0x83c(r29)
/* 80CA89D8  80 1D 07 F8 */	lwz r0, 0x7f8(r29)
/* 80CA89DC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CA89E0  90 1D 07 F8 */	stw r0, 0x7f8(r29)
/* 80CA89E4  88 1D 04 9A */	lbz r0, 0x49a(r29)
/* 80CA89E8  60 00 00 01 */	ori r0, r0, 1
/* 80CA89EC  98 1D 04 9A */	stb r0, 0x49a(r29)
/* 80CA89F0  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 80CA89F4  60 00 00 10 */	ori r0, r0, 0x10
/* 80CA89F8  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80CA89FC  38 00 00 2A */	li r0, 0x2a
/* 80CA8A00  98 1D 05 48 */	stb r0, 0x548(r29)
/* 80CA8A04  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80CA8A08  54 00 9F FE */	rlwinm r0, r0, 0x13, 0x1f, 0x1f
/* 80CA8A0C  98 1D 05 79 */	stb r0, 0x579(r29)
/* 80CA8A10  7F A3 EB 78 */	mr r3, r29
/* 80CA8A14  48 00 08 89 */	bl mode_init_wait__11daOnsTaru_cFv
/* 80CA8A18  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80CA8A1C  D0 1D 09 44 */	stfs f0, 0x944(r29)
/* 80CA8A20  38 00 00 00 */	li r0, 0
/* 80CA8A24  B0 1D 09 34 */	sth r0, 0x934(r29)
/* 80CA8A28  98 1D 09 36 */	stb r0, 0x936(r29)
/* 80CA8A2C  38 00 00 01 */	li r0, 1
/* 80CA8A30  98 1D 09 3D */	stb r0, 0x93d(r29)
/* 80CA8A34  98 1D 09 3E */	stb r0, 0x93e(r29)
lbl_80CA8A38:
/* 80CA8A38  7F C3 F3 78 */	mr r3, r30
lbl_80CA8A3C:
/* 80CA8A3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA8A40  4B 6B 97 E4 */	b _restgpr_28
/* 80CA8A44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA8A48  7C 08 03 A6 */	mtlr r0
/* 80CA8A4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA8A50  4E 80 00 20 */	blr 
