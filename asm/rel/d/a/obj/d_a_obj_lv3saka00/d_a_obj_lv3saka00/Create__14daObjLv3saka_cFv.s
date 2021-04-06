lbl_80C5BED8:
/* 80C5BED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5BEDC  7C 08 02 A6 */	mflr r0
/* 80C5BEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5BEE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5BEE8  7C 7F 1B 78 */	mr r31, r3
/* 80C5BEEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5BEF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5BEF4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5BEF8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C5BEFC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5BF00  7C 05 07 74 */	extsb r5, r0
/* 80C5BF04  4B 3D 94 5D */	bl isSwitch__10dSv_info_cCFii
/* 80C5BF08  2C 03 00 00 */	cmpwi r3, 0
/* 80C5BF0C  41 82 00 48 */	beq lbl_80C5BF54
/* 80C5BF10  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C5BF14  4B 60 C2 C1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C5BF18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C5BF1C  41 82 00 18 */	beq lbl_80C5BF34
/* 80C5BF20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5BF24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5BF28  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C5BF2C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C5BF30  4B 41 83 21 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C5BF34:
/* 80C5BF34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5BF38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5BF3C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C5BF40  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C5BF44  7F E5 FB 78 */	mr r5, r31
/* 80C5BF48  4B 41 8A C1 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C5BF4C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C5BF50  4B 41 FA 71 */	bl Move__4dBgWFv
lbl_80C5BF54:
/* 80C5BF54  7F E3 FB 78 */	mr r3, r31
/* 80C5BF58  4B FF FF 01 */	bl initBaseMtx__14daObjLv3saka_cFv
/* 80C5BF5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5BF60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5BF64  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5BF68  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C5BF6C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5BF70  7C 05 07 74 */	extsb r5, r0
/* 80C5BF74  4B 3D 93 ED */	bl isSwitch__10dSv_info_cCFii
/* 80C5BF78  2C 03 00 00 */	cmpwi r3, 0
/* 80C5BF7C  41 82 00 0C */	beq lbl_80C5BF88
/* 80C5BF80  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C5BF84  4B 41 FA 3D */	bl Move__4dBgWFv
lbl_80C5BF88:
/* 80C5BF88  38 60 00 01 */	li r3, 1
/* 80C5BF8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5BF90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5BF94  7C 08 03 A6 */	mtlr r0
/* 80C5BF98  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5BF9C  4E 80 00 20 */	blr 
