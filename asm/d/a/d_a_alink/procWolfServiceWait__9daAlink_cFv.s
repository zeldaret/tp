lbl_8012CD28:
/* 8012CD28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012CD2C  7C 08 02 A6 */	mflr r0
/* 8012CD30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012CD34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012CD38  93 C1 00 08 */	stw r30, 8(r1)
/* 8012CD3C  7C 7F 1B 78 */	mr r31, r3
/* 8012CD40  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 8012CD44  80 03 06 14 */	lwz r0, 0x614(r3)
/* 8012CD48  28 00 00 5E */	cmplwi r0, 0x5e
/* 8012CD4C  41 82 00 6C */	beq lbl_8012CDB8
/* 8012CD50  38 80 00 00 */	li r4, 0
/* 8012CD54  4B FF CD F1 */	bl checkNextActionWolf__9daAlink_cFi
/* 8012CD58  2C 03 00 00 */	cmpwi r3, 0
/* 8012CD5C  40 82 00 5C */	bne lbl_8012CDB8
/* 8012CD60  7F E3 FB 78 */	mr r3, r31
/* 8012CD64  4B F8 9C CD */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 8012CD68  2C 03 00 00 */	cmpwi r3, 0
/* 8012CD6C  40 82 00 4C */	bne lbl_8012CDB8
/* 8012CD70  7F E3 FB 78 */	mr r3, r31
/* 8012CD74  4B FE 8E AD */	bl checkEventRun__9daAlink_cCFv
/* 8012CD78  2C 03 00 00 */	cmpwi r3, 0
/* 8012CD7C  41 82 00 10 */	beq lbl_8012CD8C
/* 8012CD80  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8012CD84  2C 00 00 00 */	cmpwi r0, 0
/* 8012CD88  41 82 00 14 */	beq lbl_8012CD9C
lbl_8012CD8C:
/* 8012CD8C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8012CD90  A8 1F 2F E6 */	lha r0, 0x2fe6(r31)
/* 8012CD94  7C 03 00 00 */	cmpw r3, r0
/* 8012CD98  41 82 00 20 */	beq lbl_8012CDB8
lbl_8012CD9C:
/* 8012CD9C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012CDA0  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8012CDA4  38 00 00 01 */	li r0, 1
/* 8012CDA8  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 8012CDAC  7F E3 FB 78 */	mr r3, r31
/* 8012CDB0  48 00 03 F9 */	bl procWolfWaitInit__9daAlink_cFv
/* 8012CDB4  48 00 01 98 */	b lbl_8012CF4C
lbl_8012CDB8:
/* 8012CDB8  7F C3 F3 78 */	mr r3, r30
/* 8012CDBC  48 03 17 11 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012CDC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012CDC4  41 82 00 8C */	beq lbl_8012CE50
/* 8012CDC8  7F E3 FB 78 */	mr r3, r31
/* 8012CDCC  38 80 00 30 */	li r4, 0x30
/* 8012CDD0  4B FF BA 3D */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012CDD4  2C 03 00 00 */	cmpwi r3, 0
/* 8012CDD8  41 82 00 20 */	beq lbl_8012CDF8
/* 8012CDDC  7F E3 FB 78 */	mr r3, r31
/* 8012CDE0  38 80 00 7F */	li r4, 0x7f
/* 8012CDE4  4B FF C8 95 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8012CDE8  38 00 00 00 */	li r0, 0
/* 8012CDEC  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 8012CDF0  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8012CDF4  48 00 01 58 */	b lbl_8012CF4C
lbl_8012CDF8:
/* 8012CDF8  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8012CDFC  2C 00 00 00 */	cmpwi r0, 0
/* 8012CE00  41 82 00 24 */	beq lbl_8012CE24
/* 8012CE04  7F E3 FB 78 */	mr r3, r31
/* 8012CE08  38 80 00 0E */	li r4, 0xe
/* 8012CE0C  3C A0 80 39 */	lis r5, m__19daAlinkHIO_wlLie_c0@ha /* 0x8038F138@ha */
/* 8012CE10  38 A5 F1 38 */	addi r5, r5, m__19daAlinkHIO_wlLie_c0@l /* 0x8038F138@l */
/* 8012CE14  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 8012CE18  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 8012CE1C  4B FF C8 BD */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8012CE20  48 00 01 2C */	b lbl_8012CF4C
lbl_8012CE24:
/* 8012CE24  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8012CE28  2C 00 00 00 */	cmpwi r0, 0
/* 8012CE2C  40 82 00 14 */	bne lbl_8012CE40
/* 8012CE30  7F E3 FB 78 */	mr r3, r31
/* 8012CE34  38 80 00 80 */	li r4, 0x80
/* 8012CE38  4B FF C8 41 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8012CE3C  48 00 01 10 */	b lbl_8012CF4C
lbl_8012CE40:
/* 8012CE40  7F E3 FB 78 */	mr r3, r31
/* 8012CE44  38 80 00 01 */	li r4, 1
/* 8012CE48  4B FF FD 9D */	bl procWolfServiceWaitInit__9daAlink_cFi
/* 8012CE4C  48 00 01 00 */	b lbl_8012CF4C
lbl_8012CE50:
/* 8012CE50  7F E3 FB 78 */	mr r3, r31
/* 8012CE54  38 80 00 0E */	li r4, 0xe
/* 8012CE58  4B FF B9 B5 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012CE5C  2C 03 00 00 */	cmpwi r3, 0
/* 8012CE60  41 82 00 44 */	beq lbl_8012CEA4
/* 8012CE64  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 8012CE68  38 03 FF FF */	addi r0, r3, -1
/* 8012CE6C  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8012CE70  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 8012CE74  2C 00 00 00 */	cmpwi r0, 0
/* 8012CE78  40 82 00 D4 */	bne lbl_8012CF4C
/* 8012CE7C  7F E3 FB 78 */	mr r3, r31
/* 8012CE80  38 80 00 0B */	li r4, 0xb
/* 8012CE84  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8012CE88  C0 42 93 14 */	lfs f2, lit_7307(r2)
/* 8012CE8C  4B FF C8 4D */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8012CE90  38 00 00 01 */	li r0, 1
/* 8012CE94  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 8012CE98  38 00 00 00 */	li r0, 0
/* 8012CE9C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8012CEA0  48 00 00 AC */	b lbl_8012CF4C
lbl_8012CEA4:
/* 8012CEA4  7F E3 FB 78 */	mr r3, r31
/* 8012CEA8  38 80 00 30 */	li r4, 0x30
/* 8012CEAC  4B FF B9 61 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012CEB0  2C 03 00 00 */	cmpwi r3, 0
/* 8012CEB4  41 82 00 38 */	beq lbl_8012CEEC
/* 8012CEB8  7F C3 F3 78 */	mr r3, r30
/* 8012CEBC  C0 22 92 9C */	lfs f1, lit_5944(r2)
/* 8012CEC0  48 1F B5 6D */	bl checkPass__12J3DFrameCtrlFf
/* 8012CEC4  2C 03 00 00 */	cmpwi r3, 0
/* 8012CEC8  41 82 00 24 */	beq lbl_8012CEEC
/* 8012CECC  7F E3 FB 78 */	mr r3, r31
/* 8012CED0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010036@ha */
/* 8012CED4  38 84 00 36 */	addi r4, r4, 0x0036 /* 0x00010036@l */
/* 8012CED8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8012CEDC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8012CEE0  7D 89 03 A6 */	mtctr r12
/* 8012CEE4  4E 80 04 21 */	bctrl 
/* 8012CEE8  48 00 00 64 */	b lbl_8012CF4C
lbl_8012CEEC:
/* 8012CEEC  7F E3 FB 78 */	mr r3, r31
/* 8012CEF0  38 80 00 80 */	li r4, 0x80
/* 8012CEF4  4B FF B9 19 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012CEF8  2C 03 00 00 */	cmpwi r3, 0
/* 8012CEFC  41 82 00 50 */	beq lbl_8012CF4C
/* 8012CF00  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8012CF04  2C 00 00 00 */	cmpwi r0, 0
/* 8012CF08  40 82 00 44 */	bne lbl_8012CF4C
/* 8012CF0C  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 8012CF10  38 03 FF FF */	addi r0, r3, -1
/* 8012CF14  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8012CF18  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 8012CF1C  2C 00 00 00 */	cmpwi r0, 0
/* 8012CF20  40 82 00 2C */	bne lbl_8012CF4C
/* 8012CF24  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 8012CF28  28 00 00 5E */	cmplwi r0, 0x5e
/* 8012CF2C  41 82 00 20 */	beq lbl_8012CF4C
/* 8012CF30  7F E3 FB 78 */	mr r3, r31
/* 8012CF34  38 80 00 7F */	li r4, 0x7f
/* 8012CF38  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8012CF3C  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8012CF40  4B FF C7 99 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8012CF44  38 00 00 01 */	li r0, 1
/* 8012CF48  B0 1F 30 10 */	sth r0, 0x3010(r31)
lbl_8012CF4C:
/* 8012CF4C  38 60 00 01 */	li r3, 1
/* 8012CF50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012CF54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012CF58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012CF5C  7C 08 03 A6 */	mtlr r0
/* 8012CF60  38 21 00 10 */	addi r1, r1, 0x10
/* 8012CF64  4E 80 00 20 */	blr 
