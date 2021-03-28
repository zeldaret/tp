lbl_80510B98:
/* 80510B98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80510B9C  7C 08 02 A6 */	mflr r0
/* 80510BA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80510BA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80510BA8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80510BAC  7C 7E 1B 78 */	mr r30, r3
/* 80510BB0  3C 60 80 52 */	lis r3, lit_4208@ha
/* 80510BB4  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 80510BB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80510BBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80510BC0  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80510BC4  38 00 00 00 */	li r0, 0
/* 80510BC8  98 1E 09 AD */	stb r0, 0x9ad(r30)
/* 80510BCC  38 00 00 0A */	li r0, 0xa
/* 80510BD0  B0 1E 09 98 */	sth r0, 0x998(r30)
/* 80510BD4  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 80510BD8  2C 00 00 00 */	cmpwi r0, 0
/* 80510BDC  3C 60 80 52 */	lis r3, struct_805191E4+0x0@ha
/* 80510BE0  A8 03 91 E4 */	lha r0, struct_805191E4+0x0@l(r3)
/* 80510BE4  2C 00 00 00 */	cmpwi r0, 0
/* 80510BE8  41 82 01 2C */	beq lbl_80510D14
/* 80510BEC  A8 1E 09 70 */	lha r0, 0x970(r30)
/* 80510BF0  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 80510BF4  40 82 01 20 */	bne lbl_80510D14
/* 80510BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80510BFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80510C00  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80510C04  28 00 00 00 */	cmplwi r0, 0
/* 80510C08  40 82 01 0C */	bne lbl_80510D14
/* 80510C0C  C0 3E 09 78 */	lfs f1, 0x978(r30)
/* 80510C10  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80510C14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80510C18  40 80 00 FC */	bge lbl_80510D14
/* 80510C1C  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80510C20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80510C24  40 81 00 F0 */	ble lbl_80510D14
/* 80510C28  88 1E 05 BB */	lbz r0, 0x5bb(r30)
/* 80510C2C  28 00 00 00 */	cmplwi r0, 0
/* 80510C30  41 82 00 E4 */	beq lbl_80510D14
/* 80510C34  7F C3 F3 78 */	mr r3, r30
/* 80510C38  4B B0 C1 C4 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80510C3C  2C 03 00 00 */	cmpwi r3, 0
/* 80510C40  40 82 00 D4 */	bne lbl_80510D14
/* 80510C44  38 00 00 00 */	li r0, 0
/* 80510C48  3C 60 80 52 */	lis r3, rd_count@ha
/* 80510C4C  90 03 93 34 */	stw r0, rd_count@l(r3)
/* 80510C50  3C 60 80 51 */	lis r3, s_tag_sub__FPvPv@ha
/* 80510C54  38 63 0B 34 */	addi r3, r3, s_tag_sub__FPvPv@l
/* 80510C58  7F C4 F3 78 */	mr r4, r30
/* 80510C5C  4B B1 06 DC */	b fpcEx_Search__FPFPvPv_PvPv
/* 80510C60  3C 60 80 52 */	lis r3, rd_count@ha
/* 80510C64  80 03 93 34 */	lwz r0, rd_count@l(r3)
/* 80510C68  2C 00 00 06 */	cmpwi r0, 6
/* 80510C6C  40 80 00 A8 */	bge lbl_80510D14
/* 80510C70  38 61 00 10 */	addi r3, r1, 0x10
/* 80510C74  38 80 00 00 */	li r4, 0
/* 80510C78  A8 BE 09 7C */	lha r5, 0x97c(r30)
/* 80510C7C  38 C0 00 00 */	li r6, 0
/* 80510C80  4B D5 67 74 */	b __ct__5csXyzFsss
/* 80510C84  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80510C88  4B D5 6D 04 */	b cM_rndFX__Ff
/* 80510C8C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80510C90  EC 00 08 2A */	fadds f0, f0, f1
/* 80510C94  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80510C98  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80510C9C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80510CA0  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80510CA4  4B D5 6C E8 */	b cM_rndFX__Ff
/* 80510CA8  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80510CAC  EC 00 08 2A */	fadds f0, f0, f1
/* 80510CB0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80510CB4  3C 60 80 52 */	lis r3, rd_count@ha
/* 80510CB8  80 03 93 34 */	lwz r0, rd_count@l(r3)
/* 80510CBC  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80510CC0  2C 00 00 03 */	cmpwi r0, 3
/* 80510CC4  3C 60 FF 01 */	lis r3, 0xFF01 /* 0xFF011123@ha */
/* 80510CC8  38 03 11 23 */	addi r0, r3, 0x1123 /* 0xFF011123@l */
/* 80510CCC  40 82 00 08 */	bne lbl_80510CD4
/* 80510CD0  38 03 13 23 */	addi r0, r3, 0x1323
lbl_80510CD4:
/* 80510CD4  7C 05 03 78 */	mr r5, r0
/* 80510CD8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80510CDC  7C 07 07 74 */	extsb r7, r0
/* 80510CE0  38 00 00 00 */	li r0, 0
/* 80510CE4  90 01 00 08 */	stw r0, 8(r1)
/* 80510CE8  38 60 01 D4 */	li r3, 0x1d4
/* 80510CEC  28 1E 00 00 */	cmplwi r30, 0
/* 80510CF0  41 82 00 0C */	beq lbl_80510CFC
/* 80510CF4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80510CF8  48 00 00 08 */	b lbl_80510D00
lbl_80510CFC:
/* 80510CFC  38 80 FF FF */	li r4, -1
lbl_80510D00:
/* 80510D00  38 C1 00 18 */	addi r6, r1, 0x18
/* 80510D04  39 01 00 10 */	addi r8, r1, 0x10
/* 80510D08  39 20 00 00 */	li r9, 0
/* 80510D0C  39 40 FF FF */	li r10, -1
/* 80510D10  4B B0 91 E0 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
lbl_80510D14:
/* 80510D14  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80510D18  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80510D1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80510D20  7C 08 03 A6 */	mtlr r0
/* 80510D24  38 21 00 30 */	addi r1, r1, 0x30
/* 80510D28  4E 80 00 20 */	blr 
