lbl_800EC3D8:
/* 800EC3D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EC3DC  7C 08 02 A6 */	mflr r0
/* 800EC3E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EC3E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EC3E8  93 C1 00 08 */	stw r30, 8(r1)
/* 800EC3EC  7C 7E 1B 78 */	mr r30, r3
/* 800EC3F0  A8 03 30 0E */	lha r0, 0x300e(r3)
/* 800EC3F4  2C 00 00 00 */	cmpwi r0, 0
/* 800EC3F8  40 82 00 24 */	bne lbl_800EC41C
/* 800EC3FC  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800EC400  2C 00 00 00 */	cmpwi r0, 0
/* 800EC404  41 82 00 10 */	beq lbl_800EC414
/* 800EC408  38 00 00 04 */	li r0, 4
/* 800EC40C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800EC410  48 00 00 0C */	b lbl_800EC41C
lbl_800EC414:
/* 800EC414  38 00 00 07 */	li r0, 7
/* 800EC418  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_800EC41C:
/* 800EC41C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800EC420  7F E3 FB 78 */	mr r3, r31
/* 800EC424  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 800EC428  48 23 C0 05 */	bl checkPass__12J3DFrameCtrlFf
/* 800EC42C  2C 03 00 00 */	cmpwi r3, 0
/* 800EC430  41 82 00 1C */	beq lbl_800EC44C
/* 800EC434  7F C3 F3 78 */	mr r3, r30
/* 800EC438  80 9E 32 CC */	lwz r4, 0x32cc(r30)
/* 800EC43C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800EC440  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800EC444  7D 89 03 A6 */	mtctr r12
/* 800EC448  4E 80 04 21 */	bctrl 
lbl_800EC44C:
/* 800EC44C  7F E3 FB 78 */	mr r3, r31
/* 800EC450  48 07 20 7D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800EC454  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EC458  41 82 00 58 */	beq lbl_800EC4B0
/* 800EC45C  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800EC460  2C 00 00 00 */	cmpwi r0, 0
/* 800EC464  40 82 00 10 */	bne lbl_800EC474
/* 800EC468  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800EC46C  2C 00 00 00 */	cmpwi r0, 0
/* 800EC470  41 82 00 18 */	beq lbl_800EC488
lbl_800EC474:
/* 800EC474  7F C3 F3 78 */	mr r3, r30
/* 800EC478  4B FF E4 59 */	bl cancelSumouMode__9daAlink_cFv
/* 800EC47C  7F C3 F3 78 */	mr r3, r30
/* 800EC480  4B FD 6F 39 */	bl procWaitInit__9daAlink_cFv
/* 800EC484  48 00 00 68 */	b lbl_800EC4EC
lbl_800EC488:
/* 800EC488  7F C3 F3 78 */	mr r3, r30
/* 800EC48C  38 80 01 5B */	li r4, 0x15b
/* 800EC490  4B FC 0A F1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EC494  38 00 00 0C */	li r0, 0xc
/* 800EC498  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800EC49C  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800EC4A0  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800EC4A4  38 00 01 5B */	li r0, 0x15b
/* 800EC4A8  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800EC4AC  48 00 00 40 */	b lbl_800EC4EC
lbl_800EC4B0:
/* 800EC4B0  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800EC4B4  2C 00 00 00 */	cmpwi r0, 0
/* 800EC4B8  40 82 00 34 */	bne lbl_800EC4EC
/* 800EC4BC  88 1E 05 6A */	lbz r0, 0x56a(r30)
/* 800EC4C0  28 00 00 25 */	cmplwi r0, 0x25
/* 800EC4C4  40 82 00 28 */	bne lbl_800EC4EC
/* 800EC4C8  7F C3 F3 78 */	mr r3, r30
/* 800EC4CC  38 80 01 5C */	li r4, 0x15c
/* 800EC4D0  4B FC 0A B1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EC4D4  38 00 00 01 */	li r0, 1
/* 800EC4D8  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800EC4DC  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800EC4E0  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800EC4E4  38 00 01 5C */	li r0, 0x15c
/* 800EC4E8  90 1E 31 98 */	stw r0, 0x3198(r30)
lbl_800EC4EC:
/* 800EC4EC  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 800EC4F0  2C 00 01 59 */	cmpwi r0, 0x159
/* 800EC4F4  41 82 00 0C */	beq lbl_800EC500
/* 800EC4F8  2C 00 01 5A */	cmpwi r0, 0x15a
/* 800EC4FC  40 82 00 20 */	bne lbl_800EC51C
lbl_800EC500:
/* 800EC500  7F E3 FB 78 */	mr r3, r31
/* 800EC504  C0 22 93 60 */	lfs f1, lit_8369(r2)
/* 800EC508  48 23 BF 25 */	bl checkPass__12J3DFrameCtrlFf
/* 800EC50C  2C 03 00 00 */	cmpwi r3, 0
/* 800EC510  41 82 00 0C */	beq lbl_800EC51C
/* 800EC514  38 00 00 04 */	li r0, 4
/* 800EC518  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
lbl_800EC51C:
/* 800EC51C  38 60 00 01 */	li r3, 1
/* 800EC520  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EC524  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EC528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EC52C  7C 08 03 A6 */	mtlr r0
/* 800EC530  38 21 00 10 */	addi r1, r1, 0x10
/* 800EC534  4E 80 00 20 */	blr 
