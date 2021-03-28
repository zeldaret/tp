lbl_8013DC5C:
/* 8013DC5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013DC60  7C 08 02 A6 */	mflr r0
/* 8013DC64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013DC68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013DC6C  7C 7F 1B 78 */	mr r31, r3
/* 8013DC70  4B F7 6C 61 */	bl setJumpMode__9daAlink_cFv
/* 8013DC74  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8013DC78  2C 00 00 00 */	cmpwi r0, 0
/* 8013DC7C  41 82 00 BC */	beq lbl_8013DD38
/* 8013DC80  38 7F 28 54 */	addi r3, r31, 0x2854
/* 8013DC84  48 02 0F C5 */	bl setActor__16daPy_actorKeep_cFv
/* 8013DC88  80 7F 28 58 */	lwz r3, 0x2858(r31)
/* 8013DC8C  28 03 00 00 */	cmplwi r3, 0
/* 8013DC90  41 82 00 10 */	beq lbl_8013DCA0
/* 8013DC94  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 8013DC98  28 00 00 2C */	cmplwi r0, 0x2c
/* 8013DC9C  41 82 00 28 */	beq lbl_8013DCC4
lbl_8013DCA0:
/* 8013DCA0  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 8013DCA4  28 00 00 2C */	cmplwi r0, 0x2c
/* 8013DCA8  40 82 00 0C */	bne lbl_8013DCB4
/* 8013DCAC  38 00 00 00 */	li r0, 0
/* 8013DCB0  98 1F 05 6A */	stb r0, 0x56a(r31)
lbl_8013DCB4:
/* 8013DCB4  7F E3 FB 78 */	mr r3, r31
/* 8013DCB8  38 80 00 00 */	li r4, 0
/* 8013DCBC  4B FE BE 89 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013DCC0  48 00 01 24 */	b lbl_8013DDE4
lbl_8013DCC4:
/* 8013DCC4  38 63 06 20 */	addi r3, r3, 0x620
/* 8013DCC8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8013DCCC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8013DCD0  48 20 87 E1 */	bl PSMTXCopy
/* 8013DCD4  C0 22 97 BC */	lfs f1, lit_52534(r2)
/* 8013DCD8  C0 42 97 C0 */	lfs f2, lit_52535(r2)
/* 8013DCDC  C0 62 94 0C */	lfs f3, lit_14614(r2)
/* 8013DCE0  4B EC F0 BD */	bl transM__14mDoMtx_stack_cFfff
/* 8013DCE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8013DCE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8013DCEC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8013DCF0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8013DCF4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8013DCF8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8013DCFC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8013DD00  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8013DD04  38 80 E6 D8 */	li r4, -6440
/* 8013DD08  38 A0 3F FF */	li r5, 0x3fff
/* 8013DD0C  38 C0 00 00 */	li r6, 0
/* 8013DD10  4B EC E5 91 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8013DD14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8013DD18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8013DD1C  38 9F 04 E4 */	addi r4, r31, 0x4e4
/* 8013DD20  4B EC EE E1 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 8013DD24  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013DD28  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013DD2C  7F E3 FB 78 */	mr r3, r31
/* 8013DD30  4B F9 08 F9 */	bl checkSubjectAction__9daAlink_cFv
/* 8013DD34  48 00 00 AC */	b lbl_8013DDE0
lbl_8013DD38:
/* 8013DD38  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 8013DD3C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8013DD40  41 82 00 14 */	beq lbl_8013DD54
/* 8013DD44  7F E3 FB 78 */	mr r3, r31
/* 8013DD48  38 80 00 00 */	li r4, 0
/* 8013DD4C  4B FE BD F9 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013DD50  48 00 00 94 */	b lbl_8013DDE4
lbl_8013DD54:
/* 8013DD54  80 7F 28 10 */	lwz r3, 0x2810(r31)
/* 8013DD58  80 63 05 B8 */	lwz r3, 0x5b8(r3)
/* 8013DD5C  80 63 00 04 */	lwz r3, 4(r3)
/* 8013DD60  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8013DD64  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8013DD68  38 63 05 40 */	addi r3, r3, 0x540
/* 8013DD6C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8013DD70  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8013DD74  48 20 87 3D */	bl PSMTXCopy
/* 8013DD78  C0 22 97 BC */	lfs f1, lit_52534(r2)
/* 8013DD7C  C0 42 97 C4 */	lfs f2, lit_52536(r2)
/* 8013DD80  C0 62 94 0C */	lfs f3, lit_14614(r2)
/* 8013DD84  4B EC F0 19 */	bl transM__14mDoMtx_stack_cFfff
/* 8013DD88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8013DD8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8013DD90  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8013DD94  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8013DD98  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8013DD9C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8013DDA0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8013DDA4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8013DDA8  38 80 77 0C */	li r4, 0x770c
/* 8013DDAC  38 A0 00 00 */	li r5, 0
/* 8013DDB0  38 C0 B3 6C */	li r6, -19604
/* 8013DDB4  4B EC E4 ED */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8013DDB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8013DDBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8013DDC0  38 9F 04 E4 */	addi r4, r31, 0x4e4
/* 8013DDC4  4B EC EE 3D */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 8013DDC8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013DDCC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013DDD0  7F E3 FB 78 */	mr r3, r31
/* 8013DDD4  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100AF@ha */
/* 8013DDD8  38 84 00 AF */	addi r4, r4, 0x00AF /* 0x000100AF@l */
/* 8013DDDC  4B F8 12 DD */	bl voiceStartLevel__9daAlink_cFUl
lbl_8013DDE0:
/* 8013DDE0  38 60 00 01 */	li r3, 1
lbl_8013DDE4:
/* 8013DDE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013DDE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013DDEC  7C 08 03 A6 */	mtlr r0
/* 8013DDF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8013DDF4  4E 80 00 20 */	blr 
