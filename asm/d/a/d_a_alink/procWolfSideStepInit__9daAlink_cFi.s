lbl_8012DEC8:
/* 8012DEC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012DECC  7C 08 02 A6 */	mflr r0
/* 8012DED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012DED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012DED8  93 C1 00 08 */	stw r30, 8(r1)
/* 8012DEDC  7C 7F 1B 78 */	mr r31, r3
/* 8012DEE0  7C 9E 23 78 */	mr r30, r4
/* 8012DEE4  88 03 2F 98 */	lbz r0, 0x2f98(r3)
/* 8012DEE8  28 00 00 01 */	cmplwi r0, 1
/* 8012DEEC  40 82 00 6C */	bne lbl_8012DF58
/* 8012DEF0  2C 1E 00 00 */	cmpwi r30, 0
/* 8012DEF4  40 82 00 64 */	bne lbl_8012DF58
/* 8012DEF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8012DEFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8012DF00  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8012DF04  38 80 0C 10 */	li r4, 0xc10
/* 8012DF08  4B F0 6A B5 */	bl isEventBit__11dSv_event_cCFUs
/* 8012DF0C  2C 03 00 00 */	cmpwi r3, 0
/* 8012DF10  41 82 00 48 */	beq lbl_8012DF58
/* 8012DF14  38 60 00 00 */	li r3, 0
/* 8012DF18  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 8012DF1C  28 00 02 DA */	cmplwi r0, 0x2da
/* 8012DF20  41 82 00 10 */	beq lbl_8012DF30
/* 8012DF24  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8012DF28  28 00 02 DB */	cmplwi r0, 0x2db
/* 8012DF2C  40 82 00 08 */	bne lbl_8012DF34
lbl_8012DF30:
/* 8012DF30  38 60 00 01 */	li r3, 1
lbl_8012DF34:
/* 8012DF34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012DF38  40 82 00 20 */	bne lbl_8012DF58
/* 8012DF3C  88 1F 2F CC */	lbz r0, 0x2fcc(r31)
/* 8012DF40  28 00 00 00 */	cmplwi r0, 0
/* 8012DF44  41 82 00 14 */	beq lbl_8012DF58
/* 8012DF48  7F E3 FB 78 */	mr r3, r31
/* 8012DF4C  38 80 00 00 */	li r4, 0
/* 8012DF50  48 00 04 49 */	bl procWolfBackJumpInit__9daAlink_cFi
/* 8012DF54  48 00 01 40 */	b lbl_8012E094
lbl_8012DF58:
/* 8012DF58  7F E3 FB 78 */	mr r3, r31
/* 8012DF5C  38 80 00 F7 */	li r4, 0xf7
/* 8012DF60  4B F9 40 0D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012DF64  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 8012DF68  28 00 00 00 */	cmplwi r0, 0
/* 8012DF6C  41 82 00 0C */	beq lbl_8012DF78
/* 8012DF70  2C 1E 00 00 */	cmpwi r30, 0
/* 8012DF74  41 82 00 0C */	beq lbl_8012DF80
lbl_8012DF78:
/* 8012DF78  38 00 00 01 */	li r0, 1
/* 8012DF7C  98 1F 2F 98 */	stb r0, 0x2f98(r31)
lbl_8012DF80:
/* 8012DF80  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 8012DF84  28 00 00 01 */	cmplwi r0, 1
/* 8012DF88  40 82 00 78 */	bne lbl_8012E000
/* 8012DF8C  80 9F 27 EC */	lwz r4, 0x27ec(r31)
/* 8012DF90  28 04 00 00 */	cmplwi r4, 0
/* 8012DF94  41 82 00 18 */	beq lbl_8012DFAC
/* 8012DF98  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8012DF9C  38 84 05 38 */	addi r4, r4, 0x538
/* 8012DFA0  48 14 2C 65 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8012DFA4  B0 7F 30 0C */	sth r3, 0x300c(r31)
/* 8012DFA8  48 00 00 0C */	b lbl_8012DFB4
lbl_8012DFAC:
/* 8012DFAC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012DFB0  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_8012DFB4:
/* 8012DFB4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8012DFB8  3C 63 00 01 */	addis r3, r3, 1
/* 8012DFBC  38 03 80 00 */	addi r0, r3, -32768
/* 8012DFC0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8012DFC4  7F E3 FB 78 */	mr r3, r31
/* 8012DFC8  38 80 00 4C */	li r4, 0x4c
/* 8012DFCC  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlSideStep_c0@ha
/* 8012DFD0  38 A5 EF A8 */	addi r5, r5, m__24daAlinkHIO_wlSideStep_c0@l
/* 8012DFD4  38 A5 00 28 */	addi r5, r5, 0x28
/* 8012DFD8  4B FF B8 71 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012DFDC  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlSideStep_c0@ha
/* 8012DFE0  38 63 EF A8 */	addi r3, r3, m__24daAlinkHIO_wlSideStep_c0@l
/* 8012DFE4  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 8012DFE8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012DFEC  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 8012DFF0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8012DFF4  38 00 00 00 */	li r0, 0
/* 8012DFF8  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 8012DFFC  48 00 00 6C */	b lbl_8012E068
lbl_8012E000:
/* 8012E000  A8 1F 2F E4 */	lha r0, 0x2fe4(r31)
/* 8012E004  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8012E008  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 8012E00C  28 00 00 02 */	cmplwi r0, 2
/* 8012E010  40 82 00 18 */	bne lbl_8012E028
/* 8012E014  38 80 00 48 */	li r4, 0x48
/* 8012E018  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8012E01C  38 03 40 00 */	addi r0, r3, 0x4000
/* 8012E020  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8012E024  48 00 00 14 */	b lbl_8012E038
lbl_8012E028:
/* 8012E028  38 80 00 4A */	li r4, 0x4a
/* 8012E02C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8012E030  38 03 C0 00 */	addi r0, r3, -16384
/* 8012E034  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_8012E038:
/* 8012E038  7F E3 FB 78 */	mr r3, r31
/* 8012E03C  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlSideStep_c0@ha
/* 8012E040  38 A5 EF A8 */	addi r5, r5, m__24daAlinkHIO_wlSideStep_c0@l
/* 8012E044  4B FF B8 05 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012E048  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlSideStep_c0@ha
/* 8012E04C  38 63 EF A8 */	addi r3, r3, m__24daAlinkHIO_wlSideStep_c0@l
/* 8012E050  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8012E054  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012E058  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 8012E05C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8012E060  38 00 00 01 */	li r0, 1
/* 8012E064  B0 1F 30 0A */	sth r0, 0x300a(r31)
lbl_8012E068:
/* 8012E068  38 00 00 00 */	li r0, 0
/* 8012E06C  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8012E070  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8012E074  7F E3 FB 78 */	mr r3, r31
/* 8012E078  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010033@ha */
/* 8012E07C  38 84 00 33 */	addi r4, r4, 0x0033 /* 0x00010033@l */
/* 8012E080  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8012E084  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8012E088  7D 89 03 A6 */	mtctr r12
/* 8012E08C  4E 80 04 21 */	bctrl 
/* 8012E090  38 60 00 01 */	li r3, 1
lbl_8012E094:
/* 8012E094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012E098  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012E09C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012E0A0  7C 08 03 A6 */	mtlr r0
/* 8012E0A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8012E0A8  4E 80 00 20 */	blr 
