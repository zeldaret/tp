lbl_80474540:
/* 80474540  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80474544  7C 08 02 A6 */	mflr r0
/* 80474548  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047454C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80474550  7C 7F 1B 78 */	mr r31, r3
/* 80474554  88 03 0D B4 */	lbz r0, 0xdb4(r3)
/* 80474558  28 00 00 00 */	cmplwi r0, 0
/* 8047455C  40 82 00 18 */	bne lbl_80474574
/* 80474560  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80474564  60 00 20 00 */	ori r0, r0, 0x2000
/* 80474568  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 8047456C  38 00 00 01 */	li r0, 1
/* 80474570  98 1F 0D B4 */	stb r0, 0xdb4(r31)
lbl_80474574:
/* 80474574  7F E3 FB 78 */	mr r3, r31
/* 80474578  38 9F 07 8C */	addi r4, r31, 0x78c
/* 8047457C  4B BA 61 50 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80474580  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 80474584  2C 00 00 03 */	cmpwi r0, 3
/* 80474588  40 82 00 78 */	bne lbl_80474600
/* 8047458C  88 1F 07 DC */	lbz r0, 0x7dc(r31)
/* 80474590  28 00 00 64 */	cmplwi r0, 0x64
/* 80474594  40 82 00 6C */	bne lbl_80474600
/* 80474598  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 8047459C  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 804745A0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804745A4  3C C0 80 48 */	lis r6, lit_6526@ha
/* 804745A8  C0 26 A4 50 */	lfs f1, lit_6526@l(r6)
/* 804745AC  4B DF AA 54 */	b Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 804745B0  38 61 00 08 */	addi r3, r1, 8
/* 804745B4  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 804745B8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804745BC  4B DF 25 78 */	b __mi__4cXyzCFRC3Vec
/* 804745C0  C0 41 00 08 */	lfs f2, 8(r1)
/* 804745C4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 804745C8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804745CC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804745D0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804745D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804745D8  D0 5F 0A C0 */	stfs f2, 0xac0(r31)
/* 804745DC  D0 3F 0A C4 */	stfs f1, 0xac4(r31)
/* 804745E0  D0 1F 0A C8 */	stfs f0, 0xac8(r31)
/* 804745E4  38 00 00 64 */	li r0, 0x64
/* 804745E8  98 1F 0A 50 */	stb r0, 0xa50(r31)
/* 804745EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804745F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804745F4  38 63 23 3C */	addi r3, r3, 0x233c
/* 804745F8  38 9F 0A 3C */	addi r4, r31, 0xa3c
/* 804745FC  4B DF 05 AC */	b Set__4cCcSFP8cCcD_Obj
lbl_80474600:
/* 80474600  38 60 00 01 */	li r3, 1
/* 80474604  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80474608  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047460C  7C 08 03 A6 */	mtlr r0
/* 80474610  38 21 00 30 */	addi r1, r1, 0x30
/* 80474614  4E 80 00 20 */	blr 
