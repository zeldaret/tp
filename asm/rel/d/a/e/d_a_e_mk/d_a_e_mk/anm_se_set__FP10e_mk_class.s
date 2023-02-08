lbl_8071A808:
/* 8071A808  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8071A80C  7C 08 02 A6 */	mflr r0
/* 8071A810  90 01 00 84 */	stw r0, 0x84(r1)
/* 8071A814  39 61 00 80 */	addi r11, r1, 0x80
/* 8071A818  4B C4 79 B1 */	bl _savegpr_24
/* 8071A81C  7C 7C 1B 78 */	mr r28, r3
/* 8071A820  3C 60 80 72 */	lis r3, lit_3777@ha /* 0x8071C544@ha */
/* 8071A824  3B C3 C5 44 */	addi r30, r3, lit_3777@l /* 0x8071C544@l */
/* 8071A828  80 1C 05 CC */	lwz r0, 0x5cc(r28)
/* 8071A82C  2C 00 00 28 */	cmpwi r0, 0x28
/* 8071A830  40 82 00 60 */	bne lbl_8071A890
/* 8071A834  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071A838  38 63 00 0C */	addi r3, r3, 0xc
/* 8071A83C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8071A840  4B C0 DB ED */	bl checkPass__12J3DFrameCtrlFf
/* 8071A844  2C 03 00 00 */	cmpwi r3, 0
/* 8071A848  40 82 00 1C */	bne lbl_8071A864
/* 8071A84C  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071A850  38 63 00 0C */	addi r3, r3, 0xc
/* 8071A854  C0 3E 02 28 */	lfs f1, 0x228(r30)
/* 8071A858  4B C0 DB D5 */	bl checkPass__12J3DFrameCtrlFf
/* 8071A85C  2C 03 00 00 */	cmpwi r3, 0
/* 8071A860  41 82 04 B4 */	beq lbl_8071AD14
lbl_8071A864:
/* 8071A864  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070069@ha */
/* 8071A868  38 03 00 69 */	addi r0, r3, 0x0069 /* 0x00070069@l */
/* 8071A86C  90 01 00 58 */	stw r0, 0x58(r1)
/* 8071A870  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071A874  38 81 00 58 */	addi r4, r1, 0x58
/* 8071A878  38 A0 FF FF */	li r5, -1
/* 8071A87C  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071A880  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8071A884  7D 89 03 A6 */	mtctr r12
/* 8071A888  4E 80 04 21 */	bctrl 
/* 8071A88C  48 00 04 88 */	b lbl_8071AD14
lbl_8071A890:
/* 8071A890  2C 00 00 23 */	cmpwi r0, 0x23
/* 8071A894  40 82 00 BC */	bne lbl_8071A950
/* 8071A898  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071A89C  38 63 00 0C */	addi r3, r3, 0xc
/* 8071A8A0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8071A8A4  4B C0 DB 89 */	bl checkPass__12J3DFrameCtrlFf
/* 8071A8A8  2C 03 00 00 */	cmpwi r3, 0
/* 8071A8AC  41 82 00 2C */	beq lbl_8071A8D8
/* 8071A8B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007006D@ha */
/* 8071A8B4  38 03 00 6D */	addi r0, r3, 0x006D /* 0x0007006D@l */
/* 8071A8B8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8071A8BC  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071A8C0  38 81 00 54 */	addi r4, r1, 0x54
/* 8071A8C4  38 A0 FF FF */	li r5, -1
/* 8071A8C8  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071A8CC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8071A8D0  7D 89 03 A6 */	mtctr r12
/* 8071A8D4  4E 80 04 21 */	bctrl 
lbl_8071A8D8:
/* 8071A8D8  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071A8DC  38 63 00 0C */	addi r3, r3, 0xc
/* 8071A8E0  C0 3E 02 2C */	lfs f1, 0x22c(r30)
/* 8071A8E4  4B C0 DB 49 */	bl checkPass__12J3DFrameCtrlFf
/* 8071A8E8  2C 03 00 00 */	cmpwi r3, 0
/* 8071A8EC  40 82 00 34 */	bne lbl_8071A920
/* 8071A8F0  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071A8F4  38 63 00 0C */	addi r3, r3, 0xc
/* 8071A8F8  C0 3E 02 30 */	lfs f1, 0x230(r30)
/* 8071A8FC  4B C0 DB 31 */	bl checkPass__12J3DFrameCtrlFf
/* 8071A900  2C 03 00 00 */	cmpwi r3, 0
/* 8071A904  40 82 00 1C */	bne lbl_8071A920
/* 8071A908  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071A90C  38 63 00 0C */	addi r3, r3, 0xc
/* 8071A910  C0 3E 02 34 */	lfs f1, 0x234(r30)
/* 8071A914  4B C0 DB 19 */	bl checkPass__12J3DFrameCtrlFf
/* 8071A918  2C 03 00 00 */	cmpwi r3, 0
/* 8071A91C  41 82 03 F8 */	beq lbl_8071AD14
lbl_8071A920:
/* 8071A920  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070079@ha */
/* 8071A924  38 03 00 79 */	addi r0, r3, 0x0079 /* 0x00070079@l */
/* 8071A928  90 01 00 50 */	stw r0, 0x50(r1)
/* 8071A92C  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071A930  38 81 00 50 */	addi r4, r1, 0x50
/* 8071A934  38 A0 00 00 */	li r5, 0
/* 8071A938  38 C0 FF FF */	li r6, -1
/* 8071A93C  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071A940  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8071A944  7D 89 03 A6 */	mtctr r12
/* 8071A948  4E 80 04 21 */	bctrl 
/* 8071A94C  48 00 03 C8 */	b lbl_8071AD14
lbl_8071A950:
/* 8071A950  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8071A954  41 82 00 0C */	beq lbl_8071A960
/* 8071A958  2C 00 00 20 */	cmpwi r0, 0x20
/* 8071A95C  40 82 00 48 */	bne lbl_8071A9A4
lbl_8071A960:
/* 8071A960  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071A964  38 63 00 0C */	addi r3, r3, 0xc
/* 8071A968  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8071A96C  4B C0 DA C1 */	bl checkPass__12J3DFrameCtrlFf
/* 8071A970  2C 03 00 00 */	cmpwi r3, 0
/* 8071A974  41 82 03 A0 */	beq lbl_8071AD14
/* 8071A978  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007006F@ha */
/* 8071A97C  38 03 00 6F */	addi r0, r3, 0x006F /* 0x0007006F@l */
/* 8071A980  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8071A984  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071A988  38 81 00 4C */	addi r4, r1, 0x4c
/* 8071A98C  38 A0 FF FF */	li r5, -1
/* 8071A990  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071A994  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8071A998  7D 89 03 A6 */	mtctr r12
/* 8071A99C  4E 80 04 21 */	bctrl 
/* 8071A9A0  48 00 03 74 */	b lbl_8071AD14
lbl_8071A9A4:
/* 8071A9A4  2C 00 00 21 */	cmpwi r0, 0x21
/* 8071A9A8  40 82 00 E8 */	bne lbl_8071AA90
/* 8071A9AC  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071A9B0  38 63 00 0C */	addi r3, r3, 0xc
/* 8071A9B4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8071A9B8  4B C0 DA 75 */	bl checkPass__12J3DFrameCtrlFf
/* 8071A9BC  2C 03 00 00 */	cmpwi r3, 0
/* 8071A9C0  41 82 00 2C */	beq lbl_8071A9EC
/* 8071A9C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070070@ha */
/* 8071A9C8  38 03 00 70 */	addi r0, r3, 0x0070 /* 0x00070070@l */
/* 8071A9CC  90 01 00 48 */	stw r0, 0x48(r1)
/* 8071A9D0  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071A9D4  38 81 00 48 */	addi r4, r1, 0x48
/* 8071A9D8  38 A0 FF FF */	li r5, -1
/* 8071A9DC  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071A9E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8071A9E4  7D 89 03 A6 */	mtctr r12
/* 8071A9E8  4E 80 04 21 */	bctrl 
lbl_8071A9EC:
/* 8071A9EC  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071A9F0  38 63 00 0C */	addi r3, r3, 0xc
/* 8071A9F4  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8071A9F8  4B C0 DA 35 */	bl checkPass__12J3DFrameCtrlFf
/* 8071A9FC  2C 03 00 00 */	cmpwi r3, 0
/* 8071AA00  40 82 00 1C */	bne lbl_8071AA1C
/* 8071AA04  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071AA08  38 63 00 0C */	addi r3, r3, 0xc
/* 8071AA0C  C0 3E 02 38 */	lfs f1, 0x238(r30)
/* 8071AA10  4B C0 DA 1D */	bl checkPass__12J3DFrameCtrlFf
/* 8071AA14  2C 03 00 00 */	cmpwi r3, 0
/* 8071AA18  41 82 00 30 */	beq lbl_8071AA48
lbl_8071AA1C:
/* 8071AA1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070077@ha */
/* 8071AA20  38 03 00 77 */	addi r0, r3, 0x0077 /* 0x00070077@l */
/* 8071AA24  90 01 00 44 */	stw r0, 0x44(r1)
/* 8071AA28  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071AA2C  38 81 00 44 */	addi r4, r1, 0x44
/* 8071AA30  38 A0 00 00 */	li r5, 0
/* 8071AA34  38 C0 FF FF */	li r6, -1
/* 8071AA38  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071AA3C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8071AA40  7D 89 03 A6 */	mtctr r12
/* 8071AA44  4E 80 04 21 */	bctrl 
lbl_8071AA48:
/* 8071AA48  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071AA4C  38 63 00 0C */	addi r3, r3, 0xc
/* 8071AA50  C0 3E 02 3C */	lfs f1, 0x23c(r30)
/* 8071AA54  4B C0 D9 D9 */	bl checkPass__12J3DFrameCtrlFf
/* 8071AA58  2C 03 00 00 */	cmpwi r3, 0
/* 8071AA5C  41 82 02 B8 */	beq lbl_8071AD14
/* 8071AA60  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007007F@ha */
/* 8071AA64  38 03 00 7F */	addi r0, r3, 0x007F /* 0x0007007F@l */
/* 8071AA68  90 01 00 40 */	stw r0, 0x40(r1)
/* 8071AA6C  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071AA70  38 81 00 40 */	addi r4, r1, 0x40
/* 8071AA74  38 A0 00 00 */	li r5, 0
/* 8071AA78  38 C0 FF FF */	li r6, -1
/* 8071AA7C  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071AA80  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8071AA84  7D 89 03 A6 */	mtctr r12
/* 8071AA88  4E 80 04 21 */	bctrl 
/* 8071AA8C  48 00 02 88 */	b lbl_8071AD14
lbl_8071AA90:
/* 8071AA90  2C 00 00 19 */	cmpwi r0, 0x19
/* 8071AA94  41 82 00 0C */	beq lbl_8071AAA0
/* 8071AA98  2C 00 00 0F */	cmpwi r0, 0xf
/* 8071AA9C  40 82 00 48 */	bne lbl_8071AAE4
lbl_8071AAA0:
/* 8071AAA0  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071AAA4  38 63 00 0C */	addi r3, r3, 0xc
/* 8071AAA8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8071AAAC  4B C0 D9 81 */	bl checkPass__12J3DFrameCtrlFf
/* 8071AAB0  2C 03 00 00 */	cmpwi r3, 0
/* 8071AAB4  41 82 02 60 */	beq lbl_8071AD14
/* 8071AAB8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070072@ha */
/* 8071AABC  38 03 00 72 */	addi r0, r3, 0x0072 /* 0x00070072@l */
/* 8071AAC0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8071AAC4  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071AAC8  38 81 00 3C */	addi r4, r1, 0x3c
/* 8071AACC  38 A0 FF FF */	li r5, -1
/* 8071AAD0  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071AAD4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8071AAD8  7D 89 03 A6 */	mtctr r12
/* 8071AADC  4E 80 04 21 */	bctrl 
/* 8071AAE0  48 00 02 34 */	b lbl_8071AD14
lbl_8071AAE4:
/* 8071AAE4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8071AAE8  40 82 00 48 */	bne lbl_8071AB30
/* 8071AAEC  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071AAF0  38 63 00 0C */	addi r3, r3, 0xc
/* 8071AAF4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8071AAF8  4B C0 D9 35 */	bl checkPass__12J3DFrameCtrlFf
/* 8071AAFC  2C 03 00 00 */	cmpwi r3, 0
/* 8071AB00  41 82 02 14 */	beq lbl_8071AD14
/* 8071AB04  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070074@ha */
/* 8071AB08  38 03 00 74 */	addi r0, r3, 0x0074 /* 0x00070074@l */
/* 8071AB0C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8071AB10  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071AB14  38 81 00 38 */	addi r4, r1, 0x38
/* 8071AB18  38 A0 FF FF */	li r5, -1
/* 8071AB1C  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071AB20  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8071AB24  7D 89 03 A6 */	mtctr r12
/* 8071AB28  4E 80 04 21 */	bctrl 
/* 8071AB2C  48 00 01 E8 */	b lbl_8071AD14
lbl_8071AB30:
/* 8071AB30  2C 00 00 1D */	cmpwi r0, 0x1d
/* 8071AB34  40 82 00 4C */	bne lbl_8071AB80
/* 8071AB38  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071AB3C  38 63 00 0C */	addi r3, r3, 0xc
/* 8071AB40  C0 3E 02 40 */	lfs f1, 0x240(r30)
/* 8071AB44  4B C0 D8 E9 */	bl checkPass__12J3DFrameCtrlFf
/* 8071AB48  2C 03 00 00 */	cmpwi r3, 0
/* 8071AB4C  41 82 01 C8 */	beq lbl_8071AD14
/* 8071AB50  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070078@ha */
/* 8071AB54  38 03 00 78 */	addi r0, r3, 0x0078 /* 0x00070078@l */
/* 8071AB58  90 01 00 34 */	stw r0, 0x34(r1)
/* 8071AB5C  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071AB60  38 81 00 34 */	addi r4, r1, 0x34
/* 8071AB64  38 A0 00 00 */	li r5, 0
/* 8071AB68  38 C0 FF FF */	li r6, -1
/* 8071AB6C  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071AB70  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8071AB74  7D 89 03 A6 */	mtctr r12
/* 8071AB78  4E 80 04 21 */	bctrl 
/* 8071AB7C  48 00 01 98 */	b lbl_8071AD14
lbl_8071AB80:
/* 8071AB80  2C 00 00 27 */	cmpwi r0, 0x27
/* 8071AB84  40 82 00 4C */	bne lbl_8071ABD0
/* 8071AB88  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071AB8C  38 63 00 0C */	addi r3, r3, 0xc
/* 8071AB90  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 8071AB94  4B C0 D8 99 */	bl checkPass__12J3DFrameCtrlFf
/* 8071AB98  2C 03 00 00 */	cmpwi r3, 0
/* 8071AB9C  41 82 01 78 */	beq lbl_8071AD14
/* 8071ABA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070078@ha */
/* 8071ABA4  38 03 00 78 */	addi r0, r3, 0x0078 /* 0x00070078@l */
/* 8071ABA8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8071ABAC  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071ABB0  38 81 00 30 */	addi r4, r1, 0x30
/* 8071ABB4  38 A0 00 00 */	li r5, 0
/* 8071ABB8  38 C0 FF FF */	li r6, -1
/* 8071ABBC  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071ABC0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8071ABC4  7D 89 03 A6 */	mtctr r12
/* 8071ABC8  4E 80 04 21 */	bctrl 
/* 8071ABCC  48 00 01 48 */	b lbl_8071AD14
lbl_8071ABD0:
/* 8071ABD0  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8071ABD4  40 82 00 4C */	bne lbl_8071AC20
/* 8071ABD8  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071ABDC  38 63 00 0C */	addi r3, r3, 0xc
/* 8071ABE0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8071ABE4  4B C0 D8 49 */	bl checkPass__12J3DFrameCtrlFf
/* 8071ABE8  2C 03 00 00 */	cmpwi r3, 0
/* 8071ABEC  41 82 01 28 */	beq lbl_8071AD14
/* 8071ABF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070079@ha */
/* 8071ABF4  38 03 00 79 */	addi r0, r3, 0x0079 /* 0x00070079@l */
/* 8071ABF8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8071ABFC  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071AC00  38 81 00 2C */	addi r4, r1, 0x2c
/* 8071AC04  38 A0 00 00 */	li r5, 0
/* 8071AC08  38 C0 FF FF */	li r6, -1
/* 8071AC0C  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071AC10  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8071AC14  7D 89 03 A6 */	mtctr r12
/* 8071AC18  4E 80 04 21 */	bctrl 
/* 8071AC1C  48 00 00 F8 */	b lbl_8071AD14
lbl_8071AC20:
/* 8071AC20  2C 00 00 27 */	cmpwi r0, 0x27
/* 8071AC24  40 82 00 4C */	bne lbl_8071AC70
/* 8071AC28  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071AC2C  38 63 00 0C */	addi r3, r3, 0xc
/* 8071AC30  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8071AC34  4B C0 D7 F9 */	bl checkPass__12J3DFrameCtrlFf
/* 8071AC38  2C 03 00 00 */	cmpwi r3, 0
/* 8071AC3C  41 82 00 D8 */	beq lbl_8071AD14
/* 8071AC40  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070079@ha */
/* 8071AC44  38 03 00 79 */	addi r0, r3, 0x0079 /* 0x00070079@l */
/* 8071AC48  90 01 00 28 */	stw r0, 0x28(r1)
/* 8071AC4C  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071AC50  38 81 00 28 */	addi r4, r1, 0x28
/* 8071AC54  38 A0 00 00 */	li r5, 0
/* 8071AC58  38 C0 FF FF */	li r6, -1
/* 8071AC5C  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071AC60  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8071AC64  7D 89 03 A6 */	mtctr r12
/* 8071AC68  4E 80 04 21 */	bctrl 
/* 8071AC6C  48 00 00 A8 */	b lbl_8071AD14
lbl_8071AC70:
/* 8071AC70  2C 00 00 22 */	cmpwi r0, 0x22
/* 8071AC74  40 82 00 A0 */	bne lbl_8071AD14
/* 8071AC78  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071AC7C  38 63 00 0C */	addi r3, r3, 0xc
/* 8071AC80  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8071AC84  4B C0 D7 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 8071AC88  2C 03 00 00 */	cmpwi r3, 0
/* 8071AC8C  41 82 00 2C */	beq lbl_8071ACB8
/* 8071AC90  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070069@ha */
/* 8071AC94  38 03 00 69 */	addi r0, r3, 0x0069 /* 0x00070069@l */
/* 8071AC98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8071AC9C  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071ACA0  38 81 00 24 */	addi r4, r1, 0x24
/* 8071ACA4  38 A0 FF FF */	li r5, -1
/* 8071ACA8  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071ACAC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8071ACB0  7D 89 03 A6 */	mtctr r12
/* 8071ACB4  4E 80 04 21 */	bctrl 
lbl_8071ACB8:
/* 8071ACB8  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071ACBC  38 63 00 0C */	addi r3, r3, 0xc
/* 8071ACC0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8071ACC4  4B C0 D7 69 */	bl checkPass__12J3DFrameCtrlFf
/* 8071ACC8  2C 03 00 00 */	cmpwi r3, 0
/* 8071ACCC  40 82 00 1C */	bne lbl_8071ACE8
/* 8071ACD0  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071ACD4  38 63 00 0C */	addi r3, r3, 0xc
/* 8071ACD8  C0 3E 02 48 */	lfs f1, 0x248(r30)
/* 8071ACDC  4B C0 D7 51 */	bl checkPass__12J3DFrameCtrlFf
/* 8071ACE0  2C 03 00 00 */	cmpwi r3, 0
/* 8071ACE4  41 82 00 30 */	beq lbl_8071AD14
lbl_8071ACE8:
/* 8071ACE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070077@ha */
/* 8071ACEC  38 03 00 77 */	addi r0, r3, 0x0077 /* 0x00070077@l */
/* 8071ACF0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8071ACF4  38 7C 06 10 */	addi r3, r28, 0x610
/* 8071ACF8  38 81 00 20 */	addi r4, r1, 0x20
/* 8071ACFC  38 A0 00 00 */	li r5, 0
/* 8071AD00  38 C0 FF FF */	li r6, -1
/* 8071AD04  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 8071AD08  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8071AD0C  7D 89 03 A6 */	mtctr r12
/* 8071AD10  4E 80 04 21 */	bctrl 
lbl_8071AD14:
/* 8071AD14  80 1C 05 CC */	lwz r0, 0x5cc(r28)
/* 8071AD18  2C 00 00 13 */	cmpwi r0, 0x13
/* 8071AD1C  41 82 00 0C */	beq lbl_8071AD28
/* 8071AD20  2C 00 00 15 */	cmpwi r0, 0x15
/* 8071AD24  40 82 00 C8 */	bne lbl_8071ADEC
lbl_8071AD28:
/* 8071AD28  3B E0 00 00 */	li r31, 0
/* 8071AD2C  3B 40 00 00 */	li r26, 0
/* 8071AD30  3B 60 00 00 */	li r27, 0
/* 8071AD34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8071AD38  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8071AD3C  3C 60 80 72 */	lis r3, bo_eno_1@ha /* 0x8071C96C@ha */
/* 8071AD40  3B 23 C9 6C */	addi r25, r3, bo_eno_1@l /* 0x8071C96C@l */
lbl_8071AD44:
/* 8071AD44  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8071AD48  38 00 00 FF */	li r0, 0xff
/* 8071AD4C  90 01 00 08 */	stw r0, 8(r1)
/* 8071AD50  38 80 00 00 */	li r4, 0
/* 8071AD54  90 81 00 0C */	stw r4, 0xc(r1)
/* 8071AD58  38 00 FF FF */	li r0, -1
/* 8071AD5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8071AD60  90 81 00 14 */	stw r4, 0x14(r1)
/* 8071AD64  90 81 00 18 */	stw r4, 0x18(r1)
/* 8071AD68  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8071AD6C  3B 1B 0C 18 */	addi r24, r27, 0xc18
/* 8071AD70  7C 9C C0 2E */	lwzx r4, r28, r24
/* 8071AD74  38 A0 00 00 */	li r5, 0
/* 8071AD78  7C D9 D2 2E */	lhzx r6, r25, r26
/* 8071AD7C  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 8071AD80  39 00 00 00 */	li r8, 0
/* 8071AD84  39 20 00 00 */	li r9, 0
/* 8071AD88  39 40 00 00 */	li r10, 0
/* 8071AD8C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8071AD90  4B 93 27 3D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8071AD94  7C 7C C1 2E */	stwx r3, r28, r24
/* 8071AD98  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8071AD9C  38 63 02 10 */	addi r3, r3, 0x210
/* 8071ADA0  7C 9C C0 2E */	lwzx r4, r28, r24
/* 8071ADA4  4B 93 0B 75 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8071ADA8  7C 78 1B 79 */	or. r24, r3, r3
/* 8071ADAC  41 82 00 2C */	beq lbl_8071ADD8
/* 8071ADB0  80 7C 06 08 */	lwz r3, 0x608(r28)
/* 8071ADB4  38 63 00 24 */	addi r3, r3, 0x24
/* 8071ADB8  38 98 00 68 */	addi r4, r24, 0x68
/* 8071ADBC  38 B8 00 98 */	addi r5, r24, 0x98
/* 8071ADC0  38 D8 00 A4 */	addi r6, r24, 0xa4
/* 8071ADC4  4B B6 5A 45 */	bl func_80280808
/* 8071ADC8  C0 38 00 9C */	lfs f1, 0x9c(r24)
/* 8071ADCC  C0 18 00 98 */	lfs f0, 0x98(r24)
/* 8071ADD0  D0 18 00 B0 */	stfs f0, 0xb0(r24)
/* 8071ADD4  D0 38 00 B4 */	stfs f1, 0xb4(r24)
lbl_8071ADD8:
/* 8071ADD8  3B FF 00 01 */	addi r31, r31, 1
/* 8071ADDC  2C 1F 00 02 */	cmpwi r31, 2
/* 8071ADE0  3B 5A 00 02 */	addi r26, r26, 2
/* 8071ADE4  3B 7B 00 04 */	addi r27, r27, 4
/* 8071ADE8  41 80 FF 5C */	blt lbl_8071AD44
lbl_8071ADEC:
/* 8071ADEC  80 1C 05 CC */	lwz r0, 0x5cc(r28)
/* 8071ADF0  2C 00 00 15 */	cmpwi r0, 0x15
/* 8071ADF4  40 82 01 08 */	bne lbl_8071AEFC
/* 8071ADF8  3B A0 00 00 */	li r29, 0
/* 8071ADFC  3B 60 00 00 */	li r27, 0
/* 8071AE00  3B 40 00 00 */	li r26, 0
/* 8071AE04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8071AE08  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8071AE0C  3C 60 80 72 */	lis r3, bo_eno_0@ha /* 0x8071C970@ha */
/* 8071AE10  3B 03 C9 70 */	addi r24, r3, bo_eno_0@l /* 0x8071C970@l */
lbl_8071AE14:
/* 8071AE14  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8071AE18  38 00 00 FF */	li r0, 0xff
/* 8071AE1C  90 01 00 08 */	stw r0, 8(r1)
/* 8071AE20  38 80 00 00 */	li r4, 0
/* 8071AE24  90 81 00 0C */	stw r4, 0xc(r1)
/* 8071AE28  38 00 FF FF */	li r0, -1
/* 8071AE2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8071AE30  90 81 00 14 */	stw r4, 0x14(r1)
/* 8071AE34  90 81 00 18 */	stw r4, 0x18(r1)
/* 8071AE38  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8071AE3C  3B 3A 0C 20 */	addi r25, r26, 0xc20
/* 8071AE40  7C 9C C8 2E */	lwzx r4, r28, r25
/* 8071AE44  38 A0 00 00 */	li r5, 0
/* 8071AE48  7C D8 DA 2E */	lhzx r6, r24, r27
/* 8071AE4C  38 FC 05 38 */	addi r7, r28, 0x538
/* 8071AE50  39 00 00 00 */	li r8, 0
/* 8071AE54  39 20 00 00 */	li r9, 0
/* 8071AE58  39 40 00 00 */	li r10, 0
/* 8071AE5C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8071AE60  4B 93 26 6D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8071AE64  7C 7C C9 2E */	stwx r3, r28, r25
/* 8071AE68  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8071AE6C  38 63 02 10 */	addi r3, r3, 0x210
/* 8071AE70  7C 9C C8 2E */	lwzx r4, r28, r25
/* 8071AE74  4B 93 0A A5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8071AE78  7C 79 1B 79 */	or. r25, r3, r3
/* 8071AE7C  41 82 00 6C */	beq lbl_8071AEE8
/* 8071AE80  2C 1D 00 00 */	cmpwi r29, 0
/* 8071AE84  40 82 00 3C */	bne lbl_8071AEC0
/* 8071AE88  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8071AE8C  80 63 00 04 */	lwz r3, 4(r3)
/* 8071AE90  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8071AE94  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8071AE98  38 63 04 20 */	addi r3, r3, 0x420
/* 8071AE9C  38 99 00 68 */	addi r4, r25, 0x68
/* 8071AEA0  38 B9 00 98 */	addi r5, r25, 0x98
/* 8071AEA4  38 D9 00 A4 */	addi r6, r25, 0xa4
/* 8071AEA8  4B B6 59 61 */	bl func_80280808
/* 8071AEAC  C0 39 00 9C */	lfs f1, 0x9c(r25)
/* 8071AEB0  C0 19 00 98 */	lfs f0, 0x98(r25)
/* 8071AEB4  D0 19 00 B0 */	stfs f0, 0xb0(r25)
/* 8071AEB8  D0 39 00 B4 */	stfs f1, 0xb4(r25)
/* 8071AEBC  48 00 00 2C */	b lbl_8071AEE8
lbl_8071AEC0:
/* 8071AEC0  80 7C 06 08 */	lwz r3, 0x608(r28)
/* 8071AEC4  38 63 00 24 */	addi r3, r3, 0x24
/* 8071AEC8  38 99 00 68 */	addi r4, r25, 0x68
/* 8071AECC  38 B9 00 98 */	addi r5, r25, 0x98
/* 8071AED0  38 D9 00 A4 */	addi r6, r25, 0xa4
/* 8071AED4  4B B6 59 35 */	bl func_80280808
/* 8071AED8  C0 39 00 9C */	lfs f1, 0x9c(r25)
/* 8071AEDC  C0 19 00 98 */	lfs f0, 0x98(r25)
/* 8071AEE0  D0 19 00 B0 */	stfs f0, 0xb0(r25)
/* 8071AEE4  D0 39 00 B4 */	stfs f1, 0xb4(r25)
lbl_8071AEE8:
/* 8071AEE8  3B BD 00 01 */	addi r29, r29, 1
/* 8071AEEC  2C 1D 00 04 */	cmpwi r29, 4
/* 8071AEF0  3B 7B 00 02 */	addi r27, r27, 2
/* 8071AEF4  3B 5A 00 04 */	addi r26, r26, 4
/* 8071AEF8  41 80 FF 1C */	blt lbl_8071AE14
lbl_8071AEFC:
/* 8071AEFC  39 61 00 80 */	addi r11, r1, 0x80
/* 8071AF00  4B C4 73 15 */	bl _restgpr_24
/* 8071AF04  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8071AF08  7C 08 03 A6 */	mtlr r0
/* 8071AF0C  38 21 00 80 */	addi r1, r1, 0x80
/* 8071AF10  4E 80 00 20 */	blr 
