lbl_802B2A88:
/* 802B2A88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B2A8C  7C 08 02 A6 */	mflr r0
/* 802B2A90  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B2A94  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802B2A98  7C 7F 1B 78 */	mr r31, r3
/* 802B2A9C  2C 04 00 02 */	cmpwi r4, 2
/* 802B2AA0  41 82 01 38 */	beq lbl_802B2BD8
/* 802B2AA4  40 80 00 14 */	bge lbl_802B2AB8
/* 802B2AA8  2C 04 00 00 */	cmpwi r4, 0
/* 802B2AAC  41 82 00 18 */	beq lbl_802B2AC4
/* 802B2AB0  40 80 00 B8 */	bge lbl_802B2B68
/* 802B2AB4  48 00 01 DC */	b lbl_802B2C90
lbl_802B2AB8:
/* 802B2AB8  2C 04 00 04 */	cmpwi r4, 4
/* 802B2ABC  41 82 01 68 */	beq lbl_802B2C24
/* 802B2AC0  48 00 01 D0 */	b lbl_802B2C90
lbl_802B2AC4:
/* 802B2AC4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802B2AC8  28 03 00 00 */	cmplwi r3, 0
/* 802B2ACC  41 82 00 10 */	beq lbl_802B2ADC
/* 802B2AD0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B2AD4  90 61 00 10 */	stw r3, 0x10(r1)
/* 802B2AD8  48 00 00 08 */	b lbl_802B2AE0
lbl_802B2ADC:
/* 802B2ADC  38 60 FF FF */	li r3, -1
lbl_802B2AE0:
/* 802B2AE0  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B2AE4  28 00 00 49 */	cmplwi r0, 0x49
/* 802B2AE8  40 82 00 0C */	bne lbl_802B2AF4
/* 802B2AEC  7F E3 FB 78 */	mr r3, r31
/* 802B2AF0  4B FF CD 95 */	bl subBgmStop__8Z2SeqMgrFv
lbl_802B2AF4:
/* 802B2AF4  88 6D 82 E2 */	lbz r3, struct_80450862+0x0(r13)
/* 802B2AF8  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B2AFC  D0 7F 00 34 */	stfs f3, 0x34(r31)
/* 802B2B00  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B2B04  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 802B2B08  38 00 00 00 */	li r0, 0
/* 802B2B0C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 802B2B10  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 802B2B14  28 03 00 00 */	cmplwi r3, 0
/* 802B2B18  41 82 00 3C */	beq lbl_802B2B54
/* 802B2B1C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 802B2B20  90 7F 00 50 */	stw r3, 0x50(r31)
/* 802B2B24  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B2B28  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 802B2B2C  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B2B30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B2B34  3C 00 43 30 */	lis r0, 0x4330
/* 802B2B38  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B2B3C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B2B40  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B2B44  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B2B48  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 802B2B4C  D0 7F 00 4C */	stfs f3, 0x4c(r31)
/* 802B2B50  48 00 01 40 */	b lbl_802B2C90
lbl_802B2B54:
/* 802B2B54  D0 7F 00 44 */	stfs f3, 0x44(r31)
/* 802B2B58  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 802B2B5C  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802B2B60  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 802B2B64  48 00 01 2C */	b lbl_802B2C90
lbl_802B2B68:
/* 802B2B68  80 7F 00 04 */	lwz r3, 4(r31)
/* 802B2B6C  28 03 00 00 */	cmplwi r3, 0
/* 802B2B70  41 82 00 10 */	beq lbl_802B2B80
/* 802B2B74  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B2B78  90 61 00 0C */	stw r3, 0xc(r1)
/* 802B2B7C  48 00 00 08 */	b lbl_802B2B84
lbl_802B2B80:
/* 802B2B80  38 60 FF FF */	li r3, -1
lbl_802B2B84:
/* 802B2B84  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B2B88  28 00 00 49 */	cmplwi r0, 0x49
/* 802B2B8C  40 82 00 0C */	bne lbl_802B2B98
/* 802B2B90  7F E3 FB 78 */	mr r3, r31
/* 802B2B94  4B FF CC F1 */	bl subBgmStop__8Z2SeqMgrFv
lbl_802B2B98:
/* 802B2B98  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 802B2B9C  38 00 00 02 */	li r0, 2
/* 802B2BA0  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802B2BA4  C0 62 BF C4 */	lfs f3, lit_4731(r2)
/* 802B2BA8  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B2BAC  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 802B2BB0  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B2BB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B2BB8  3C 00 43 30 */	lis r0, 0x4330
/* 802B2BBC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B2BC0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B2BC4  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B2BC8  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B2BCC  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 802B2BD0  D0 7F 00 4C */	stfs f3, 0x4c(r31)
/* 802B2BD4  48 00 00 BC */	b lbl_802B2C90
lbl_802B2BD8:
/* 802B2BD8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000049@ha */
/* 802B2BDC  38 84 00 49 */	addi r4, r4, 0x0049 /* 0x01000049@l */
/* 802B2BE0  4B FF C8 BD */	bl subBgmStart__8Z2SeqMgrFUl
/* 802B2BE4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 802B2BE8  38 00 00 01 */	li r0, 1
/* 802B2BEC  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802B2BF0  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802B2BF4  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B2BF8  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 802B2BFC  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B2C00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B2C04  3C 00 43 30 */	lis r0, 0x4330
/* 802B2C08  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B2C0C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B2C10  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B2C14  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B2C18  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 802B2C1C  D0 7F 00 4C */	stfs f3, 0x4c(r31)
/* 802B2C20  48 00 00 70 */	b lbl_802B2C90
lbl_802B2C24:
/* 802B2C24  80 7F 00 04 */	lwz r3, 4(r31)
/* 802B2C28  28 03 00 00 */	cmplwi r3, 0
/* 802B2C2C  41 82 00 10 */	beq lbl_802B2C3C
/* 802B2C30  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B2C34  90 61 00 08 */	stw r3, 8(r1)
/* 802B2C38  48 00 00 08 */	b lbl_802B2C40
lbl_802B2C3C:
/* 802B2C3C  38 60 FF FF */	li r3, -1
lbl_802B2C40:
/* 802B2C40  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B2C44  28 00 00 49 */	cmplwi r0, 0x49
/* 802B2C48  40 82 00 0C */	bne lbl_802B2C54
/* 802B2C4C  7F E3 FB 78 */	mr r3, r31
/* 802B2C50  4B FF CC 35 */	bl subBgmStop__8Z2SeqMgrFv
lbl_802B2C54:
/* 802B2C54  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 802B2C58  38 00 00 01 */	li r0, 1
/* 802B2C5C  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802B2C60  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802B2C64  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B2C68  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 802B2C6C  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B2C70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B2C74  3C 00 43 30 */	lis r0, 0x4330
/* 802B2C78  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B2C7C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B2C80  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B2C84  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B2C88  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 802B2C8C  D0 7F 00 4C */	stfs f3, 0x4c(r31)
lbl_802B2C90:
/* 802B2C90  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802B2C94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B2C98  7C 08 03 A6 */	mtlr r0
/* 802B2C9C  38 21 00 30 */	addi r1, r1, 0x30
/* 802B2CA0  4E 80 00 20 */	blr 
