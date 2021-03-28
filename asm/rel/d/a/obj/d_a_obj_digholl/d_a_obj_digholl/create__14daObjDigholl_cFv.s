lbl_80BDC618:
/* 80BDC618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDC61C  7C 08 02 A6 */	mflr r0
/* 80BDC620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDC624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDC628  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDC62C  7C 7E 1B 78 */	mr r30, r3
/* 80BDC630  3C 80 80 BE */	lis r4, lit_3678@ha
/* 80BDC634  3B E4 CB 3C */	addi r31, r4, lit_3678@l
/* 80BDC638  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BDC63C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BDC640  40 82 00 1C */	bne lbl_80BDC65C
/* 80BDC644  28 1E 00 00 */	cmplwi r30, 0
/* 80BDC648  41 82 00 08 */	beq lbl_80BDC650
/* 80BDC64C  4B 43 C5 18 */	b __ct__10fopAc_ac_cFv
lbl_80BDC650:
/* 80BDC650  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BDC654  60 00 00 08 */	ori r0, r0, 8
/* 80BDC658  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BDC65C:
/* 80BDC65C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BDC660  98 1E 05 69 */	stb r0, 0x569(r30)
/* 80BDC664  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BDC668  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BDC66C  98 1E 05 6A */	stb r0, 0x56a(r30)
/* 80BDC670  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BDC674  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80BDC678  B0 1E 05 6C */	sth r0, 0x56c(r30)
/* 80BDC67C  A8 1E 05 6C */	lha r0, 0x56c(r30)
/* 80BDC680  2C 00 00 FF */	cmpwi r0, 0xff
/* 80BDC684  40 82 00 0C */	bne lbl_80BDC690
/* 80BDC688  38 00 FF FF */	li r0, -1
/* 80BDC68C  B0 1E 05 6C */	sth r0, 0x56c(r30)
lbl_80BDC690:
/* 80BDC690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDC694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDC698  88 9E 05 69 */	lbz r4, 0x569(r30)
/* 80BDC69C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BDC6A0  7C 05 07 74 */	extsb r5, r0
/* 80BDC6A4  4B 45 8C BC */	b isSwitch__10dSv_info_cCFii
/* 80BDC6A8  2C 03 00 00 */	cmpwi r3, 0
/* 80BDC6AC  41 82 00 14 */	beq lbl_80BDC6C0
/* 80BDC6B0  38 00 00 02 */	li r0, 2
/* 80BDC6B4  98 1E 05 68 */	stb r0, 0x568(r30)
/* 80BDC6B8  38 00 00 01 */	li r0, 1
/* 80BDC6BC  98 1E 05 6B */	stb r0, 0x56b(r30)
lbl_80BDC6C0:
/* 80BDC6C0  7F C3 F3 78 */	mr r3, r30
/* 80BDC6C4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BDC6C8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80BDC6CC  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80BDC6D0  4B 43 DE 58 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80BDC6D4  7F C3 F3 78 */	mr r3, r30
/* 80BDC6D8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80BDC6DC  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80BDC6E0  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80BDC6E4  4B 43 DE 54 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80BDC6E8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BDC6EC  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80BDC6F0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BDC6F4  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80BDC6F8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BDC6FC  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80BDC700  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80BDC704  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80BDC708  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80BDC70C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BDC710  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80BDC714  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80BDC718  38 00 00 20 */	li r0, 0x20
/* 80BDC71C  98 1E 05 4B */	stb r0, 0x54b(r30)
/* 80BDC720  38 60 00 04 */	li r3, 4
/* 80BDC724  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDC728  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDC72C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDC730  7C 08 03 A6 */	mtlr r0
/* 80BDC734  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDC738  4E 80 00 20 */	blr 
