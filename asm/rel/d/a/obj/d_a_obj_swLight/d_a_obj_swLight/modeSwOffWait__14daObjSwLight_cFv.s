lbl_80CF7838:
/* 80CF7838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF783C  7C 08 02 A6 */	mflr r0
/* 80CF7840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF7844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7848  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF784C  7C 7E 1B 78 */	mr r30, r3
/* 80CF7850  3C 80 80 D0 */	lis r4, l_sph_src_at@ha /* 0x80CF83A0@ha */
/* 80CF7854  3B E4 83 A0 */	addi r31, r4, l_sph_src_at@l /* 0x80CF83A0@l */
/* 80CF7858  48 00 01 21 */	bl checkHit__14daObjSwLight_cFv
/* 80CF785C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CF7860  54 04 46 3E */	srwi r4, r0, 0x18
/* 80CF7864  28 04 00 FF */	cmplwi r4, 0xff
/* 80CF7868  41 82 00 28 */	beq lbl_80CF7890
/* 80CF786C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF7870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF7874  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CF7878  7C 05 07 74 */	extsb r5, r0
/* 80CF787C  4B 33 DA E5 */	bl isSwitch__10dSv_info_cCFii
/* 80CF7880  2C 03 00 00 */	cmpwi r3, 0
/* 80CF7884  41 82 00 0C */	beq lbl_80CF7890
/* 80CF7888  38 00 00 01 */	li r0, 1
/* 80CF788C  98 1E 0A E3 */	stb r0, 0xae3(r30)
lbl_80CF7890:
/* 80CF7890  88 1E 0A E3 */	lbz r0, 0xae3(r30)
/* 80CF7894  28 00 00 00 */	cmplwi r0, 0
/* 80CF7898  41 82 00 60 */	beq lbl_80CF78F8
/* 80CF789C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF78A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF78A4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CF78A8  54 04 46 3E */	srwi r4, r0, 0x18
/* 80CF78AC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CF78B0  7C 05 07 74 */	extsb r5, r0
/* 80CF78B4  4B 33 DA AD */	bl isSwitch__10dSv_info_cCFii
/* 80CF78B8  2C 03 00 00 */	cmpwi r3, 0
/* 80CF78BC  40 82 00 28 */	bne lbl_80CF78E4
/* 80CF78C0  38 7E 0A DC */	addi r3, r30, 0xadc
/* 80CF78C4  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80CF78C8  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 80CF78CC  4B 57 8E 75 */	bl cLib_chaseF__FPfff
/* 80CF78D0  2C 03 00 00 */	cmpwi r3, 0
/* 80CF78D4  41 82 00 68 */	beq lbl_80CF793C
/* 80CF78D8  7F C3 F3 78 */	mr r3, r30
/* 80CF78DC  4B FF FD 41 */	bl init_modeSwOnWait__14daObjSwLight_cFv
/* 80CF78E0  48 00 00 5C */	b lbl_80CF793C
lbl_80CF78E4:
/* 80CF78E4  38 7E 0A DC */	addi r3, r30, 0xadc
/* 80CF78E8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80CF78EC  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 80CF78F0  4B 57 8E 51 */	bl cLib_chaseF__FPfff
/* 80CF78F4  48 00 00 48 */	b lbl_80CF793C
lbl_80CF78F8:
/* 80CF78F8  88 7E 0A E6 */	lbz r3, 0xae6(r30)
/* 80CF78FC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80CF7900  40 82 00 3C */	bne lbl_80CF793C
/* 80CF7904  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80CF7908  40 82 00 34 */	bne lbl_80CF793C
/* 80CF790C  38 7E 0A E4 */	addi r3, r30, 0xae4
/* 80CF7910  48 00 0A 49 */	bl func_80CF8358
/* 80CF7914  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80CF7918  40 82 00 24 */	bne lbl_80CF793C
/* 80CF791C  38 7E 0A DC */	addi r3, r30, 0xadc
/* 80CF7920  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80CF7924  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 80CF7928  4B 57 8E 19 */	bl cLib_chaseF__FPfff
/* 80CF792C  2C 03 00 00 */	cmpwi r3, 0
/* 80CF7930  41 82 00 0C */	beq lbl_80CF793C
/* 80CF7934  7F C3 F3 78 */	mr r3, r30
/* 80CF7938  4B FF FC E5 */	bl init_modeSwOnWait__14daObjSwLight_cFv
lbl_80CF793C:
/* 80CF793C  A0 1E 0B 22 */	lhz r0, 0xb22(r30)
/* 80CF7940  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CF7944  28 04 00 FF */	cmplwi r4, 0xff
/* 80CF7948  41 82 00 14 */	beq lbl_80CF795C
/* 80CF794C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80CF7950  38 A0 00 FF */	li r5, 0xff
/* 80CF7954  38 C0 00 01 */	li r6, 1
/* 80CF7958  4B 35 0F E9 */	bl orderEvent__17dEvLib_callback_cFiii
lbl_80CF795C:
/* 80CF795C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF7960  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF7964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF7968  7C 08 03 A6 */	mtlr r0
/* 80CF796C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF7970  4E 80 00 20 */	blr 
