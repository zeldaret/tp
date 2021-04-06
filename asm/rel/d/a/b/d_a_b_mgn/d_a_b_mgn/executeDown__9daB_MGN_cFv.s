lbl_8060A72C:
/* 8060A72C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060A730  7C 08 02 A6 */	mflr r0
/* 8060A734  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060A738  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8060A73C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8060A740  7C 7E 1B 78 */	mr r30, r3
/* 8060A744  3C 80 80 61 */	lis r4, lit_3928@ha /* 0x8060FDE0@ha */
/* 8060A748  3B E4 FD E0 */	addi r31, r4, lit_3928@l /* 0x8060FDE0@l */
/* 8060A74C  88 03 0A FA */	lbz r0, 0xafa(r3)
/* 8060A750  28 00 00 08 */	cmplwi r0, 8
/* 8060A754  41 81 05 4C */	bgt lbl_8060ACA0
/* 8060A758  3C 80 80 61 */	lis r4, lit_6423@ha /* 0x806102A4@ha */
/* 8060A75C  38 84 02 A4 */	addi r4, r4, lit_6423@l /* 0x806102A4@l */
/* 8060A760  54 00 10 3A */	slwi r0, r0, 2
/* 8060A764  7C 04 00 2E */	lwzx r0, r4, r0
/* 8060A768  7C 09 03 A6 */	mtctr r0
/* 8060A76C  4E 80 04 20 */	bctr 
lbl_8060A770:
/* 8060A770  38 00 00 04 */	li r0, 4
/* 8060A774  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8060A778  80 1E 21 0C */	lwz r0, 0x210c(r30)
/* 8060A77C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8060A780  90 1E 21 0C */	stw r0, 0x210c(r30)
/* 8060A784  80 1E 1F BC */	lwz r0, 0x1fbc(r30)
/* 8060A788  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8060A78C  90 1E 1F BC */	stw r0, 0x1fbc(r30)
/* 8060A790  38 00 00 01 */	li r0, 1
/* 8060A794  98 1E 0A FD */	stb r0, 0xafd(r30)
/* 8060A798  88 1E 0A FA */	lbz r0, 0xafa(r30)
/* 8060A79C  98 1E 0A FC */	stb r0, 0xafc(r30)
/* 8060A7A0  88 1E 0A FC */	lbz r0, 0xafc(r30)
/* 8060A7A4  28 00 00 00 */	cmplwi r0, 0
/* 8060A7A8  40 82 00 20 */	bne lbl_8060A7C8
/* 8060A7AC  7F C3 F3 78 */	mr r3, r30
/* 8060A7B0  38 80 00 12 */	li r4, 0x12
/* 8060A7B4  38 A0 00 00 */	li r5, 0
/* 8060A7B8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060A7BC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060A7C0  4B FF D1 65 */	bl setBck__9daB_MGN_cFiUcff
/* 8060A7C4  48 00 00 1C */	b lbl_8060A7E0
lbl_8060A7C8:
/* 8060A7C8  7F C3 F3 78 */	mr r3, r30
/* 8060A7CC  38 80 00 0B */	li r4, 0xb
/* 8060A7D0  38 A0 00 00 */	li r5, 0
/* 8060A7D4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060A7D8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060A7DC  4B FF D1 49 */	bl setBck__9daB_MGN_cFiUcff
lbl_8060A7E0:
/* 8060A7E0  38 00 00 01 */	li r0, 1
/* 8060A7E4  98 1E 0B 01 */	stb r0, 0xb01(r30)
/* 8060A7E8  38 00 00 02 */	li r0, 2
/* 8060A7EC  98 1E 0A FA */	stb r0, 0xafa(r30)
/* 8060A7F0  7F C3 F3 78 */	mr r3, r30
/* 8060A7F4  4B FF D3 BD */	bl onBodySlideAt__9daB_MGN_cFv
/* 8060A7F8  38 00 00 00 */	li r0, 0
/* 8060A7FC  98 1E 0B 03 */	stb r0, 0xb03(r30)
lbl_8060A800:
/* 8060A800  88 1E 0B 03 */	lbz r0, 0xb03(r30)
/* 8060A804  28 00 00 00 */	cmplwi r0, 0
/* 8060A808  40 82 00 1C */	bne lbl_8060A824
/* 8060A80C  7F C3 F3 78 */	mr r3, r30
/* 8060A810  4B FF D4 11 */	bl checkHitSlideAt__9daB_MGN_cFv
/* 8060A814  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8060A818  41 82 00 0C */	beq lbl_8060A824
/* 8060A81C  38 00 00 01 */	li r0, 1
/* 8060A820  98 1E 0B 03 */	stb r0, 0xb03(r30)
lbl_8060A824:
/* 8060A824  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060A828  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8060A82C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8060A830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060A834  4C 41 13 82 */	cror 2, 1, 2
/* 8060A838  40 82 00 10 */	bne lbl_8060A848
/* 8060A83C  7F C3 F3 78 */	mr r3, r30
/* 8060A840  4B FF BB E5 */	bl setBodySlideEffect__9daB_MGN_cFv
/* 8060A844  48 00 00 0C */	b lbl_8060A850
lbl_8060A848:
/* 8060A848  7F C3 F3 78 */	mr r3, r30
/* 8060A84C  4B FF CA 51 */	bl setBloodEffect__9daB_MGN_cFv
lbl_8060A850:
/* 8060A850  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060A854  38 63 00 0C */	addi r3, r3, 0xc
/* 8060A858  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 8060A85C  4B D1 DB D1 */	bl checkPass__12J3DFrameCtrlFf
/* 8060A860  2C 03 00 00 */	cmpwi r3, 0
/* 8060A864  40 82 00 1C */	bne lbl_8060A880
/* 8060A868  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060A86C  38 63 00 0C */	addi r3, r3, 0xc
/* 8060A870  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 8060A874  4B D1 DB B9 */	bl checkPass__12J3DFrameCtrlFf
/* 8060A878  2C 03 00 00 */	cmpwi r3, 0
/* 8060A87C  41 82 00 60 */	beq lbl_8060A8DC
lbl_8060A880:
/* 8060A880  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060A884  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8060A888  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8060A88C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8060A890  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8060A894  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060A898  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060A89C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060A8A0  38 80 00 08 */	li r4, 8
/* 8060A8A4  38 A0 00 1F */	li r5, 0x1f
/* 8060A8A8  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8060A8AC  4B A6 51 79 */	bl StartShock__12dVibration_cFii4cXyz
/* 8060A8B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F6@ha */
/* 8060A8B4  38 03 04 F6 */	addi r0, r3, 0x04F6 /* 0x000704F6@l */
/* 8060A8B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060A8BC  38 7E 09 E0 */	addi r3, r30, 0x9e0
/* 8060A8C0  38 81 00 0C */	addi r4, r1, 0xc
/* 8060A8C4  38 A0 00 00 */	li r5, 0
/* 8060A8C8  38 C0 FF FF */	li r6, -1
/* 8060A8CC  81 9E 09 E0 */	lwz r12, 0x9e0(r30)
/* 8060A8D0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8060A8D4  7D 89 03 A6 */	mtctr r12
/* 8060A8D8  4E 80 04 21 */	bctrl 
lbl_8060A8DC:
/* 8060A8DC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060A8E0  38 80 00 01 */	li r4, 1
/* 8060A8E4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060A8E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060A8EC  40 82 00 18 */	bne lbl_8060A904
/* 8060A8F0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060A8F4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060A8F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060A8FC  41 82 00 08 */	beq lbl_8060A904
/* 8060A900  38 80 00 00 */	li r4, 0
lbl_8060A904:
/* 8060A904  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060A908  41 82 03 98 */	beq lbl_8060ACA0
/* 8060A90C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060A910  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8060A914  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8060A918  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8060A91C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8060A920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060A924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060A928  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060A92C  38 80 00 03 */	li r4, 3
/* 8060A930  38 A0 00 1F */	li r5, 0x1f
/* 8060A934  38 C1 00 10 */	addi r6, r1, 0x10
/* 8060A938  4B A6 51 D9 */	bl StartQuake__12dVibration_cFii4cXyz
/* 8060A93C  88 1E 0A FC */	lbz r0, 0xafc(r30)
/* 8060A940  28 00 00 00 */	cmplwi r0, 0
/* 8060A944  40 82 00 20 */	bne lbl_8060A964
/* 8060A948  7F C3 F3 78 */	mr r3, r30
/* 8060A94C  38 80 00 14 */	li r4, 0x14
/* 8060A950  38 A0 00 02 */	li r5, 2
/* 8060A954  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060A958  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060A95C  4B FF CF C9 */	bl setBck__9daB_MGN_cFiUcff
/* 8060A960  48 00 00 1C */	b lbl_8060A97C
lbl_8060A964:
/* 8060A964  7F C3 F3 78 */	mr r3, r30
/* 8060A968  38 80 00 0D */	li r4, 0xd
/* 8060A96C  38 A0 00 02 */	li r5, 2
/* 8060A970  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060A974  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060A978  4B FF CF AD */	bl setBck__9daB_MGN_cFiUcff
lbl_8060A97C:
/* 8060A97C  38 00 00 03 */	li r0, 3
/* 8060A980  98 1E 0A FA */	stb r0, 0xafa(r30)
/* 8060A984  48 00 03 1C */	b lbl_8060ACA0
lbl_8060A988:
/* 8060A988  88 1E 0B 03 */	lbz r0, 0xb03(r30)
/* 8060A98C  28 00 00 00 */	cmplwi r0, 0
/* 8060A990  40 82 00 18 */	bne lbl_8060A9A8
/* 8060A994  4B FF D2 8D */	bl checkHitSlideAt__9daB_MGN_cFv
/* 8060A998  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8060A99C  41 82 00 0C */	beq lbl_8060A9A8
/* 8060A9A0  38 00 00 01 */	li r0, 1
/* 8060A9A4  98 1E 0B 03 */	stb r0, 0xb03(r30)
lbl_8060A9A8:
/* 8060A9A8  7F C3 F3 78 */	mr r3, r30
/* 8060A9AC  4B FF BA 79 */	bl setBodySlideEffect__9daB_MGN_cFv
/* 8060A9B0  88 1E 0B 03 */	lbz r0, 0xb03(r30)
/* 8060A9B4  28 00 00 00 */	cmplwi r0, 0
/* 8060A9B8  40 82 00 18 */	bne lbl_8060A9D0
/* 8060A9BC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8060A9C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060A9C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060A9C8  4B C6 5D 79 */	bl cLib_chaseF__FPfff
/* 8060A9CC  48 00 00 14 */	b lbl_8060A9E0
lbl_8060A9D0:
/* 8060A9D0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8060A9D4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060A9D8  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8060A9DC  4B C6 5D 65 */	bl cLib_chaseF__FPfff
lbl_8060A9E0:
/* 8060A9E0  80 1E 0B 88 */	lwz r0, 0xb88(r30)
/* 8060A9E4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8060A9E8  41 82 00 30 */	beq lbl_8060AA18
/* 8060A9EC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8060A9F0  A8 1E 0B 58 */	lha r0, 0xb58(r30)
/* 8060A9F4  7C 03 00 50 */	subf r0, r3, r0
/* 8060A9F8  7C 03 07 34 */	extsh r3, r0
/* 8060A9FC  4B D5 A6 D5 */	bl abs
/* 8060AA00  2C 03 60 00 */	cmpwi r3, 0x6000
/* 8060AA04  40 81 00 14 */	ble lbl_8060AA18
/* 8060AA08  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8060AA0C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060AA10  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 8060AA14  4B C6 5D 2D */	bl cLib_chaseF__FPfff
lbl_8060AA18:
/* 8060AA18  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8060AA1C  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 8060AA20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060AA24  40 80 00 68 */	bge lbl_8060AA8C
/* 8060AA28  88 1E 0B 03 */	lbz r0, 0xb03(r30)
/* 8060AA2C  28 00 00 00 */	cmplwi r0, 0
/* 8060AA30  40 82 00 10 */	bne lbl_8060AA40
/* 8060AA34  38 00 00 78 */	li r0, 0x78
/* 8060AA38  90 1E 0A A0 */	stw r0, 0xaa0(r30)
/* 8060AA3C  48 00 00 0C */	b lbl_8060AA48
lbl_8060AA40:
/* 8060AA40  38 00 00 78 */	li r0, 0x78
/* 8060AA44  90 1E 0A A0 */	stw r0, 0xaa0(r30)
lbl_8060AA48:
/* 8060AA48  38 00 00 00 */	li r0, 0
/* 8060AA4C  98 1E 0B 08 */	stb r0, 0xb08(r30)
/* 8060AA50  38 00 00 04 */	li r0, 4
/* 8060AA54  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8060AA58  80 1E 21 0C */	lwz r0, 0x210c(r30)
/* 8060AA5C  60 00 00 01 */	ori r0, r0, 1
/* 8060AA60  90 1E 21 0C */	stw r0, 0x210c(r30)
/* 8060AA64  80 1E 22 44 */	lwz r0, 0x2244(r30)
/* 8060AA68  60 00 00 01 */	ori r0, r0, 1
/* 8060AA6C  90 1E 22 44 */	stw r0, 0x2244(r30)
/* 8060AA70  7F C3 F3 78 */	mr r3, r30
/* 8060AA74  4B FF D1 89 */	bl offBodySlideAt__9daB_MGN_cFv
/* 8060AA78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060AA7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060AA80  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060AA84  38 80 00 1F */	li r4, 0x1f
/* 8060AA88  4B A6 53 0D */	bl StopQuake__12dVibration_cFi
lbl_8060AA8C:
/* 8060AA8C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8060AA90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8060AA94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060AA98  40 82 02 08 */	bne lbl_8060ACA0
/* 8060AA9C  38 00 00 05 */	li r0, 5
/* 8060AAA0  98 1E 0A FA */	stb r0, 0xafa(r30)
/* 8060AAA4  48 00 01 FC */	b lbl_8060ACA0
lbl_8060AAA8:
/* 8060AAA8  88 1E 0A FC */	lbz r0, 0xafc(r30)
/* 8060AAAC  28 00 00 00 */	cmplwi r0, 0
/* 8060AAB0  40 82 00 1C */	bne lbl_8060AACC
/* 8060AAB4  38 80 00 17 */	li r4, 0x17
/* 8060AAB8  38 A0 00 02 */	li r5, 2
/* 8060AABC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8060AAC0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060AAC4  4B FF CE 61 */	bl setBck__9daB_MGN_cFiUcff
/* 8060AAC8  48 00 00 18 */	b lbl_8060AAE0
lbl_8060AACC:
/* 8060AACC  38 80 00 11 */	li r4, 0x11
/* 8060AAD0  38 A0 00 02 */	li r5, 2
/* 8060AAD4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8060AAD8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060AADC  4B FF CE 49 */	bl setBck__9daB_MGN_cFiUcff
lbl_8060AAE0:
/* 8060AAE0  38 00 00 06 */	li r0, 6
/* 8060AAE4  98 1E 0A FA */	stb r0, 0xafa(r30)
lbl_8060AAE8:
/* 8060AAE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060AAEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060AAF0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8060AAF4  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8060AAF8  28 00 00 39 */	cmplwi r0, 0x39
/* 8060AAFC  41 82 01 A4 */	beq lbl_8060ACA0
/* 8060AB00  80 1E 0A A0 */	lwz r0, 0xaa0(r30)
/* 8060AB04  2C 00 00 00 */	cmpwi r0, 0
/* 8060AB08  40 82 01 98 */	bne lbl_8060ACA0
/* 8060AB0C  7F C3 F3 78 */	mr r3, r30
/* 8060AB10  4B FF FB 61 */	bl setDownEnd__9daB_MGN_cFv
/* 8060AB14  48 00 01 8C */	b lbl_8060ACA0
lbl_8060AB18:
/* 8060AB18  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060AB1C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8060AB20  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8060AB24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060AB28  40 80 00 20 */	bge lbl_8060AB48
/* 8060AB2C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8060AB30  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8060AB34  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 8060AB38  4B C6 5C 09 */	bl cLib_chaseF__FPfff
/* 8060AB3C  7F C3 F3 78 */	mr r3, r30
/* 8060AB40  4B FF B8 E5 */	bl setBodySlideEffect__9daB_MGN_cFv
/* 8060AB44  48 00 00 14 */	b lbl_8060AB58
lbl_8060AB48:
/* 8060AB48  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8060AB4C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060AB50  C0 5F 01 2C */	lfs f2, 0x12c(r31)
/* 8060AB54  4B C6 5B ED */	bl cLib_chaseF__FPfff
lbl_8060AB58:
/* 8060AB58  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060AB5C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8060AB60  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 8060AB64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060AB68  4C 41 13 82 */	cror 2, 1, 2
/* 8060AB6C  40 82 00 0C */	bne lbl_8060AB78
/* 8060AB70  7F C3 F3 78 */	mr r3, r30
/* 8060AB74  4B FF C7 29 */	bl setBloodEffect__9daB_MGN_cFv
lbl_8060AB78:
/* 8060AB78  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060AB7C  38 80 00 01 */	li r4, 1
/* 8060AB80  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060AB84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060AB88  40 82 00 18 */	bne lbl_8060ABA0
/* 8060AB8C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060AB90  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060AB94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060AB98  41 82 00 08 */	beq lbl_8060ABA0
/* 8060AB9C  38 80 00 00 */	li r4, 0
lbl_8060ABA0:
/* 8060ABA0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060ABA4  41 82 00 FC */	beq lbl_8060ACA0
/* 8060ABA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FD@ha */
/* 8060ABAC  38 03 04 FD */	addi r0, r3, 0x04FD /* 0x000704FD@l */
/* 8060ABB0  90 01 00 08 */	stw r0, 8(r1)
/* 8060ABB4  38 7E 09 E0 */	addi r3, r30, 0x9e0
/* 8060ABB8  38 81 00 08 */	addi r4, r1, 8
/* 8060ABBC  38 A0 FF FF */	li r5, -1
/* 8060ABC0  81 9E 09 E0 */	lwz r12, 0x9e0(r30)
/* 8060ABC4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060ABC8  7D 89 03 A6 */	mtctr r12
/* 8060ABCC  4E 80 04 21 */	bctrl 
/* 8060ABD0  7F C3 F3 78 */	mr r3, r30
/* 8060ABD4  38 80 00 06 */	li r4, 6
/* 8060ABD8  38 A0 00 00 */	li r5, 0
/* 8060ABDC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060ABE0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060ABE4  4B FF CD 41 */	bl setBck__9daB_MGN_cFiUcff
/* 8060ABE8  38 00 00 08 */	li r0, 8
/* 8060ABEC  98 1E 0A FA */	stb r0, 0xafa(r30)
/* 8060ABF0  48 00 00 B0 */	b lbl_8060ACA0
lbl_8060ABF4:
/* 8060ABF4  4B FF C6 A9 */	bl setBloodEffect__9daB_MGN_cFv
/* 8060ABF8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060ABFC  38 80 00 01 */	li r4, 1
/* 8060AC00  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060AC04  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060AC08  40 82 00 18 */	bne lbl_8060AC20
/* 8060AC0C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060AC10  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060AC14  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060AC18  41 82 00 08 */	beq lbl_8060AC20
/* 8060AC1C  38 80 00 00 */	li r4, 0
lbl_8060AC20:
/* 8060AC20  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060AC24  41 82 00 7C */	beq lbl_8060ACA0
/* 8060AC28  88 1E 0A FF */	lbz r0, 0xaff(r30)
/* 8060AC2C  2C 00 00 04 */	cmpwi r0, 4
/* 8060AC30  41 82 00 4C */	beq lbl_8060AC7C
/* 8060AC34  40 80 00 5C */	bge lbl_8060AC90
/* 8060AC38  2C 00 00 02 */	cmpwi r0, 2
/* 8060AC3C  40 80 00 28 */	bge lbl_8060AC64
/* 8060AC40  2C 00 00 00 */	cmpwi r0, 0
/* 8060AC44  40 80 00 08 */	bge lbl_8060AC4C
/* 8060AC48  48 00 00 48 */	b lbl_8060AC90
lbl_8060AC4C:
/* 8060AC4C  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8060AC50  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 8060AC54  40 80 00 3C */	bge lbl_8060AC90
/* 8060AC58  38 00 00 02 */	li r0, 2
/* 8060AC5C  98 1E 0A FF */	stb r0, 0xaff(r30)
/* 8060AC60  48 00 00 30 */	b lbl_8060AC90
lbl_8060AC64:
/* 8060AC64  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8060AC68  2C 00 01 2C */	cmpwi r0, 0x12c
/* 8060AC6C  40 80 00 24 */	bge lbl_8060AC90
/* 8060AC70  38 00 00 04 */	li r0, 4
/* 8060AC74  98 1E 0A FF */	stb r0, 0xaff(r30)
/* 8060AC78  48 00 00 18 */	b lbl_8060AC90
lbl_8060AC7C:
/* 8060AC7C  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8060AC80  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8060AC84  40 80 00 0C */	bge lbl_8060AC90
/* 8060AC88  38 00 00 05 */	li r0, 5
/* 8060AC8C  98 1E 0A FF */	stb r0, 0xaff(r30)
lbl_8060AC90:
/* 8060AC90  7F C3 F3 78 */	mr r3, r30
/* 8060AC94  38 80 00 01 */	li r4, 1
/* 8060AC98  38 A0 00 01 */	li r5, 1
/* 8060AC9C  4B FF CD 91 */	bl setActionMode__9daB_MGN_cFii
lbl_8060ACA0:
/* 8060ACA0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8060ACA4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8060ACA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060ACAC  7C 08 03 A6 */	mtlr r0
/* 8060ACB0  38 21 00 30 */	addi r1, r1, 0x30
/* 8060ACB4  4E 80 00 20 */	blr 
