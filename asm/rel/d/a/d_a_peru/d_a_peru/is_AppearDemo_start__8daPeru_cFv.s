lbl_80D486A0:
/* 80D486A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D486A4  7C 08 02 A6 */	mflr r0
/* 80D486A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D486AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D486B0  7C 7F 1B 78 */	mr r31, r3
/* 80D486B4  38 7F 0E 40 */	addi r3, r31, 0xe40
/* 80D486B8  4B 3F D0 50 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80D486BC  28 03 00 00 */	cmplwi r3, 0
/* 80D486C0  41 82 00 48 */	beq lbl_80D48708
/* 80D486C4  38 7F 0E 40 */	addi r3, r31, 0xe40
/* 80D486C8  4B 3F D0 40 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80D486CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D486D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D486D4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D486D8  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80D486DC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D486E0  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80D486E4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D486E8  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80D486EC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D486F0  38 81 00 08 */	addi r4, r1, 8
/* 80D486F4  48 00 38 E1 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80D486F8  2C 03 00 00 */	cmpwi r3, 0
/* 80D486FC  41 82 00 0C */	beq lbl_80D48708
/* 80D48700  38 60 00 01 */	li r3, 1
/* 80D48704  48 00 00 08 */	b lbl_80D4870C
lbl_80D48708:
/* 80D48708  38 60 00 00 */	li r3, 0
lbl_80D4870C:
/* 80D4870C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D48710  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D48714  7C 08 03 A6 */	mtlr r0
/* 80D48718  38 21 00 20 */	addi r1, r1, 0x20
/* 80D4871C  4E 80 00 20 */	blr 
