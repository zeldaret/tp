lbl_80209474:
/* 80209474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80209478  7C 08 02 A6 */	mflr r0
/* 8020947C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80209480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80209484  7C 7F 1B 78 */	mr r31, r3
/* 80209488  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8020948C  48 04 C3 9D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80209490  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80209494  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80209498  40 82 01 10 */	bne lbl_802095A8
/* 8020949C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802094A0  48 04 C3 89 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802094A4  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802094A8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802094AC  40 82 00 FC */	bne lbl_802095A8
/* 802094B0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802094B4  48 04 C3 75 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802094B8  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802094BC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802094C0  40 82 00 E8 */	bne lbl_802095A8
/* 802094C4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 802094C8  48 04 C3 61 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802094CC  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802094D0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802094D4  40 82 00 D4 */	bne lbl_802095A8
/* 802094D8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802094DC  48 04 C3 4D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802094E0  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802094E4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802094E8  40 82 00 C0 */	bne lbl_802095A8
/* 802094EC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802094F0  48 04 C3 39 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802094F4  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802094F8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802094FC  40 82 00 AC */	bne lbl_802095A8
/* 80209500  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80209504  48 04 C3 25 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80209508  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 8020950C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80209510  40 82 00 98 */	bne lbl_802095A8
/* 80209514  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80209518  48 04 C3 11 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020951C  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80209520  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80209524  40 82 00 84 */	bne lbl_802095A8
/* 80209528  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8020952C  48 04 C2 FD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80209530  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80209534  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80209538  40 82 00 70 */	bne lbl_802095A8
/* 8020953C  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80209540  48 04 C2 E9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80209544  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80209548  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020954C  40 82 00 5C */	bne lbl_802095A8
/* 80209550  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80209554  48 04 C2 D5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80209558  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 8020955C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80209560  40 82 00 48 */	bne lbl_802095A8
/* 80209564  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80209568  48 04 C2 C1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020956C  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80209570  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80209574  40 82 00 34 */	bne lbl_802095A8
/* 80209578  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8020957C  48 04 C2 AD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80209580  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80209584  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80209588  40 82 00 20 */	bne lbl_802095A8
/* 8020958C  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 80209590  48 04 C2 99 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80209594  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80209598  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020959C  40 82 00 0C */	bne lbl_802095A8
/* 802095A0  38 60 00 01 */	li r3, 1
/* 802095A4  48 00 00 08 */	b lbl_802095AC
lbl_802095A8:
/* 802095A8  38 60 00 00 */	li r3, 0
lbl_802095AC:
/* 802095AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802095B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802095B4  7C 08 03 A6 */	mtlr r0
/* 802095B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802095BC  4E 80 00 20 */	blr 
