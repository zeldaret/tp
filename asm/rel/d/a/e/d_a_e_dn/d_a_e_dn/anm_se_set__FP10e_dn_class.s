lbl_804EC854:
/* 804EC854  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804EC858  7C 08 02 A6 */	mflr r0
/* 804EC85C  90 01 00 54 */	stw r0, 0x54(r1)
/* 804EC860  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804EC864  93 C1 00 48 */	stw r30, 0x48(r1)
/* 804EC868  7C 7F 1B 78 */	mr r31, r3
/* 804EC86C  80 63 05 DC */	lwz r3, 0x5dc(r3)
/* 804EC870  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804EC874  FC 00 00 1E */	fctiwz f0, f0
/* 804EC878  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804EC87C  83 C1 00 3C */	lwz r30, 0x3c(r1)
/* 804EC880  80 1F 05 E0 */	lwz r0, 0x5e0(r31)
/* 804EC884  2C 00 00 08 */	cmpwi r0, 8
/* 804EC888  40 82 00 70 */	bne lbl_804EC8F8
/* 804EC88C  2C 1E 00 23 */	cmpwi r30, 0x23
/* 804EC890  40 82 00 34 */	bne lbl_804EC8C4
/* 804EC894  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003D@ha */
/* 804EC898  38 03 00 3D */	addi r0, r3, 0x003D /* 0x0007003D@l */
/* 804EC89C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804EC8A0  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804EC8A4  38 81 00 34 */	addi r4, r1, 0x34
/* 804EC8A8  38 A0 00 00 */	li r5, 0
/* 804EC8AC  38 C0 FF FF */	li r6, -1
/* 804EC8B0  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804EC8B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804EC8B8  7D 89 03 A6 */	mtctr r12
/* 804EC8BC  4E 80 04 21 */	bctrl 
/* 804EC8C0  48 00 02 78 */	b lbl_804ECB38
lbl_804EC8C4:
/* 804EC8C4  2C 1E 00 1C */	cmpwi r30, 0x1c
/* 804EC8C8  40 82 02 70 */	bne lbl_804ECB38
/* 804EC8CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003E@ha */
/* 804EC8D0  38 03 00 3E */	addi r0, r3, 0x003E /* 0x0007003E@l */
/* 804EC8D4  90 01 00 30 */	stw r0, 0x30(r1)
/* 804EC8D8  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804EC8DC  38 81 00 30 */	addi r4, r1, 0x30
/* 804EC8E0  38 A0 FF FF */	li r5, -1
/* 804EC8E4  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804EC8E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804EC8EC  7D 89 03 A6 */	mtctr r12
/* 804EC8F0  4E 80 04 21 */	bctrl 
/* 804EC8F4  48 00 02 44 */	b lbl_804ECB38
lbl_804EC8F8:
/* 804EC8F8  2C 00 00 04 */	cmpwi r0, 4
/* 804EC8FC  40 82 00 3C */	bne lbl_804EC938
/* 804EC900  2C 1E 00 12 */	cmpwi r30, 0x12
/* 804EC904  40 82 02 34 */	bne lbl_804ECB38
/* 804EC908  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070040@ha */
/* 804EC90C  38 03 00 40 */	addi r0, r3, 0x0040 /* 0x00070040@l */
/* 804EC910  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804EC914  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804EC918  38 81 00 2C */	addi r4, r1, 0x2c
/* 804EC91C  38 A0 00 00 */	li r5, 0
/* 804EC920  38 C0 FF FF */	li r6, -1
/* 804EC924  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804EC928  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804EC92C  7D 89 03 A6 */	mtctr r12
/* 804EC930  4E 80 04 21 */	bctrl 
/* 804EC934  48 00 02 04 */	b lbl_804ECB38
lbl_804EC938:
/* 804EC938  2C 00 00 05 */	cmpwi r0, 5
/* 804EC93C  40 82 00 70 */	bne lbl_804EC9AC
/* 804EC940  2C 1E 00 0A */	cmpwi r30, 0xa
/* 804EC944  40 82 00 30 */	bne lbl_804EC974
/* 804EC948  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070042@ha */
/* 804EC94C  38 03 00 42 */	addi r0, r3, 0x0042 /* 0x00070042@l */
/* 804EC950  90 01 00 28 */	stw r0, 0x28(r1)
/* 804EC954  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804EC958  38 81 00 28 */	addi r4, r1, 0x28
/* 804EC95C  38 A0 00 00 */	li r5, 0
/* 804EC960  38 C0 FF FF */	li r6, -1
/* 804EC964  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804EC968  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804EC96C  7D 89 03 A6 */	mtctr r12
/* 804EC970  4E 80 04 21 */	bctrl 
lbl_804EC974:
/* 804EC974  2C 1E 00 18 */	cmpwi r30, 0x18
/* 804EC978  40 82 01 C0 */	bne lbl_804ECB38
/* 804EC97C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070043@ha */
/* 804EC980  38 03 00 43 */	addi r0, r3, 0x0043 /* 0x00070043@l */
/* 804EC984  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EC988  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804EC98C  38 81 00 24 */	addi r4, r1, 0x24
/* 804EC990  38 A0 00 00 */	li r5, 0
/* 804EC994  38 C0 FF FF */	li r6, -1
/* 804EC998  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804EC99C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804EC9A0  7D 89 03 A6 */	mtctr r12
/* 804EC9A4  4E 80 04 21 */	bctrl 
/* 804EC9A8  48 00 01 90 */	b lbl_804ECB38
lbl_804EC9AC:
/* 804EC9AC  2C 00 00 23 */	cmpwi r0, 0x23
/* 804EC9B0  40 82 00 74 */	bne lbl_804ECA24
/* 804EC9B4  2C 1E 00 03 */	cmpwi r30, 3
/* 804EC9B8  40 82 00 34 */	bne lbl_804EC9EC
/* 804EC9BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070039@ha */
/* 804EC9C0  38 03 00 39 */	addi r0, r3, 0x0039 /* 0x00070039@l */
/* 804EC9C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 804EC9C8  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804EC9CC  38 81 00 20 */	addi r4, r1, 0x20
/* 804EC9D0  38 A0 00 00 */	li r5, 0
/* 804EC9D4  38 C0 FF FF */	li r6, -1
/* 804EC9D8  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804EC9DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804EC9E0  7D 89 03 A6 */	mtctr r12
/* 804EC9E4  4E 80 04 21 */	bctrl 
/* 804EC9E8  48 00 01 50 */	b lbl_804ECB38
lbl_804EC9EC:
/* 804EC9EC  2C 1E 00 12 */	cmpwi r30, 0x12
/* 804EC9F0  40 82 01 48 */	bne lbl_804ECB38
/* 804EC9F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003A@ha */
/* 804EC9F8  38 03 00 3A */	addi r0, r3, 0x003A /* 0x0007003A@l */
/* 804EC9FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804ECA00  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804ECA04  38 81 00 1C */	addi r4, r1, 0x1c
/* 804ECA08  38 A0 00 00 */	li r5, 0
/* 804ECA0C  38 C0 FF FF */	li r6, -1
/* 804ECA10  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804ECA14  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804ECA18  7D 89 03 A6 */	mtctr r12
/* 804ECA1C  4E 80 04 21 */	bctrl 
/* 804ECA20  48 00 01 18 */	b lbl_804ECB38
lbl_804ECA24:
/* 804ECA24  2C 00 00 1E */	cmpwi r0, 0x1e
/* 804ECA28  40 82 00 9C */	bne lbl_804ECAC4
/* 804ECA2C  2C 1E 00 0A */	cmpwi r30, 0xa
/* 804ECA30  40 82 00 34 */	bne lbl_804ECA64
/* 804ECA34  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003B@ha */
/* 804ECA38  38 03 00 3B */	addi r0, r3, 0x003B /* 0x0007003B@l */
/* 804ECA3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804ECA40  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804ECA44  38 81 00 18 */	addi r4, r1, 0x18
/* 804ECA48  38 A0 00 00 */	li r5, 0
/* 804ECA4C  38 C0 FF FF */	li r6, -1
/* 804ECA50  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804ECA54  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804ECA58  7D 89 03 A6 */	mtctr r12
/* 804ECA5C  4E 80 04 21 */	bctrl 
/* 804ECA60  48 00 00 D8 */	b lbl_804ECB38
lbl_804ECA64:
/* 804ECA64  2C 1E 00 04 */	cmpwi r30, 4
/* 804ECA68  40 82 00 D0 */	bne lbl_804ECB38
/* 804ECA6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003C@ha */
/* 804ECA70  38 03 00 3C */	addi r0, r3, 0x003C /* 0x0007003C@l */
/* 804ECA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ECA78  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804ECA7C  38 81 00 14 */	addi r4, r1, 0x14
/* 804ECA80  38 A0 00 00 */	li r5, 0
/* 804ECA84  38 C0 FF FF */	li r6, -1
/* 804ECA88  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804ECA8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804ECA90  7D 89 03 A6 */	mtctr r12
/* 804ECA94  4E 80 04 21 */	bctrl 
/* 804ECA98  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070045@ha */
/* 804ECA9C  38 03 00 45 */	addi r0, r3, 0x0045 /* 0x00070045@l */
/* 804ECAA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804ECAA4  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804ECAA8  38 81 00 10 */	addi r4, r1, 0x10
/* 804ECAAC  38 A0 FF FF */	li r5, -1
/* 804ECAB0  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804ECAB4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804ECAB8  7D 89 03 A6 */	mtctr r12
/* 804ECABC  4E 80 04 21 */	bctrl 
/* 804ECAC0  48 00 00 78 */	b lbl_804ECB38
lbl_804ECAC4:
/* 804ECAC4  2C 00 00 21 */	cmpwi r0, 0x21
/* 804ECAC8  40 82 00 38 */	bne lbl_804ECB00
/* 804ECACC  2C 1E 00 0F */	cmpwi r30, 0xf
/* 804ECAD0  40 82 00 68 */	bne lbl_804ECB38
/* 804ECAD4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070048@ha */
/* 804ECAD8  38 03 00 48 */	addi r0, r3, 0x0048 /* 0x00070048@l */
/* 804ECADC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804ECAE0  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804ECAE4  38 81 00 0C */	addi r4, r1, 0xc
/* 804ECAE8  38 A0 FF FF */	li r5, -1
/* 804ECAEC  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804ECAF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804ECAF4  7D 89 03 A6 */	mtctr r12
/* 804ECAF8  4E 80 04 21 */	bctrl 
/* 804ECAFC  48 00 00 3C */	b lbl_804ECB38
lbl_804ECB00:
/* 804ECB00  2C 00 00 22 */	cmpwi r0, 0x22
/* 804ECB04  40 82 00 34 */	bne lbl_804ECB38
/* 804ECB08  2C 1E 00 0F */	cmpwi r30, 0xf
/* 804ECB0C  40 82 00 2C */	bne lbl_804ECB38
/* 804ECB10  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070049@ha */
/* 804ECB14  38 03 00 49 */	addi r0, r3, 0x0049 /* 0x00070049@l */
/* 804ECB18  90 01 00 08 */	stw r0, 8(r1)
/* 804ECB1C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804ECB20  38 81 00 08 */	addi r4, r1, 8
/* 804ECB24  38 A0 FF FF */	li r5, -1
/* 804ECB28  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804ECB2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804ECB30  7D 89 03 A6 */	mtctr r12
/* 804ECB34  4E 80 04 21 */	bctrl 
lbl_804ECB38:
/* 804ECB38  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 804ECB3C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 804ECB40  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804ECB44  7C 08 03 A6 */	mtlr r0
/* 804ECB48  38 21 00 50 */	addi r1, r1, 0x50
/* 804ECB4C  4E 80 00 20 */	blr 
