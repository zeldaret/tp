lbl_809FEAEC:
/* 809FEAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FEAF0  7C 08 02 A6 */	mflr r0
/* 809FEAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FEAF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FEAFC  93 C1 00 08 */	stw r30, 8(r1)
/* 809FEB00  7C 7F 1B 78 */	mr r31, r3
/* 809FEB04  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809FEB08  2C 00 00 02 */	cmpwi r0, 2
/* 809FEB0C  41 82 00 A8 */	beq lbl_809FEBB4
/* 809FEB10  40 80 02 2C */	bge lbl_809FED3C
/* 809FEB14  2C 00 00 00 */	cmpwi r0, 0
/* 809FEB18  40 80 00 0C */	bge lbl_809FEB24
/* 809FEB1C  48 00 02 20 */	b lbl_809FED3C
/* 809FEB20  48 00 02 1C */	b lbl_809FED3C
lbl_809FEB24:
/* 809FEB24  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809FEB28  2C 00 00 00 */	cmpwi r0, 0
/* 809FEB2C  40 82 00 88 */	bne lbl_809FEBB4
/* 809FEB30  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 809FEB34  28 00 00 00 */	cmplwi r0, 0
/* 809FEB38  40 82 00 3C */	bne lbl_809FEB74
/* 809FEB3C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809FEB40  2C 00 00 02 */	cmpwi r0, 2
/* 809FEB44  40 82 00 30 */	bne lbl_809FEB74
/* 809FEB48  2C 00 00 00 */	cmpwi r0, 0
/* 809FEB4C  41 82 00 28 */	beq lbl_809FEB74
/* 809FEB50  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809FEB54  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809FEB58  4B 74 6D 41 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FEB5C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809FEB60  38 00 00 00 */	li r0, 0
/* 809FEB64  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809FEB68  3C 60 80 A0 */	lis r3, lit_4869@ha /* 0x80A00720@ha */
/* 809FEB6C  C0 03 07 20 */	lfs f0, lit_4869@l(r3)  /* 0x80A00720@l */
/* 809FEB70  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809FEB74:
/* 809FEB74  88 1F 17 23 */	lbz r0, 0x1723(r31)
/* 809FEB78  28 00 00 00 */	cmplwi r0, 0
/* 809FEB7C  41 82 00 20 */	beq lbl_809FEB9C
/* 809FEB80  7F E3 FB 78 */	mr r3, r31
/* 809FEB84  38 80 00 2C */	li r4, 0x2c
/* 809FEB88  38 A0 00 00 */	li r5, 0
/* 809FEB8C  4B 74 D0 65 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809FEB90  38 00 00 00 */	li r0, 0
/* 809FEB94  98 1F 17 23 */	stb r0, 0x1723(r31)
/* 809FEB98  48 00 00 14 */	b lbl_809FEBAC
lbl_809FEB9C:
/* 809FEB9C  7F E3 FB 78 */	mr r3, r31
/* 809FEBA0  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 809FEBA4  38 A0 00 00 */	li r5, 0
/* 809FEBA8  4B 74 D0 49 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_809FEBAC:
/* 809FEBAC  38 00 00 02 */	li r0, 2
/* 809FEBB0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809FEBB4:
/* 809FEBB4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809FEBB8  2C 00 00 00 */	cmpwi r0, 0
/* 809FEBBC  40 82 01 80 */	bne lbl_809FED3C
/* 809FEBC0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809FEBC4  28 00 00 00 */	cmplwi r0, 0
/* 809FEBC8  40 82 00 14 */	bne lbl_809FEBDC
/* 809FEBCC  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 809FEBD0  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 809FEBD4  7C 03 00 00 */	cmpw r3, r0
/* 809FEBD8  40 82 00 E0 */	bne lbl_809FECB8
lbl_809FEBDC:
/* 809FEBDC  7F E3 FB 78 */	mr r3, r31
/* 809FEBE0  38 80 00 00 */	li r4, 0
/* 809FEBE4  38 A0 00 00 */	li r5, 0
/* 809FEBE8  38 C0 00 00 */	li r6, 0
/* 809FEBEC  38 E0 00 00 */	li r7, 0
/* 809FEBF0  4B 74 D0 89 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809FEBF4  2C 03 00 00 */	cmpwi r3, 0
/* 809FEBF8  41 82 00 3C */	beq lbl_809FEC34
/* 809FEBFC  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 809FEC00  28 00 00 01 */	cmplwi r0, 1
/* 809FEC04  40 82 00 30 */	bne lbl_809FEC34
/* 809FEC08  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809FEC0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809FEC10  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809FEC14  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809FEC18  4B 74 6A C9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809FEC1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809FEC20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809FEC24  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809FEC28  4B 64 38 41 */	bl reset__14dEvt_control_cFv
/* 809FEC2C  38 00 00 03 */	li r0, 3
/* 809FEC30  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809FEC34:
/* 809FEC34  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809FEC38  2C 00 00 01 */	cmpwi r0, 1
/* 809FEC3C  41 82 00 2C */	beq lbl_809FEC68
/* 809FEC40  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809FEC44  4B 74 6A B9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809FEC48  38 00 00 00 */	li r0, 0
/* 809FEC4C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809FEC50  3C 60 80 A0 */	lis r3, lit_4141@ha /* 0x80A006FC@ha */
/* 809FEC54  C0 03 06 FC */	lfs f0, lit_4141@l(r3)  /* 0x80A006FC@l */
/* 809FEC58  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809FEC5C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809FEC60  38 00 00 01 */	li r0, 1
/* 809FEC64  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809FEC68:
/* 809FEC68  38 00 00 00 */	li r0, 0
/* 809FEC6C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809FEC70  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809FEC74  28 00 00 00 */	cmplwi r0, 0
/* 809FEC78  41 82 00 C4 */	beq lbl_809FED3C
/* 809FEC7C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809FEC80  2C 00 00 00 */	cmpwi r0, 0
/* 809FEC84  41 82 00 28 */	beq lbl_809FECAC
/* 809FEC88  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809FEC8C  4B 74 6A 71 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809FEC90  38 00 00 00 */	li r0, 0
/* 809FEC94  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809FEC98  3C 60 80 A0 */	lis r3, lit_4141@ha /* 0x80A006FC@ha */
/* 809FEC9C  C0 03 06 FC */	lfs f0, lit_4141@l(r3)  /* 0x80A006FC@l */
/* 809FECA0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809FECA4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809FECA8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809FECAC:
/* 809FECAC  38 00 00 00 */	li r0, 0
/* 809FECB0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809FECB4  48 00 00 88 */	b lbl_809FED3C
lbl_809FECB8:
/* 809FECB8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809FECBC  2C 00 00 01 */	cmpwi r0, 1
/* 809FECC0  41 82 00 2C */	beq lbl_809FECEC
/* 809FECC4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809FECC8  4B 74 6A 35 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809FECCC  38 00 00 00 */	li r0, 0
/* 809FECD0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809FECD4  3C 60 80 A0 */	lis r3, lit_4141@ha /* 0x80A006FC@ha */
/* 809FECD8  C0 03 06 FC */	lfs f0, lit_4141@l(r3)  /* 0x80A006FC@l */
/* 809FECDC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809FECE0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809FECE4  38 00 00 01 */	li r0, 1
/* 809FECE8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809FECEC:
/* 809FECEC  38 00 00 00 */	li r0, 0
/* 809FECF0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809FECF4  88 1F 17 21 */	lbz r0, 0x1721(r31)
/* 809FECF8  28 00 00 00 */	cmplwi r0, 0
/* 809FECFC  41 82 00 24 */	beq lbl_809FED20
/* 809FED00  7F E3 FB 78 */	mr r3, r31
/* 809FED04  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 809FED08  38 A0 FF FF */	li r5, -1
/* 809FED0C  38 C0 FF FF */	li r6, -1
/* 809FED10  38 E0 00 0F */	li r7, 0xf
/* 809FED14  39 00 00 00 */	li r8, 0
/* 809FED18  4B 74 C9 31 */	bl step__8daNpcT_cFsiiii
/* 809FED1C  48 00 00 20 */	b lbl_809FED3C
lbl_809FED20:
/* 809FED20  7F E3 FB 78 */	mr r3, r31
/* 809FED24  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 809FED28  38 A0 00 07 */	li r5, 7
/* 809FED2C  38 C0 00 0E */	li r6, 0xe
/* 809FED30  38 E0 00 0F */	li r7, 0xf
/* 809FED34  39 00 00 00 */	li r8, 0
/* 809FED38  4B 74 C9 11 */	bl step__8daNpcT_cFsiiii
lbl_809FED3C:
/* 809FED3C  38 60 00 00 */	li r3, 0
/* 809FED40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FED44  83 C1 00 08 */	lwz r30, 8(r1)
/* 809FED48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FED4C  7C 08 03 A6 */	mtlr r0
/* 809FED50  38 21 00 10 */	addi r1, r1, 0x10
/* 809FED54  4E 80 00 20 */	blr 
