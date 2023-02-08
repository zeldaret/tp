lbl_80497478:
/* 80497478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049747C  7C 08 02 A6 */	mflr r0
/* 80497480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80497484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80497488  7C 7F 1B 78 */	mr r31, r3
/* 8049748C  88 03 07 18 */	lbz r0, 0x718(r3)
/* 80497490  28 00 00 00 */	cmplwi r0, 0
/* 80497494  40 82 00 48 */	bne lbl_804974DC
/* 80497498  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8049749C  28 04 00 00 */	cmplwi r4, 0
/* 804974A0  41 82 00 14 */	beq lbl_804974B4
/* 804974A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804974A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804974AC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804974B0  4B BD CD A1 */	bl Release__4cBgSFP9dBgW_Base
lbl_804974B4:
/* 804974B4  80 9F 0A C8 */	lwz r4, 0xac8(r31)
/* 804974B8  28 04 00 00 */	cmplwi r4, 0
/* 804974BC  41 82 00 20 */	beq lbl_804974DC
/* 804974C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804974C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804974C8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804974CC  7F E5 FB 78 */	mr r5, r31
/* 804974D0  4B BD D5 39 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 804974D4  80 7F 0A C8 */	lwz r3, 0xac8(r31)
/* 804974D8  4B BE 44 E9 */	bl Move__4dBgWFv
lbl_804974DC:
/* 804974DC  3C 60 80 4A */	lis r3, lit_3763@ha /* 0x804981D0@ha */
/* 804974E0  C0 03 81 D0 */	lfs f0, lit_3763@l(r3)  /* 0x804981D0@l */
/* 804974E4  80 7F 07 28 */	lwz r3, 0x728(r31)
/* 804974E8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804974EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804974F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804974F4  7C 08 03 A6 */	mtlr r0
/* 804974F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804974FC  4E 80 00 20 */	blr 
