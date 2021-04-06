lbl_80C48050:
/* 80C48050  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C48054  7C 08 02 A6 */	mflr r0
/* 80C48058  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C4805C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C48060  7C 7F 1B 78 */	mr r31, r3
/* 80C48064  88 03 06 1E */	lbz r0, 0x61e(r3)
/* 80C48068  28 00 00 00 */	cmplwi r0, 0
/* 80C4806C  40 82 00 C8 */	bne lbl_80C48134
/* 80C48070  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C48074  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80C48078  41 82 00 0C */	beq lbl_80C48084
/* 80C4807C  38 00 00 01 */	li r0, 1
/* 80C48080  98 1F 05 ED */	stb r0, 0x5ed(r31)
lbl_80C48084:
/* 80C48084  38 00 00 01 */	li r0, 1
/* 80C48088  98 1F 06 1E */	stb r0, 0x61e(r31)
/* 80C4808C  38 00 FF FF */	li r0, -1
/* 80C48090  90 1F 06 14 */	stw r0, 0x614(r31)
/* 80C48094  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C48098  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4809C  88 9F 05 EB */	lbz r4, 0x5eb(r31)
/* 80C480A0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C480A4  7C 05 07 74 */	extsb r5, r0
/* 80C480A8  4B 3E D2 B9 */	bl isSwitch__10dSv_info_cCFii
/* 80C480AC  2C 03 00 00 */	cmpwi r3, 0
/* 80C480B0  40 82 00 84 */	bne lbl_80C48134
/* 80C480B4  88 1F 05 ED */	lbz r0, 0x5ed(r31)
/* 80C480B8  28 00 00 00 */	cmplwi r0, 0
/* 80C480BC  41 82 00 78 */	beq lbl_80C48134
/* 80C480C0  3C 60 80 C5 */	lis r3, lit_3779@ha /* 0x80C49CFC@ha */
/* 80C480C4  C0 03 9C FC */	lfs f0, lit_3779@l(r3)  /* 0x80C49CFC@l */
/* 80C480C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C480CC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C480D0  3C 60 80 C5 */	lis r3, lit_3877@ha /* 0x80C49D14@ha */
/* 80C480D4  C0 03 9D 14 */	lfs f0, lit_3877@l(r3)  /* 0x80C49D14@l */
/* 80C480D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C480DC  88 1F 05 EA */	lbz r0, 0x5ea(r31)
/* 80C480E0  28 00 00 03 */	cmplwi r0, 3
/* 80C480E4  38 00 FF FF */	li r0, -1
/* 80C480E8  40 82 00 08 */	bne lbl_80C480F0
/* 80C480EC  38 00 FF 03 */	li r0, -253
lbl_80C480F0:
/* 80C480F0  7C 05 03 78 */	mr r5, r0
/* 80C480F4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C480F8  7C 07 07 74 */	extsb r7, r0
/* 80C480FC  38 00 00 00 */	li r0, 0
/* 80C48100  90 01 00 08 */	stw r0, 8(r1)
/* 80C48104  38 60 01 14 */	li r3, 0x114
/* 80C48108  28 1F 00 00 */	cmplwi r31, 0
/* 80C4810C  41 82 00 0C */	beq lbl_80C48118
/* 80C48110  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C48114  48 00 00 08 */	b lbl_80C4811C
lbl_80C48118:
/* 80C48118  38 80 FF FF */	li r4, -1
lbl_80C4811C:
/* 80C4811C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80C48120  39 00 00 00 */	li r8, 0
/* 80C48124  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80C48128  39 40 FF FF */	li r10, -1
/* 80C4812C  4B 3D 1E 4D */	bl fopAcM_createChildFromOffset__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80C48130  90 7F 06 14 */	stw r3, 0x614(r31)
lbl_80C48134:
/* 80C48134  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C48138  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C4813C  7C 08 03 A6 */	mtlr r0
/* 80C48140  38 21 00 30 */	addi r1, r1, 0x30
/* 80C48144  4E 80 00 20 */	blr 
