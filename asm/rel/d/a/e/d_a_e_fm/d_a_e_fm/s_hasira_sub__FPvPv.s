lbl_804EF29C:
/* 804EF29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF2A0  7C 08 02 A6 */	mflr r0
/* 804EF2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF2A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF2AC  93 C1 00 08 */	stw r30, 8(r1)
/* 804EF2B0  7C 7E 1B 78 */	mr r30, r3
/* 804EF2B4  3C 80 80 50 */	lis r4, lit_1109@ha
/* 804EF2B8  3B E4 AE 58 */	addi r31, r4, lit_1109@l
/* 804EF2BC  4B B2 9A 24 */	b fopAc_IsActor__FPv
/* 804EF2C0  2C 03 00 00 */	cmpwi r3, 0
/* 804EF2C4  41 82 00 28 */	beq lbl_804EF2EC
/* 804EF2C8  A8 1E 00 08 */	lha r0, 8(r30)
/* 804EF2CC  2C 00 00 6B */	cmpwi r0, 0x6b
/* 804EF2D0  40 82 00 1C */	bne lbl_804EF2EC
/* 804EF2D4  7F C3 F3 78 */	mr r3, r30
/* 804EF2D8  38 9F 01 08 */	addi r4, r31, 0x108
/* 804EF2DC  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 804EF2E0  C0 5F 01 18 */	lfs f2, 0x118(r31)
/* 804EF2E4  88 BF 01 1C */	lbz r5, 0x11c(r31)
/* 804EF2E8  48 09 15 6C */	b Rolling__13daObjHHASHI_cFP4cXyzffSc
lbl_804EF2EC:
/* 804EF2EC  38 60 00 00 */	li r3, 0
/* 804EF2F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF2F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EF2F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF2FC  7C 08 03 A6 */	mtlr r0
/* 804EF300  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF304  4E 80 00 20 */	blr 
