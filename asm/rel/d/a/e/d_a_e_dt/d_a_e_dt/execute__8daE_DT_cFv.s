lbl_806B4FD8:
/* 806B4FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B4FDC  7C 08 02 A6 */	mflr r0
/* 806B4FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B4FE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B4FE8  7C 7F 1B 78 */	mr r31, r3
/* 806B4FEC  80 63 07 58 */	lwz r3, 0x758(r3)
/* 806B4FF0  2C 03 00 00 */	cmpwi r3, 0
/* 806B4FF4  41 82 00 0C */	beq lbl_806B5000
/* 806B4FF8  38 03 FF FF */	addi r0, r3, -1
/* 806B4FFC  90 1F 07 58 */	stw r0, 0x758(r31)
lbl_806B5000:
/* 806B5000  80 7F 07 5C */	lwz r3, 0x75c(r31)
/* 806B5004  2C 03 00 00 */	cmpwi r3, 0
/* 806B5008  41 82 00 0C */	beq lbl_806B5014
/* 806B500C  38 03 FF FF */	addi r0, r3, -1
/* 806B5010  90 1F 07 5C */	stw r0, 0x75c(r31)
lbl_806B5014:
/* 806B5014  80 7F 07 60 */	lwz r3, 0x760(r31)
/* 806B5018  2C 03 00 00 */	cmpwi r3, 0
/* 806B501C  41 82 00 0C */	beq lbl_806B5028
/* 806B5020  38 03 FF FF */	addi r0, r3, -1
/* 806B5024  90 1F 07 60 */	stw r0, 0x760(r31)
lbl_806B5028:
/* 806B5028  80 7F 07 64 */	lwz r3, 0x764(r31)
/* 806B502C  2C 03 00 00 */	cmpwi r3, 0
/* 806B5030  41 82 00 0C */	beq lbl_806B503C
/* 806B5034  38 03 FF FF */	addi r0, r3, -1
/* 806B5038  90 1F 07 64 */	stw r0, 0x764(r31)
lbl_806B503C:
/* 806B503C  88 7F 07 6F */	lbz r3, 0x76f(r31)
/* 806B5040  28 03 00 00 */	cmplwi r3, 0
/* 806B5044  41 82 00 2C */	beq lbl_806B5070
/* 806B5048  38 03 FF FF */	addi r0, r3, -1
/* 806B504C  98 1F 07 6F */	stb r0, 0x76f(r31)
/* 806B5050  88 1F 07 6F */	lbz r0, 0x76f(r31)
/* 806B5054  28 00 00 00 */	cmplwi r0, 0
/* 806B5058  40 82 00 18 */	bne lbl_806B5070
/* 806B505C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B5060  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B5064  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806B5068  38 80 00 1F */	li r4, 0x1f
/* 806B506C  4B 9B AD 29 */	bl StopQuake__12dVibration_cFi
lbl_806B5070:
/* 806B5070  88 7F 07 6C */	lbz r3, 0x76c(r31)
/* 806B5074  28 03 00 00 */	cmplwi r3, 0
/* 806B5078  41 82 00 0C */	beq lbl_806B5084
/* 806B507C  38 03 FF FF */	addi r0, r3, -1
/* 806B5080  98 1F 07 6C */	stb r0, 0x76c(r31)
lbl_806B5084:
/* 806B5084  88 7F 07 6D */	lbz r3, 0x76d(r31)
/* 806B5088  28 03 00 00 */	cmplwi r3, 0
/* 806B508C  41 82 00 0C */	beq lbl_806B5098
/* 806B5090  38 03 FF FF */	addi r0, r3, -1
/* 806B5094  98 1F 07 6D */	stb r0, 0x76d(r31)
lbl_806B5098:
/* 806B5098  88 7F 07 6E */	lbz r3, 0x76e(r31)
/* 806B509C  28 03 00 00 */	cmplwi r3, 0
/* 806B50A0  41 82 00 0C */	beq lbl_806B50AC
/* 806B50A4  38 03 FF FF */	addi r0, r3, -1
/* 806B50A8  98 1F 07 6E */	stb r0, 0x76e(r31)
lbl_806B50AC:
/* 806B50AC  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 806B50B0  2C 03 00 00 */	cmpwi r3, 0
/* 806B50B4  41 82 00 0C */	beq lbl_806B50C0
/* 806B50B8  38 03 FF FF */	addi r0, r3, -1
/* 806B50BC  90 1F 07 68 */	stw r0, 0x768(r31)
lbl_806B50C0:
/* 806B50C0  80 7F 07 14 */	lwz r3, 0x714(r31)
/* 806B50C4  2C 03 00 00 */	cmpwi r3, 0
/* 806B50C8  41 82 00 10 */	beq lbl_806B50D8
/* 806B50CC  38 03 FF FF */	addi r0, r3, -1
/* 806B50D0  90 1F 07 14 */	stw r0, 0x714(r31)
/* 806B50D4  48 00 00 2C */	b lbl_806B5100
lbl_806B50D8:
/* 806B50D8  38 60 00 02 */	li r3, 2
/* 806B50DC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806B50E0  7C 04 07 74 */	extsb r4, r0
/* 806B50E4  4B 97 8A 81 */	bl dComIfGs_isOneZoneSwitch__Fii
/* 806B50E8  2C 03 00 00 */	cmpwi r3, 0
/* 806B50EC  40 82 00 14 */	bne lbl_806B5100
/* 806B50F0  38 60 00 02 */	li r3, 2
/* 806B50F4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806B50F8  7C 04 07 74 */	extsb r4, r0
/* 806B50FC  4B 97 89 A1 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_806B5100:
/* 806B5100  7F E3 FB 78 */	mr r3, r31
/* 806B5104  4B FF F6 21 */	bl action__8daE_DT_cFv
/* 806B5108  7F E3 FB 78 */	mr r3, r31
/* 806B510C  4B FF F8 E5 */	bl mtx_set__8daE_DT_cFv
/* 806B5110  7F E3 FB 78 */	mr r3, r31
/* 806B5114  4B FF FA 11 */	bl cc_set__8daE_DT_cFv
/* 806B5118  38 60 00 01 */	li r3, 1
/* 806B511C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B5120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5124  7C 08 03 A6 */	mtlr r0
/* 806B5128  38 21 00 10 */	addi r1, r1, 0x10
/* 806B512C  4E 80 00 20 */	blr 
