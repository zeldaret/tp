lbl_805E2F44:
/* 805E2F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E2F48  7C 08 02 A6 */	mflr r0
/* 805E2F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E2F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E2F54  7C 7F 1B 78 */	mr r31, r3
/* 805E2F58  88 03 05 C6 */	lbz r0, 0x5c6(r3)
/* 805E2F5C  2C 00 00 01 */	cmpwi r0, 1
/* 805E2F60  41 82 00 30 */	beq lbl_805E2F90
/* 805E2F64  40 80 00 10 */	bge lbl_805E2F74
/* 805E2F68  2C 00 00 00 */	cmpwi r0, 0
/* 805E2F6C  40 80 00 14 */	bge lbl_805E2F80
/* 805E2F70  48 00 00 3C */	b lbl_805E2FAC
lbl_805E2F74:
/* 805E2F74  2C 00 00 03 */	cmpwi r0, 3
/* 805E2F78  40 80 00 34 */	bge lbl_805E2FAC
/* 805E2F7C  48 00 00 24 */	b lbl_805E2FA0
lbl_805E2F80:
/* 805E2F80  4B FF D3 1D */	bl St_CamAction__8daB_GG_cFv
/* 805E2F84  7F E3 FB 78 */	mr r3, r31
/* 805E2F88  4B FF DF A5 */	bl St_DemoAction__8daB_GG_cFv
/* 805E2F8C  48 00 00 20 */	b lbl_805E2FAC
lbl_805E2F90:
/* 805E2F90  4B FF E9 59 */	bl Md_CamAction__8daB_GG_cFv
/* 805E2F94  7F E3 FB 78 */	mr r3, r31
/* 805E2F98  4B FF EC 91 */	bl Md_DemoAction__8daB_GG_cFv
/* 805E2F9C  48 00 00 10 */	b lbl_805E2FAC
lbl_805E2FA0:
/* 805E2FA0  4B FF F9 D5 */	bl Gn_DemoAction__8daB_GG_cFv
/* 805E2FA4  7F E3 FB 78 */	mr r3, r31
/* 805E2FA8  4B FF F4 41 */	bl Gn_CamAction__8daB_GG_cFv
lbl_805E2FAC:
/* 805E2FAC  88 1F 05 C6 */	lbz r0, 0x5c6(r31)
/* 805E2FB0  28 00 00 01 */	cmplwi r0, 1
/* 805E2FB4  40 82 00 10 */	bne lbl_805E2FC4
/* 805E2FB8  88 1F 05 C7 */	lbz r0, 0x5c7(r31)
/* 805E2FBC  28 00 00 00 */	cmplwi r0, 0
/* 805E2FC0  41 82 00 20 */	beq lbl_805E2FE0
lbl_805E2FC4:
/* 805E2FC4  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 805E2FC8  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 805E2FCC  3C 80 80 5F */	lis r4, lit_5018@ha /* 0x805ED218@ha */
/* 805E2FD0  C0 44 D2 18 */	lfs f2, lit_5018@l(r4)  /* 0x805ED218@l */
/* 805E2FD4  3C 80 80 5F */	lis r4, lit_3911@ha /* 0x805ED060@ha */
/* 805E2FD8  C0 64 D0 60 */	lfs f3, lit_3911@l(r4)  /* 0x805ED060@l */
/* 805E2FDC  4B C8 CA 61 */	bl cLib_addCalc2__FPffff
lbl_805E2FE0:
/* 805E2FE0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 805E2FE4  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 805E2FE8  3C 80 80 5F */	lis r4, lit_5018@ha /* 0x805ED218@ha */
/* 805E2FEC  C0 44 D2 18 */	lfs f2, lit_5018@l(r4)  /* 0x805ED218@l */
/* 805E2FF0  3C 80 80 5F */	lis r4, lit_3911@ha /* 0x805ED060@ha */
/* 805E2FF4  C0 64 D0 60 */	lfs f3, lit_3911@l(r4)  /* 0x805ED060@l */
/* 805E2FF8  4B C8 CA 45 */	bl cLib_addCalc2__FPffff
/* 805E2FFC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 805E3000  A8 9F 05 BA */	lha r4, 0x5ba(r31)
/* 805E3004  38 A0 00 10 */	li r5, 0x10
/* 805E3008  38 C0 10 00 */	li r6, 0x1000
/* 805E300C  4B C8 D5 FD */	bl cLib_addCalcAngleS2__FPssss
/* 805E3010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E3014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E3018  7C 08 03 A6 */	mtlr r0
/* 805E301C  38 21 00 10 */	addi r1, r1, 0x10
/* 805E3020  4E 80 00 20 */	blr 
