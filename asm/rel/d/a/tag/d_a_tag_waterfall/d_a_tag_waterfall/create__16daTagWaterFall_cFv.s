lbl_80D64B20:
/* 80D64B20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D64B24  7C 08 02 A6 */	mflr r0
/* 80D64B28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D64B2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D64B30  7C 7F 1B 78 */	mr r31, r3
/* 80D64B34  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D64B38  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D64B3C  40 82 00 1C */	bne lbl_80D64B58
/* 80D64B40  28 1F 00 00 */	cmplwi r31, 0
/* 80D64B44  41 82 00 08 */	beq lbl_80D64B4C
/* 80D64B48  4B 2B 40 1D */	bl __ct__10fopAc_ac_cFv
lbl_80D64B4C:
/* 80D64B4C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D64B50  60 00 00 08 */	ori r0, r0, 8
/* 80D64B54  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D64B58:
/* 80D64B58  3C 60 80 D6 */	lis r3, data_80D64E00@ha /* 0x80D64E00@ha */
/* 80D64B5C  8C 03 4E 00 */	lbzu r0, data_80D64E00@l(r3)  /* 0x80D64E00@l */
/* 80D64B60  28 00 00 00 */	cmplwi r0, 0
/* 80D64B64  40 82 00 20 */	bne lbl_80D64B84
/* 80D64B68  38 00 00 01 */	li r0, 1
/* 80D64B6C  98 03 00 00 */	stb r0, 0(r3)
/* 80D64B70  98 1F 05 83 */	stb r0, 0x583(r31)
/* 80D64B74  38 00 FF FF */	li r0, -1
/* 80D64B78  3C 60 80 D6 */	lis r3, l_HIO@ha /* 0x80D64E10@ha */
/* 80D64B7C  38 63 4E 10 */	addi r3, r3, l_HIO@l /* 0x80D64E10@l */
/* 80D64B80  98 03 00 04 */	stb r0, 4(r3)
lbl_80D64B84:
/* 80D64B84  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D64B88  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80D64B8C  3C 60 80 D6 */	lis r3, lit_3959@ha /* 0x80D64D84@ha */
/* 80D64B90  C8 23 4D 84 */	lfd f1, lit_3959@l(r3)  /* 0x80D64D84@l */
/* 80D64B94  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D64B98  3C 00 43 30 */	lis r0, 0x4330
/* 80D64B9C  90 01 00 08 */	stw r0, 8(r1)
/* 80D64BA0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D64BA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D64BA8  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 80D64BAC  C0 3F 05 68 */	lfs f1, 0x568(r31)
/* 80D64BB0  3C 60 80 D6 */	lis r3, lit_3758@ha /* 0x80D64D74@ha */
/* 80D64BB4  C0 03 4D 74 */	lfs f0, lit_3758@l(r3)  /* 0x80D64D74@l */
/* 80D64BB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D64BBC  40 80 00 08 */	bge lbl_80D64BC4
/* 80D64BC0  D0 1F 05 6C */	stfs f0, 0x56c(r31)
lbl_80D64BC4:
/* 80D64BC4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D64BC8  54 00 84 3E */	srwi r0, r0, 0x10
/* 80D64BCC  3C 60 80 D6 */	lis r3, lit_3959@ha /* 0x80D64D84@ha */
/* 80D64BD0  C8 23 4D 84 */	lfd f1, lit_3959@l(r3)  /* 0x80D64D84@l */
/* 80D64BD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D64BD8  3C 00 43 30 */	lis r0, 0x4330
/* 80D64BDC  90 01 00 08 */	stw r0, 8(r1)
/* 80D64BE0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D64BE4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D64BE8  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 80D64BEC  C0 3F 05 70 */	lfs f1, 0x570(r31)
/* 80D64BF0  3C 60 80 D6 */	lis r3, lit_3758@ha /* 0x80D64D74@ha */
/* 80D64BF4  C0 03 4D 74 */	lfs f0, lit_3758@l(r3)  /* 0x80D64D74@l */
/* 80D64BF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D64BFC  40 80 00 08 */	bge lbl_80D64C04
/* 80D64C00  D0 1F 05 70 */	stfs f0, 0x570(r31)
lbl_80D64C04:
/* 80D64C04  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80D64C08  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80D64C0C  3C 60 80 D6 */	lis r3, lit_3960@ha /* 0x80D64D8C@ha */
/* 80D64C10  C8 23 4D 8C */	lfd f1, lit_3960@l(r3)  /* 0x80D64D8C@l */
/* 80D64C14  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D64C18  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D64C1C  3C 00 43 30 */	lis r0, 0x4330
/* 80D64C20  90 01 00 08 */	stw r0, 8(r1)
/* 80D64C24  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D64C28  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D64C2C  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 80D64C30  C0 3F 05 6C */	lfs f1, 0x56c(r31)
/* 80D64C34  3C 60 80 D6 */	lis r3, lit_3758@ha /* 0x80D64D74@ha */
/* 80D64C38  C0 03 4D 74 */	lfs f0, lit_3758@l(r3)  /* 0x80D64D74@l */
/* 80D64C3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D64C40  4C 40 13 82 */	cror 2, 0, 2
/* 80D64C44  40 82 00 0C */	bne lbl_80D64C50
/* 80D64C48  C0 1F 05 68 */	lfs f0, 0x568(r31)
/* 80D64C4C  D0 1F 05 6C */	stfs f0, 0x56c(r31)
lbl_80D64C50:
/* 80D64C50  38 00 00 00 */	li r0, 0
/* 80D64C54  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80D64C58  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80D64C5C  3C 60 80 D6 */	lis r3, m_master_id@ha /* 0x80D64D94@ha */
/* 80D64C60  38 63 4D 94 */	addi r3, r3, m_master_id@l /* 0x80D64D94@l */
/* 80D64C64  80 63 00 00 */	lwz r3, 0(r3)
/* 80D64C68  3C 03 00 01 */	addis r0, r3, 1
/* 80D64C6C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D64C70  40 82 00 34 */	bne lbl_80D64CA4
/* 80D64C74  28 1F 00 00 */	cmplwi r31, 0
/* 80D64C78  41 82 00 0C */	beq lbl_80D64C84
/* 80D64C7C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80D64C80  48 00 00 08 */	b lbl_80D64C88
lbl_80D64C84:
/* 80D64C84  38 00 FF FF */	li r0, -1
lbl_80D64C88:
/* 80D64C88  3C 60 80 D6 */	lis r3, m_master_id@ha /* 0x80D64D94@ha */
/* 80D64C8C  90 03 4D 94 */	stw r0, m_master_id@l(r3)  /* 0x80D64D94@l */
/* 80D64C90  3C 60 80 D6 */	lis r3, lit_3758@ha /* 0x80D64D74@ha */
/* 80D64C94  C0 03 4D 74 */	lfs f0, lit_3758@l(r3)  /* 0x80D64D74@l */
/* 80D64C98  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 80D64C9C  38 00 00 1E */	li r0, 0x1e
/* 80D64CA0  98 1F 05 81 */	stb r0, 0x581(r31)
lbl_80D64CA4:
/* 80D64CA4  38 60 00 04 */	li r3, 4
/* 80D64CA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D64CAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D64CB0  7C 08 03 A6 */	mtlr r0
/* 80D64CB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D64CB8  4E 80 00 20 */	blr 
