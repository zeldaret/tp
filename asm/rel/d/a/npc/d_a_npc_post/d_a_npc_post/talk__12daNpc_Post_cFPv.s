lbl_80AABC24:
/* 80AABC24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AABC28  7C 08 02 A6 */	mflr r0
/* 80AABC2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AABC30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AABC34  7C 7F 1B 78 */	mr r31, r3
/* 80AABC38  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AABC3C  2C 00 00 02 */	cmpwi r0, 2
/* 80AABC40  41 82 00 38 */	beq lbl_80AABC78
/* 80AABC44  40 80 01 A8 */	bge lbl_80AABDEC
/* 80AABC48  2C 00 00 00 */	cmpwi r0, 0
/* 80AABC4C  40 80 00 0C */	bge lbl_80AABC58
/* 80AABC50  48 00 01 9C */	b lbl_80AABDEC
/* 80AABC54  48 00 01 98 */	b lbl_80AABDEC
lbl_80AABC58:
/* 80AABC58  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AABC5C  2C 00 00 00 */	cmpwi r0, 0
/* 80AABC60  40 82 00 18 */	bne lbl_80AABC78
/* 80AABC64  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80AABC68  38 A0 00 00 */	li r5, 0
/* 80AABC6C  4B 69 FF 84 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AABC70  38 00 00 02 */	li r0, 2
/* 80AABC74  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AABC78:
/* 80AABC78  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AABC7C  2C 00 00 00 */	cmpwi r0, 0
/* 80AABC80  40 82 01 6C */	bne lbl_80AABDEC
/* 80AABC84  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AABC88  28 00 00 00 */	cmplwi r0, 0
/* 80AABC8C  40 82 00 20 */	bne lbl_80AABCAC
/* 80AABC90  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80AABC94  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AABC98  7C 03 00 00 */	cmpw r3, r0
/* 80AABC9C  41 82 00 10 */	beq lbl_80AABCAC
/* 80AABCA0  88 1F 10 13 */	lbz r0, 0x1013(r31)
/* 80AABCA4  28 00 00 00 */	cmplwi r0, 0
/* 80AABCA8  41 82 00 EC */	beq lbl_80AABD94
lbl_80AABCAC:
/* 80AABCAC  7F E3 FB 78 */	mr r3, r31
/* 80AABCB0  38 80 00 00 */	li r4, 0
/* 80AABCB4  38 A0 00 00 */	li r5, 0
/* 80AABCB8  38 C0 00 00 */	li r6, 0
/* 80AABCBC  38 E0 00 00 */	li r7, 0
/* 80AABCC0  4B 69 FF B8 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AABCC4  2C 03 00 00 */	cmpwi r3, 0
/* 80AABCC8  41 82 00 3C */	beq lbl_80AABD04
/* 80AABCCC  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80AABCD0  28 00 00 01 */	cmplwi r0, 1
/* 80AABCD4  40 82 00 30 */	bne lbl_80AABD04
/* 80AABCD8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AABCDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AABCE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AABCE4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AABCE8  4B 69 99 F8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80AABCEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AABCF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AABCF4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AABCF8  4B 59 67 70 */	b reset__14dEvt_control_cFv
/* 80AABCFC  38 00 00 03 */	li r0, 3
/* 80AABD00  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AABD04:
/* 80AABD04  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AABD08  2C 00 00 01 */	cmpwi r0, 1
/* 80AABD0C  41 82 00 2C */	beq lbl_80AABD38
/* 80AABD10  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AABD14  4B 69 99 E8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AABD18  38 00 00 00 */	li r0, 0
/* 80AABD1C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AABD20  3C 60 80 AB */	lis r3, lit_4070@ha
/* 80AABD24  C0 03 D2 A0 */	lfs f0, lit_4070@l(r3)
/* 80AABD28  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AABD2C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AABD30  38 00 00 01 */	li r0, 1
/* 80AABD34  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AABD38:
/* 80AABD38  38 00 00 00 */	li r0, 0
/* 80AABD3C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AABD40  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AABD44  28 00 00 00 */	cmplwi r0, 0
/* 80AABD48  40 82 00 10 */	bne lbl_80AABD58
/* 80AABD4C  88 1F 10 13 */	lbz r0, 0x1013(r31)
/* 80AABD50  28 00 00 00 */	cmplwi r0, 0
/* 80AABD54  41 82 00 98 */	beq lbl_80AABDEC
lbl_80AABD58:
/* 80AABD58  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AABD5C  2C 00 00 00 */	cmpwi r0, 0
/* 80AABD60  41 82 00 28 */	beq lbl_80AABD88
/* 80AABD64  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AABD68  4B 69 99 94 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AABD6C  38 00 00 00 */	li r0, 0
/* 80AABD70  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AABD74  3C 60 80 AB */	lis r3, lit_4070@ha
/* 80AABD78  C0 03 D2 A0 */	lfs f0, lit_4070@l(r3)
/* 80AABD7C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AABD80  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AABD84  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AABD88:
/* 80AABD88  38 00 00 00 */	li r0, 0
/* 80AABD8C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AABD90  48 00 00 5C */	b lbl_80AABDEC
lbl_80AABD94:
/* 80AABD94  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AABD98  2C 00 00 01 */	cmpwi r0, 1
/* 80AABD9C  41 82 00 2C */	beq lbl_80AABDC8
/* 80AABDA0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AABDA4  4B 69 99 58 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AABDA8  38 00 00 00 */	li r0, 0
/* 80AABDAC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AABDB0  3C 60 80 AB */	lis r3, lit_4070@ha
/* 80AABDB4  C0 03 D2 A0 */	lfs f0, lit_4070@l(r3)
/* 80AABDB8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AABDBC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AABDC0  38 00 00 01 */	li r0, 1
/* 80AABDC4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AABDC8:
/* 80AABDC8  38 00 00 00 */	li r0, 0
/* 80AABDCC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AABDD0  7F E3 FB 78 */	mr r3, r31
/* 80AABDD4  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80AABDD8  38 A0 00 0E */	li r5, 0xe
/* 80AABDDC  38 C0 00 0A */	li r6, 0xa
/* 80AABDE0  38 E0 00 0F */	li r7, 0xf
/* 80AABDE4  39 00 00 00 */	li r8, 0
/* 80AABDE8  4B 69 F8 60 */	b step__8daNpcT_cFsiiii
lbl_80AABDEC:
/* 80AABDEC  38 60 00 00 */	li r3, 0
/* 80AABDF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AABDF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AABDF8  7C 08 03 A6 */	mtlr r0
/* 80AABDFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AABE00  4E 80 00 20 */	blr 
