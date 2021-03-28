lbl_80C9C768:
/* 80C9C768  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C9C76C  7C 08 02 A6 */	mflr r0
/* 80C9C770  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C9C774  39 61 00 40 */	addi r11, r1, 0x40
/* 80C9C778  4B 6C 5A 64 */	b _savegpr_29
/* 80C9C77C  7C 7E 1B 78 */	mr r30, r3
/* 80C9C780  3C 80 80 CA */	lis r4, lit_3863@ha
/* 80C9C784  3B E4 CD 4C */	addi r31, r4, lit_3863@l
/* 80C9C788  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C9C78C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C9C790  40 82 00 48 */	bne lbl_80C9C7D8
/* 80C9C794  7F C0 F3 79 */	or. r0, r30, r30
/* 80C9C798  41 82 00 34 */	beq lbl_80C9C7CC
/* 80C9C79C  7C 1D 03 78 */	mr r29, r0
/* 80C9C7A0  4B 37 C3 C4 */	b __ct__10fopAc_ac_cFv
/* 80C9C7A4  38 7D 06 00 */	addi r3, r29, 0x600
/* 80C9C7A8  4B 62 20 9C */	b __ct__16Z2SoundObjSimpleFv
/* 80C9C7AC  38 7D 06 20 */	addi r3, r29, 0x620
/* 80C9C7B0  3C 80 80 CA */	lis r4, __ct__10ms_chain_sFv@ha
/* 80C9C7B4  38 84 CA 9C */	addi r4, r4, __ct__10ms_chain_sFv@l
/* 80C9C7B8  3C A0 80 CA */	lis r5, __dt__10ms_chain_sFv@ha
/* 80C9C7BC  38 A5 CA 60 */	addi r5, r5, __dt__10ms_chain_sFv@l
/* 80C9C7C0  38 C0 00 A0 */	li r6, 0xa0
/* 80C9C7C4  38 E0 00 04 */	li r7, 4
/* 80C9C7C8  4B 6C 55 98 */	b __construct_array
lbl_80C9C7CC:
/* 80C9C7CC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C9C7D0  60 00 00 08 */	ori r0, r0, 8
/* 80C9C7D4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C9C7D8:
/* 80C9C7D8  38 7E 05 68 */	addi r3, r30, 0x568
/* 80C9C7DC  3C 80 80 CA */	lis r4, stringBase0@ha
/* 80C9C7E0  38 84 CD EC */	addi r4, r4, stringBase0@l
/* 80C9C7E4  4B 39 06 D8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C9C7E8  7C 7D 1B 78 */	mr r29, r3
/* 80C9C7EC  2C 1D 00 04 */	cmpwi r29, 4
/* 80C9C7F0  40 82 02 54 */	bne lbl_80C9CA44
/* 80C9C7F4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C9C7F8  98 1E 05 70 */	stb r0, 0x570(r30)
/* 80C9C7FC  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80C9C800  28 00 00 FF */	cmplwi r0, 0xff
/* 80C9C804  40 82 00 0C */	bne lbl_80C9C810
/* 80C9C808  38 00 00 00 */	li r0, 0
/* 80C9C80C  98 1E 05 70 */	stb r0, 0x570(r30)
lbl_80C9C810:
/* 80C9C810  7F C3 F3 78 */	mr r3, r30
/* 80C9C814  3C 80 80 CA */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80C9C818  38 84 C4 2C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80C9C81C  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80C9C820  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80C9C824  4B 37 DC 8C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C9C828  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9C82C  40 82 00 0C */	bne lbl_80C9C838
/* 80C9C830  38 60 00 05 */	li r3, 5
/* 80C9C834  48 00 02 14 */	b lbl_80C9CA48
lbl_80C9C838:
/* 80C9C838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9C83C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9C840  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C9C844  80 9E 05 FC */	lwz r4, 0x5fc(r30)
/* 80C9C848  7F C5 F3 78 */	mr r5, r30
/* 80C9C84C  4B 3D 81 BC */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C9C850  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9C854  41 82 00 0C */	beq lbl_80C9C860
/* 80C9C858  38 60 00 05 */	li r3, 5
/* 80C9C85C  48 00 01 EC */	b lbl_80C9CA48
lbl_80C9C860:
/* 80C9C860  3C 60 80 CA */	lis r3, struct_80C9CEA4+0x1@ha
/* 80C9C864  8C 03 CE A5 */	lbzu r0, struct_80C9CEA4+0x1@l(r3)
/* 80C9C868  28 00 00 00 */	cmplwi r0, 0
/* 80C9C86C  40 82 00 20 */	bne lbl_80C9C88C
/* 80C9C870  38 00 00 01 */	li r0, 1
/* 80C9C874  98 1E 08 A0 */	stb r0, 0x8a0(r30)
/* 80C9C878  98 03 00 00 */	stb r0, 0(r3)
/* 80C9C87C  38 00 FF FF */	li r0, -1
/* 80C9C880  3C 60 80 CA */	lis r3, l_HIO@ha
/* 80C9C884  38 63 CE B4 */	addi r3, r3, l_HIO@l
/* 80C9C888  98 03 00 04 */	stb r0, 4(r3)
lbl_80C9C88C:
/* 80C9C88C  38 7E 06 00 */	addi r3, r30, 0x600
/* 80C9C890  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C9C894  38 A0 00 02 */	li r5, 2
/* 80C9C898  81 9E 06 10 */	lwz r12, 0x610(r30)
/* 80C9C89C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C9C8A0  7D 89 03 A6 */	mtctr r12
/* 80C9C8A4  4E 80 04 21 */	bctrl 
/* 80C9C8A8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80C9C8AC  4B 5C B0 A8 */	b cM_rndF__Ff
/* 80C9C8B0  FC 00 08 1E */	fctiwz f0, f1
/* 80C9C8B4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C9C8B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9C8BC  B0 1E 05 80 */	sth r0, 0x580(r30)
/* 80C9C8C0  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80C9C8C4  28 00 00 01 */	cmplwi r0, 1
/* 80C9C8C8  41 82 01 54 */	beq lbl_80C9CA1C
/* 80C9C8CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9C8D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9C8D4  38 63 09 58 */	addi r3, r3, 0x958
/* 80C9C8D8  38 80 00 07 */	li r4, 7
/* 80C9C8DC  4B 39 80 58 */	b isDungeonItem__12dSv_memBit_cCFi
/* 80C9C8E0  2C 03 00 00 */	cmpwi r3, 0
/* 80C9C8E4  41 82 00 50 */	beq lbl_80C9C934
/* 80C9C8E8  38 00 00 03 */	li r0, 3
/* 80C9C8EC  B0 1E 05 82 */	sth r0, 0x582(r30)
/* 80C9C8F0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C9C8F4  D0 1E 05 8C */	stfs f0, 0x58c(r30)
/* 80C9C8F8  38 60 00 00 */	li r3, 0
/* 80C9C8FC  38 80 00 01 */	li r4, 1
/* 80C9C900  38 00 00 04 */	li r0, 4
/* 80C9C904  7C 09 03 A6 */	mtctr r0
lbl_80C9C908:
/* 80C9C908  38 03 06 B2 */	addi r0, r3, 0x6b2
/* 80C9C90C  7C 9E 01 AE */	stbx r4, r30, r0
/* 80C9C910  38 63 00 A0 */	addi r3, r3, 0xa0
/* 80C9C914  42 00 FF F4 */	bdnz lbl_80C9C908
/* 80C9C918  C0 3E 05 8C */	lfs f1, 0x58c(r30)
/* 80C9C91C  3C 60 80 CA */	lis r3, l_HIO@ha
/* 80C9C920  38 63 CE B4 */	addi r3, r3, l_HIO@l
/* 80C9C924  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80C9C928  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9C92C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C9C930  48 00 00 88 */	b lbl_80C9C9B8
lbl_80C9C934:
/* 80C9C934  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80C9C938  D0 1E 05 8C */	stfs f0, 0x58c(r30)
/* 80C9C93C  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 80C9C940  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)
/* 80C9C944  28 00 00 00 */	cmplwi r0, 0
/* 80C9C948  40 82 00 18 */	bne lbl_80C9C960
/* 80C9C94C  38 60 00 05 */	li r3, 5
/* 80C9C950  38 80 FF FF */	li r4, -1
/* 80C9C954  4B 39 10 DC */	b dComIfGs_isZoneSwitch__Fii
/* 80C9C958  2C 03 00 00 */	cmpwi r3, 0
/* 80C9C95C  41 82 00 44 */	beq lbl_80C9C9A0
lbl_80C9C960:
/* 80C9C960  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80C9C964  D0 3E 04 D0 */	stfs f1, 0x4d0(r30)
/* 80C9C968  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80C9C96C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C9C970  D0 3E 04 D8 */	stfs f1, 0x4d8(r30)
/* 80C9C974  38 60 00 00 */	li r3, 0
/* 80C9C978  38 80 00 01 */	li r4, 1
/* 80C9C97C  38 00 00 04 */	li r0, 4
/* 80C9C980  7C 09 03 A6 */	mtctr r0
lbl_80C9C984:
/* 80C9C984  38 03 06 B2 */	addi r0, r3, 0x6b2
/* 80C9C988  7C 9E 01 AE */	stbx r4, r30, r0
/* 80C9C98C  38 63 00 A0 */	addi r3, r3, 0xa0
/* 80C9C990  42 00 FF F4 */	bdnz lbl_80C9C984
/* 80C9C994  38 00 00 02 */	li r0, 2
/* 80C9C998  B0 1E 05 82 */	sth r0, 0x582(r30)
/* 80C9C99C  48 00 00 1C */	b lbl_80C9C9B8
lbl_80C9C9A0:
/* 80C9C9A0  38 00 00 00 */	li r0, 0
/* 80C9C9A4  B0 1E 05 82 */	sth r0, 0x582(r30)
/* 80C9C9A8  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80C9C9AC  C0 1E 05 8C */	lfs f0, 0x58c(r30)
/* 80C9C9B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9C9B4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80C9C9B8:
/* 80C9C9B8  38 00 20 00 */	li r0, 0x2000
/* 80C9C9BC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C9C9C0  7F C3 F3 78 */	mr r3, r30
/* 80C9C9C4  4B FF F8 99 */	bl daObj_Msima_Execute__FP15obj_msima_class
/* 80C9C9C8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C9C9CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C9C9D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C9C9D4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C9C9D8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C9C9DC  7C 07 07 74 */	extsb r7, r0
/* 80C9C9E0  38 00 00 00 */	li r0, 0
/* 80C9C9E4  90 01 00 08 */	stw r0, 8(r1)
/* 80C9C9E8  38 60 00 7C */	li r3, 0x7c
/* 80C9C9EC  28 1E 00 00 */	cmplwi r30, 0
/* 80C9C9F0  41 82 00 0C */	beq lbl_80C9C9FC
/* 80C9C9F4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C9C9F8  48 00 00 08 */	b lbl_80C9CA00
lbl_80C9C9FC:
/* 80C9C9FC  38 80 FF FF */	li r4, -1
lbl_80C9CA00:
/* 80C9CA00  38 A0 00 00 */	li r5, 0
/* 80C9CA04  38 C1 00 10 */	addi r6, r1, 0x10
/* 80C9CA08  39 00 00 00 */	li r8, 0
/* 80C9CA0C  39 20 00 00 */	li r9, 0
/* 80C9CA10  39 40 FF FF */	li r10, -1
/* 80C9CA14  4B 37 D4 DC */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80C9CA18  48 00 00 2C */	b lbl_80C9CA44
lbl_80C9CA1C:
/* 80C9CA1C  38 60 00 00 */	li r3, 0
/* 80C9CA20  38 80 00 01 */	li r4, 1
/* 80C9CA24  38 00 00 04 */	li r0, 4
/* 80C9CA28  7C 09 03 A6 */	mtctr r0
lbl_80C9CA2C:
/* 80C9CA2C  38 03 06 B2 */	addi r0, r3, 0x6b2
/* 80C9CA30  7C 9E 01 AE */	stbx r4, r30, r0
/* 80C9CA34  38 63 00 A0 */	addi r3, r3, 0xa0
/* 80C9CA38  42 00 FF F4 */	bdnz lbl_80C9CA2C
/* 80C9CA3C  38 00 00 02 */	li r0, 2
/* 80C9CA40  B0 1E 05 82 */	sth r0, 0x582(r30)
lbl_80C9CA44:
/* 80C9CA44  7F A3 EB 78 */	mr r3, r29
lbl_80C9CA48:
/* 80C9CA48  39 61 00 40 */	addi r11, r1, 0x40
/* 80C9CA4C  4B 6C 57 DC */	b _restgpr_29
/* 80C9CA50  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C9CA54  7C 08 03 A6 */	mtlr r0
/* 80C9CA58  38 21 00 40 */	addi r1, r1, 0x40
/* 80C9CA5C  4E 80 00 20 */	blr 
