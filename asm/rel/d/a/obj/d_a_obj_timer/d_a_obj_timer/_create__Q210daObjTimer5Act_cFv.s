lbl_80485198:
/* 80485198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048519C  7C 08 02 A6 */	mflr r0
/* 804851A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804851A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804851A8  7C 7F 1B 78 */	mr r31, r3
/* 804851AC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804851B0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804851B4  40 82 00 1C */	bne lbl_804851D0
/* 804851B8  28 1F 00 00 */	cmplwi r31, 0
/* 804851BC  41 82 00 08 */	beq lbl_804851C4
/* 804851C0  4B B9 39 A4 */	b __ct__10fopAc_ac_cFv
lbl_804851C4:
/* 804851C4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804851C8  60 00 00 08 */	ori r0, r0, 8
/* 804851CC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804851D0:
/* 804851D0  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 804851D4  4B B9 B3 00 */	b fopDwTg_DrawQTo__FP16create_tag_class
/* 804851D8  7F E3 FB 78 */	mr r3, r31
/* 804851DC  38 80 00 08 */	li r4, 8
/* 804851E0  38 A0 00 08 */	li r5, 8
/* 804851E4  48 00 04 39 */	bl func_8048561C
/* 804851E8  7C 64 1B 78 */	mr r4, r3
/* 804851EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804851F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804851F4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 804851F8  7C 05 07 74 */	extsb r5, r0
/* 804851FC  4B BB 01 64 */	b isSwitch__10dSv_info_cCFii
/* 80485200  2C 03 00 00 */	cmpwi r3, 0
/* 80485204  41 82 00 0C */	beq lbl_80485210
/* 80485208  38 60 00 05 */	li r3, 5
/* 8048520C  48 00 00 4C */	b lbl_80485258
lbl_80485210:
/* 80485210  7F E3 FB 78 */	mr r3, r31
/* 80485214  38 80 00 08 */	li r4, 8
/* 80485218  38 A0 00 10 */	li r5, 0x10
/* 8048521C  48 00 04 01 */	bl func_8048561C
/* 80485220  7C 64 1B 78 */	mr r4, r3
/* 80485224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80485228  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048522C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80485230  7C 05 07 74 */	extsb r5, r0
/* 80485234  4B BB 01 2C */	b isSwitch__10dSv_info_cCFii
/* 80485238  2C 03 00 00 */	cmpwi r3, 0
/* 8048523C  41 82 00 10 */	beq lbl_8048524C
/* 80485240  7F E3 FB 78 */	mr r3, r31
/* 80485244  48 00 00 9D */	bl mode_count_init__Q210daObjTimer5Act_cFv
/* 80485248  48 00 00 0C */	b lbl_80485254
lbl_8048524C:
/* 8048524C  7F E3 FB 78 */	mr r3, r31
/* 80485250  48 00 00 25 */	bl mode_wait_init__Q210daObjTimer5Act_cFv
lbl_80485254:
/* 80485254  38 60 00 04 */	li r3, 4
lbl_80485258:
/* 80485258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048525C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485260  7C 08 03 A6 */	mtlr r0
/* 80485264  38 21 00 10 */	addi r1, r1, 0x10
/* 80485268  4E 80 00 20 */	blr 
