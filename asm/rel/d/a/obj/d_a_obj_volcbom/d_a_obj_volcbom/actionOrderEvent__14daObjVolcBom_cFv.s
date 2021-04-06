lbl_80D25B04:
/* 80D25B04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D25B08  7C 08 02 A6 */	mflr r0
/* 80D25B0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D25B10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D25B14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D25B18  7C 7F 1B 78 */	mr r31, r3
/* 80D25B1C  3C 80 80 D2 */	lis r4, l_midna_offset@ha /* 0x80D26B5C@ha */
/* 80D25B20  3B C4 6B 5C */	addi r30, r4, l_midna_offset@l /* 0x80D26B5C@l */
/* 80D25B24  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80D25B28  38 84 10 18 */	addi r4, r4, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 80D25B2C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D25B30  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80D25B34  28 00 00 01 */	cmplwi r0, 1
/* 80D25B38  40 82 01 4C */	bne lbl_80D25C84
/* 80D25B3C  C0 1F 09 98 */	lfs f0, 0x998(r31)
/* 80D25B40  D0 04 09 AC */	stfs f0, 0x9ac(r4)
/* 80D25B44  C0 1F 09 9C */	lfs f0, 0x99c(r31)
/* 80D25B48  D0 04 09 B0 */	stfs f0, 0x9b0(r4)
/* 80D25B4C  C0 1F 09 A0 */	lfs f0, 0x9a0(r31)
/* 80D25B50  D0 04 09 B4 */	stfs f0, 0x9b4(r4)
/* 80D25B54  80 04 08 90 */	lwz r0, 0x890(r4)
/* 80D25B58  64 00 08 00 */	oris r0, r0, 0x800
/* 80D25B5C  60 00 04 00 */	ori r0, r0, 0x400
/* 80D25B60  90 04 08 90 */	stw r0, 0x890(r4)
/* 80D25B64  38 64 04 D0 */	addi r3, r4, 0x4d0
/* 80D25B68  38 9F 09 98 */	addi r4, r31, 0x998
/* 80D25B6C  4B 62 18 31 */	bl PSVECSquareDistance
/* 80D25B70  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80D25B74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D25B78  40 81 00 58 */	ble lbl_80D25BD0
/* 80D25B7C  FC 00 08 34 */	frsqrte f0, f1
/* 80D25B80  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 80D25B84  FC 44 00 32 */	fmul f2, f4, f0
/* 80D25B88  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 80D25B8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D25B90  FC 01 00 32 */	fmul f0, f1, f0
/* 80D25B94  FC 03 00 28 */	fsub f0, f3, f0
/* 80D25B98  FC 02 00 32 */	fmul f0, f2, f0
/* 80D25B9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D25BA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D25BA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D25BA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D25BAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D25BB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D25BB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D25BB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D25BBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D25BC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D25BC4  FC 21 00 32 */	fmul f1, f1, f0
/* 80D25BC8  FC 20 08 18 */	frsp f1, f1
/* 80D25BCC  48 00 00 88 */	b lbl_80D25C54
lbl_80D25BD0:
/* 80D25BD0  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 80D25BD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D25BD8  40 80 00 10 */	bge lbl_80D25BE8
/* 80D25BDC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D25BE0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D25BE4  48 00 00 70 */	b lbl_80D25C54
lbl_80D25BE8:
/* 80D25BE8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D25BEC  80 81 00 08 */	lwz r4, 8(r1)
/* 80D25BF0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D25BF4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D25BF8  7C 03 00 00 */	cmpw r3, r0
/* 80D25BFC  41 82 00 14 */	beq lbl_80D25C10
/* 80D25C00  40 80 00 40 */	bge lbl_80D25C40
/* 80D25C04  2C 03 00 00 */	cmpwi r3, 0
/* 80D25C08  41 82 00 20 */	beq lbl_80D25C28
/* 80D25C0C  48 00 00 34 */	b lbl_80D25C40
lbl_80D25C10:
/* 80D25C10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D25C14  41 82 00 0C */	beq lbl_80D25C20
/* 80D25C18  38 00 00 01 */	li r0, 1
/* 80D25C1C  48 00 00 28 */	b lbl_80D25C44
lbl_80D25C20:
/* 80D25C20  38 00 00 02 */	li r0, 2
/* 80D25C24  48 00 00 20 */	b lbl_80D25C44
lbl_80D25C28:
/* 80D25C28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D25C2C  41 82 00 0C */	beq lbl_80D25C38
/* 80D25C30  38 00 00 05 */	li r0, 5
/* 80D25C34  48 00 00 10 */	b lbl_80D25C44
lbl_80D25C38:
/* 80D25C38  38 00 00 03 */	li r0, 3
/* 80D25C3C  48 00 00 08 */	b lbl_80D25C44
lbl_80D25C40:
/* 80D25C40  38 00 00 04 */	li r0, 4
lbl_80D25C44:
/* 80D25C44  2C 00 00 01 */	cmpwi r0, 1
/* 80D25C48  40 82 00 0C */	bne lbl_80D25C54
/* 80D25C4C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D25C50  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D25C54:
/* 80D25C54  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80D25C58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D25C5C  40 80 00 2C */	bge lbl_80D25C88
/* 80D25C60  38 00 00 02 */	li r0, 2
/* 80D25C64  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 80D25C68  38 7F 09 A4 */	addi r3, r31, 0x9a4
/* 80D25C6C  7F E4 FB 78 */	mr r4, r31
/* 80D25C70  A0 BF 09 64 */	lhz r5, 0x964(r31)
/* 80D25C74  38 C0 00 00 */	li r6, 0
/* 80D25C78  38 E0 00 00 */	li r7, 0
/* 80D25C7C  4B 52 43 15 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D25C80  48 00 00 08 */	b lbl_80D25C88
lbl_80D25C84:
/* 80D25C84  4B FF FC 91 */	bl orderZHintEvent__14daObjVolcBom_cFv
lbl_80D25C88:
/* 80D25C88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D25C8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D25C90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D25C94  7C 08 03 A6 */	mtlr r0
/* 80D25C98  38 21 00 20 */	addi r1, r1, 0x20
/* 80D25C9C  4E 80 00 20 */	blr 
