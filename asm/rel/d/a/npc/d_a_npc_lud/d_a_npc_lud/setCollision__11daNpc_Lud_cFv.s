lbl_80A6C8EC:
/* 80A6C8EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A6C8F0  7C 08 02 A6 */	mflr r0
/* 80A6C8F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A6C8F8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A6C8FC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A6C900  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80A6C904  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80A6C908  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A6C90C  7C 7F 1B 78 */	mr r31, r3
/* 80A6C910  3C 60 80 A7 */	lis r3, m__17daNpc_Lud_Param_c@ha
/* 80A6C914  38 83 FD 7C */	addi r4, r3, m__17daNpc_Lud_Param_c@l
/* 80A6C918  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80A6C91C  28 00 00 00 */	cmplwi r0, 0
/* 80A6C920  40 82 01 30 */	bne lbl_80A6CA50
/* 80A6C924  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80A6C928  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80A6C92C  38 A0 00 1F */	li r5, 0x1f
/* 80A6C930  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A6C934  28 00 00 00 */	cmplwi r0, 0
/* 80A6C938  41 82 00 10 */	beq lbl_80A6C948
/* 80A6C93C  38 60 00 00 */	li r3, 0
/* 80A6C940  38 A0 00 00 */	li r5, 0
/* 80A6C944  48 00 00 18 */	b lbl_80A6C95C
lbl_80A6C948:
/* 80A6C948  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A6C94C  2C 00 00 00 */	cmpwi r0, 0
/* 80A6C950  41 82 00 0C */	beq lbl_80A6C95C
/* 80A6C954  38 60 00 00 */	li r3, 0
/* 80A6C958  38 A0 00 00 */	li r5, 0
lbl_80A6C95C:
/* 80A6C95C  38 00 00 79 */	li r0, 0x79
/* 80A6C960  90 1F 0E 7C */	stw r0, 0xe7c(r31)
/* 80A6C964  90 7F 0E 78 */	stw r3, 0xe78(r31)
/* 80A6C968  90 BF 0E 68 */	stw r5, 0xe68(r31)
/* 80A6C96C  80 1F 0E EC */	lwz r0, 0xeec(r31)
/* 80A6C970  60 00 00 04 */	ori r0, r0, 4
/* 80A6C974  90 1F 0E EC */	stw r0, 0xeec(r31)
/* 80A6C978  C0 24 00 C8 */	lfs f1, 0xc8(r4)
/* 80A6C97C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A6C980  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A6C984  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A6C988  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80A6C98C  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80A6C990  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6C994  28 00 00 01 */	cmplwi r0, 1
/* 80A6C998  40 82 00 1C */	bne lbl_80A6C9B4
/* 80A6C99C  C0 04 01 20 */	lfs f0, 0x120(r4)
/* 80A6C9A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A6C9A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A6C9A8  C0 04 01 24 */	lfs f0, 0x124(r4)
/* 80A6C9AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A6C9B0  48 00 00 34 */	b lbl_80A6C9E4
lbl_80A6C9B4:
/* 80A6C9B4  28 00 00 04 */	cmplwi r0, 4
/* 80A6C9B8  41 82 00 14 */	beq lbl_80A6C9CC
/* 80A6C9BC  28 00 00 05 */	cmplwi r0, 5
/* 80A6C9C0  41 82 00 0C */	beq lbl_80A6C9CC
/* 80A6C9C4  28 00 00 06 */	cmplwi r0, 6
/* 80A6C9C8  40 82 00 1C */	bne lbl_80A6C9E4
lbl_80A6C9CC:
/* 80A6C9CC  C0 04 00 F4 */	lfs f0, 0xf4(r4)
/* 80A6C9D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A6C9D4  C0 04 00 C8 */	lfs f0, 0xc8(r4)
/* 80A6C9D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A6C9DC  C0 04 01 28 */	lfs f0, 0x128(r4)
/* 80A6C9E0  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80A6C9E4:
/* 80A6C9E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A6C9E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A6C9EC  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80A6C9F0  4B 59 F9 EC */	b mDoMtx_YrotS__FPA4_fs
/* 80A6C9F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A6C9F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A6C9FC  38 81 00 08 */	addi r4, r1, 8
/* 80A6CA00  7C 85 23 78 */	mr r5, r4
/* 80A6CA04  4B 8D A3 68 */	b PSMTXMultVec
/* 80A6CA08  38 61 00 08 */	addi r3, r1, 8
/* 80A6CA0C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A6CA10  7C 65 1B 78 */	mr r5, r3
/* 80A6CA14  4B 8D A6 7C */	b PSVECAdd
/* 80A6CA18  38 7F 0F 74 */	addi r3, r31, 0xf74
/* 80A6CA1C  FC 20 F8 90 */	fmr f1, f31
/* 80A6CA20  4B 80 27 D8 */	b SetH__8cM3dGCylFf
/* 80A6CA24  38 7F 0F 74 */	addi r3, r31, 0xf74
/* 80A6CA28  FC 20 F0 90 */	fmr f1, f30
/* 80A6CA2C  4B 80 27 D4 */	b SetR__8cM3dGCylFf
/* 80A6CA30  38 7F 0F 74 */	addi r3, r31, 0xf74
/* 80A6CA34  38 81 00 08 */	addi r4, r1, 8
/* 80A6CA38  4B 80 27 A4 */	b SetC__8cM3dGCylFRC4cXyz
/* 80A6CA3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6CA40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A6CA44  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A6CA48  38 9F 0E 50 */	addi r4, r31, 0xe50
/* 80A6CA4C  4B 7F 81 5C */	b Set__4cCcSFP8cCcD_Obj
lbl_80A6CA50:
/* 80A6CA50  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80A6CA54  81 9F 0E 8C */	lwz r12, 0xe8c(r31)
/* 80A6CA58  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A6CA5C  7D 89 03 A6 */	mtctr r12
/* 80A6CA60  4E 80 04 21 */	bctrl 
/* 80A6CA64  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80A6CA68  81 9F 0E 8C */	lwz r12, 0xe8c(r31)
/* 80A6CA6C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A6CA70  7D 89 03 A6 */	mtctr r12
/* 80A6CA74  4E 80 04 21 */	bctrl 
/* 80A6CA78  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A6CA7C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A6CA80  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80A6CA84  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80A6CA88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A6CA8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A6CA90  7C 08 03 A6 */	mtlr r0
/* 80A6CA94  38 21 00 40 */	addi r1, r1, 0x40
/* 80A6CA98  4E 80 00 20 */	blr 
