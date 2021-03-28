lbl_80495818:
/* 80495818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049581C  7C 08 02 A6 */	mflr r0
/* 80495820  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495824  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80495828  7C 7F 1B 78 */	mr r31, r3
/* 8049582C  39 9F 07 40 */	addi r12, r31, 0x740
/* 80495830  4B EC C8 54 */	b __ptmf_scall
/* 80495834  60 00 00 00 */	nop 
/* 80495838  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8049583C  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80495840  2C 00 00 05 */	cmpwi r0, 5
/* 80495844  41 82 00 18 */	beq lbl_8049585C
/* 80495848  2C 00 00 06 */	cmpwi r0, 6
/* 8049584C  41 82 00 10 */	beq lbl_8049585C
/* 80495850  88 1F 09 CC */	lbz r0, 0x9cc(r31)
/* 80495854  28 00 00 01 */	cmplwi r0, 1
/* 80495858  40 82 00 A4 */	bne lbl_804958FC
lbl_8049585C:
/* 8049585C  7F E3 FB 78 */	mr r3, r31
/* 80495860  38 80 00 00 */	li r4, 0
/* 80495864  4B B8 4E 68 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80495868  88 1F 09 7C */	lbz r0, 0x97c(r31)
/* 8049586C  28 00 00 00 */	cmplwi r0, 0
/* 80495870  41 82 00 1C */	beq lbl_8049588C
/* 80495874  38 7F 07 60 */	addi r3, r31, 0x760
/* 80495878  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8049587C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80495880  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80495884  4B BE 12 28 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80495888  48 00 00 10 */	b lbl_80495898
lbl_8049588C:
/* 8049588C  80 1F 07 8C */	lwz r0, 0x78c(r31)
/* 80495890  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80495894  90 1F 07 8C */	stw r0, 0x78c(r31)
lbl_80495898:
/* 80495898  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8049589C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 804958A0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804958A4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 804958A8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804958AC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 804958B0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804958B4  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 804958B8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804958BC  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804958C0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804958C4  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 804958C8  7F E3 FB 78 */	mr r3, r31
/* 804958CC  4B FF FB C5 */	bl setBaseMtx__8daTbox_cFv
/* 804958D0  80 7F 07 3C */	lwz r3, 0x73c(r31)
/* 804958D4  80 1F 07 38 */	lwz r0, 0x738(r31)
/* 804958D8  7C 03 00 40 */	cmplw r3, r0
/* 804958DC  40 82 00 08 */	bne lbl_804958E4
/* 804958E0  4B BE 60 E0 */	b Move__4dBgWFv
lbl_804958E4:
/* 804958E4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804958E8  54 03 D6 BE */	rlwinm r3, r0, 0x1a, 0x1a, 0x1f
/* 804958EC  38 80 00 00 */	li r4, 0
/* 804958F0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804958F4  38 C0 FF FF */	li r6, -1
/* 804958F8  4B C0 6A D4 */	b setPosition__7dTres_cFiUcPC3Veci
lbl_804958FC:
/* 804958FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80495900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495904  7C 08 03 A6 */	mtlr r0
/* 80495908  38 21 00 10 */	addi r1, r1, 0x10
/* 8049590C  4E 80 00 20 */	blr 
