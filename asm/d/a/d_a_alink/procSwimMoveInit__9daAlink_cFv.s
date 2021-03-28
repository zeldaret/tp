lbl_80104670:
/* 80104670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80104674  7C 08 02 A6 */	mflr r0
/* 80104678  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010467C  39 61 00 20 */	addi r11, r1, 0x20
/* 80104680  48 25 DB 59 */	bl _savegpr_28
/* 80104684  7C 7F 1B 78 */	mr r31, r3
/* 80104688  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 8010468C  54 1E 03 5A */	rlwinm r30, r0, 0, 0xd, 0xd
/* 80104690  A0 83 2F E8 */	lhz r4, 0x2fe8(r3)
/* 80104694  20 04 00 16 */	subfic r0, r4, 0x16
/* 80104698  7C 00 00 34 */	cntlzw r0, r0
/* 8010469C  54 1D D9 7E */	srwi r29, r0, 5
/* 801046A0  20 04 00 7C */	subfic r0, r4, 0x7c
/* 801046A4  7C 00 00 34 */	cntlzw r0, r0
/* 801046A8  54 1C D9 7E */	srwi r28, r0, 5
/* 801046AC  38 80 00 7B */	li r4, 0x7b
/* 801046B0  4B FB D8 BD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 801046B4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 801046B8  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 801046BC  41 82 00 10 */	beq lbl_801046CC
/* 801046C0  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 801046C4  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 801046C8  90 1F 05 70 */	stw r0, 0x570(r31)
lbl_801046CC:
/* 801046CC  28 1E 00 00 */	cmplwi r30, 0
/* 801046D0  40 82 00 1C */	bne lbl_801046EC
/* 801046D4  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 801046D8  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 801046DC  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801046E0  D0 1F 34 80 */	stfs f0, 0x3480(r31)
/* 801046E4  38 00 00 00 */	li r0, 0
/* 801046E8  B0 1F 30 10 */	sth r0, 0x3010(r31)
lbl_801046EC:
/* 801046EC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801046F0  40 82 00 0C */	bne lbl_801046FC
/* 801046F4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801046F8  41 82 00 4C */	beq lbl_80104744
lbl_801046FC:
/* 801046FC  38 00 00 C7 */	li r0, 0xc7
/* 80104700  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 80104704  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80104708  41 82 00 44 */	beq lbl_8010474C
/* 8010470C  38 00 28 00 */	li r0, 0x2800
/* 80104710  B0 1F 30 80 */	sth r0, 0x3080(r31)
/* 80104714  A8 1F 30 80 */	lha r0, 0x3080(r31)
/* 80104718  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8010471C  38 00 00 01 */	li r0, 1
/* 80104720  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 80104724  7F E3 FB 78 */	mr r3, r31
/* 80104728  A8 1F 30 80 */	lha r0, 0x3080(r31)
/* 8010472C  7C 00 00 D0 */	neg r0, r0
/* 80104730  7C 04 07 34 */	extsh r4, r0
/* 80104734  38 A0 00 00 */	li r5, 0
/* 80104738  38 C0 00 00 */	li r6, 0
/* 8010473C  4B FA 94 3D */	bl setOldRootQuaternion__9daAlink_cFsss
/* 80104740  48 00 00 0C */	b lbl_8010474C
lbl_80104744:
/* 80104744  38 00 FF FF */	li r0, -1
/* 80104748  90 1F 31 98 */	stw r0, 0x3198(r31)
lbl_8010474C:
/* 8010474C  38 00 00 05 */	li r0, 5
/* 80104750  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 80104754  7F E3 FB 78 */	mr r3, r31
/* 80104758  4B FF EF 41 */	bl setSwimMoveAnime__9daAlink_cFv
/* 8010475C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80104760  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80104764  41 82 00 14 */	beq lbl_80104778
/* 80104768  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 8010476C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80104770  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80104774  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80104778:
/* 80104778  7F E3 FB 78 */	mr r3, r31
/* 8010477C  4B FF D1 B9 */	bl swimDeleteItem__9daAlink_cFv
/* 80104780  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80104784  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80104788  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010478C  64 00 00 10 */	oris r0, r0, 0x10
/* 80104790  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80104794  38 00 00 00 */	li r0, 0
/* 80104798  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8010479C  38 60 00 01 */	li r3, 1
/* 801047A0  39 61 00 20 */	addi r11, r1, 0x20
/* 801047A4  48 25 DA 81 */	bl _restgpr_28
/* 801047A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801047AC  7C 08 03 A6 */	mtlr r0
/* 801047B0  38 21 00 20 */	addi r1, r1, 0x20
/* 801047B4  4E 80 00 20 */	blr 
