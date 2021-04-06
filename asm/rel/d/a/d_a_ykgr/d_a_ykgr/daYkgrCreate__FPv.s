lbl_805A882C:
/* 805A882C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A8830  7C 08 02 A6 */	mflr r0
/* 805A8834  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A8838  39 61 00 30 */	addi r11, r1, 0x30
/* 805A883C  4B DB 99 A1 */	bl _savegpr_29
/* 805A8840  7C 7D 1B 78 */	mr r29, r3
/* 805A8844  3C 80 80 5B */	lis r4, lit_3759@ha /* 0x805A8FBC@ha */
/* 805A8848  3B C4 8F BC */	addi r30, r4, lit_3759@l /* 0x805A8FBC@l */
/* 805A884C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 805A8850  54 1F 67 3E */	rlwinm r31, r0, 0xc, 0x1c, 0x1f
/* 805A8854  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A8858  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A885C  40 82 00 1C */	bne lbl_805A8878
/* 805A8860  28 1D 00 00 */	cmplwi r29, 0
/* 805A8864  41 82 00 08 */	beq lbl_805A886C
/* 805A8868  4B A7 02 FD */	bl __ct__10fopAc_ac_cFv
lbl_805A886C:
/* 805A886C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 805A8870  60 00 00 08 */	ori r0, r0, 8
/* 805A8874  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_805A8878:
/* 805A8878  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805A887C  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 805A8880  28 03 00 FF */	cmplwi r3, 0xff
/* 805A8884  41 82 00 14 */	beq lbl_805A8898
/* 805A8888  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805A888C  7C 04 07 74 */	extsb r4, r0
/* 805A8890  4B AA 8F 5D */	bl dPath_GetRoomPath__Fii
/* 805A8894  48 00 00 08 */	b lbl_805A889C
lbl_805A8898:
/* 805A8898  38 60 00 00 */	li r3, 0
lbl_805A889C:
/* 805A889C  3C 80 80 45 */	lis r4, m_path__8daYkgr_c@ha /* 0x80450D94@ha */
/* 805A88A0  90 64 0D 94 */	stw r3, m_path__8daYkgr_c@l(r4)  /* 0x80450D94@l */
/* 805A88A4  3C 60 80 45 */	lis r3, m_emitter__8daYkgr_c@ha /* 0x80450D98@ha */
/* 805A88A8  80 03 0D 98 */	lwz r0, m_emitter__8daYkgr_c@l(r3)  /* 0x80450D98@l */
/* 805A88AC  28 00 00 00 */	cmplwi r0, 0
/* 805A88B0  40 82 01 40 */	bne lbl_805A89F0
/* 805A88B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A88B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A88BC  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 805A88C0  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 805A88C4  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 805A88C8  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 805A88CC  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 805A88D0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805A88D4  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 805A88D8  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 805A88DC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805A88E0  38 80 00 00 */	li r4, 0
/* 805A88E4  90 81 00 08 */	stw r4, 8(r1)
/* 805A88E8  38 00 FF FF */	li r0, -1
/* 805A88EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A88F0  90 81 00 10 */	stw r4, 0x10(r1)
/* 805A88F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 805A88F8  90 81 00 18 */	stw r4, 0x18(r1)
/* 805A88FC  38 80 00 00 */	li r4, 0
/* 805A8900  3C A0 00 01 */	lis r5, 0x0001 /* 0x000080E2@ha */
/* 805A8904  38 A5 80 E2 */	addi r5, r5, 0x80E2 /* 0x000080E2@l */
/* 805A8908  38 E0 00 00 */	li r7, 0
/* 805A890C  39 00 00 00 */	li r8, 0
/* 805A8910  39 20 00 00 */	li r9, 0
/* 805A8914  39 40 00 FF */	li r10, 0xff
/* 805A8918  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805A891C  4B AA 41 75 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805A8920  3C 80 80 45 */	lis r4, m_emitter__8daYkgr_c@ha /* 0x80450D98@ha */
/* 805A8924  90 64 0D 98 */	stw r3, m_emitter__8daYkgr_c@l(r4)  /* 0x80450D98@l */
/* 805A8928  28 03 00 00 */	cmplwi r3, 0
/* 805A892C  41 82 00 20 */	beq lbl_805A894C
/* 805A8930  3C 80 80 5B */	lis r4, YkgrCB@ha /* 0x805A9138@ha */
/* 805A8934  38 04 91 38 */	addi r0, r4, YkgrCB@l /* 0x805A9138@l */
/* 805A8938  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 805A893C  7C 03 03 78 */	mr r3, r0
/* 805A8940  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 805A8944  4B FF FB 91 */	bl setParam__17dPa_YkgrPcallBackFf
/* 805A8948  48 00 00 0C */	b lbl_805A8954
lbl_805A894C:
/* 805A894C  38 60 00 05 */	li r3, 5
/* 805A8950  48 00 00 E0 */	b lbl_805A8A30
lbl_805A8954:
/* 805A8954  7F A3 EB 78 */	mr r3, r29
/* 805A8958  4B A7 0F 6D */	bl fopAcM_setStageLayer__FPv
/* 805A895C  2C 1F 00 01 */	cmpwi r31, 1
/* 805A8960  40 82 00 4C */	bne lbl_805A89AC
/* 805A8964  38 00 00 FF */	li r0, 0xff
/* 805A8968  3C 60 80 45 */	lis r3, struct_80450D8C+0x2@ha /* 0x80450D8E@ha */
/* 805A896C  98 03 0D 8E */	stb r0, struct_80450D8C+0x2@l(r3)  /* 0x80450D8E@l */
/* 805A8970  3C 60 80 45 */	lis r3, m_emitter__8daYkgr_c@ha /* 0x80450D98@ha */
/* 805A8974  38 83 0D 98 */	addi r4, r3, m_emitter__8daYkgr_c@l /* 0x80450D98@l */
/* 805A8978  80 64 00 00 */	lwz r3, 0(r4)
/* 805A897C  98 03 00 BB */	stb r0, 0xbb(r3)
/* 805A8980  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805A8984  D0 1D 05 A4 */	stfs f0, 0x5a4(r29)
/* 805A8988  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805A898C  D0 1D 05 A8 */	stfs f0, 0x5a8(r29)
/* 805A8990  80 04 00 00 */	lwz r0, 0(r4)
/* 805A8994  28 00 00 00 */	cmplwi r0, 0
/* 805A8998  41 82 00 94 */	beq lbl_805A8A2C
/* 805A899C  38 00 00 01 */	li r0, 1
/* 805A89A0  3C 60 80 45 */	lis r3, struct_80450D8C+0x1@ha /* 0x80450D8D@ha */
/* 805A89A4  98 03 0D 8D */	stb r0, struct_80450D8C+0x1@l(r3)  /* 0x80450D8D@l */
/* 805A89A8  48 00 00 84 */	b lbl_805A8A2C
lbl_805A89AC:
/* 805A89AC  38 A0 00 00 */	li r5, 0
/* 805A89B0  3C 60 80 45 */	lis r3, struct_80450D8C+0x2@ha /* 0x80450D8E@ha */
/* 805A89B4  98 A3 0D 8E */	stb r5, struct_80450D8C+0x2@l(r3)  /* 0x80450D8E@l */
/* 805A89B8  3C 60 80 45 */	lis r3, m_emitter__8daYkgr_c@ha /* 0x80450D98@ha */
/* 805A89BC  38 83 0D 98 */	addi r4, r3, m_emitter__8daYkgr_c@l /* 0x80450D98@l */
/* 805A89C0  80 64 00 00 */	lwz r3, 0(r4)
/* 805A89C4  98 A3 00 BB */	stb r5, 0xbb(r3)
/* 805A89C8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805A89CC  D0 1D 05 A4 */	stfs f0, 0x5a4(r29)
/* 805A89D0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805A89D4  D0 1D 05 A8 */	stfs f0, 0x5a8(r29)
/* 805A89D8  80 04 00 00 */	lwz r0, 0(r4)
/* 805A89DC  28 00 00 00 */	cmplwi r0, 0
/* 805A89E0  41 82 00 4C */	beq lbl_805A8A2C
/* 805A89E4  3C 60 80 45 */	lis r3, struct_80450D8C+0x1@ha /* 0x80450D8D@ha */
/* 805A89E8  98 A3 0D 8D */	stb r5, struct_80450D8C+0x1@l(r3)  /* 0x80450D8D@l */
/* 805A89EC  48 00 00 40 */	b lbl_805A8A2C
lbl_805A89F0:
/* 805A89F0  2C 1F 00 01 */	cmpwi r31, 1
/* 805A89F4  40 82 00 1C */	bne lbl_805A8A10
/* 805A89F8  28 00 00 00 */	cmplwi r0, 0
/* 805A89FC  41 82 00 28 */	beq lbl_805A8A24
/* 805A8A00  38 00 00 01 */	li r0, 1
/* 805A8A04  3C 60 80 45 */	lis r3, struct_80450D8C+0x1@ha /* 0x80450D8D@ha */
/* 805A8A08  98 03 0D 8D */	stb r0, struct_80450D8C+0x1@l(r3)  /* 0x80450D8D@l */
/* 805A8A0C  48 00 00 18 */	b lbl_805A8A24
lbl_805A8A10:
/* 805A8A10  28 00 00 00 */	cmplwi r0, 0
/* 805A8A14  41 82 00 10 */	beq lbl_805A8A24
/* 805A8A18  38 00 00 00 */	li r0, 0
/* 805A8A1C  3C 60 80 45 */	lis r3, struct_80450D8C+0x1@ha /* 0x80450D8D@ha */
/* 805A8A20  98 03 0D 8D */	stb r0, struct_80450D8C+0x1@l(r3)  /* 0x80450D8D@l */
lbl_805A8A24:
/* 805A8A24  38 60 00 03 */	li r3, 3
/* 805A8A28  48 00 00 08 */	b lbl_805A8A30
lbl_805A8A2C:
/* 805A8A2C  38 60 00 04 */	li r3, 4
lbl_805A8A30:
/* 805A8A30  39 61 00 30 */	addi r11, r1, 0x30
/* 805A8A34  4B DB 97 F5 */	bl _restgpr_29
/* 805A8A38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A8A3C  7C 08 03 A6 */	mtlr r0
/* 805A8A40  38 21 00 30 */	addi r1, r1, 0x30
/* 805A8A44  4E 80 00 20 */	blr 
