lbl_8001CB48:
/* 8001CB48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001CB4C  7C 08 02 A6 */	mflr r0
/* 8001CB50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001CB54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001CB58  7C 7F 1B 78 */	mr r31, r3
/* 8001CB5C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8001CB60  60 00 20 00 */	ori r0, r0, 0x2000
/* 8001CB64  90 03 04 9C */	stw r0, 0x49c(r3)
/* 8001CB68  2C 04 00 00 */	cmpwi r4, 0
/* 8001CB6C  41 82 00 20 */	beq lbl_8001CB8C
/* 8001CB70  4B FF CD 55 */	bl fopAcM_setStageLayer__FPv
/* 8001CB74  A0 9F 04 94 */	lhz r4, 0x494(r31)
/* 8001CB78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001CB7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001CB80  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8001CB84  7C 05 07 74 */	extsb r5, r0
/* 8001CB88  48 01 8A BD */	bl onActor__10dSv_info_cFii
lbl_8001CB8C:
/* 8001CB8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001CB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001CB94  7C 08 03 A6 */	mtlr r0
/* 8001CB98  38 21 00 10 */	addi r1, r1, 0x10
/* 8001CB9C  4E 80 00 20 */	blr 
