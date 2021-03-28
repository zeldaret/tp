lbl_80186774:
/* 80186774  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80186778  7C 08 02 A6 */	mflr r0
/* 8018677C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80186780  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80186784  7C 7F 1B 78 */	mr r31, r3
/* 80186788  80 63 02 54 */	lwz r3, 0x254(r3)
/* 8018678C  4B EA BA 11 */	bl checkTrigger__9STControlFv
/* 80186790  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80186794  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 80186798  80 63 00 34 */	lwz r3, 0x34(r3)
/* 8018679C  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801867A0  41 82 00 10 */	beq lbl_801867B0
/* 801867A4  7F E3 FB 78 */	mr r3, r31
/* 801867A8  48 00 01 45 */	bl menuSelectStart__14dFile_select_cFv
/* 801867AC  48 00 01 2C */	b lbl_801868D8
lbl_801867B0:
/* 801867B0  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801867B4  41 82 00 10 */	beq lbl_801867C4
/* 801867B8  7F E3 FB 78 */	mr r3, r31
/* 801867BC  48 00 02 C5 */	bl menuSelectCansel__14dFile_select_cFv
/* 801867C0  48 00 01 18 */	b lbl_801868D8
lbl_801867C4:
/* 801867C4  80 7F 02 54 */	lwz r3, 0x254(r31)
/* 801867C8  4B EA BC E1 */	bl checkRightTrigger__9STControlFv
/* 801867CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801867D0  41 82 00 80 */	beq lbl_80186850
/* 801867D4  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 801867D8  7C 7F 02 14 */	add r3, r31, r0
/* 801867DC  88 03 02 58 */	lbz r0, 0x258(r3)
/* 801867E0  28 00 00 00 */	cmplwi r0, 0
/* 801867E4  40 82 00 F4 */	bne lbl_801868D8
/* 801867E8  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 801867EC  28 00 00 00 */	cmplwi r0, 0
/* 801867F0  41 82 00 E8 */	beq lbl_801868D8
/* 801867F4  38 00 00 A0 */	li r0, 0xa0
/* 801867F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801867FC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80186800  38 81 00 0C */	addi r4, r1, 0xc
/* 80186804  38 A0 00 00 */	li r5, 0
/* 80186808  38 C0 00 00 */	li r6, 0
/* 8018680C  38 E0 00 00 */	li r7, 0
/* 80186810  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80186814  FC 40 08 90 */	fmr f2, f1
/* 80186818  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 8018681C  FC 80 18 90 */	fmr f4, f3
/* 80186820  39 00 00 00 */	li r8, 0
/* 80186824  48 12 51 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80186828  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 8018682C  98 1F 02 66 */	stb r0, 0x266(r31)
/* 80186830  88 7F 02 67 */	lbz r3, 0x267(r31)
/* 80186834  38 03 FF FF */	addi r0, r3, -1
/* 80186838  98 1F 02 67 */	stb r0, 0x267(r31)
/* 8018683C  7F E3 FB 78 */	mr r3, r31
/* 80186840  48 00 05 D5 */	bl menuSelectAnmSet__14dFile_select_cFv
/* 80186844  38 00 00 09 */	li r0, 9
/* 80186848  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 8018684C  48 00 00 8C */	b lbl_801868D8
lbl_80186850:
/* 80186850  80 7F 02 54 */	lwz r3, 0x254(r31)
/* 80186854  4B EA BB D9 */	bl checkLeftTrigger__9STControlFv
/* 80186858  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018685C  41 82 00 7C */	beq lbl_801868D8
/* 80186860  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80186864  7C 7F 02 14 */	add r3, r31, r0
/* 80186868  88 03 02 58 */	lbz r0, 0x258(r3)
/* 8018686C  28 00 00 00 */	cmplwi r0, 0
/* 80186870  40 82 00 68 */	bne lbl_801868D8
/* 80186874  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 80186878  28 00 00 02 */	cmplwi r0, 2
/* 8018687C  41 82 00 5C */	beq lbl_801868D8
/* 80186880  38 00 00 A0 */	li r0, 0xa0
/* 80186884  90 01 00 08 */	stw r0, 8(r1)
/* 80186888  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018688C  38 81 00 08 */	addi r4, r1, 8
/* 80186890  38 A0 00 00 */	li r5, 0
/* 80186894  38 C0 00 00 */	li r6, 0
/* 80186898  38 E0 00 00 */	li r7, 0
/* 8018689C  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 801868A0  FC 40 08 90 */	fmr f2, f1
/* 801868A4  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 801868A8  FC 80 18 90 */	fmr f4, f3
/* 801868AC  39 00 00 00 */	li r8, 0
/* 801868B0  48 12 50 D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801868B4  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 801868B8  98 1F 02 66 */	stb r0, 0x266(r31)
/* 801868BC  88 7F 02 67 */	lbz r3, 0x267(r31)
/* 801868C0  38 03 00 01 */	addi r0, r3, 1
/* 801868C4  98 1F 02 67 */	stb r0, 0x267(r31)
/* 801868C8  7F E3 FB 78 */	mr r3, r31
/* 801868CC  48 00 05 49 */	bl menuSelectAnmSet__14dFile_select_cFv
/* 801868D0  38 00 00 09 */	li r0, 9
/* 801868D4  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_801868D8:
/* 801868D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801868DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801868E0  7C 08 03 A6 */	mtlr r0
/* 801868E4  38 21 00 20 */	addi r1, r1, 0x20
/* 801868E8  4E 80 00 20 */	blr 
