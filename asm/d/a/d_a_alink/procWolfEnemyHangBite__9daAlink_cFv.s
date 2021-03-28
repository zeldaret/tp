lbl_8013CDEC:
/* 8013CDEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013CDF0  7C 08 02 A6 */	mflr r0
/* 8013CDF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013CDF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8013CDFC  48 22 53 E1 */	bl _savegpr_29
/* 8013CE00  7C 7D 1B 78 */	mr r29, r3
/* 8013CE04  3B FD 1F D0 */	addi r31, r29, 0x1fd0
/* 8013CE08  83 C3 28 20 */	lwz r30, 0x2820(r3)
/* 8013CE0C  7F C4 F3 78 */	mr r4, r30
/* 8013CE10  4B FF C7 F1 */	bl setWolfEnemyHangBitePos__9daAlink_cFP13fopEn_enemy_c
/* 8013CE14  2C 03 00 00 */	cmpwi r3, 0
/* 8013CE18  40 82 00 10 */	bne lbl_8013CE28
/* 8013CE1C  7F A3 EB 78 */	mr r3, r29
/* 8013CE20  4B FF D9 CD */	bl procWolfJumpAttackKickInit__9daAlink_cFv
/* 8013CE24  48 00 02 98 */	b lbl_8013D0BC
lbl_8013CE28:
/* 8013CE28  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8013CE2C  A8 9D 30 10 */	lha r4, 0x3010(r29)
/* 8013CE30  38 A0 00 02 */	li r5, 2
/* 8013CE34  38 C0 20 00 */	li r6, 0x2000
/* 8013CE38  38 E0 08 00 */	li r7, 0x800
/* 8013CE3C  48 13 37 05 */	bl cLib_addCalcAngleS__FPsssss
/* 8013CE40  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8013CE44  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8013CE48  7F A3 EB 78 */	mr r3, r29
/* 8013CE4C  38 80 00 03 */	li r4, 3
/* 8013CE50  4B F7 64 31 */	bl setDoStatusContinuation__9daAlink_cFUc
/* 8013CE54  88 1D 2F 8D */	lbz r0, 0x2f8d(r29)
/* 8013CE58  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8013CE5C  41 82 00 20 */	beq lbl_8013CE7C
/* 8013CE60  38 00 00 01 */	li r0, 1
/* 8013CE64  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 8013CE68  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtBite_c0@ha
/* 8013CE6C  38 63 F7 48 */	addi r3, r3, m__22daAlinkHIO_wlAtBite_c0@l
/* 8013CE70  A8 03 00 28 */	lha r0, 0x28(r3)
/* 8013CE74  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 8013CE78  48 00 00 18 */	b lbl_8013CE90
lbl_8013CE7C:
/* 8013CE7C  A8 7D 30 08 */	lha r3, 0x3008(r29)
/* 8013CE80  2C 03 00 00 */	cmpwi r3, 0
/* 8013CE84  41 82 00 0C */	beq lbl_8013CE90
/* 8013CE88  38 03 FF FF */	addi r0, r3, -1
/* 8013CE8C  B0 1D 30 08 */	sth r0, 0x3008(r29)
lbl_8013CE90:
/* 8013CE90  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 8013CE94  2C 00 00 00 */	cmpwi r0, 0
/* 8013CE98  40 82 00 60 */	bne lbl_8013CEF8
/* 8013CE9C  7F E3 FB 78 */	mr r3, r31
/* 8013CEA0  48 02 16 2D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013CEA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013CEA8  41 82 02 10 */	beq lbl_8013D0B8
/* 8013CEAC  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 8013CEB0  2C 00 00 00 */	cmpwi r0, 0
/* 8013CEB4  41 82 00 2C */	beq lbl_8013CEE0
/* 8013CEB8  7F A3 EB 78 */	mr r3, r29
/* 8013CEBC  38 80 00 79 */	li r4, 0x79
/* 8013CEC0  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 8013CEC4  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8013CEC8  4B FE C8 11 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8013CECC  38 00 00 00 */	li r0, 0
/* 8013CED0  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 8013CED4  38 00 00 01 */	li r0, 1
/* 8013CED8  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 8013CEDC  48 00 01 DC */	b lbl_8013D0B8
lbl_8013CEE0:
/* 8013CEE0  A8 1D 30 08 */	lha r0, 0x3008(r29)
/* 8013CEE4  2C 00 00 00 */	cmpwi r0, 0
/* 8013CEE8  40 82 01 D0 */	bne lbl_8013D0B8
/* 8013CEEC  7F A3 EB 78 */	mr r3, r29
/* 8013CEF0  4B FF D8 FD */	bl procWolfJumpAttackKickInit__9daAlink_cFv
/* 8013CEF4  48 00 01 C8 */	b lbl_8013D0BC
lbl_8013CEF8:
/* 8013CEF8  A8 1D 30 08 */	lha r0, 0x3008(r29)
/* 8013CEFC  2C 00 00 00 */	cmpwi r0, 0
/* 8013CF00  40 82 00 10 */	bne lbl_8013CF10
/* 8013CF04  7F A3 EB 78 */	mr r3, r29
/* 8013CF08  4B FF D8 E5 */	bl procWolfJumpAttackKickInit__9daAlink_cFv
/* 8013CF0C  48 00 01 B0 */	b lbl_8013D0BC
lbl_8013CF10:
/* 8013CF10  88 1D 2F 8D */	lbz r0, 0x2f8d(r29)
/* 8013CF14  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8013CF18  41 82 00 20 */	beq lbl_8013CF38
/* 8013CF1C  38 7D 34 78 */	addi r3, r29, 0x3478
/* 8013CF20  3C 80 80 39 */	lis r4, m__22daAlinkHIO_wlAtBite_c0@ha
/* 8013CF24  38 84 F7 48 */	addi r4, r4, m__22daAlinkHIO_wlAtBite_c0@l
/* 8013CF28  C0 24 00 48 */	lfs f1, 0x48(r4)
/* 8013CF2C  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 8013CF30  48 13 38 11 */	bl cLib_chaseF__FPfff
/* 8013CF34  48 00 00 1C */	b lbl_8013CF50
lbl_8013CF38:
/* 8013CF38  38 7D 34 78 */	addi r3, r29, 0x3478
/* 8013CF3C  3C 80 80 39 */	lis r4, m__22daAlinkHIO_wlAtBite_c0@ha
/* 8013CF40  38 84 F7 48 */	addi r4, r4, m__22daAlinkHIO_wlAtBite_c0@l
/* 8013CF44  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8013CF48  C0 44 00 58 */	lfs f2, 0x58(r4)
/* 8013CF4C  48 13 37 F5 */	bl cLib_chaseF__FPfff
lbl_8013CF50:
/* 8013CF50  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8013CF54  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 8013CF58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013CF5C  40 80 00 24 */	bge lbl_8013CF80
/* 8013CF60  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 8013CF64  2C 00 00 00 */	cmpwi r0, 0
/* 8013CF68  41 82 01 50 */	beq lbl_8013D0B8
/* 8013CF6C  38 00 00 00 */	li r0, 0
/* 8013CF70  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 8013CF74  C0 1D 34 78 */	lfs f0, 0x3478(r29)
/* 8013CF78  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8013CF7C  48 00 01 3C */	b lbl_8013D0B8
lbl_8013CF80:
/* 8013CF80  C0 1D 34 78 */	lfs f0, 0x3478(r29)
/* 8013CF84  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8013CF88  7F E3 FB 78 */	mr r3, r31
/* 8013CF8C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013CF90  48 1E B4 9D */	bl checkPass__12J3DFrameCtrlFf
/* 8013CF94  2C 03 00 00 */	cmpwi r3, 0
/* 8013CF98  40 82 00 18 */	bne lbl_8013CFB0
/* 8013CF9C  7F E3 FB 78 */	mr r3, r31
/* 8013CFA0  C0 22 94 94 */	lfs f1, lit_16210(r2)
/* 8013CFA4  48 1E B4 89 */	bl checkPass__12J3DFrameCtrlFf
/* 8013CFA8  2C 03 00 00 */	cmpwi r3, 0
/* 8013CFAC  41 82 00 5C */	beq lbl_8013D008
lbl_8013CFB0:
/* 8013CFB0  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 8013CFB4  2C 00 00 00 */	cmpwi r0, 0
/* 8013CFB8  40 82 00 44 */	bne lbl_8013CFFC
/* 8013CFBC  7F E3 FB 78 */	mr r3, r31
/* 8013CFC0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013CFC4  48 1E B4 69 */	bl checkPass__12J3DFrameCtrlFf
/* 8013CFC8  2C 03 00 00 */	cmpwi r3, 0
/* 8013CFCC  41 82 00 10 */	beq lbl_8013CFDC
/* 8013CFD0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013CFD4  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8013CFD8  48 00 00 0C */	b lbl_8013CFE4
lbl_8013CFDC:
/* 8013CFDC  C0 02 94 94 */	lfs f0, lit_16210(r2)
/* 8013CFE0  D0 1F 00 10 */	stfs f0, 0x10(r31)
lbl_8013CFE4:
/* 8013CFE4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8013CFE8  80 7D 1F 2C */	lwz r3, 0x1f2c(r29)
/* 8013CFEC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8013CFF0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013CFF4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8013CFF8  48 00 00 C0 */	b lbl_8013D0B8
lbl_8013CFFC:
/* 8013CFFC  38 00 00 00 */	li r0, 0
/* 8013D000  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 8013D004  48 00 00 B4 */	b lbl_8013D0B8
lbl_8013D008:
/* 8013D008  7F E3 FB 78 */	mr r3, r31
/* 8013D00C  C0 22 93 48 */	lfs f1, lit_8130(r2)
/* 8013D010  48 1E B4 1D */	bl checkPass__12J3DFrameCtrlFf
/* 8013D014  2C 03 00 00 */	cmpwi r3, 0
/* 8013D018  40 82 00 18 */	bne lbl_8013D030
/* 8013D01C  7F E3 FB 78 */	mr r3, r31
/* 8013D020  C0 22 93 80 */	lfs f1, lit_8780(r2)
/* 8013D024  48 1E B4 09 */	bl checkPass__12J3DFrameCtrlFf
/* 8013D028  2C 03 00 00 */	cmpwi r3, 0
/* 8013D02C  41 82 00 14 */	beq lbl_8013D040
lbl_8013D030:
/* 8013D030  7F A3 EB 78 */	mr r3, r29
/* 8013D034  7F C4 F3 78 */	mr r4, r30
/* 8013D038  4B FF C6 C1 */	bl setWolfBiteDamage__9daAlink_cFP13fopEn_enemy_c
/* 8013D03C  48 00 00 7C */	b lbl_8013D0B8
lbl_8013D040:
/* 8013D040  7F E3 FB 78 */	mr r3, r31
/* 8013D044  C0 22 97 B4 */	lfs f1, lit_52234(r2)
/* 8013D048  48 1E B3 E5 */	bl checkPass__12J3DFrameCtrlFf
/* 8013D04C  2C 03 00 00 */	cmpwi r3, 0
/* 8013D050  40 82 00 18 */	bne lbl_8013D068
/* 8013D054  7F E3 FB 78 */	mr r3, r31
/* 8013D058  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 8013D05C  48 1E B3 D1 */	bl checkPass__12J3DFrameCtrlFf
/* 8013D060  2C 03 00 00 */	cmpwi r3, 0
/* 8013D064  41 82 00 24 */	beq lbl_8013D088
lbl_8013D068:
/* 8013D068  7F A3 EB 78 */	mr r3, r29
/* 8013D06C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010044@ha */
/* 8013D070  38 84 00 44 */	addi r4, r4, 0x0044 /* 0x00010044@l */
/* 8013D074  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8013D078  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013D07C  7D 89 03 A6 */	mtctr r12
/* 8013D080  4E 80 04 21 */	bctrl 
/* 8013D084  48 00 00 34 */	b lbl_8013D0B8
lbl_8013D088:
/* 8013D088  7F E3 FB 78 */	mr r3, r31
/* 8013D08C  C0 22 93 78 */	lfs f1, lit_8676(r2)
/* 8013D090  48 1E B3 9D */	bl checkPass__12J3DFrameCtrlFf
/* 8013D094  2C 03 00 00 */	cmpwi r3, 0
/* 8013D098  41 82 00 20 */	beq lbl_8013D0B8
/* 8013D09C  7F A3 EB 78 */	mr r3, r29
/* 8013D0A0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010045@ha */
/* 8013D0A4  38 84 00 45 */	addi r4, r4, 0x0045 /* 0x00010045@l */
/* 8013D0A8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8013D0AC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013D0B0  7D 89 03 A6 */	mtctr r12
/* 8013D0B4  4E 80 04 21 */	bctrl 
lbl_8013D0B8:
/* 8013D0B8  38 60 00 01 */	li r3, 1
lbl_8013D0BC:
/* 8013D0BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8013D0C0  48 22 51 69 */	bl _restgpr_29
/* 8013D0C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013D0C8  7C 08 03 A6 */	mtlr r0
/* 8013D0CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8013D0D0  4E 80 00 20 */	blr 
