lbl_80BE3770:
/* 80BE3770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE3774  7C 08 02 A6 */	mflr r0
/* 80BE3778  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE377C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE3780  7C 7F 1B 78 */	mr r31, r3
/* 80BE3784  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BE3788  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BE378C  40 82 00 1C */	bne lbl_80BE37A8
/* 80BE3790  28 1F 00 00 */	cmplwi r31, 0
/* 80BE3794  41 82 00 08 */	beq lbl_80BE379C
/* 80BE3798  4B 43 53 CC */	b __ct__10fopAc_ac_cFv
lbl_80BE379C:
/* 80BE379C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BE37A0  60 00 00 08 */	ori r0, r0, 8
/* 80BE37A4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BE37A8:
/* 80BE37A8  7F E3 FB 78 */	mr r3, r31
/* 80BE37AC  4B FF FE 6D */	bl NameChk__15daObjE_CREATE_cFv
/* 80BE37B0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE37B4  54 03 07 3E */	clrlwi r3, r0, 0x1c
/* 80BE37B8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80BE37BC  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80BE37C0  98 1F 05 84 */	stb r0, 0x584(r31)
/* 80BE37C4  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 80BE37C8  28 00 00 0F */	cmplwi r0, 0xf
/* 80BE37CC  40 82 00 0C */	bne lbl_80BE37D8
/* 80BE37D0  38 00 00 00 */	li r0, 0
/* 80BE37D4  98 1F 05 84 */	stb r0, 0x584(r31)
lbl_80BE37D8:
/* 80BE37D8  38 00 00 00 */	li r0, 0
/* 80BE37DC  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80BE37E0  28 03 00 00 */	cmplwi r3, 0
/* 80BE37E4  41 82 00 0C */	beq lbl_80BE37F0
/* 80BE37E8  28 03 00 FF */	cmplwi r3, 0xff
/* 80BE37EC  40 82 00 0C */	bne lbl_80BE37F8
lbl_80BE37F0:
/* 80BE37F0  38 60 00 05 */	li r3, 5
/* 80BE37F4  48 00 00 70 */	b lbl_80BE3864
lbl_80BE37F8:
/* 80BE37F8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE37FC  54 00 46 3E */	srwi r0, r0, 0x18
/* 80BE3800  98 1F 05 6C */	stb r0, 0x56c(r31)
/* 80BE3804  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE3808  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE380C  88 9F 05 6C */	lbz r4, 0x56c(r31)
/* 80BE3810  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BE3814  7C 05 07 74 */	extsb r5, r0
/* 80BE3818  4B 45 1B 48 */	b isSwitch__10dSv_info_cCFii
/* 80BE381C  2C 03 00 00 */	cmpwi r3, 0
/* 80BE3820  41 82 00 0C */	beq lbl_80BE382C
/* 80BE3824  38 60 00 05 */	li r3, 5
/* 80BE3828  48 00 00 3C */	b lbl_80BE3864
lbl_80BE382C:
/* 80BE382C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE3830  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BE3834  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 80BE3838  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE383C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80BE3840  98 1F 05 6B */	stb r0, 0x56b(r31)
/* 80BE3844  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 80BE3848  54 03 10 3A */	slwi r3, r0, 2
/* 80BE384C  4B 6E B4 78 */	b __nwa__FUl
/* 80BE3850  90 7F 05 7C */	stw r3, 0x57c(r31)
/* 80BE3854  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 80BE3858  7C 00 00 34 */	cntlzw r0, r0
/* 80BE385C  54 03 D9 7E */	srwi r3, r0, 5
/* 80BE3860  38 63 00 04 */	addi r3, r3, 4
lbl_80BE3864:
/* 80BE3864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE3868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE386C  7C 08 03 A6 */	mtlr r0
/* 80BE3870  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3874  4E 80 00 20 */	blr 
