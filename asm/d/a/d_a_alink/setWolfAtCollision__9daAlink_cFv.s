lbl_800AA7EC:
/* 800AA7EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AA7F0  7C 08 02 A6 */	mflr r0
/* 800AA7F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AA7F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800AA7FC  7C 7F 1B 78 */	mr r31, r3
/* 800AA800  80 03 05 80 */	lwz r0, 0x580(r3)
/* 800AA804  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800AA808  41 82 01 BC */	beq lbl_800AA9C4
/* 800AA80C  38 9F 10 F0 */	addi r4, r31, 0x10f0
/* 800AA810  48 02 6F DD */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AA814  2C 03 00 00 */	cmpwi r3, 0
/* 800AA818  40 82 00 38 */	bne lbl_800AA850
/* 800AA81C  7F E3 FB 78 */	mr r3, r31
/* 800AA820  38 9F 08 50 */	addi r4, r31, 0x850
/* 800AA824  48 02 6F C9 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AA828  2C 03 00 00 */	cmpwi r3, 0
/* 800AA82C  40 82 00 24 */	bne lbl_800AA850
/* 800AA830  7F E3 FB 78 */	mr r3, r31
/* 800AA834  38 9F 09 8C */	addi r4, r31, 0x98c
/* 800AA838  48 02 6F B5 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AA83C  2C 03 00 00 */	cmpwi r3, 0
/* 800AA840  40 82 00 10 */	bne lbl_800AA850
/* 800AA844  7F E3 FB 78 */	mr r3, r31
/* 800AA848  38 9F 0A C8 */	addi r4, r31, 0xac8
/* 800AA84C  48 02 6F A1 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
lbl_800AA850:
/* 800AA850  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800AA854  28 00 01 21 */	cmplwi r0, 0x121
/* 800AA858  40 82 00 40 */	bne lbl_800AA898
/* 800AA85C  38 7F 12 14 */	addi r3, r31, 0x1214
/* 800AA860  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800AA864  48 1C 49 79 */	bl SetC__8cM3dGCylFRC4cXyz
/* 800AA868  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AA86C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AA870  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AA874  38 9F 10 F0 */	addi r4, r31, 0x10f0
/* 800AA878  48 1B A3 31 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AA87C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AA880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AA884  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 800AA888  38 9F 10 F0 */	addi r4, r31, 0x10f0
/* 800AA88C  38 A0 00 01 */	li r5, 1
/* 800AA890  4B FD B5 09 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 800AA894  48 00 01 20 */	b lbl_800AA9B4
lbl_800AA898:
/* 800AA898  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800AA89C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800AA8A0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800AA8A4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800AA8A8  7C 64 02 14 */	add r3, r4, r0
/* 800AA8AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800AA8B0  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800AA8B4  C0 9F 34 38 */	lfs f4, 0x3438(r31)
/* 800AA8B8  EC 04 00 32 */	fmuls f0, f4, f0
/* 800AA8BC  EC 61 00 2A */	fadds f3, f1, f0
/* 800AA8C0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800AA8C4  7C 04 04 2E */	lfsx f0, r4, r0
/* 800AA8C8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800AA8CC  EC 04 00 32 */	fmuls f0, f4, f0
/* 800AA8D0  EC 01 00 2A */	fadds f0, f1, f0
/* 800AA8D4  D0 01 00 08 */	stfs f0, 8(r1)
/* 800AA8D8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800AA8DC  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 800AA8E0  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800AA8E4  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800AA8E8  40 82 00 94 */	bne lbl_800AA97C
/* 800AA8EC  38 7F 10 F0 */	addi r3, r31, 0x10f0
/* 800AA8F0  38 81 00 08 */	addi r4, r1, 8
/* 800AA8F4  4B FD A0 15 */	bl StartCAt__8dCcD_CylFR4cXyz
/* 800AA8F8  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800AA8FC  28 00 01 25 */	cmplwi r0, 0x125
/* 800AA900  41 82 00 0C */	beq lbl_800AA90C
/* 800AA904  28 00 01 1C */	cmplwi r0, 0x11c
/* 800AA908  40 82 00 34 */	bne lbl_800AA93C
lbl_800AA90C:
/* 800AA90C  80 1F 10 54 */	lwz r0, 0x1054(r31)
/* 800AA910  60 00 08 00 */	ori r0, r0, 0x800
/* 800AA914  90 1F 10 54 */	stw r0, 0x1054(r31)
/* 800AA918  38 60 00 00 */	li r3, 0
/* 800AA91C  38 00 00 03 */	li r0, 3
/* 800AA920  7C 09 03 A6 */	mtctr r0
lbl_800AA924:
/* 800AA924  38 83 08 EC */	addi r4, r3, 0x8ec
/* 800AA928  7C 1F 20 2E */	lwzx r0, r31, r4
/* 800AA92C  60 00 08 00 */	ori r0, r0, 0x800
/* 800AA930  7C 1F 21 2E */	stwx r0, r31, r4
/* 800AA934  38 63 01 3C */	addi r3, r3, 0x13c
/* 800AA938  42 00 FF EC */	bdnz lbl_800AA924
lbl_800AA93C:
/* 800AA93C  88 1F 05 68 */	lbz r0, 0x568(r31)
/* 800AA940  28 00 00 32 */	cmplwi r0, 0x32
/* 800AA944  41 82 00 10 */	beq lbl_800AA954
/* 800AA948  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800AA94C  28 00 01 25 */	cmplwi r0, 0x125
/* 800AA950  40 82 00 38 */	bne lbl_800AA988
lbl_800AA954:
/* 800AA954  38 60 00 00 */	li r3, 0
/* 800AA958  38 00 00 03 */	li r0, 3
/* 800AA95C  7C 09 03 A6 */	mtctr r0
lbl_800AA960:
/* 800AA960  38 83 08 50 */	addi r4, r3, 0x850
/* 800AA964  7C 1F 20 2E */	lwzx r0, r31, r4
/* 800AA968  60 00 00 01 */	ori r0, r0, 1
/* 800AA96C  7C 1F 21 2E */	stwx r0, r31, r4
/* 800AA970  38 63 01 3C */	addi r3, r3, 0x13c
/* 800AA974  42 00 FF EC */	bdnz lbl_800AA960
/* 800AA978  48 00 00 10 */	b lbl_800AA988
lbl_800AA97C:
/* 800AA97C  38 7F 10 F0 */	addi r3, r31, 0x10f0
/* 800AA980  38 81 00 08 */	addi r4, r1, 8
/* 800AA984  4B FD 9F D1 */	bl MoveCAt__8dCcD_CylFR4cXyz
lbl_800AA988:
/* 800AA988  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AA98C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AA990  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AA994  38 9F 10 F0 */	addi r4, r31, 0x10f0
/* 800AA998  48 1B A2 11 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AA99C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AA9A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AA9A4  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 800AA9A8  38 9F 10 F0 */	addi r4, r31, 0x10f0
/* 800AA9AC  38 A0 00 01 */	li r5, 1
/* 800AA9B0  4B FD B3 E9 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
lbl_800AA9B4:
/* 800AA9B4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800AA9B8  60 00 00 40 */	ori r0, r0, 0x40
/* 800AA9BC  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800AA9C0  48 00 00 08 */	b lbl_800AA9C8
lbl_800AA9C4:
/* 800AA9C4  4B FF FD 51 */	bl resetWolfAtCollision__9daAlink_cFv
lbl_800AA9C8:
/* 800AA9C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800AA9CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AA9D0  7C 08 03 A6 */	mtlr r0
/* 800AA9D4  38 21 00 20 */	addi r1, r1, 0x20
/* 800AA9D8  4E 80 00 20 */	blr 
