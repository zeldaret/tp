lbl_809AEB94:
/* 809AEB94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809AEB98  7C 08 02 A6 */	mflr r0
/* 809AEB9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809AEBA0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 809AEBA4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 809AEBA8  7C 7E 1B 78 */	mr r30, r3
/* 809AEBAC  3B E0 00 00 */	li r31, 0
/* 809AEBB0  A0 03 0D 36 */	lhz r0, 0xd36(r3)
/* 809AEBB4  2C 00 00 02 */	cmpwi r0, 2
/* 809AEBB8  41 82 00 44 */	beq lbl_809AEBFC
/* 809AEBBC  40 80 00 10 */	bge lbl_809AEBCC
/* 809AEBC0  2C 00 00 00 */	cmpwi r0, 0
/* 809AEBC4  41 82 00 14 */	beq lbl_809AEBD8
/* 809AEBC8  48 00 01 3C */	b lbl_809AED04
lbl_809AEBCC:
/* 809AEBCC  2C 00 00 04 */	cmpwi r0, 4
/* 809AEBD0  40 80 01 34 */	bge lbl_809AED04
/* 809AEBD4  48 00 01 20 */	b lbl_809AECF4
lbl_809AEBD8:
/* 809AEBD8  80 9E 0D 30 */	lwz r4, 0xd30(r30)
/* 809AEBDC  38 A0 00 00 */	li r5, 0
/* 809AEBE0  4B 7A 51 3D */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809AEBE4  38 00 00 00 */	li r0, 0
/* 809AEBE8  90 1E 09 50 */	stw r0, 0x950(r30)
/* 809AEBEC  98 1E 0D 38 */	stb r0, 0xd38(r30)
/* 809AEBF0  38 00 00 02 */	li r0, 2
/* 809AEBF4  B0 1E 0D 36 */	sth r0, 0xd36(r30)
/* 809AEBF8  48 00 01 0C */	b lbl_809AED04
lbl_809AEBFC:
/* 809AEBFC  38 80 00 00 */	li r4, 0
/* 809AEC00  38 A0 00 01 */	li r5, 1
/* 809AEC04  38 C0 00 00 */	li r6, 0
/* 809AEC08  4B 7A 51 7D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809AEC0C  2C 03 00 00 */	cmpwi r3, 0
/* 809AEC10  41 82 00 9C */	beq lbl_809AECAC
/* 809AEC14  3C 60 80 9B */	lis r3, lit_4385@ha /* 0x809AFB0C@ha */
/* 809AEC18  38 83 FB 0C */	addi r4, r3, lit_4385@l /* 0x809AFB0C@l */
/* 809AEC1C  80 64 00 00 */	lwz r3, 0(r4)
/* 809AEC20  80 04 00 04 */	lwz r0, 4(r4)
/* 809AEC24  90 61 00 10 */	stw r3, 0x10(r1)
/* 809AEC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AEC2C  80 04 00 08 */	lwz r0, 8(r4)
/* 809AEC30  90 01 00 18 */	stw r0, 0x18(r1)
/* 809AEC34  38 00 00 03 */	li r0, 3
/* 809AEC38  B0 1E 0D 36 */	sth r0, 0xd36(r30)
/* 809AEC3C  38 7E 0D 1C */	addi r3, r30, 0xd1c
/* 809AEC40  4B 9B 33 D9 */	bl __ptmf_test
/* 809AEC44  2C 03 00 00 */	cmpwi r3, 0
/* 809AEC48  41 82 00 18 */	beq lbl_809AEC60
/* 809AEC4C  7F C3 F3 78 */	mr r3, r30
/* 809AEC50  38 80 00 00 */	li r4, 0
/* 809AEC54  39 9E 0D 1C */	addi r12, r30, 0xd1c
/* 809AEC58  4B 9B 34 2D */	bl __ptmf_scall
/* 809AEC5C  60 00 00 00 */	nop 
lbl_809AEC60:
/* 809AEC60  38 00 00 00 */	li r0, 0
/* 809AEC64  B0 1E 0D 36 */	sth r0, 0xd36(r30)
/* 809AEC68  80 61 00 10 */	lwz r3, 0x10(r1)
/* 809AEC6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AEC70  90 7E 0D 1C */	stw r3, 0xd1c(r30)
/* 809AEC74  90 1E 0D 20 */	stw r0, 0xd20(r30)
/* 809AEC78  80 01 00 18 */	lwz r0, 0x18(r1)
/* 809AEC7C  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 809AEC80  38 7E 0D 1C */	addi r3, r30, 0xd1c
/* 809AEC84  4B 9B 33 95 */	bl __ptmf_test
/* 809AEC88  2C 03 00 00 */	cmpwi r3, 0
/* 809AEC8C  41 82 00 18 */	beq lbl_809AECA4
/* 809AEC90  7F C3 F3 78 */	mr r3, r30
/* 809AEC94  38 80 00 00 */	li r4, 0
/* 809AEC98  39 9E 0D 1C */	addi r12, r30, 0xd1c
/* 809AEC9C  4B 9B 33 E9 */	bl __ptmf_scall
/* 809AECA0  60 00 00 00 */	nop 
lbl_809AECA4:
/* 809AECA4  3B E0 00 01 */	li r31, 1
/* 809AECA8  48 00 00 5C */	b lbl_809AED04
lbl_809AECAC:
/* 809AECAC  7F C3 F3 78 */	mr r3, r30
/* 809AECB0  38 81 00 0C */	addi r4, r1, 0xc
/* 809AECB4  38 A1 00 08 */	addi r5, r1, 8
/* 809AECB8  7F C6 F3 78 */	mr r6, r30
/* 809AECBC  38 E0 00 01 */	li r7, 1
/* 809AECC0  4B 7A 4A 59 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 809AECC4  2C 03 00 00 */	cmpwi r3, 0
/* 809AECC8  41 82 00 3C */	beq lbl_809AED04
/* 809AECCC  7F C3 F3 78 */	mr r3, r30
/* 809AECD0  80 81 00 08 */	lwz r4, 8(r1)
/* 809AECD4  3C A0 80 9B */	lis r5, lit_4369@ha /* 0x809AFAA4@ha */
/* 809AECD8  C0 25 FA A4 */	lfs f1, lit_4369@l(r5)  /* 0x809AFAA4@l */
/* 809AECDC  38 A0 00 00 */	li r5, 0
/* 809AECE0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809AECE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809AECE8  7D 89 03 A6 */	mtctr r12
/* 809AECEC  4E 80 04 21 */	bctrl 
/* 809AECF0  48 00 00 14 */	b lbl_809AED04
lbl_809AECF4:
/* 809AECF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809AECF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809AECFC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809AED00  4B 69 37 69 */	bl reset__14dEvt_control_cFv
lbl_809AED04:
/* 809AED04  7F E3 FB 78 */	mr r3, r31
/* 809AED08  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809AED0C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 809AED10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809AED14  7C 08 03 A6 */	mtlr r0
/* 809AED18  38 21 00 30 */	addi r1, r1, 0x30
/* 809AED1C  4E 80 00 20 */	blr 
