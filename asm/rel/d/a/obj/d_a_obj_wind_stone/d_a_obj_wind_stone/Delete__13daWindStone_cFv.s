lbl_80D3806C:
/* 80D3806C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D38070  7C 08 02 A6 */	mflr r0
/* 80D38074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3807C  7C 7F 1B 78 */	mr r31, r3
/* 80D38080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D38084  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D38088  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80D3808C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D38090  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D38094  7C 05 07 74 */	extsb r5, r0
/* 80D38098  4B 2F D2 C8 */	b isSwitch__10dSv_info_cCFii
/* 80D3809C  2C 03 00 00 */	cmpwi r3, 0
/* 80D380A0  41 82 00 20 */	beq lbl_80D380C0
/* 80D380A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D380A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D380AC  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80D380B0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D380B4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D380B8  7C 05 07 74 */	extsb r5, r0
/* 80D380BC  4B 2F D1 F4 */	b offSwitch__10dSv_info_cFii
lbl_80D380C0:
/* 80D380C0  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80D380C4  28 03 00 00 */	cmplwi r3, 0
/* 80D380C8  41 82 00 24 */	beq lbl_80D380EC
/* 80D380CC  4B 53 01 08 */	b ChkUsed__9cBgW_BgIdCFv
/* 80D380D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D380D4  41 82 00 18 */	beq lbl_80D380EC
/* 80D380D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D380DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D380E0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D380E4  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 80D380E8  4B 33 C1 68 */	b Release__4cBgSFP9dBgW_Base
lbl_80D380EC:
/* 80D380EC  7F E3 FB 78 */	mr r3, r31
/* 80D380F0  38 80 FF FF */	li r4, -1
/* 80D380F4  81 9F 05 70 */	lwz r12, 0x570(r31)
/* 80D380F8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D380FC  7D 89 03 A6 */	mtctr r12
/* 80D38100  4E 80 04 21 */	bctrl 
/* 80D38104  38 60 00 01 */	li r3, 1
/* 80D38108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3810C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D38110  7C 08 03 A6 */	mtlr r0
/* 80D38114  38 21 00 10 */	addi r1, r1, 0x10
/* 80D38118  4E 80 00 20 */	blr 
