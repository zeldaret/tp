lbl_80129704:
/* 80129704  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80129708  7C 08 02 A6 */	mflr r0
/* 8012970C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80129710  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80129714  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80129718  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8012971C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80129720  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80129724  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 80129728  39 61 00 20 */	addi r11, r1, 0x20
/* 8012972C  48 23 8A AD */	bl _savegpr_28
/* 80129730  7C 7F 1B 78 */	mr r31, r3
/* 80129734  7C 80 23 78 */	mr r0, r4
/* 80129738  FF A0 08 90 */	fmr f29, f1
/* 8012973C  FF C0 10 90 */	fmr f30, f2
/* 80129740  7C BC 2B 78 */	mr r28, r5
/* 80129744  FF E0 18 90 */	fmr f31, f3
/* 80129748  38 9F 1F 58 */	addi r4, r31, 0x1f58
/* 8012974C  54 1E 18 38 */	slwi r30, r0, 3
/* 80129750  3C A0 80 39 */	lis r5, m_wlAnmDataTable__9daAlink_c@ha /* 0x80391010@ha */
/* 80129754  38 05 10 10 */	addi r0, r5, m_wlAnmDataTable__9daAlink_c@l /* 0x80391010@l */
/* 80129758  7F A0 F2 14 */	add r29, r0, r30
/* 8012975C  A0 BD 00 00 */	lhz r5, 0(r29)
/* 80129760  3C C0 00 01 */	lis r6, 0x0001 /* 0x00010800@ha */
/* 80129764  38 C6 08 00 */	addi r6, r6, 0x0800 /* 0x00010800@l */
/* 80129768  4B F7 A5 A5 */	bl getAnimeResource__9daAlink_cFP14daPy_anmHeap_cUsUl
/* 8012976C  7C 64 1B 79 */	or. r4, r3, r3
/* 80129770  40 82 00 08 */	bne lbl_80129778
/* 80129774  80 9F 1F 2C */	lwz r4, 0x1f2c(r31)
lbl_80129778:
/* 80129778  7F E3 FB 78 */	mr r3, r31
/* 8012977C  38 A0 00 00 */	li r5, 0
/* 80129780  FC 20 E8 90 */	fmr f1, f29
/* 80129784  FC 40 F0 90 */	fmr f2, f30
/* 80129788  7F 86 E3 78 */	mr r6, r28
/* 8012978C  4B F8 35 B5 */	bl commonSingleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformffs
/* 80129790  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80129794  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80129798  4C 41 13 82 */	cror 2, 1, 2
/* 8012979C  40 82 00 18 */	bne lbl_801297B4
/* 801297A0  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 801297A4  FC 20 F8 90 */	fmr f1, f31
/* 801297A8  38 80 00 00 */	li r4, 0
/* 801297AC  38 A0 00 28 */	li r5, 0x28
/* 801297B0  4B EE 60 99 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_801297B4:
/* 801297B4  7F E3 FB 78 */	mr r3, r31
/* 801297B8  38 80 00 8B */	li r4, 0x8b
/* 801297BC  4B F8 60 E5 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 801297C0  7F E3 FB 78 */	mr r3, r31
/* 801297C4  48 00 DC 35 */	bl checkWolfLieCode__9daAlink_cFv
/* 801297C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801297CC  41 82 00 10 */	beq lbl_801297DC
/* 801297D0  38 00 00 02 */	li r0, 2
/* 801297D4  98 1F 2F 9B */	stb r0, 0x2f9b(r31)
/* 801297D8  48 00 00 18 */	b lbl_801297F0
lbl_801297DC:
/* 801297DC  3C 60 80 39 */	lis r3, m_wlAnmDataTable__9daAlink_c@ha /* 0x80391010@ha */
/* 801297E0  38 03 10 10 */	addi r0, r3, m_wlAnmDataTable__9daAlink_c@l /* 0x80391010@l */
/* 801297E4  7C 60 F2 14 */	add r3, r0, r30
/* 801297E8  88 03 00 02 */	lbz r0, 2(r3)
/* 801297EC  98 1F 2F 9B */	stb r0, 0x2f9b(r31)
lbl_801297F0:
/* 801297F0  38 1F 1F D0 */	addi r0, r31, 0x1fd0
/* 801297F4  90 1F 21 5C */	stw r0, 0x215c(r31)
/* 801297F8  38 1D 00 04 */	addi r0, r29, 4
/* 801297FC  90 1F 21 60 */	stw r0, 0x2160(r31)
/* 80129800  3C 60 80 39 */	lis r3, m_wlAnmDataTable__9daAlink_c@ha /* 0x80391010@ha */
/* 80129804  38 03 10 10 */	addi r0, r3, m_wlAnmDataTable__9daAlink_c@l /* 0x80391010@l */
/* 80129808  7C 60 F2 14 */	add r3, r0, r30
/* 8012980C  88 03 00 03 */	lbz r0, 3(r3)
/* 80129810  98 1F 2F D8 */	stb r0, 0x2fd8(r31)
/* 80129814  38 60 00 01 */	li r3, 1
/* 80129818  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8012981C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80129820  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80129824  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80129828  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 8012982C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80129830  39 61 00 20 */	addi r11, r1, 0x20
/* 80129834  48 23 89 F1 */	bl _restgpr_28
/* 80129838  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8012983C  7C 08 03 A6 */	mtlr r0
/* 80129840  38 21 00 50 */	addi r1, r1, 0x50
/* 80129844  4E 80 00 20 */	blr 
