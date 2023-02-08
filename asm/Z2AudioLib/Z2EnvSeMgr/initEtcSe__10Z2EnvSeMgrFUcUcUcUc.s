lbl_802C8A90:
/* 802C8A90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C8A94  7C 08 02 A6 */	mflr r0
/* 802C8A98  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C8A9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C8AA0  7C 7F 1B 78 */	mr r31, r3
/* 802C8AA4  98 83 02 14 */	stb r4, 0x214(r3)
/* 802C8AA8  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802C8AAC  28 00 00 64 */	cmplwi r0, 0x64
/* 802C8AB0  41 80 00 10 */	blt lbl_802C8AC0
/* 802C8AB4  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C8AB8  D0 1F 02 18 */	stfs f0, 0x218(r31)
/* 802C8ABC  48 00 00 28 */	b lbl_802C8AE4
lbl_802C8AC0:
/* 802C8AC0  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C8AC4  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C8AC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C8ACC  3C 00 43 30 */	lis r0, 0x4330
/* 802C8AD0  90 01 00 08 */	stw r0, 8(r1)
/* 802C8AD4  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C8AD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C8ADC  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C8AE0  D0 1F 02 18 */	stfs f0, 0x218(r31)
lbl_802C8AE4:
/* 802C8AE4  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 802C8AE8  28 00 00 FF */	cmplwi r0, 0xff
/* 802C8AEC  40 82 00 10 */	bne lbl_802C8AFC
/* 802C8AF0  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C8AF4  D0 1F 02 1C */	stfs f0, 0x21c(r31)
/* 802C8AF8  48 00 00 28 */	b lbl_802C8B20
lbl_802C8AFC:
/* 802C8AFC  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C8B00  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C8B04  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C8B08  3C 00 43 30 */	lis r0, 0x4330
/* 802C8B0C  90 01 00 08 */	stw r0, 8(r1)
/* 802C8B10  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C8B14  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C8B18  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C8B1C  D0 1F 02 1C */	stfs f0, 0x21c(r31)
lbl_802C8B20:
/* 802C8B20  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802C8B24  28 00 00 FF */	cmplwi r0, 0xff
/* 802C8B28  40 82 00 10 */	bne lbl_802C8B38
/* 802C8B2C  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C8B30  D0 1F 02 20 */	stfs f0, 0x220(r31)
/* 802C8B34  48 00 00 28 */	b lbl_802C8B5C
lbl_802C8B38:
/* 802C8B38  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C8B3C  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C8B40  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C8B44  3C 00 43 30 */	lis r0, 0x4330
/* 802C8B48  90 01 00 08 */	stw r0, 8(r1)
/* 802C8B4C  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C8B50  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C8B54  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C8B58  D0 1F 02 20 */	stfs f0, 0x220(r31)
lbl_802C8B5C:
/* 802C8B5C  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 802C8B60  38 03 FF F0 */	addi r0, r3, -16
/* 802C8B64  28 00 00 0F */	cmplwi r0, 0xf
/* 802C8B68  41 81 00 A8 */	bgt lbl_802C8C10
/* 802C8B6C  3C 60 80 3D */	lis r3, lit_4734@ha /* 0x803CBAD0@ha */
/* 802C8B70  38 63 BA D0 */	addi r3, r3, lit_4734@l /* 0x803CBAD0@l */
/* 802C8B74  54 00 10 3A */	slwi r0, r0, 2
/* 802C8B78  7C 03 00 2E */	lwzx r0, r3, r0
/* 802C8B7C  7C 09 03 A6 */	mtctr r0
/* 802C8B80  4E 80 04 20 */	bctr 
/* 802C8B84  C0 22 C3 70 */	lfs f1, lit_3704(r2)
/* 802C8B88  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 802C8B8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C8B90  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 802C8B94  48 00 00 7C */	b lbl_802C8C10
/* 802C8B98  C0 22 C3 BC */	lfs f1, lit_3766(r2)
/* 802C8B9C  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 802C8BA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C8BA4  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 802C8BA8  48 00 00 68 */	b lbl_802C8C10
/* 802C8BAC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802C8BB0  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C8BB4  C0 42 C3 44 */	lfs f2, lit_3502(r2)
/* 802C8BB8  38 80 00 00 */	li r4, 0
/* 802C8BBC  38 A0 00 01 */	li r5, 1
/* 802C8BC0  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C8BC4  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C8BC8  4B FF D3 B5 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C8BCC  C0 22 C3 70 */	lfs f1, lit_3704(r2)
/* 802C8BD0  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 802C8BD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C8BD8  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 802C8BDC  48 00 00 34 */	b lbl_802C8C10
/* 802C8BE0  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 802C8BE4  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 802C8BE8  48 00 00 28 */	b lbl_802C8C10
/* 802C8BEC  C0 22 C3 70 */	lfs f1, lit_3704(r2)
/* 802C8BF0  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 802C8BF4  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C8BF8  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 802C8BFC  48 00 00 14 */	b lbl_802C8C10
/* 802C8C00  C0 22 C4 40 */	lfs f1, lit_4732(r2)
/* 802C8C04  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 802C8C08  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C8C0C  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
lbl_802C8C10:
/* 802C8C10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C8C14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C8C18  7C 08 03 A6 */	mtlr r0
/* 802C8C1C  38 21 00 20 */	addi r1, r1, 0x20
/* 802C8C20  4E 80 00 20 */	blr 
