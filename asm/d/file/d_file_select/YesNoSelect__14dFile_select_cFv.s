lbl_8018929C:
/* 8018929C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801892A0  7C 08 02 A6 */	mflr r0
/* 801892A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801892A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801892AC  7C 7F 1B 78 */	mr r31, r3
/* 801892B0  80 63 02 54 */	lwz r3, 0x254(r3)
/* 801892B4  4B EA 8E E9 */	bl checkTrigger__9STControlFv
/* 801892B8  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801892BC  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801892C0  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801892C4  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801892C8  41 82 00 10 */	beq lbl_801892D8
/* 801892CC  7F E3 FB 78 */	mr r3, r31
/* 801892D0  48 00 01 15 */	bl yesNoSelectStart__14dFile_select_cFv
/* 801892D4  48 00 00 FC */	b lbl_801893D0
lbl_801892D8:
/* 801892D8  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801892DC  41 82 00 10 */	beq lbl_801892EC
/* 801892E0  7F E3 FB 78 */	mr r3, r31
/* 801892E4  48 00 06 21 */	bl yesnoCancelAnmSet__14dFile_select_cFv
/* 801892E8  48 00 00 E8 */	b lbl_801893D0
lbl_801892EC:
/* 801892EC  80 7F 02 54 */	lwz r3, 0x254(r31)
/* 801892F0  4B EA 91 B9 */	bl checkRightTrigger__9STControlFv
/* 801892F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801892F8  41 82 00 68 */	beq lbl_80189360
/* 801892FC  88 1F 02 68 */	lbz r0, 0x268(r31)
/* 80189300  28 00 00 00 */	cmplwi r0, 0
/* 80189304  41 82 00 CC */	beq lbl_801893D0
/* 80189308  38 00 00 A0 */	li r0, 0xa0
/* 8018930C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80189310  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80189314  38 81 00 0C */	addi r4, r1, 0xc
/* 80189318  38 A0 00 00 */	li r5, 0
/* 8018931C  38 C0 00 00 */	li r6, 0
/* 80189320  38 E0 00 00 */	li r7, 0
/* 80189324  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80189328  FC 40 08 90 */	fmr f2, f1
/* 8018932C  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 80189330  FC 80 18 90 */	fmr f4, f3
/* 80189334  39 00 00 00 */	li r8, 0
/* 80189338  48 12 26 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8018933C  88 1F 02 68 */	lbz r0, 0x268(r31)
/* 80189340  98 1F 02 69 */	stb r0, 0x269(r31)
/* 80189344  38 00 00 00 */	li r0, 0
/* 80189348  98 1F 02 68 */	stb r0, 0x268(r31)
/* 8018934C  7F E3 FB 78 */	mr r3, r31
/* 80189350  48 00 04 3D */	bl yesnoSelectAnmSet__14dFile_select_cFv
/* 80189354  38 00 00 1C */	li r0, 0x1c
/* 80189358  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 8018935C  48 00 00 74 */	b lbl_801893D0
lbl_80189360:
/* 80189360  80 7F 02 54 */	lwz r3, 0x254(r31)
/* 80189364  4B EA 90 C9 */	bl checkLeftTrigger__9STControlFv
/* 80189368  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018936C  41 82 00 64 */	beq lbl_801893D0
/* 80189370  88 1F 02 68 */	lbz r0, 0x268(r31)
/* 80189374  28 00 00 01 */	cmplwi r0, 1
/* 80189378  41 82 00 58 */	beq lbl_801893D0
/* 8018937C  38 00 00 A0 */	li r0, 0xa0
/* 80189380  90 01 00 08 */	stw r0, 8(r1)
/* 80189384  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80189388  38 81 00 08 */	addi r4, r1, 8
/* 8018938C  38 A0 00 00 */	li r5, 0
/* 80189390  38 C0 00 00 */	li r6, 0
/* 80189394  38 E0 00 00 */	li r7, 0
/* 80189398  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018939C  FC 40 08 90 */	fmr f2, f1
/* 801893A0  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 801893A4  FC 80 18 90 */	fmr f4, f3
/* 801893A8  39 00 00 00 */	li r8, 0
/* 801893AC  48 12 25 D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801893B0  88 1F 02 68 */	lbz r0, 0x268(r31)
/* 801893B4  98 1F 02 69 */	stb r0, 0x269(r31)
/* 801893B8  38 00 00 01 */	li r0, 1
/* 801893BC  98 1F 02 68 */	stb r0, 0x268(r31)
/* 801893C0  7F E3 FB 78 */	mr r3, r31
/* 801893C4  48 00 03 C9 */	bl yesnoSelectAnmSet__14dFile_select_cFv
/* 801893C8  38 00 00 1C */	li r0, 0x1c
/* 801893CC  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_801893D0:
/* 801893D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801893D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801893D8  7C 08 03 A6 */	mtlr r0
/* 801893DC  38 21 00 20 */	addi r1, r1, 0x20
/* 801893E0  4E 80 00 20 */	blr 
