lbl_80189C14:
/* 80189C14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80189C18  7C 08 02 A6 */	mflr r0
/* 80189C1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80189C20  39 61 00 30 */	addi r11, r1, 0x30
/* 80189C24  48 1D 85 A5 */	bl _savegpr_24
/* 80189C28  7C 7E 1B 78 */	mr r30, r3
/* 80189C2C  48 00 36 31 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 80189C30  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80189C34  88 1E 02 6E */	lbz r0, 0x26e(r30)
/* 80189C38  2C 00 00 01 */	cmpwi r0, 1
/* 80189C3C  41 82 00 20 */	beq lbl_80189C5C
/* 80189C40  40 80 00 10 */	bge lbl_80189C50
/* 80189C44  2C 00 00 00 */	cmpwi r0, 0
/* 80189C48  40 80 00 B4 */	bge lbl_80189CFC
/* 80189C4C  48 00 01 48 */	b lbl_80189D94
lbl_80189C50:
/* 80189C50  2C 00 00 03 */	cmpwi r0, 3
/* 80189C54  40 80 01 40 */	bge lbl_80189D94
/* 80189C58  48 00 00 58 */	b lbl_80189CB0
lbl_80189C5C:
/* 80189C5C  88 1E 02 65 */	lbz r0, 0x265(r30)
/* 80189C60  54 00 10 3A */	slwi r0, r0, 2
/* 80189C64  7C 7E 02 14 */	add r3, r30, r0
/* 80189C68  80 63 01 4C */	lwz r3, 0x14c(r3)
/* 80189C6C  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 80189C70  38 84 C9 EC */	addi r4, r4, g_fsHIO@l
/* 80189C74  88 84 00 09 */	lbz r4, 9(r4)
/* 80189C78  38 A0 00 00 */	li r5, 0
/* 80189C7C  38 C0 00 FF */	li r6, 0xff
/* 80189C80  38 E0 00 00 */	li r7, 0
/* 80189C84  48 0C BB F5 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 80189C88  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 80189C8C  7F C3 F3 78 */	mr r3, r30
/* 80189C90  4B FF F0 A9 */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 80189C94  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 80189C98  7F C3 F3 78 */	mr r3, r30
/* 80189C9C  4B FF D0 11 */	bl menuMoveAnm__14dFile_select_cFv
/* 80189CA0  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 80189CA4  3B 40 00 01 */	li r26, 1
/* 80189CA8  3B 20 00 01 */	li r25, 1
/* 80189CAC  48 00 00 E8 */	b lbl_80189D94
lbl_80189CB0:
/* 80189CB0  88 1E 02 65 */	lbz r0, 0x265(r30)
/* 80189CB4  54 00 10 3A */	slwi r0, r0, 2
/* 80189CB8  7C 7E 02 14 */	add r3, r30, r0
/* 80189CBC  80 63 01 4C */	lwz r3, 0x14c(r3)
/* 80189CC0  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 80189CC4  38 84 C9 EC */	addi r4, r4, g_fsHIO@l
/* 80189CC8  88 84 00 09 */	lbz r4, 9(r4)
/* 80189CCC  38 A0 00 00 */	li r5, 0
/* 80189CD0  38 C0 00 FF */	li r6, 0xff
/* 80189CD4  38 E0 00 00 */	li r7, 0
/* 80189CD8  48 0C BB A1 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 80189CDC  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 80189CE0  3B A0 00 01 */	li r29, 1
/* 80189CE4  7F C3 F3 78 */	mr r3, r30
/* 80189CE8  4B FF F0 51 */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 80189CEC  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 80189CF0  3B 40 00 01 */	li r26, 1
/* 80189CF4  3B 20 00 01 */	li r25, 1
/* 80189CF8  48 00 00 9C */	b lbl_80189D94
lbl_80189CFC:
/* 80189CFC  88 1E 02 6D */	lbz r0, 0x26d(r30)
/* 80189D00  54 00 10 3A */	slwi r0, r0, 2
/* 80189D04  7C 7E 02 14 */	add r3, r30, r0
/* 80189D08  80 63 01 58 */	lwz r3, 0x158(r3)
/* 80189D0C  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 80189D10  3B A4 C9 EC */	addi r29, r4, g_fsHIO@l
/* 80189D14  88 9D 00 09 */	lbz r4, 9(r29)
/* 80189D18  38 A0 00 00 */	li r5, 0
/* 80189D1C  38 C0 00 FF */	li r6, 0xff
/* 80189D20  38 E0 00 00 */	li r7, 0
/* 80189D24  48 0C BB 55 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 80189D28  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 80189D2C  88 1E 02 65 */	lbz r0, 0x265(r30)
/* 80189D30  54 00 10 3A */	slwi r0, r0, 2
/* 80189D34  7C 7E 02 14 */	add r3, r30, r0
/* 80189D38  80 63 01 58 */	lwz r3, 0x158(r3)
/* 80189D3C  88 9D 00 09 */	lbz r4, 9(r29)
/* 80189D40  38 A0 00 00 */	li r5, 0
/* 80189D44  38 C0 00 FF */	li r6, 0xff
/* 80189D48  38 E0 00 00 */	li r7, 0
/* 80189D4C  48 0C BB 2D */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 80189D50  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 80189D54  88 1E 01 08 */	lbz r0, 0x108(r30)
/* 80189D58  28 00 00 00 */	cmplwi r0, 0
/* 80189D5C  41 82 00 14 */	beq lbl_80189D70
/* 80189D60  7F C3 F3 78 */	mr r3, r30
/* 80189D64  4B FF EF D5 */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 80189D68  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80189D6C  48 00 00 08 */	b lbl_80189D74
lbl_80189D70:
/* 80189D70  38 00 00 01 */	li r0, 1
lbl_80189D74:
/* 80189D74  7C 1B 03 78 */	mr r27, r0
/* 80189D78  7F C3 F3 78 */	mr r3, r30
/* 80189D7C  88 9E 02 6D */	lbz r4, 0x26d(r30)
/* 80189D80  48 00 39 0D */	bl selectWakuAlpahAnm__14dFile_select_cFUc
/* 80189D84  54 7A 06 3E */	clrlwi r26, r3, 0x18
/* 80189D88  7F C3 F3 78 */	mr r3, r30
/* 80189D8C  48 00 63 99 */	bl nameMoveAnm__14dFile_select_cFv
/* 80189D90  54 79 06 3E */	clrlwi r25, r3, 0x18
lbl_80189D94:
/* 80189D94  7F C3 F3 78 */	mr r3, r30
/* 80189D98  48 00 36 85 */	bl modoruTxtDispAnm__14dFile_select_cFv
/* 80189D9C  54 78 06 3E */	clrlwi r24, r3, 0x18
/* 80189DA0  7F C3 F3 78 */	mr r3, r30
/* 80189DA4  48 00 37 D1 */	bl ketteiTxtDispAnm__14dFile_select_cFv
/* 80189DA8  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80189DAC  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 80189DB0  88 63 00 3D */	lbz r3, 0x3d(r3)
/* 80189DB4  30 03 FF FF */	addic r0, r3, -1
/* 80189DB8  7C 00 19 10 */	subfe r0, r0, r3
/* 80189DBC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80189DC0  2C 1F 00 01 */	cmpwi r31, 1
/* 80189DC4  40 82 00 4C */	bne lbl_80189E10
/* 80189DC8  2C 1C 00 01 */	cmpwi r28, 1
/* 80189DCC  40 82 00 44 */	bne lbl_80189E10
/* 80189DD0  2C 1D 00 01 */	cmpwi r29, 1
/* 80189DD4  40 82 00 3C */	bne lbl_80189E10
/* 80189DD8  2C 1B 00 01 */	cmpwi r27, 1
/* 80189DDC  40 82 00 34 */	bne lbl_80189E10
/* 80189DE0  2C 1A 00 01 */	cmpwi r26, 1
/* 80189DE4  40 82 00 2C */	bne lbl_80189E10
/* 80189DE8  2C 19 00 01 */	cmpwi r25, 1
/* 80189DEC  40 82 00 24 */	bne lbl_80189E10
/* 80189DF0  2C 18 00 01 */	cmpwi r24, 1
/* 80189DF4  40 82 00 1C */	bne lbl_80189E10
/* 80189DF8  2C 04 00 01 */	cmpwi r4, 1
/* 80189DFC  40 82 00 14 */	bne lbl_80189E10
/* 80189E00  2C 00 00 01 */	cmpwi r0, 1
/* 80189E04  40 82 00 0C */	bne lbl_80189E10
/* 80189E08  38 00 00 1E */	li r0, 0x1e
/* 80189E0C  98 1E 02 6F */	stb r0, 0x26f(r30)
lbl_80189E10:
/* 80189E10  39 61 00 30 */	addi r11, r1, 0x30
/* 80189E14  48 1D 84 01 */	bl _restgpr_24
/* 80189E18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80189E1C  7C 08 03 A6 */	mtlr r0
/* 80189E20  38 21 00 30 */	addi r1, r1, 0x30
/* 80189E24  4E 80 00 20 */	blr 
