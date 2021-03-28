lbl_80BAB820:
/* 80BAB820  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BAB824  7C 08 02 A6 */	mflr r0
/* 80BAB828  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BAB82C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BAB830  7C 7F 1B 78 */	mr r31, r3
/* 80BAB834  80 03 09 E8 */	lwz r0, 0x9e8(r3)
/* 80BAB838  2C 00 00 00 */	cmpwi r0, 0
/* 80BAB83C  40 82 00 6C */	bne lbl_80BAB8A8
/* 80BAB840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BAB844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BAB848  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BAB84C  3C 80 80 BB */	lis r4, lit_3956@ha
/* 80BAB850  C0 24 C9 8C */	lfs f1, lit_3956@l(r4)
/* 80BAB854  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BAB858  3C 80 80 BB */	lis r4, lit_4506@ha
/* 80BAB85C  C0 04 CA 38 */	lfs f0, lit_4506@l(r4)
/* 80BAB860  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BAB864  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BAB868  38 00 00 00 */	li r0, 0
/* 80BAB86C  90 1F 08 A8 */	stw r0, 0x8a8(r31)
/* 80BAB870  28 1F 00 00 */	cmplwi r31, 0
/* 80BAB874  41 82 00 0C */	beq lbl_80BAB880
/* 80BAB878  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BAB87C  48 00 00 08 */	b lbl_80BAB884
lbl_80BAB880:
/* 80BAB880  38 80 FF FF */	li r4, -1
lbl_80BAB884:
/* 80BAB884  38 A1 00 14 */	addi r5, r1, 0x14
/* 80BAB888  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BAB88C  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80BAB890  7D 89 03 A6 */	mtctr r12
/* 80BAB894  4E 80 04 21 */	bctrl 
/* 80BAB898  80 7F 09 E8 */	lwz r3, 0x9e8(r31)
/* 80BAB89C  38 03 00 01 */	addi r0, r3, 1
/* 80BAB8A0  90 1F 09 E8 */	stw r0, 0x9e8(r31)
/* 80BAB8A4  48 00 00 7C */	b lbl_80BAB920
lbl_80BAB8A8:
/* 80BAB8A8  2C 00 FF FF */	cmpwi r0, -1
/* 80BAB8AC  40 82 00 2C */	bne lbl_80BAB8D8
/* 80BAB8B0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00014040@ha */
/* 80BAB8B4  38 03 40 40 */	addi r0, r3, 0x4040 /* 0x00014040@l */
/* 80BAB8B8  90 1F 08 A8 */	stw r0, 0x8a8(r31)
/* 80BAB8BC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BAB8C0  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80BAB8C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BAB8C8  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80BAB8CC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BAB8D0  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80BAB8D4  48 00 00 4C */	b lbl_80BAB920
lbl_80BAB8D8:
/* 80BAB8D8  88 1F 05 6D */	lbz r0, 0x56d(r31)
/* 80BAB8DC  28 00 00 00 */	cmplwi r0, 0
/* 80BAB8E0  41 82 00 08 */	beq lbl_80BAB8E8
/* 80BAB8E4  48 00 01 B5 */	bl batta_setParticle__12daObjBATTA_cFv
lbl_80BAB8E8:
/* 80BAB8E8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80BAB8EC  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80BAB8F0  40 82 00 30 */	bne lbl_80BAB920
/* 80BAB8F4  3C 60 80 BB */	lis r3, lit_4485@ha
/* 80BAB8F8  38 83 CB 48 */	addi r4, r3, lit_4485@l
/* 80BAB8FC  80 64 00 00 */	lwz r3, 0(r4)
/* 80BAB900  80 04 00 04 */	lwz r0, 4(r4)
/* 80BAB904  90 61 00 08 */	stw r3, 8(r1)
/* 80BAB908  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BAB90C  80 04 00 08 */	lwz r0, 8(r4)
/* 80BAB910  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BAB914  7F E3 FB 78 */	mr r3, r31
/* 80BAB918  38 81 00 08 */	addi r4, r1, 8
/* 80BAB91C  4B FF E5 41 */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
lbl_80BAB920:
/* 80BAB920  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BAB924  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BAB928  7C 08 03 A6 */	mtlr r0
/* 80BAB92C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BAB930  4E 80 00 20 */	blr 
