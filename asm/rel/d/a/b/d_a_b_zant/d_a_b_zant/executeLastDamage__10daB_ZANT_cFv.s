lbl_8064A688:
/* 8064A688  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8064A68C  7C 08 02 A6 */	mflr r0
/* 8064A690  90 01 00 34 */	stw r0, 0x34(r1)
/* 8064A694  39 61 00 30 */	addi r11, r1, 0x30
/* 8064A698  4B D1 7B 44 */	b _savegpr_29
/* 8064A69C  7C 7E 1B 78 */	mr r30, r3
/* 8064A6A0  3C 80 80 65 */	lis r4, lit_3757@ha
/* 8064A6A4  3B E4 EB 1C */	addi r31, r4, lit_3757@l
/* 8064A6A8  80 03 06 DC */	lwz r0, 0x6dc(r3)
/* 8064A6AC  28 00 00 15 */	cmplwi r0, 0x15
/* 8064A6B0  41 81 05 58 */	bgt lbl_8064AC08
/* 8064A6B4  3C 80 80 65 */	lis r4, lit_9307@ha
/* 8064A6B8  38 84 F2 F8 */	addi r4, r4, lit_9307@l
/* 8064A6BC  54 00 10 3A */	slwi r0, r0, 2
/* 8064A6C0  7C 04 00 2E */	lwzx r0, r4, r0
/* 8064A6C4  7C 09 03 A6 */	mtctr r0
/* 8064A6C8  4E 80 04 20 */	bctr 
lbl_8064A6CC:
/* 8064A6CC  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 8064A6D0  2C 00 00 13 */	cmpwi r0, 0x13
/* 8064A6D4  40 82 00 0C */	bne lbl_8064A6E0
/* 8064A6D8  38 00 00 00 */	li r0, 0
/* 8064A6DC  90 1E 06 F0 */	stw r0, 0x6f0(r30)
lbl_8064A6E0:
/* 8064A6E0  80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 8064A6E4  2C 00 00 00 */	cmpwi r0, 0
/* 8064A6E8  40 82 00 14 */	bne lbl_8064A6FC
/* 8064A6EC  7F C3 F3 78 */	mr r3, r30
/* 8064A6F0  38 80 00 00 */	li r4, 0
/* 8064A6F4  4B FF 58 79 */	bl setTgHitBit__10daB_ZANT_cFi
/* 8064A6F8  48 00 00 10 */	b lbl_8064A708
lbl_8064A6FC:
/* 8064A6FC  7F C3 F3 78 */	mr r3, r30
/* 8064A700  38 80 00 01 */	li r4, 1
/* 8064A704  4B FF 58 69 */	bl setTgHitBit__10daB_ZANT_cFi
lbl_8064A708:
/* 8064A708  80 1E 36 24 */	lwz r0, 0x3624(r30)
/* 8064A70C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8064A710  90 1E 36 24 */	stw r0, 0x3624(r30)
/* 8064A714  80 1E 37 5C */	lwz r0, 0x375c(r30)
/* 8064A718  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8064A71C  90 1E 37 5C */	stw r0, 0x375c(r30)
/* 8064A720  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8064A724  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8064A728  38 00 00 04 */	li r0, 4
/* 8064A72C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8064A730  88 1E 07 19 */	lbz r0, 0x719(r30)
/* 8064A734  28 00 00 00 */	cmplwi r0, 0
/* 8064A738  41 82 00 5C */	beq lbl_8064A794
/* 8064A73C  88 1E 07 1A */	lbz r0, 0x71a(r30)
/* 8064A740  28 00 00 00 */	cmplwi r0, 0
/* 8064A744  40 82 00 1C */	bne lbl_8064A760
/* 8064A748  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8064A74C  2C 00 01 90 */	cmpwi r0, 0x190
/* 8064A750  40 80 00 2C */	bge lbl_8064A77C
/* 8064A754  38 00 01 90 */	li r0, 0x190
/* 8064A758  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8064A75C  48 00 00 20 */	b lbl_8064A77C
lbl_8064A760:
/* 8064A760  28 00 00 01 */	cmplwi r0, 1
/* 8064A764  40 82 00 18 */	bne lbl_8064A77C
/* 8064A768  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8064A76C  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8064A770  40 80 00 0C */	bge lbl_8064A77C
/* 8064A774  38 00 00 C8 */	li r0, 0xc8
/* 8064A778  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_8064A77C:
/* 8064A77C  88 7E 07 1A */	lbz r3, 0x71a(r30)
/* 8064A780  38 03 00 01 */	addi r0, r3, 1
/* 8064A784  98 1E 07 1A */	stb r0, 0x71a(r30)
/* 8064A788  7F C3 F3 78 */	mr r3, r30
/* 8064A78C  38 80 00 00 */	li r4, 0
/* 8064A790  4B FF 57 DD */	bl setTgHitBit__10daB_ZANT_cFi
lbl_8064A794:
/* 8064A794  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8064A798  2C 00 00 00 */	cmpwi r0, 0
/* 8064A79C  40 81 00 10 */	ble lbl_8064A7AC
/* 8064A7A0  88 1E 07 1A */	lbz r0, 0x71a(r30)
/* 8064A7A4  28 00 00 03 */	cmplwi r0, 3
/* 8064A7A8  41 80 00 40 */	blt lbl_8064A7E8
lbl_8064A7AC:
/* 8064A7AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007040C@ha */
/* 8064A7B0  38 03 04 0C */	addi r0, r3, 0x040C /* 0x0007040C@l */
/* 8064A7B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8064A7B8  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8064A7BC  38 81 00 18 */	addi r4, r1, 0x18
/* 8064A7C0  38 A0 FF FF */	li r5, -1
/* 8064A7C4  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 8064A7C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8064A7CC  7D 89 03 A6 */	mtctr r12
/* 8064A7D0  4E 80 04 21 */	bctrl 
/* 8064A7D4  7F C3 F3 78 */	mr r3, r30
/* 8064A7D8  38 80 00 16 */	li r4, 0x16
/* 8064A7DC  38 A0 00 00 */	li r5, 0
/* 8064A7E0  4B FF 3E E5 */	bl setActionMode__10daB_ZANT_cFii
/* 8064A7E4  48 00 04 24 */	b lbl_8064AC08
lbl_8064A7E8:
/* 8064A7E8  38 00 00 00 */	li r0, 0
/* 8064A7EC  98 1E 07 02 */	stb r0, 0x702(r30)
/* 8064A7F0  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 8064A7F4  2C 00 00 01 */	cmpwi r0, 1
/* 8064A7F8  40 82 00 20 */	bne lbl_8064A818
/* 8064A7FC  7F C3 F3 78 */	mr r3, r30
/* 8064A800  38 80 00 39 */	li r4, 0x39
/* 8064A804  38 A0 00 00 */	li r5, 0
/* 8064A808  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8064A80C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8064A810  4B FF 3D B5 */	bl setBck__10daB_ZANT_cFiUcff
/* 8064A814  48 00 00 6C */	b lbl_8064A880
lbl_8064A818:
/* 8064A818  2C 00 00 02 */	cmpwi r0, 2
/* 8064A81C  40 82 00 20 */	bne lbl_8064A83C
/* 8064A820  7F C3 F3 78 */	mr r3, r30
/* 8064A824  38 80 00 38 */	li r4, 0x38
/* 8064A828  38 A0 00 00 */	li r5, 0
/* 8064A82C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8064A830  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8064A834  4B FF 3D 91 */	bl setBck__10daB_ZANT_cFiUcff
/* 8064A838  48 00 00 48 */	b lbl_8064A880
lbl_8064A83C:
/* 8064A83C  4B C1 D0 30 */	b cM_rnd__Fv
/* 8064A840  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8064A844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064A848  40 80 00 20 */	bge lbl_8064A868
/* 8064A84C  7F C3 F3 78 */	mr r3, r30
/* 8064A850  38 80 00 38 */	li r4, 0x38
/* 8064A854  38 A0 00 00 */	li r5, 0
/* 8064A858  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8064A85C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8064A860  4B FF 3D 65 */	bl setBck__10daB_ZANT_cFiUcff
/* 8064A864  48 00 00 1C */	b lbl_8064A880
lbl_8064A868:
/* 8064A868  7F C3 F3 78 */	mr r3, r30
/* 8064A86C  38 80 00 39 */	li r4, 0x39
/* 8064A870  38 A0 00 00 */	li r5, 0
/* 8064A874  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8064A878  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8064A87C  4B FF 3D 49 */	bl setBck__10daB_ZANT_cFiUcff
lbl_8064A880:
/* 8064A880  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007040C@ha */
/* 8064A884  38 03 04 0C */	addi r0, r3, 0x040C /* 0x0007040C@l */
/* 8064A888  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064A88C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8064A890  38 81 00 14 */	addi r4, r1, 0x14
/* 8064A894  38 A0 FF FF */	li r5, -1
/* 8064A898  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 8064A89C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8064A8A0  7D 89 03 A6 */	mtctr r12
/* 8064A8A4  4E 80 04 21 */	bctrl 
/* 8064A8A8  38 00 00 05 */	li r0, 5
/* 8064A8AC  90 1E 06 DC */	stw r0, 0x6dc(r30)
lbl_8064A8B0:
/* 8064A8B0  3B A0 00 00 */	li r29, 0
/* 8064A8B4  7F C3 F3 78 */	mr r3, r30
/* 8064A8B8  38 80 00 38 */	li r4, 0x38
/* 8064A8BC  4B FF 3D AD */	bl checkBck__10daB_ZANT_cFi
/* 8064A8C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8064A8C4  41 82 01 20 */	beq lbl_8064A9E4
/* 8064A8C8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8064A8CC  38 63 00 0C */	addi r3, r3, 0xc
/* 8064A8D0  C0 3F 02 04 */	lfs f1, 0x204(r31)
/* 8064A8D4  4B CD DB 58 */	b checkPass__12J3DFrameCtrlFf
/* 8064A8D8  2C 03 00 00 */	cmpwi r3, 0
/* 8064A8DC  41 82 00 2C */	beq lbl_8064A908
/* 8064A8E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070449@ha */
/* 8064A8E4  38 03 04 49 */	addi r0, r3, 0x0449 /* 0x00070449@l */
/* 8064A8E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8064A8EC  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8064A8F0  38 81 00 10 */	addi r4, r1, 0x10
/* 8064A8F4  38 A0 FF FF */	li r5, -1
/* 8064A8F8  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 8064A8FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8064A900  7D 89 03 A6 */	mtctr r12
/* 8064A904  4E 80 04 21 */	bctrl 
lbl_8064A908:
/* 8064A908  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 8064A90C  2C 00 00 13 */	cmpwi r0, 0x13
/* 8064A910  40 82 00 24 */	bne lbl_8064A934
/* 8064A914  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8064A918  38 63 00 0C */	addi r3, r3, 0xc
/* 8064A91C  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 8064A920  4B CD DB 0C */	b checkPass__12J3DFrameCtrlFf
/* 8064A924  2C 03 00 00 */	cmpwi r3, 0
/* 8064A928  41 82 00 28 */	beq lbl_8064A950
/* 8064A92C  3B A0 00 01 */	li r29, 1
/* 8064A930  48 00 00 20 */	b lbl_8064A950
lbl_8064A934:
/* 8064A934  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8064A938  38 63 00 0C */	addi r3, r3, 0xc
/* 8064A93C  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 8064A940  4B CD DA EC */	b checkPass__12J3DFrameCtrlFf
/* 8064A944  2C 03 00 00 */	cmpwi r3, 0
/* 8064A948  41 82 00 08 */	beq lbl_8064A950
/* 8064A94C  3B A0 00 01 */	li r29, 1
lbl_8064A950:
/* 8064A950  2C 1D 00 00 */	cmpwi r29, 0
/* 8064A954  41 82 02 B4 */	beq lbl_8064AC08
/* 8064A958  7F C3 F3 78 */	mr r3, r30
/* 8064A95C  38 80 00 00 */	li r4, 0
/* 8064A960  4B FF 56 0D */	bl setTgHitBit__10daB_ZANT_cFi
/* 8064A964  88 7E 07 1C */	lbz r3, 0x71c(r30)
/* 8064A968  38 03 00 01 */	addi r0, r3, 1
/* 8064A96C  98 1E 07 1C */	stb r0, 0x71c(r30)
/* 8064A970  88 7E 07 12 */	lbz r3, 0x712(r30)
/* 8064A974  38 03 00 01 */	addi r0, r3, 1
/* 8064A978  98 1E 07 12 */	stb r0, 0x712(r30)
/* 8064A97C  88 1E 07 1C */	lbz r0, 0x71c(r30)
/* 8064A980  28 00 00 05 */	cmplwi r0, 5
/* 8064A984  40 80 00 10 */	bge lbl_8064A994
/* 8064A988  88 1E 07 12 */	lbz r0, 0x712(r30)
/* 8064A98C  28 00 00 03 */	cmplwi r0, 3
/* 8064A990  41 80 00 20 */	blt lbl_8064A9B0
lbl_8064A994:
/* 8064A994  38 00 00 07 */	li r0, 7
/* 8064A998  98 1E 07 03 */	stb r0, 0x703(r30)
/* 8064A99C  7F C3 F3 78 */	mr r3, r30
/* 8064A9A0  38 80 00 01 */	li r4, 1
/* 8064A9A4  38 A0 00 00 */	li r5, 0
/* 8064A9A8  4B FF DD D1 */	bl setLastWarp__10daB_ZANT_cFii
/* 8064A9AC  48 00 02 5C */	b lbl_8064AC08
lbl_8064A9B0:
/* 8064A9B0  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 8064A9B4  2C 00 00 13 */	cmpwi r0, 0x13
/* 8064A9B8  40 82 00 18 */	bne lbl_8064A9D0
/* 8064A9BC  7F C3 F3 78 */	mr r3, r30
/* 8064A9C0  38 80 00 02 */	li r4, 2
/* 8064A9C4  38 A0 00 00 */	li r5, 0
/* 8064A9C8  4B FF DD B1 */	bl setLastWarp__10daB_ZANT_cFii
/* 8064A9CC  48 00 02 3C */	b lbl_8064AC08
lbl_8064A9D0:
/* 8064A9D0  7F C3 F3 78 */	mr r3, r30
/* 8064A9D4  38 80 00 01 */	li r4, 1
/* 8064A9D8  38 A0 00 00 */	li r5, 0
/* 8064A9DC  4B FF DD 9D */	bl setLastWarp__10daB_ZANT_cFii
/* 8064A9E0  48 00 02 28 */	b lbl_8064AC08
lbl_8064A9E4:
/* 8064A9E4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8064A9E8  38 63 00 0C */	addi r3, r3, 0xc
/* 8064A9EC  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8064A9F0  4B CD DA 3C */	b checkPass__12J3DFrameCtrlFf
/* 8064A9F4  2C 03 00 00 */	cmpwi r3, 0
/* 8064A9F8  41 82 00 2C */	beq lbl_8064AA24
/* 8064A9FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070448@ha */
/* 8064AA00  38 03 04 48 */	addi r0, r3, 0x0448 /* 0x00070448@l */
/* 8064AA04  90 01 00 0C */	stw r0, 0xc(r1)
/* 8064AA08  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8064AA0C  38 81 00 0C */	addi r4, r1, 0xc
/* 8064AA10  38 A0 FF FF */	li r5, -1
/* 8064AA14  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 8064AA18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8064AA1C  7D 89 03 A6 */	mtctr r12
/* 8064AA20  4E 80 04 21 */	bctrl 
lbl_8064AA24:
/* 8064AA24  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 8064AA28  2C 00 00 13 */	cmpwi r0, 0x13
/* 8064AA2C  40 82 00 24 */	bne lbl_8064AA50
/* 8064AA30  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8064AA34  38 63 00 0C */	addi r3, r3, 0xc
/* 8064AA38  C0 3F 01 F4 */	lfs f1, 0x1f4(r31)
/* 8064AA3C  4B CD D9 F0 */	b checkPass__12J3DFrameCtrlFf
/* 8064AA40  2C 03 00 00 */	cmpwi r3, 0
/* 8064AA44  41 82 00 28 */	beq lbl_8064AA6C
/* 8064AA48  3B A0 00 01 */	li r29, 1
/* 8064AA4C  48 00 00 20 */	b lbl_8064AA6C
lbl_8064AA50:
/* 8064AA50  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8064AA54  38 63 00 0C */	addi r3, r3, 0xc
/* 8064AA58  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8064AA5C  4B CD D9 D0 */	b checkPass__12J3DFrameCtrlFf
/* 8064AA60  2C 03 00 00 */	cmpwi r3, 0
/* 8064AA64  41 82 00 08 */	beq lbl_8064AA6C
/* 8064AA68  3B A0 00 01 */	li r29, 1
lbl_8064AA6C:
/* 8064AA6C  2C 1D 00 00 */	cmpwi r29, 0
/* 8064AA70  41 82 01 98 */	beq lbl_8064AC08
/* 8064AA74  7F C3 F3 78 */	mr r3, r30
/* 8064AA78  38 80 00 00 */	li r4, 0
/* 8064AA7C  4B FF 54 F1 */	bl setTgHitBit__10daB_ZANT_cFi
/* 8064AA80  88 7E 07 1C */	lbz r3, 0x71c(r30)
/* 8064AA84  38 03 00 01 */	addi r0, r3, 1
/* 8064AA88  98 1E 07 1C */	stb r0, 0x71c(r30)
/* 8064AA8C  88 7E 07 12 */	lbz r3, 0x712(r30)
/* 8064AA90  38 03 00 01 */	addi r0, r3, 1
/* 8064AA94  98 1E 07 12 */	stb r0, 0x712(r30)
/* 8064AA98  88 1E 07 1C */	lbz r0, 0x71c(r30)
/* 8064AA9C  28 00 00 05 */	cmplwi r0, 5
/* 8064AAA0  40 80 00 10 */	bge lbl_8064AAB0
/* 8064AAA4  88 1E 07 12 */	lbz r0, 0x712(r30)
/* 8064AAA8  28 00 00 03 */	cmplwi r0, 3
/* 8064AAAC  41 80 00 20 */	blt lbl_8064AACC
lbl_8064AAB0:
/* 8064AAB0  38 00 00 07 */	li r0, 7
/* 8064AAB4  98 1E 07 03 */	stb r0, 0x703(r30)
/* 8064AAB8  7F C3 F3 78 */	mr r3, r30
/* 8064AABC  38 80 00 01 */	li r4, 1
/* 8064AAC0  38 A0 00 00 */	li r5, 0
/* 8064AAC4  4B FF DC B5 */	bl setLastWarp__10daB_ZANT_cFii
/* 8064AAC8  48 00 01 40 */	b lbl_8064AC08
lbl_8064AACC:
/* 8064AACC  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 8064AAD0  2C 00 00 13 */	cmpwi r0, 0x13
/* 8064AAD4  40 82 00 18 */	bne lbl_8064AAEC
/* 8064AAD8  7F C3 F3 78 */	mr r3, r30
/* 8064AADC  38 80 00 02 */	li r4, 2
/* 8064AAE0  38 A0 00 00 */	li r5, 0
/* 8064AAE4  4B FF DC 95 */	bl setLastWarp__10daB_ZANT_cFii
/* 8064AAE8  48 00 01 20 */	b lbl_8064AC08
lbl_8064AAEC:
/* 8064AAEC  7F C3 F3 78 */	mr r3, r30
/* 8064AAF0  38 80 00 01 */	li r4, 1
/* 8064AAF4  38 A0 00 00 */	li r5, 0
/* 8064AAF8  4B FF DC 81 */	bl setLastWarp__10daB_ZANT_cFii
/* 8064AAFC  48 00 01 0C */	b lbl_8064AC08
lbl_8064AB00:
/* 8064AB00  38 00 00 04 */	li r0, 4
/* 8064AB04  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8064AB08  38 80 00 14 */	li r4, 0x14
/* 8064AB0C  38 A0 00 00 */	li r5, 0
/* 8064AB10  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8064AB14  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8064AB18  4B FF 3A AD */	bl setBck__10daB_ZANT_cFiUcff
/* 8064AB1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070412@ha */
/* 8064AB20  38 03 04 12 */	addi r0, r3, 0x0412 /* 0x00070412@l */
/* 8064AB24  90 01 00 08 */	stw r0, 8(r1)
/* 8064AB28  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8064AB2C  38 81 00 08 */	addi r4, r1, 8
/* 8064AB30  38 A0 FF FF */	li r5, -1
/* 8064AB34  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 8064AB38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8064AB3C  7D 89 03 A6 */	mtctr r12
/* 8064AB40  4E 80 04 21 */	bctrl 
/* 8064AB44  38 00 00 0B */	li r0, 0xb
/* 8064AB48  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 8064AB4C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8064AB50  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8064AB54  48 00 00 B4 */	b lbl_8064AC08
lbl_8064AB58:
/* 8064AB58  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8064AB5C  38 80 00 01 */	li r4, 1
/* 8064AB60  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8064AB64  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8064AB68  40 82 00 18 */	bne lbl_8064AB80
/* 8064AB6C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8064AB70  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8064AB74  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8064AB78  41 82 00 08 */	beq lbl_8064AB80
/* 8064AB7C  38 80 00 00 */	li r4, 0
lbl_8064AB80:
/* 8064AB80  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8064AB84  41 82 00 84 */	beq lbl_8064AC08
/* 8064AB88  7F C3 F3 78 */	mr r3, r30
/* 8064AB8C  38 80 00 00 */	li r4, 0
/* 8064AB90  4B FF 53 DD */	bl setTgHitBit__10daB_ZANT_cFi
/* 8064AB94  7F C3 F3 78 */	mr r3, r30
/* 8064AB98  38 80 00 01 */	li r4, 1
/* 8064AB9C  38 A0 00 00 */	li r5, 0
/* 8064ABA0  4B FF DB D9 */	bl setLastWarp__10daB_ZANT_cFii
/* 8064ABA4  48 00 00 64 */	b lbl_8064AC08
lbl_8064ABA8:
/* 8064ABA8  38 80 00 0A */	li r4, 0xa
/* 8064ABAC  38 A0 00 02 */	li r5, 2
/* 8064ABB0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8064ABB4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8064ABB8  4B FF 3A 0D */	bl setBck__10daB_ZANT_cFiUcff
/* 8064ABBC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8064ABC0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8064ABC4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8064ABC8  38 00 00 00 */	li r0, 0
/* 8064ABCC  98 1E 07 02 */	stb r0, 0x702(r30)
/* 8064ABD0  38 00 00 14 */	li r0, 0x14
/* 8064ABD4  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 8064ABD8  38 00 00 15 */	li r0, 0x15
/* 8064ABDC  90 1E 06 DC */	stw r0, 0x6dc(r30)
lbl_8064ABE0:
/* 8064ABE0  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 8064ABE4  2C 00 00 00 */	cmpwi r0, 0
/* 8064ABE8  40 82 00 20 */	bne lbl_8064AC08
/* 8064ABEC  7F C3 F3 78 */	mr r3, r30
/* 8064ABF0  38 80 00 00 */	li r4, 0
/* 8064ABF4  4B FF 53 79 */	bl setTgHitBit__10daB_ZANT_cFi
/* 8064ABF8  7F C3 F3 78 */	mr r3, r30
/* 8064ABFC  38 80 00 01 */	li r4, 1
/* 8064AC00  38 A0 00 00 */	li r5, 0
/* 8064AC04  4B FF DB 75 */	bl setLastWarp__10daB_ZANT_cFii
lbl_8064AC08:
/* 8064AC08  39 61 00 30 */	addi r11, r1, 0x30
/* 8064AC0C  4B D1 76 1C */	b _restgpr_29
/* 8064AC10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8064AC14  7C 08 03 A6 */	mtlr r0
/* 8064AC18  38 21 00 30 */	addi r1, r1, 0x30
/* 8064AC1C  4E 80 00 20 */	blr 
