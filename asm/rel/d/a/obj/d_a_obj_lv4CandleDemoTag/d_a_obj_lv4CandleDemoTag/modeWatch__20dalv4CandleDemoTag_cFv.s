lbl_80C5CCC0:
/* 80C5CCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5CCC4  7C 08 02 A6 */	mflr r0
/* 80C5CCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5CCCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5CCD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5CCD4  7C 7F 1B 78 */	mr r31, r3
/* 80C5CCD8  3C 60 80 C6 */	lis r3, searchShutterAct__20dalv4CandleDemoTag_cFPvPv@ha /* 0x80C5CF9C@ha */
/* 80C5CCDC  38 63 CF 9C */	addi r3, r3, searchShutterAct__20dalv4CandleDemoTag_cFPvPv@l /* 0x80C5CF9C@l */
/* 80C5CCE0  7F E4 FB 78 */	mr r4, r31
/* 80C5CCE4  4B 3B CB 15 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C5CCE8  90 7F 05 8C */	stw r3, 0x58c(r31)
/* 80C5CCEC  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80C5CCF0  28 03 00 00 */	cmplwi r3, 0
/* 80C5CCF4  40 82 00 0C */	bne lbl_80C5CD00
/* 80C5CCF8  3B C0 00 01 */	li r30, 1
/* 80C5CCFC  48 00 00 08 */	b lbl_80C5CD04
lbl_80C5CD00:
/* 80C5CD00  8B C3 05 CA */	lbz r30, 0x5ca(r3)
lbl_80C5CD04:
/* 80C5CD04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5CD08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5CD0C  88 9F 05 86 */	lbz r4, 0x586(r31)
/* 80C5CD10  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5CD14  7C 05 07 74 */	extsb r5, r0
/* 80C5CD18  4B 3D 86 49 */	bl isSwitch__10dSv_info_cCFii
/* 80C5CD1C  2C 03 00 00 */	cmpwi r3, 0
/* 80C5CD20  41 82 00 5C */	beq lbl_80C5CD7C
/* 80C5CD24  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80C5CD28  41 82 00 54 */	beq lbl_80C5CD7C
/* 80C5CD2C  A0 7F 05 88 */	lhz r3, 0x588(r31)
/* 80C5CD30  28 03 00 00 */	cmplwi r3, 0
/* 80C5CD34  40 82 00 40 */	bne lbl_80C5CD74
/* 80C5CD38  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5CD3C  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C5CD40  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C5CD44  41 82 00 18 */	beq lbl_80C5CD5C
/* 80C5CD48  38 7F 05 70 */	addi r3, r31, 0x570
/* 80C5CD4C  38 A0 00 FF */	li r5, 0xff
/* 80C5CD50  38 C0 00 01 */	li r6, 1
/* 80C5CD54  4B 3E BB ED */	bl orderEvent__17dEvLib_callback_cFiii
/* 80C5CD58  48 00 00 24 */	b lbl_80C5CD7C
lbl_80C5CD5C:
/* 80C5CD5C  7F E3 FB 78 */	mr r3, r31
/* 80C5CD60  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80C5CD64  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C5CD68  7D 89 03 A6 */	mtctr r12
/* 80C5CD6C  4E 80 04 21 */	bctrl 
/* 80C5CD70  48 00 00 0C */	b lbl_80C5CD7C
lbl_80C5CD74:
/* 80C5CD74  38 03 FF FF */	addi r0, r3, -1
/* 80C5CD78  B0 1F 05 88 */	sth r0, 0x588(r31)
lbl_80C5CD7C:
/* 80C5CD7C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80C5CD80  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C5CD84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5CD88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5CD8C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5CD90  7C 05 07 74 */	extsb r5, r0
/* 80C5CD94  4B 3D 85 CD */	bl isSwitch__10dSv_info_cCFii
/* 80C5CD98  2C 03 00 00 */	cmpwi r3, 0
/* 80C5CD9C  41 82 00 0C */	beq lbl_80C5CDA8
/* 80C5CDA0  7F E3 FB 78 */	mr r3, r31
/* 80C5CDA4  48 00 01 91 */	bl init_modeEnd__20dalv4CandleDemoTag_cFv
lbl_80C5CDA8:
/* 80C5CDA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5CDAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5CDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5CDB4  7C 08 03 A6 */	mtlr r0
/* 80C5CDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5CDBC  4E 80 00 20 */	blr 
