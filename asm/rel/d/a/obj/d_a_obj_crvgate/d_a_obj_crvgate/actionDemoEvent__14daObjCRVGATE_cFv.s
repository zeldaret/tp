lbl_80BD0B88:
/* 80BD0B88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BD0B8C  7C 08 02 A6 */	mflr r0
/* 80BD0B90  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BD0B94  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BD0B98  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BD0B9C  7C 7F 1B 78 */	mr r31, r3
/* 80BD0BA0  3C 60 80 BD */	lis r3, ccCylSrc@ha
/* 80BD0BA4  38 A3 30 C0 */	addi r5, r3, ccCylSrc@l
/* 80BD0BA8  88 1F 05 AA */	lbz r0, 0x5aa(r31)
/* 80BD0BAC  28 00 00 00 */	cmplwi r0, 0
/* 80BD0BB0  40 82 00 A0 */	bne lbl_80BD0C50
/* 80BD0BB4  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80BD0BB8  C0 05 00 8C */	lfs f0, 0x8c(r5)
/* 80BD0BBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD0BC0  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 80BD0BC4  C0 3F 05 E4 */	lfs f1, 0x5e4(r31)
/* 80BD0BC8  C0 1F 05 F0 */	lfs f0, 0x5f0(r31)
/* 80BD0BCC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD0BD0  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 80BD0BD4  C0 5F 05 E4 */	lfs f2, 0x5e4(r31)
/* 80BD0BD8  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 80BD0BDC  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 80BD0BE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD0BE4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BD0BE8  4C 40 13 82 */	cror 2, 0, 2
/* 80BD0BEC  40 82 01 24 */	bne lbl_80BD0D10
/* 80BD0BF0  38 00 00 01 */	li r0, 1
/* 80BD0BF4  98 1F 05 AA */	stb r0, 0x5aa(r31)
/* 80BD0BF8  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 80BD0BFC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD0C00  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 80BD0C04  C0 05 00 94 */	lfs f0, 0x94(r5)
/* 80BD0C08  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BD0C0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BD0C10  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BD0C14  38 61 00 08 */	addi r3, r1, 8
/* 80BD0C18  7C 64 1B 78 */	mr r4, r3
/* 80BD0C1C  C0 25 00 98 */	lfs f1, 0x98(r5)
/* 80BD0C20  4B 77 64 B8 */	b PSVECScale
/* 80BD0C24  38 60 03 01 */	li r3, 0x301
/* 80BD0C28  38 80 00 03 */	li r4, 3
/* 80BD0C2C  38 BF 05 E0 */	addi r5, r31, 0x5e0
/* 80BD0C30  38 C0 FF FF */	li r6, -1
/* 80BD0C34  38 E0 00 00 */	li r7, 0
/* 80BD0C38  39 01 00 08 */	addi r8, r1, 8
/* 80BD0C3C  39 20 FF FF */	li r9, -1
/* 80BD0C40  4B 44 91 58 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80BD0C44  38 00 05 00 */	li r0, 0x500
/* 80BD0C48  B0 1F 06 0E */	sth r0, 0x60e(r31)
/* 80BD0C4C  48 00 00 C4 */	b lbl_80BD0D10
lbl_80BD0C50:
/* 80BD0C50  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 80BD0C54  38 80 40 00 */	li r4, 0x4000
/* 80BD0C58  A8 BF 06 0E */	lha r5, 0x60e(r31)
/* 80BD0C5C  4B 69 FF 34 */	b cLib_chaseAngleS__FPsss
/* 80BD0C60  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80BD0C64  38 03 03 00 */	addi r0, r3, 0x300
/* 80BD0C68  B0 1F 06 0E */	sth r0, 0x60e(r31)
/* 80BD0C6C  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 80BD0C70  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80BD0C74  40 82 00 9C */	bne lbl_80BD0D10
/* 80BD0C78  38 00 00 03 */	li r0, 3
/* 80BD0C7C  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80BD0C80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD0C84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD0C88  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80BD0C8C  7C 00 07 74 */	extsb r0, r0
/* 80BD0C90  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80BD0C94  7C 63 02 14 */	add r3, r3, r0
/* 80BD0C98  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 80BD0C9C  C0 1F 05 CC */	lfs f0, 0x5cc(r31)
/* 80BD0CA0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BD0CA4  C0 1F 05 D0 */	lfs f0, 0x5d0(r31)
/* 80BD0CA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BD0CAC  C0 1F 05 D4 */	lfs f0, 0x5d4(r31)
/* 80BD0CB0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BD0CB4  C0 1F 05 C0 */	lfs f0, 0x5c0(r31)
/* 80BD0CB8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BD0CBC  C0 1F 05 C4 */	lfs f0, 0x5c4(r31)
/* 80BD0CC0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD0CC4  C0 1F 05 C8 */	lfs f0, 0x5c8(r31)
/* 80BD0CC8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BD0CCC  38 7E 02 48 */	addi r3, r30, 0x248
/* 80BD0CD0  38 81 00 20 */	addi r4, r1, 0x20
/* 80BD0CD4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80BD0CD8  4B 5A FF 40 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80BD0CDC  38 7E 02 48 */	addi r3, r30, 0x248
/* 80BD0CE0  4B 59 07 CC */	b Start__9dCamera_cFv
/* 80BD0CE4  38 7E 02 48 */	addi r3, r30, 0x248
/* 80BD0CE8  38 80 00 00 */	li r4, 0
/* 80BD0CEC  4B 59 23 20 */	b SetTrimSize__9dCamera_cFl
/* 80BD0CF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD0CF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD0CF8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80BD0CFC  4B 47 17 6C */	b reset__14dEvt_control_cFv
/* 80BD0D00  7F E3 FB 78 */	mr r3, r31
/* 80BD0D04  4B FF FE 79 */	bl SetOpen__14daObjCRVGATE_cFv
/* 80BD0D08  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80BD0D0C  4B FF FE 71 */	bl SetOpen__14daObjCRVGATE_cFv
lbl_80BD0D10:
/* 80BD0D10  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BD0D14  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BD0D18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BD0D1C  7C 08 03 A6 */	mtlr r0
/* 80BD0D20  38 21 00 40 */	addi r1, r1, 0x40
/* 80BD0D24  4E 80 00 20 */	blr 
