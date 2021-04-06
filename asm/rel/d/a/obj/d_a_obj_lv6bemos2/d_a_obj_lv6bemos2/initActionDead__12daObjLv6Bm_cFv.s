lbl_80C80F48:
/* 80C80F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C80F4C  7C 08 02 A6 */	mflr r0
/* 80C80F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C80F54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C80F58  93 C1 00 08 */	stw r30, 8(r1)
/* 80C80F5C  7C 7F 1B 78 */	mr r31, r3
/* 80C80F60  A8 03 09 C2 */	lha r0, 0x9c2(r3)
/* 80C80F64  2C 00 C0 00 */	cmpwi r0, -16384
/* 80C80F68  40 81 00 18 */	ble lbl_80C80F80
/* 80C80F6C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80C80F70  40 80 00 10 */	bge lbl_80C80F80
/* 80C80F74  38 00 00 00 */	li r0, 0
/* 80C80F78  B0 1F 09 C4 */	sth r0, 0x9c4(r31)
/* 80C80F7C  48 00 00 0C */	b lbl_80C80F88
lbl_80C80F80:
/* 80C80F80  38 00 7F FF */	li r0, 0x7fff
/* 80C80F84  B0 1F 09 C4 */	sth r0, 0x9c4(r31)
lbl_80C80F88:
/* 80C80F88  38 00 00 00 */	li r0, 0
/* 80C80F8C  B0 1F 09 D6 */	sth r0, 0x9d6(r31)
/* 80C80F90  B0 1F 09 D8 */	sth r0, 0x9d8(r31)
/* 80C80F94  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C81D24@ha */
/* 80C80F98  38 63 1D 24 */	addi r3, r3, l_arcName@l /* 0x80C81D24@l */
/* 80C80F9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C80FA0  38 80 00 08 */	li r4, 8
/* 80C80FA4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C80FA8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C80FAC  3F C5 00 02 */	addis r30, r5, 2
/* 80C80FB0  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C80FB4  7F C5 F3 78 */	mr r5, r30
/* 80C80FB8  38 C0 00 80 */	li r6, 0x80
/* 80C80FBC  4B 3B B3 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C80FC0  7C 64 1B 78 */	mr r4, r3
/* 80C80FC4  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80C80FC8  38 A0 00 01 */	li r5, 1
/* 80C80FCC  38 C0 00 00 */	li r6, 0
/* 80C80FD0  3C E0 80 C8 */	lis r7, lit_4173@ha /* 0x80C81C54@ha */
/* 80C80FD4  C0 27 1C 54 */	lfs f1, lit_4173@l(r7)  /* 0x80C81C54@l */
/* 80C80FD8  38 E0 00 00 */	li r7, 0
/* 80C80FDC  39 00 FF FF */	li r8, -1
/* 80C80FE0  39 20 00 01 */	li r9, 1
/* 80C80FE4  4B 38 C7 F9 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C80FE8  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C81D24@ha */
/* 80C80FEC  38 63 1D 24 */	addi r3, r3, l_arcName@l /* 0x80C81D24@l */
/* 80C80FF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C80FF4  38 80 00 1B */	li r4, 0x1b
/* 80C80FF8  7F C5 F3 78 */	mr r5, r30
/* 80C80FFC  38 C0 00 80 */	li r6, 0x80
/* 80C81000  4B 3B B2 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C81004  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80C81008  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80C8100C  7C 00 18 40 */	cmplw r0, r3
/* 80C81010  40 82 00 50 */	bne lbl_80C81060
/* 80C81014  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C81D24@ha */
/* 80C81018  38 63 1D 24 */	addi r3, r3, l_arcName@l /* 0x80C81D24@l */
/* 80C8101C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C81020  38 80 00 1A */	li r4, 0x1a
/* 80C81024  7F C5 F3 78 */	mr r5, r30
/* 80C81028  38 C0 00 80 */	li r6, 0x80
/* 80C8102C  4B 3B B2 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C81030  7C 65 1B 78 */	mr r5, r3
/* 80C81034  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80C81038  80 83 00 04 */	lwz r4, 4(r3)
/* 80C8103C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80C81040  38 84 00 58 */	addi r4, r4, 0x58
/* 80C81044  38 C0 00 01 */	li r6, 1
/* 80C81048  38 E0 00 00 */	li r7, 0
/* 80C8104C  3D 00 80 C8 */	lis r8, lit_3855@ha /* 0x80C81C48@ha */
/* 80C81050  C0 28 1C 48 */	lfs f1, lit_3855@l(r8)  /* 0x80C81C48@l */
/* 80C81054  39 00 00 00 */	li r8, 0
/* 80C81058  39 20 FF FF */	li r9, -1
/* 80C8105C  4B 38 C5 E1 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
lbl_80C81060:
/* 80C81060  38 60 00 00 */	li r3, 0
/* 80C81064  38 C0 00 01 */	li r6, 1
/* 80C81068  7C 64 1B 78 */	mr r4, r3
/* 80C8106C  38 00 00 02 */	li r0, 2
/* 80C81070  7C 09 03 A6 */	mtctr r0
lbl_80C81074:
/* 80C81074  38 E3 0A 38 */	addi r7, r3, 0xa38
/* 80C81078  7C BF 38 2E */	lwzx r5, r31, r7
/* 80C8107C  28 05 00 00 */	cmplwi r5, 0
/* 80C81080  41 82 00 28 */	beq lbl_80C810A8
/* 80C81084  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C81088  60 00 00 01 */	ori r0, r0, 1
/* 80C8108C  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C81090  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80C81094  7C BF 38 2E */	lwzx r5, r31, r7
/* 80C81098  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C8109C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C810A0  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C810A4  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80C810A8:
/* 80C810A8  38 63 00 04 */	addi r3, r3, 4
/* 80C810AC  42 00 FF C8 */	bdnz lbl_80C81074
/* 80C810B0  38 60 00 00 */	li r3, 0
/* 80C810B4  38 C0 00 01 */	li r6, 1
/* 80C810B8  38 80 00 00 */	li r4, 0
/* 80C810BC  38 00 00 04 */	li r0, 4
/* 80C810C0  7C 09 03 A6 */	mtctr r0
lbl_80C810C4:
/* 80C810C4  38 E3 0A 40 */	addi r7, r3, 0xa40
/* 80C810C8  7C BF 38 2E */	lwzx r5, r31, r7
/* 80C810CC  28 05 00 00 */	cmplwi r5, 0
/* 80C810D0  41 82 00 28 */	beq lbl_80C810F8
/* 80C810D4  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C810D8  60 00 00 01 */	ori r0, r0, 1
/* 80C810DC  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C810E0  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80C810E4  7C BF 38 2E */	lwzx r5, r31, r7
/* 80C810E8  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C810EC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C810F0  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C810F4  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80C810F8:
/* 80C810F8  38 63 00 04 */	addi r3, r3, 4
/* 80C810FC  42 00 FF C8 */	bdnz lbl_80C810C4
/* 80C81100  38 00 00 14 */	li r0, 0x14
/* 80C81104  98 1F 0A 11 */	stb r0, 0xa11(r31)
/* 80C81108  38 A0 00 00 */	li r5, 0
/* 80C8110C  98 BF 0A 1B */	stb r5, 0xa1b(r31)
/* 80C81110  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80C81114  54 00 00 3E */	slwi r0, r0, 0
/* 80C81118  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80C8111C  80 9F 06 28 */	lwz r4, 0x628(r31)
/* 80C81120  3C 60 FF C0 */	lis r3, 0xFFC0 /* 0xFFBFDFDF@ha */
/* 80C81124  38 03 DF DF */	addi r0, r3, 0xDFDF /* 0xFFBFDFDF@l */
/* 80C81128  7C 80 00 38 */	and r0, r4, r0
/* 80C8112C  90 1F 06 28 */	stw r0, 0x628(r31)
/* 80C81130  98 BF 0A 16 */	stb r5, 0xa16(r31)
/* 80C81134  38 00 00 04 */	li r0, 4
/* 80C81138  98 1F 0A 10 */	stb r0, 0xa10(r31)
/* 80C8113C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C81140  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C81144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C81148  7C 08 03 A6 */	mtlr r0
/* 80C8114C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C81150  4E 80 00 20 */	blr 
