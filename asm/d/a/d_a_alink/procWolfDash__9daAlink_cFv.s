lbl_8012D590:
/* 8012D590  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012D594  7C 08 02 A6 */	mflr r0
/* 8012D598  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012D59C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012D5A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012D5A4  7C 7E 1B 78 */	mr r30, r3
/* 8012D5A8  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8012D5AC  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 8012D5B0  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 8012D5B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012D5B8  38 81 00 08 */	addi r4, r1, 8
/* 8012D5BC  4B F8 4A 1D */	bl getSlidePolygon__9daAlink_cFP8cM3dGPla
/* 8012D5C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012D5C4  41 82 00 20 */	beq lbl_8012D5E4
/* 8012D5C8  7F C3 F3 78 */	mr r3, r30
/* 8012D5CC  38 80 00 00 */	li r4, 0
/* 8012D5D0  4B FF C5 75 */	bl checkNextActionWolf__9daAlink_cFi
/* 8012D5D4  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 8012D5D8  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 8012D5DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012D5E0  48 00 02 C8 */	b lbl_8012D8A8
lbl_8012D5E4:
/* 8012D5E4  7F C3 F3 78 */	mr r3, r30
/* 8012D5E8  4B FF A9 39 */	bl checkWolfSlowDash__9daAlink_cFv
/* 8012D5EC  2C 03 00 00 */	cmpwi r3, 0
/* 8012D5F0  41 82 00 14 */	beq lbl_8012D604
/* 8012D5F4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D5F8  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D5FC  C0 43 00 EC */	lfs f2, 0xec(r3)
/* 8012D600  48 00 00 2C */	b lbl_8012D62C
lbl_8012D604:
/* 8012D604  88 1E 2F C7 */	lbz r0, 0x2fc7(r30)
/* 8012D608  28 00 00 02 */	cmplwi r0, 2
/* 8012D60C  40 82 00 14 */	bne lbl_8012D620
/* 8012D610  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D614  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D618  C0 43 00 FC */	lfs f2, 0xfc(r3)
/* 8012D61C  48 00 00 10 */	b lbl_8012D62C
lbl_8012D620:
/* 8012D620  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D624  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D628  C0 43 00 D0 */	lfs f2, 0xd0(r3)
lbl_8012D62C:
/* 8012D62C  38 7E 33 98 */	addi r3, r30, 0x3398
/* 8012D630  C0 3E 05 94 */	lfs f1, 0x594(r30)
/* 8012D634  48 14 31 0D */	bl cLib_chaseF__FPfff
/* 8012D638  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 8012D63C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8012D640  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012D644  40 81 00 2C */	ble lbl_8012D670
/* 8012D648  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8012D64C  A8 9E 2F E2 */	lha r4, 0x2fe2(r30)
/* 8012D650  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D654  38 E5 EE 28 */	addi r7, r5, m__20daAlinkHIO_wlMove_c0@l
/* 8012D658  A8 A7 00 54 */	lha r5, 0x54(r7)
/* 8012D65C  A8 C7 00 50 */	lha r6, 0x50(r7)
/* 8012D660  A8 E7 00 52 */	lha r7, 0x52(r7)
/* 8012D664  48 14 2E DD */	bl cLib_addCalcAngleS__FPsssss
/* 8012D668  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8012D66C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_8012D670:
/* 8012D670  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8012D674  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 8012D678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012D67C  40 81 00 2C */	ble lbl_8012D6A8
/* 8012D680  7F C3 F3 78 */	mr r3, r30
/* 8012D684  38 80 00 01 */	li r4, 1
/* 8012D688  4B FF CB A1 */	bl checkWolfAttackReverse__9daAlink_cFi
/* 8012D68C  2C 03 00 00 */	cmpwi r3, 0
/* 8012D690  41 82 00 18 */	beq lbl_8012D6A8
/* 8012D694  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8012D698  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8012D69C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012D6A0  38 60 00 01 */	li r3, 1
/* 8012D6A4  48 00 02 04 */	b lbl_8012D8A8
lbl_8012D6A8:
/* 8012D6A8  7F C3 F3 78 */	mr r3, r30
/* 8012D6AC  4B F8 50 0D */	bl swordSwingTrigger__9daAlink_cFv
/* 8012D6B0  2C 03 00 00 */	cmpwi r3, 0
/* 8012D6B4  41 82 00 0C */	beq lbl_8012D6C0
/* 8012D6B8  38 00 00 01 */	li r0, 1
/* 8012D6BC  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_8012D6C0:
/* 8012D6C0  7F E3 FB 78 */	mr r3, r31
/* 8012D6C4  48 03 0E 09 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012D6C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012D6CC  41 82 00 98 */	beq lbl_8012D764
/* 8012D6D0  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 8012D6D4  2C 00 00 00 */	cmpwi r0, 0
/* 8012D6D8  41 82 00 1C */	beq lbl_8012D6F4
/* 8012D6DC  7F C3 F3 78 */	mr r3, r30
/* 8012D6E0  48 00 BC C5 */	bl checkWolfAttackAction__9daAlink_cFv
/* 8012D6E4  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 8012D6E8  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 8012D6EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012D6F0  48 00 01 B8 */	b lbl_8012D8A8
lbl_8012D6F4:
/* 8012D6F4  7F C3 F3 78 */	mr r3, r30
/* 8012D6F8  4B FF A8 29 */	bl checkWolfSlowDash__9daAlink_cFv
/* 8012D6FC  2C 03 00 00 */	cmpwi r3, 0
/* 8012D700  41 82 00 18 */	beq lbl_8012D718
/* 8012D704  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D708  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D70C  A8 03 00 5C */	lha r0, 0x5c(r3)
/* 8012D710  B0 1E 30 D2 */	sth r0, 0x30d2(r30)
/* 8012D714  48 00 00 34 */	b lbl_8012D748
lbl_8012D718:
/* 8012D718  88 1E 2F C7 */	lbz r0, 0x2fc7(r30)
/* 8012D71C  28 00 00 02 */	cmplwi r0, 2
/* 8012D720  40 82 00 18 */	bne lbl_8012D738
/* 8012D724  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D728  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D72C  A8 03 00 60 */	lha r0, 0x60(r3)
/* 8012D730  B0 1E 30 D2 */	sth r0, 0x30d2(r30)
/* 8012D734  48 00 00 14 */	b lbl_8012D748
lbl_8012D738:
/* 8012D738  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D73C  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D740  A8 03 00 58 */	lha r0, 0x58(r3)
/* 8012D744  B0 1E 30 D2 */	sth r0, 0x30d2(r30)
lbl_8012D748:
/* 8012D748  7F C3 F3 78 */	mr r3, r30
/* 8012D74C  38 80 00 00 */	li r4, 0
/* 8012D750  4B FF C3 F5 */	bl checkNextActionWolf__9daAlink_cFi
/* 8012D754  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 8012D758  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 8012D75C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012D760  48 00 01 48 */	b lbl_8012D8A8
lbl_8012D764:
/* 8012D764  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8012D768  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D76C  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D770  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8012D774  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012D778  40 81 00 9C */	ble lbl_8012D814
/* 8012D77C  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 8012D780  2C 00 00 00 */	cmpwi r0, 0
/* 8012D784  41 82 00 1C */	beq lbl_8012D7A0
/* 8012D788  7F C3 F3 78 */	mr r3, r30
/* 8012D78C  48 00 BC 19 */	bl checkWolfAttackAction__9daAlink_cFv
/* 8012D790  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 8012D794  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 8012D798  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012D79C  48 00 01 0C */	b lbl_8012D8A8
lbl_8012D7A0:
/* 8012D7A0  7F C3 F3 78 */	mr r3, r30
/* 8012D7A4  4B FF A7 7D */	bl checkWolfSlowDash__9daAlink_cFv
/* 8012D7A8  2C 03 00 00 */	cmpwi r3, 0
/* 8012D7AC  41 82 00 18 */	beq lbl_8012D7C4
/* 8012D7B0  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D7B4  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D7B8  A8 03 00 5C */	lha r0, 0x5c(r3)
/* 8012D7BC  B0 1E 30 D2 */	sth r0, 0x30d2(r30)
/* 8012D7C0  48 00 00 34 */	b lbl_8012D7F4
lbl_8012D7C4:
/* 8012D7C4  88 1E 2F C7 */	lbz r0, 0x2fc7(r30)
/* 8012D7C8  28 00 00 02 */	cmplwi r0, 2
/* 8012D7CC  40 82 00 18 */	bne lbl_8012D7E4
/* 8012D7D0  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D7D4  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D7D8  A8 03 00 60 */	lha r0, 0x60(r3)
/* 8012D7DC  B0 1E 30 D2 */	sth r0, 0x30d2(r30)
/* 8012D7E0  48 00 00 14 */	b lbl_8012D7F4
lbl_8012D7E4:
/* 8012D7E4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D7E8  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D7EC  A8 03 00 58 */	lha r0, 0x58(r3)
/* 8012D7F0  B0 1E 30 D2 */	sth r0, 0x30d2(r30)
lbl_8012D7F4:
/* 8012D7F4  7F C3 F3 78 */	mr r3, r30
/* 8012D7F8  38 80 00 01 */	li r4, 1
/* 8012D7FC  4B FF C3 49 */	bl checkNextActionWolf__9daAlink_cFi
/* 8012D800  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8012D804  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8012D808  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012D80C  38 60 00 01 */	li r3, 1
/* 8012D810  48 00 00 98 */	b lbl_8012D8A8
lbl_8012D814:
/* 8012D814  7F E3 FB 78 */	mr r3, r31
/* 8012D818  C0 22 93 D8 */	lfs f1, lit_11470(r2)
/* 8012D81C  48 1F AC 11 */	bl checkPass__12J3DFrameCtrlFf
/* 8012D820  2C 03 00 00 */	cmpwi r3, 0
/* 8012D824  40 82 00 18 */	bne lbl_8012D83C
/* 8012D828  7F E3 FB 78 */	mr r3, r31
/* 8012D82C  C0 22 93 48 */	lfs f1, lit_8130(r2)
/* 8012D830  48 1F AB FD */	bl checkPass__12J3DFrameCtrlFf
/* 8012D834  2C 03 00 00 */	cmpwi r3, 0
/* 8012D838  41 82 00 1C */	beq lbl_8012D854
lbl_8012D83C:
/* 8012D83C  38 00 00 60 */	li r0, 0x60
/* 8012D840  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 8012D844  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 8012D848  60 00 00 30 */	ori r0, r0, 0x30
/* 8012D84C  90 1E 05 84 */	stw r0, 0x584(r30)
/* 8012D850  48 00 00 40 */	b lbl_8012D890
lbl_8012D854:
/* 8012D854  7F E3 FB 78 */	mr r3, r31
/* 8012D858  C0 22 93 8C */	lfs f1, lit_8783(r2)
/* 8012D85C  48 1F AB D1 */	bl checkPass__12J3DFrameCtrlFf
/* 8012D860  2C 03 00 00 */	cmpwi r3, 0
/* 8012D864  40 82 00 18 */	bne lbl_8012D87C
/* 8012D868  7F E3 FB 78 */	mr r3, r31
/* 8012D86C  C0 22 97 60 */	lfs f1, lit_46081(r2)
/* 8012D870  48 1F AB BD */	bl checkPass__12J3DFrameCtrlFf
/* 8012D874  2C 03 00 00 */	cmpwi r3, 0
/* 8012D878  41 82 00 18 */	beq lbl_8012D890
lbl_8012D87C:
/* 8012D87C  38 00 00 18 */	li r0, 0x18
/* 8012D880  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 8012D884  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 8012D888  60 00 00 0C */	ori r0, r0, 0xc
/* 8012D88C  90 1E 05 84 */	stw r0, 0x584(r30)
lbl_8012D890:
/* 8012D890  A8 1E 2F EC */	lha r0, 0x2fec(r30)
/* 8012D894  B0 1E 30 A2 */	sth r0, 0x30a2(r30)
/* 8012D898  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8012D89C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8012D8A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012D8A4  38 60 00 01 */	li r3, 1
lbl_8012D8A8:
/* 8012D8A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012D8AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8012D8B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012D8B4  7C 08 03 A6 */	mtlr r0
/* 8012D8B8  38 21 00 30 */	addi r1, r1, 0x30
/* 8012D8BC  4E 80 00 20 */	blr 
