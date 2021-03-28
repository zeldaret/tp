lbl_8057BB74:
/* 8057BB74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BB78  7C 08 02 A6 */	mflr r0
/* 8057BB7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BB80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057BB84  93 C1 00 08 */	stw r30, 8(r1)
/* 8057BB88  7C 7E 1B 78 */	mr r30, r3
/* 8057BB8C  7C 9F 23 78 */	mr r31, r4
/* 8057BB90  80 83 00 B0 */	lwz r4, 0xb0(r3)
/* 8057BB94  54 80 E7 3E */	rlwinm r0, r4, 0x1c, 0x1c, 0x1f
/* 8057BB98  28 00 00 0F */	cmplwi r0, 0xf
/* 8057BB9C  41 81 01 00 */	bgt lbl_8057BC9C
/* 8057BBA0  3C 60 80 58 */	lis r3, lit_3712@ha
/* 8057BBA4  38 63 BE 50 */	addi r3, r3, lit_3712@l
/* 8057BBA8  54 00 10 3A */	slwi r0, r0, 2
/* 8057BBAC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8057BBB0  7C 09 03 A6 */	mtctr r0
/* 8057BBB4  4E 80 04 20 */	bctr 
lbl_8057BBB8:
/* 8057BBB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057BBBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057BBC0  54 84 C6 3E */	rlwinm r4, r4, 0x18, 0x18, 0x1f
/* 8057BBC4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8057BBC8  7C 05 07 74 */	extsb r5, r0
/* 8057BBCC  4B AB 97 94 */	b isSwitch__10dSv_info_cCFii
/* 8057BBD0  2C 03 00 00 */	cmpwi r3, 0
/* 8057BBD4  41 82 00 30 */	beq lbl_8057BC04
/* 8057BBD8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8057BBDC  4B CE C5 F8 */	b ChkUsed__9cBgW_BgIdCFv
/* 8057BBE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8057BBE4  40 82 00 B8 */	bne lbl_8057BC9C
/* 8057BBE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057BBEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057BBF0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8057BBF4  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8057BBF8  7F C5 F3 78 */	mr r5, r30
/* 8057BBFC  4B AF 8E 0C */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8057BC00  48 00 00 9C */	b lbl_8057BC9C
lbl_8057BC04:
/* 8057BC04  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8057BC08  4B CE C5 CC */	b ChkUsed__9cBgW_BgIdCFv
/* 8057BC0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8057BC10  41 82 00 8C */	beq lbl_8057BC9C
/* 8057BC14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057BC18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057BC1C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8057BC20  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8057BC24  4B AF 86 2C */	b Release__4cBgSFP9dBgW_Base
/* 8057BC28  48 00 00 74 */	b lbl_8057BC9C
lbl_8057BC2C:
/* 8057BC2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057BC30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057BC34  54 84 C6 3E */	rlwinm r4, r4, 0x18, 0x18, 0x1f
/* 8057BC38  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8057BC3C  7C 05 07 74 */	extsb r5, r0
/* 8057BC40  4B AB 97 20 */	b isSwitch__10dSv_info_cCFii
/* 8057BC44  2C 03 00 00 */	cmpwi r3, 0
/* 8057BC48  41 82 00 2C */	beq lbl_8057BC74
/* 8057BC4C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8057BC50  4B CE C5 84 */	b ChkUsed__9cBgW_BgIdCFv
/* 8057BC54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8057BC58  41 82 00 44 */	beq lbl_8057BC9C
/* 8057BC5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057BC60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057BC64  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8057BC68  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8057BC6C  4B AF 85 E4 */	b Release__4cBgSFP9dBgW_Base
/* 8057BC70  48 00 00 2C */	b lbl_8057BC9C
lbl_8057BC74:
/* 8057BC74  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8057BC78  4B CE C5 5C */	b ChkUsed__9cBgW_BgIdCFv
/* 8057BC7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8057BC80  40 82 00 1C */	bne lbl_8057BC9C
/* 8057BC84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057BC88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057BC8C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8057BC90  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8057BC94  7F C5 F3 78 */	mr r5, r30
/* 8057BC98  4B AF 8D 70 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_8057BC9C:
/* 8057BC9C  38 1E 05 6C */	addi r0, r30, 0x56c
/* 8057BCA0  90 1F 00 00 */	stw r0, 0(r31)
/* 8057BCA4  38 60 00 01 */	li r3, 1
/* 8057BCA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057BCAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057BCB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BCB4  7C 08 03 A6 */	mtlr r0
/* 8057BCB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BCBC  4E 80 00 20 */	blr 
