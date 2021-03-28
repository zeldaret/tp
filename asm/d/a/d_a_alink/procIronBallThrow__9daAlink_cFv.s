lbl_80115860:
/* 80115860  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80115864  7C 08 02 A6 */	mflr r0
/* 80115868  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011586C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80115870  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80115874  7C 7E 1B 78 */	mr r30, r3
/* 80115878  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8011587C  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 80115880  28 00 00 42 */	cmplwi r0, 0x42
/* 80115884  41 82 00 0C */	beq lbl_80115890
/* 80115888  4B FA 00 65 */	bl checkWaitAction__9daAlink_cFv
/* 8011588C  48 00 01 4C */	b lbl_801159D8
lbl_80115890:
/* 80115890  38 00 00 04 */	li r0, 4
/* 80115894  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 80115898  A8 1E 30 18 */	lha r0, 0x3018(r30)
/* 8011589C  2C 00 00 08 */	cmpwi r0, 8
/* 801158A0  40 82 00 0C */	bne lbl_801158AC
/* 801158A4  48 00 01 4D */	bl procIronBallReturnInit__9daAlink_cFv
/* 801158A8  48 00 01 30 */	b lbl_801159D8
lbl_801158AC:
/* 801158AC  2C 00 00 04 */	cmpwi r0, 4
/* 801158B0  40 82 00 8C */	bne lbl_8011593C
/* 801158B4  7F E3 FB 78 */	mr r3, r31
/* 801158B8  C0 22 93 44 */	lfs f1, lit_7977(r2)
/* 801158BC  48 21 2B 71 */	bl checkPass__12J3DFrameCtrlFf
/* 801158C0  2C 03 00 00 */	cmpwi r3, 0
/* 801158C4  41 82 00 78 */	beq lbl_8011593C
/* 801158C8  38 00 00 05 */	li r0, 5
/* 801158CC  B0 1E 30 18 */	sth r0, 0x3018(r30)
/* 801158D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801158D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801158D8  A8 9E 05 9C */	lha r4, 0x59c(r30)
/* 801158DC  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 801158E0  38 C0 00 00 */	li r6, 0
/* 801158E4  4B EF 69 25 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 801158E8  3C 60 80 39 */	lis r3, lit_34968@ha
/* 801158EC  38 83 1A 50 */	addi r4, r3, lit_34968@l
/* 801158F0  80 64 00 00 */	lwz r3, 0(r4)
/* 801158F4  80 04 00 04 */	lwz r0, 4(r4)
/* 801158F8  90 61 00 08 */	stw r3, 8(r1)
/* 801158FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80115900  80 04 00 08 */	lwz r0, 8(r4)
/* 80115904  90 01 00 10 */	stw r0, 0x10(r1)
/* 80115908  3C 60 80 39 */	lis r3, m__22daAlinkHIO_ironBall_c0@ha
/* 8011590C  38 63 EA 70 */	addi r3, r3, m__22daAlinkHIO_ironBall_c0@l
/* 80115910  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 80115914  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80115918  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 8011591C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80115920  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80115924  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80115928  38 81 00 08 */	addi r4, r1, 8
/* 8011592C  80 BE 38 48 */	lwz r5, 0x3848(r30)
/* 80115930  48 23 14 3D */	bl PSMTXMultVec
/* 80115934  38 00 00 00 */	li r0, 0
/* 80115938  B0 1E 30 22 */	sth r0, 0x3022(r30)
lbl_8011593C:
/* 8011593C  7F E3 FB 78 */	mr r3, r31
/* 80115940  48 04 8B 8D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80115944  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80115948  41 82 00 60 */	beq lbl_801159A8
/* 8011594C  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 80115950  2C 00 00 00 */	cmpwi r0, 0
/* 80115954  40 82 00 3C */	bne lbl_80115990
/* 80115958  38 00 00 01 */	li r0, 1
/* 8011595C  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 80115960  7F C3 F3 78 */	mr r3, r30
/* 80115964  38 80 01 64 */	li r4, 0x164
/* 80115968  3C A0 80 39 */	lis r5, m__22daAlinkHIO_ironBall_c0@ha
/* 8011596C  38 A5 EA 70 */	addi r5, r5, m__22daAlinkHIO_ironBall_c0@l
/* 80115970  C0 25 00 34 */	lfs f1, 0x34(r5)
/* 80115974  C0 45 00 38 */	lfs f2, 0x38(r5)
/* 80115978  4B F9 76 69 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8011597C  38 00 00 0C */	li r0, 0xc
/* 80115980  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 80115984  38 00 00 04 */	li r0, 4
/* 80115988  B0 1E 30 18 */	sth r0, 0x3018(r30)
/* 8011598C  48 00 00 48 */	b lbl_801159D4
lbl_80115990:
/* 80115990  A8 1E 30 18 */	lha r0, 0x3018(r30)
/* 80115994  2C 00 00 07 */	cmpwi r0, 7
/* 80115998  40 82 00 3C */	bne lbl_801159D4
/* 8011599C  7F C3 F3 78 */	mr r3, r30
/* 801159A0  48 00 00 51 */	bl procIronBallReturnInit__9daAlink_cFv
/* 801159A4  48 00 00 30 */	b lbl_801159D4
lbl_801159A8:
/* 801159A8  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 801159AC  2C 00 00 00 */	cmpwi r0, 0
/* 801159B0  41 82 00 24 */	beq lbl_801159D4
/* 801159B4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 801159B8  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 801159BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801159C0  4C 41 13 82 */	cror 2, 1, 2
/* 801159C4  40 82 00 10 */	bne lbl_801159D4
/* 801159C8  38 00 00 FE */	li r0, 0xfe
/* 801159CC  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 801159D0  98 1E 2F 93 */	stb r0, 0x2f93(r30)
lbl_801159D4:
/* 801159D4  38 60 00 01 */	li r3, 1
lbl_801159D8:
/* 801159D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801159DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801159E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801159E4  7C 08 03 A6 */	mtlr r0
/* 801159E8  38 21 00 20 */	addi r1, r1, 0x20
/* 801159EC  4E 80 00 20 */	blr 
