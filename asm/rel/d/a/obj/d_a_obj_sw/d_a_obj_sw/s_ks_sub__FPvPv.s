lbl_80CF0774:
/* 80CF0774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF0778  7C 08 02 A6 */	mflr r0
/* 80CF077C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF0780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF0784  7C 7F 1B 78 */	mr r31, r3
/* 80CF0788  4B 32 85 59 */	bl fopAc_IsActor__FPv
/* 80CF078C  2C 03 00 00 */	cmpwi r3, 0
/* 80CF0790  41 82 00 50 */	beq lbl_80CF07E0
/* 80CF0794  A8 1F 00 08 */	lha r0, 8(r31)
/* 80CF0798  2C 00 00 60 */	cmpwi r0, 0x60
/* 80CF079C  40 82 00 44 */	bne lbl_80CF07E0
/* 80CF07A0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF07A4  54 04 46 3E */	srwi r4, r0, 0x18
/* 80CF07A8  2C 04 00 FF */	cmpwi r4, 0xff
/* 80CF07AC  41 82 00 34 */	beq lbl_80CF07E0
/* 80CF07B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF07B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF07B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF07BC  7C 05 07 74 */	extsb r5, r0
/* 80CF07C0  4B 34 4B A1 */	bl isSwitch__10dSv_info_cCFii
/* 80CF07C4  2C 03 00 00 */	cmpwi r3, 0
/* 80CF07C8  41 82 00 18 */	beq lbl_80CF07E0
/* 80CF07CC  3C 60 80 CF */	lis r3, saru_ct@ha /* 0x80CF3278@ha */
/* 80CF07D0  38 83 32 78 */	addi r4, r3, saru_ct@l /* 0x80CF3278@l */
/* 80CF07D4  80 64 00 00 */	lwz r3, 0(r4)
/* 80CF07D8  38 03 00 01 */	addi r0, r3, 1
/* 80CF07DC  90 04 00 00 */	stw r0, 0(r4)
lbl_80CF07E0:
/* 80CF07E0  38 60 00 00 */	li r3, 0
/* 80CF07E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF07E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF07EC  7C 08 03 A6 */	mtlr r0
/* 80CF07F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF07F4  4E 80 00 20 */	blr 
