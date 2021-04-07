lbl_80AAF8E4:
/* 80AAF8E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AAF8E8  7C 08 02 A6 */	mflr r0
/* 80AAF8EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AAF8F0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80AAF8F4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80AAF8F8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80AAF8FC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80AAF900  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AAF904  7C 7F 1B 78 */	mr r31, r3
/* 80AAF908  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AAF90C  28 00 00 00 */	cmplwi r0, 0
/* 80AAF910  40 82 01 00 */	bne lbl_80AAFA10
/* 80AAF914  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80AAF918  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80AAF91C  38 A0 00 1F */	li r5, 0x1f
/* 80AAF920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AAF924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AAF928  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80AAF92C  28 00 00 00 */	cmplwi r0, 0
/* 80AAF930  41 82 00 10 */	beq lbl_80AAF940
/* 80AAF934  38 80 00 00 */	li r4, 0
/* 80AAF938  38 A0 00 00 */	li r5, 0
/* 80AAF93C  48 00 00 30 */	b lbl_80AAF96C
lbl_80AAF940:
/* 80AAF940  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AAF944  28 00 00 00 */	cmplwi r0, 0
/* 80AAF948  41 82 00 10 */	beq lbl_80AAF958
/* 80AAF94C  38 80 00 00 */	li r4, 0
/* 80AAF950  38 A0 00 00 */	li r5, 0
/* 80AAF954  48 00 00 18 */	b lbl_80AAF96C
lbl_80AAF958:
/* 80AAF958  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AAF95C  2C 00 00 00 */	cmpwi r0, 0
/* 80AAF960  41 82 00 0C */	beq lbl_80AAF96C
/* 80AAF964  38 80 00 00 */	li r4, 0
/* 80AAF968  38 A0 00 00 */	li r5, 0
lbl_80AAF96C:
/* 80AAF96C  38 00 00 79 */	li r0, 0x79
/* 80AAF970  90 1F 0E 74 */	stw r0, 0xe74(r31)
/* 80AAF974  90 9F 0E 70 */	stw r4, 0xe70(r31)
/* 80AAF978  90 BF 0E 60 */	stw r5, 0xe60(r31)
/* 80AAF97C  80 1F 0E E4 */	lwz r0, 0xee4(r31)
/* 80AAF980  60 00 00 04 */	ori r0, r0, 4
/* 80AAF984  90 1F 0E E4 */	stw r0, 0xee4(r31)
/* 80AAF988  3C 60 80 AB */	lis r3, lit_4204@ha /* 0x80AB20B8@ha */
/* 80AAF98C  C0 03 20 B8 */	lfs f0, lit_4204@l(r3)  /* 0x80AB20B8@l */
/* 80AAF990  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AAF994  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AAF998  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AAF99C  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80AAF9A0  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80AAF9A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AAF9A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AAF9AC  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80AAF9B0  4B 55 CA 2D */	bl mDoMtx_YrotS__FPA4_fs
/* 80AAF9B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AAF9B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AAF9BC  38 81 00 08 */	addi r4, r1, 8
/* 80AAF9C0  7C 85 23 78 */	mr r5, r4
/* 80AAF9C4  4B 89 73 A9 */	bl PSMTXMultVec
/* 80AAF9C8  38 61 00 08 */	addi r3, r1, 8
/* 80AAF9CC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80AAF9D0  7C 65 1B 78 */	mr r5, r3
/* 80AAF9D4  4B 89 76 BD */	bl PSVECAdd
/* 80AAF9D8  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80AAF9DC  FC 20 F8 90 */	fmr f1, f31
/* 80AAF9E0  4B 7B F8 19 */	bl SetH__8cM3dGCylFf
/* 80AAF9E4  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80AAF9E8  FC 20 F0 90 */	fmr f1, f30
/* 80AAF9EC  4B 7B F8 15 */	bl SetR__8cM3dGCylFf
/* 80AAF9F0  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80AAF9F4  38 81 00 08 */	addi r4, r1, 8
/* 80AAF9F8  4B 7B F7 E5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80AAF9FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AAFA00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AAFA04  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AAFA08  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80AAFA0C  4B 7B 51 9D */	bl Set__4cCcSFP8cCcD_Obj
lbl_80AAFA10:
/* 80AAFA10  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80AAFA14  81 9F 0E 84 */	lwz r12, 0xe84(r31)
/* 80AAFA18  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80AAFA1C  7D 89 03 A6 */	mtctr r12
/* 80AAFA20  4E 80 04 21 */	bctrl 
/* 80AAFA24  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80AAFA28  81 9F 0E 84 */	lwz r12, 0xe84(r31)
/* 80AAFA2C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AAFA30  7D 89 03 A6 */	mtctr r12
/* 80AAFA34  4E 80 04 21 */	bctrl 
/* 80AAFA38  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80AAFA3C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80AAFA40  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80AAFA44  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80AAFA48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AAFA4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AAFA50  7C 08 03 A6 */	mtlr r0
/* 80AAFA54  38 21 00 40 */	addi r1, r1, 0x40
/* 80AAFA58  4E 80 00 20 */	blr 
