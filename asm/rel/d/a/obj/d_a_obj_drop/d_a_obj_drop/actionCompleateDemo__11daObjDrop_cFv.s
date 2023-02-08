lbl_80BE19D0:
/* 80BE19D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE19D4  7C 08 02 A6 */	mflr r0
/* 80BE19D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE19DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE19E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE19E4  7C 7F 1B 78 */	mr r31, r3
/* 80BE19E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE19EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE19F0  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80BE19F4  7C 00 07 74 */	extsb r0, r0
/* 80BE19F8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80BE19FC  7C 63 02 14 */	add r3, r3, r0
/* 80BE1A00  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80BE1A04  38 63 02 48 */	addi r3, r3, 0x248
/* 80BE1A08  38 80 00 01 */	li r4, 1
/* 80BE1A0C  4B 58 16 1D */	bl SetTrimTypeForce__9dCamera_cFl
/* 80BE1A10  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80BE1A14  28 00 00 02 */	cmplwi r0, 2
/* 80BE1A18  40 82 00 78 */	bne lbl_80BE1A90
/* 80BE1A1C  38 7F 06 BB */	addi r3, r31, 0x6bb
/* 80BE1A20  48 00 05 19 */	bl func_80BE1F38
/* 80BE1A24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE1A28  40 82 00 4C */	bne lbl_80BE1A74
/* 80BE1A2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE1A30  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE1A34  8B C4 5E A1 */	lbz r30, 0x5ea1(r4)
/* 80BE1A38  38 64 01 14 */	addi r3, r4, 0x114
/* 80BE1A3C  88 84 4E 0C */	lbz r4, 0x4e0c(r4)
/* 80BE1A40  4B 45 29 01 */	bl getLightDropNum__16dSv_light_drop_cCFUc
/* 80BE1A44  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BE1A48  7C 1E 00 40 */	cmplw r30, r0
/* 80BE1A4C  40 82 00 44 */	bne lbl_80BE1A90
/* 80BE1A50  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80BE1A54  60 00 40 00 */	ori r0, r0, 0x4000
/* 80BE1A58  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80BE1A5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE1A60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE1A64  38 63 09 58 */	addi r3, r3, 0x958
/* 80BE1A68  38 80 00 0D */	li r4, 0xd
/* 80BE1A6C  4B 45 2D A5 */	bl onSwitch__12dSv_memBit_cFi
/* 80BE1A70  48 00 00 20 */	b lbl_80BE1A90
lbl_80BE1A74:
/* 80BE1A74  2C 00 00 01 */	cmpwi r0, 1
/* 80BE1A78  40 82 00 18 */	bne lbl_80BE1A90
/* 80BE1A7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE1A80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE1A84  38 63 09 58 */	addi r3, r3, 0x958
/* 80BE1A88  38 80 00 0D */	li r4, 0xd
/* 80BE1A8C  4B 45 2D 85 */	bl onSwitch__12dSv_memBit_cFi
lbl_80BE1A90:
/* 80BE1A90  88 1F 06 BB */	lbz r0, 0x6bb(r31)
/* 80BE1A94  28 00 00 1E */	cmplwi r0, 0x1e
/* 80BE1A98  40 82 00 18 */	bne lbl_80BE1AB0
/* 80BE1A9C  3C 60 80 BE */	lis r3, lit_4787@ha /* 0x80BE2044@ha */
/* 80BE1AA0  C0 23 20 44 */	lfs f1, lit_4787@l(r3)  /* 0x80BE2044@l */
/* 80BE1AA4  3C 60 80 45 */	lis r3, g_saftyWhiteColor@ha /* 0x8045060C@ha */
/* 80BE1AA8  38 63 06 0C */	addi r3, r3, g_saftyWhiteColor@l /* 0x8045060C@l */
/* 80BE1AAC  4B 42 65 7D */	bl fadeOut_f__13mDoGph_gInf_cFfR8_GXColor
lbl_80BE1AB0:
/* 80BE1AB0  38 60 00 01 */	li r3, 1
/* 80BE1AB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE1AB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE1ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE1AC0  7C 08 03 A6 */	mtlr r0
/* 80BE1AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE1AC8  4E 80 00 20 */	blr 
