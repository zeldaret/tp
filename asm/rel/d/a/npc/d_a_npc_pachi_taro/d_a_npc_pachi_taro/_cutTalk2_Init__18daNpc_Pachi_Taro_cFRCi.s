lbl_80A9F440:
/* 80A9F440  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9F444  7C 08 02 A6 */	mflr r0
/* 80A9F448  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9F44C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A9F450  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A9F454  7C 7E 1B 78 */	mr r30, r3
/* 80A9F458  7C 9F 23 78 */	mr r31, r4
/* 80A9F45C  3C 60 80 AA */	lis r3, lit_5700@ha
/* 80A9F460  38 83 17 A0 */	addi r4, r3, lit_5700@l
/* 80A9F464  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9F468  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9F46C  90 61 00 08 */	stw r3, 8(r1)
/* 80A9F470  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9F474  80 04 00 08 */	lwz r0, 8(r4)
/* 80A9F478  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9F47C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9F480  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A9F484  4B 6A 62 84 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F488  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A9F48C  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80A9F490  4B 6A 62 78 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F494  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A9F498  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A9F49C  38 03 FF FB */	addi r0, r3, -5
/* 80A9F4A0  28 00 00 19 */	cmplwi r0, 0x19
/* 80A9F4A4  41 81 00 2C */	bgt lbl_80A9F4D0
/* 80A9F4A8  3C 60 80 AA */	lis r3, lit_5709@ha
/* 80A9F4AC  38 63 28 F4 */	addi r3, r3, lit_5709@l
/* 80A9F4B0  54 00 10 3A */	slwi r0, r0, 2
/* 80A9F4B4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A9F4B8  7C 09 03 A6 */	mtctr r0
/* 80A9F4BC  4E 80 04 20 */	bctr 
lbl_80A9F4C0:
/* 80A9F4C0  7F C3 F3 78 */	mr r3, r30
/* 80A9F4C4  38 80 00 4B */	li r4, 0x4b
/* 80A9F4C8  38 A1 00 08 */	addi r5, r1, 8
/* 80A9F4CC  4B 6A C7 24 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A9F4D0:
/* 80A9F4D0  38 60 00 01 */	li r3, 1
/* 80A9F4D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A9F4D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A9F4DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9F4E0  7C 08 03 A6 */	mtlr r0
/* 80A9F4E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9F4E8  4E 80 00 20 */	blr 
